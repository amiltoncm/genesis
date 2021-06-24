unit uFuncoesCob;

interface

uses
  Windows, Messages, SysUtils, Classes;

procedure GeraHistMult(vfExame: String; vfHisId, vfCodConv, vfCodPac, vfCodMed: integer; vfValor: real);
procedure GeraCobMult(vfNomeCli: String; vfCodConv, vfCodCli, vfCodCob: integer; vfValor: real; vfHisID: Integer; vfPagoAnt: real);
procedure GeraCobranca(vfExame, vfNomeCli: String; vfCodConv, vfCodCli, vfCodCob, vfCodPac, vfCodMed: integer; vfValor: real; vfRecebido: real);
procedure ExcluiCobPkg(vfExame: String);
function BuscaVlrHist(vfHisID: String): real;

implementation

uses dataConsultas, dataFinanceiro, uFuncoesDB, uConfCobranca, uGeraCobranca, uConsReceber,
  uDaoHistRec, uDaoReceber, uClassReceber, uClassHistRec, uDaoExamesCob,
  uDaoRecTISS, uClassRecTISS;

procedure GeraHistMult(vfExame: String; vfHisId, vfCodConv, vfCodPac, vfCodMed: integer; vfValor: real);
begin
  //Grava histórico da geração de cobrança
  InsHistRec;
  dmFinanceiro.qyHistRechis_id.Value := vfHisId;
  dmFinanceiro.qyHistRechis_item.Value := GetCodigoComposto('his_item', 'histrec', 'his_id',
                                                            dmFinanceiro.qyHistRechis_id.Text);
  dmFinanceiro.qyHistRechis_data.Value := now;
  dmFinanceiro.qyHistRecexa_id.Text := vfExame;
  dmFinanceiro.qyHistReccov_codigo.Value := vfCodConv;
  dmFinanceiro.qyHistRecpac_codigo.Value := vfCodPac;
  dmFinanceiro.qyHistRechis_valor.Value := vfValor;
  dmFinanceiro.qyHistRechis_gercob.Text := 'S';
  dmFinanceiro.qyHistRecmed_codigo.Value := vfCodMed;
  PostHistRec;
  FiltrarExamesCob('exa_id', '=', vfExame, '0', '0');
  if not dmFinanceiro.qyExamesCobexa_id.IsNull then
  begin
    dmFinanceiro.qyExamesCob.Edit;
    dmFinanceiro.qyExamesCobhis_id.Value := dmFinanceiro.qyHistRechis_id.Value;
    dmFinanceiro.qyExamesCobeco_status.Value := true;
    dmFinanceiro.qyExamesCobeco_gerarcob.Value := true;
    dmFinanceiro.qyExamesCob.Post;
  end;
end;

procedure GeraCobMult(vfNomeCli: String; vfCodConv, vfCodCli, vfCodCob: integer; vfValor: real; vfHisID: Integer; vfPagoAnt: real);
Var
vCodCobranca: integer;
begin
  //Filtra tabela receber e não deixa nada gravado
  FiltrarReceber('r.rec_codigo', '=', '0', '0', '0' );
  //Gera cobrança na tabela receber
  InsReceber;
  vCodCobranca := GetCodigo('rec_codigo', 'receber');
  dmFinanceiro.qyReceberrec_codigo.Value := vCodCobranca;
  dmFinanceiro.qyReceberrec_emissao.Value := now;
  dmFinanceiro.qyReceberrec_vencimento.Value := now + 14;
  dmFinanceiro.qyRecebercov_codigo.Value := vfCodConv;
  dmFinanceiro.qyReceberrec_codcliente.Value := vfCodCli;
  dmFinanceiro.qyReceberrec_nome.Text := vfNomeCli;
  dmFinanceiro.qyReceberrec_valor.Value := vfValor;
  dmFinanceiro.qyReceberrec_saldo.Value := vfValor - vfPagoAnt;
  dmFinanceiro.qyReceberrec_pago.Value := vfPagoAnt;
  dmFinanceiro.qyReceberrec_status.Text := 'A';
  dmFinanceiro.qyRecebercob_codigo.Value := vfCodCob;
  dmFinanceiro.qyReceberhis_id.Value := vfHisID;
  PostReceber;
  //Filtra tabela receber e deixando apenas a nova cobranca
  FiltrarReceber('r.rec_codigo', '=', IntToStr(vCodCobranca), '0', '0' );
  //Atualiza tabela rectiss
  dmFinanceiro.qyRecTiss.Insert;
  dmFinanceiro.qyRecTissrti_id.Value := GetCodigo('rti_id', 'rectiss');
  dmFinanceiro.qyRecTissrec_codigo.Value := vCodCobranca;
  dmFinanceiro.qyRecTissrti_gerado.Value := false;
  dmFinanceiro.qyRecTissrti_lote.Value := 0;
  dmFinanceiro.qyRecTiss.Post;
  frmConfCobranca.ShowModal;
end;

procedure GeraCobranca(vfExame, vfNomeCli: String; vfCodConv, vfCodCli, vfCodCob, vfCodPac, vfCodMed: integer; vfValor: real; vfRecebido: real);
Var
vReceber: TReceber;
vHistRec: THistRec;
vRecTISS: TRecTISS;
begin
  vHistRec := THistRec.Create;
  vHistRec.Data := now;
  vHistRec.ExaID := vfExame;
  vHistRec.IDConv := vfCodConv;
  vHistRec.IDPac := vfCodPac;
  vHistRec.Valor := vfValor;
  vHistRec.Gercob := 'S';
  vHistRec.IDMed := vfCodMed;
  vHistRec.Status := 'N';
  vHistRec.Baixar := 'N';
  //Grava histórico da geração de cobrança
  InsHistRec;
  SetValuesHistRec(vHistRec);
  PostHistRec;
  vHistRec.Free;
  vReceber := TReceber.Create;
  vReceber.Emissao := now;
  vReceber.Vencimento := now + 14;
  vReceber.CodConvenio := vfCodConv;
  vReceber.CodCliente := vfCodCli;
  vReceber.Nome := vfNomeCli;
  vReceber.Valor := vfValor;
  vReceber.Pago := vfRecebido;
  vReceber.Saldo := vfValor - vfRecebido; //desconta valor já recebido.
  vReceber.Acrescimo := 0;
  vReceber.Desconto := 0;
  vReceber.Status := 'A';
  vReceber.CodCob := vfCodCob;
  vReceber.IdHist := dmFinanceiro.qyHistRechis_id.Value;
  //Gera cobrança na tabela receber
  InsReceber;
  SetValuesReceber(vReceber);
  PostReceber;
  vReceber.Free;
  //Filtra a tabela receber para ficar apenas este registro
  FiltrarReceber('r.rec_codigo', '=', dmFinanceiro.qyReceberrec_codigo.Text, '0', '0');
  //Atualiza status tabela examescob
  if not dmFinanceiro.qyReceberrec_codigo.IsNull then
  begin
    //filtra tabela ExamesCob e edita
    FiltrarExamesCob('exa_id', '=', vfExame, '0', '0');
    EdtExamesCob;
    UpdExamesCob(dmFinanceiro.qyHistRechis_id.Value, true, true);
    PostExamesCob;
    //Atualiza tabela rectiss
    vRecTISS := TRecTISS.Create;
    vRecTISS.RecCodigo := dmFinanceiro.qyReceberrec_codigo.Value;
    vRecTISS.Gerado := false;
    vRecTISS.Lote := 0;
    vRecTISS.NGuias := 0;
    InsRecTISS;
    SetValuesRecTISS(vRecTISS);
    PostRecTISS;
    vRecTISS.Free;
    //Abre fromulário para confirmar a cobrança
    frmConfCobranca.ShowModal;
    //Atualiza frnGeraCobranca
  end;
end;

procedure ExcluiCobPkg(vfExame: String);
Var
vNovoVlrPago: real;
vNovoValor: real;
begin
  vNovoValor := 0;
  vNovoVlrPago := 0;
  //insere obs recobs
  dmFinanceiro.qyRecObs.Close;
  dmFinanceiro.qyRecObs.SQL.Clear;
  dmFinanceiro.qyRecObs.SQL.Add('select rob_id, rob_data, rec_codigo, rob_obs ');
  dmFinanceiro.qyRecObs.SQL.Add('from recobs where rec_codigo = ');
  dmFinanceiro.qyRecObs.SQL.Add(QuotedStr(dmConsultas.qyConsReceberrec_codigo.Text));
  dmFinanceiro.qyRecObs.Open;
  dmFinanceiro.qyRecObs.Insert;
  dmFinanceiro.qyRecObsrob_id.Value := GetCodigo('rob_id', 'recobs');
  dmFinanceiro.qyRecObsrob_data.Value := now;
  dmFinanceiro.qyRecObsrec_codigo.Text := dmConsultas.qyConsReceberrec_codigo.Text;
  dmFinanceiro.qyRecObsrob_obs.Text := 'Excluído exame: ' + dmConsultas.qyConsRecExamesexa_id.Text;
  dmFinanceiro.qyRecObs.Post;
  //volta campos examecob
  FiltrarExamesCob('exa_id', '=', dmConsultas.qyConsRecExamesexa_id.Text, '0', '0');
  dmFinanceiro.qyExamesCob.Edit;
  dmFinanceiro.qyExamesCobhis_id.Value := 0;
  dmFinanceiro.qyExamesCobeco_status.Value := false;
  dmFinanceiro.qyExamesCobeco_gerarcob.Value := false;
  dmFinanceiro.qyExamesCob.Post;
  //excluir histrec
  FiltrarHistRec('exa_id', '=', dmConsultas.qyConsRecExamesexa_id.Text, '0', '0');
  dmFinanceiro.qyHistRec.delete;
  //atualizar receber
  dmFinanceiro.QTemp.Close;
  dmFinanceiro.QTemp.SQL.Clear;
  dmFinanceiro.QTemp.SQL.Add('select sum(eco_valor) from examescob ');
  dmFinanceiro.QTemp.SQL.Add('where his_id = ');
  dmFinanceiro.QTemp.SQL.Add(QuotedStr(dmConsultas.qyConsReceberhis_id.Text));
  dmFinanceiro.QTemp.Open;
  if not(dmFinanceiro.QTemp.Fields[0].IsNull) then
    vNovoValor := dmFinanceiro.QTemp.Fields[0].Value
  else
    vNovoValor := 0;
  dmFinanceiro.QTemp.Close;
  dmFinanceiro.QTemp.SQL.Clear;
  dmFinanceiro.QTemp.SQL.Add('select sum(eco_vlrpago) from examescob ');
  dmFinanceiro.QTemp.SQL.Add('where his_id = ');
  dmFinanceiro.QTemp.SQL.Add(QuotedStr(dmConsultas.qyConsReceberhis_id.Text));
  dmFinanceiro.QTemp.Open;
  if not(dmFinanceiro.QTemp.Fields[0].IsNull) then
    vNovoVlrPago := dmFinanceiro.QTemp.Fields[0].Value
  else
    vNovoValor := 0;
  FiltrarReceber('r.rec_codigo', '=', dmConsultas.qyConsReceberrec_codigo.Text, '0', '0');
  dmFinanceiro.qyReceber.Edit;
  dmFinanceiro.qyReceberrec_valor.Value := vNovoValor;
  dmFinanceiro.qyReceberrec_acrescimo.Value := 0;
  dmFinanceiro.qyReceberrec_desconto.Value := 0;
  dmFinanceiro.qyReceberrec_pago.Value := vNovoVlrPago;
  dmFinanceiro.qyReceberrec_saldo.Value := vNovoValor - vNovoVlrPago;
  if vNovoValor = 0 then
  begin
    dmFinanceiro.qyReceberrec_status.Text := 'E';
    dmFinanceiro.qyRecObs.Insert;
    dmFinanceiro.qyRecObsrob_id.Value := GetCodigo('rob_id', 'recobs');
    dmFinanceiro.qyRecObsrob_data.Value := now;
    dmFinanceiro.qyRecObsrec_codigo.Text := dmConsultas.qyConsReceberrec_codigo.Text;
    dmFinanceiro.qyRecObsrob_obs.Text := 'Excluído título: todo os exames foram excluídos!';
    dmFinanceiro.qyRecObs.Post;
  end;
  dmFinanceiro.qyReceber.Post;
  //abre janela para confirmação
  frmConfCobranca.ShowModal;
  frmConsReceber.dsExames.DataSet.Refresh;
  frmConsReceber.dsConsulta.DataSet.Refresh;
  frmConsReceber.dsObs.DataSet.Refresh;
end;

function BuscaVlrHist(vfHisID: String): real;
begin
  dmConsultas.QTemp.Close;
  dmConsultas.QTemp.SQl.Clear;
  dmConsultas.QTemp.SQL.Add('select sum(his_valor) from histrec ');
  dmConsultas.QTemp.SQL.Add('where his_id = ');
  dmConsultas.QTemp.SQL.Add(QuotedStr(vfHisID));
  dmConsultas.QTemp.Open;
  if dmConsultas.QTemp.Fields[0].IsNull  then
    Result := -1
  else
    Result := dmConsultas.QTemp.Fields[0].Value;
end;

end.
