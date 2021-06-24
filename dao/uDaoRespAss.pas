unit uDaoRespAss;

interface

uses
  Windows, Messages, SysUtils, Classes, Dialogs, StdCtrls, Forms,
  Graphics, Controls, DB;

procedure ListarRespAss(vfOrdem: String; vfLimite: String);
procedure FiltrarRespAss(vfCampoFil: String; vfOperador: String; vfParametro: 
		     String; vfOrdem: String; vfLimite: String);

const
  ctCampos = 'res_codigo, res_ass, res_passw';
  ctTabelas = 'respass';

implementation

uses dataGestao;

{--- Lista todos os registros da tabela ---------------------------------------}

procedure ListarRespAss(vfOrdem: String; vfLimite: String);
begin
  dmGestao.qyRespAss.Close;
  dmGestao.qyRespAss.SQL.Clear;
  dmGestao.qyRespAss.SQL.Add('select '+ ctCampos + ' from ' + ctTabelas);
  if vfOrdem <> '0' then
    dmGestao.qyRespAss.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmGestao.qyRespAss.SQL.Add(' limit ' + vfLimite);
  dmGestao.qyRespAss.Open;
end;

{--- Filtra registros da tabela -----------------------------------------------}

procedure FiltrarRespAss(vfCampoFil: String; vfOperador: String; vfParametro: 
		     String; vfOrdem: String; vfLimite: String);
begin
  dmGestao.qyRespAss.Close;
  dmGestao.qyRespAss.SQL.Clear;
  dmGestao.qyRespAss.SQL.Add('select ' + ctCampos + ' from ' + ctTabelas + ' where ');
  dmGestao.qyRespAss.SQL.Add(vfCampoFil + ' ' + vfOperador + ' ');
  dmGestao.qyRespAss.SQL.Add(QuotedStr(vfParametro));
  if vfOrdem <> '0' then
    dmGestao.qyRespAss.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmGestao.qyRespAss.SQL.Add(' limit ' + vfLimite);
  dmGestao.qyRespAss.Open;
end;

end.