unit uDaoImagensZEOS;

interface

uses
  Windows, Messages, SysUtils, Classes, Dialogs, StdCtrls, Forms,
  Graphics, Controls, DB, JPEG;

procedure ListarImagensZEOS(vfOrdem: String; vfLimite: String);
procedure FiltrarImagensZEOS(vfCampoFil: String; vfOperador: String; vfParametro:
                    		     String; vfOrdem: String; vfLimite: String);
procedure InsImagensZEOS(vfExaID: String; vfPath: String);
procedure UpdImagensZEOS(vfExaID: String; vfPath: String);
function TestImgZEOS(vfIDExame: String): boolean;

const
  ctCampos = 'img_id, img_exame, img_imagem';
  ctTabelas = 'imagens';

implementation

uses dataFiles, uFuncoesDB;

{--- Lista todos os registros da tabela ---------------------------------------}

procedure ListarImagensZEOS(vfOrdem: String; vfLimite: String);
begin
  dmFiles.qyImagens.Close;
  dmFiles.qyImagens.SQL.Clear;
  dmFiles.qyImagens.SQL.Add('select '+ ctCampos + ' from ' + ctTabelas);
  if vfOrdem <> '0' then
    dmFiles.qyImagens.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmFiles.qyImagens.SQL.Add(' limit ' + vfLimite);
  dmFiles.qyImagens.Open;
end;

{--- Filtra registros da tabela -----------------------------------------------}

procedure FiltrarImagensZEOS(vfCampoFil: String; vfOperador: String; vfParametro:
                		     String; vfOrdem: String; vfLimite: String);
begin
  dmFiles.qyImagens.Close;
  dmFiles.qyImagens.SQL.Clear;
  dmFiles.qyImagens.SQL.Add('select ' + ctCampos + ' from ' + ctTabelas + ' where ');
  dmFiles.qyImagens.SQL.Add(vfCampoFil + ' ' + vfOperador + ' ');
  dmFiles.qyImagens.SQL.Add(QuotedStr(vfParametro));
  if vfOrdem <> '0' then
    dmFiles.qyImagens.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmFiles.qyImagens.SQL.Add(' limit ' + vfLimite);
  dmFiles.qyImagens.Open;
end;

{--- Insere registro na tabela ------------------------------------------------}

procedure InsImagensZEOS(vfExaID: String; vfPath: String);
begin
  try
    dmFiles.qyImagens.Active := True;
    dmFiles.qyImagens.Insert;
    dmFiles.qyImagensimg_id.Value := GetCodigo('img_id', 'imagens');
    dmFiles.qyImagensimg_exame.Text := vfExaID;
    dmFiles.qyImagensimg_imagem.LoadFromFile(vfPath);
    dmFiles.qyImagens.Post;
    dmFiles.qyImagens.Active := False;
  except
    on E: Exception do
    Begin
      MessageDlg('Erro ao gravar Alteração / Inserção!' + #13#10 +
          E.Message,mtError,[mbOk],0);
      dmFiles.qyImagens.Active := False;
    end;
  end;
end;

{--- Altera registro na tabela ------------------------------------------------}

procedure UpdImagensZEOS(vfExaID: String; vfPath: String);
begin
  try
    dmFiles.qyImagens.Active := true;
    dmFiles.qyImagens.Edit;
    dmFiles.qyImagensimg_exame.Text := vfExaID;
    dmFiles.qyImagensimg_imagem.LoadFromFile(vfPath);
    dmFiles.qyImagens.Post;
    dmFiles.qyImagens.Active := False;
  except
    on E: Exception do
    Begin
      MessageDlg('Erro ao gravar Alteração / Inserção!' + #13#10 +
          E.Message,mtError,[mbOk],0);
      dmFiles.qyImagens.Active := False;
    end;
  end;
end;

{--- Verifica registro na tabela ----------------------------------------------}

function TestImgZEOS(vfIDExame: String): boolean;
begin
  dmFiles.QTemp.Close;
  dmFiles.QTemp.SQL.Clear;
  dmFiles.QTemp.SQL.Add('select img_exame from imagens where img_exame = ');
  dmFiles.QTemp.SQL.Add(QuotedStr(vfIDExame));
  dmFiles.QTemp.Open;
  if dmFiles.QTemp.Fields[0].IsNull then
    Result := false
  else
    Result := true;
end;

end.
