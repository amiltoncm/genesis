unit uDaoConvenios;

interface

uses
  Windows, Messages, SysUtils, Classes, Dialogs, StdCtrls, Forms,
  Graphics, Controls, DB;

procedure ListarConvenios(vfOrdem: String; vfLimite: String);
procedure FiltrarConvenios(vfCampoFil: String; vfOperador: String; vfParametro: 
		     String; vfOrdem: String; vfLimite: String);

const
  ctCampos = 'c.cov_codigo, c.cov_descricao, c.cov_cnpj, c.cov_ie, c.tpl_id, ' +
              'l.tpl_tipo, c.cov_logradouro, c.cov_numero, c.cov_bairro, ' +
              'c.cid_codigo, u.cid_cidade, u.uf_sigla, c.cov_fone, c.cov_fax, ' +
              'c.cov_celular, c.cov_email, c.cov_cep, c.cov_regans, c.cov_veriftiss, ' +
              'c.cov_codoperadora';
  ctTabelas = 'convenios c, tplogradouro l, cidades u';

implementation

uses dataCadastros;

{--- Lista todos os registros da tabela --------------------------------------}

procedure ListarConvenios(vfOrdem: String; vfLimite: String);
begin
  dmCadastros.qyConvenios.Close;
  dmCadastros.qyConvenios.SQL.Clear;
  dmCadastros.qyConvenios.SQL.Add('select '+ ctCampos + ' from ' + ctTabelas +
                                  ' where c.tpl_id = l.tpl_id ' +
                                  'and c.cid_codigo = u.cid_codigo ');
  if vfOrdem <> '0' then
    dmCadastros.qyConvenios.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmCadastros.qyConvenios.SQL.Add(' limit ' + vfLimite);
  dmCadastros.qyConvenios.Open;
end;

{--- Filtra registros da tabela ----------------------------------------------}

procedure FiltrarConvenios(vfCampoFil: String; vfOperador: String; vfParametro:
		     String; vfOrdem: String; vfLimite: String);
begin
  dmCadastros.qyConvenios.Close;
  dmCadastros.qyConvenios.SQL.Clear;
  dmCadastros.qyConvenios.SQL.Add('select ' + ctCampos + ' from ' + ctTabelas +
                                  ' where c.tpl_id = l.tpl_id ' +
                                  'and c.cid_codigo = u.cid_codigo and ');
  dmCadastros.qyConvenios.SQL.Add(vfCampoFil + ' ' + vfOperador + ' ');
  dmCadastros.qyConvenios.SQL.Add(QuotedStr(vfParametro));
  if vfOrdem <> '0' then
    dmCadastros.qyConvenios.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmCadastros.qyConvenios.SQL.Add(' limit ' + vfLimite);
  dmCadastros.qyConvenios.Open;
end;

end.