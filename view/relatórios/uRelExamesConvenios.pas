unit uRelExamesConvenios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpRelFormNormalDefault, ppDB, Data.DB,
  ppDBPipe, ppParameter, ppDesignLayer, ppCtrls, ppBands, ppPrnabl, ppClass,
  ppVar, ppCache, ppComm, ppRelatv, ppProd, ppReport, Vcl.StdCtrls, Vcl.Buttons,
  wwdbdatetimepicker, wwdblook;

type
  TfrmRelExamesConvenios = class(TfrmTmpRelFormNormalDefault)
    Label1: TLabel;
    cbConvenio: TwwDBLookupCombo;
    Label2: TLabel;
    cbDataInic: TwwDBDateTimePicker;
    Label3: TLabel;
    cbDataFinal: TwwDBDateTimePicker;
    ppLabel3: TppLabel;
    ppLabel9: TppLabel;
    ppLabel4: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
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
  frmRelExamesConvenios: TfrmRelExamesConvenios;

implementation

{$R *.dfm}

uses dataConsultas, dataConfig, dataLookups, uDaoRelatorios;

procedure TfrmRelExamesConvenios.btImprimirClick(Sender: TObject);
begin
  if cbConvenio.Text <> '' then
  begin
    if ((cbDataInic.Text <> '') and (cbDataFinal.Text <> '')) then
    begin
      RelExamesConvenio(dmLookups.lkProcConvenioscov_codigo.Text, cbDataInic.Text, cbDataFinal.Text);
      inherited;
    end
    else
      MessageDlg('É necessário selecionar uma data inicial e final!', mtWarning, [mbok], 0);
  end
  else
    MessageDlg('Você deve selecionar um convênio!', mtWarning, [mbok], 0);
end;

procedure TfrmRelExamesConvenios.btVisualizarClick(Sender: TObject);
begin
  if cbConvenio.Text <> '' then
  begin
    if ((cbDataInic.Text <> '') and (cbDataFinal.Text <> '')) then
    begin
      RelExamesConvenio(dmLookups.lkProcConvenioscov_codigo.Text, cbDataInic.Text, cbDataFinal.Text);
      inherited;
    end
    else
      MessageDlg('É necessário selecionar uma data inicial e final!', mtWarning, [mbok], 0);
  end
  else
    MessageDlg('Você deve selecionar um convênio!', mtWarning, [mbok], 0);
end;

procedure TfrmRelExamesConvenios.FormActivate(Sender: TObject);
begin
  inherited;
  cbDataInic.Date := now - 30;
  cbDataFinal.Date := now;
  cbConvenio.Clear;
  cbConvenio.SetFocus;
end;

procedure TfrmRelExamesConvenios.sbExportarClick(Sender: TObject);
begin
  if cbConvenio.Text <> '' then
  begin
    if ((cbDataInic.Text <> '') and (cbDataFinal.Text <> '')) then
    begin
      RelExamesConvenio(dmLookups.lkProcConvenioscov_codigo.Text, cbDataInic.Text, cbDataFinal.Text);
      inherited;
    end
    else
      MessageDlg('É necessário selecionar uma data inicial e final!', mtWarning, [mbok], 0);
  end
  else
    MessageDlg('Você deve selecionar um convênio!', mtWarning, [mbok], 0);
end;

end.
