unit uTmpRelFormNormal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpFormNormal, Vcl.StdCtrls,
  Vcl.Buttons, ppEndUsr, Vcl.Menus, ppParameter, Data.DB, ppDB, ppDBPipe,
  ppBands, ppPrnabl, ppClass, ppCtrls, ppCache, ppComm, ppRelatv, ppProd,
  ppReport;

type
  TfrmTmpRelFormNormal = class(TfrmTmpFormNormal)
    lbCaption: TLabel;
    Relatorio: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLinha1: TppLine;
    ppLinha2: TppLine;
    ppDetailBand1: TppDetailBand;
    dbDados: TppDBPipeline;
    dsDados: TDataSource;
    ppParameterList1: TppParameterList;
    sbExportar: TSpeedButton;
    btVisualizar: TBitBtn;
    btImprimir: TBitBtn;
    procedure btImprimirClick(Sender: TObject);
    procedure btVisualizarClick(Sender: TObject);
    procedure sbExportarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTmpRelFormNormal: TfrmTmpRelFormNormal;

implementation

{$R *.dfm}

procedure TfrmTmpRelFormNormal.btImprimirClick(Sender: TObject);
begin
  Relatorio.DeviceType := 'Printer';
  Relatorio.ShowPrintDialog := True;
  Relatorio.Print;
  Close;
end;

procedure TfrmTmpRelFormNormal.btVisualizarClick(Sender: TObject);
begin
  Relatorio.DeviceType := 'Screen';
  Relatorio.ShowPrintDialog := True;
  Relatorio.Print;
  Close;
end;

procedure TfrmTmpRelFormNormal.FormActivate(Sender: TObject);
begin
  inherited;
  dsDados.DataSet.Active := True;
  frmTmpRelFormNormal.Caption := Relatorio.PrinterSetup.DocumentName;
  lbCaption.Caption := Relatorio.PrinterSetup.DocumentName;
end;

procedure TfrmTmpRelFormNormal.sbExportarClick(Sender: TObject);
begin
  Relatorio.DeviceType := 'PDFFile';
  //Configura PDF
  Relatorio.PDFSettings.Subject := Relatorio.PrinterSetup.DocumentName;
  Relatorio.PDFSettings.Title := Relatorio.PrinterSetup.DocumentName;
  //Configura XLS
  Relatorio.XLSSettings.Subject := Relatorio.PrinterSetup.DocumentName;
  Relatorio.XLSSettings.Title := Relatorio.PrinterSetup.DocumentName;
  //Exportar
  Relatorio.ShowPrintDialog := True;
  Relatorio.Print;
  Close;
end;

end.
