unit uMacroCito;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpFormNormal, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Mask, Vcl.DBCtrls, Data.DB, Vcl.ComCtrls, wwriched,
  wwrichedspellxp;

type
  TfrmMacroCito = class(TfrmTmpFormNormal)
    meLaudo: TwwDBRichEditMSWord;
    dsMacro: TDataSource;
    sbLaudo: TSpeedButton;
    Label1: TLabel;
    dbExame: TDBEdit;
    btGravar: TBitBtn;
    btDeletar: TBitBtn;
    procedure FormActivate(Sender: TObject);
    procedure btFecharClick(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure sbLaudoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btDeletarClick(Sender: TObject);

  private
    vlExame: String;

  public
    { Public declarations }
  end;

var
  frmMacroCito: TfrmMacroCito;

implementation

{$R *.dfm}

uses dataExames, uDaoExamesCitoMacro, uFuncoesDB;

procedure TfrmMacroCito.btDeletarClick(Sender: TObject);
begin
  try
  if dsMacro.DataSet.State in [dsInsert, dsEdit] then
    dsMacro.DataSet.Cancel;
  if not(dmExames.qyExamesCitoMacroexa_id.IsNull) then
    dsMacro.DataSet.Delete;
  MessageDlg('Dados excluídos com sucesso!', mtInformation, [mbok], 0);
  Close;
  except
    dsMacro.DataSet.Cancel;
    Close;
  end;
end;

procedure TfrmMacroCito.btFecharClick(Sender: TObject);
begin
  dsMacro.DataSet.Cancel;
  inherited;
end;

procedure TfrmMacroCito.btGravarClick(Sender: TObject);
begin
  try
  if dsMacro.DataSet.State in [dsInsert] then
    dmExames.qyExamesCitoMacroecm_id.Value := GetCodigo('ecm_id', 'examescitomacro');
  dmExames.qyExamesCitoMacroexa_id.Text := vlExame;
  dsMacro.DataSet.Post;
  MessageDlg('Alterações gravadas com sucesso!', mtInformation, [mbYes, mbNo], 0);
  Close;
  except
    dsMacro.DataSet.Cancel;
    Close;
  end;
end;

procedure TfrmMacroCito.FormActivate(Sender: TObject);
begin
  inherited;
  vlExame := dmExames.qyExamesexa_id.Text;
  FiltrarExamesCitoMacro('exa_ID', '=', vlExame, '0', '0');
  if dmExames.qyExamesCitoMacroexa_id.IsNull then
  begin
    dmExames.qyExamesCitoMacro.Insert;
    dmExames.qyExamesCitoMacroexa_id.Text := dmExames.qyExamesexa_id.Text;
  end
  else
    dmExames.qyExamesCitoMacro.Edit;
  dsMacro.DataSet.Active := true;
  meLaudo.SetFocus;
end;

procedure TfrmMacroCito.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if dsMacro.DataSet.State in [dsInsert, dsEdit] then
    dsMacro.DataSet.Cancel;
end;

procedure TfrmMacroCito.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if dsMacro.DataSet.State in [dsInsert, dsEdit] then
    if Messagedlg('Existem alterações pendentes,' + #13 + 'deseja salvar?',mtConfirmation,[mbYes, mbNo],0) = mrYes then
      Canclose := False
    else
      Canclose := True;
end;

procedure TfrmMacroCito.sbLaudoClick(Sender: TObject);
begin
  meLaudo.Execute;
end;

end.
