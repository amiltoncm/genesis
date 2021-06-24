unit uDaoConfig;

interface

uses
  Windows, Messages, SysUtils, Classes, Dialogs, StdCtrls, Forms,
  Graphics, Controls, DB;

procedure ListarConfig(vfOrdem: String; vfLimite: String);
procedure FiltrarConfig(vfCampoFil: String; vfOperador: String; vfParametro: 
		     String; vfOrdem: String; vfLimite: String);

const
  vlCampos = 'cfg_id, cfg_software, cfg_ versao, cfg_enderecoweb, cfg_try';
  vlTabelas = 'config';

implementation

uses dataConfig;

{--- Lista todos os registros da tabela ---------------------------------------}

procedure ListarConfig(vfOrdem: String; vfLimite: String);
begin
  dmConfig.qyConfig.Close;
  dmConfig.qyConfig.SQL.Clear;
  dmConfig.qyConfig.SQL.Add('select '+ vlCampos + ' from ' + vlTabelas);
  if vfOrdem <> '0' then
    dmConfig.qyConfig.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmConfig.qyConfig.SQL.Add(' limit ' + vfLimite);
  dmConfig.qyConfig.Open;
end;

{--- Filtra registros da tabela -----------------------------------------------}

procedure FiltrarConfig(vfCampoFil: String; vfOperador: String; vfParametro:
		     String; vfOrdem: String; vfLimite: String);
begin
  dmConfig.qyConfig.Close;
  dmConfig.qyConfig.SQL.Clear;
  dmConfig.qyConfig.SQL.Add('select ' + vlCampos + ' from ' + vlTabelas + ' where ');
  dmConfig.qyConfig.SQL.Add(vfCampoFil + ' ' + vfOperador + ' ');
  dmConfig.qyConfig.SQL.Add(QuotedStr(vfParametro));
  if vfOrdem <> '0' then
    dmConfig.qyConfig.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmConfig.qyConfig.SQL.Add(' limit ' + vfLimite);
  dmConfig.qyConfig.Open;
end;

end.