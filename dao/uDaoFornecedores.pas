unit uDaoFornecedores;

interface

uses
  Windows, Messages, SysUtils, Classes, Dialogs, StdCtrls, Forms,
  Graphics, Controls, DB;

procedure InsFornecedores;
procedure EdtFornecedores;
procedure PostFornecedores;
procedure ListarFornecedores(vfOrdem: String; vfLimite: String);
procedure FiltrarFornecedores(vfCampoFil: String; vfOperador: String; vfParametro:
		     String; vfOrdem: String; vfLimite: String);

const
ctCampos = 'f.for_codigo, f.for_razao, f.for_fantasia, f.for_cnpj, f.for_ie, f.tpl_id, ' +
           't.tpl_tipo, f.for_logradouro, f.for_numero, f.for_complemento, f.for_bairro, ' +
           'f.cid_codigo, c.cid_cidade, c.uf_sigla, f.for_cep, f.for_fone, f.for_fax, ' +
           'f.for_celular, f.for_email, f.for_homepage, f.for_dtcadastro, f.for_tipo';
ctTabelas = 'fornecedores f, tplogradouro t, cidades c';

implementation

uses dataCadastros, uFuncoesDB;

{--- Coloca a tabela em insert  -----------------------------------------------}

procedure InsFornecedores;
begin
  dmCadastros.qyFornecedores.Insert;
end;

{--- Coloca a tabela em edit inserindo algum valor ----------------------------}

procedure EdtFornecedores;
begin
  dmCadastros.qyFornecedores.Edit;
end;

{--- Dá um post na tabela -----------------------------------------------------}

procedure PostFornecedores;
begin
  try
    if dmCadastros.qyFornecedores.State in [dsInsert] then
      dmCadastros.qyFornecedoresfor_codigo.Value := GetCodigo('for_codigo', 'fornecedores');
    dmCadastros.qyFornecedores.Post;
  except
    on E: Exception do
    begin
      MessageDlg('Erro ao gravar Alteração / Inserção!' + #13 +
          E.Message,mtError,[mbOk],0);
      dmCadastros.qyFornecedores.Refresh;
    end;
  end;
end;

{--- Lista todos os registros da tabela ---------------------------------------}

procedure ListarFornecedores(vfOrdem: String; vfLimite: String);
begin
  dmCadastros.qyFornecedores.Close;
  dmCadastros.qyFornecedores.SQL.Clear;
  dmCadastros.qyFornecedores.SQL.Add('select '+ ctCampos + ' from ' + ctTabelas);
  dmCadastros.qyFornecedores.SQL.Add(' where f.tpl_id = t.tpl_id and f.cid_codigo = c.cid_codigo ');
  if vfOrdem <> '0' then
    dmCadastros.qyFornecedores.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmCadastros.qyFornecedores.SQL.Add(' limit ' + vfLimite);
  dmCadastros.qyFornecedores.Open;
end;

{--- Filtra registros da tabela -----------------------------------------------}

procedure FiltrarFornecedores(vfCampoFil: String; vfOperador: String; vfParametro:
		     String; vfOrdem: String; vfLimite: String);
begin
  dmCadastros.qyFornecedores.Close;
  dmCadastros.qyFornecedores.SQL.Clear;
  dmCadastros.qyFornecedores.SQL.Add('select ' + ctCampos + ' from ' + ctTabelas);
  dmCadastros.qyFornecedores.SQL.Add(' where f.tpl_id = t.tpl_id and f.cid_codigo = c.cid_codigo and ');
  dmCadastros.qyFornecedores.SQL.Add(vfCampoFil + ' ' + vfOperador + ' ');
  dmCadastros.qyFornecedores.SQL.Add(QuotedStr(vfParametro));
  if vfOrdem <> '0' then
    dmCadastros.qyFornecedores.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmCadastros.qyFornecedores.SQL.Add(' limit ' + vfLimite);
  dmCadastros.qyFornecedores.Open;
end;

end.
