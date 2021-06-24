unit uPendencias;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpFormNormal, Vcl.StdCtrls,
  Vcl.ComCtrls, wwriched, wwrichedspellxp, Vcl.ExtCtrls, Vcl.Buttons;

type
  TfrmPendencias = class(TfrmTmpFormNormal)
    Image2: TImage;
    rePendencias: TwwDBRichEditMSWord;
    Label2: TLabel;
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPendencias: TfrmPendencias;

implementation

{$R *.dfm}

procedure TfrmPendencias.FormActivate(Sender: TObject);
begin
  inherited;
  btFechar.SetFocus;
end;

end.
