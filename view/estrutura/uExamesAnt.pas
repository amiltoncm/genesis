unit uExamesAnt;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpFormNormal, Vcl.StdCtrls,
  Vcl.Buttons, Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TfrmExamesAnt = class(TfrmTmpFormNormal)
    dsExamesAnt: TDataSource;
    btDetalhes: TBitBtn;
    GridExamesAnt: TDBGrid;
    procedure Filtrar;
    procedure btDetalhesClick(Sender: TObject);
    procedure GridExamesAntDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmExamesAnt: TfrmExamesAnt;

implementation

{$R *.dfm}

uses dataLookups, dataConsultas, uDaoExames, uDetExame;

procedure TfrmExamesAnt.GridExamesAntDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  if odd(dsExamesAnt.DataSet.RecNo) then
    GridExamesAnt.Canvas.Brush.Color := clSilver
  else
    GridExamesAnt.Canvas.Brush.Color:= clWhite;
  GridExamesAnt.Canvas.FillRect(Rect);
  if gdSelected in State then
    with GridExamesAnt.Canvas do
    begin
      Brush.Color := clHighlight;
      FillRect(Rect);
      //Font.Style := [fsbold];
    end;
  GridExamesAnt.DefaultDrawDataCell(Rect, Column.Field, State);
end;

procedure TfrmExamesAnt.filtrar;
begin
  frmDetExame.ShowModal;
end;

procedure TfrmExamesAnt.btDetalhesClick(Sender: TObject);
begin
  Filtrar;
end;

end.
