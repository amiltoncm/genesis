unit uDaoConsDivExames;

interface

uses System.SysUtils, uClassConsDivExames, dataConsultas;

procedure FiltrarConsDivExames(vfExaId: String);
procedure FiltrarExamesDiv(vfConsDivExames: TConsDivExames);

implementation

procedure FiltrarConsDivExames(vfExaId: String);
begin
  dmConsultas.qyConsDivExames.Close;
  dmConsultas.qyConsDivExames.SQL.Clear;
  dmConsultas.qyConsDivExames.SQL.Add('select e.exa_id, e.exa_data, e.pac_codigo, p.pac_nome, p.pac_dtnasc, ');
  dmConsultas.qyConsDivExames.SQL.Add('e.pac_idade, e.pac_meses, e.cov_codigo, c.cov_descricao, e.exa_matricula, e.exa_guia, ');
  dmConsultas.qyConsDivExames.SQL.Add('e.med_codigo, m.med_nome, e.exa_etapa, e.exa_prioridade, e.exa_dataprior, e.exa_obs, ');
  dmConsultas.qyConsDivExames.SQL.Add('e.exa_origem, o.exl_descricao, e.exa_destino, e.etp_id, e.res_codigo from exames E, pacientes P, ');
  dmConsultas.qyConsDivExames.SQL.Add('medicos M, convenios C, exameslocais O ');
  dmConsultas.qyConsDivExames.SQL.Add('where E.pac_codigo = P.pac_codigo ');
  dmConsultas.qyConsDivExames.SQL.Add('and E.med_codigo = M.med_codigo ');
  dmConsultas.qyConsDivExames.SQL.Add('and E.cov_codigo = C.cov_codigo ');
  dmConsultas.qyConsDivExames.SQL.Add('and E.exa_origem = O.exl_id ');
  dmConsultas.qyConsDivExames.SQL.Add('and e.exa_id = ');
  dmConsultas.qyConsDivExames.SQL.Add(QuotedStr(vfExaId));
  dmConsultas.qyConsDivExames.Open;
end;

procedure FiltrarExamesDiv(vfConsDivExames: TConsDivExames);
begin
  dmConsultas.qyConsDivExames.Close;
  dmConsultas.qyConsDivExames.SQL.Clear;
  dmConsultas.qyConsDivExames.SQL.Add('select e.exa_id, e.exa_data, e.pac_codigo, p.pac_nome, p.pac_dtnasc, ');
  dmConsultas.qyConsDivExames.SQL.Add('e.pac_idade, e.pac_meses, e.cov_codigo, c.cov_descricao, e.exa_matricula, e.exa_guia, ');
  dmConsultas.qyConsDivExames.SQL.Add('e.med_codigo, m.med_nome, e.exa_etapa, e.exa_prioridade, e.exa_dataprior, e.exa_obs, ');
  dmConsultas.qyConsDivExames.SQL.Add('e.exa_origem, o.exl_descricao, e.exa_destino, e.etp_id, e.res_codigo from exames E, pacientes P, ');
  dmConsultas.qyConsDivExames.SQL.Add('medicos M, convenios C, exameslocais O ');
  dmConsultas.qyConsDivExames.SQL.Add('where E.pac_codigo = P.pac_codigo ');
  dmConsultas.qyConsDivExames.SQL.Add('and E.med_codigo = M.med_codigo ');
  dmConsultas.qyConsDivExames.SQL.Add('and E.cov_codigo = C.cov_codigo ');
  dmConsultas.qyConsDivExames.SQL.Add('and E.exa_origem = O.exl_id ');
  dmConsultas.qyConsDivExames.SQL.Add('and e.exa_data >= ');
  dmConsultas.qyConsDivExames.SQL.Add(QuotedStr(vfConsDivExames.DataInicio));
  dmConsultas.qyConsDivExames.SQL.Add(' and e.exa_data <= ');
  dmConsultas.qyConsDivExames.SQL.Add(QuotedStr(vfConsDivExames.DataFinal));
  if vfConsDivExames.CodOrigem <> '0' then
  begin
    dmConsultas.qyConsDivExames.SQL.Add(' and e.exa_origem = ');
    dmConsultas.qyConsDivExames.SQL.Add(QuotedStr(vfConsDivExames.CodOrigem));
  end;
  if vfConsDivExames.CodTpExame <> '0' then
  Begin
    dmConsultas.qyConsDivExames.SQL.Add(' and e.etp_id = ');
    dmConsultas.qyConsDivExames.SQL.Add(QuotedStr(vfConsDivExames.CodTpExame));
  end;
  if vfConsDivExames.CodConvenio <> '-1' then
  Begin
    dmConsultas.qyConsDivExames.SQL.Add(' and e.cov_codigo = ');
    dmConsultas.qyConsDivExames.SQL.Add(QuotedStr(vfConsDivExames.CodConvenio));
  end;
  if vfConsDivExames.CodMedico <> '0' then
  Begin
    dmConsultas.qyConsDivExames.SQL.Add(' and e.med_codigo = ');
    dmConsultas.qyConsDivExames.SQL.Add(QuotedStr(vfConsDivExames.CodMedico));
  end;
  if vfConsDivExames.IDExame <> '0' then
  Begin
    dmConsultas.qyConsDivExames.SQL.Add(' and e.exa_id = ');
    dmConsultas.qyConsDivExames.SQL.Add(QuotedStr(vfConsDivExames.IDExame));
  end;
  //tipo de busca por paciente
  if vfConsDivExames.NomePaciente <> '0' then
  Begin
    if vfConsDivExames.TipoDeBusca = 0 then
    begin
      dmConsultas.qyConsDivExames.SQL.Add(' and p.pac_nome like ');
      dmConsultas.qyConsDivExames.SQL.Add(QuotedStr(vfConsDivExames.NomePaciente + '%'));
    end;
    if vfConsDivExames.TipoDeBusca = 1 then
    begin
      dmConsultas.qyConsDivExames.SQL.Add(' and p.pac_nome like ');
      dmConsultas.qyConsDivExames.SQL.Add(QuotedStr('%' + vfConsDivExames.NomePaciente + '%'));
    end;
    if vfConsDivExames.TipoDeBusca = 2 then
    begin
      dmConsultas.qyConsDivExames.SQL.Add(' and e.pac_codigo = ');
      dmConsultas.qyConsDivExames.SQL.Add(QuotedStr(vfConsDivExames.CodPaciente));
    end;
  end;
  dmConsultas.qyConsDivExames.SQL.Add(' order by ' + vfConsDivExames.Organizar +
                                      ' ' + vfConsDivExames.Ordem);
  if vfConsDivExames.Registros <> '0' then
  begin
    dmConsultas.qyConsDivExames.SQL.Add('limit ');
    dmConsultas.qyConsDivExames.SQL.Add(QuotedStr(vfConsDivExames.Registros));
  end;
  dmConsultas.qyConsDivExames.Open;
end;

end.
