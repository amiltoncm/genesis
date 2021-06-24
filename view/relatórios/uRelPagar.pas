unit uRelPagar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpRelFormNormalDefault, ppDB, Data.DB,
  ppDBPipe, ppParameter, ppDesignLayer, ppCtrls, ppBands, ppPrnabl, ppClass,
  ppVar, ppCache, ppComm, ppRelatv, ppProd, ppReport, Vcl.StdCtrls, Vcl.Buttons,
  wwdbdatetimepicker;

type
  TfrmRelPagar = class(TfrmTmpRelFormNormalDefault)
    Label1: TLabel;
    cbInicio: TwwDBDateTimePicker;
    Label2: TLabel;
    cbFinal: TwwDBDateTimePicker;
    ppDataSel: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppLabel1: TppLabel;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppLabel2: TppLabel;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppLabel19: TppLabel;
    ppDBCalc6: TppDBCalc;
    ppSummaryBand1: TppSummaryBand;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppDBCalc5: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc1: TppDBCalc;
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
  frmRelPagar: TfrmRelPagar;

implementation

{$R *.dfm}

uses dataConfig, dataFinanceiro, uDaoPagar;

procedure TfrmRelPagar.btImprimirClick(Sender: TObject);
begin
  if ((cbInicio.Text <> '') and (cbFinal.Text <> '')) then
  begin
    RelPagar(cbInicio.Text, cbFinal.Text, 'A');
    ppDataSel.Caption := 'De: ' + cbInicio.Text + ' até: ' + cbFinal.Text;
    inherited;
  end
  else
    MessageDlg('Você deve preencher as datas inicial e final!', mtWarning, [mbYes, mbNo], 0);
end;

procedure TfrmRelPagar.btVisualizarClick(Sender: TObject);
begin
  if ((cbInicio.Text <> '') and (cbFinal.Text <> '')) then
  begin
    RelPagar(cbInicio.Text, cbFinal.Text, 'A');
    ppDataSel.Caption := 'De: ' + cbInicio.Text + ' até: ' + cbFinal.Text;
    inherited;
  end
  else
    MessageDlg('Você deve preencher as datas inicial e final!', mtWarning, [mbYes, mbNo], 0);
end;

procedure TfrmRelPagar.FormActivate(Sender: TObject);
begin
  inherited;
  cbInicio.Date := now;
  cbFinal.Date := now + 30;
  cbInicio.SetFocus;
end;

procedure TfrmRelPagar.sbExportarClick(Sender: TObject);
begin
  if ((cbInicio.Text <> '') and (cbFinal.Text <> '')) then
  begin
    RelPagar(cbInicio.Text, cbFinal.Text, 'A');
    ppDataSel.Caption := 'De: ' + cbInicio.Text + ' até: ' + cbFinal.Text;
    inherited;
  end
  else
    MessageDlg('Você deve preencher as datas inicial e final!', mtWarning, [mbYes, mbNo], 0);
end;

end.
