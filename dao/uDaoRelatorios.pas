unit uDaoRelatorios;

interface

uses
  Windows, Messages, SysUtils, Classes, Dialogs, StdCtrls, Forms,
  Graphics, Controls, DB;

procedure RelExamesConvenios(vfDtInicio: String; vfConcluido: boolean; vfCodConvenio: String);
procedure RelExamesMedicos(vfDtInicio: String; vfConcluido: boolean; vfCodMedico: String);
procedure RelExamesOrigem(vfDtInicio: String; vfConcluido: boolean; vfCodOrigem: String);
procedure RelExamesPacientes(vfDtInicio: String; vfConcluido: boolean; vfCodPac: String);
procedure RelListagem(vfTpExame: String; vfCitolgias: boolean; vfDtInicial: String; vfDtFinal: String);
procedure RelExProced(vfDtInicial: String; vfDtFinal: String);
procedure RelCaixa(vfDtInic: String; vfDtFinal: String; vfCodConta: String;
                   vfOrdem: String);
procedure RelCaixaAgr(vfDtInic: String; vfDtFinal: String; vfCodConta: String);
procedure RelLoteTISS(vfConvenio: String);
procedure RelExamesConvenio(vfCodConvenio: String; vfDataInic: String; vfDataFinal: String);
procedure RelProcedXConv(vfCodRec: String);

implementation

uses dataConsultas, uDaoCaixa;

{--- Relatório Exames x Convênios ---------------------------------------------}

procedure RelExamesConvenios(vfDtInicio: String; vfConcluido: boolean; vfCodConvenio: String);
begin
  dmConsultas.qyRelExames.Close;
  dmConsultas.qyRelExames.SQL.Clear;
  dmConsultas.qyRelExames.SQL.Add('select e.exa_id, e.exa_data, t.etp_tipo, c.cov_descricao, ');
  dmConsultas.qyRelExames.SQL.Add('m.med_nome, p.pac_nome, v.eem_concluido from exames e, ');
  dmConsultas.qyRelExames.SQL.Add('convenios c, medicos m, pacientes p, examestp t, examesenvmail v ');
  dmConsultas.qyRelExames.SQL.Add('where e.exa_id = v.exa_id and e.cov_codigo = c.cov_codigo ');
  dmConsultas.qyRelExames.SQL.Add('and e.med_codigo = m.med_codigo ');
  dmConsultas.qyRelExames.SQL.Add('and e.pac_codigo = p.pac_codigo and e.etp_id = t.etp_id ');
  dmConsultas.qyRelExames.SQL.Add('and e.exa_data >= ');
  dmConsultas.qyRelExames.SQL.Add(QuotedStr(vfDtInicio));
  if vfConcluido = true then
    dmConsultas.qyRelExames.SQL.Add(' and v.eem_concluido = true ');
  if vfCodConvenio <> '-1' then
  begin
    dmConsultas.qyRelExames.SQL.Add(' and  e.cov_codigo = ');
    dmConsultas.qyRelExames.SQL.Add(vfCodConvenio);
  end;
  dmConsultas.qyRelExames.SQL.Add(' order by c.cov_descricao, e.exa_data');
  dmConsultas.qyRelExames.Open;
end;

{--- Relatório Exames x Médicos -----------------------------------------------}

procedure RelExamesMedicos(vfDtInicio: String; vfConcluido: boolean; vfCodMedico: String);
begin
  dmConsultas.qyRelExames.Close;
  dmConsultas.qyRelExames.SQL.Clear;
  dmConsultas.qyRelExames.SQL.Add('select e.exa_id, e.exa_data, t.etp_tipo, c.cov_descricao, ');
  dmConsultas.qyRelExames.SQL.Add('m.med_nome, p.pac_nome, v.eem_concluido from exames e, ');
  dmConsultas.qyRelExames.SQL.Add('convenios c, medicos m, pacientes p, examestp t, examesenvmail v ');
  dmConsultas.qyRelExames.SQL.Add('where e.exa_id = v.exa_id and e.cov_codigo = c.cov_codigo ');
  dmConsultas.qyRelExames.SQL.Add('and e.med_codigo = m.med_codigo ');
  dmConsultas.qyRelExames.SQL.Add('and e.pac_codigo = p.pac_codigo and e.etp_id = t.etp_id ');
  dmConsultas.qyRelExames.SQL.Add('and e.exa_data >= ');
  dmConsultas.qyRelExames.SQL.Add(QuotedStr(vfDtInicio));
  if vfConcluido = true then
    dmConsultas.qyRelExames.SQL.Add(' and v.eem_concluido = true ');
  if vfCodMedico <> '-1' then
  begin
    dmConsultas.qyRelExames.SQL.Add(' and  e.med_codigo = ');
    dmConsultas.qyRelExames.SQL.Add(QuotedStr(vfCodMedico));
  end;
  dmConsultas.qyRelExames.SQL.Add(' order by m.med_nome, e.exa_data');
  dmConsultas.qyRelExames.Open;
end;

{--- Relatório Exames x Origem ------------------------------------------------}

procedure RelExamesOrigem(vfDtInicio: String; vfConcluido: boolean; vfCodOrigem: String);
begin
  dmConsultas.qyRelExamesOrig.Close;
  dmConsultas.qyRelExamesOrig.SQL.Clear;
  dmConsultas.qyRelExamesOrig.SQL.Add('select e.exa_id, e.exa_data, t.etp_tipo, c.cov_descricao, ');
  dmConsultas.qyRelExamesOrig.SQL.Add('m.med_nome, p.pac_nome, l.exl_descricao, v.eem_concluido from exames e, ');
  dmConsultas.qyRelExamesOrig.SQL.Add('convenios c, medicos m, pacientes p, examestp t, examesenvmail v, ');
  dmConsultas.qyRelExamesOrig.SQL.Add('exameslocais l ');
  dmConsultas.qyRelExamesOrig.SQL.Add('where e.exa_id = v.exa_id and e.cov_codigo = c.cov_codigo ');
  dmConsultas.qyRelExamesOrig.SQL.Add('and e.med_codigo = m.med_codigo ');
  dmConsultas.qyRelExamesOrig.SQL.Add('and e.exa_origem = l.exl_id ');
  dmConsultas.qyRelExamesOrig.SQL.Add('and e.pac_codigo = p.pac_codigo and e.etp_id = t.etp_id ');
  dmConsultas.qyRelExamesOrig.SQL.Add('and e.exa_data >= ');
  dmConsultas.qyRelExamesOrig.SQL.Add(QuotedStr(vfDtInicio));
  if vfConcluido = true then
    dmConsultas.qyRelExamesOrig.SQL.Add(' and v.eem_concluido = true ');
  if vfCodOrigem <> '-1' then
  begin
    dmConsultas.qyRelExamesOrig.SQL.Add(' and  l.exl_id = ');
    dmConsultas.qyRelExamesOrig.SQL.Add(QuotedStr(vfCodOrigem));
  end;
  dmConsultas.qyRelExamesOrig.SQL.Add(' order by l.exl_descricao, e.exa_data');
  dmConsultas.qyRelExamesOrig.Open;
end;

{--- Relatório Exames x Pacientes ---------------------------------------------}

procedure RelExamesPacientes(vfDtInicio: String; vfConcluido: boolean; vfCodPac: String);
begin
  dmConsultas.qyRelExamesOrig.Close;
  dmConsultas.qyRelExamesOrig.SQL.Clear;
  dmConsultas.qyRelExamesOrig.SQL.Add('select e.exa_id, e.exa_data, t.etp_tipo, c.cov_descricao, ');
  dmConsultas.qyRelExamesOrig.SQL.Add('m.med_nome, p.pac_nome, l.exl_descricao, v.eem_concluido from exames e, ');
  dmConsultas.qyRelExamesOrig.SQL.Add('convenios c, medicos m, pacientes p, examestp t, examesenvmail v, ');
  dmConsultas.qyRelExamesOrig.SQL.Add('exameslocais l ');
  dmConsultas.qyRelExamesOrig.SQL.Add('where e.exa_id = v.exa_id and e.cov_codigo = c.cov_codigo ');
  dmConsultas.qyRelExamesOrig.SQL.Add('and e.med_codigo = m.med_codigo ');
  dmConsultas.qyRelExamesOrig.SQL.Add('and e.exa_origem = l.exl_id ');
  dmConsultas.qyRelExamesOrig.SQL.Add('and e.pac_codigo = p.pac_codigo and e.etp_id = t.etp_id ');
  dmConsultas.qyRelExamesOrig.SQL.Add('and e.exa_data >= ');
  dmConsultas.qyRelExamesOrig.SQL.Add(QuotedStr(vfDtInicio));
  if vfConcluido = true then
    dmConsultas.qyRelExamesOrig.SQL.Add(' and v.eem_concluido = true ');
  if vfCodPac <> '-1' then
  begin
    dmConsultas.qyRelExamesOrig.SQL.Add(' and  l.exl_id = ');
    dmConsultas.qyRelExamesOrig.SQL.Add(QuotedStr(vfCodPac));
  end;
  dmConsultas.qyRelExamesOrig.SQL.Add(' order by p.pac_nome, e.exa_data');
  dmConsultas.qyRelExamesOrig.Open;
end;

{--- Relatório de Listagem de Exames ------------------------------------------}

procedure RelListagem(vfTpExame: String; vfCitolgias: boolean; vfDtInicial: String; vfDtFinal: String);
begin
  dmConsultas.qyRelListagem.Close;
  dmConsultas.qyRelListagem.SQL.Clear;
  dmConsultas.qyRelListagem.SQL.Add('select E.exa_id, P.pac_nome, C.cov_descricao, E.exa_data ');
  dmConsultas.qyRelListagem.SQL.Add('from exames E, pacientes P, convenios C ');
  dmConsultas.qyRelListagem.SQL.Add('where E.pac_codigo = P.pac_codigo ');
  dmConsultas.qyRelListagem.SQL.Add('and E.cov_codigo = C.cov_codigo ');
  //Seleciona os tipos de exames
  if vfTpExame <> '-1' then
    dmConsultas.qyRelListagem.SQL.Add('and E.etp_id = ' + vfTpExame);
  if vfCitolgias = true then
    dmConsultas.qyRelListagem.SQL.Add('and ((E.etp_id = 0) or (E.etp_id = 1) or (E.etp_id = 5))');
  dmConsultas.qyRelListagem.SQL.Add(' and E.exa_data between ');
  dmConsultas.qyRelListagem.SQL.Add(QuotedStr(vfDtInicial));
  dmConsultas.qyRelListagem.SQL.Add(' and ');
  dmConsultas.qyRelListagem.SQL.Add(QuotedStr(vfDtFinal));
  dmConsultas.qyRelListagem.SQL.Add(' order by E.exa_id');
  dmConsultas.qyRelListagem.Open;
end;

{--- Relatório de Listagem de Exames ------------------------------------------}

procedure RelExProced(vfDtInicial: String; vfDtFinal: String);
begin
  dmConsultas.qyRelExProced.Close;
  dmConsultas.qyRelExProced.SQL.Clear;
  dmConsultas.qyRelExProced.SQL.Add('select e.exa_data, x.exa_id, x.exp_quant, x.prc_tuss, ');
  dmConsultas.qyRelExProced.SQL.Add('p.prc_descricao, x.exp_unitario, x.exp_total ');
  dmConsultas.qyRelExProced.SQL.Add('from exames e, examesproced x, procedimentos p ');
  dmConsultas.qyRelExProced.SQL.Add('where e.exa_id = x.exa_id ');
  dmConsultas.qyRelExProced.SQL.Add('and x.prc_tuss = p.prc_tuss ');
  dmConsultas.qyRelExProced.SQL.Add('and e.exa_data >= ');
  dmConsultas.qyRelExProced.SQL.Add(QuotedStr(vfDtInicial));
  dmConsultas.qyRelExProced.SQL.Add('and e.exa_data <= ');
  dmConsultas.qyRelExProced.SQL.Add(QuotedStr(vfDtFinal));
  dmConsultas.qyRelExProced.SQL.Add(' order by e.exa_data, e.exa_id');
  dmConsultas.qyRelExProced.Open;
end;

{--- Relatório de Caixa / Caixa Mov. ------------------------------------------}

procedure RelCaixa(vfDtInic: String; vfDtFinal: String; vfCodConta: String;
                   vfOrdem: String);
begin
  dmConsultas.qyConsSaldoCaixa.Close;
  dmConsultas.qyConsSaldoCaixa.Sql.Clear;
  dmConsultas.qyConsSaldoCaixa.Sql.Add('select sum(cai_valor) from caixa where cai_data < ');
  dmConsultas.qyConsSaldoCaixa.Sql.Add(QuotedStr(vfDtInic));
  if vfCodConta <> '-1' then
  Begin
    dmConsultas.qyConsSaldoCaixa.Sql.Add(' and con_codigo = ');
    dmConsultas.qyConsSaldoCaixa.Sql.Add(QuotedStr(vfCodConta));
  end;
  dmConsultas.qyConsSaldoCaixa.Open;
  //Filtra tabela caixa
  FiltrarRelCaixa(vfDtInic, vfDtFinal, vfCodConta, vfOrdem);
end;

{--- Relatório de Caixa Agrupado ----------------------------------------------}

procedure RelCaixaAgr(vfDtInic: String; vfDtFinal: String; vfCodConta: String);
begin
  dmConsultas.qyCaixaAgrup.Close;
  dmConsultas.qyCaixaAgrup.sql.clear;
  dmConsultas.qyCaixaAgrup.sql.add('select c.mov_codigo, m.mov_descricao, sum(c.cai_valor) ');
  dmConsultas.qyCaixaAgrup.sql.add('from caixa c, movimentos m where c.mov_codigo = m.mov_codigo ');
  dmConsultas.qyCaixaAgrup.sql.add('and c.cai_data  >= ');
  dmConsultas.qyCaixaAgrup.Sql.Add(QuotedStr(vfDtInic));
  dmConsultas.qyCaixaAgrup.sql.add(' and c.cai_data <= ');
  dmConsultas.qyCaixaAgrup.Sql.Add(QuotedStr(vfDtFinal));
  if vfCodConta <> '-1' then
  Begin
    dmConsultas.qyCaixaAgrup.Sql.Add(' and c.con_codigo = ');
    dmConsultas.qyCaixaAgrup.Sql.Add(QuotedStr(vfCodConta));
  end;
  dmConsultas.qyCaixaAgrup.Sql.Add(' group by c.mov_codigo, m.mov_descricao ');
  dmConsultas.qyCaixaAgrup.Sql.Add('order by c.mov_codigo, m.mov_descricao');
  dmConsultas.qyCaixaAgrup.Open;
end;

{--- Relatório de Caixa Agrupado ----------------------------------------------}

procedure RelLoteTISS(vfConvenio: String);
begin
  dmConsultas.qyRelLotesTISS.Close;
  dmConsultas.qyRelLotesTISS.SQL.Clear;
  dmConsultas.qyRelLotesTISS.SQL.Add('select t.rti_id, t.rec_codigo, t.rti_gerado, t.rti_lote, t.rti_nguias, ');
  dmConsultas.qyRelLotesTISS.SQL.Add('r.rec_vencimento , r.rec_nome, r.rec_valor, r.rec_status ');
  dmConsultas.qyRelLotesTISS.SQL.Add('from rectiss t, receber r ');
  dmConsultas.qyRelLotesTISS.SQL.Add('where t.rec_codigo = r.rec_codigo ');
  if vfConvenio <> '-1' then
  begin
    dmConsultas.qyRelLotesTISS.SQL.Add('and r.rec_codcliente = ');
    dmConsultas.qyRelLotesTISS.SQL.Add(QuotedStr(vfConvenio));
  end;
  dmConsultas.qyRelLotesTISS.SQL.Add('order by t.rti_lote desc');
  dmConsultas.qyRelLotesTISS.Open;
end;

{--- Relatório de Exames X Convênio -------------------------------------------}

procedure RelExamesConvenio(vfCodConvenio: String; vfDataInic: String; vfDataFinal: String);
begin
  dmConsultas.qyConsExamesConv.Close;
  dmConsultas.qyConsExamesConv.SQL.Clear;
  dmConsultas.qyConsExamesConv.SQL.Add('select X.exa_id, C.pac_nome, X.exp_quant, ');
  dmConsultas.qyConsExamesConv.SQL.Add('P.prc_descricao, X.exp_unitario, X.exp_total ');
  dmConsultas.qyConsExamesConv.SQL.Add('from Exames E, examesproced X, procedimentos P, pacientes C ');
  dmConsultas.qyConsExamesConv.SQL.Add('where E.exa_id = X.exa_id ');
  dmConsultas.qyConsExamesConv.SQL.Add('and E.pac_codigo = C.pac_codigo ');
  dmConsultas.qyConsExamesConv.SQL.Add('and X.prc_tuss = P.prc_tuss ');
  dmConsultas.qyConsExamesConv.SQL.Add('and E.cov_codigo = ');
  dmConsultas.qyConsExamesConv.SQL.Add(QuotedStr(vfCodConvenio));
  dmConsultas.qyConsExamesConv.SQL.Add(' and E.exa_data >= ');
  dmConsultas.qyConsExamesConv.SQL.Add(QuotedStr(vfDataInic));
  dmConsultas.qyConsExamesConv.SQL.Add(' and E.exa_data <= ');
  dmConsultas.qyConsExamesConv.SQL.Add(QuotedStr(vfDataFinal));
  dmConsultas.qyConsExamesConv.SQL.Add(' order by exa_id');
  dmConsultas.qyConsExamesConv.Open;
end;

{--- Relatório de Procedimentos X Convênio / Cobrança -------------------------}

procedure RelProcedXConv(vfCodRec: String);
begin
  dmConsultas.qyConsRecProced.Close;
  dmConsultas.qyConsRecProced.SQL.Clear;
  dmConsultas.qyConsRecProced.SQL.Add('select X.exa_id, C.pac_nome, X.exp_quant, ');
  dmConsultas.qyConsRecProced.SQL.Add('P.prc_descricao, X.exp_unitario, X.exp_total ');
  dmConsultas.qyConsRecProced.SQL.Add('from Exames E, receber R, histrec H, ');
  dmConsultas.qyConsRecProced.SQL.Add('examesproced X, procedimentos P, pacientes C ');
  dmConsultas.qyConsRecProced.SQL.Add('where E.exa_id = X.exa_id ');
  dmConsultas.qyConsRecProced.SQL.Add('and E.pac_codigo = C.pac_codigo ');
  dmConsultas.qyConsRecProced.SQL.Add('and R.his_id = H.his_id ');
  dmConsultas.qyConsRecProced.SQL.Add('and H.exa_id = E.exa_id ');
  dmConsultas.qyConsRecProced.SQL.Add('and X.prc_tuss = P.prc_tuss ');
  dmConsultas.qyConsRecProced.SQL.Add('and R.rec_codigo = ');
  dmConsultas.qyConsRecProced.SQL.Add(QuotedStr(vfCodRec));
  dmConsultas.qyConsRecProced.SQL.Add('order by exa_id');
  dmConsultas.qyConsRecProced.Open;
end;

end.
