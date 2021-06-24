unit uRelExamesDoencas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpRelFormNormal, Data.DB, ppDB,
  ppDBPipe, ppParameter, ppBands, ppPrnabl, ppClass, ppCtrls, ppCache, ppComm,
  ppRelatv, ppProd, ppReport, Vcl.StdCtrls, Vcl.Buttons, Vcl.ComCtrls, wwdblook,
  ppVar, ppDesignLayer;

type
  TfrmRelExamesDoencas = class(TfrmTmpRelFormNormal)
    Label1: TLabel;
    dtpDataIni: TDateTimePicker;
    dtpDataFinal: TDateTimePicker;
    Label2: TLabel;
    cbProcCid: TwwDBLookupCombo;
    cbProcMedico: TwwDBLookupCombo;
    cbProcExameTp: TwwDBLookupCombo;
    Label3: TLabel;
    Label4: TLabel;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppTitleBand1: TppTitleBand;
    ppSummaryBand1: TppSummaryBand;
    ppFooterBand1: TppFooterBand;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppLine1: TppLine;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLabel5: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppLabel6: TppLabel;
    ppDBCalc2: TppDBCalc;
    ppLabel7: TppLabel;
    procedure Limpar;
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
  frmRelExamesDoencas: TfrmRelExamesDoencas;

implementation

{$R *.dfm}

uses dataCid10, dataLookups, uDaoCid10subcategorias;

procedure TfrmRelExamesDoencas.Limpar;
begin
  dtpDataIni.Date := now - 30;
  dtpDataFinal.Date := now;
  cbProcCid.Clear;
  cbProcMedico.Clear;
  cbProcExameTp.Clear;
  dtpDataIni.SetFocus;
end;

procedure TfrmRelExamesDoencas.sbExportarClick(Sender: TObject);
Var
vDataIni, vDataFin, vCID, vCodMed, vTpExame: String;
begin
  vDataIni := FormatDateTime('dd/MM/yyyy', dtpDataIni.Date);
  vDataFin := FormatDateTime('dd/MM/yyyy', dtpDataFinal.Date);
  if cbProcCid.Text <> '' then
    vCID := dmLookups.lkProcCIDSubCatsct_subcat.Text
  else
    vCID := '0';
  if cbProcMedico.Text <> '' then
    vCodMed := dmLookups.lkProcMedicosmed_codigo.Text
  else
    vCodMed := '0';
  if cbProcExameTp.Text <> '' then
    vTpExame := dmLookups.lkProcExamesTpetp_id.Text
  else
    vTpExame := '0';
  RelExamesDoencas(vDataIni, vDataFin, vCID, vCodMed, vTpExame);
  inherited;
end;

procedure TfrmRelExamesDoencas.btImprimirClick(Sender: TObject);
Var
vDataIni, vDataFin, vCID, vCodMed, vTpExame: String;
begin
  vDataIni := FormatDateTime('dd/MM/yyyy', dtpDataIni.Date);
  vDataFin := FormatDateTime('dd/MM/yyyy', dtpDataFinal.Date);
  if cbProcCid.Text <> '' then
    vCID := dmLookups.lkProcCIDSubCatsct_subcat.Text
  else
    vCID := '0';
  if cbProcMedico.Text <> '' then
    vCodMed := dmLookups.lkProcMedicosmed_codigo.Text
  else
    vCodMed := '0';
  if cbProcExameTp.Text <> '' then
    vTpExame := dmLookups.lkProcExamesTpetp_id.Text
  else
    vTpExame := '0';
  RelExamesDoencas(vDataIni, vDataFin, vCID, vCodMed, vTpExame);
  inherited;
end;

procedure TfrmRelExamesDoencas.btVisualizarClick(Sender: TObject);
Var
vDataIni, vDataFin, vCID, vCodMed, vTpExame: String;
begin
  vDataIni := FormatDateTime('dd/MM/yyyy', dtpDataIni.Date);
  vDataFin := FormatDateTime('dd/MM/yyyy', dtpDataFinal.Date);
  if cbProcCid.Text <> '' then
    vCID := dmLookups.lkProcCIDSubCatsct_subcat.Text
  else
    vCID := '0';
  if cbProcMedico.Text <> '' then
    vCodMed := dmLookups.lkProcMedicosmed_codigo.Text
  else
    vCodMed := '0';
  if cbProcExameTp.Text <> '' then
    vTpExame := dmLookups.lkProcExamesTpetp_id.Text
  else
    vTpExame := '0';
  RelExamesDoencas(vDataIni, vDataFin, vCID, vCodMed, vTpExame);
  inherited;
end;

procedure TfrmRelExamesDoencas.FormActivate(Sender: TObject);
begin
  inherited;
  Limpar;
end;

end.
