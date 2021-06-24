unit uDaoEmail;

interface

uses
  Windows, Messages, SysUtils, Classes, Dialogs, StdCtrls, Forms,
  Graphics, Controls, DB;

procedure ListarEmail(vfOrdem: String; vfLimite: String);
procedure FiltrarEmail(vfCampoFil: String; vfOperador: String; vfParametro:
		     String; vfOrdem: String; vfLimite: String);
procedure SetMail(vfEndereco: String);

const
  ctCampos = 'ema_id, ema_endereco';
  ctTabelas = 'emails';

implementation

uses dataGestao, uFuncoesDB;

{--- Lista todos os registros da tabela ---------------------------------------}

procedure ListarEmail(vfOrdem: String; vfLimite: String);
begin
  dmGestao.qyEmail.Close;
  dmGestao.qyEmail.SQL.Clear;
  dmGestao.qyEmail.SQL.Add('select '+ ctCampos + ' from ' + ctTabelas);
  if vfOrdem <> '0' then
    dmGestao.qyEmail.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmGestao.qyEmail.SQL.Add(' limit ' + vfLimite);
  dmGestao.qyEmail.Open;
end;

{--- Filtra registros da tabela -----------------------------------------------}

procedure FiltrarEmail(vfCampoFil: String; vfOperador: String; vfParametro:
		     String; vfOrdem: String; vfLimite: String);
begin
  dmGestao.qyEmail.Close;
  dmGestao.qyEmail.SQL.Clear;
  dmGestao.qyEmail.SQL.Add('select ' + ctCampos + ' from ' + ctTabelas + ' where ');
  dmGestao.qyEmail.SQL.Add(vfCampoFil + ' ' + vfOperador + ' ');
  dmGestao.qyEmail.SQL.Add(QuotedStr(vfParametro));
  if vfOrdem <> '0' then
    dmGestao.qyEmail.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmGestao.qyEmail.SQL.Add(' limit ' + vfLimite);
  dmGestao.qyEmail.Open;
end;

{--- Insere registros da tabela -----------------------------------------------}

procedure SetMail(vfEndereco: String);
begin
  dmGestao.qyEmail.Insert;
  dmGestao.qyEmailema_id.Value := GetCodigo('ema_id', 'emails');
  dmGestao.qyEmailema_endereco.Text := vfEndereco;
  dmGestao.qyEmail.Post;
end;

end.