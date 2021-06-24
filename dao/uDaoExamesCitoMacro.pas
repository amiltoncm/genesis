unit uDaoExamesCitoMacro;

interface

uses
  Windows, Messages, SysUtils, Classes, Dialogs, StdCtrls, Forms,
  Graphics, Controls, DB;

procedure ListarExamesCitoMacro(vfOrdem: String; vfLimite: String);
procedure FiltrarExamesCitoMacro(vfCampoFil: String; vfOperador: String; vfParametro: 
		     String; vfOrdem: String; vfLimite: String);

const
  ctCampos = 'ecm_id, exa_id, ecm_macro';
  ctTabelas = 'examescitomacro';

implementation

uses dataExames;

{--- Lista todos os registros da tabela ---------------------------------------}

procedure ListarExamesCitoMacro(vfOrdem: String; vfLimite: String);
begin
  dmExames.qyExamesCitoMacro.Close;
  dmExames.qyExamesCitoMacro.SQL.Clear;
  dmExames.qyExamesCitoMacro.SQL.Add('select '+ ctCampos + ' from ' + ctTabelas);
  if vfOrdem <> '0' then
    dmExames.qyExamesCitoMacro.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmExames.qyExamesCitoMacro.SQL.Add(' limit ' + vfLimite);
  dmExames.qyExamesCitoMacro.Open;
end;

{--- Filtra registros da tabela -----------------------------------------------}

procedure FiltrarExamesCitoMacro(vfCampoFil: String; vfOperador: String; vfParametro:
		     String; vfOrdem: String; vfLimite: String);
begin
  dmExames.qyExamesCitoMacro.Close;
  dmExames.qyExamesCitoMacro.SQL.Clear;
  dmExames.qyExamesCitoMacro.SQL.Add('select ' + ctCampos + ' from ' + ctTabelas + ' where ');
  dmExames.qyExamesCitoMacro.SQL.Add(vfCampoFil + ' ' + vfOperador + ' ');
  dmExames.qyExamesCitoMacro.SQL.Add(QuotedStr(vfParametro));
  if vfOrdem <> '0' then
    dmExames.qyExamesCitoMacro.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmExames.qyExamesCitoMacro.SQL.Add(' limit ' + vfLimite);
  dmExames.qyExamesCitoMacro.Open;
end;

end.