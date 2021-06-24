unit uDaoMedicos;

interface

uses
  Windows, Messages, SysUtils, Classes, Dialogs, StdCtrls, Forms,
  Graphics, Controls, DB;

procedure ListarMedicos(vfOrdem: String; vfLimite: String);
procedure FiltrarMedicos(vfCampoFil: String; vfOperador: String; vfParametro:
		     String; vfOrdem: String; vfLimite: String);
procedure FiltrarConsMedCad(vfParametro: String; vfOperador: String; vfLimite: String);
procedure FiltrarConsMedReg(vfNumReg: String);
procedure FiltrarMedCRM(vfCRM: String);
function GetMedicoExame(vfExaID: String): String;

const
  ctCampos = 'm.med_codigo, m.med_nome, m.med_fone, m.cos_id, s.cos_tipo,  m.med_numconselho, ' +
              'm.med_titulo, m.med_cpf, m.med_rg, m.tpl_id, t.tpl_tipo, m.med_logradouro, ' +
              'm.med_numero, m.med_bairro, m.cid_codigo, c.cid_cidade, c.uf_sigla, ' +
              'm.med_celular, m.med_cep, m.med_email, m.cos_uf, m.cbo_codigo, b.cbo_descricao';
  ctTabelas = 'medicos m, conselhos s, tplogradouro t, cidades c, cbo b';

implementation

uses dataCadastros, dataConsultas;

{--- Lista todos os registros da tabela ---------------------------------------}

procedure ListarMedicos(vfOrdem: String; vfLimite: String);
begin
  dmCadastros.qyMedicos.Close;
  dmCadastros.qyMedicos.SQL.Clear;
  dmCadastros.qyMedicos.SQL.Add('select '+ ctCampos + ' from ' + ctTabelas +
                                   ' where m.cos_id = s.cos_codigo ' +
                                   'and m.tpl_id = t.tpl_id ' +
                                   'and m.cid_codigo = c.cid_codigo ' +
                                   'and m.cbo_codigo = b.cbo_codigo');
  if vfOrdem <> '0' then
    dmCadastros.qyMedicos.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmCadastros.qyMedicos.SQL.Add(' limit ' + vfLimite);
  dmCadastros.qyMedicos.Open;
end;

{--- Filtra registros da tabela -----------------------------------------------}

procedure FiltrarMedicos(vfCampoFil: String; vfOperador: String; vfParametro:
		     String; vfOrdem: String; vfLimite: String);
begin
  dmCadastros.qyMedicos.Close;
  dmCadastros.qyMedicos.SQL.Clear;
  dmCadastros.qyMedicos.SQL.Add('select ' + ctCampos + ' from ' + ctTabelas +
                                   ' where m.cos_id = s.cos_codigo ' +
                                   'and m.tpl_id = t.tpl_id ' +
                                   'and m.cid_codigo = c.cid_codigo ' +
                                   'and m.cbo_codigo = b.cbo_codigo and ');
  dmCadastros.qyMedicos.SQL.Add(vfCampoFil + ' ' + vfOperador + ' ');
  dmCadastros.qyMedicos.SQL.Add(QuotedStr(vfParametro));
  if vfOrdem <> '0' then
    dmCadastros.qyMedicos.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmCadastros.qyMedicos.SQL.Add(' limit ' + vfLimite);
  dmCadastros.qyMedicos.Open;
end;

{--- Filtra registros da tabela ConsMedicosCad --------------------------------}

procedure FiltrarConsMedCad(vfParametro: String; vfOperador: String; vfLimite: String);
Var
vRange: integer;
begin
  vRange := Trunc(Length(vfParametro) * 0.25) + 1;  //a escala padrão é de 25% arredondando para cima
  dmConsultas.qyConsMedicosCad.Close;
  dmConsultas.qyConsMedicosCad.SQL.Clear;
  dmConsultas.qyConsMedicosCad.SQL.Add('select med_codigo as codigo, med_nome as medico, ');
  dmConsultas.qyConsMedicosCad.SQL.Add('med_numconselho as crm, med_fone as telefone from medicos ');
  if vfParametro <> '0' then
  begin
    if vfOperador = '=' then
    begin
      dmConsultas.qyConsMedicosCad.SQL.Add('where med_nome = ');
      dmConsultas.qyConsMedicosCad.SQL.Add(QuotedStr(vfParametro));
    end;
    if vfOperador = 'like%' then
    begin
      dmConsultas.qyConsMedicosCad.SQL.Add('where med_nome like ');
      dmConsultas.qyConsMedicosCad.SQL.Add(QuotedStr('%' + vfParametro));
    end;
    if vfOperador = '%like%' then
    begin
      dmConsultas.qyConsMedicosCad.SQL.Add('where med_nome like ');
      dmConsultas.qyConsMedicosCad.SQL.Add(QuotedStr('%' + vfParametro + '%'));
    end;
    if vfOperador = 'soundex' then
    begin
      dmConsultas.qyConsMedicosCad.SQL.Add('where SOUNDEX(med_nome) = ');
      dmConsultas.qyConsMedicosCad.SQL.Add('SOUNDEX('+QuotedStr(vfParametro)+')');
    end;
    if vfOperador = 'levenstein' then
    begin
      dmConsultas.qyConsMedicosCad.SQL.Add('where levenshtein(med_nome, ');
      dmConsultas.qyConsMedicosCad.SQL.Add(QuotedStr(vfParametro));
      dmConsultas.qyConsMedicosCad.SQL.Add(' ) <= ' + IntToStr(vRange));
    end;
  end;
  dmConsultas.qyConsMedicosCad.Open;
end;

{--- Filtra registros da tabela ConsMedicosCad --------------------------------}

procedure FiltrarConsMedReg(vfNumReg: String);
begin
  dmConsultas.qyConsMedicosCad.Close;
  dmConsultas.qyConsMedicosCad.SQL.Clear;
  dmConsultas.qyConsMedicosCad.SQL.Add('select med_codigo as codigo, med_nome as medico, med_numconselho as crm, ');
  dmConsultas.qyConsMedicosCad.SQL.Add('med_fone as telefone from medicos where med_numconselho = ');
  dmConsultas.qyConsMedicosCad.SQL.Add(QuotedStr(vfNumReg));
  dmConsultas.qyConsMedicosCad.Open;
end;

procedure FiltrarMedCRM(vfCRM: String);
begin
  dmConsultas.qyProcMedCRM.Close;
  dmConsultas.qyProcMedCRM.Sql.Clear;
  dmConsultas.qyProcMedCRM.Sql.Add('select med_numconselho, med_codigo, med_nome  from medicos where med_numconselho = ');
  dmConsultas.qyProcMedCRM.Sql.Add(QuotedStr(vfCRM));
  dmConsultas.qyProcMedCRM.Open;
end;

function GetMedicoExame(vfExaID: String): String;
begin
  dmConsultas.QTemp.Close;
  dmConsultas.QTemp.SQL.Clear;
  dmConsultas.QTemp.SQL.Add('select med_nome from medicos where med_codigo = ');
  dmConsultas.QTemp.SQL.Add(vfExaID);
  dmConsultas.QTemp.Open;
  Result := dmConsultas.QTemp.Fields[0].Text;
end;

end.