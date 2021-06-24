unit uDaoConsEnvMail;

interface

uses
  Windows, Messages, SysUtils, Classes, Dialogs, StdCtrls, Forms,
  Graphics, Controls, DB, ClipBrd;

procedure ListarConsEnvMail(vfOrdem: String; vfLimite: String);
procedure FiltrarConsEnvMail(vfDtInic, vfDtin, vfGerCob, vfCodConvenio, vfFiltro,
                             vfCodTpExame: String);

const
  ctCampos = 'e.exa_id, e.etp_id, e.cov_codigo, c.cov_descricao, e.exa_data, ' +
              'e.med_codigo, m.med_nome, e.pac_codigo, p.pac_nome, e.exa_etapa, ' +
              'v.eem_enviado, v.eem_enviar, v.eem_concluido, b.eco_gerarcob';
  ctTabelas = 'exames e, examesenvmail v, convenios c, medicos m, pacientes p, examescob b';

implementation

uses dataConsultas;

{--- Lista todos os registros da tabela ---------------------------------------}

procedure ListarConsEnvMail(vfOrdem: String; vfLimite: String);
begin
  dmConsultas.qyConsEnvMail.Close;
  dmConsultas.qyConsEnvMail.SQL.Clear;
  dmConsultas.qyConsEnvMail.SQL.Add('select '+ ctCampos + ' from ' + ctTabelas +
                                   ' where ');
  if vfOrdem <> '0' then
    dmConsultas.qyConsEnvMail.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmConsultas.qyConsEnvMail.SQL.Add(' limit ' + vfLimite);
  dmConsultas.qyConsEnvMail.Open;
end;

{--- Filtra registros da tabela -----------------------------------------------}

procedure FiltrarConsEnvMail(vfDtInic, vfDtin, vfGerCob, vfCodConvenio, vfFiltro, vfCodTpExame: String);
begin
  dmConsultas.qyConsEnvMail.Close;
  dmConsultas.qyConsEnvMail.SQL.Clear;
  dmConsultas.qyConsEnvMail.SQL.Add('select e.exa_id, e.etp_id, e.cov_codigo, c.cov_descricao, ');
  dmConsultas.qyConsEnvMail.SQL.Add('e.exa_data, e.med_codigo, m.med_nome, e.pac_codigo, ');
  dmConsultas.qyConsEnvMail.SQL.Add('p.pac_nome, e.exa_etapa, v.eem_enviado, v.eem_enviar, b.eco_gerarcob ');
  dmConsultas.qyConsEnvMail.SQL.Add('from exames e, examesenvmail v, convenios c, medicos m, pacientes p, examescob b ');
  dmConsultas.qyConsEnvMail.SQL.Add('where e.exa_id = v.exa_id and e.cov_codigo = c.cov_codigo ');
  dmConsultas.qyConsEnvMail.SQL.Add('and e.med_codigo = m.med_codigo and e.pac_codigo = p.pac_codigo ');
  dmConsultas.qyConsEnvMail.SQL.Add('and e.exa_id = b.exa_id ');
  dmConsultas.qyConsEnvMail.SQL.Add(' and e.exa_data >= ');
  dmConsultas.qyConsEnvMail.SQL.Add(QuotedStr(vfDtInic));
  dmConsultas.qyConsEnvMail.SQL.Add(' and e.exa_data <= ');
  dmConsultas.qyConsEnvMail.SQL.Add(QuotedStr(vfDtin));
  if vfGerCob = 'S' then
    dmConsultas.qyConsEnvMail.SQL.Add(' and b.eco_status = true ');
  if vfCodConvenio <> '' then
  begin
    dmConsultas.qyConsEnvMail.SQL.Add(' and e.cov_codigo = ');
    dmConsultas.qyConsEnvMail.SQL.Add(QuotedStr(vfCodConvenio));
  end;
  if vfFiltro = '0' then
    dmConsultas.qyConsEnvMail.SQL.Add(' and v.eem_enviado = false ');
  if vfFiltro = '1' then
    dmConsultas.qyConsEnvMail.SQL.Add(' and v.eem_enviado = true ');
  if vfCodTpExame <> '' then
  begin
    dmConsultas.qyConsEnvMail.SQL.Add(' and e.etp_id = ');
    dmConsultas.qyConsEnvMail.SQL.Add(QuotedStr(vfCodTpExame));
  end;
  dmConsultas.qyConsEnvMail.SQL.Add(' order by exa_data');
  dmConsultas.qyConsEnvMail.Open;
end;

end.