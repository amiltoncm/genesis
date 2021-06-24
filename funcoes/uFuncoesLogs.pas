unit uFuncoesLogs;

interface

uses Windows, Forms, Controls, SysUtils, Graphics, Dialogs, Inifiles;

procedure GravaArqText(vfFile, vfMsg: String);
procedure GravaLog(vfTipo, vfMsg: String);
procedure GravaConsulta(vfForm: String; vfTexto: String);
function BuscaConsulta(vfForm: String): String;

implementation

uses uVarGlobal;

procedure GravaArqText(vfFile, vfMsg: String);
Var
vArq: TextFile;
begin
  //Cria log com erro
  AssignFile(vArq, vfFile);
  if FileExists (vfFile) then
    DeleteFile(vfFile);
  if not FileExists(vfFile) then
    ReWrite(vArq);
  vfFile := vfMsg;
  Append(vArq);
  WriteLn(vArq, vfFile);
  CloseFile(vArq);
end;

procedure GravaLog(vfTipo, vfMsg: String);
Var
vControl: TInifile;
vLocArq, vLog: String;
vArq: TextFile;
begin
  vControl := TInifile.Create(vgArqIni);
  //grava nome do ultimo usuario
  if vfTipo = 'Login' then //Entrada no sistema
  begin
    vControl.WriteString('usuario', 'ultimo', vgNomeUsuarioLog);
    vLocArq := vControl.readstring('Logs', 'conexao', '');
    vLog := vgNomeUsuarioLog + ' - ' + vfTipo + '  - ' + FormatDateTime('dd/MM/yyyy', (now)) + ' - ' + TimeToStr(now) + #13;
  end;
  if vfTipo = 'Logout' then //Saída do sistema
  begin
    vLocArq := vControl.readstring('Logs', 'conexao', '');
    vLog := vgNomeUsuarioLog + ' - ' + vfTipo + ' - ' + FormatDateTime('dd/MM/yyyy', (now)) + ' - ' + TimeToStr(now) + #13;
  end;
  if vfTipo = 'Cancel' then //Cancelamento de login
  begin
    vLocArq := vControl.readstring('Logs', 'conexao', '');
    vLog := vfMsg + FormatDateTime('dd/MM/yyyy', (now)) + ' - ' + TimeToStr(now) + #13;
  end;
  if vfTipo = 'Erro' then //Erros em geral
  begin
    vLocArq := vControl.readstring('Logs', 'erro', '');
    vLog := vfMsg + ' - ' + FormatDateTime('dd/MM/yyyy', (now)) + ' - ' + TimeToStr(now) + #13;
  end;
  //grava log de login/logout e erros em geral
  AssignFile(vArq, vLocArq);
  if not FileExists(vLocArq) then
    ReWrite(vArq);
  Append(vArq);
  WriteLn(vArq, vLog);
  CloseFile(vArq);
  vControl.Free;
end;

{--- Utilizado para gravar conteúdo do edit da consulta -----------------------}

procedure GravaConsulta(vfForm: String; vfTexto: String);
Var
vControl: TInifile;
vArqIni: String;
begin
  //Grava última consulta do edit
  vArqIni := (vgPath + '\Consultas.ini');
  vControl := Tinifile.create(vArqIni);
  vControl.WriteString('Consultas', vfForm, vfTexto);
  vControl.free;
end;

{--- Utilizado para buscar conteúdo do edit da consulta -----------------------}

function BuscaConsulta(vfForm: String): String;
Var
vControl: TInifile;
vArqIni: String;
vTexto: String;
begin
  //Grava última consulta do edit
  vArqIni := (vgPath + '\Consultas.ini');
  vControl := Tinifile.create(vArqIni);
  vTexto := vControl.ReadString('Consultas', vfForm, '');
  vControl.free;
  Result := vTexto;
end;

end.
