unit uTmpForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TfrmTmpForm = class(TForm)
    BalloonHint1: TBalloonHint;
    btFechar: TBitBtn;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btFecharClick(Sender: TObject);

  private

    ComponentePro: TComponent;
    procedure ProCode(Sender: TObject);

  public

  end;

var
  frmTmpForm: TfrmTmpForm;

implementation

{$R *.dfm}

procedure TfrmTmpForm.ProCode(Sender: TObject);
begin
  if Assigned(ComponentePro) then
  begin
    if TEdit(ComponentePro).ReadOnly then
      TEdit(ComponentePro).Color := clBtnFace // cor ao sair
    else
      TEdit(ComponentePro).Color := clWindow; // cor ao sair
  end;
  if (ActiveControl is TCustomEdit) or
     (ActiveControl is TComboBox) or
     (ActiveControl is TMemo) then
  begin
    TEdit(ActiveControl).Color := clSkyBlue;  // cor ao focar
    ComponentePro := ActiveControl;
  end;
end;

procedure TfrmTmpForm.btFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmTmpForm.FormActivate(Sender: TObject);
begin
  Screen.OnActiveControlChange := ProCode;
end;

procedure TfrmTmpForm.FormDestroy(Sender: TObject);
begin
  Screen.OnActiveControlChange := nil;
end;

procedure TfrmTmpForm.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    Key := #0;
    Perform(Wm_NextDlgCtl, 0, 0);
  end;
  if key = #27 then
    Close;
end;

end.
