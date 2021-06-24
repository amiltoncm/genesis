unit uNotasCito;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpFormNormal, Vcl.StdCtrls,
  Vcl.Buttons, Data.DB, Vcl.ComCtrls, wwriched, wwrichedspellxp;

type
  TfrmNotasCito = class(TfrmTmpFormNormal)
    meNotas: TwwDBRichEditMSWord;
    sbLaudo: TSpeedButton;
    lbExame: TLabel;
    lbNumExame: TLabel;
    dsNotas: TDataSource;
    btGravar: TBitBtn;
    btDeletar: TBitBtn;
    procedure btFecharClick(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure sbLaudoClick(Sender: TObject);
    procedure btDeletarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmNotasCito: TfrmNotasCito;

implementation

{$R *.dfm}

uses dataExames, uFuncoesDB;

procedure TfrmNotasCito.btDeletarClick(Sender: TObject);
begin
  try
  if dsNotas.DataSet.State in [dsEdit, dsInsert] then
    dsNotas.DataSet.Cancel;
  if not(dmExames.qyExamesCitoNotasexa_id.IsNull) then
    dsNotas.DataSet.Delete;
  MessageDlg('Dados excluídos com sucesso!', mtInformation, [mbok], 0);
  Close;
  except
    dsNotas.DataSet.Cancel;
    MessageDlg('Não foi possível excluir as Notas!', mtError, [mbok], 0);
    Close;
  end;
end;

procedure TfrmNotasCito.btFecharClick(Sender: TObject);
begin
  if dsNotas.DataSet.State in [dsEdit, dsInsert] then
    dsNotas.DataSet.Cancel;
  inherited;
end;

procedure TfrmNotasCito.btGravarClick(Sender: TObject);
begin
  try
  if dsNotas.DataSet.State in [dsInsert] then
    dmExames.qyExamesCitoNotasecn_id.Value := GetCodigo('ecn_id', 'examescitonotas');
  //dmExames.qyExamesCitoNotasexa_id.Text := dbExame.Text;
  if not(dmExames.qyExamesCitoNotasecn_obs.IsNull) then
  begin
    dsNotas.DataSet.Post;
    MessageDlg('Alterações gravadas com sucesso!', mtInformation, [mbOk], 0);
  end
  else
  Begin
    MessageDlg('Não foram digitadas Notas!', mtInformation, [mbOk], 0);
    dsNotas.DataSet.Cancel;
  end;
  Close;
  except
    MessageDlg('As alterações não puderam ser gravadas!', mtError, [mbOk], 0);
    dsNotas.DataSet.Cancel;
    Close;
  end;
end;

procedure TfrmNotasCito.FormActivate(Sender: TObject);
begin
  inherited;
  dsNotas.DataSet.active := true;
  frmNotasCito.Caption := 'Notas Citologia - [Exame: '+ lbNumExame.Caption +']';
  meNotas.SetFocus;
end;

procedure TfrmNotasCito.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if dsNotas.DataSet.State in [dsEdit, dsInsert] then
    dsNotas.DataSet.Cancel;
end;

procedure TfrmNotasCito.sbLaudoClick(Sender: TObject);
begin
  meNotas.EditorCaption := 'Laudo: ' + lbNumExame.Caption;
  meNotas.Execute;
end;

end.
