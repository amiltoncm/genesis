unit uDaoExamesHistMicro;

interface

uses
  Windows, Messages, SysUtils, Classes, Dialogs, StdCtrls, Forms,
  Graphics, Controls, DB, uClassExamesHistMicro;


procedure InsertExamesHistMicro;
procedure EdtExamesHistMicro;
procedure PostExamesHistMicro(vfExaID: String);
procedure SetCodigoExamesHistMicro;
procedure SetValuesExamesHistMicro(vfExamesHistMicro: TExamesHistMicro);
procedure ListarExamesHistMicro(vfOrdem: String; vfLimite: String);
procedure FiltrarExamesHistMicro(vfCampoFil: String; vfOperador: String; vfParametro:
		     String; vfOrdem: String; vfLimite: String);

const
  ctCampos = 'ehr_id, exa_id, ehr_microscopia, ehr_diagnostico, ehr_complemento';
  ctTabelas = 'exameshistmicro';

implementation

uses dataExames, uFuncoesDB;

{--- Coloca a tabela em insert  -----------------------------------------------}

procedure InsertExamesHistMicro;
begin
  dmExames.qyExamesHistMicro.Insert;
end;

{--- Coloca a tabela em edit inserindo algum valor ----------------------------}

procedure EdtExamesHistMicro;
begin
  dmExames.qyExamesHistMicro.Edit;
end;

{--- Dá um post na tabela -----------------------------------------------------}

procedure PostExamesHistMicro(vfExaID: String);
begin
  try
    if dmExames.qyExamesHistMicro.State in [dsInsert] then
      if dmExames.qyExamesHistMicroehr_id.IsNull then
        dmExames.qyExamesHistMicroehr_id.Value := GetCodigo('ehr_id', 'exameshistmacro');
    dmExames.qyExamesHistMicroexa_id.Text := vfExaID;
    dmExames.qyExamesHistMicro.Post;
  except
    on E: Exception do
    begin
      MessageDlg('Erro ao gravar!' + #13 +#13 + 'Verifique o preenchimento dos dados!' + #13 + #13 +
                 E.Message, mtError, [mbOk], 0);
      dmExames.qyExamesHistMicro.Refresh;
    end;
  end;
end;

{--- Busca chave quando a tabela está em Insert -------------------------------}

procedure SetCodigoExamesHistMicro;
begin
  if dmExames.qyExamesHistMicro.State in [dsInsert] then
    dmExames.qyExamesHistMicroehr_id.Value := GetCodigo('ehr_id', 'exameshistmicro');
end;

{--- Insere registros na tabela -----------------------------------------------}

procedure SetValuesExamesHistMicro(vfExamesHistMicro: TExamesHistMicro);
begin
  if dmExames.qyExamesHistMicro.State in [dsInsert, dsEdit] then
  begin
    dmExames.qyExamesHistMicroehr_id.Value := vfExamesHistMicro.Ehr_ID;
    dmExames.qyExamesHistMicroexa_id.Value := vfExamesHistMicro.Exa_ID;
    dmExames.qyExamesHistMicroehr_microscopia.Text := vfExamesHistMicro.Ehr_Microscopia;
    dmExames.qyExamesHistMicroehr_diagnostico.Text := vfExamesHistMicro.Ehr_Diagnostico;
    dmExames.qyExamesHistMicroehr_complemento.Text := vfExamesHistMicro.Ehr_Complemento;
  end;
end;

{--- Lista todos os registros da tabela ---------------------------------------}

procedure ListarExamesHistMicro(vfOrdem: String; vfLimite: String);
begin
  dmExames.qyExamesHistMicro.Close;
  dmExames.qyExamesHistMicro.SQL.Clear;
  dmExames.qyExamesHistMicro.SQL.Add('select '+ ctCampos + ' from ' + ctTabelas);
  if vfOrdem <> '0' then
    dmExames.qyExamesHistMicro.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmExames.qyExamesHistMicro.SQL.Add(' limit ' + vfLimite);
  dmExames.qyExamesHistMicro.Open;
end;

{--- Filtra registros da tabela -----------------------------------------------}

procedure FiltrarExamesHistMicro(vfCampoFil: String; vfOperador: String; vfParametro:
		     String; vfOrdem: String; vfLimite: String);
begin
  dmExames.qyExamesHistMicro.Close;
  dmExames.qyExamesHistMicro.SQL.Clear;
  dmExames.qyExamesHistMicro.SQL.Add('select ' + ctCampos + ' from ' + ctTabelas + ' where ');
  dmExames.qyExamesHistMicro.SQL.Add(vfCampoFil + ' ' + vfOperador + ' ');
  dmExames.qyExamesHistMicro.SQL.Add(QuotedStr(vfParametro));
  if vfOrdem <> '0' then
    dmExames.qyExamesHistMicro.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmExames.qyExamesHistMicro.SQL.Add(' limit ' + vfLimite);
  dmExames.qyExamesHistMicro.Open;
end;

end.