unit uDaoFuncionarios;

interface

uses
  Windows, Messages, SysUtils, Classes, Dialogs, StdCtrls, Forms,
  Graphics, Controls, DB;

procedure InsFuncionarios;
procedure EdtFuncionarios;
procedure PostFuncionarios;
procedure ListarFuncionarios(vfOrdem: String; vfLimite: String);
procedure FiltrarFuncionarios(vfCampoFil: String; vfOperador: String; vfParametro:
		     String; vfOrdem: String; vfLimite: String);

const
ctCampos = 'f.fun_codigo, f.fun_nome, f.fnc_id, n.fnc_descricao, f.fun_cpf, f.fun_rg, ' +
           'f.fun_carttrab, f.fun_dataadmis, f.fun_salario, f.fun_endereco, f.fun_bairro, ' +
           'f.cid_codigo, c.cid_cidade, c.uf_sigla, f.fun_cep, f.fun_telefone, f.fun_celular, ' +
           'f.fun_email, f.fun_datanasc, f.fun_ativo';
ctTabelas = 'funcionarios f, funcoes n, cidades c';

implementation

uses dataCadastros, uFuncoesDB;

{--- Coloca a tabela em insert  -----------------------------------------------}

procedure InsFuncionarios;
begin
  dmCadastros.qyFuncionarios.Insert;
end;

{--- Coloca a tabela em edit inserindo algum valor ----------------------------}

procedure EdtFuncionarios;
begin
  dmCadastros.qyFuncionarios.Edit;
end;

{--- Dá um post na tabela -----------------------------------------------------}

procedure PostFuncionarios;
begin
  try
    if dmCadastros.qyFuncionarios.State in [dsInsert] then
      dmCadastros.qyFuncionariosfun_codigo.Value := GetCodigo('fun_codigo', 'funcionarios');
    dmCadastros.qyFuncionarios.Post;
  except
    on E: Exception do
    begin
      MessageDlg('Erro ao gravar Alteração / Inserção!' + #13 +
          E.Message,mtError,[mbOk],0);
      dmCadastros.qyFuncionarios.Refresh;
    end;
  end;
end;

{--- Lista todos os registros da tabela ---------------------------------------}

procedure ListarFuncionarios(vfOrdem: String; vfLimite: String);
begin
  dmCadastros.qyFuncionarios.Close;
  dmCadastros.qyFuncionarios.SQL.Clear;
  dmCadastros.qyFuncionarios.SQL.Add('select '+ ctCampos + ' from ' + ctTabelas);
  dmCadastros.qyFuncionarios.SQL.Add(' where f.fnc_id = n.fnc_id and f.cid_codigo = c.cid_codigo ');
  if vfOrdem <> '0' then
    dmCadastros.qyFuncionarios.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmCadastros.qyFuncionarios.SQL.Add(' limit ' + vfLimite);
  dmCadastros.qyFuncionarios.Open;
end;

{--- Filtra registros da tabela -----------------------------------------------}

procedure FiltrarFuncionarios(vfCampoFil: String; vfOperador: String; vfParametro: 
		     String; vfOrdem: String; vfLimite: String);
begin
  dmCadastros.qyFuncionarios.Close;
  dmCadastros.qyFuncionarios.SQL.Clear;
  dmCadastros.qyFuncionarios.SQL.Add('select ' + ctCampos + ' from ' + ctTabelas);
  dmCadastros.qyFuncionarios.SQL.Add(' where f.fnc_id = n.fnc_id and f.cid_codigo = c.cid_codigo and ');
  dmCadastros.qyFuncionarios.SQL.Add(vfCampoFil + ' ' + vfOperador + ' ');
  dmCadastros.qyFuncionarios.SQL.Add(QuotedStr(vfParametro));
  if vfOrdem <> '0' then
    dmCadastros.qyFuncionarios.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmCadastros.qyFuncionarios.SQL.Add(' limit ' + vfLimite);
  dmCadastros.qyFuncionarios.Open;
end;

end.
