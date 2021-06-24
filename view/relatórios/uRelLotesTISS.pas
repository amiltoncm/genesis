unit uRelLotesTISS;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpRelFormNormalDefault, ppDB, Data.DB,
  ppDBPipe, ppParameter, ppDesignLayer, ppCtrls, ppBands, ppPrnabl, ppClass,
  ppVar, ppCache, ppComm, ppRelatv, ppProd, ppReport, Vcl.StdCtrls, Vcl.Buttons,
  wwdblook, myChkBox;

type
  TfrmRelLotesTISS = class(TfrmTmpRelFormNormalDefault)
    Label1: TLabel;
    cbConvenio: TwwDBLookupCombo;
    ppLabel5: TppLabel;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText7: TppDBText;
    myDBCheckBox1: TmyDBCheckBox;
    ppDBText6: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText8: TppDBText;
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
  frmRelLotesTISS: TfrmRelLotesTISS;

implementation

{$R *.dfm}

uses dataConsultas, dataLookups, dataConfig, uDaoRelatorios;

procedure TfrmRelLotesTISS.btImprimirClick(Sender: TObject);
Var
vCodConv: String;
begin
  if cbConvenio.Text <> '' then
    vCodConv := dmLookups.lkProcConvenioscov_codigo.Text
  else
    vCodConv := '-1';
  RelLoteTISS(vCodConv);
  inherited;
end;

procedure TfrmRelLotesTISS.btVisualizarClick(Sender: TObject);
Var
vCodConv: String;
begin
  if cbConvenio.Text <> '' then
    vCodConv := dmLookups.lkProcConvenioscov_codigo.Text
  else
    vCodConv := '-1';
  RelLoteTISS(vCodConv);
  inherited;
end;

procedure TfrmRelLotesTISS.FormActivate(Sender: TObject);
begin
  inherited;
  cbConvenio.SetFocus;
end;

procedure TfrmRelLotesTISS.sbExportarClick(Sender: TObject);
Var
vCodConv: String;
begin
  if cbConvenio.Text <> '' then
    vCodConv := dmLookups.lkProcConvenioscov_codigo.Text
  else
    vCodConv := '-1';
  RelLoteTISS(vCodConv);
  inherited;
end;

end.
