unit uDaoExamesTp;

interface

uses
  Windows, Messages, SysUtils, Classes, Dialogs, StdCtrls, Forms,
  Graphics, Controls, DB;

procedure ListarExamesTp(vfOrdem: String; vfLimite: String);
procedure FiltrarExamesTp(vfCampoFil: String; vfOperador: String; vfParametro:
		     String; vfOrdem: String; vfLimite: String);
function GetTipo(vfIDTipo: String): String;

const
  ctCampos = 'etp_id, etp_tipo, etp_abrev';
  ctTabelas = 'examestp';

implementation

uses dataCadastros;

{--- Lista todos os registros da tabela ---------------------------------------}

procedure ListarExamesTp(vfOrdem: String; vfLimite: String);
begin
  dmCadastros.qyExamesTp.Close;
  dmCadastros.qyExamesTp.SQL.Clear;
  dmCadastros.qyExamesTp.SQL.Add('select '+ ctCampos + ' from ' + ctTabelas);
  if vfOrdem <> '0' then
    dmCadastros.qyExamesTp.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmCadastros.qyExamesTp.SQL.Add(' limit ' + vfLimite);
  dmCadastros.qyExamesTp.Open;
end;

{--- Filtra registros da tabela -----------------------------------------------}

procedure FiltrarExamesTp(vfCampoFil: String; vfOperador: String; vfParametro:
		     String; vfOrdem: String; vfLimite: String);
begin
  dmCadastros.qyExamesTp.Close;
  dmCadastros.qyExamesTp.SQL.Clear;
  dmCadastros.qyExamesTp.SQL.Add('select ' + ctCampos + ' from ' + ctTabelas + ' where ');
  dmCadastros.qyExamesTp.SQL.Add(vfCampoFil + ' ' + vfOperador + ' ');
  dmCadastros.qyExamesTp.SQL.Add(QuotedStr(vfParametro));
  if vfOrdem <> '0' then
    dmCadastros.qyExamesTp.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmCadastros.qyExamesTp.SQL.Add(' limit ' + vfLimite);
  dmCadastros.qyExamesTp.Open;
end;

function GetTipo(vfIDTipo: String): String;
begin
  dmCadastros.QTemp.Close;
  dmCadastros.QTemp.SQL.Clear;
  dmCadastros.QTemp.SQL.Add('select etp_tipo from examestp ');
  dmCadastros.QTemp.SQL.Add('where etp_id = ');
  dmCadastros.QTemp.SQL.Add(vfIDTipo);
  dmCadastros.QTemp.Open;
  Result := dmCadastros.QTemp.Fields[0].Text;
end;

end.