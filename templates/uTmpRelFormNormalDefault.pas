unit uTmpRelFormNormalDefault;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpRelFormNormal, Data.DB, ppDB,
  ppDBPipe, ppParameter, ppBands, ppPrnabl, ppClass, ppCtrls, ppCache, ppComm,
  ppRelatv, ppProd, ppReport, Vcl.StdCtrls, Vcl.Buttons, ppDesignLayer, ppVar;

type
  TfrmTmpRelFormNormalDefault = class(TfrmTmpRelFormNormal)
    dsConfig: TDataSource;
    dsEmpresa: TDataSource;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    dbConfig: TppDBPipeline;
    dbEmpresa: TppDBPipeline;
    ppTitleBand1: TppTitleBand;
    ppNomeRel: TppSystemVariable;
    ppLinha3: TppLine;
    ppFooterBand1: TppFooterBand;
    ppNomeSoftware: TppDBText;
    ppNomeEmpresa: TppDBText;
    ppCNPJ: TppDBText;
    ppDataImpressao: TppSystemVariable;
    ppPagina: TppSystemVariable;
    ppVersao: TppLabel;
    ppDBText1: TppDBText;
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTmpRelFormNormalDefault: TfrmTmpRelFormNormalDefault;

implementation

{$R *.dfm}

uses dataConfig;

procedure TfrmTmpRelFormNormalDefault.FormActivate(Sender: TObject);
begin
  inherited;
  dsConfig.DataSet.Active := True;
  dsEmpresa.DataSet.Active := True;
end;

end.
