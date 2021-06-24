unit uRelPagas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpRelFormNormalDefault, ppDB, Data.DB,
  ppDBPipe, ppParameter, ppDesignLayer, ppCtrls, ppBands, ppPrnabl, ppClass,
  ppVar, ppCache, ppComm, ppRelatv, ppProd, ppReport, Vcl.StdCtrls, Vcl.Buttons,
  wwdbdatetimepicker;

type
  TfrmRelPagas = class(TfrmTmpRelFormNormalDefault)
    Label1: TLabel;
    cbInicio: TwwDBDateTimePicker;
    Label2: TLabel;
    cbFinal: TwwDBDateTimePicker;
    ppSummaryBand1: TppSummaryBand;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
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
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppLabel1: TppLabel;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppReport1: TppReport;
    ppTitleBand2: TppTitleBand;
    ppSystemVariable1: TppSystemVariable;
    ppLabel2: TppLabel;
    ppHeaderBand2: TppHeaderBand;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppLine3: TppLine;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppLabel21: TppLabel;
    ppDBText4: TppDBText;
    ppDBText9: TppDBText;
    ppLabel22: TppLabel;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppLabel23: TppLabel;
    ppDBText24: TppDBText;
    ppSummaryBand2: TppSummaryBand;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppDBCalc4: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc1: TppDBCalc;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppLabel30: TppLabel;
    ppDBCalc6: TppDBCalc;
    ppDesignLayers2: TppDesignLayers;
    ppDesignLayer2: TppDesignLayer;
    ppParameterList2: TppParameterList;
    ppLabel31: TppLabel;
    ppDBCalc7: TppDBCalc;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppDBCalc8: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppLabel37: TppLabel;
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
  frmRelPagas: TfrmRelPagas;

implementation

{$R *.dfm}

uses dataConfig, dataFinanceiro, uDaoPagar;

procedure TfrmRelPagas.btImprimirClick(Sender: TObject);
begin
  if ((cbInicio.Text <> '') and (cbFinal.Text <> '')) then
  begin
    RelPagar(cbInicio.Text, cbFinal.Text, 'P');
    ppDataSel.Caption := 'De: ' + cbInicio.Text + ' até: ' + cbFinal.Text;
    inherited;
  end
  else
    MessageDlg('Você deve preencher as datas inicial e final!', mtWarning, [mbYes, mbNo], 0);
end;

procedure TfrmRelPagas.btVisualizarClick(Sender: TObject);
begin
  if ((cbInicio.Text <> '') and (cbFinal.Text <> '')) then
  begin
    RelPagar(cbInicio.Text, cbFinal.Text, 'P');
    ppDataSel.Caption := 'De: ' + cbInicio.Text + ' até: ' + cbFinal.Text;
    inherited;
  end
  else
    MessageDlg('Você deve preencher as datas inicial e final!', mtWarning, [mbYes, mbNo], 0);
end;

procedure TfrmRelPagas.FormActivate(Sender: TObject);
begin
  inherited;
  cbInicio.Date := now;
  cbFinal.Date := now + 30;
  cbInicio.SetFocus;
end;

procedure TfrmRelPagas.sbExportarClick(Sender: TObject);
begin
  if ((cbInicio.Text <> '') and (cbFinal.Text <> '')) then
  begin
    RelPagar(cbInicio.Text, cbFinal.Text, 'P');
    ppDataSel.Caption := 'De: ' + cbInicio.Text + ' até: ' + cbFinal.Text;
    inherited;
  end
  else
    MessageDlg('Você deve preencher as datas inicial e final!', mtWarning, [mbYes, mbNo], 0);
end;

end.
