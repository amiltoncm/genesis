unit uTmpFormMDI;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpForm, Vcl.StdCtrls, Vcl.Buttons;

type
  TfrmTmpFormMDI = class(TfrmTmpForm)
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTmpFormMDI: TfrmTmpFormMDI;

implementation

{$R *.dfm}

procedure TfrmTmpFormMDI.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

end.
