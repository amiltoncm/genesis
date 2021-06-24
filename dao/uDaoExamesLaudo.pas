unit uDaoExamesLaudo;

interface

uses
  Windows, Messages, SysUtils, Classes, Dialogs, StdCtrls, Forms,
  Graphics, Controls, DB;

procedure ListarExamesLaudo(vfOrdem: String; vfLimite: String);
procedure FiltrarExamesLaudo(vfCampoFil: String; vfOperador: String; vfParametro: 
		     String; vfOrdem: String; vfLimite: String);

const
  ctCampos = 'exa_id, exa_laudo, exa_diagnostico';
  ctTabelas = 'exameslaudo';

implementation

uses dataExames;

{--- Lista todos os registros da tabela ---------------------------------------}

procedure ListarExamesLaudo(vfOrdem: String; vfLimite: String);
begin
  dmExames.qyExamesLaudo.Close;
  dmExames.qyExamesLaudo.SQL.Clear;
  dmExames.qyExamesLaudo.SQL.Add('select '+ ctCampos + ' from ' + ctTabelas);
  if vfOrdem <> '0' then
    dmExames.qyExamesLaudo.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmExames.qyExamesLaudo.SQL.Add(' limit ' + vfLimite);
  dmExames.qyExamesLaudo.Open;
end;

{--- Filtra registros da tabela -----------------------------------------------}

procedure FiltrarExamesLaudo(vfCampoFil: String; vfOperador: String; vfParametro: 
		     String; vfOrdem: String; vfLimite: String);
begin
  dmExames.qyExamesLaudo.Close;
  dmExames.qyExamesLaudo.SQL.Clear;
  dmExames.qyExamesLaudo.SQL.Add('select ' + ctCampos + ' from ' + ctTabelas + ' where ');
  dmExames.qyExamesLaudo.SQL.Add(vfCampoFil + ' ' + vfOperador + ' ');
  dmExames.qyExamesLaudo.SQL.Add(QuotedStr(vfParametro));
  if vfOrdem <> '0' then
    dmExames.qyExamesLaudo.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmExames.qyExamesLaudo.SQL.Add(' limit ' + vfLimite);
  dmExames.qyExamesLaudo.Open;
end;

end.