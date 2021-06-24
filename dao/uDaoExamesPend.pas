unit uDaoExamesPend;

interface

uses system.SysUtils;

  procedure ConsCitoEtapas(vfData: String);
  procedure ConsHistoEtapas(vfData: String);
  procedure ConsImunoEtapas(vfData: String);

implementation

uses dataConsultas;

procedure ConsCitoEtapas(vfData: String);
begin
  dmConsultas.qyConsCitoEtapas.Close;
  dmConsultas.qyConsCitoEtapas.SQL.Clear;
  dmConsultas.qyConsCitoEtapas.SQL.Add('select e.exa_id, e.exa_data, e.etp_id, e.med_codigo, m.med_nome, ');
  dmConsultas.qyConsCitoEtapas.SQL.Add('e.pac_codigo, p.pac_nome, e.cov_codigo, c.cov_descricao, e.exa_etapa, ');
  dmConsultas.qyConsCitoEtapas.SQL.Add('t.cet_descricao ');
  dmConsultas.qyConsCitoEtapas.SQL.Add('from exames e, convenios c, medicos m, pacientes p, citoetapas t ');
  dmConsultas.qyConsCitoEtapas.SQL.Add('where e.exa_etapa < 6 ');
  dmConsultas.qyConsCitoEtapas.SQL.Add('and ((e.etp_id = 0) or (e.etp_id = 1) or (e.etp_id = 5)) ');
  dmConsultas.qyConsCitoEtapas.SQL.Add('and c.cov_codigo = e.cov_codigo ');
  dmConsultas.qyConsCitoEtapas.SQL.Add('and m.med_codigo = e.med_codigo ');
  dmConsultas.qyConsCitoEtapas.SQL.Add('and p.pac_codigo = e.pac_codigo ');
  dmConsultas.qyConsCitoEtapas.SQL.Add('and t.cet_id = e.exa_etapa ');
  dmConsultas.qyConsCitoEtapas.SQL.Add('and e.exa_data <= ');
  dmConsultas.qyConsCitoEtapas.SQL.Add(QuotedStr(vfData));
  dmConsultas.qyConsCitoEtapas.SQL.Add('order by e.exa_data, exa_id');
  dmConsultas.qyConsCitoEtapas.Open;
end;

procedure ConsHistoEtapas(vfData: String);
begin
  dmConsultas.qyConsHistoEtapas.Close;
  dmConsultas.qyConsHistoEtapas.SQL.Clear;
  dmConsultas.qyConsHistoEtapas.SQL.Add('select e.exa_id, e.exa_data, e.etp_id, e.med_codigo, m.med_nome, ');
  dmConsultas.qyConsHistoEtapas.SQL.Add('e.pac_codigo, p.pac_nome, e.cov_codigo, c.cov_descricao, e.exa_etapa, ');
  dmConsultas.qyConsHistoEtapas.SQL.Add('t.het_descricao ');
  dmConsultas.qyConsHistoEtapas.SQL.Add('from exames e, convenios c, medicos m, pacientes p, histoetapas t ');
  dmConsultas.qyConsHistoEtapas.SQL.Add('where e.exa_etapa < 8 ');
  dmConsultas.qyConsHistoEtapas.SQL.Add('and ((e.etp_id = 2) or (e.etp_id = 3)) ');
  dmConsultas.qyConsHistoEtapas.SQL.Add('and c.cov_codigo = e.cov_codigo ');
  dmConsultas.qyConsHistoEtapas.SQL.Add('and m.med_codigo = e.med_codigo ');
  dmConsultas.qyConsHistoEtapas.SQL.Add('and p.pac_codigo = e.pac_codigo ');
  dmConsultas.qyConsHistoEtapas.SQL.Add('and t.het_id = e.exa_etapa ');
  dmConsultas.qyConsHistoEtapas.SQL.Add('and e.exa_data <= ');
  dmConsultas.qyConsHistoEtapas.SQL.Add(QuotedStr(vfData));
  dmConsultas.qyConsHistoEtapas.SQL.Add('order by e.exa_data, exa_id');
  dmConsultas.qyConsHistoEtapas.Open;
end;

procedure ConsImunoEtapas(vfData: String);
begin
  dmConsultas.qyConsImunoEtapas.Close;
  dmConsultas.qyConsImunoEtapas.SQL.Clear;
  dmConsultas.qyConsImunoEtapas.SQL.Add('select e.exa_id, e.exa_data, e.etp_id, e.med_codigo, m.med_nome, ');
  dmConsultas.qyConsImunoEtapas.SQL.Add('e.pac_codigo, p.pac_nome, e.cov_codigo, c.cov_descricao, e.exa_etapa, ');
  dmConsultas.qyConsImunoEtapas.SQL.Add('t.imu_descricao ');
  dmConsultas.qyConsImunoEtapas.SQL.Add('from exames e, convenios c, medicos m, pacientes p, imunoetapas t ');
  dmConsultas.qyConsImunoEtapas.SQL.Add('where e.exa_etapa < 4 ');
  dmConsultas.qyConsImunoEtapas.SQL.Add('and ((e.etp_id = 4) or (e.etp_id = 6)) ');
  dmConsultas.qyConsImunoEtapas.SQL.Add('and c.cov_codigo = e.cov_codigo ');
  dmConsultas.qyConsImunoEtapas.SQL.Add('and m.med_codigo = e.med_codigo ');
  dmConsultas.qyConsImunoEtapas.SQL.Add('and p.pac_codigo = e.pac_codigo ');
  dmConsultas.qyConsImunoEtapas.SQL.Add('and t.imu_id = e.exa_etapa ');
  dmConsultas.qyConsImunoEtapas.SQL.Add('and e.exa_data <= ');
  dmConsultas.qyConsImunoEtapas.SQL.Add(QuotedStr(vfData));
  dmConsultas.qyConsImunoEtapas.SQL.Add('order by e.exa_data, exa_id');
  dmConsultas.qyConsImunoEtapas.Open;
end;

end.
