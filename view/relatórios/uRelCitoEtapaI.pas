unit uRelCitoEtapaI;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpRelFormNormal, Data.DB, ppDB,
  ppDBPipe, ppParameter, ppBands, ppPrnabl, ppClass, ppCtrls, ppCache, ppComm,
  ppRelatv, ppProd, ppReport, Vcl.StdCtrls, Vcl.Buttons, myChkBox, ppStrtch,
  ppRichTx, ppDesignLayer;

type
  TfrmRelCitoEtapaI = class(TfrmTmpRelFormNormal)
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
    ppLabel89: TppLabel;
    ppDBText14: TppDBText;
    ppLabel90: TppLabel;
    dbObs: TppDBRichText;
    ppSummaryBand1: TppSummaryBand;
    ppLine1: TppLine;
    ppLabel14: TppLabel;
    myCheckBox1: TmyCheckBox;
    ppLabel15: TppLabel;
    myCheckBox2: TmyCheckBox;
    ppLabel16: TppLabel;
    myCheckBox3: TmyCheckBox;
    ppLabel17: TppLabel;
    myCheckBox4: TmyCheckBox;
    ppLabel18: TppLabel;
    myCheckBox5: TmyCheckBox;
    ppLabel19: TppLabel;
    myCheckBox6: TmyCheckBox;
    ppLabel20: TppLabel;
    myCheckBox7: TmyCheckBox;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    myCheckBox8: TmyCheckBox;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    myCheckBox9: TmyCheckBox;
    ppLabel26: TppLabel;
    myCheckBox10: TmyCheckBox;
    ppLabel27: TppLabel;
    myCheckBox11: TmyCheckBox;
    ppLabel28: TppLabel;
    myCheckBox12: TmyCheckBox;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    myCheckBox13: TmyCheckBox;
    ppLabel31: TppLabel;
    myCheckBox14: TmyCheckBox;
    ppLabel32: TppLabel;
    myCheckBox15: TmyCheckBox;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    myCheckBox16: TmyCheckBox;
    ppLabel36: TppLabel;
    myCheckBox17: TmyCheckBox;
    ppLabel37: TppLabel;
    myCheckBox18: TmyCheckBox;
    ppLabel38: TppLabel;
    myCheckBox19: TmyCheckBox;
    ppLabel39: TppLabel;
    myCheckBox20: TmyCheckBox;
    ppLabel40: TppLabel;
    myCheckBox21: TmyCheckBox;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    myCheckBox22: TmyCheckBox;
    ppLabel44: TppLabel;
    myCheckBox23: TmyCheckBox;
    ppLabel45: TppLabel;
    myCheckBox24: TmyCheckBox;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    myCheckBox25: TmyCheckBox;
    ppLabel48: TppLabel;
    myCheckBox26: TmyCheckBox;
    ppLabel49: TppLabel;
    myCheckBox27: TmyCheckBox;
    ppLabel50: TppLabel;
    myCheckBox28: TmyCheckBox;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    myCheckBox30: TmyCheckBox;
    ppLabel53: TppLabel;
    myCheckBox29: TmyCheckBox;
    myCheckBox31: TmyCheckBox;
    ppLabel54: TppLabel;
    myCheckBox32: TmyCheckBox;
    ppLabel55: TppLabel;
    myCheckBox33: TmyCheckBox;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    myCheckBox34: TmyCheckBox;
    myCheckBox35: TmyCheckBox;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    ppLabel60: TppLabel;
    myCheckBox36: TmyCheckBox;
    ppLabel61: TppLabel;
    myCheckBox37: TmyCheckBox;
    ppLabel62: TppLabel;
    myCheckBox38: TmyCheckBox;
    ppLabel63: TppLabel;
    myCheckBox39: TmyCheckBox;
    ppLabel64: TppLabel;
    ppLabel65: TppLabel;
    myCheckBox40: TmyCheckBox;
    ppLabel66: TppLabel;
    myCheckBox41: TmyCheckBox;
    ppLabel67: TppLabel;
    myCheckBox42: TmyCheckBox;
    ppLabel68: TppLabel;
    myCheckBox43: TmyCheckBox;
    ppLabel69: TppLabel;
    ppLabel70: TppLabel;
    myCheckBox44: TmyCheckBox;
    ppLabel71: TppLabel;
    myCheckBox45: TmyCheckBox;
    ppLabel72: TppLabel;
    myCheckBox46: TmyCheckBox;
    ppLabel73: TppLabel;
    myCheckBox47: TmyCheckBox;
    ppLabel74: TppLabel;
    myCheckBox48: TmyCheckBox;
    ppLabel75: TppLabel;
    myCheckBox49: TmyCheckBox;
    ppLabel76: TppLabel;
    ppLabel77: TppLabel;
    myCheckBox50: TmyCheckBox;
    ppLabel78: TppLabel;
    ppLabel79: TppLabel;
    ppLabel80: TppLabel;
    myCheckBox51: TmyCheckBox;
    myCheckBox52: TmyCheckBox;
    ppLabel81: TppLabel;
    ppLabel82: TppLabel;
    ppLabel83: TppLabel;
    ppLabel84: TppLabel;
    myCheckBox53: TmyCheckBox;
    ppLabel85: TppLabel;
    ppLabel86: TppLabel;
    myCheckBox54: TmyCheckBox;
    ppLabel87: TppLabel;
    myCheckBox55: TmyCheckBox;
    ppLabel88: TppLabel;
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelCitoEtapaI: TfrmRelCitoEtapaI;

implementation

{$R *.dfm}

uses dataExames, uDaoExamesRespAd;

procedure TfrmRelCitoEtapaI.FormActivate(Sender: TObject);
Var
vNomeRel: String;
begin
  inherited;
  //verifica urgencia no exame
  if dmExames.qyExamesexa_prioridade.Value = 1 then
    lbUrgente.Caption := 'URGENTE: ' + dmExames.qyExamesexa_dataprior.Text
  else
    lbUrgente.Caption := '';
  //filtra medico adicional
  ppMedAdicional.Visible := false;
  FiltrarExamesRespAd('e.exa_id', '=', dmExames.qyExamesexa_id.Text, '0', '10');
  if not(dmExames.qyExamesRespAdmed_nome.IsNull) then
  begin
    ppMedAdicional.Visible := true;
    ppMedAdicional.Text := '/ ' + dmExames.qyExamesRespAdmed_titulo.Text +
     ' ' + dmExames.qyExamesRespAdmed_nome.Text;
  end;
  vNomeRel := 'Exame: ' + dmExames.qyExamesexa_id.Text;
  Relatorio.PrinterSetup.DocumentName := vNomeRel;
  lbCaption.Caption := vNomeRel;
  Self.Caption := 'Citologia: ' + vNomeRel;
end;

end.
