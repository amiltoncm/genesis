unit uVersao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpFormNormal, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls,
  wwriched, wwrichedspellxp;

type
  TfrmVersao = class(TfrmTmpFormNormal)
    dsVersao: TDataSource;
    pnVersao: TPanel;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    wwDBRichEditMSWord1: TwwDBRichEditMSWord;
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVersao: TfrmVersao;

implementation

{$R *.dfm}

uses dataConfig, uFuncoesSistema, uDaoVersao;

procedure TfrmVersao.FormActivate(Sender: TObject);
begin
  inherited;
  Self.Caption := Self.Caption + VersaoSistema(0);
  pnVersao.Caption := 'Versão atual: ' + VersaoSistema(0);
  ListarVersao('ver_id desc');
  dsVersao.DataSet.Active := True;
end;

end.
