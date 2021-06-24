unit uTmpSenhaMaster;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpFormNormal, Vcl.StdCtrls,
  Vcl.Buttons;

type
  TfrmTmpSenhaMaster = class(TfrmTmpFormNormal)
    Label1: TLabel;
    edSenha: TEdit;
    btOk: TBitBtn;
    procedure edSenhaChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btOkClick(Sender: TObject);

  private

    vlSenhaMaster: String;

  public
    { Public declarations }
  end;

var
  frmTmpSenhaMaster: TfrmTmpSenhaMaster;

implementation

{$R *.dfm}

uses uDaoUsuarios;

procedure TfrmTmpSenhaMaster.btOkClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmTmpSenhaMaster.edSenhaChange(Sender: TObject);
begin
  if edSenha.text = vlSenhaMaster then
    btOk.Enabled := True
  else
    btOk.Enabled := False;
end;

procedure TfrmTmpSenhaMaster.FormActivate(Sender: TObject);
begin
  inherited;
  //carrega senha MASTER
  vlSenhaMaster := GetSenhaMaster;
  edSenha.clear;
  edSenha.Visible := True;
  edSenha.SetFocus;
end;

end.
