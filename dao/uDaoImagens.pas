unit uDaoImagens;

interface

uses
  Windows, Messages, SysUtils, Classes, Dialogs, StdCtrls, Forms,
  Graphics, Controls, DB, JPEG;

procedure ListarImagens(vfOrdem: String; vfLimite: String);
procedure FiltrarImagens(vfCampoFil: String; vfOperador: String; vfParametro:
		     String; vfOrdem: String; vfLimite: String);
procedure InsImagens(vfExaID: String; vfPath: String);
procedure UpdImagens(vfExaID: String; vfPath: String);
procedure InsImagensArq(vfExaID: String);
procedure UpdImagensArq(vfExaID: String);
function TestImg(vfIDExame: String): boolean;
function ContaImagens: integer;
function ContaImagensArq: integer; //SGDB Imagens
procedure FiltrarImagensArq(vfIDExame: String);
function ImgIsArq(vfIDExame: String): boolean;
procedure RetornaImgArq;
procedure FiltrarImagensZEOS(vfCampoFil: String; vfOperador: String; vfParametro:
		     String; vfOrdem: String; vfLimite: String);

const
  ctCampos = 'img_id, img_exame, img_imagem';
  ctTabelas = 'imagens';

implementation

uses dataExames, dataExamesZEOS, uFuncoesDB, dataImagens;

{--- Lista todos os registros da tabela ---------------------------------------}

procedure ListarImagens(vfOrdem: String; vfLimite: String);
begin
  dmExames.qyImagens.Close;
  dmExames.qyImagens.SQL.Clear;
  dmExames.qyImagens.SQL.Add('select '+ ctCampos + ' from ' + ctTabelas);
  if vfOrdem <> '0' then
    dmExames.qyImagens.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmExames.qyImagens.SQL.Add(' limit ' + vfLimite);
  dmExames.qyImagens.Open;
end;

{--- Filtra registros da tabela -----------------------------------------------}

procedure FiltrarImagens(vfCampoFil: String; vfOperador: String; vfParametro:
		     String; vfOrdem: String; vfLimite: String);
begin
  dmExames.qyImagens.Close;
  dmExames.qyImagens.SQL.Clear;
  dmExames.qyImagens.SQL.Add('select ' + ctCampos + ' from ' + ctTabelas + ' where ');
  dmExames.qyImagens.SQL.Add(vfCampoFil + ' ' + vfOperador + ' ');
  dmExames.qyImagens.SQL.Add(QuotedStr(vfParametro));
  if vfOrdem <> '0' then
    dmExames.qyImagens.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmExames.qyImagens.SQL.Add(' limit ' + vfLimite);
  dmExames.qyImagens.Open;
end;

{--- Insere registro na tabela ------------------------------------------------}

procedure InsImagens(vfExaID: String; vfPath: String);
begin
  try
    dmExames.qyImagens.Insert;
    dmExames.qyImagensimg_id.Value := GetCodigo('img_id', 'imagens');
    dmExames.qyImagensimg_exame.Text := vfExaID;
    dmExames.qyImagensimg_imagem.LoadFromFile(vfPath);
    dmExames.qyImagens.Post;
  except
    on E: Exception do
    Begin
      MessageDlg('Erro ao gravar Alteração / Inserção!' + #13#10 +
          E.Message,mtError,[mbOk],0);
    end;
  end;
end;

{--- Altera registro na tabela ------------------------------------------------}

procedure UpdImagens(vfExaID: String; vfPath: String);
begin
  try
    dmExames.qyImagens.Edit;
    dmExames.qyImagensimg_exame.Text := vfExaID;
    dmExames.qyImagensimg_imagem.LoadFromFile(vfPath);
    dmExames.qyImagens.Post;
  except
    on E: Exception do
    Begin
      MessageDlg('Erro ao gravar Alteração / Inserção!' + #13#10 +
          E.Message,mtError,[mbOk],0);
    end;
  end;
end;

{--- Insere registro na tabela imagensarq -------------------------------------}

procedure InsImagensArq(vfExaID: String);
begin
  try
    dmImagens.qyImagensArq.Insert;
    dmImagens.qyImagensArqimg_exame.Text := vfExaID;
    dmImagens.qyImagensArqima_imagem.Value := dmExames.qyImagensimg_imagem.Value;
    dmImagens.qyImagensArq.Post;
  except
    on E: Exception do
    Begin
      MessageDlg('Erro ao gravar Alteração / Inserção!' + #13#10 +
          E.Message,mtError,[mbOk],0);
    end;
  end;
end;

{--- Altera registro na tabela imagensarq -------------------------------------}

procedure UpdImagensArq(vfExaID: String);
begin
  try
    dmImagens.qyImagensArq.Edit;
    dmImagens.qyImagensArqima_imagem.Value := dmExames.qyImagensimg_imagem.Value;
    dmImagens.qyImagensArq.Post;
  except
    on E: Exception do
    Begin
      MessageDlg('Erro ao gravar Alteração / Inserção!' + #13#10 +
          E.Message,mtError,[mbOk],0);
    end;
  end;
end;

{--- Verifica registro na tabela ----------------------------------------------}

function TestImg(vfIDExame: String): boolean;
begin
  dmExames.QTemp.Close;
  dmExames.QTemp.SQL.Clear;
  dmExames.QTemp.SQL.Add('select img_exame from imagens where img_exame = ');
  dmExames.QTemp.SQL.Add(QuotedStr(vfIDExame));
  dmExames.QTemp.Open;
  if dmExames.QTemp.Fields[0].IsNull then
    Result := false
  else
    Result := true;
end;

{--- Conta imagens armazenadas ------------------------------------------------}

function ContaImagens: integer;
begin
  dmExames.QTemp.Close;
  dmExames.QTemp.SQL.Clear;
  dmExames.QTemp.SQL.Add('select count(img_id) from imagens');
  dmExames.QTemp.Open;
  Result := dmExames.QTemp.Fields[0].Value;
end;

{--- Conta imagens arquivadas -------------------------------------------------}

function ContaImagensArq: integer;
begin
  dmImagens.QTemp.Close;
  dmImagens.QTemp.SQL.Clear;
  dmImagens.QTemp.SQL.Add('select count(img_exame) from imagensarq');
  dmImagens.QTemp.Open;
  Result := dmImagens.QTemp.Fields[0].Value;
end;

{--- Filtra imagens arquivadas ------------------------------------------------}

procedure FiltrarImagensArq(vfIDExame: String);
begin
  dmImagens.qyImagensArq.Close;
  dmImagens.qyImagensArq.SQL.Clear;
  dmImagens.qyImagensArq.SQL.Add('select img_exame, ima_imagem from imagensarq ');
  dmImagens.qyImagensArq.SQL.Add('where img_exame = ');
  dmImagens.qyImagensArq.SQL.Add(QuotedStr(vfIDExame));
  dmImagens.qyImagensArq.Open;
end;

{--- Verifica se a imagem está arquivada --------------------------------------}

function ImgIsArq(vfIDExame: String): boolean;
begin
  dmImagens.QTemp.Close;
  dmImagens.QTemp.SQL.Clear;
  dmImagens.QTemp.SQL.Add('select img_exame from imagensarq ');
  dmImagens.QTemp.SQL.Add('where img_exame = ');
  dmImagens.QTemp.SQL.Add(QuotedStr(dmExames.qyImagensimg_exame.Text));
  dmImagens.QTemp.Open;
  if dmImagens.QTemp.Fields[0].IsNull then
    Result := false
  else
    Result := true;
end;

{--- Retorna imagem arquivada -------------------------------------------------}

procedure RetornaImgArq;
begin
  if dmExamesZEOS.qyImagensimg_exame.IsNull then
  begin
    dmExamesZEOS.qyImagens.Insert;
    dmExamesZEOS.qyImagensimg_id.Value := GetCodigo('img_id', 'imagens');
    dmExamesZEOS.qyImagensimg_exame.Text := dmImagens.qyImagensArqimg_exame.Text;
    dmExamesZEOS.qyImagensimg_imagem.Value := dmImagens.qyImagensArqima_imagem.Value;
    dmExamesZEOS.qyImagens.Post;
  end
  else
  begin
    dmExamesZEOS.qyImagens.Edit;
    dmExamesZEOS.qyImagensimg_exame.Text := dmImagens.qyImagensArqimg_exame.Text;
    dmExamesZEOS.qyImagensimg_imagem.Value := dmImagens.qyImagensArqima_imagem.Value;
    dmExamesZEOS.qyImagens.Post;
  end;
  dmImagens.qyImagensArq.Delete;
  MessageDlg('Processo concluído com sucesso!', mtInformation, [mbok], 0);
end;

{--- Filtra registros da tabela (ZEOS) ----------------------------------------}

procedure FiltrarImagensZEOS(vfCampoFil: String; vfOperador: String; vfParametro:
		     String; vfOrdem: String; vfLimite: String);
begin
  dmExamesZEOS.qyImagens.Close;
  dmExamesZEOS.qyImagens.SQL.Clear;
  dmExamesZEOS.qyImagens.SQL.Add('select ' + ctCampos + ' from ' + ctTabelas + ' where ');
  dmExamesZEOS.qyImagens.SQL.Add(vfCampoFil + ' ' + vfOperador + ' ');
  dmExamesZEOS.qyImagens.SQL.Add(QuotedStr(vfParametro));
  if vfOrdem <> '0' then
    dmExamesZEOS.qyImagens.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmExamesZEOS.qyImagens.SQL.Add(' limit ' + vfLimite);
  dmExamesZEOS.qyImagens.Open;
end;

end.