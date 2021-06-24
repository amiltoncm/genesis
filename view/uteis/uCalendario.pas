unit uCalendario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpFormMDI, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ComCtrls;

type
  TfrmCalendario = class(TfrmTmpFormMDI)
    MonthCalendar1: TMonthCalendar;
    procedure FormActivate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCalendario: TfrmCalendario;

implementation

{$R *.dfm}

procedure TfrmCalendario.FormActivate(Sender: TObject);
begin
  inherited;
  MonthCalendar1.Date := now;
end;

procedure TfrmCalendario.FormDestroy(Sender: TObject);
begin
  if frmCalendario <> nil then
    frmCalendario := nil;
end;

end.
