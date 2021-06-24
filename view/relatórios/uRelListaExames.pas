unit uRelListaExames;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpRelFormNormal, Data.DB, ppDB,
  ppDBPipe, ppParameter, ppBands, ppPrnabl, ppClass, ppCtrls, ppCache, ppComm,
  ppRelatv, ppProd, ppReport, Vcl.StdCtrls, Vcl.Buttons, ppVar, ppDesignLayer;

type
  TfrmRelListaExames = class(TfrmTmpRelFormNormal)
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppSystemVariable1: TppSystemVariable;
    ppLabel1: TppLabel;
    ppLabel6: TppLabel;
    ppLabel8: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel10: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText10: TppDBText;
    ppDBText15: TppDBText;
    ppLine2: TppLine;
    ppFooterBand1: TppFooterBand;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppSummaryBand1: TppSummaryBand;
    ppLine3: TppLine;
    ppLabel11: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppTitleBand1: TppTitleBand;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelListaExames: TfrmRelListaExames;

implementation

{$R *.dfm}

uses dataConsultas;

end.
