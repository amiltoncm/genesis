unit uTmpConsultasNormal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpFormNormal, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Data.DB;

type
  TfrmTmpConsultasNormal = class(TfrmTmpFormNormal)
    lbParametro: TLabel;
    btFiltrar: TBitBtn;
    btLimpar: TBitBtn;
    edParametro: TEdit;
    GridConsulta: TDBGrid;
    dsConsulta: TDataSource;
    btSelecionar: TBitBtn;
    procedure FormActivate(Sender: TObject);
    procedure GridConsultaDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTmpConsultasNormal: TfrmTmpConsultasNormal;

implementation

{$R *.dfm}

procedure TfrmTmpConsultasNormal.FormActivate(Sender: TObject);
begin
  inherited;
  edParametro.Clear;
  if edParametro.Visible = true then
    edParametro.SetFocus;
  dsConsulta.DataSet.Active := True;
end;

procedure TfrmTmpConsultasNormal.GridConsultaDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if odd(dsConsulta.DataSet.RecNo) then
    GridConsulta.Canvas.Brush.Color := clSilver
  else
    GridConsulta.Canvas.Brush.Color:= clWhite;
  GridConsulta.Canvas.FillRect(Rect);
  if gdSelected in State then
    with GridConsulta.Canvas do
    begin
      Brush.Color := clYellow;
      FillRect(Rect);
      //Font.Style := [fsbold];
    end;
  GridConsulta.DefaultDrawDataCell(Rect, Column.Field, State);
end;

end.
