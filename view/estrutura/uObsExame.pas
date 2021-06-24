unit uObsExame;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpFormNormal, Vcl.StdCtrls,
  Vcl.DBCtrls, Vcl.Buttons;

type
  TfrmObsExame = class(TfrmTmpFormNormal)
    Label1: TLabel;
    dbObsExame: TDBMemo;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmObsExame: TfrmObsExame;

implementation

{$R *.dfm}

end.
