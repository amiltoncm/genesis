unit uEditaDataNasc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpFormNormal, Vcl.StdCtrls,
  Vcl.Buttons, Data.DB, Vcl.Mask, Vcl.DBCtrls;

type
  TfrmEditaDataNasc = class(TfrmTmpFormNormal)
    Label3: TLabel;
    DBText2: TDBText;
    Label2: TLabel;
    DBText1: TDBText;
    Label1: TLabel;
    dbIdade: TDBEdit;
    dsExame: TDataSource;
    btAlterar: TBitBtn;
    procedure Gravar;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btAlterarClick(Sender: TObject);
    procedure dbIdadeKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEditaDataNasc: TfrmEditaDataNasc;

implementation

{$R *.dfm}

uses dataExames;

procedure TfrmEditaDataNasc.btAlterarClick(Sender: TObject);
begin
  Gravar;
end;

procedure TfrmEditaDataNasc.dbIdadeKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    Gravar;
end;

procedure TfrmEditaDataNasc.FormActivate(Sender: TObject);
begin
  inherited;
  dsExame.DataSet.active := true;
  dsExame.DataSet.Edit;
  dmExames.qyExamespac_meses.Clear;
  dbIdade.SetFocus;
end;

procedure TfrmEditaDataNasc.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if dsExame.DataSet.State in [dsEdit] then
    dsExame.DataSet.Cancel;
  inherited;
end;

procedure TfrmEditaDataNasc.Gravar;
begin
  try
    dsExame.DataSet.Post;
    Close;
  except
    MessageDlg('Não foi possível alterar a idade!', mtError, [mbok], 0);
    Close;
  end;
end;

end.
