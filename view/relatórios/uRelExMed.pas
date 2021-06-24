unit uRelExMed;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpRelFormNormalDefault, ppDB, Data.DB,
  ppDBPipe, ppParameter, ppDesignLayer, ppCtrls, ppBands, ppPrnabl, ppClass,
  ppVar, ppCache, ppComm, ppRelatv, ppProd, ppReport, Vcl.StdCtrls, Vcl.Buttons,
  wwdblook, wwdbdatetimepicker, myChkBox;

type
  TfrmRelExMed = class(TfrmTmpRelFormNormalDefault)
    Label1: TLabel;
    edInicio: TwwDBDateTimePicker;
    cbMedico: TwwDBLookupCombo;
    Label3: TLabel;
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
  frmRelExMed: TfrmRelExMed;

implementation

{$R *.dfm}

uses dataConsultas, dataLookups, uDaoRelatorios;

procedure TfrmRelExMed.btImprimirClick(Sender: TObject);
Var
vCodMed: String;
begin
  if cbMedico.Text = '' then
    vCodMed := '-1'
  else
    vCodMed := dmLookups.lkProcMedicosmed_codigo.Text;
  if edInicio.Text <> ''  then
  begin
    RelExamesMedicos(edInicio.Text, cbConcluidos.Checked, vCodMed);
    inherited;
  end
  else
    MessageDlg('É necessário selecionar uma data inicial!', mtWarning, [mbok], 0);
end;

procedure TfrmRelExMed.btVisualizarClick(Sender: TObject);
Var
vCodMed: String;
begin
  if cbMedico.Text = '' then
    vCodMed := '-1'
  else
    vCodMed := dmLookups.lkProcMedicosmed_codigo.Text;
  if edInicio.Text <> ''  then
  begin
    RelExamesMedicos(edInicio.Text, cbConcluidos.Checked, vCodMed);
    inherited;
  end
  else
    MessageDlg('É necessário selecionar uma data inicial!', mtWarning, [mbok], 0);
end;

procedure TfrmRelExMed.FormActivate(Sender: TObject);
begin
  inherited;
  edInicio.Date := now - 90;
  cbMedico.Clear;
  cbConcluidos.Checked := True;
  edInicio.SetFocus;
end;

procedure TfrmRelExMed.sbExportarClick(Sender: TObject);
Var
vCodMed: String;
begin
  if cbMedico.Text = '' then
    vCodMed := '-1'
  else
    vCodMed := dmLookups.lkProcMedicosMed_codigo.Text;
  if edInicio.Text <> ''  then
  begin
    RelExamesMedicos(edInicio.Text, cbConcluidos.Checked, vCodMed);
    inherited;
  end
  else
    MessageDlg('É necessário selecionar uma data inicial!', mtWarning, [mbok], 0);
end;

end.
