unit uSelDataIntegridade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpFormNormal, Vcl.StdCtrls,
  Vcl.Buttons, JvExControls, JvWaitingGradient, wwdbdatetimepicker;

type
  TfrmSelDataIntegridade = class(TfrmTmpFormNormal)
    Label1: TLabel;
    cbDataInic: TwwDBDateTimePicker;
    waiting: TJvWaitingGradient;
    btLimpar: TBitBtn;
    procedure FormActivate(Sender: TObject);
    procedure btLimparClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSelDataIntegridade: TfrmSelDataIntegridade;

implementation

{$R *.dfm}

uses uFuncoesSistema, uFuncIntegridade, uIntegridade, uVarGlobal;

procedure TfrmSelDataIntegridade.btLimparClick(Sender: TObject);
begin
  try
  waiting.Visible := true;
  Delay(3000);
  frmSelDataIntegridade.Cursor := crHourGlass;
  VerificaIntegridade(cbDataInic.Date);
  frmSelDataIntegridade.Cursor := crDefault;
  waiting.Visible := false;
  vgDataIntegridade := cbDataInic.Text;
  frmIntegridade.ShowModal;
  Close;
  except
    waiting.Visible := false;
    frmSelDataIntegridade.Cursor := crDefault;
    Close;
  end;
end;

procedure TfrmSelDataIntegridade.FormActivate(Sender: TObject);
begin
  inherited;
  waiting.Visible := false;
  cbDataInic.Date := now;
  cbDataInic.SetFocus;
end;

end.
