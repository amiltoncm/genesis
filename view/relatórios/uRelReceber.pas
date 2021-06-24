unit uRelReceber;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpRelFormNormalDefault, ppDB, Data.DB,
  ppDBPipe, ppParameter, ppDesignLayer, ppCtrls, ppBands, ppPrnabl, ppClass,
  ppVar, ppCache, ppComm, ppRelatv, ppProd, ppReport, Vcl.StdCtrls, Vcl.Buttons,
  wwdbdatetimepicker;

type
  TfrmRelReceber = class(TfrmTmpRelFormNormalDefault)
    Label1: TLabel;
    edInicio: TwwDBDateTimePicker;
    Label2: TLabel;
    edFinal: TwwDBDateTimePicker;
    ppDataSel: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLabel10: TppLabel;
    ppDBText14: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppLabel1: TppLabel;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppLabel11: TppLabel;
    ppDBCalc5: TppDBCalc;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppLabel12: TppLabel;
    ppDBCalc6: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppLine7: TppLine;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    procedure btVisualizarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btImprimirClick(Sender: TObject);
    procedure sbExportarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelReceber: TfrmRelReceber;

implementation

{$R *.dfm}

uses dataConfig, dataFinanceiro, uDaoReceber;

procedure TfrmRelReceber.btImprimirClick(Sender: TObject);
begin
  if ((edInicio.Text <> '') and (edFinal.Text <> '')) then
  begin
    RelReceber(edInicio.Text, edFinal.Text, 'A');
    ppDataSel.Caption := 'De: ' + edInicio.Text + ' até: ' + edFinal.Text;
    inherited;
  end
  else
    MessageDlg('Você deve preencher as datas inicial e final!', mtWarning, [mbYes, mbNo], 0);
end;

procedure TfrmRelReceber.btVisualizarClick(Sender: TObject);
begin
  if ((edInicio.Text <> '') and (edFinal.Text <> '')) then
  begin
    RelReceber(edInicio.Text, edFinal.Text, 'A');
    ppDataSel.Caption := 'De: ' + edInicio.Text + ' até: ' + edFinal.Text;
    inherited;
  end
  else
    MessageDlg('Você deve preencher as datas inicial e final!', mtWarning, [mbYes, mbNo], 0);
end;

procedure TfrmRelReceber.FormActivate(Sender: TObject);
begin
  inherited;
  edInicio.Date := now - 10;
  edFinal.Date := now + 30;
  edInicio.SetFocus;
end;

procedure TfrmRelReceber.sbExportarClick(Sender: TObject);
begin
  if ((edInicio.Text <> '') and (edFinal.Text <> '')) then
  begin
    RelReceber(edInicio.Text, edFinal.Text, 'A');
    ppDataSel.Caption := 'De: ' + edInicio.Text + ' até: ' + edFinal.Text;
    inherited;
  end
  else
    MessageDlg('Você deve preencher as datas inicial e final!', mtWarning, [mbYes, mbNo], 0);
end;

end.
