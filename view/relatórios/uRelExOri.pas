unit uRelExOri;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpRelFormNormalDefault, ppDB, Data.DB,
  ppDBPipe, ppParameter, ppDesignLayer, ppCtrls, ppBands, ppPrnabl, ppClass,
  ppVar, ppCache, ppComm, ppRelatv, ppProd, ppReport, Vcl.StdCtrls, Vcl.Buttons,
  wwdblook, wwdbdatetimepicker, myChkBox;

type
  TfrmRelExOri = class(TfrmTmpRelFormNormalDefault)
    Label1: TLabel;
    edInicio: TwwDBDateTimePicker;
    Label3: TLabel;
    cbOrigem: TwwDBLookupCombo;
    cbConcluidos: TCheckBox;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLabel9: TppLabel;
    ppDBText7: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText6: TppDBText;
    ppDBText4: TppDBText;
    ppLabel8: TppLabel;
    ppDBText5: TppDBText;
    ppDBText8: TppDBText;
    myDBCheckBox1: TmyDBCheckBox;
    ppLabel10: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppSummaryBand1: TppSummaryBand;
    ppLine1: TppLine;
    ppLabel11: TppLabel;
    ppDBCalc2: TppDBCalc;
    procedure btVisualizarClick(Sender: TObject);
    procedure btImprimirClick(Sender: TObject);
    procedure sbExportarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelExOri: TfrmRelExOri;

implementation

{$R *.dfm}

uses dataConsultas, dataConfig, dataLookups, uDaoRelatorios;

procedure TfrmRelExOri.btImprimirClick(Sender: TObject);
Var
vCodOri: String;
begin
  if cbOrigem.Text = '' then
    vCodOri := '-1'
  else
    vCodOri := dmLookups.lkProcOrigemexl_id.Text;
  if edInicio.Text <> ''  then
  begin
    RelExamesOrigem(edInicio.Text, cbConcluidos.Checked, vCodOri);
    inherited;
  end
  else
    MessageDlg('É necessário selecionar uma data inicial!', mtWarning, [mbok], 0);
end;

procedure TfrmRelExOri.btVisualizarClick(Sender: TObject);
Var
vCodOri: String;
begin
  if cbOrigem.Text = '' then
    vCodOri := '-1'
  else
    vCodOri := dmLookups.lkProcOrigemexl_id.Text;
  if edInicio.Text <> ''  then
  begin
    RelExamesOrigem(edInicio.Text, cbConcluidos.Checked, vCodOri);
    inherited;
  end
  else
    MessageDlg('É necessário selecionar uma data inicial!', mtWarning, [mbok], 0);
end;

procedure TfrmRelExOri.FormActivate(Sender: TObject);
begin
  inherited;
  edInicio.Date := now - 90;
  cbOrigem.Clear;
  cbConcluidos.Checked := True;
  edInicio.SetFocus;
end;

procedure TfrmRelExOri.sbExportarClick(Sender: TObject);
Var
vCodOri: String;
begin
  if cbOrigem.Text = '' then
    vCodOri := '-1'
  else
    vCodOri := dmLookups.lkProcOrigemexl_id.Text;
  if edInicio.Text <> ''  then
  begin
    RelExamesOrigem(edInicio.Text, cbConcluidos.Checked, vCodOri);
    inherited;
  end
  else
    MessageDlg('É necessário selecionar uma data inicial!', mtWarning, [mbok], 0);
end;

end.
