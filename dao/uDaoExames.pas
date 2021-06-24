unit uDaoExames;

interface

uses
  Windows, Messages, SysUtils, Classes, Dialogs, StdCtrls, Forms,
  Graphics, Controls, DB;

procedure InsExames;
procedure EdtExames;
procedure PostExames;
procedure SetEtapaExame(vfEtapa: Integer);
procedure SetExamesResp(vfCodResponsavel: integer);
procedure ListarExames(vfOrdem: String; vfLimite: String);
procedure FiltrarExames(vfCampoFil: String; vfOperador: String; vfParametro: String;
                        vfOrdem: String; vfLimite: String);
procedure FiltrarCitologias(vfCampoFil: String; vfOperador: String; vfParametro: String;
                            vfOrdem: String; vfLimite: String);
procedure FiltrarCitologiasFaixa(vfCampoFil: String; vfOperador: String; vfParametro1: String;
                                 vfParametro2: String; vfEtapa: String; vfOrdem: String; vfLimite: String);
procedure FiltrarConsExames(vfCampoFil: String; vfOperador: String; vfParametro: String;
                            vfOrdem: String; vfLimite: String);
procedure FiltrarProcExames(vfCampoFil: String; vfOperador: String; vfParametro: String;
                            vfEtapa: String; vfOrdem: String; vfLimite: String);
procedure FiltrarExamesAltReq(vfCampoFil: String; vfOperador: String; vfParametro: String;
                        vfOrdem: String; vfLimite: String);
procedure FiltrarExamesPac(vfCodPac: String);
procedure FiltrarDadosReq(vfCodPac: String);
function FiltrarNomePacEx(vfIDExame: String): String;
procedure FiltrarExamesCitologia(vfCampoFil: String; vfOperador: String; vfParametro: String;
                            vfEtapa: String; vfOrdem: String; vfLimite: String);
procedure FiltrarExamesHisto(vfCampoFil: String; vfOperador: String; vfParametro: String;
                            vfEtapa: String; vfOrdem: String; vfLimite: String);
procedure FiltrarHistCorte(vfHistologia: String);
procedure OrdenarSelCit(vfOrdem: String);
function VerificaEtapaCito(vfIDExame: String): String;
function VerificaEtapaHisto(vfIDExame: String): String;
function GetMatricula(vfCodPaciente: String): String;
procedure RelatorioCorte;
function TestaExame(vfExame: String): boolean;
procedure ListarImunos(vfOrdem: String);
procedure FiltrarImuno(vfIDExame: String);
function VerifEtapa(vfIDExame: String): Integer;

const
  ctCampos = 'e.exa_id, e.exa_data, e.pac_codigo, p.pac_nome, e.pac_idade, p.pac_dtnasc, ' +
              'e.pac_meses, p.pac_sexo, e.cov_codigo, c.cov_descricao, e.exa_matricula, ' +
              'e.exa_guia, e.med_codigo, m.med_nome, e.exa_etapa, e.exa_prioridade, ' +
              'e.exa_dataprior, e.exa_obs, e.exa_origem, o.exl_descricao, e.exa_destino, ' +
              'd.exl_descricao, e.etp_id, t.etp_tipo, e.res_codigo, r.res_titulo, ' +
              'r.res_nome, s.cos_tipo, r.res_numconselho, r.cos_uf, r.res_rqe, p.pac_dtnasc, p.pac_sexo';

  ctTabelas = 'exames e, pacientes p, convenios c, medicos m, examestp t, ' +
              'responsaveis r, exameslocais o, exameslocais d, conselhos s';

implementation

uses dataExames, dataConsultas, uVarGlobal;

{--- Coloca a tabela em insert  -----------------------------------------------}

procedure InsExames;
begin
  dmExames.qyExames.Insert;
end;

{--- Coloca a tabela em edit inserindo algum valor ----------------------------}

procedure EdtExames;
begin
  dmExames.qyExames.Edit;
end;

{--- Dá um post na tabela -----------------------------------------------------}

procedure PostExames;
begin
  try
    dmExames.qyExames.Post;
  except
    on E: Exception do
    begin
      MessageDlg('Erro ao gravar Alteração / Inserção!' + #13 +
          E.Message,mtError,[mbOk],0);
      dmExames.qyExames.Refresh;
    end;
  end;
end;

{--- Seta valores na tabela ---------------------------------------------------}

procedure SetEtapaExame(vfEtapa: Integer);
begin
  try
    if not (dmExames.qyExames.State in [dsEdit]) then
      dmExames.qyExames.Edit;
    dmExames.qyExamesexa_etapa.Value := vfEtapa;
    dmExames.qyExames.Post;
  except
    on E: Exception do
    begin
      MessageDlg('Erro ao gravar Alteração / Inserção!' + #13#10 +
          E.Message,mtError,[mbOk],0);
    end;
  end;
end;

procedure SetExamesResp(vfCodResponsavel: integer);
begin
  try
    if not(dmExames.qyExames.State in [dsInsert, dsEdit]) then
      dmExames.qyExames.Edit;
    dmExames.qyExamesres_codigo.Value := vfCodResponsavel;
    dmExames.qyExames.Post;
  except
    on E: Exception do
    begin
      MessageDlg('Erro ao gravar Responsável!' + #13#10 +
                 E.Message,mtError,[mbOk],0);
    end;
  end;
end;

{--- Lista todos os registros da tabela ---------------------------------------}

procedure ListarExames(vfOrdem: String; vfLimite: String);
begin
  dmExames.qyExames.Close;
  dmExames.qyExames.SQL.Clear;
  dmExames.qyExames.SQL.Add('select '+ ctCampos + ' from ' + ctTabelas +
                              ' where e.pac_codigo = p.pac_codigo ' +
                              'and e.cov_codigo = c.cov_codigo ' +
                              'and e.med_codigo = m.med_codigo ' +
                              'and e.etp_id = t.etp_id ' +
                              'and e.res_codigo = r.res_codigo ' +
                              'and e.exa_origem = o.exl_id ' +
                              'and e.exa_destino = d.exl_id ' +
                              'and r.cos_id = s.cos_codigo');
  if vfOrdem <> '0' then
    dmExames.qyExames.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmExames.qyExames.SQL.Add(' limit ' + vfLimite);
  dmExames.qyExames.Open;
end;

{--- Filtra registros da tabela -----------------------------------------------}

procedure FiltrarExames(vfCampoFil: String; vfOperador: String; vfParametro: String;
                        vfOrdem: String; vfLimite: String);
begin
  dmExames.qyExames.Close;
  dmExames.qyExames.SQL.Clear;
  dmExames.qyExames.SQL.Add('select ' + ctCampos + ' from ' + ctTabelas +
                              ' where e.pac_codigo = p.pac_codigo ' +
                              'and e.cov_codigo = c.cov_codigo ' +
                              'and e.med_codigo = m.med_codigo ' +
                              'and e.etp_id = t.etp_id ' +
                              'and e.res_codigo = r.res_codigo ' +
                              'and e.exa_origem = o.exl_id ' +
                              'and e.exa_destino = d.exl_id ' +
                              'and r.cos_id = s.cos_codigo and ');
  dmExames.qyExames.SQL.Add(vfCampoFil + ' ' + vfOperador + ' ');
  dmExames.qyExames.SQL.Add(QuotedStr(vfParametro));
  if vfOrdem <> '0' then
    dmExames.qyExames.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmExames.qyExames.SQL.Add(' limit ' + vfLimite);
  dmExames.qyExames.Open;
end;

{--- Filtra somente citologias ------------------------------------------------}

procedure FiltrarCitologias(vfCampoFil: String; vfOperador: String; vfParametro: String;
                            vfOrdem: String; vfLimite: String);
begin
  dmExames.qyExames.Close;
  dmExames.qyExames.SQL.Clear;
  dmExames.qyExames.SQL.Add('select ' + ctCampos + ' from ' + ctTabelas +
                              ' where e.pac_codigo = p.pac_codigo ' +
                              'and e.cov_codigo = c.cov_codigo ' +
                              'and e.med_codigo = m.med_codigo ' +
                              'and e.etp_id = t.etp_id ' +
                              'and e.res_codigo = r.res_codigo ' +
                              'and e.exa_origem = o.exl_id ' +
                              'and e.exa_destino = d.exl_id ' +
                              'and r.cos_id = s.cos_codigo ' +
                              //Aqui filtra por tipo de exame - Somente Citologias
                              'and ((e.etp_id = 0) or (e.etp_id = 1) or (e.etp_id = 5)) and ');
  dmExames.qyExames.SQL.Add(vfCampoFil + ' ' + vfOperador + ' ');
  dmExames.qyExames.SQL.Add(QuotedStr(vfParametro));
  if vfOrdem <> '0' then
    dmExames.qyExames.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmExames.qyExames.SQL.Add(' limit ' + vfLimite);
  dmExames.qyExames.Open;
end;

{--- Filtra somente citologias por faixa --------------------------------------}

procedure FiltrarCitologiasFaixa(vfCampoFil: String; vfOperador: String; vfParametro1: String;
                                 vfParametro2: String; vfEtapa: String; vfOrdem: String; vfLimite: String);
begin
  dmExames.qyExames.Close;
  dmExames.qyExames.SQL.Clear;
  dmExames.qyExames.SQL.Add('select ' + ctCampos + ' from ' + ctTabelas +
                              ' where e.pac_codigo = p.pac_codigo ' +
                              'and e.cov_codigo = c.cov_codigo ' +
                              'and e.med_codigo = m.med_codigo ' +
                              'and e.etp_id = t.etp_id ' +
                              'and e.res_codigo = r.res_codigo ' +
                              'and e.exa_origem = o.exl_id ' +
                              'and e.exa_destino = d.exl_id ' +
                              'and r.cos_id = s.cos_codigo ' +
                              //Aqui filtra por tipo de exame - Somente Citologias
                              'and ((e.etp_id = 0) or (e.etp_id = 1) or (e.etp_id = 5)) and ');
  dmExames.qyExames.SQL.Add(vfCampoFil + ' ' + vfOperador + ' ');
  dmExames.qyExames.SQL.Add(QuotedStr(vfParametro1));
  dmExames.qyExames.SQL.Add(' and ');
  dmExames.qyExames.SQL.Add(QuotedStr(vfParametro2));
  dmExames.qyExames.SQL.Add(' and e.exa_etapa = ');
  dmExames.qyExames.SQL.Add(QuotedStr(vfEtapa));
  if vfOrdem <> '0' then
    dmExames.qyExames.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmExames.qyExames.SQL.Add(' limit ' + vfLimite);
  dmExames.qyExames.Open;
end;

{--- Filtra registros da tabela consultas -------------------------------------}

procedure FiltrarConsExames(vfCampoFil: String; vfOperador: String; vfParametro: String;
                        vfOrdem: String; vfLimite: String);
begin
  dmConsultas.qyConsExames.Close;
  dmConsultas.qyConsExames.SQL.Clear;
  dmConsultas.qyConsExames.SQL.Add('select ' + ctCampos + ' from ' + ctTabelas +
                              ' where e.pac_codigo = p.pac_codigo ' +
                              'and e.cov_codigo = c.cov_codigo ' +
                              'and e.med_codigo = m.med_codigo ' +
                              'and e.etp_id = t.etp_id ' +
                              'and e.res_codigo = r.res_codigo ' +
                              'and e.exa_origem = o.exl_id ' +
                              'and e.exa_destino = d.exl_id ' +
                              'and r.cos_id = s.cos_codigo and ');
  dmConsultas.qyConsExames.SQL.Add(vfCampoFil + ' ' + vfOperador + ' ');
  dmConsultas.qyConsExames.SQL.Add(QuotedStr(vfParametro));
  if vfOrdem <> '0' then
    dmConsultas.qyConsExames.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmConsultas.qyConsExames.SQL.Add(' limit ' + vfLimite);
  dmConsultas.qyConsExames.Open;
end;

{--- Exames anteriores e corte ------------------------------------------------}

procedure FiltrarProcExames(vfCampoFil: String; vfOperador: String; vfParametro: String;
                            vfEtapa: String; vfOrdem: String; vfLimite: String);
begin
  dmConsultas.qyProcExames.Close;
  dmConsultas.qyProcExames.SQL.Clear;
  dmConsultas.qyProcExames.SQL.Add('select ' + ctCampos + ' from ' + ctTabelas +
                              ' where e.pac_codigo = p.pac_codigo ' +
                              'and e.cov_codigo = c.cov_codigo ' +
                              'and e.med_codigo = m.med_codigo ' +
                              'and e.etp_id = t.etp_id ' +
                              'and e.res_codigo = r.res_codigo ' +
                              'and e.exa_origem = o.exl_id ' +
                              'and e.exa_destino = d.exl_id ' +
                              'and r.cos_id = s.cos_codigo and ');
  dmConsultas.qyProcExames.SQL.Add(vfCampoFil + ' ' + vfOperador + ' ');
  dmConsultas.qyProcExames.SQL.Add(QuotedStr(vfParametro));
  if vfEtapa <> '0' then
  begin
    dmConsultas.qyProcExames.SQL.Add(' and e.exa_etapa = ');
    dmConsultas.qyProcExames.SQL.Add(vfEtapa);
  end;
  if vfOrdem <> '0' then
    dmConsultas.qyProcExames.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmConsultas.qyProcExames.SQL.Add(' limit ' + vfLimite);
  dmConsultas.qyProcExames.Open;
  end;

{--- Filtra Exames para alterar a requisição ----------------------------------}

procedure FiltrarExamesAltReq(vfCampoFil: String; vfOperador: String; vfParametro: String;
                        vfOrdem: String; vfLimite: String);
begin
  dmExames.qyExames.Close;
  dmExames.qyExames.SQL.Clear;
  dmExames.qyExames.SQL.Add('select ' + ctCampos + ' from ' + ctTabelas +
                              ' where e.pac_codigo = p.pac_codigo ' +
                              'and e.cov_codigo = c.cov_codigo ' +
                              'and e.med_codigo = m.med_codigo ' +
                              'and e.etp_id = t.etp_id ' +
                              'and e.res_codigo = r.res_codigo ' +
                              'and e.exa_origem = o.exl_id ' +
                              'and e.exa_destino = d.exl_id ' +
                              'and r.cos_id = s.cos_codigo and ');
  dmExames.qyExames.SQL.Add(vfCampoFil + ' ' + vfOperador + ' ');
  dmExames.qyExames.SQL.Add(QuotedStr(vfParametro));
  dmExames.qyExames.SQL.Add(' and exa_etapa = 2');
  if vfOrdem <> '0' then
    dmExames.qyExames.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmExames.qyExames.SQL.Add(' limit ' + vfLimite);
  dmExames.qyExames.Open;
  if dmExames.qyExamesexa_id.IsNull then
    MessageDlg('Exame já liberado ou não foi encontrado: ' + #13 + vfParametro, mtWarning, [mbok],0);
end;

{--- Filtrar exames de pacientes ----------------------------------------------}

procedure FiltrarExamesPac(vfCodPac: String);
begin
  dmConsultas.qyConsExamesPac.Close;
  dmConsultas.qyConsExamesPac.SQL.Clear;
  dmConsultas.qyConsExamesPac.SQL.Add('select e.exa_id, d.sct_subcat, c.sct_descabrev ');
  dmConsultas.qyConsExamesPac.SQL.Add('from exames e, examesdoencas d, cid10subcategorias c ');
  dmConsultas.qyConsExamesPac.SQL.Add('where e.exa_id = d.exa_id and d.sct_subcat = c.sct_subcat');
  dmConsultas.qyConsExamesPac.SQL.Add('and e.pac_codigo = ');
  dmConsultas.qyConsExamesPac.SQL.Add(QuotedStr(vfCodPac));
  dmConsultas.qyConsExamesPac.SQL.Add(' order by e.exa_data, e.exa_id');
  dmConsultas.qyConsExamesPac.Open;
end;

{--- Filtrar dados requeridos -------------------------------------------------}

procedure FiltrarDadosReq(vfCodPac: String);
begin
  dmConsultas.qyConsDadosReq.Close;
  dmConsultas.qyConsDadosReq.SQL.Clear;
  dmConsultas.qyConsDadosReq.SQL.Add('select exa_id, pac_codigo, pac_idade, ');
  dmConsultas.qyConsDadosReq.SQL.Add('pac_meses, cov_codigo, exa_matricula, ');
  dmConsultas.qyConsDadosReq.SQL.Add('exa_guia from exames where pac_codigo = ');
  dmConsultas.qyConsDadosReq.SQL.Add(QuotedStr(vfCodPac));
  dmConsultas.qyConsDadosReq.Open;
end;

{--- Filtrar nome do paciente -------------------------------------------------}

function FiltrarNomePacEx(vfIDExame: String): String;
begin
  dmConsultas.qyConsNomePacEx.Close;
  dmConsultas.qyConsNomePacEx.SQL.Clear;
  dmConsultas.qyConsNomePacEx.SQL.Add('select p.pac_nome from pacientes p, exames e ');
  dmConsultas.qyConsNomePacEx.SQL.Add('where p.pac_codigo = e.pac_codigo and e.exa_id = ');
  dmConsultas.qyConsNomePacEx.SQL.Add(QuotedStr(vfIDExame));
  dmConsultas.qyConsNomePacEx.SQL.Add(' limit 1');
  dmConsultas.qyConsNomePacEx.Open;
  result := dmConsultas.qyConsNomePacExpac_nome.Text;
end;

{--- Filtrar exames tipo cito -------------------------------------------------}

procedure FiltrarExamesCitologia(vfCampoFil: String; vfOperador: String; vfParametro: String;
                            vfEtapa: String; vfOrdem: String; vfLimite: String);
begin
  dmExames.qyExames.Close;
  dmExames.qyExames.SQL.Clear;
  dmExames.qyExames.SQL.Add('select ' + ctCampos + ' from ' + ctTabelas +
                              ' where e.pac_codigo = p.pac_codigo ' +
                              'and e.cov_codigo = c.cov_codigo ' +
                              'and e.med_codigo = m.med_codigo ' +
                              'and e.etp_id = t.etp_id ' +
                              'and e.res_codigo = r.res_codigo ' +
                              'and e.exa_origem = o.exl_id ' +
                              'and e.exa_destino = d.exl_id ' +
                              'and r.cos_id = s.cos_codigo ' +
                              'and ((e.etp_id = 0) or (e.etp_id = 1) or (e.etp_id = 5))  and ');
  dmExames.qyExames.SQL.Add(vfCampoFil + ' ' + vfOperador + ' ');
  dmExames.qyExames.SQL.Add(QuotedStr(vfParametro));
  if vfEtapa <> '0' then
    dmExames.qyExames.SQL.Add(' and e.exa_etapa ' + vfEtapa);
  if vfOrdem <> '0' then
    dmExames.qyExames.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmExames.qyExames.SQL.Add(' limit ' + vfLimite);
  dmExames.qyExames.Open;
end;

{--- Filtrar exames tipo histo ------------------------------------------------}

procedure FiltrarExamesHisto(vfCampoFil: String; vfOperador: String; vfParametro: String;
                            vfEtapa: String; vfOrdem: String; vfLimite: String);
begin
  dmExames.qyExames.Close;
  dmExames.qyExames.SQL.Clear;
  dmExames.qyExames.SQL.Add('select ' + ctCampos + ' from ' + ctTabelas +
                            ' where e.pac_codigo = p.pac_codigo ' +
                            'and e.cov_codigo = c.cov_codigo ' +
                            'and e.med_codigo = m.med_codigo ' +
                            'and e.etp_id = t.etp_id ' +
                            'and e.res_codigo = r.res_codigo ' +
                            'and e.exa_origem = o.exl_id ' +
                            'and e.exa_destino = d.exl_id ' +
                            'and r.cos_id = s.cos_codigo ' +
                            'and ((e.etp_id = 2) or (e.etp_id = 3) or (e.etp_id = 4))  and ');
  dmExames.qyExames.SQL.Add(vfCampoFil + ' ' + vfOperador + ' ');
  dmExames.qyExames.SQL.Add(QuotedStr(vfParametro));
  //corrige filtro etapa conforme etapa
  if vfEtapa <> '0' then
  begin
    if ((vfEtapa = '2') or (vfEtapa = '3') or (vfEtapa = '4')) then
    begin
      vfEtapa := '= ' + vfEtapa;
      dmExames.qyExames.SQL.Add(' and e.exa_etapa ' + vfEtapa);
    end;
    if ((vfEtapa = '5') or (vfEtapa = '6')) then
    begin
      vfEtapa := '>= ' + vfEtapa;
      dmExames.qyExames.SQL.Add(' and e.exa_etapa ' + vfEtapa);
    end;
  end;
  if vfOrdem <> '0' then
    dmExames.qyExames.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmExames.qyExames.SQL.Add(' limit ' + vfLimite);
  dmExames.qyExames.Open;
end;

{--- Filtrar exames tipo histo frmSelHistCorte --------------------------------}

procedure FiltrarHistCorte(vfHistologia: String);
begin
  dmExames.qyExames.Close;
  dmExames.qyExames.SQL.Clear;
  dmExames.qyExames.SQL.Add('select ' + ctCampos + ' from ' + ctTabelas +
                            ' where e.pac_codigo = p.pac_codigo ' +
                            'and e.cov_codigo = c.cov_codigo ' +
                            'and e.med_codigo = m.med_codigo ' +
                            'and e.etp_id = t.etp_id ' +
                            'and e.res_codigo = r.res_codigo ' +
                            'and e.exa_origem = o.exl_id ' +
                            'and e.exa_destino = d.exl_id ' +
                            'and r.cos_id = s.cos_codigo ');
  if vfHistologia <> '0' then
    dmExames.qyExames.SQL.Add('and e.exa_id = ' + QuotedStr(vfHistologia));
  //adaptado para reimpressão
  if ((vgNumEtapa = '5') or (vgNumEtapa = '6')) then
    dmExames.qyExames.SQL.Add('and ((e.etp_id = 2) or (e.etp_id = 3))and e.exa_etapa >= ')
  else
    dmExames.qyExames.SQL.Add('and ((e.etp_id = 2) or (e.etp_id = 3))and e.exa_etapa = ');
  dmExames.qyExames.SQL.Add(QuotedStr(vgNumEtapa));
  dmExames.qyExames.SQL.Add(' order by e.exa_id desc');
  dmExames.qyExames.Open;
end;

{--- Ordenar GRID do form frmSelCit -------------------------------------------}

procedure OrdenarSelCit(vfOrdem: String);
begin
  dmExames.qyExames.Close;
  dmExames.qyExames.SQL.Clear;
  dmExames.qyExames.SQL.Add('select '+ ctCampos + ' from ' + ctTabelas +
                              ' where e.pac_codigo = p.pac_codigo ' +
                              'and e.cov_codigo = c.cov_codigo ' +
                              'and e.med_codigo = m.med_codigo ' +
                              'and e.etp_id = t.etp_id ' +
                              'and e.res_codigo = r.res_codigo ' +
                              'and e.exa_origem = o.exl_id ' +
                              'and e.exa_destino = d.exl_id ' +
                              'and r.cos_id = s.cos_codigo ' +
                              //filtra somente a etapa 2 da citologia
                              'and e.exa_etapa = 2 ' +
                              //filtra somente citologias etp_id = 1
                              ' and ((e.etp_id = 0) or (e.etp_id = 1) or (e.etp_id = 5))');
  if vfOrdem <> '0' then
    dmExames.qyExames.SQL.Add(' order by ' + vfOrdem);
  dmExames.qyExames.Open;
end;

{--- Verifica etapa da Citologia ----------------------------------------------}

function VerificaEtapaCito(vfIDExame: String): String;
begin
  dmConsultas.qyConsEtapaCito.Close;
  dmConsultas.qyConsEtapaCito.SQL.Clear;
  dmConsultas.qyConsEtapaCito.SQL.Add('select e.exa_etapa, c.cet_descricao from exames e, citoetapas c ');
  dmConsultas.qyConsEtapaCito.SQL.Add('where e.exa_etapa = c.cet_id and ((e.etp_id = 0) or (e.etp_id = 1) or (etp_id = 5)) ');
  dmConsultas.qyConsEtapaCito.SQL.Add('and e.exa_id = ');
  dmConsultas.qyConsEtapaCito.SQL.Add(QuotedStr(vfIDExame));
  dmConsultas.qyConsEtapaCito.Open;
  Result := dmConsultas.qyConsEtapaCito.Fields[1].Text;
end;

{--- Verifica etapa da Histologia ---------------------------------------------}

function VerificaEtapaHisto(vfIDExame: String): String;
begin
  dmConsultas.qyConsEtapaHist.Close;
  dmConsultas.qyConsEtapaHist.SQL.Clear;
  dmConsultas.qyConsEtapaHist.SQL.Add('select e.exa_etapa, h.het_descricao from exames e, histoetapas h ');
  dmConsultas.qyConsEtapaHist.SQL.Add('where e.exa_etapa = h.het_id and e.etp_id = 2 ');
  dmConsultas.qyConsEtapaHist.SQL.Add('and e.exa_id = ');
  dmConsultas.qyConsEtapaHist.SQL.Add(QuotedStr(vfIDExame));
  dmConsultas.qyConsEtapaHist.Open;
  Result := dmConsultas.qyConsEtapaHist.Fields[1].Text;
end;


{--- Busca matrícula ----------------------------------------------------------}

function GetMatricula(vfCodPaciente: String): String;
begin
  dmConsultas.qyConsDadosReq.Close;
  dmConsultas.qyConsDadosReq.SQL.Clear;
  dmConsultas.qyConsDadosReq.SQL.Add('select exa_id, pac_codigo, pac_idade, ');
  dmConsultas.qyConsDadosReq.SQL.Add('pac_meses, cov_codigo, exa_matricula, ');
  dmConsultas.qyConsDadosReq.SQL.Add('exa_guia from exames where pac_codigo = ');
  dmConsultas.qyConsDadosReq.SQL.Add(QuotedStr(vfCodPaciente));
  dmConsultas.qyConsDadosReq.SQL.Add('order by exa_data desc limit 1');
  dmConsultas.qyConsDadosReq.Open;
  if not(dmConsultas.qyConsDadosReqpac_codigo.IsNull) then
    Result := dmConsultas.qyConsDadosReqexa_matricula.Text
  else
    Result := '0';
end;

{--- Relatório de corte -------------------------------------------------------}

procedure RelatorioCorte;
begin
  dmConsultas.qyRelCorte.Close;
  dmConsultas.qyRelCorte.SQL.Clear;
  dmConsultas.qyRelCorte.SQL.Add('select e.exa_id, e.exa_data, e.exa_prioridade, p.top_id, t.top_descricao, ');
  dmConsultas.qyRelCorte.SQL.Add('h.eth_id, o.eth_descricao, p.etg_seq, b.ebl_seq, b.ebl_fragmentos, b.ebl_laminas ');
  dmConsultas.qyRelCorte.SQL.Add('from exames e, examestop p, topografias t, exameshist h, examestipohist o, examesblocos b ');
  dmConsultas.qyRelCorte.SQL.Add('where e.exa_id = p.exa_id ');
  dmConsultas.qyRelCorte.SQL.Add('and p.top_id = t.top_id ');
  dmConsultas.qyRelCorte.SQL.Add('and e.exa_id = h.exa_id ');
  dmConsultas.qyRelCorte.SQL.Add('and h.eth_id = o.eth_id ');
  dmConsultas.qyRelCorte.SQL.Add('and e.exa_id = h.exa_id ');
  dmConsultas.qyRelCorte.SQL.Add('and b.etg_id = p.etg_id ');
  dmConsultas.qyRelCorte.SQL.Add('and p.etg_id = b.etg_id ');
  dmConsultas.qyRelCorte.SQL.Add('and e.exa_etapa = 3 ');
  dmConsultas.qyRelCorte.SQL.Add('and ((e.etp_id = 2) or (e.etp_id = 3)) ');
  dmConsultas.qyRelCorte.SQL.Add('group by e.exa_id, e.exa_data, e.exa_prioridade, p.top_id, t.top_descricao, ');
  dmConsultas.qyRelCorte.SQL.Add('h.eth_id, o.eth_descricao, p.etg_seq, b.ebl_seq, b.ebl_fragmentos, b.ebl_laminas ');
  dmConsultas.qyRelCorte.SQL.Add('order by (e.exa_id, e.exa_data, e.exa_prioridade, p.top_id, t.top_descricao, ');
  dmConsultas.qyRelCorte.SQL.Add('h.eth_id, o.eth_descricao, p.etg_seq, b.ebl_seq, b.ebl_fragmentos, b.ebl_laminas)');
  //dmConsultas.qyRelCorte.SQL.Add('order by e.exa_id, p.top_id, b.ebl_seq');
  dmConsultas.qyRelCorte.Open;
end;

{--- Testa se o exame existe --------------------------------------------------}

function TestaExame(vfExame: String): boolean;
begin
  dmConsultas.QTemp.Close;
  dmConsultas.QTemp.SQL.Clear;
  dmConsultas.QTemp.SQL.Add('select exa_id from exames where exa_id = ');
  dmConsultas.QTemp.SQL.Add(QuotedStr(vfExame));
  dmConsultas.QTemp.Open;
  if dmConsultas.QTemp.Fields[0].IsNull then
    Result := false
  else
    Result := True;
end;

{--- Listar imunos e captura híbrida ------------------------------------------}

procedure ListarImunos(vfOrdem: String);
begin
  dmExames.qyExames.Close;
  dmExames.qyExames.SQL.Clear;
  dmExames.qyExames.SQL.Add('select ' + ctCampos + ' from ' + ctTabelas +
                            ' where e.pac_codigo = p.pac_codigo ' +
                            'and e.cov_codigo = c.cov_codigo ' +
                            'and e.med_codigo = m.med_codigo ' +
                            'and e.etp_id = t.etp_id ' +
                            'and e.res_codigo = r.res_codigo ' +
                            'and e.exa_origem = o.exl_id ' +
                            'and e.exa_destino = d.exl_id ' +
                            'and r.cos_id = s.cos_codigo ' +
                            //filtra imuno - etp_id = 4 e captura hibrida = 6
                            'and ((e.etp_id = 4) or (e.etp_id = 6))');
                            //filtra somente a etapa 2 e 3 dos exames
  dmExames.qyExames.SQL.Add('and ((e.exa_etapa = 2) or (e.exa_etapa = 3))');
  if vfOrdem <> '0' then
    dmExames.qyExames.SQL.Add(' order by ' + vfOrdem);
  dmExames.qyExames.Open;
end;

{--- Filtrar imunos e captura híbrida -----------------------------------------}

procedure FiltrarImuno(vfIDExame: String);
begin
  dmExames.qyExames.Close;
  dmExames.qyExames.SQL.Clear;
  dmExames.qyExames.SQL.Add('select ' + ctCampos + ' from ' + ctTabelas +
                            ' where e.pac_codigo = p.pac_codigo ' +
                            'and e.cov_codigo = c.cov_codigo ' +
                            'and e.med_codigo = m.med_codigo ' +
                            'and e.etp_id = t.etp_id ' +
                            'and e.res_codigo = r.res_codigo ' +
                            'and e.exa_origem = o.exl_id ' +
                            'and e.exa_destino = d.exl_id ' +
                            'and r.cos_id = s.cos_codigo ' +
                            //filtra imuno - etp_id = 4 e captura hibrida = 6
                            'and ((e.etp_id = 4) or (e.etp_id = 6)) ');
                            //filtra somente a etapa 2 e 3 dos exames
  dmExames.qyExames.SQL.Add('and ((e.exa_etapa = 2) or (e.exa_etapa = 3)) ');
  dmExames.qyExames.SQL.Add('and e.exa_id = ');
  dmExames.qyExames.SQL.Add(QuotedStr(vfIDExame));
  dmExames.qyExames.Open;
end;

{--- Verifica etapa do exame --------------------------------------------------}

function VerifEtapa(vfIDExame: String): Integer;
begin
  dmExames.QTemp.Close;
  dmExames.QTemp.SQL.Clear;
  dmExames.QTemp.SQL.Add('select exa_etapa from exames ');
  dmExames.QTemp.SQL.Add('where exa_id = ' + QuotedStr(vfIDExame));
  dmExames.QTemp.Open;
  if dmExames.QTemp.Fields[0].IsNull then
    Result := 0
  else
    Result := dmExames.QTemp.Fields[0].Value;
end;

end.
