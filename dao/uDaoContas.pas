unit uDaoContas;

interface

uses
  Windows, Messages, SysUtils, Classes, Dialogs, StdCtrls, Forms,
  Graphics, Controls, DB;

//procedure SetValuesContas;
procedure InsContas;
procedure EdtContas;
procedure PostContas;
procedure ListarContas(vfOrdem: String; vfLimite: String);
procedure FiltrarContas(vfCampoFil: String; vfOperador: String; vfParametro:
		     String; vfOrdem: String; vfLimite: String);
procedure FiltrarContasLkAtivas;
function GetDescricao(vfCodConta: String): String;

const
ctCampos = 'c.con_codigo, c.con_descricao, c.con_obs, c.con_ativa, c.ban_codigo, b.ban_descricao ';
ctTabelas = 'contas c, bancos b';

implementation

uses dataCadastros, dataLookups;

{--- Seta algum valor na tabela -----------------------------------------------}

{
procedure SetValuesContas(vfDAO: TDAO);
begin
  //
end;
}

{--- Coloca a tabela em insert  -----------------------------------------------}

procedure InsContas;
begin
  dmCadastros.qyContas.Insert;
end;

{--- Coloca a tabela em edit inserindo algum valor ----------------------------}

procedure EdtContas;
begin
  dmCadastros.qyContas.Edit;
end;

{--- Dá um post na tabela -----------------------------------------------------}

procedure PostContas;
begin
  try
    //if dmCadastros.qyContas.State in [dsInsert] then
      //dados.DataModule.qyContasc.con_codigo.Value := GetCodigo('c.con_codigo', 'Contas');
    dmCadastros.qyContas.Post;
  except
    on E: Exception do
    begin
      MessageDlg('Erro ao gravar Alteração / Inserção!' + #13 +
          E.Message,mtError,[mbOk],0);
      dmCadastros.qyContas.Refresh;
    end;
  end;
end;

{--- Lista todos os registros da tabela ---------------------------------------}

procedure ListarContas(vfOrdem: String; vfLimite: String);
begin
  dmCadastros.qyContas.Close;
  dmCadastros.qyContas.SQL.Clear;
  dmCadastros.qyContas.SQL.Add('select '+ ctCampos + ' from ' + ctTabelas);
  dmCadastros.qyContas.SQL.Add(' where c.ban_codigo = b.ban_codigo ');
  if vfOrdem <> '0' then
    dmCadastros.qyContas.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmCadastros.qyContas.SQL.Add(' limit ' + vfLimite);
  dmCadastros.qyContas.Open;
end;

{--- Filtra registros da tabela -----------------------------------------------}

procedure FiltrarContas(vfCampoFil: String; vfOperador: String; vfParametro:
		     String; vfOrdem: String; vfLimite: String);
begin
  dmCadastros.qyContas.Close;
  dmCadastros.qyContas.SQL.Clear;
  dmCadastros.qyContas.SQL.Add('select ' + ctCampos + ' from ' + ctTabelas);
  dmCadastros.qyContas.SQL.Add(' where c.ban_codigo = b.ban_codigo and ');
  dmCadastros.qyContas.SQL.Add(vfCampoFil + ' ' + vfOperador + ' ');
  dmCadastros.qyContas.SQL.Add(QuotedStr(vfParametro));
  if vfOrdem <> '0' then
    dmCadastros.qyContas.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmCadastros.qyContas.SQL.Add(' limit ' + vfLimite);
  dmCadastros.qyContas.Open;
end;

{--- Filtra lookups -----------------------------------------------------------}

procedure FiltrarContasLkAtivas;
begin
  dmLookups.lkProcContas.Close;
  dmLookups.lkProcContas.SQL.Clear;
  dmLookups.lkProcContas.SQL.Add('select con_codigo, con_descricao, con_obs, con_ativa, ban_codigo ');
  dmLookups.lkProcContas.SQL.Add(' from contas where con_ativa = ');
  dmLookups.lkProcContas.SQL.Add(QuotedStr('S'));
  dmLookups.lkProcContas.SQL.Add(' order by con_descricao');
  dmLookups.lkProcContas.Open;
end;

{--- Pega descrição da conta --------------------------------------------------}

function GetDescricao(vfCodConta: String): String;
Begin
  dmCadastros.QGeraCodigo.Close;
  dmCadastros.QGeraCodigo.Sql.Clear;
  dmCadastros.QGeraCodigo.Sql.Add('SELECT CON_DESCRICAO FROM CONTAS WHERE CON_CODIGO = ');
  dmCadastros.QGeraCodigo.Sql.Add(QuotedStr(vfCodConta));
  dmCadastros.QGeraCodigo.Open;
  if dmCadastros.QGeraCodigo.Fields[0].text <> '' then
    Result := dmCadastros.QGeraCodigo.Fields[0].text
  else
    Result := 'Conta não encontrada!';
end;

end.
