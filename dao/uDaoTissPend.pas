unit uDaoTissPend;

interface

uses
  Windows, Messages, SysUtils, Classes, Dialogs, StdCtrls, Forms,
  Graphics, Controls, DB;

procedure ListarTissPend(vfOrdem: String; vfLimite: String);
procedure FiltrarTissPend(vfCampoFil: String; vfOperador: String; vfParametro:
		     String; vfOrdem: String; vfLimite: String);
procedure LimparPendAnt(vfIDExame: String);

const
  ctCampos = 'tpd_id, exa_id, tpd_descricao';
  ctTabelas = 'tisspend';

implementation

uses dataFinanceiro;

{--- Lista todos os registros da tabela ---------------------------------------}

procedure ListarTissPend(vfOrdem: String; vfLimite: String);
begin
  dmFinanceiro.qyTissPend.Close;
  dmFinanceiro.qyTissPend.SQL.Clear;
  dmFinanceiro.qyTissPend.SQL.Add('select '+ ctCampos + ' from ' + ctTabelas +
                                   ' order by '+ vfOrdem);
  if vfLimite <> '0' then
    dmFinanceiro.qyTissPend.SQL.Add(' limit ' + vfLimite);
  dmFinanceiro.qyTissPend.Open;
end;

{--- Filtra registros da tabela -----------------------------------------------}

procedure FiltrarTissPend(vfCampoFil: String; vfOperador: String; vfParametro:
		     String; vfOrdem: String; vfLimite: String);
begin
  dmFinanceiro.qyTissPend.Close;
  dmFinanceiro.qyTissPend.SQL.Clear;
  dmFinanceiro.qyTissPend.SQL.Add('select ' + ctCampos + ' from ' + ctTabelas + ' where ');
  dmFinanceiro.qyTissPend.SQL.Add(vfCampoFil + ' ' + vfOperador + ' ');
  dmFinanceiro.qyTissPend.SQL.Add(QuotedStr(vfParametro));
  if vfOrdem <> '0' then
    dmFinanceiro.qyTissPend.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmFinanceiro.qyTissPend.SQL.Add(' limit ' + vfLimite);
  dmFinanceiro.qyTissPend.Open;
end;

{--- Limpa pendências anteriores ----------------------------------------------}

procedure LimparPendAnt(vfIDExame: String);
begin
  dmFinanceiro.scLimparPendAnt.SQL.Clear;
  dmFinanceiro.scLimparPendAnt.SQL.Add('delete from tisspend where exa_id = ');
  dmFinanceiro.scLimparPendAnt.SQL.Add(QuotedStr(vfIDExame));
  dmFinanceiro.scLimparPendAnt.ExecSQL;
end;

end.