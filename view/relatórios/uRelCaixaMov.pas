unit uRelCaixaMov;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpRelFormNormalDefault, ppDB, Data.DB,
  ppDBPipe, ppParameter, ppDesignLayer, ppCtrls, ppBands, ppPrnabl, ppClass,
  ppVar, ppCache, ppComm, ppRelatv, ppProd, ppReport, Vcl.StdCtrls, Vcl.Buttons,
  wwdblook, wwdbdatetimepicker;

type
  TfrmRelCaixaMov = class(TfrmTmpRelFormNormalDefault)
    ppDataSel: TppLabel;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLine5: TppLine;
    ppDBText8: TppDBText;
    ppLine1: TppLine;
    ppDBText2: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppDBCalc2: TppDBCalc;
    ppSummaryBand1: TppSummaryBand;
    ppLabel7: TppLabel;
    ppLabel6: TppLabel;
    ppDBCalc1: TppDBCalc;
    Label1: TLabel;
    edInicio: TwwDBDateTimePicker;
    Label2: TLabel;
    edFinal: TwwDBDateTimePicker;
    lbConta: TLabel;
    cbConta: TwwDBLookupCombo;
    cbTodas: TCheckBox;
    procedure FormActivate(Sender: TObject);
    procedure cbTodasClick(Sender: TObject);
    procedure btVisualizarClick(Sender: TObject);
    procedure btImprimirClick(Sender: TObject);
    procedure sbExportarClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelCaixaMov: TfrmRelCaixaMov;

implementation

{$R *.dfm}

uses uDaoRelatorios, dataConfig, dataLookups, dataFinanceiro;

procedure TfrmRelCaixaMov.btImprimirClick(Sender: TObject);
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
    ppDataSel.Caption := 'De: ' + edInicio.Text + ' até: ' + edFinal.Text;
    RelCaixa(edInicio.Text, edFinal.Text, vCodConta, 'm.mov_descricao, c.cai_data');
    inherited;
  end
  else
    MessageDlg('É necessário selecionar uma data inicial e final!', mtWarning, [mbok], 0);
end;

procedure TfrmRelCaixaMov.btVisualizarClick(Sender: TObject);
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
    ppDataSel.Caption := 'De: ' + edInicio.Text + ' até: ' + edFinal.Text;
    RelCaixa(edInicio.Text, edFinal.Text, vCodConta, 'm.mov_descricao, c.cai_data');
    inherited;
  end
  else
    MessageDlg('É necessário selecionar uma data inicial e final!', mtWarning, [mbok], 0);
end;

procedure TfrmRelCaixaMov.cbTodasClick(Sender: TObject);
begin
  if cbTodas.Checked = true then
  begin
    lbConta.Enabled := false;
    cbConta.Enabled := false;
    cbConta.Text := '';
  end
  else
  begin
    lbConta.Enabled := true;
    cbConta.Enabled := True;
    cbConta.Text := dmLookups.lkProcContascon_descricao.Text;
  end;
end;

procedure TfrmRelCaixaMov.FormActivate(Sender: TObject);
begin
  inherited;
  cbConta.Text := dmLookups.lkProcContascon_descricao.Text;
  cbTodas.Checked := false;
  lbConta.Enabled := true;
  cbConta.Enabled := True;
  edInicio.Clear;
  edFinal.Clear;
  edInicio.Date := now - 30;
  edFinal.Date := now;
  edInicio.SetFocus;
end;

procedure TfrmRelCaixaMov.sbExportarClick(Sender: TObject);
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
    ppDataSel.Caption := 'De: ' + edInicio.Text + ' até: ' + edFinal.Text;
    RelCaixa(edInicio.Text, edFinal.Text, vCodConta, 'm.mov_descricao, c.cai_data');
    inherited;
  end
  else
    MessageDlg('É necessário selecionar uma data inicial e final!', mtWarning, [mbok], 0);
end;

end.
