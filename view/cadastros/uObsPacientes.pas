unit uObsPacientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpFormNormal, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ComCtrls, wwriched, wwrichedspellxp, db;

type
  TfrmObsPacientes = class(TfrmTmpFormNormal)
    dbObs: TwwDBRichEditMSWord;
    SpeedButton2: TSpeedButton;
    btGravar: TBitBtn;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btGravarClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure btFecharClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmObsPacientes: TfrmObsPacientes;

implementation

{$R *.dfm}

uses uCadPacientes;

procedure TfrmObsPacientes.btFecharClick(Sender: TObject);
begin
  frmCadPacientes.dsCadastro.DataSet.Cancel;
  inherited;
end;

procedure TfrmObsPacientes.btGravarClick(Sender: TObject);
begin
  frmCadPacientes.dsCadastro.DataSet.Post;
  Close;
end;

procedure TfrmObsPacientes.FormActivate(Sender: TObject);
begin
  inherited;
  frmCadPacientes.dsCadastro.DataSet.Edit;
  dbObs.SetFocus;
end;

procedure TfrmObsPacientes.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if frmCadPacientes.dsCadastro.State in [dsEdit, dsInsert] then
    if MessageDlg('Existem alterações pendentes, ' + #13 + 'Deseja gravar?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      frmCadPacientes.dsCadastro.DataSet.Post
    else
      frmCadPacientes.dsCadastro.DataSet.Cancel;
end;

procedure TfrmObsPacientes.SpeedButton2Click(Sender: TObject);
begin
  dbObs.Execute;
end;

end.
