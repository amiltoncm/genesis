unit uRelListagem;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpRelFormNormalDefault, ppDB, Data.DB,
  ppDBPipe, ppParameter, ppDesignLayer, ppCtrls, ppBands, ppPrnabl, ppClass,
  ppVar, ppCache, ppComm, ppRelatv, ppProd, ppReport, Vcl.StdCtrls, Vcl.Buttons,
  wwdbdatetimepicker, wwdblook;

type
  TfrmRelListagem = class(TfrmTmpRelFormNormalDefault)
    Label3: TLabel;
    cbExamesTp: TwwDBLookupCombo;
    cbCitologias: TCheckBox;
    Label1: TLabel;
    edDtInicial: TwwDBDateTimePicker;
    Label2: TLabel;
    edDtFinal: TwwDBDateTimePicker;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppLabel5: TppLabel;
    ppDBCalc1: TppDBCalc;
    procedure Limpar;
    procedure btVisualizarClick(Sender: TObject);
    procedure btImprimirClick(Sender: TObject);
    procedure sbExportarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure cbCitologiasClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelListagem: TfrmRelListagem;

implementation

{$R *.dfm}

uses dataConsultas, uDaoRelatorios, dataConfig, dataLookups;

procedure TfrmRelListagem.Limpar;
begin
  cbExamesTp.Text := '';
  cbExamesTp.ReadOnly := false;
  edDtInicial.Date := now - 7;
  edDtFinal.Date := now;
  cbExamesTp.SetFocus;
  cbCitologias.Checked := false;
end;

procedure TfrmRelListagem.btImprimirClick(Sender: TObject);
Var
vCodExameTp: String;
begin
  if cbExamesTp.Text  = '' then
    vCodExameTp := '-1'
  else
    vCodExameTp := dmLookups.lkProcExamesTpetp_id.Text;
  if ((edDtInicial.Text <> '') and (edDtInicial.Text <> ''))  then
  begin
    RelListagem(vCodExameTp, cbCitologias.Checked, edDtInicial.Text, edDtFinal.Text);
    inherited;
  end
  else
    MessageDlg('É necessário selecionar uma data inicial e data final!', mtWarning, [mbok], 0);
end;

procedure TfrmRelListagem.btVisualizarClick(Sender: TObject);
Var
vCodExameTp: String;
begin
  if cbExamesTp.Text  = '' then
    vCodExameTp := '-1'
  else
    vCodExameTp := dmLookups.lkProcExamesTpetp_id.Text;
  if ((edDtInicial.Text <> '') and (edDtInicial.Text <> ''))  then
  begin
    RelListagem(vCodExameTp, cbCitologias.Checked, edDtInicial.Text, edDtFinal.Text);
    inherited;
  end
  else
    MessageDlg('É necessário selecionar uma data inicial e data final!', mtWarning, [mbok], 0);
end;

procedure TfrmRelListagem.cbCitologiasClick(Sender: TObject);
begin
  if cbCitologias.Checked = true then
  begin
    cbExamesTp.Text := '';
    cbExamesTp.ReadOnly := true;
  end
  else
  begin
    cbExamesTp.Text := '';
    cbExamesTp.ReadOnly := false;
  end;
end;

procedure TfrmRelListagem.FormActivate(Sender: TObject);
begin
  inherited;
  Limpar;
end;

procedure TfrmRelListagem.sbExportarClick(Sender: TObject);
Var
vCodExameTp: String;
begin
  if cbExamesTp.Text  = '' then
    vCodExameTp := '-1'
  else
    vCodExameTp := dmLookups.lkProcExamesTpetp_id.Text;
  if ((edDtInicial.Text <> '') and (edDtInicial.Text <> ''))  then
  begin
    RelListagem(vCodExameTp, cbCitologias.Checked, edDtInicial.Text, edDtFinal.Text);
    inherited;
  end
  else
    MessageDlg('É necessário selecionar uma data inicial e data final!', mtWarning, [mbok], 0);
end;

end.
