unit uModulos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpFormNormal, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Data.DB;

type
  TfrmModulos = class(TfrmTmpFormNormal)
    dsModulos: TDataSource;
    DBGrid1: TDBGrid;
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmModulos: TfrmModulos;

implementation

{$R *.dfm}

uses uFuncoesSistema, uDaoModulos, dataConfig;

procedure TfrmModulos.FormActivate(Sender: TObject);
begin
  inherited;
  ListarModulos('mod_codigo', '0');
  Self.Caption := Application.Title + ' - Vs. ' + VersaoSistema(0) + ' - [Módulos]';
end;

end.
