unit uRelRecibo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpRelFormNormal, ppDesignLayer,
  Data.DB, ppDB, ppDBPipe, ppParameter, ppBands, ppPrnabl, ppClass, ppCtrls,
  ppCache, ppComm, ppRelatv, ppProd, ppReport, Vcl.StdCtrls, Vcl.Buttons;

type
  TfrmRelRecibo = class(TfrmTmpRelFormNormal)
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    Label1: TLabel;
    edCliente: TEdit;
    Label2: TLabel;
    edValor: TEdit;
    Label3: TLabel;
    edExames: TEdit;
    spProcurar: TSpeedButton;
    ppLabel1: TppLabel;
    ppLabel4: TppLabel;
    ppValor: TppLabel;
    ppShape1: TppShape;
    ppShape2: TppShape;
    ppLabel2: TppLabel;
    ppCliente: TppLabel;
    ppLabel3: TppLabel;
    ppValorExt: TppLabel;
    ppLabel5: TppLabel;
    ppExames: TppLabel;
    ppLine1: TppLine;
    ppDBText1: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppData: TppLabel;
    ppEmpresa: TppLabel;
    ppUsuario: TppLabel;
    ppLine2: TppLine;
    procedure BuscaInformacoes;
    procedure FormActivate(Sender: TObject);
    procedure btVisualizarClick(Sender: TObject);
    procedure btImprimirClick(Sender: TObject);
    procedure sbExportarClick(Sender: TObject);
    procedure edValorKeyPress(Sender: TObject; var Key: Char);
    procedure spProcurarClick(Sender: TObject);
    procedure edValorExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelRecibo: TfrmRelRecibo;

implementation

{$R *.dfm}

uses uVarGlobal, uFuncoesFormatacao, dataConfig, uFuncoesDatas;

procedure TfrmRelRecibo.btImprimirClick(Sender: TObject);
begin
  BuscaInformacoes;
  if ((edValor.Text <> '') and (edValor.Text <> '0,00')) then
    inherited
  else
    MessageDlg('Você deve preencher o valor!', mtWarning, [mbok], 0);
end;

procedure TfrmRelRecibo.btVisualizarClick(Sender: TObject);
begin
  BuscaInformacoes;
  if ((edValor.Text <> '') and (edValor.Text <> '0,00')) then
    inherited
  else
    MessageDlg('Você deve preencher o valor!', mtWarning, [mbok], 0);
end;

procedure TfrmRelRecibo.BuscaInformacoes;
begin
  ppCliente.Caption := edCliente.Text;
  ppEmpresa.Caption := dmConfig.qyEmpresaemp_razao.Text;
  ppUsuario.Caption := '';
  ppData.Caption := DataExtenso(dmConfig.qyEmpresaemp_cidade.Text, now);
  ppValor.Caption := edValor.Text;
  ppValorExt.Caption := ValorPorExtenso(StrToFloat(LimpaDoc(edValor.Text)));
  ppExames.Caption := edExames.Text;
end;

procedure TfrmRelRecibo.edValorExit(Sender: TObject);
begin
  edValor.Text := FormatFloat('#,###,###,##0.00', StrToFloat(edValor.Text));
end;

procedure TfrmRelRecibo.edValorKeyPress(Sender: TObject; var Key: Char);
begin
  key := NumeroReal(key);
end;

procedure TfrmRelRecibo.FormActivate(Sender: TObject);
begin
  edCliente.Text := vgClienteRec;
  edExames.Text := vgIDExRec;
  edValor.Text := vgValorRec;
  inherited;
  edCliente.SetFocus;
end;

procedure TfrmRelRecibo.sbExportarClick(Sender: TObject);
begin
  BuscaInformacoes;
  if ((edValor.Text <> '') and (edValor.Text <> '0,00')) then
    inherited
  else
    MessageDlg('Você deve preencher o valor!', mtWarning, [mbok], 0);
end;

procedure TfrmRelRecibo.spProcurarClick(Sender: TObject);
begin
  //frmProcClientes.ShowModal;
end;

end.
