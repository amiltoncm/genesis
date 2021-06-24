unit uDaoEmpresa;

interface

uses
  Windows, Messages, SysUtils, Classes, Dialogs, StdCtrls, Forms,
  Graphics, Controls, DB;

procedure ListarEmpresa(vfOrdem: String; vfLimite: String);
procedure FiltrarEmpresa(vfCampoFil: String; vfOperador: String; vfParametro: 
		     String; vfOrdem: String; vfLimite: String);
function GetNomeCidade: String;

const
  ctCampos = 'emp_id, emp_razao, emp_cnpj, emp_ie, emp_inscmun, emp_logradouro, ' +
             'emp_bairro, emp_cidade, emp_uf, emp_cep, emp_telefone, emp_email, ' +
             'emp_homepage, emp_cnes ';
  ctTabelas = 'empresa';

implementation

uses dataConfig;

{--- Lista todos os registros da tabela ---------------------------------------}

procedure ListarEmpresa(vfOrdem: String; vfLimite: String);
begin
  dmConfig.qyEmpresa.Close;
  dmConfig.qyEmpresa.SQL.Clear;
  dmConfig.qyEmpresa.SQL.Add('select '+ ctCampos + ' from ' + ctTabelas);
  if vfOrdem <> '0' then
    dmConfig.qyEmpresa.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmConfig.qyEmpresa.SQL.Add(' limit ' + vfLimite);
  dmConfig.qyEmpresa.Open;
end;

{--- Filtra registros da tabela -----------------------------------------------}

procedure FiltrarEmpresa(vfCampoFil: String; vfOperador: String; vfParametro:
		     String; vfOrdem: String; vfLimite: String);
begin
  dmConfig.qyEmpresa.Close;
  dmConfig.qyEmpresa.SQL.Clear;
  dmConfig.qyEmpresa.SQL.Add('select ' + ctCampos + ' from ' + ctTabelas + ' where ');
  dmConfig.qyEmpresa.SQL.Add(vfCampoFil + ' ' + vfOperador + ' ');
  dmConfig.qyEmpresa.SQL.Add(QuotedStr(vfParametro));
  if vfOrdem <> '0' then
    dmConfig.qyEmpresa.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmConfig.qyEmpresa.SQL.Add(' limit ' + vfLimite);
  dmConfig.qyEmpresa.Open;
end;

{--- BBusca nome da cidade ----------------------------------------------------}

function GetNomeCidade: String;
begin
  dmConfig.QTemp.Close;
  dmConfig.QTemp.SQL.Clear;
  dmConfig.QTemp.SQL.Add('select emp_cidade from empresa');
  dmConfig.QTemp.Open;
  GetNomeCidade := dmConfig.QTemp.Fields[0].Text;
end;

end.