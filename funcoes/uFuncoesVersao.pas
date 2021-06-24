unit uFuncoesVersao;

interface

uses

  Windows, Messages, SysUtils, Classes, Dialogs, StdCtrls, Forms,
  Graphics, Vcl.Controls, DB, JPeg, Registry, ShellApi, Inifiles;

var
//Controle de versão
vlVersaoPrgN1, vlVersaoPrgN2, vlVersaoPrgN3, vlVersaoPrgN4: integer;
vlVersaoWEB1, vlVersaoWEB2, vlVersaoWEB3, vlVersaoWEB4: integer;

procedure VerificaVersaoWeb;
procedure AtualizaSistemaFunc;
function VersaoExe(vfArquivoExe : string): String;
procedure DecodeVersao(vfVersao: String; vfTipo: String);
procedure VerificaVerN;
procedure AtualizaSGDB(vfModulo: String);

implementation

uses dataConfig, uFuncoesWeb, uPrincipal, uVarGlobal, uFuncoesSistema,
  uDaoModulos;

procedure VerificaVersaoWeb;
Var
vVersaoWeb, vVersaoPrg: String;
vControl: TInifile;
begin
  //Verifica versão dos módulos via web
  ListarModulos('mod_codigo', '0');
  dmConfig.qyModulos.First;
  //Testa se existe conexão com a internet
  if ConectadoWeb = true then
  begin
    //Apaga arquivo de controle de versão (.ver)
    if FileExists(vgDirTemp + '\version.ini') then
      DeleteFile(vgDirTemp + '\version.ini');
    //Efetua download do controle de versão
    DownloadFile(dmConfig.qyModulosmod_local.Text + '\version.ini',
                 vgDirTemp + '\version.ini');
    //Cria .ini
    if FileExists(vgDirTemp + '\version.ini') then
    begin
      vControl := Tinifile.create(vgDirTemp + '\version.ini');
      repeat
      begin
        //Verifica diferença entre versões
        vVersaoWeb := vControl.ReadString('versions', dmConfig.qyModulosmod_nome.Text, '');
        if FileExists(vgPath + '\' + dmConfig.qyModulosmod_executavel.Text) then
        begin
          vVersaoPrg := VersaoExe(vgPath + '\' + dmConfig.qyModulosmod_executavel.Text);
          if vVersaoPrg <> vVersaoWeb then
          begin
            DecodeVersao(vVersaoPrg + '.', 'prg');
            DecodeVersao(vVersaoWeb + '.', 'web');
            //Verifica qual versão é maior
            if vlVersaoPrgN1 < vlVersaoWEB1 then
            begin
              MessageDlg('O módulo ' +  dmConfig.qyModulosmod_nome.Text + ' está desatualizado!' + #13 + #13 +
                         'Versão instalada: Vs. ' + vVersaoPrg + #13 + #13 + 'Versão disponível: Vs. '  + vVersaoWeb, mtWarning, [mbOk], 0);
            end
            else
              if vlVersaoPrgN2 < vlVersaoWEB2 then
              begin
                MessageDlg('O módulo ' +  dmConfig.qyModulosmod_nome.Text + ' está desatualizado!' + #13 + #13 +
                           'Versão instalada: Vs. ' + vVersaoPrg + #13 + #13 + 'Versão disponível: Vs. '  + vVersaoWEB, mtWarning, [mbOk], 0);
              end
              else
                if vlVersaoPrgN3 < vlVersaoWEB3 then
                begin
                  MessageDlg('O módulo ' +  dmConfig.qyModulosmod_nome.Text + ' está desatualizado!' + #13 + #13 +
                             'Versão instalada: Vs. ' + vVersaoPrg + #13 + #13 + 'Versão disponível: Vs. '  + vVersaoWEB, mtWarning, [mbOk], 0);
                end
                else
                  if vlVersaoPrgN4 < vlVersaoWEB4 then
                  begin
                     MessageDlg('O módulo ' +  dmConfig.qyModulosmod_nome.Text + ' está desatualizado!' + #13 + #13 +
                               'Versão instalada: Vs. ' + vVersaoPrg + #13 + #13 + 'Versão disponível: Vs. '  + vVersaoWEB, mtWarning, [mbOk], 0);
                  end;
        end;
      end;
      dmConfig.qyModulos.Next;
    end;
    until dmConfig.qyModulos.Eof = true;
    vControl.Free;
    end;
  end;
end;

procedure AtualizaSistemaFunc;
Var
vPath, vUpdate: String;
begin
  vPath := DiretorioSemBarra(ExtractFileDir(Application.ExeName));
  vUpdate := vPath + '\Atualizacao.exe';
  if FileExists(vUpdate) then
  begin
    if MessageDlg('Para continuar com a atualização o sistema ' + Application.Title + ' será fechado!' +
                  #13 + #13 + 'Deseja continuar?', mtConfirmation, [mbYes, mbno], 0) = mrYes then
    begin
      ShellExecute(HWND_MESSAGE, 'OPEN', PChar(vUpdate), nil, nil, sw_shownormal);
      Application.Terminate;
    end;
  end
  else
    Messagedlg('Módulo não instalado!', mtInformation,[mbok],0);
end;

function VersaoExe(vfArquivoExe : string): String;
type
PFFI = ^vs_FixedFileInfo;
var
vF: PFFI;
vHandle: Dword;
vLen: Longint;
vData: Pchar;
vBuffer: Pointer;
vTamanho: Dword;
vParquivo: Pchar;
vArquivo: String;
begin
  vArquivo := vfArquivoExe;
  vParquivo := StrAlloc(Length(vArquivo) + 1);
  StrPcopy(vParquivo, vArquivo);
  vLen := GetFileVersionInfoSize(vParquivo, vHandle);
  Result := '';
  if vLen > 0 then
  begin
    vData := StrAlloc(vLen + 1);
    if GetFileVersionInfo(vParquivo, vHandle, vLen, vData) then
    begin
      VerQueryValue(vData, '', vBuffer, vTamanho);
      vF := PFFI(vBuffer);
      Result := Format('%d.%d.%d.%d', [HiWord(vF^.dwFileVersionMs), LoWord
          (vF^.dwFileVersionMs), HiWord(vF^.dwFileVersionLs), LoWord
          (vF^.dwFileVersionLs)]);
    end;
    StrDispose(vData);
  end;
  StrDispose(vParquivo);
end;

procedure DecodeVersao(vfVersao: String; vfTipo: String);
Var
vNumDot: integer;
vAltNumDot: boolean;
vTamanho: integer;
vI: integer;
vAux: String;
begin
  vNumDot := 0;
  vAltNumDot := false;
  vTamanho := Length(vfVersao);
  for vI := 1 to vTamanho do
  begin
    //Major version ------------------------------------------------------------
    if vNumDot = 0 then
    begin
      if vfVersao[vI] <> '.' then
        vAux := vAux + vfVersao[vI]
      else
      begin
        if vfTipo = 'prg' then
          vlVersaoPrgN1 := StrToInt(vAux);
        if vfTipo = 'web' then
          vlVersaoWEB1 := StrToInt(vAux);
        vAux := '';
        vAltNumDot := true;
      end;
    end;
    //Minor version ------------------------------------------------------------
    if vNumDot = 1 then
    begin
      if vfVersao[vI] <> '.' then
        vAux := vAux + vfVersao[vI]
      else
      begin
        if vfTipo = 'prg' then
          vlVersaoPrgN2 := StrToInt(vAux);
        if vfTipo = 'web' then
          vlVersaoWEB2 := StrToInt(vAux);
        vAux := '';
        vAltNumDot := true;
      end;
    end;
    //Release version ----------------------------------------------------------
    if vNumDot = 2 then
    begin
      if vfVersao[vI] <> '.' then
        vAux := vAux + vfVersao[vI]
      else
      begin
        if vfTipo = 'prg' then
          vlVersaoPrgN3 := StrToInt(vAux);
        if vfTipo = 'web' then
          vlVersaoWEB3 := StrToInt(vAux);
        vAux := '';
        vAltNumDot := true;
      end;
    end;
    //Build version ------------------------------------------------------------
    if vNumDot = 3 then
    begin
      if vfVersao[vI] <> '.' then
        vAux := vAux + vfVersao[vI]
      else
      begin
        if vfTipo = 'prg' then
          vlVersaoPrgN4 := StrToInt(vAux);
        if vfTipo = 'web' then
          vlVersaoWEB4 := StrToInt(vAux);
        vAux := '';
        vAltNumDot := true;
      end;
    end;
    if vAltNumDot = true then
      vNumDot := vNumDot + 1;
    vAltNumDot := false;
  end;
end;

procedure VerificaVerN;
Var
vControl: TInifile;
vVersaoWeb, vVersaoPrg: String;
vAtualizado: boolean;
vDirTemp, vDirBackup, vSoftwareUpd, vSoftwareExe: String;
vBackupFrom, vBackupTo: PWideChar;
vFrom, vTo: PWideChar;
begin
  vDirTemp := vgPath + '\Temp';
  vDirBackup := vgPath + '\Backup';
  vAtualizado := true;
  //Cria diretórios
  if not(DirectoryExists(vDirTemp)) then
    MkDir(vDirTemp);
  if not(DirectoryExists(vDirBackup)) then
    MkDir(vDirbackup);
  //Baixa arquivo de controle de versão
  if FileExists(vgDirTemp + '\version.ini') then
    DeleteFile(vgDirTemp + '\version.ini');
  DownloadFile(dmConfig.qyModulosmod_local.Text + '\version.ini',
               vgDirTemp + '\version.ini');
  //Cria .ini
  vControl := Tinifile.create(vgDirTemp + '\version.ini');
  vVersaoWeb := vControl.ReadString('versions', dmConfig.qyModulosmod_nome.Text, '');
  if not(FileExists(vgPath + '\' + dmConfig.qyModulosmod_executavel.Text)) then
  begin
    MessageDlg('Módulo não instalado!', mtWarning, [mbOk], 0);
    vVersaoPrg := 'Módulo não instalado!';
    vAtualizado := false;
  end
  else
  begin
    vVersaoPrg := VersaoExe(vgPath + '\' + dmConfig.qyModulosmod_executavel.Text);
    if vVersaoPrg <> vVersaoWeb then
    begin
      DecodeVersao(vVersaoPrg + '.', 'prg');
      DecodeVersao(vVersaoWeb + '.', 'web');
      //Verifica qual versão é maior
      if vlVersaoPrgN1 < vlVersaoWEB1 then
        vAtualizado := false
      else
        if vlVersaoPrgN2 < vlVersaoWEB2 then
          vAtualizado := false
        else
          if vlVersaoPrgN3 < vlVersaoWEB3 then
            vAtualizado := false
          else
            if vlVersaoPrgN4 < vlVersaoWEB4 then
              vAtualizado := false
    end
    else
      MessageDlg('A versão instalada está atualizada!', mtWarning, [mbOk], 0);
  end;
  vControl.Free;
  //Caso esteja desatualizado pergunta se quer atualizar
  if vAtualizado = false then
  begin
    if MessageDlg('O módulo ' +  dmConfig.qyModulosmod_nome.Text + ' está desatualizado!' + #13 + #13 +
                  'Versão instalada: ' + vVersaoPrg + #13 + 'Versão disponível: '  + vVersaoWEB + #13 + #13 +
                   'Deseja atualizar agora?' , mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      //Cria pasta backup e temp
      vSoftwareExe := dmConfig.qyModulosmod_executavel.Text;
      vSoftwareUpd := dmConfig.qyModulosmod_nome.Text + '.exe';
      if not DirectoryExists(vDirTemp) then
         MKDIR(vDirTemp);
      if not DirectoryExists(vDirBackup) then
         MKDIR(vDirBackup);
      if DownloadFile(dmConfig.qyModulosmod_local.Text + vSoftwareUpd, vDirTemp + '\' + vSoftwareExe) = true then
      begin
        Messagedlg('Download concluído!' + #13 + #13 + 'Clique em ok e aguarde a atualização!', mtInformation, [mbok], 0);
        vBackupFrom := PWideChar(vgPath + '\' + vSoftwareExe);
        vBackupTo := PWideChar(vDirBackup + '\' + vSoftwareExe);
        Try
          CopyFile(vBackupFrom, vBackupTo, false);
        except
          MessageDlg('Erro ao copiar arquivo de Backup!', mtError, [mbok],0);
        end;
        vFrom := PWideChar(vDirTemp + '\' + vSoftwareExe);
        vTo := PWideChar(vgPath + '\' + vSoftwareExe);
        Try
          CopyFile(vFrom, vTo, false);
        except
          MessageDlg('Erro ao copiar arquivo!', mtError, [mbok],0);
        end;
        MessageDlg('Atualização concluída com sucesso!', mtInformation, [mbok],0);
      end
      else
        MessageDlg('Erro no download do arquivo!', mtWarning, [mbok],0);
    end;
  end;
end;

procedure AtualizaSGDB(vfModulo: String);
Var
vVersaoSGDB: String;
vVersaoExe: String;
begin
  FiltrarModulos('mod_codigo', '=', vfModulo, '0', '0');
  vVersaoSGDB := Trim(dmConfig.qyModulosmod_versaoinst.Text);
  vVersaoExe := Trim(VersaoExe(vgPath + '\' + dmConfig.qyModulosmod_executavel.Text));
  if vVersaoSGDB <> vVersaoExe then
  begin
    EdtModulos;
    dmConfig.qyModulosmod_versaoinst.Text := vVersaoExe;
    PostModulos;
  end;
end;

end.
