unit uObsEx;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpFormNormal, Vcl.StdCtrls,
  Vcl.Buttons, Data.DB, Vcl.ComCtrls, wwriched, wwrichedspellxp;

type
  TfrmObsEx = class(TfrmTmpFormNormal)
    dbObservacoes: TwwDBRichEditMSWord;
    dsObs: TDataSource;
    btNovaObs: TBitBtn;
    procedure btNovaObsClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmObsEx: TfrmObsEx;

implementation

{$R *.dfm}

uses dataExames, uObsExames, uVarGlobal;

procedure TfrmObsEx.btNovaObsClick(Sender: TObject);
begin
  frmObsExames.ShowModal;
end;

procedure TfrmObsEx.FormActivate(Sender: TObject);
begin
  inherited;
  dsObs.DataSet.Active := True;
end;

end.
