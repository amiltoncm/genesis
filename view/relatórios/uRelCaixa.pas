unit uRelCaixa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpRelFormNormalDefault, ppDB, Data.DB,
  ppDBPipe, ppParameter, ppDesignLayer, ppCtrls, ppBands, ppPrnabl, ppClass,
  ppVar, ppCache, ppComm, ppRelatv, ppProd, ppReport, Vcl.StdCtrls, Vcl.Buttons,
  wwdblook, wwdbdatetimepicker;

type
  TfrmRelCaixa = class(TfrmTmpRelFormNormalDefault)
    Label1: TLabel;
    edInicio: TwwDBDateTimePicker;
    cbTodas: TCheckBox;
    Label2: TLabel;
    edFinal: TwwDBDateTimePicker;
    lbConta: TLabel;
    cbConta: TwwDBLookupCombo;
    ppDataSel: TppLabel;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppLabel8: TppLabel;
    ppDBText11: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppLabel6: TppLabel;
    ppTotal: TppDBCalc;
    ppLabel7: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    lbGeral: TppLabel;
    lbSaldoAnt: TppLabel;
    ppLabel11: TppLabel;
    procedure FormActivate(Sender: TObject);
    procedure btVisualizarClick(Sender: TObject);
    procedure btImprimirClick(Sender: TObject);
    procedure sbExportarClick(Sender: TObject);
    procedure cbTodasClick(Sender: TObject);
    procedure ppTotalCalc(Sender: TObject);

  private
    vlSaldoAnt: Real;
    vlTotal: Real;

  public
    { Public declarations }
  end;

var
  frmRelCaixa: TfrmRelCaixa;

implementation

{$R *.dfm}

uses dataLookups, dataConfig, dataFinanceiro, uDaoRelatorios, dataConsultas;

procedure TfrmRelCaixa.btImprimirClick(Sender: TObject);
Var
vCodConta: String;
begin
  if cbTodas.Checked = false then
  begin
    if cbConta.Text <> '' then
      vCodConta := dmLookups.lkProcContascon_codigo.Text
    else
      vCodConta := '-1';
  end
  else
    vCodConta := '-1';
  if ((edInicio.Text <> '') and (edFinal.Text <> '')) then
  begin
    RelCaixa(edInicio.Text, edFinal.Text, vCodConta, 'c.cai_data');
    if not(dmConsultas.qyConsSaldoCaixa.Fields[0].IsNull) then
      vlSaldoAnt := dmConsultas.qyConsSaldoCaixa.Fields[0].Value
    else
      vlSaldoAnt := 0;
    lbSaldoAnt.Caption := FormatFloat('#,###,###,##0.00', vlSaldoAnt);
    inherited;
  end
  else
    MessageDlg('É necessário selecionar uma data inicial e final!', mtWarning, [mbok], 0);
end;

procedure TfrmRelCaixa.btVisualizarClick(Sender: TObject);
Var
vCodConta: String;
begin
  if cbTodas.Checked = false then
  begin
    if cbConta.Text <> '' then
      vCodConta := dmLookups.lkProcContascon_codigo.Text
    else
      vCodConta := '-1';
  end
  else
    vCodConta := '-1';
  if ((edInicio.Text <> '') and (edFinal.Text <> '')) then
  begin
    RelCaixa(edInicio.Text, edFinal.Text, vCodConta, 'c.cai_data');
    if not(dmConsultas.qyConsSaldoCaixa.Fields[0].IsNull) then
      vlSaldoAnt := dmConsultas.qyConsSaldoCaixa.Fields[0].Value
    else
      vlSaldoAnt := 0;
    lbSaldoAnt.Caption := FormatFloat('#,###,###,##0.00', vlSaldoAnt);
    inherited;
  end
  else
    MessageDlg('É necessário selecionar uma data inicial e final!', mtWarning, [mbok], 0);
end;

procedure TfrmRelCaixa.cbTodasClick(Sender: TObject);
begin
  if cbTodas.Checked = true then
  begin
    cbConta.Text := '';
    lbConta.Enabled := false;
    cbConta.Enabled := false;
  end
  else
  begin
    lbConta.Enabled := true;
    cbConta.Enabled := True;
    cbConta.Text := dmLookups.lkProcContascon_descricao.Text;
  end;
end;

procedure TfrmRelCaixa.FormActivate(Sender: TObject);
begin
  vlSaldoAnt := 0;
  vlTotal := 0;
  cbTodas.Checked := false;
  lbConta.Enabled := true;
  cbConta.Enabled := True;
  edInicio.Clear;
  edFinal.Clear;
  edInicio.SetFocus;
  edInicio.Date := now - 30;
  edFinal.Date := now;
  cbConta.Text := dmLookups.lkProcContascon_descricao.Text;
  inherited;
end;

procedure TfrmRelCaixa.ppTotalCalc(Sender: TObject);
begin
  vlTotal := ppTotal.Value + vlSaldoAnt;
  lbGeral.Text := FormatFloat('#,###,###,##0.00', vlTotal);
end;

procedure TfrmRelCaixa.sbExportarClick(Sender: TObject);
Var
vCodConta: String;
begin
  if cbTodas.Checked = false then
  begin
    if cbConta.Text <> '' then
      vCodConta := dmLookups.lkProcContascon_codigo.Text
    else
      vCodConta := '-1';
  end
  else
    vCodConta := '-1';
  if ((edInicio.Text <> '') and (edFinal.Text <> '')) then
  begin
    RelCaixa(edInicio.Text, edFinal.Text, vCodConta, 'c.cai_data');
    if not(dmConsultas.qyConsSaldoCaixa.Fields[0].IsNull) then
      vlSaldoAnt := dmConsultas.qyConsSaldoCaixa.Fields[0].Value
    else
      vlSaldoAnt := 0;
    lbSaldoAnt.Caption := FormatFloat('#,###,###,##0.00', vlSaldoAnt);
    inherited;
  end
  else
    MessageDlg('É necessário selecionar uma data inicial e final!', mtWarning, [mbok], 0);
end;

end.
