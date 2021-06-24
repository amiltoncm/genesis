unit uRelCorte;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpRelFormNormal, Data.DB, ppDB,
  ppDBPipe, ppParameter, ppBands, ppPrnabl, ppClass, ppCtrls, ppCache, ppComm,
  ppRelatv, ppProd, ppReport, Vcl.StdCtrls, Vcl.Buttons, ppVar, ppDesignLayer;

type
  TfrmRelCorte = class(TfrmTmpRelFormNormal)
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppTitleBand1: TppTitleBand;
    ppSummaryBand1: TppSummaryBand;
    ppFooterBand1: TppFooterBand;
    ppSystemVariable3: TppSystemVariable;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel10: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppDBCalc2: TppDBCalc;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLabel11: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel12: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel13: TppLabel;
    ppDBCalc1: TppDBCalc;
    procedure SalvarRel;
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
  frmRelCorte: TfrmRelCorte;

implementation

{$R *.dfm}

uses dataConsultas, uVarGlobal;

procedure TfrmRelCorte.FormActivate(Sender: TObject);
begin
  inherited;
  Relatorio.DeviceType := 'Screen';
end;

procedure TfrmRelCorte.SalvarRel;
Var
vArq: String;
begin
  if MessageDlg('Deseja salvar o relatório?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    vArq := 'C' + FormatDateTime('YYYYMMDDhhmm', now) + '.pdf';
    //Verifica se existe o diretório
    if not(FileExists(vgDirRelatorios)) then
      CreateDir(vgDirRelatorios);
     Relatorio.DeviceType := 'PDF';
     Relatorio.TextFileName := vgDirRelatorios + '\' + vArq;
     Relatorio.Print;
  end;
end;

procedure TfrmRelCorte.sbExportarClick(Sender: TObject);
begin
  inherited;
  SalvarRel;
end;

procedure TfrmRelCorte.btImprimirClick(Sender: TObject);
begin
  inherited;
  SalvarRel;
end;

procedure TfrmRelCorte.btVisualizarClick(Sender: TObject);
begin
  inherited;
  SalvarRel;
end;

end.
