unit uDaoModulos;

interface

uses
  Windows, Messages, SysUtils, Classes, Dialogs, StdCtrls, Forms,
  Graphics, Controls, DB;

procedure InsModulos;
procedure EdtModulos;
procedure PostModulos;
procedure ListarModulos(vfOrdem: String; vfLimite: String);
procedure FiltrarModulos(vfCampoFil: String; vfOperador: String; vfParametro:
		     String; vfOrdem: String; vfLimite: String);
function GetVersaoMod(vfCodigo: String): String;

const
ctCampos = 'mod_codigo, mod_executavel, mod_nome, mod_descricao, mod_versaoinst, mod_local';
ctTabelas = 'modulos';

implementation

uses dataConfig;

{--- Coloca a tabela em insert  -----------------------------------------------}

procedure InsModulos;
begin
  dmConfig.qyModulos.Insert;
end;

{--- Coloca a tabela em edit inserindo algum valor ----------------------------}

procedure EdtModulos;
begin
  dmConfig.qyModulos.Edit;
end;

{--- Dá um post na tabela -----------------------------------------------------}

procedure PostModulos;
begin
  try
    dmConfig.qyModulos.Post;
  except
    on E: Exception do
    begin
      MessageDlg('Erro ao gravar Alteração / Inserção!' + #13 +
          E.Message,mtError,[mbOk],0);
      dmConfig.qyModulos.Refresh;
    end;
  end;
end;

{--- Lista todos os registros da tabela ---------------------------------------}

procedure ListarModulos(vfOrdem: String; vfLimite: String);
begin
  dmConfig.qyModulos.Close;
  dmConfig.qyModulos.SQL.Clear;
  dmConfig.qyModulos.SQL.Add('select '+ ctCampos + ' from ' + ctTabelas);
  if vfOrdem <> '0' then
    dmConfig.qyModulos.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmConfig.qyModulos.SQL.Add(' limit ' + vfLimite);
  dmConfig.qyModulos.Open;
end;

{--- Filtra registros da tabela -----------------------------------------------}

procedure FiltrarModulos(vfCampoFil: String; vfOperador: String; vfParametro:
		     String; vfOrdem: String; vfLimite: String);
begin
  dmConfig.qyModulos.Close;
  dmConfig.qyModulos.SQL.Clear;
  dmConfig.qyModulos.SQL.Add('select ' + ctCampos + ' from ' + ctTabelas + ' where ');
  dmConfig.qyModulos.SQL.Add(vfCampoFil + ' ' + vfOperador + ' ');
  dmConfig.qyModulos.SQL.Add(QuotedStr(vfParametro));
  if vfOrdem <> '0' then
    dmConfig.qyModulos.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmConfig.qyModulos.SQL.Add(' limit ' + vfLimite);
  dmConfig.qyModulos.Open;
end;

{--- Pega versão do módulo na base --------------------------------------------}

function GetVersaoMod(vfCodigo: String): String;
begin
  dmConfig.QTemp.Close;
  dmConfig.QTemp.SQL.Clear;
  dmConfig.QTemp.SQL.Add('select mod_versaoinst from modulos where mod_codigo = ');
  dmConfig.QTemp.SQL.Add(vfCodigo);
  dmConfig.QTemp.Open;
  Result := dmConfig.QTemp.Fields[0].Text;
end;

end.
