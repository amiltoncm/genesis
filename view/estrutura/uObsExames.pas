unit uObsExames;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpFormNormal, Vcl.StdCtrls,
  Vcl.Buttons, Data.DB, Vcl.ComCtrls, wwriched, wwrichedspellxp;

type
  TfrmObsExames = class(TfrmTmpFormNormal)
    dbObservacoes: TwwDBRichEditMSWord;
    dsObs: TDataSource;
    sbDiagnostico: TSpeedButton;
    btGravar: TBitBtn;
    procedure FormActivate(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure sbDiagnosticoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmObsExames: TfrmObsExames;

implementation

{$R *.dfm}

uses dataExames, uVarGlobal, uDaoExamesObs, uDaoExamesLogs, dataConsultas,
  uConsDivExames, uFuncoesString;

procedure TfrmObsExames.btGravarClick(Sender: TObject);
begin
  Try
    InsExamesObs(vgExaLog, dbObservacoes.Text);
    //Grava log
    InsExamesLogs(vgExaLog, '10', vgCodUsuarioLog);
    if frmConsDivExames <> nil then
      frmConsDivExames.dsConsLogs.DataSet.Refresh;
  Except
    MessageDlg('Não foi posível gravar as alterações!', mtWarning, [mbok], 0);
    dmConsultas.qyConsDivExames.Refresh;
  end;
  Close;
end;

procedure TfrmObsExames.FormActivate(Sender: TObject);
begin
  inherited;
  dsObs.DataSet.Active := True;
  dbObservacoes.Clear;
  dbObservacoes.SetFocus;
end;

procedure TfrmObsExames.sbDiagnosticoClick(Sender: TObject);
begin
  dbObservacoes.Execute;
end;

end.
