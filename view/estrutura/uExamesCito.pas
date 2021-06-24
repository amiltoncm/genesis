unit uExamesCito;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpFormNormal, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.DBCtrls, Vcl.Mask, wwdbedit, Wwdbspin, wwdblook,
  Vcl.ExtCtrls, Vcl.Menus, Data.DB, Vcl.Grids, Wwdbigrd, Wwdbgrid, Vcl.DBGrids;

type
  TfrmExamesCito = class(TfrmTmpFormNormal)
    Label1: TLabel;
    lbExame: TLabel;
    dsExamesCito: TDataSource;
    dsTpExame: TDataSource;
    PopupMenu: TPopupMenu;
    Deletar1: TMenuItem;
    Panel1: TPanel;
    Label23: TLabel;
    Label21: TLabel;
    Label2: TLabel;
    cbMaterial: TwwDBLookupCombo;
    edQuantidade: TwwDBSpinEdit;
    btInsereExame: TBitBtn;
    dbDescricao: TDBEdit;
    GridMateriais: TDBGrid;
    procedure Deletar1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btInsereExameClick(Sender: TObject);
    procedure GridMateriaisDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmExamesCito: TfrmExamesCito;

implementation

{$R *.dfm}

uses dataExames, dataLookups, uDaoExamesCito, uVarGlobal;

procedure TfrmExamesCito.btInsereExameClick(Sender: TObject);
begin
  InsExamesCito(lbExame.Caption, dmLookups.lkProcExamesTipoCitoeto_id.Value, StrToInt(edQuantidade.Text));
end;

procedure TfrmExamesCito.Deletar1Click(Sender: TObject);
begin
  if MessageDlg('Deseja realmente apagar o registro?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    dsExamesCito.DataSet.Delete;
end;

procedure TfrmExamesCito.FormActivate(Sender: TObject);
begin
  inherited;
  dsExamesCito.DataSet.Active := true;
  dsTpExame.DataSet.Active := true;
  lbExame.Caption := vgIDExamesReq;
  dsExamesCito.DataSet.Active := true;
  FiltrarExamesCito('c.exa_id', '=', vgIDExamesReq, '0', '0');
end;

procedure TfrmExamesCito.GridMateriaisDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  if odd(dsExamesCito.DataSet.RecNo) then
    GridMateriais.Canvas.Brush.Color := clSilver
  else
    GridMateriais.Canvas.Brush.Color:= clWhite;
  GridMateriais.Canvas.FillRect(Rect);
  if gdSelected in State then
    with GridMateriais.Canvas do
    begin
      Brush.Color := clHighlight;
      FillRect(Rect);
      //Font.Style := [fsbold];
    end;
  GridMateriais.DefaultDrawDataCell(Rect, Column.Field, State);
end;

end.
