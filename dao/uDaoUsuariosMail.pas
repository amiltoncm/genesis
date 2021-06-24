unit uDaoUsuariosMail;

interface

uses
  Windows, Messages, SysUtils, Classes, Dialogs, StdCtrls, Forms,
  Graphics, Controls, DB;

procedure ListarUsuariosMail(vfOrdem: String; vfLimite: String);
procedure FiltrarUsuariosMail(vfCampoFil: String; vfOperador: String; vfParametro:
		     String; vfOrdem: String; vfLimite: String);

const
  ctCampos = 'usu_codigo, mai_host, mai_username, mai_password, mai_namefrom, mai_adressfrom, mai_door';
  ctTabelas = 'usuariosmail';

implementation

uses dataCadastros;

{--- Lista todos os registros da tabela ---------------------------------------}

procedure ListarUsuariosMail(vfOrdem: String; vfLimite: String);
begin
  dmCadastros.qyUsuariosMail.Close;
  dmCadastros.qyUsuariosMail.SQL.Clear;
  dmCadastros.qyUsuariosMail.SQL.Add('select '+ ctCampos + ' from ' + ctTabelas);
  if vfOrdem <> '0' then
    dmCadastros.qyUsuariosMail.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmCadastros.qyUsuariosMail.SQL.Add(' limit ' + vfLimite);
  dmCadastros.qyUsuariosMail.Open;
end;

{--- Filtra registros da tabela -----------------------------------------------}

procedure FiltrarUsuariosMail(vfCampoFil: String; vfOperador: String; vfParametro: 
		     String; vfOrdem: String; vfLimite: String);
begin
  dmCadastros.qyUsuariosMail.Close;
  dmCadastros.qyUsuariosMail.SQL.Clear;
  dmCadastros.qyUsuariosMail.SQL.Add('select ' + ctCampos + ' from ' + ctTabelas + ' where ');
  dmCadastros.qyUsuariosMail.SQL.Add(vfCampoFil + ' ' + vfOperador + ' ');
  dmCadastros.qyUsuariosMail.SQL.Add(QuotedStr(vfParametro));
  if vfOrdem <> '0' then
    dmCadastros.qyUsuariosMail.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmCadastros.qyUsuariosMail.SQL.Add(' limit ' + vfLimite);
  dmCadastros.qyUsuariosMail.Open;
end;

end.