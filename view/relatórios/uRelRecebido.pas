unit uRelRecebido;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpRelFormNormalDefault, ppDB, Data.DB,
  ppDBPipe, ppParameter, ppDesignLayer, ppCtrls, ppBands, ppPrnabl, ppClass,
  ppVar, ppCache, ppComm, ppRelatv, ppProd, ppReport, Vcl.StdCtrls, Vcl.Buttons,
  wwdbdatetimepicker;

type
  TfrmRelRecebido = class(TfrmTmpRelFormNormalDefault)
    Label1: TLabel;
    Label2: TLabel;
    edInicio: TwwDBDateTimePicker;
    edFinal: TwwDBDateTimePicker;
    ppDataSel: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel10: TppLabel;
    ppDBText14: TppDBText;
    ppLabel1: TppLabel;
    ppDBText6: TppDBText;
    ppDBText5: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppLabel11: TppLabel;
    ppDBCalc5: TppDBCalc;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppLabel12: TppLabel;
    ppDBCalc6: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
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
  frmRelRecebido: TfrmRelRecebido;

implementation

{$R *.dfm}

uses dataConfig, dataFinanceiro, uDaoReceber;

procedure TfrmRelRecebido.btImprimirClick(Sender: TObject);
begin
  if ((edInicio.Text <> '') and (edFinal.Text <> '')) then
  begin
    RelReceber(edInicio.Text, edFinal.Text, 'P');
    ppDataSel.Caption := 'De: ' + edInicio.Text + ' até: ' + edFinal.Text;
    inherited;
  end
  else
    MessageDlg('Você deve preencher as datas inicial e final!', mtWarning, [mbYes, mbNo], 0);
end;

procedure TfrmRelRecebido.btVisualizarClick(Sender: TObject);
begin
  if ((edInicio.Text <> '') and (edFinal.Text <> '')) then
  begin
    RelReceber(edInicio.Text, edFinal.Text, 'P');
    ppDataSel.Caption := 'De: ' + edInicio.Text + ' até: ' + edFinal.Text;
    inherited;
  end
  else
    MessageDlg('Você deve preencher as datas inicial e final!', mtWarning, [mbYes, mbNo], 0);
end;

procedure TfrmRelRecebido.FormActivate(Sender: TObject);
begin
  inherited;
  edInicio.Date := now - 10;
  edFinal.Date := now + 30;
  edInicio.SetFocus;
end;

procedure TfrmRelRecebido.sbExportarClick(Sender: TObject);
begin
  if ((edInicio.Text <> '') and (edFinal.Text <> '')) then
  begin
    RelReceber(edInicio.Text, edFinal.Text, 'P');
    ppDataSel.Caption := 'De: ' + edInicio.Text + ' até: ' + edFinal.Text;
    inherited;
  end
  else
    MessageDlg('Você deve preencher as datas inicial e final!', mtWarning, [mbYes, mbNo], 0);
end;

end.
