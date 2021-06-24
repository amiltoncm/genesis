unit uTmpProcura;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpFormNormal, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, wwdblook, Data.DB;

type
  TfrmTmpProcura = class(TfrmTmpFormNormal)
    Label1: TLabel;
    lbCampo: TLabel;
    cbProcura: TwwDBLookupCombo;
    spProcura: TSpeedButton;
    spLimpar: TSpeedButton;
    GridProcura: TDBGrid;
    btConfirmar: TBitBtn;
    dsProcura: TDataSource;
    procedure FormActivate(Sender: TObject);
    procedure GridProcuraDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTmpProcura: TfrmTmpProcura;

implementation

{$R *.dfm}

procedure TfrmTmpProcura.FormActivate(Sender: TObject);
begin
  cbProcura.Clear;
  inherited;
  dsProcura.DataSet.Active := True;
  cbProcura.SetFocus;
end;

procedure TfrmTmpProcura.FormKeyPress(Sender: TObject; var Key: Char);
begin
  //inherited;

end;

procedure TfrmTmpProcura.GridProcuraDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if odd(dsProcura.DataSet.RecNo) then
    GridProcura.Canvas.Brush.Color := clSkyBlue
  else
    GridProcura.Canvas.Brush.Color:= clInfoBk;
  TDBGrid(Sender).Canvas.font.Color:= clBlack;
  if gdSelected in State then
    with (Sender as TDBGrid).Canvas do
    begin
      Brush.Color := clYellow;
      FillRect(Rect);
      Font.Style := [fsbold];
    end;
  TDBGrid(Sender).DefaultDrawDataCell(Rect, TDbGrid(Sender).columns[datacol].field, State);
end;

end.
