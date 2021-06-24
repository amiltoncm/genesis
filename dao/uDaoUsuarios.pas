unit uDaoUsuarios;

interface

uses
  Windows, Messages, SysUtils, Classes, Dialogs, StdCtrls, Forms,
  Graphics, Controls, DB;

procedure ListarUsuarios(vfOrdem: String; vfLimite: String);
procedure FiltrarUsuarios(vfCampoFil: String; vfOperador: String; vfParametro: String;
                          vfOrdem: String; vfLimite: String);
function FiltLoginUsuarios(vfUsuario: String; vfSenha: String): boolean;
function GetSenhaMaster: String;

const
  ctCampos = 'u.usu_codigo, u.usu_nome, u.usu_senha, u.ace_codigo, a.ace_descricao, ' +
             'u.usu_ativo, u.usu_nomecomp, u.usu_exppdf, u.usu_altdata';
  ctTabelas = 'usuarios u, acesso a';

implementation

uses dataCadastros, uFuncoesSeguranca;

{--- Lista todos os registros da tabela ---------------------------------------}

procedure ListarUsuarios(vfOrdem: String; vfLimite: String);
begin
  dmCadastros.qyUsuarios.Close;
  dmCadastros.qyUsuarios.SQL.Clear;
  dmCadastros.qyUsuarios.SQL.Add('select ' + ctCampos + ' from ' + ctTabelas +
                                 ' where u.ace_codigo = a.ace_codigo');
  if vfOrdem <> '0' then
    dmCadastros.qyUsuarios.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmCadastros.qyUsuarios.SQL.Add(' limit ' + vfLimite);
  dmCadastros.qyUsuarios.Open;
end;

{--- Filtra registros da tabela -----------------------------------------------}

procedure FiltrarUsuarios(vfCampoFil: String; vfOperador: String; vfParametro: String;
                          vfOrdem: String; vfLimite: String);
begin
  dmCadastros.qyUsuarios.Close;
  dmCadastros.qyUsuarios.SQL.Clear;
  dmCadastros.qyUsuarios.SQL.Add('select ' + ctCampos + ' from ' + ctTabelas +
                                 ' where u.ace_codigo = a.ace_codigo and ');
  dmCadastros.qyUsuarios.SQL.Add(vfCampoFil + ' ' + vfOperador + ' ');
  dmCadastros.qyUsuarios.SQL.Add(QuotedStr(vfParametro));
  if vfOrdem <> '0' then
    dmCadastros.qyUsuarios.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmCadastros.qyUsuarios.SQL.Add(' limit ' + vfLimite);
  dmCadastros.qyUsuarios.Open;
end;

{--- Filtra registros da tabela ----------------------------------------------}

function FiltLoginUsuarios(vfUsuario: String; vfSenha: String): boolean;
Var
vResult: Boolean;
begin
  dmCadastros.qyUsuarios.Close;
  dmCadastros.qyUsuarios.SQL.Clear;
  dmCadastros.qyUsuarios.SQL.Add('select ' + ctCampos + ' from ' + ctTabelas +
                                 ' where u.ace_codigo = a.ace_codigo ');
  dmCadastros.qyUsuarios.SQL.Add(' and usu_nome = ');
  dmCadastros.qyUsuarios.SQL.Add(QuotedStr(vfUsuario));
  dmCadastros.qyUsuarios.SQL.Add(' and usu_senha = ');
  dmCadastros.qyUsuarios.SQL.Add(QuotedStr(vfSenha));
  dmCadastros.qyUsuarios.SQL.Add(' and usu_ativo = ');
  dmCadastros.qyUsuarios.SQL.Add(QuotedStr('S'));
  dmCadastros.qyUsuarios.Open;
  if dmCadastros.qyUsuariosUSU_CODIGO.IsNull then
    vResult := false
  else
    vResult := true;
  Result := vResult;
end;

{--- Busca senha MASTER -------------------------------------------------------}

function GetSenhaMaster: String;
begin
  dmCadastros.QTemp.Close;
  dmCadastros.QTemp.SQL.Clear;
  dmCadastros.QTemp.SQL.Add('select usu_senha from usuarios ');
  dmCadastros.QTemp.SQL.Add('where usu_codigo = 1');
  dmCadastros.QTemp.Open;
  GetSenhaMaster := DecryptMsg(dmCadastros.QTemp.Fields[0].Text,
                               Length(dmCadastros.QTemp.Fields[0].Text));
end;

end.