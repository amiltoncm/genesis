unit uRelHistoEtapaIMac;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpRelFormNormal, Data.DB, ppDB,
  ppDBPipe, ppParameter, ppBands, ppPrnabl, ppClass, ppCtrls, ppCache, ppComm,
  ppRelatv, ppProd, ppReport, Vcl.StdCtrls, Vcl.Buttons, ppSubRpt, ppStrtch,
  ppRichTx, ppDesignLayer;

type
  TfrmRelHistoEtapaIMac = class(TfrmTmpRelFormNormal)
    dsMacro: TDataSource;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    ppDBText13: TppDBText;
    lbUrgente: TppLabel;
    ppLabel9: TppLabel;
    ppDBText8: TppDBText;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppDBText2: TppDBText;
    ppLabel4: TppLabel;
    ppDBText3: TppDBText;
    ppLabel5: TppLabel;
    ppDBText4: TppDBText;
    ppLabel6: TppLabel;
    ppDBText5: TppDBText;
    ppLabel7: TppLabel;
    ppDBText6: TppDBText;
    ppLabel8: TppLabel;
    ppDBText7: TppDBText;
    ppMedAdicional: TppLabel;
    ppLabel10: TppLabel;
    ppDBText11: TppDBText;
    ppLabel13: TppLabel;
    ppDBText12: TppDBText;
    ppLabel11: TppLabel;
    ppDBText9: TppDBText;
    ppLabel12: TppLabel;
    ppDBText10: TppDBText;
    ppLabel14: TppLabel;
    ppDBText14: TppDBText;
    ppLabel15: TppLabel;
    dbObs: TppDBRichText;
    subMacro: TppSubReport;
    ppChildReport1: TppChildReport;
    ppDetailBand2: TppDetailBand;
    dbMacroscopia: TppDBRichText;
    ppLabel16: TppLabel;
    dbMacro: TppDBPipeline;
    ppDesignLayers2: TppDesignLayers;
    ppDesignLayer2: TppDesignLayer;
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelHistoEtapaIMac: TfrmRelHistoEtapaIMac;

implementation

{$R *.dfm}

uses dataExames, uDaoExamesRespAd;

procedure TfrmRelHistoEtapaIMac.FormActivate(Sender: TObject);
Var
vNomeRel: String;
begin
  inherited;
  dsMacro.DataSet.Active := true;
  //verifica urgencia no exame
  if dmExames.qyExamesexa_prioridade.Value = 1 then
    lbUrgente.Caption := 'URGENTE: ' + dmExames.qyExamesexa_dataprior.Text
  else
    lbUrgente.Caption := '';
  //filtra medico adicional
  ppMedAdicional.Visible := false;
  FiltrarExamesRespAd('e.exa_id', '=', dmExames.qyExamesexa_id.Text, '0', '1');
  if not(dmExames.qyExamesRespAdmed_nome.IsNull) then
  begin
    ppMedAdicional.Visible := true;
    ppMedAdicional.Text := '/ ' + dmExames.qyExamesRespAdmed_titulo.Text +
     ' ' + dmExames.qyExamesRespAdmed_nome.Text;
  end;
  vNomeRel := 'Exame: ' + dmExames.qyExamesexa_id.Text;
  Relatorio.PrinterSetup.DocumentName := vNomeRel;
  lbCaption.Caption := vNomeRel;
end;

end.
