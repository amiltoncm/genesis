unit uRelExProced;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpRelFormNormalDefault, ppDB, Data.DB,
  ppDBPipe, ppParameter, ppDesignLayer, ppCtrls, ppBands, ppPrnabl, ppClass,
  ppVar, ppCache, ppComm, ppRelatv, ppProd, ppReport, Vcl.StdCtrls, Vcl.Buttons,
  wwdbdatetimepicker;

type
  TfrmRelExProced = class(TfrmTmpRelFormNormalDefault)
    Label1: TLabel;
    edInicio: TwwDBDateTimePicker;
    Label2: TLabel;
    edFinal: TwwDBDateTimePicker;
    ppDataSel: TppLabel;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLine4: TppLine;
    ppDBText2: TppDBText;
    ppLine5: TppLine;
    ppDBText3: TppDBText;
    ppLine6: TppLine;
    ppDBText4: TppDBText;
    ppLine7: TppLine;
    ppDBText7: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppLine9: TppLine;
    ppDBText8: TppDBText;
    ppLine8: TppLine;
    ppLine10: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppLabel8: TppLabel;
    ppDBCalc2: TppDBCalc;
    ppLabel7: TppLabel;
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
  frmRelExProced: TfrmRelExProced;

implementation

{$R *.dfm}

uses dataConsultas, dataLookups, dataConfig, uDaoRelatorios;

procedure TfrmRelExProced.btImprimirClick(Sender: TObject);
begin
  if ((edInicio.Text <> '') and (edFinal.Text <> ''))  then
  begin
    RelExProced(edInicio.Text, edFinal.Text);
    ppDataSel.Caption := 'De: ' + edInicio.Text + ' até: ' + edFinal.Text + '.';
    inherited;
  end
  else
    MessageDlg('É necessário selecionar uma data inicial!', mtWarning, [mbok], 0);
end;

procedure TfrmRelExProced.btVisualizarClick(Sender: TObject);
begin
  if ((edInicio.Text <> '') and (edFinal.Text <> ''))  then
  begin
    RelExProced(edInicio.Text, edFinal.Text);
    ppDataSel.Caption := 'De: ' + edInicio.Text + ' até: ' + edFinal.Text + '.';
    inherited;
  end
  else
    MessageDlg('É necessário selecionar uma data inicial!', mtWarning, [mbok], 0);
end;

procedure TfrmRelExProced.FormActivate(Sender: TObject);
begin
  edInicio.Date := date - 30;
  edFinal.Date := date;
  edInicio.SetFocus;
  inherited;
end;

procedure TfrmRelExProced.sbExportarClick(Sender: TObject);
begin
  if ((edInicio.Text <> '') and (edFinal.Text <> ''))  then
  begin
    RelExProced(edInicio.Text, edFinal.Text);
    ppDataSel.Caption := 'De: ' + edInicio.Text + ' até: ' + edFinal.Text + '.';
    inherited;
  end
  else
    MessageDlg('É necessário selecionar uma data inicial!', mtWarning, [mbok], 0);
end;

end.
