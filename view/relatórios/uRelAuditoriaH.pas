unit uRelAuditoriaH;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpRelFormNormal, Data.DB, ppDB,
  ppDBPipe, ppParameter, ppBands, ppPrnabl, ppClass, ppCtrls, ppCache, ppComm,
  ppRelatv, ppProd, ppReport, Vcl.StdCtrls, Vcl.Buttons, Vcl.ComCtrls, ppVar,
  ppDesignLayer;

type
  TfrmRelAuditoriaH = class(TfrmTmpRelFormNormal)
    dtpInicial: TDateTimePicker;
    dtpFinal: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppTitleBand1: TppTitleBand;
    ppSummaryBand1: TppSummaryBand;
    ppFooterBand1: TppFooterBand;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    ppLabel2: TppLabel;
    ppDBText2: TppDBText;
    ppLabel3: TppLabel;
    ppDBText3: TppDBText;
    ppLabel4: TppLabel;
    ppDBText4: TppDBText;
    ppLabel5: TppLabel;
    ppDBText5: TppDBText;
    ppLine1: TppLine;
    ppLabel6: TppLabel;
    ppDBCalc1: TppDBCalc;
    lbDatas: TppLabel;
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
  frmRelAuditoriaH: TfrmRelAuditoriaH;

implementation

{$R *.dfm}

uses dataConsultas, uDaoConsultas;

procedure TfrmRelAuditoriaH.btImprimirClick(Sender: TObject);
begin
  lbDatas.Caption := 'De: ' + FormatDateTime('dd/MM/yyyy', (dtpInicial.Date)) + ' até: ' + FormatDateTime('dd/MM/yyyy', (dtpFinal.Date));
  FiltrarRelAuditoriaH(FormatDateTime('dd/MM/yyyy',(dtpInicial.Date)), FormatDateTime('dd/MM/yyyy', (dtpFinal.Date)));
  inherited;
end;

procedure TfrmRelAuditoriaH.btVisualizarClick(Sender: TObject);
begin
  lbDatas.Caption := 'De: ' + FormatDateTime('dd/MM/yyyy', (dtpInicial.Date)) + ' até: ' + FormatDateTime('dd/MM/yyyy', (dtpFinal.Date));
  FiltrarRelAuditoriaH(FormatDateTime('dd/MM/yyyy',(dtpInicial.Date)), FormatDateTime('dd/MM/yyyy', (dtpFinal.Date)));
  inherited;
end;

procedure TfrmRelAuditoriaH.FormActivate(Sender: TObject);
begin
  inherited;
  dtpInicial.Date := now - 30;
  dtpFinal.Date := now;
  dtpInicial.SetFocus;
end;

procedure TfrmRelAuditoriaH.sbExportarClick(Sender: TObject);
begin
  lbDatas.Caption := 'De: ' + FormatDateTime('dd/MM/yyyy', (dtpInicial.Date)) + ' até: ' + FormatDateTime('dd/MM/yyyy', (dtpFinal.Date));
  FiltrarRelAuditoriaH(FormatDateTime('dd/MM/yyyy',(dtpInicial.Date)), FormatDateTime('dd/MM/yyyy', (dtpFinal.Date)));
  inherited;
end;

end.
