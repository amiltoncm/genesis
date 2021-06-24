unit uRelExConv;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpRelFormNormalDefault, ppDB, Data.DB,
  ppDBPipe, ppParameter, ppDesignLayer, ppCtrls, ppBands, ppPrnabl, ppClass,
  ppVar, ppCache, ppComm, ppRelatv, ppProd, ppReport, Vcl.StdCtrls, Vcl.Buttons,
  wwdblook, wwdbdatetimepicker, myChkBox;

type
  TfrmRelExConv = class(TfrmTmpRelFormNormalDefault)
    Label1: TLabel;
    edInicio: TwwDBDateTimePicker;
    Label3: TLabel;
    cbConvenio: TwwDBLookupCombo;
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
    ppLabel10: TppLabel;
    ppDBText7: TppDBText;
    ppLabel9: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText6: TppDBText;
    ppDBText4: TppDBText;
    ppLabel8: TppLabel;
    ppDBText5: TppDBText;
    ppDBText8: TppDBText;
    myDBCheckBox1: TmyDBCheckBox;
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
  frmRelExConv: TfrmRelExConv;

implementation

{$R *.dfm}

uses dataConsultas, dataLookups, uDaoRelatorios;

procedure TfrmRelExConv.btImprimirClick(Sender: TObject);
Var
vCodConv: String;
begin
  if cbConvenio.Text = '' then
    vCodConv := '-1'
  else
    vCodConv := dmLookups.lkProcConvenioscov_codigo.Text;
  if edInicio.Text <> ''  then
  begin
    RelExamesConvenios(edInicio.Text, cbConcluidos.Checked, vCodConv);
    inherited;
  end
  else
    MessageDlg('É necessário selecionar uma data inicial!', mtWarning, [mbok], 0);
end;

procedure TfrmRelExConv.btVisualizarClick(Sender: TObject);
Var
vCodConv: String;
begin
  if cbConvenio.Text = '' then
    vCodConv := '-1'
  else
    vCodConv := dmLookups.lkProcConvenioscov_codigo.Text;
  if edInicio.Text <> ''  then
  begin
    RelExamesConvenios(edInicio.Text, cbConcluidos.Checked, vCodConv);
    inherited;
  end
  else
    MessageDlg('É necessário selecionar uma data inicial!', mtWarning, [mbok], 0);
end;

procedure TfrmRelExConv.FormActivate(Sender: TObject);
begin
  inherited;
  edInicio.Date := now - 90;
  cbConvenio.Clear;
  cbConcluidos.Checked := True;
  edInicio.SetFocus;
end;

procedure TfrmRelExConv.sbExportarClick(Sender: TObject);
Var
vCodConv: String;
begin
  if cbConvenio.Text = '' then
    vCodConv := '-1'
  else
    vCodConv := dmLookups.lkProcConvenioscov_codigo.Text;
  if edInicio.Text <> ''  then
  begin
    RelExamesConvenios(edInicio.Text, cbConcluidos.Checked, vCodConv);
    inherited;
  end
  else
    MessageDlg('É necessário selecionar uma data inicial!', mtWarning, [mbok], 0);
end;

end.
