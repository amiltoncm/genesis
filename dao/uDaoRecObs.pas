unit uDaoRecObs;

interface

uses
  Windows, Messages, SysUtils, Classes, Dialogs, StdCtrls, Forms,
  Graphics, Controls, DB;

//procedure SetValuesRecObs;
procedure InsRecObs;
procedure EdtRecObs;
procedure PostRecObs;
procedure ListarRecObs(vfOrdem: String; vfLimite: String);
procedure FiltrarRecObs(vfCampoFil: String; vfOperador: String; vfParametro: 
		     String; vfOrdem: String; vfLimite: String);
procedure ExcluirRecObs(vfRecCodigo: String);

const
ctCampos = 'rob_id, rob_data, rec_codigo, rob_obs';
ctTabelas = 'recobs';

implementation

uses dataFinanceiro, uFuncoesDB;

{--- Seta algum valor na tabela -----------------------------------------------}

{
procedure SetValuesRecObs(vfDAO: TDAO);
begin
  //
end;
}

{--- Coloca a tabela em insert  -----------------------------------------------}

procedure InsRecObs;
begin
  dmFinanceiro.qyRecObs.Insert;
end;

{--- Coloca a tabela em edit inserindo algum valor ----------------------------}

procedure EdtRecObs;
begin
  dmFinanceiro.qyRecObs.Edit;
end;

{--- Dá um post na tabela -----------------------------------------------------}

procedure PostRecObs;
begin
  try
    if dmFinanceiro.qyRecObs.State in [dsInsert] then
      dmFinanceiro.qyRecObsrob_id.Value := GetCodigo('rob_id', 'RecObs');
    dmFinanceiro.qyRecObs.Post;
  except
    on E: Exception do
    begin
      MessageDlg('Erro ao gravar Alteração / Inserção!' + #13 +
          E.Message,mtError,[mbOk],0);
      dmFinanceiro.qyRecObs.Refresh;
    end;
  end;
end;

{--- Lista todos os registros da tabela ---------------------------------------}

procedure ListarRecObs(vfOrdem: String; vfLimite: String);
begin
  dmFinanceiro.qyRecObs.Close;
  dmFinanceiro.qyRecObs.SQL.Clear;
  dmFinanceiro.qyRecObs.SQL.Add('select '+ ctCampos + ' from ' + ctTabelas);
  if vfOrdem <> '0' then
    dmFinanceiro.qyRecObs.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmFinanceiro.qyRecObs.SQL.Add(' limit ' + vfLimite);
  dmFinanceiro.qyRecObs.Open;
end;

{--- Filtra registros da tabela -----------------------------------------------}

procedure FiltrarRecObs(vfCampoFil: String; vfOperador: String; vfParametro: 
		     String; vfOrdem: String; vfLimite: String);
begin
  dmFinanceiro.qyRecObs.Close;
  dmFinanceiro.qyRecObs.SQL.Clear;
  dmFinanceiro.qyRecObs.SQL.Add('select ' + ctCampos + ' from ' + ctTabelas + ' where ');
  dmFinanceiro.qyRecObs.SQL.Add(vfCampoFil + ' ' + vfOperador + ' ');
  dmFinanceiro.qyRecObs.SQL.Add(QuotedStr(vfParametro));
  if vfOrdem <> '0' then
    dmFinanceiro.qyRecObs.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmFinanceiro.qyRecObs.SQL.Add(' limit ' + vfLimite);
  dmFinanceiro.qyRecObs.Open;
end;

procedure ExcluirRecObs(vfRecCodigo: String);
begin
  dmFinanceiro.ScriptCob.SQL.Clear;
  dmFinanceiro.ScriptCob.SQL.Add('delete from recobs where rec_codigo = ' + vfRecCodigo);
  dmFinanceiro.ScriptCob.ExecSQL;
end;

end.
