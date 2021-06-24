unit uRelExPac;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpRelFormNormalDefault, ppDB, Data.DB,
  ppDBPipe, ppParameter, ppDesignLayer, ppCtrls, ppBands, ppPrnabl, ppClass,
  ppVar, ppCache, ppComm, ppRelatv, ppProd, ppReport, Vcl.StdCtrls, Vcl.Buttons,
  wwdblook, wwdbdatetimepicker, myChkBox;

type
  TfrmRelExPac = class(TfrmTmpRelFormNormalDefault)
    Label1: TLabel;
    edInicio: TwwDBDateTimePicker;
    Label3: TLabel;
    cbPaciente: TwwDBLookupCombo;
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
    ppLabel10: TppLabel;
    ppDBCalc1: TppDBCalc;
    myDBCheckBox1: TmyDBCheckBox;
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
  frmRelExPac: TfrmRelExPac;

implementation

{$R *.dfm}

uses dataLookups, dataConsultas, uDaoRelatorios;

procedure TfrmRelExPac.btImprimirClick(Sender: TObject);
Var
vCodPac: String;
begin
  if cbPaciente.Text = '' then
    vCodPac := '-1'
  else
    vCodPac := dmLookups.lkProcPacientespac_codigo.Text;
  if edInicio.Text <> ''  then
  begin
    RelExamesPacientes(edInicio.Text, cbConcluidos.Checked, vCodPac);
    inherited;
  end
  else
    MessageDlg('É necessário selecionar uma data inicial!', mtWarning, [mbok], 0);
end;

procedure TfrmRelExPac.btVisualizarClick(Sender: TObject);
Var
vCodPac: String;
begin
  if cbPaciente.Text = '' then
    vCodPac := '-1'
  else
    vCodPac := dmLookups.lkProcPacientespac_codigo.Text;
  if edInicio.Text <> ''  then
  begin
    RelExamesPacientes(edInicio.Text, cbConcluidos.Checked, vCodPac);
    inherited;
  end
  else
    MessageDlg('É necessário selecionar uma data inicial!', mtWarning, [mbok], 0);
end;

procedure TfrmRelExPac.FormActivate(Sender: TObject);
begin
  inherited;
  edInicio.Date := now - 90;
  cbPaciente.Clear;
  edInicio.SetFocus;
end;

procedure TfrmRelExPac.sbExportarClick(Sender: TObject);
Var
vCodPac: String;
begin
  if cbPaciente.Text = '' then
    vCodPac := '-1'
  else
    vCodPac := dmLookups.lkProcPacientespac_codigo.Text;
  if edInicio.Text <> ''  then
  begin
    RelExamesPacientes(edInicio.Text, cbConcluidos.Checked, vCodPac);
    inherited;
  end
  else
    MessageDlg('É necessário selecionar uma data inicial!', mtWarning, [mbok], 0);
end;

end.
