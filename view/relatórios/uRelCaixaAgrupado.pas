unit uRelCaixaAgrupado;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpRelFormNormalDefault, ppDB, Data.DB,
  ppDBPipe, ppParameter, ppDesignLayer, ppCtrls, ppBands, ppPrnabl, ppClass,
  ppVar, ppCache, ppComm, ppRelatv, ppProd, ppReport, Vcl.StdCtrls, Vcl.Buttons,
  wwdblook, wwdbdatetimepicker;

type
  TfrmRelCaixaAgrupado = class(TfrmTmpRelFormNormalDefault)
    Label1: TLabel;
    edInicio: TwwDBDateTimePicker;
    Label5: TLabel;
    edFinal: TwwDBDateTimePicker;
    lbConta: TLabel;
    cbConta: TwwDBLookupCombo;
    cbTodas: TCheckBox;
    ppLabel1: TppLabel;
    ppLabel5: TppLabel;
    ppDataSel: TppLabel;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText7: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppLabel7: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppTotal: TppDBCalc;
    procedure cbTodasClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btVisualizarClick(Sender: TObject);
    procedure btImprimirClick(Sender: TObject);
    procedure sbExportarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelCaixaAgrupado: TfrmRelCaixaAgrupado;

implementation

{$R *.dfm}

uses dataConsultas, dataConfig, dataLookups, uDaoRelatorios;

procedure TfrmRelCaixaAgrupado.btImprimirClick(Sender: TObject);
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
    RelCaixaAgr(edInicio.Text, edFinal.Text, vCodConta);
    ppDataSel.caption := 'De: ' + edInicio.Text + ' até: ' + edFinal.Text;
    inherited;
  end
  else
    MessageDlg('É necessário selecionar uma data inicial e final!', mtWarning, [mbok], 0);
end;

procedure TfrmRelCaixaAgrupado.btVisualizarClick(Sender: TObject);
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
    RelCaixaAgr(edInicio.Text, edFinal.Text, vCodConta);
    ppDataSel.caption := 'De: ' + edInicio.Text + ' até: ' + edFinal.Text;
    inherited;
  end
  else
    MessageDlg('É necessário selecionar uma data inicial e final!', mtWarning, [mbok], 0);
end;

procedure TfrmRelCaixaAgrupado.cbTodasClick(Sender: TObject);
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

procedure TfrmRelCaixaAgrupado.FormActivate(Sender: TObject);
begin
  inherited;
  edInicio.Clear;
  edFinal.Clear;
  edInicio.Date := now - 30;
  edFinal.Date := now;
  cbTodas.Checked := false;
  lbConta.Enabled := true;
  cbConta.Enabled := True;
  cbConta.Text := dmLookups.lkProcContascon_descricao.Text;
  edInicio.SetFocus;
end;

procedure TfrmRelCaixaAgrupado.sbExportarClick(Sender: TObject);
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
    RelCaixaAgr(edInicio.Text, edFinal.Text, vCodConta);
    ppDataSel.caption := 'De: ' + edInicio.Text + ' até: ' + edFinal.Text;
    inherited;
  end
  else
    MessageDlg('É necessário selecionar uma data inicial e final!', mtWarning, [mbok], 0);
end;

end.
