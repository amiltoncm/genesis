unit uRelCaixaAll;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpRelFormNormalDefault, ppDB, Data.DB,
  ppDBPipe, ppParameter, ppDesignLayer, ppCtrls, ppBands, ppPrnabl, ppClass,
  ppVar, ppCache, ppComm, ppRelatv, ppProd, ppReport, Vcl.StdCtrls, Vcl.Buttons;

type
  TfrmRelCaixaAll = class(TfrmTmpRelFormNormalDefault)
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppDBCalc1: TppDBCalc;
    ppLabel3: TppLabel;
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelCaixaAll: TfrmRelCaixaAll;

implementation

{$R *.dfm}

uses dataConfig, dataConsultas;

procedure TfrmRelCaixaAll.FormActivate(Sender: TObject);
begin
  inherited;
  btVisualizar.SetFocus;
end;

end.
