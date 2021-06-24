unit uRelProcedXConv;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpRelFormNormalDefault, ppDB, Data.DB,
  ppDBPipe, ppParameter, ppDesignLayer, ppCtrls, ppBands, ppPrnabl, ppClass,
  ppVar, ppCache, ppComm, ppRelatv, ppProd, ppReport, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Mask, Vcl.DBCtrls, wwdblook;

type
  TfrmRelProcedXConv = class(TfrmTmpRelFormNormalDefault)
    Label1: TLabel;
    cbConvenio: TwwDBLookupCombo;
    Label2: TLabel;
    cbCobranca: TwwDBLookupCombo;
    Label3: TLabel;
    dbCodigo: TDBEdit;
    Label4: TLabel;
    dbValor: TDBEdit;
    dsLkReceber: TDataSource;
    ppLabel1: TppLabel;
    ppLbConvenio: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppLabel8: TppLabel;
    ppLine2: TppLine;
    ppLabel9: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppLabel10: TppLabel;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppLabel11: TppLabel;
    procedure FiltraCob;
    procedure cbConvenioExit(Sender: TObject);
    procedure cbConvenioKeyPress(Sender: TObject; var Key: Char);
    procedure btVisualizarClick(Sender: TObject);
    procedure btImprimirClick(Sender: TObject);
    procedure sbExportarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelProcedXConv: TfrmRelProcedXConv;

implementation

{$R *.dfm}

uses dataConsultas, dataLookups, dataConfig, uDaoRelatorios;

procedure TfrmRelProcedXConv.btImprimirClick(Sender: TObject);
begin
  if cbCobranca.Text <> '' then
  begin
    RelProcedXConv(dmLookups.lkProcReceberrec_codigo.Text);
    ppLbConvenio.Text := cbConvenio.Text;
    inherited;
  end
  else
    MessageDlg('Você deve selecionar a cobrança!', mtWarning, [mbok], 0);
end;

procedure TfrmRelProcedXConv.btVisualizarClick(Sender: TObject);
begin
  if cbCobranca.Text <> '' then
  begin
    RelProcedXConv(dmLookups.lkProcReceberrec_codigo.Text);
    ppLbConvenio.Text := cbConvenio.Text;
    inherited;
  end
  else
    MessageDlg('Você deve selecionar a cobrança!', mtWarning, [mbok], 0);
end;

procedure TfrmRelProcedXConv.cbConvenioExit(Sender: TObject);
begin
  FiltraCob;
end;

procedure TfrmRelProcedXConv.cbConvenioKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    FiltraCob;
    cbCobranca.SetFocus;
  end;
end;

procedure TfrmRelProcedXConv.FiltraCob;
begin
  if cbConvenio.Text <> '' then
  begin
    dmLookups.lkProcReceber.Close;
    dmLookups.lkProcReceber.SQL.Clear;
    dmLookups.lkProcReceber.SQL.Add('select * from receber where rec_codcliente = ');
    dmLookups.lkProcReceber.SQL.Add(QuotedStr(dmLookups.lkProcConvenioscov_codigo.Text));
    dmLookups.lkProcReceber.SQL.Add(' order by rec_emissao desc');
    dmLookups.lkProcReceber.Open;
    cbCobranca.Text := dmLookups.lkProcReceberrec_emissao.Text;
    cbCobranca.PerformSearch;
  end
  else
    MessageDlg('Você deve selecionar o convênio!', mtWarning, [mbok], 0);
end;

procedure TfrmRelProcedXConv.sbExportarClick(Sender: TObject);
begin
  if cbCobranca.Text <> '' then
  begin
    RelProcedXConv(dmLookups.lkProcReceberrec_codigo.Text);
    ppLbConvenio.Text := cbConvenio.Text;
    inherited;
  end
  else
    MessageDlg('Você deve selecionar a cobrança!', mtWarning, [mbok], 0);
end;

end.
