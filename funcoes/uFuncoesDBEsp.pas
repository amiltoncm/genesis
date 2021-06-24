unit uFuncoesDBEsp;

interface

uses SysUtils, Dialogs, ClipBrd;

function TestaTipo(vfIDExame: String): boolean;
function GetCodigoExame(vfTipo: String): String;
function NumerosCit(vfKey : Char): Char;
procedure FiltrarLogs(vIDExame: String);
function GetDataFinal(vfExame: String): String;
function UserExists(vfNome: String): boolean;

implementation

uses dataTmpConexao, dataConsultas, uDaoExamesTp, uExamesLog, dataCadastros,
  uVarGlobal;

function TestaTipo(vfIDExame: String): boolean;
Var
vResult: Boolean;
vLetraEx: String;
vLetraTp: String;
begin
  vResult := false;
  vLetraEx := vfIDExame[3];
  dmConsultas.qyConsTpExame.Close;
  dmConsultas.qyConsTpExame.SQL.Clear;
  dmConsultas.qyConsTpExame.SQL.Add('select E.exa_id, E.etp_id, T.etp_abrev ');
  dmConsultas.qyConsTpExame.SQL.Add('from exames E,examestp T ');
  dmConsultas.qyConsTpExame.SQL.Add('where E.etp_id = T.etp_id ');
  dmConsultas.qyConsTpExame.SQL.Add('and E.exa_id = ');
  dmConsultas.qyConsTpExame.SQL.Add(QuotedStr(vfIDExame));
  dmConsultas.qyConsTpExame.Open;
  vLetraTp := dmConsultas.qyConsTpExameetp_abrev.Text;
  if vLetraTp = vLetraEx then
    vResult := true
  else
    vResult := false;
  result := vResult;
end;

function GetCodigoExame(vfTipo: String): String;
Var
vCodigo: Integer;
vResult: String;
vAnoFim: String[2];
vLetra: String;
vAno, vDataInicio, vDataFinal: String;
begin
  //pega dois dígitos finais do ano
  vAnoFim := (FormatDateTime('yy', date));
  //Pega data inicial e final
  vAno := (FormatDateTime('yyyy', date));
  vDataInicio := vAno + '/01/01';
  vDataFinal := vAno + '/12/31';
  //filtra para saber o número de exames tipo 0 E 1 (Cito e Cito especial)
  if ((vfTipo = '000') or (vfTipo = '001') or (vfTipo = '005')) then
  begin
    dmTmpConexao.QGeraCodigo.Close;
    dmTmpConexao.QGeraCodigo.SQL.Clear;
    dmTmpConexao.QGeraCodigo.SQL.Add('select count(exa_id) from exames where (etp_id = ');
    dmTmpConexao.QGeraCodigo.SQL.Add(QuotedStr('0'));
    dmTmpConexao.QGeraCodigo.SQL.Add(' or etp_id = ');
    dmTmpConexao.QGeraCodigo.SQL.Add(QuotedStr('1'));
    dmTmpConexao.QGeraCodigo.SQL.Add(' or etp_id = ');
    dmTmpConexao.QGeraCodigo.SQL.Add(QuotedStr('5'));
    dmTmpConexao.QGeraCodigo.SQL.Add(') and exa_data between ');
    dmTmpConexao.QGeraCodigo.SQL.Add(QuotedStr(vDataInicio));
    dmTmpConexao.QGeraCodigo.SQL.Add(' and ');
    dmTmpConexao.QGeraCodigo.SQL.Add(QuotedStr(vDataFinal));
    dmTmpConexao.QGeraCodigo.Open;
    vCodigo := StrToInt(dmTmpConexao.QGeraCodigo.Fields[0].Text) + 1;
  end
  else
    if ((vfTipo = '004') or (vfTipo = '006')) then
    begin
      dmTmpConexao.QGeraCodigo.Close;
      dmTmpConexao.QGeraCodigo.SQL.Clear;
      dmTmpConexao.QGeraCodigo.SQL.Add('select count(exa_id) from exames where (etp_id = ');
      dmTmpConexao.QGeraCodigo.SQL.Add('4');
      dmTmpConexao.QGeraCodigo.SQL.Add(' or etp_id = ');
      dmTmpConexao.QGeraCodigo.SQL.Add('6)');
      dmTmpConexao.QGeraCodigo.SQL.Add(' and exa_data between ');
      dmTmpConexao.QGeraCodigo.SQL.Add(QuotedStr(vDataInicio));
      dmTmpConexao.QGeraCodigo.SQL.Add(' and ');
      dmTmpConexao.QGeraCodigo.SQL.Add(QuotedStr(vDataFinal));
      Clipboard.AsText := dmTmpConexao.QGeraCodigo.SQL.Text;
      dmTmpConexao.QGeraCodigo.Open;
      vCodigo := StrToInt(dmTmpConexao.QGeraCodigo.Fields[0].Text) + 1;
    end
    else
    begin
      dmTmpConexao.QGeraCodigo.Close;
      dmTmpConexao.QGeraCodigo.SQL.Clear;
      dmTmpConexao.QGeraCodigo.SQL.Add('select count(exa_id) from exames where etp_id = ');
      dmTmpConexao.QGeraCodigo.SQL.Add(QuotedStr(vfTipo));
      dmTmpConexao.QGeraCodigo.SQL.Add(' and exa_data between ');
      dmTmpConexao.QGeraCodigo.SQL.Add(QuotedStr(vDataInicio));
      dmTmpConexao.QGeraCodigo.SQL.Add(' and ');
      dmTmpConexao.QGeraCodigo.SQL.Add(QuotedStr(vDataFinal));
      dmTmpConexao.QGeraCodigo.Open;
      vCodigo := StrToInt(dmTmpConexao.QGeraCodigo.Fields[0].Text) + 1;
    end;
  //filtra para saber a letra a ser utilizada
  FiltrarExamesTp('etp_id', '=', vfTipo, '0', '1');
  vLetra := dmCadastros.qyExamesTpetp_abrev.text;
  Begin
  if vCodigo >= 1000000 then
    vResult := vAnoFim + vLetra + IntToStr((vCodigo))
    else
    if vCodigo >= 100000 then
      vResult := vAnoFim + vLetra + '0' + IntToStr((vCodigo))
      else
      if vCodigo >= 10000 then
        vResult := vAnoFim + vLetra + '00' + IntToStr((vCodigo))
        else
        if vCodigo >= 1000 then
          vResult := vAnoFim + vLetra +'000' + IntToStr((vCodigo))
          else
          if vCodigo >= 100 then
            vResult := vAnoFim + vLetra + '0000' + IntToStr((vCodigo))
            else
            if vCodigo >= 10 then
              vResult := vAnoFim + vLetra + '00000' + IntToStr((vCodigo))
              else
              if vCodigo >= 1 then
                vResult := vAnoFim + vLetra + '000000' + IntToStr((vCodigo));
  end;
  result := vResult;
end;

function NumerosCit(vfKey : Char): Char;
begin
  if not ( vfkey in [ '0'..'9', chr(8), chr(67), chr(99)]) then
    Result := #0
  else
    Result := vfKey;
end;

procedure FiltrarLogs(vIDExame: String);
begin
  dmConsultas.qyConsDivExames.Close;
  dmConsultas.qyConsDivExames.SQL.Clear;
  dmConsultas.qyConsDivExames.SQL.Add('select e.exa_id, e.exa_data, e.pac_codigo, p.pac_nome, p.pac_dtnasc, ');
  dmConsultas.qyConsDivExames.SQL.Add('e.pac_idade, e.pac_meses, e.cov_codigo, e.exa_matricula, e.exa_guia, ');
  dmConsultas.qyConsDivExames.SQL.Add('e.med_codigo, e.exa_etapa, e.exa_prioridade, e.exa_dataprior, e.exa_obs, ');
  dmConsultas.qyConsDivExames.SQL.Add('e.exa_origem, e.exa_destino, e.etp_id, e.res_codigo from exames E, pacientes P ');
  dmConsultas.qyConsDivExames.SQL.Add('where E.pac_codigo = p.pac_codigo ');
  dmConsultas.qyConsDivExames.SQL.Add('and e.exa_id >= ');
  dmConsultas.qyConsDivExames.SQL.Add(QuotedStr(vIDExame));
  dmConsultas.qyConsDivExames.Open;
  //filtra logs do exame
  if ((dmConsultas.qyConsDivExamesetp_id.Value = 0) or (dmConsultas.qyConsDivExamesetp_id.Value = 1) or (dmConsultas.qyConsDivExamesetp_id.Value = 5)) then //Citologia
  Begin
    dmConsultas.qyConsLogs.Close;
    dmConsultas.qyConsLogs.SQL.Clear;
    dmConsultas.qyConsLogs.SQL.Add('select l.log_data as data, l.log_hora as hora, ');
    dmConsultas.qyConsLogs.SQL.Add('u.usu_nome as usuario, c.cet_id as etapa, c.cet_descricao as descricao ');
    dmConsultas.qyConsLogs.SQL.Add('from exames e, exameslog l, usuarios u, citoetapas c ');
    dmConsultas.qyConsLogs.SQL.Add('where l.usu_codigo = u.usu_codigo ');
    dmConsultas.qyConsLogs.SQL.Add('and e.exa_id = l.exa_id ');
    dmConsultas.qyConsLogs.SQL.Add('and c.cet_id = eta_id ');
    dmConsultas.qyConsLogs.SQL.Add('and e.exa_id = ');
    dmConsultas.qyConsLogs.SQL.Add(QuotedStr(vIDExame));
    dmConsultas.qyConsLogs.SQL.Add('order by l.log_data desc, l.log_hora desc');
    dmConsultas.qyConsLogs.Open;
    //seta etapa atual
    dmConsultas.qyConsEtapaExame.Close;
    dmConsultas.qyConsEtapaExame.SQL.Clear;
    dmConsultas.qyConsEtapaExame.SQL.Add('select C.cet_id, C.cet_descricao ');
    dmConsultas.qyConsEtapaExame.SQL.Add('from citoetapas C, Exames E ');
    dmConsultas.qyConsEtapaExame.SQL.Add('where E.exa_etapa = C.cet_id ');
    dmConsultas.qyConsEtapaExame.SQL.Add('and E.exa_id = ');
    dmConsultas.qyConsEtapaExame.SQL.Add(QuotedStr(vIDExame));
    dmConsultas.qyConsEtapaExame.Open;
    frmExamesLog.lbEtapaAtual.Caption := dmConsultas.qyConsEtapaExame.Fields[0].Text +
                            ' - ' +
                            dmConsultas.qyConsEtapaExame.Fields[1].Text;
    //seta última alteração
    dmConsultas.qyConsUltAlt.Close;
    dmConsultas.qyConsUltAlt.SQL.Clear;
    dmConsultas.qyConsUltAlt.SQL.Add('select max(log_data) from exameslog ');
    dmConsultas.qyConsUltAlt.SQL.Add('where exa_id = ');
    dmConsultas.qyConsUltAlt.SQL.Add(QuotedStr(vIDExame));
    dmConsultas.qyConsUltAlt.Open;
    frmExamesLog.lbUltAlt.Caption := FormatDateTime('dd/mm/yyyy', (dmConsultas.qyConsUltAlt.fields[0].Value));
  end
  else
    if ((dmConsultas.qyConsDivExamesetp_id.Value = 2) or (dmConsultas.qyConsDivExamesetp_id.Value = 3)) then //Histologia
    Begin
      dmConsultas.qyConsLogs.Close;
      dmConsultas.qyConsLogs.SQL.Clear;
      dmConsultas.qyConsLogs.SQL.Add('select l.log_data as data, l.log_hora as hora, ');
      dmConsultas.qyConsLogs.SQL.Add('u.usu_nome as usuario, h.het_id as etapa, h.het_descricao as descricao ');
      dmConsultas.qyConsLogs.SQL.Add('from exames e, exameslog l, usuarios u, histoetapas h ');
      dmConsultas.qyConsLogs.SQL.Add('where l.usu_codigo = u.usu_codigo ');
      dmConsultas.qyConsLogs.SQL.Add('and e.exa_id = l.exa_id ');
      dmConsultas.qyConsLogs.SQL.Add('and h.het_id = eta_id ');
      dmConsultas.qyConsLogs.SQL.Add('and e.exa_id = ');
      dmConsultas.qyConsLogs.SQL.Add(QuotedStr(vIDExame));
      dmConsultas.qyConsLogs.SQL.Add('order by l.log_data desc, l.log_hora desc');
      dmConsultas.qyConsLogs.Open;
      //seta etapa atual
      dmConsultas.qyConsEtapaExame.Close;
      dmConsultas.qyConsEtapaExame.SQL.Clear;
      dmConsultas.qyConsEtapaExame.SQL.Add('select H.het_id, H.het_descricao ');
      dmConsultas.qyConsEtapaExame.SQL.Add('from histoetapas H, exames E ');
      dmConsultas.qyConsEtapaExame.SQL.Add('where H.het_id = E.exa_etapa ');
      dmConsultas.qyConsEtapaExame.SQL.Add('and E.exa_id = ');
      dmConsultas.qyConsEtapaExame.SQL.Add(QuotedStr(vIDExame));
      dmConsultas.qyConsEtapaExame.Open;
      frmExamesLog.lbEtapaAtual.Caption := dmConsultas.qyConsEtapaExame.Fields[0].Text +
                              ' - ' +
                              dmConsultas.qyConsEtapaExame.Fields[1].Text;
      //seta última alteração
      dmConsultas.qyConsUltAlt.Close;
      dmConsultas.qyConsUltAlt.SQL.Clear;
      dmConsultas.qyConsUltAlt.SQL.Add('select max(log_data) from exameslog ');
      dmConsultas.qyConsUltAlt.SQL.Add('where exa_id = ');
      dmConsultas.qyConsUltAlt.SQL.Add(QuotedStr(vIDExame));
      dmConsultas.qyConsUltAlt.Open;
      frmExamesLog.lbUltAlt.Caption := FormatDateTime('dd/mm/yyyy', (dmConsultas.qyConsUltAlt.fields[0].Value));
    end
    else
    if ((dmConsultas.qyConsDivExamesetp_id.Value = 4) or (dmConsultas.qyConsDivExamesetp_id.Value = 6)) then //Imuno ou Captura Híbrida
    begin
      dmConsultas.qyConsLogs.Close;
      dmConsultas.qyConsLogs.SQL.Clear;
      dmConsultas.qyConsLogs.SQL.Add('select l.log_data as data, l.log_hora as hora, ');
      dmConsultas.qyConsLogs.SQL.Add('u.usu_nome as usuario, h.het_id as etapa, h.het_descricao as descricao ');
      dmConsultas.qyConsLogs.SQL.Add('from exames e, exameslog l, usuarios u, imunoetapas i ');
      dmConsultas.qyConsLogs.SQL.Add('where l.usu_codigo = u.usu_codigo ');
      dmConsultas.qyConsLogs.SQL.Add('and e.exa_id = l.exa_id ');
      dmConsultas.qyConsLogs.SQL.Add('and i.imu_id = eta_id ');
      dmConsultas.qyConsLogs.SQL.Add('and e.exa_id = ');
      dmConsultas.qyConsLogs.SQL.Add(QuotedStr(vIDExame));
      dmConsultas.qyConsLogs.SQL.Add('order by l.log_data desc, l.log_hora desc');
      dmConsultas.qyConsLogs.Open;
      //seta etapa atual
      dmConsultas.qyConsEtapaExame.Close;
      dmConsultas.qyConsEtapaExame.SQL.Clear;
      dmConsultas.qyConsEtapaExame.SQL.Add('select i.imu_id, i.imu_descricao ');
      dmConsultas.qyConsEtapaExame.SQL.Add('from imunoetapas I, exames E ');
      dmConsultas.qyConsEtapaExame.SQL.Add('where I.imu_id = E.exa_etapa ');
      dmConsultas.qyConsEtapaExame.SQL.Add('and E.exa_id = ');
      dmConsultas.qyConsEtapaExame.SQL.Add(QuotedStr(vIDExame));
      dmConsultas.qyConsEtapaExame.Open;
      frmExamesLog.lbEtapaAtual.Caption := dmConsultas.qyConsEtapaExame.Fields[0].Text +
                              ' - ' +
                              dmConsultas.qyConsEtapaExame.Fields[1].Text;
      //seta última alteração
      dmConsultas.qyConsUltAlt.Close;
      dmConsultas.qyConsUltAlt.SQL.Clear;
      dmConsultas.qyConsUltAlt.SQL.Add('select max(log_data) from exameslog ');
      dmConsultas.qyConsUltAlt.SQL.Add('where exa_id = ');
      dmConsultas.qyConsUltAlt.SQL.Add(QuotedStr(vIDExame));
      dmConsultas.qyConsUltAlt.Open;
      frmExamesLog.lbUltAlt.Caption := FormatDateTime('dd/mm/yyyy', (dmConsultas.qyConsUltAlt.fields[0].Value));
    end
      else //precisa para limpar resultados anteriores na consulta caso não tenha nada agora.
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
        dmConsultas.qyConsLogs.SQL.Add(QuotedStr(vIDExame));
        dmConsultas.qyConsLogs.SQL.Add('order by l.eta_id, l.log_data, l.log_hora');
        dmConsultas.qyConsLogs.Open;
      end;
  frmExamesLog.Caption := 'Logs do exame: ' + vIDExame;
end;

function GetDataFinal(vfExame: String): String;
begin
  dmConsultas.QTemp.Close;
  dmConsultas.QTemp.SQL.Clear;
  dmConsultas.QTemp.SQL.Add('select exa_data from examesfinal where exa_id = ');
  dmConsultas.QTemp.SQL.Add(QuotedStr(vfExame));
  dmConsultas.QTemp.open;
  if Not(dmConsultas.QTemp.Fields[0].IsNull) then
    result := FormatDateTime(vgMaskData, (dmConsultas.QTemp.Fields[0].Value))
  else
    result := '01/01/2000';
end;

function UserExists(vfNome: String): boolean;
begin
  dmConsultas.QTemp.Close;
  dmConsultas.QTemp.SQL.Clear;
  dmConsultas.QTemp.SQL.Add('select usu_nome from usuarios ');
  dmConsultas.QTemp.SQL.Add('where usu_nome = ' + QuotedStr(vfNome));
  dmConsultas.QTemp.Open;
  if dmConsultas.QTemp.Fields[0].IsNull then
    Result := False
  else
    Result := True;
end;

end.
