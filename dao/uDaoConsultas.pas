unit uDaoConsultas;

interface

uses
  Windows, Messages, SysUtils, Classes, Dialogs, StdCtrls, Forms,
  Graphics, Controls, DB;

procedure FiltrarRelAuditoriaH(vfDataInic: String; vfDataFinal: String);
procedure FiltrarConsTopografias(vfDataInic: String; vfDataFinal: String);
procedure StatusExames(vfIDExame: String);
procedure PendenciasTISS;
procedure FiltrarGeraCobranca(vfCodConvenio: String);
procedure LimparGeraCobranca;
procedure FiltrarCobGeraCobranca(vfIDExame: String);
procedure FiltrarGeraCobMult(vfNomePac: String; vfCodCob: integer; vfCodCli: String);
procedure FiltrarExamesSelecDB(vfGeraIDs: String);
procedure FiltrarNaoCobrados(vfCodConvenio: String);
procedure FiltrarConsRecExames(vfHisId: String);
procedure FiltrarConsRecExamesID(vfExaID: String);
procedure FiltrarConsRecObs(vfRecCodigo: String);
procedure FiltrarExportaCob(vfHisID: String);
procedure FiltrarConsLogsCito(vfExaId: String);
procedure FiltrarConsEtapaCito(vfIDExame: String);
procedure GetMaxLogData(vfIDExame: String);
procedure FiltrarConsLogsHisto(vfIDExame: String);
procedure FiltrarConsEtapaHisto(vfIDExame: String);
procedure FiltrarconsLogsImuno(vfIDExame: String);
procedure FiltrarConsEtapaImuno(vfIDExame: String);
procedure LimparConsLogs(vfIDExame: String);

implementation

uses dataConsultas, uConsStatus, UFuncoesTISS, uFuncoesFormatacao;

procedure FiltrarRelAuditoriaH(vfDataInic: String; vfDataFinal: String);
begin
  dmConsultas.qyRelAuditoriaH.Close;
  dmConsultas.qyRelAuditoriaH.SQL.Clear;
  dmConsultas.qyRelAuditoriaH.SQL.Add('select M.mat_descricao, H.ehi_quant, ');
  dmConsultas.qyRelAuditoriaH.SQL.Add('P.eio_descricao, S.eth_descricao, sum(B.ebl_laminas) ');
  dmConsultas.qyRelAuditoriaH.SQL.Add('from examestop E left join examesblocos B on E.etg_id = B.etg_id, ');
  dmConsultas.qyRelAuditoriaH.SQL.Add('topografias T, exameshist H, materiais M, examestipo P, ');
  dmConsultas.qyRelAuditoriaH.SQL.Add('examestipohist S, exames X where E.top_id = T.top_id ');
  dmConsultas.qyRelAuditoriaH.SQL.Add('and E.ehi_id = H.ehi_id and H.mat_id = M.mat_id ');
  dmConsultas.qyRelAuditoriaH.SQL.Add('and H.eio_id = P.eio_id and H.eth_id = S.eth_id ');
  dmConsultas.qyRelAuditoriaH.SQL.Add('and H.exa_id = X.exa_id and H.ehi_id != 0 ');
  dmConsultas.qyRelAuditoriaH.SQL.Add('and X.exa_data between ' + QuotedStr(vfDataInic) + ' and ' + QuotedStr(vfDataFinal));
  dmConsultas.qyRelAuditoriaH.SQL.Add('group by H.exa_id, M.mat_descricao, T.top_descricao, H.ehi_quant, ');
  dmConsultas.qyRelAuditoriaH.SQL.Add('P.eio_descricao, S.eth_descricao order by H.exa_id ');
  dmConsultas.qyRelAuditoriaH.Open;
end;

procedure FiltrarConsTopografias(vfDataInic: String; vfDataFinal: String);
begin
  dmConsultas.qyConsTopografias.Close;
  dmConsultas.qyConsTopografias.SQL.Clear;
  dmConsultas.qyConsTopografias.SQL.Add('select H.exa_id, M.mat_descricao, T.top_descricao, H.ehi_quant, ');
  dmConsultas.qyConsTopografias.SQL.Add('P.eio_descricao, S.eth_descricao, sum(B.ebl_laminas), sum(B.ebl_fragmentos)');
  dmConsultas.qyConsTopografias.SQL.Add('from examestop E left join examesblocos B on E.etg_id = B.etg_id, topografias T,');
  dmConsultas.qyConsTopografias.SQL.Add('exameshist H, materiais M, examestipo P, examestipohist S, exames X');
  dmConsultas.qyConsTopografias.SQL.Add('where E.top_id = T.top_id');
  dmConsultas.qyConsTopografias.SQL.Add('and E.ehi_id = H.ehi_id and H.mat_id = M.mat_id');
  dmConsultas.qyConsTopografias.SQL.Add('and H.eio_id = P.eio_id and H.eth_id = S.eth_id');
  dmConsultas.qyConsTopografias.SQL.Add('and H.exa_id = X.exa_id and H.ehi_id != 0');
  dmConsultas.qyConsTopografias.SQL.Add('and X.exa_data between ' + QuotedStr(vfDataInic) +  ' and ' + QuotedStr(vfDataFinal));
  dmConsultas.qyConsTopografias.SQL.Add('group by H.exa_id, M.mat_descricao, T.top_descricao, H.ehi_quant,');
  dmConsultas.qyConsTopografias.SQL.Add('P.eio_descricao, S.eth_descricao order by H.exa_id');
  dmConsultas.qyConsTopografias.Open;
end;

procedure StatusExames(vfIDExame: String);
Var
vTipo: integer;
vEtapa: String;
begin
  if vfIDExame <> '' then
  begin
    frmConsStatus.meStatus.Clear;
    dmConsultas.QTemp.Close;
    dmConsultas.QTemp.SQL.Clear;
    dmConsultas.QTemp.SQL.Add('select exa_id, etp_id, exa_etapa from exames where exa_id = ');
    dmConsultas.QTemp.SQL.Add(QuotedStr(vfIDExame));
    dmConsultas.QTemp.Open;
    if not(dmConsultas.QTemp.Fields[0].IsNull) then
    begin
      vTipo := dmConsultas.QTemp.Fields[1].Value;
      vEtapa := dmConsultas.QTemp.Fields[2].Text;
      //Filtra caso seja cito
      if vTipo = 1 then
      begin
        frmConsStatus.meStatus.Lines.Add('Tipo de exame: Citologia!');
        frmConsStatus.meStatus.Lines.Add('Verificando a etapa...');
        dmConsultas.QTemp.Close;
        dmConsultas.QTemp.SQL.Clear;
        dmConsultas.QTemp.SQL.Add('select cet_id, cet_descricao from citoetapas where cet_id = ');
        dmConsultas.QTemp.SQL.Add(QuotedStr(vEtapa));
        dmConsultas.QTemp.Open;
        frmConsStatus.meStatus.Lines.Add('Etapa: ' + dmConsultas.QTemp.Fields[1].Text);
      end;
      //Filtra caso seja Histo
      if vTipo = 2 then
      begin
        frmConsStatus.meStatus.Lines.Add('Tipo de exame: Histologia!');
        frmConsStatus.meStatus.Lines.Add('Verificando a etapa...');
        dmConsultas.QTemp.Close;
        dmConsultas.QTemp.SQL.Clear;
        dmConsultas.QTemp.SQL.Add('select het_id, het_descricao from histoetapas where het_id = ');
        dmConsultas.QTemp.SQL.Add(QuotedStr(vEtapa));
        dmConsultas.QTemp.Open;
        frmConsStatus.meStatus.Lines.Add('Etapa: ' + dmConsultas.QTemp.Fields[1].Text);
      end;
      frmConsStatus.meStatus.Lines.Add('Pesquisando geração de cobrança...');
      if TestaExameCob(vfIDExame) <> 0 then
      begin
        frmConsStatus.meStatus.Lines.Add('Cobrança gerada...');
        frmConsStatus.meStatus.Lines.Add('Pesquisando geração do TISS...');
        if TestaExameTiss(vfIDExame) = true then
          frmConsStatus.meStatus.Lines.Add('TISS já foi gerado!')
        else
          frmConsStatus.meStatus.Lines.Add('TISS ainda não foi gerado!');
      end
      else
        frmConsStatus.meStatus.Lines.Add('Cobrança não foi gerada!');
    end
    else
    begin
      frmConsStatus.meStatus.Lines.Add('Exame não encontrado!');
    end;
  end
  else
    MessageDlg('Voce deve digitar o número do exame!', mtWarning, [mbok], 0);
end;

{--- Consulta pendências TISS -------------------------------------------------}

procedure PendenciasTISS;
begin
  dmConsultas.qyConsPendTISS.Close;
  dmConsultas.qyConsPendTISS.SQL.Clear;
  dmConsultas.qyConsPendTISS.SQL.Add('select T.exa_id, E.exa_data, P.pac_nome, M.med_nome, C.cov_descricao, T.tpd_descricao, E.etp_id');
  dmConsultas.qyConsPendTISS.SQL.Add('from tisspend T, exames E, pacientes P, medicos M, convenios C');
  dmConsultas.qyConsPendTISS.SQL.Add('where T.exa_id = E.exa_id');
  dmConsultas.qyConsPendTISS.SQL.Add('and E.pac_codigo = P.pac_codigo');
  dmConsultas.qyConsPendTISS.SQL.Add('and E.med_codigo = M.med_codigo');
  dmConsultas.qyConsPendTISS.SQL.Add('and E.cov_codigo = C.cov_codigo');
  dmConsultas.qyConsPendTISS.SQL.Add('order by E.exa_id, P.pac_nome');
  dmConsultas.qyConsPendTISS.Open;
  dmConsultas.qyConsPendTISS.Refresh;
end;


procedure FiltrarGeraCobranca(vfCodConvenio: String);
begin
  dmConsultas.qyConsGeraCob.Close;
  dmConsultas.qyConsGeraCob.SQL.Clear;
  dmConsultas.qyConsGeraCob.SQL.Add('select c.exa_id, e.cov_codigo, e.pac_codigo, e.med_codigo, e.etp_id, ');
  dmConsultas.qyConsGeraCob.SQL.Add('c.eco_valor, e.exa_etapa, c.eco_status, c.eco_gerarcob, c.eco_vlrpago ');
  dmConsultas.qyConsGeraCob.SQL.Add('from examescob c, exames e where e.exa_id = c.exa_id ');
  dmConsultas.qyConsGeraCob.SQL.Add('and c.his_id = ');
  dmConsultas.qyConsGeraCob.SQL.Add(QuotedStr('0'));
  dmConsultas.qyConsGeraCob.SQL.Add('and c.eco_status = FALSE ');
  dmConsultas.qyConsGeraCob.SQL.Add('and (e.etp_id = 0 and e.exa_etapa >= 6 ');
  dmConsultas.qyConsGeraCob.SQL.Add('or e.etp_id = 1 and e.exa_etapa >= 6 ');
  dmConsultas.qyConsGeraCob.SQL.Add('or e.etp_id = 2 and e.exa_etapa >= 8 ');
  dmConsultas.qyConsGeraCob.SQL.Add('or e.etp_id = 3 and e.exa_etapa >= 8 ');
  dmConsultas.qyConsGeraCob.SQL.Add('or e.etp_id = 4 and e.exa_etapa >= 4 ');
  dmConsultas.qyConsGeraCob.SQL.Add('or e.etp_id = 5 and e.exa_etapa >= 6) ');
  dmConsultas.qyConsGeraCob.SQL.Add('and e.cov_codigo = ');
  dmConsultas.qyConsGeraCob.SQL.Add(QuotedStr(vfCodConvenio));
  dmConsultas.qyConsGeraCob.SQL.Add(' order by e.exa_id');
  dmConsultas.qyConsGeraCob.Open;
end;

procedure LimparGeraCobranca;
begin
  dmConsultas.qyConsGeraCob.Close;
  dmConsultas.qyConsGeraCob.SQL.Clear;
  dmConsultas.qyConsGeraCob.SQL.Add('select c.exa_id, e.cov_codigo, e.pac_codigo, e.med_codigo, e.etp_id, ');
  dmConsultas.qyConsGeraCob.SQL.Add('c.eco_valor, e.exa_etapa, c.eco_status, c.eco_gerarcob, c.eco_vlrpago, e.exa_guia ');
  dmConsultas.qyConsGeraCob.SQL.Add('from examescob c, exames e where e.exa_id = c.exa_id ');
  dmConsultas.qyConsGeraCob.SQL.Add('and c.his_id = ');
  dmConsultas.qyConsGeraCob.SQL.Add(QuotedStr('0'));
  dmConsultas.qyConsGeraCob.SQL.Add('and c.eco_status = FALSE ');
  dmConsultas.qyConsGeraCob.SQL.Add('and (e.etp_id = 0 and e.exa_etapa >= 6 ');
  dmConsultas.qyConsGeraCob.SQL.Add('or e.etp_id = 1 and e.exa_etapa >= 6 ');
  dmConsultas.qyConsGeraCob.SQL.Add('or e.etp_id = 2 and e.exa_etapa >= 8 ');
  dmConsultas.qyConsGeraCob.SQL.Add('or e.etp_id = 3 and e.exa_etapa >= 8 ');
  dmConsultas.qyConsGeraCob.SQL.Add('or e.etp_id = 4 and e.exa_etapa >= 4 ');
  dmConsultas.qyConsGeraCob.SQL.Add('or e.etp_id = 5 and e.exa_etapa >= 6) ');
  dmConsultas.qyConsGeraCob.SQL.Add('order by e.exa_data');
  dmConsultas.qyConsGeraCob.Open;
end;

procedure FiltrarCobGeraCobranca(vfIDExame: String);
begin
  dmConsultas.qyConsGeraCob.Close;
  dmConsultas.qyConsGeraCob.SQL.Clear;
  dmConsultas.qyConsGeraCob.SQL.Add('select c.exa_id, e.cov_codigo, e.pac_codigo, e.exa_guia, ');
  dmConsultas.qyConsGeraCob.SQL.Add('e.med_codigo, e.etp_id, c.eco_valor, e.exa_etapa, c.eco_status, c.eco_gerarcob, c.eco_vlrpago ');
  dmConsultas.qyConsGeraCob.SQL.Add('from examescob c, exames e where e.exa_id = c.exa_id');
  dmConsultas.qyConsGeraCob.SQL.Add('and c.eco_status = FALSE ');
  dmConsultas.qyConsGeraCob.SQL.Add('and e.exa_id = ');
  dmConsultas.qyConsGeraCob.SQL.Add(QuotedStr(vfIDExame));
  dmConsultas.qyConsGeraCob.SQL.Add('and c.his_id = ');
  dmConsultas.qyConsGeraCob.SQL.Add(QuotedStr('0'));
  dmConsultas.qyConsGeraCob.SQL.Add(' order by e.exa_data');
  dmConsultas.qyConsGeraCob.Open;
end;

procedure FiltrarGeraCobMult(vfNomePac: String; vfCodCob: integer; vfCodCli: String);
begin
  dmConsultas.qyConsGeraCob.Close;
  dmConsultas.qyConsGeraCob.SQL.Clear;
  dmConsultas.qyConsGeraCob.SQL.Add('select c.exa_id, e.cov_codigo, e.pac_codigo, ');
  dmConsultas.qyConsGeraCob.SQL.Add('e.med_codigo, e.etp_id, e.exa_guia, c.eco_valor, e.exa_etapa, ');
  dmConsultas.qyConsGeraCob.SQL.Add('c.eco_status, c.eco_gerarcob, c.eco_vlrpago ');
  dmConsultas.qyConsGeraCob.SQL.Add('from examescob c, exames e, pacientes p ');
  dmConsultas.qyConsGeraCob.SQL.Add('where e.exa_id = c.exa_id');
  dmConsultas.qyConsGeraCob.SQL.Add('and c.eco_status = FALSE ');
  dmConsultas.qyConsGeraCob.SQL.Add('and p.pac_codigo = e.pac_codigo ');
  dmConsultas.qyConsGeraCob.SQL.Add('and c.his_id = ');
  dmConsultas.qyConsGeraCob.SQL.Add(QuotedStr('0'));
  dmConsultas.qyConsGeraCob.SQL.Add('and (e.etp_id = 0 and e.exa_etapa >= 6 ');
  dmConsultas.qyConsGeraCob.SQL.Add('or e.etp_id = 1 and e.exa_etapa >= 6 ');
  dmConsultas.qyConsGeraCob.SQL.Add('or e.etp_id = 2 and e.exa_etapa >= 8 ');
  dmConsultas.qyConsGeraCob.SQL.Add('or e.etp_id = 3 and e.exa_etapa >= 8 ');
  dmConsultas.qyConsGeraCob.SQL.Add('or e.etp_id = 4 and e.exa_etapa >= 4 ');
  dmConsultas.qyConsGeraCob.SQL.Add('or e.etp_id = 5 and e.exa_etapa >= 6 ');
  dmConsultas.qyConsGeraCob.SQL.Add('or e.etp_id = 6 and e.exa_etapa >= 4) ');
  if vfNomePac <> '' then
  begin
    vfNomePac := RemoveAcento(vfNomePac);
    dmConsultas.qyConsGeraCob.SQL.Add('and p.pac_nome like ');
    dmConsultas.qyConsGeraCob.SQL.Add(QuotedStr(vfNomePac + '%'));
  end;
  if vfCodCob = 2 then
  begin
    dmConsultas.qyConsGeraCob.SQL.Add('and e.cov_codigo = ');
    dmConsultas.qyConsGeraCob.SQL.Add(QuotedStr(vfCodCli));
  end;
  if vfCodCob = 0 then
  begin
    dmConsultas.qyConsGeraCob.SQL.Add('and e.pac_codigo = ');
    dmConsultas.qyConsGeraCob.SQL.Add(QuotedStr(vfCodCli));
  end;
  if vfCodCob = 1 then
  begin
    dmConsultas.qyConsGeraCob.SQL.Add('and e.med_codigo = ');
    dmConsultas.qyConsGeraCob.SQL.Add(QuotedStr(vfCodCli));
  end;
  dmConsultas.qyConsGeraCob.SQL.Add(' order by p.pac_nome ');
  dmConsultas.qyConsGeraCob.Open;
end;

procedure FiltrarExamesSelecDB(vfGeraIDs: String);
begin
  dmConsultas.qyConsGeraCob.Close;
  dmConsultas.qyConsGeraCob.SQL.Clear;
  dmConsultas.qyConsGeraCob.SQL.Add('select c.exa_id, e.cov_codigo, e.pac_codigo, e.exa_guia, ');
  dmConsultas.qyConsGeraCob.SQL.Add('e.med_codigo, e.etp_id, c.eco_valor, e.exa_etapa, c.eco_status, c.eco_gerarcob, c.eco_vlrpago');
  dmConsultas.qyConsGeraCob.SQL.Add('from examescob c, exames e, pacientes p ');
  dmConsultas.qyConsGeraCob.SQL.Add('where e.exa_id = c.exa_id');
  dmConsultas.qyConsGeraCob.SQL.Add('and c.eco_status = FALSE ');
  dmConsultas.qyConsGeraCob.SQL.Add('and p.pac_codigo = e.pac_codigo ');
  dmConsultas.qyConsGeraCob.SQL.Add(vfGeraIDs);
  dmConsultas.qyConsGeraCob.SQL.Add('and c.his_id = ');
  dmConsultas.qyConsGeraCob.SQL.Add(QuotedStr('0'));
  dmConsultas.qyConsGeraCob.SQL.Add('and (e.etp_id = 0 and e.exa_etapa >= 6 ');
  dmConsultas.qyConsGeraCob.SQL.Add('or e.etp_id = 1 and e.exa_etapa >= 6 ');
  dmConsultas.qyConsGeraCob.SQL.Add('or e.etp_id = 2 and e.exa_etapa >= 8 ');
  dmConsultas.qyConsGeraCob.SQL.Add('or e.etp_id = 3 and e.exa_etapa >= 8 ');
  dmConsultas.qyConsGeraCob.SQL.Add('or e.etp_id = 4 and e.exa_etapa >= 4 ');
  dmConsultas.qyConsGeraCob.SQL.Add('or e.etp_id = 5 and e.exa_etapa >= 6 ');
  dmConsultas.qyConsGeraCob.SQL.Add('or e.etp_id = 6 and e.exa_etapa >= 4) ');
  dmConsultas.qyConsGeraCob.SQL.Add(' order by p.pac_nome ');
  dmConsultas.qyConsGeraCob.Open;
end;

procedure FiltrarNaoCobrados(vfCodConvenio: String);
begin
  dmConsultas.qyConsGeraCob.Close;
  dmConsultas.qyConsGeraCob.SQL.Clear;
  dmConsultas.qyConsGeraCob.SQL.Add('select c.exa_id, e.cov_codigo, e.pac_codigo, e.exa_guia, ');
  dmConsultas.qyConsGeraCob.SQL.Add('e.med_codigo, e.etp_id, c.eco_valor, e.exa_etapa, c.eco_status, c.eco_gerarcob, c.eco_vlrpago ');
  dmConsultas.qyConsGeraCob.SQL.Add('from examescob c, exames e, pacientes p');
  dmConsultas.qyConsGeraCob.SQL.Add('where e.exa_id = c.exa_id');
  dmConsultas.qyConsGeraCob.SQL.Add('and p.pac_codigo = e.pac_codigo ');
  dmConsultas.qyConsGeraCob.SQL.Add('and c.his_id = ');
  dmConsultas.qyConsGeraCob.SQL.Add(QuotedStr('0'));
  dmConsultas.qyConsGeraCob.SQL.Add('and (e.etp_id = 0 and e.exa_etapa >= 6 ');
  dmConsultas.qyConsGeraCob.SQL.Add('or e.etp_id = 1 and e.exa_etapa >= 6 ');
  dmConsultas.qyConsGeraCob.SQL.Add('or e.etp_id = 2 and e.exa_etapa >= 8 ');
  dmConsultas.qyConsGeraCob.SQL.Add('or e.etp_id = 3 and e.exa_etapa >= 8 ');
  dmConsultas.qyConsGeraCob.SQL.Add('or e.etp_id = 4 and e.exa_etapa >= 4 ');
  dmConsultas.qyConsGeraCob.SQL.Add('or e.etp_id = 5 and e.exa_etapa >= 6 ');
  dmConsultas.qyConsGeraCob.SQL.Add('or e.etp_id = 6 and e.exa_etapa >= 4) ');
  dmConsultas.qyConsGeraCob.SQL.Add('and c.eco_status = FALSE ');
  dmConsultas.qyConsGeraCob.SQL.Add('and e.cov_codigo = ');
  dmConsultas.qyConsGeraCob.SQL.Add(QuotedStr(vfCodConvenio));
  dmConsultas.qyConsGeraCob.SQL.Add(' order by p.pac_nome ');
  dmConsultas.qyConsGeraCob.Open;
end;

procedure FiltrarConsRecExames(vfHisId: String);
begin
  dmConsultas.qyConsRecExames.Close;
  dmConsultas.qyConsRecExames.SQL.Clear;
  dmConsultas.qyConsRecExames.SQL.Add('select his_id, his_item, his_data, exa_id, ');
  dmConsultas.qyConsRecExames.SQL.Add('cov_codigo, pac_codigo, his_valor, his_gercob, ');
  dmConsultas.qyConsRecExames.SQL.Add('med_codigo, his_status from histrec where his_id = ');
  dmConsultas.qyConsRecExames.SQL.Add(QuotedStr(vfHisId));
  dmConsultas.qyConsRecExames.SQL.Add(' order by his_item');
  dmConsultas.qyConsRecExames.Open;
end;

procedure FiltrarConsRecExamesID(vfExaID: String);
begin
  dmConsultas.qyConsRecExames.Close;
  dmConsultas.qyConsRecExames.SQL.Clear;
  dmConsultas.qyConsRecExames.SQL.Add('select his_id, his_item, his_data, exa_id, ');
  dmConsultas.qyConsRecExames.SQL.Add('cov_codigo, pac_codigo, his_valor, his_gercob, ');
  dmConsultas.qyConsRecExames.SQL.Add('med_codigo, his_status from histrec where exa_id = ');
  dmConsultas.qyConsRecExames.SQL.Add(QuotedStr(vfExaId));
  dmConsultas.qyConsRecExames.SQL.Add(' order by his_item');
  dmConsultas.qyConsRecExames.Open;
end;

procedure FiltrarConsRecObs(vfRecCodigo: String);
begin
  dmConsultas.qyConsRecObs.Close;
  dmConsultas.qyConsRecObs.SQL.Clear;
  dmConsultas.qyConsRecObs.SQL.Add('select rob_id, rob_data, rec_codigo, rob_obs ');
  dmConsultas.qyConsRecObs.SQL.Add('from recobs where rec_codigo = ');
  dmConsultas.qyConsRecObs.SQL.Add(QuotedStr(vfRecCodigo));
  dmConsultas.qyConsRecObs.SQL.Add(' order by rob_data');
  dmConsultas.qyConsRecObs.Open;
end;

procedure FiltrarExportaCob(vfHisID: String);
begin
  dmConsultas.qyExportaCob.Close;
  dmConsultas.qyExportaCob.SQL.Clear;
  dmConsultas.qyExportaCob.SQL.Add('select P.pac_nome, E.pac_idade, H.exa_id, E.exa_data, ');
  dmConsultas.qyExportaCob.SQL.Add('M.med_nome, M.med_numconselho, C.cov_descricao, ');
  dmConsultas.qyExportaCob.SQL.Add('E.exa_guia, E.exa_matricula, X.exp_quant, X.prc_tuss, ');
  dmConsultas.qyExportaCob.SQL.Add('R.prc_descricao, X.exp_unitario, X.exp_total ');
  dmConsultas.qyExportaCob.SQL.Add('from histrec H, pacientes P, medicos M, convenios C, ');
  dmConsultas.qyExportaCob.SQL.Add('exames E, examesproced X, procedimentos R ');
  dmConsultas.qyExportaCob.SQL.Add('where H.pac_codigo = P.pac_codigo ');
  dmConsultas.qyExportaCob.SQL.Add('and H.med_codigo = M.med_codigo ');
  dmConsultas.qyExportaCob.SQL.Add('and H.cov_codigo = C.cov_codigo ');
  dmConsultas.qyExportaCob.SQL.Add('and H.exa_id = E.exa_id ');
  dmConsultas.qyExportaCob.SQL.Add('and E.exa_id = X.exa_id ');
  dmConsultas.qyExportaCob.SQL.Add('and X.prc_tuss = R.prc_tuss ');
  dmConsultas.qyExportaCob.SQL.Add('and H.his_id = ');
  dmConsultas.qyExportaCob.SQL.Add(vfHisID);
  dmConsultas.qyExportaCob.SQL.Add('order by P.pac_nome');
end;

procedure FiltrarConsLogsCito(vfExaId: String);
begin
  dmConsultas.qyConsLogs.Close;
  dmConsultas.qyConsLogs.SQL.Clear;
  dmConsultas.qyConsLogs.SQL.Add('select l.log_data as data, l.log_hora as hora, ');
  dmConsultas.qyConsLogs.SQL.Add('u.usu_nome as usuario, c.cet_id as etapa, c.cet_descricao as descricao ');
  dmConsultas.qyConsLogs.SQL.Add('from exames e, exameslog l, usuarios u, citoetapas c ');
  dmConsultas.qyConsLogs.SQL.Add('where l.usu_codigo = u.usu_codigo ');
  dmConsultas.qyConsLogs.SQL.Add('and e.exa_id = l.exa_id ');
  dmConsultas.qyConsLogs.SQL.Add('and c.cet_id = eta_id ');
  dmConsultas.qyConsLogs.SQL.Add('and e.exa_id = ');
  dmConsultas.qyConsLogs.SQL.Add(QuotedStr(vfExaId));
  dmConsultas.qyConsLogs.SQL.Add('order by l.log_data, l.log_hora');
  dmConsultas.qyConsLogs.Open;
end;

procedure FiltrarConsEtapaCito(vfIDExame: String);
begin
  dmConsultas.qyConsEtapaExame.Close;
  dmConsultas.qyConsEtapaExame.SQL.Clear;
  dmConsultas.qyConsEtapaExame.SQL.Add('select C.cet_id, C.cet_descricao ');
  dmConsultas.qyConsEtapaExame.SQL.Add('from citoetapas C, Exames E ');
  dmConsultas.qyConsEtapaExame.SQL.Add('where E.exa_etapa = C.cet_id ');
  dmConsultas.qyConsEtapaExame.SQL.Add('and E.exa_id = ');
  dmConsultas.qyConsEtapaExame.SQL.Add(QuotedStr(vfIDExame));
  dmConsultas.qyConsEtapaExame.Open;
end;

procedure GetMaxLogData(vfIDExame: String);
begin
  dmConsultas.qyConsUltAlt.Close;
  dmConsultas.qyConsUltAlt.SQL.Clear;
  dmConsultas.qyConsUltAlt.SQL.Add('select max(log_data) from exameslog ');
  dmConsultas.qyConsUltAlt.SQL.Add('where exa_id = ');
  dmConsultas.qyConsUltAlt.SQL.Add(QuotedStr(vfIDExame));
  dmConsultas.qyConsUltAlt.Open;
end;

procedure FiltrarConsLogsHisto(vfIDExame: String);
begin
  dmConsultas.qyConsLogs.Close;
  dmConsultas.qyConsLogs.SQL.Clear;
  dmConsultas.qyConsLogs.SQL.Add('select l.log_data as data, l.log_hora as hora, ');
  dmConsultas.qyConsLogs.SQL.Add('u.usu_nome as usuario, h.het_id as etapa, h.het_descricao as descricao ');
  dmConsultas.qyConsLogs.SQL.Add('from exames e, exameslog l, usuarios u, histoetapas h ');
  dmConsultas.qyConsLogs.SQL.Add('where l.usu_codigo = u.usu_codigo ');
  dmConsultas.qyConsLogs.SQL.Add('and e.exa_id = l.exa_id ');
  dmConsultas.qyConsLogs.SQL.Add('and h.het_id = eta_id ');
  dmConsultas.qyConsLogs.SQL.Add('and e.exa_id = ');
  dmConsultas.qyConsLogs.SQL.Add(QuotedStr(vfIDExame));
  dmConsultas.qyConsLogs.SQL.Add('order by l.eta_id, l.log_data, l.log_hora');
  dmConsultas.qyConsLogs.Open;
end;

procedure FiltrarConsEtapaHisto(vfIDExame: String);
begin
  dmConsultas.qyConsEtapaExame.Close;
  dmConsultas.qyConsEtapaExame.SQL.Clear;
  dmConsultas.qyConsEtapaExame.SQL.Add('select H.het_id, H.het_descricao ');
  dmConsultas.qyConsEtapaExame.SQL.Add('from histoetapas H, exames E ');
  dmConsultas.qyConsEtapaExame.SQL.Add('where H.het_id = E.exa_etapa ');
  dmConsultas.qyConsEtapaExame.SQL.Add('and E.exa_id = ');
  dmConsultas.qyConsEtapaExame.SQL.Add(QuotedStr(vfIDExame));
  dmConsultas.qyConsEtapaExame.Open;
end;

procedure FiltrarconsLogsImuno(vfIDExame: String);
begin
  dmConsultas.qyConsLogs.Close;
  dmConsultas.qyConsLogs.SQL.Clear;
  dmConsultas.qyConsLogs.SQL.Add('select l.log_data as data, l.log_hora as hora, ');
  dmConsultas.qyConsLogs.SQL.Add('u.usu_nome as usuario, i.imu_id as etapa, i.imu_descricao as descricao ');
  dmConsultas.qyConsLogs.SQL.Add('from exames e, exameslog l, usuarios u, imunoetapas i ');
  dmConsultas.qyConsLogs.SQL.Add('where l.usu_codigo = u.usu_codigo ');
  dmConsultas.qyConsLogs.SQL.Add('and e.exa_id = l.exa_id ');
  dmConsultas.qyConsLogs.SQL.Add('and i.imu_id = eta_id ');
  dmConsultas.qyConsLogs.SQL.Add('and e.exa_id = ');
  dmConsultas.qyConsLogs.SQL.Add(QuotedStr(vfIDExame));
  dmConsultas.qyConsLogs.SQL.Add('order by l.eta_id, l.log_data, l.log_hora');
  dmConsultas.qyConsLogs.Open;
end;

procedure FiltrarConsEtapaImuno(vfIDExame: String);
begin
  dmConsultas.qyConsEtapaExame.Close;
  dmConsultas.qyConsEtapaExame.SQL.Clear;
  dmConsultas.qyConsEtapaExame.SQL.Add('select i.imu_id, i.imu_descricao ');
  dmConsultas.qyConsEtapaExame.SQL.Add('from imunoetapas I, exames E ');
  dmConsultas.qyConsEtapaExame.SQL.Add('where i.imu_id = E.exa_etapa ');
  dmConsultas.qyConsEtapaExame.SQL.Add('and E.exa_id = ');
  dmConsultas.qyConsEtapaExame.SQL.Add(QuotedStr(vfIDExame));
  dmConsultas.qyConsEtapaExame.Open;
end;

procedure LimparConsLogs(vfIDExame: String);
begin
  dmConsultas.qyConsLogs.Close;
  dmConsultas.qyConsLogs.SQL.Clear;
  dmConsultas.qyConsLogs.SQL.Add('select l.log_data as data, l.log_hora as hora, ');
  dmConsultas.qyConsLogs.SQL.Add('u.usu_nome as usuario, h.het_id as etapa, h.het_descricao as descricao ');
  dmConsultas.qyConsLogs.SQL.Add('from exames e, exameslog l, usuarios u, histoetapas h ');
  dmConsultas.qyConsLogs.SQL.Add('where l.usu_codigo = u.usu_codigo ');
  dmConsultas.qyConsLogs.SQL.Add('and e.exa_id = l.exa_id ');
  dmConsultas.qyConsLogs.SQL.Add('and h.het_id = eta_id ');
  dmConsultas.qyConsLogs.SQL.Add('and e.exa_id = ');
  dmConsultas.qyConsLogs.SQL.Add(QuotedStr(vfIDExame));
  dmConsultas.qyConsLogs.SQL.Add('order by l.eta_id, l.log_data, l.log_hora');
  dmConsultas.qyConsLogs.Open;
end;

end.
