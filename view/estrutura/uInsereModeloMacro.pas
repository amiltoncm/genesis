unit uInsereModeloMacro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpFormNormal, Vcl.StdCtrls,
  Vcl.Buttons, Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TfrmInsereModeloMacro = class(TfrmTmpFormNormal)
    Label2: TLabel;
    lbExame: TLabel;
    Label1: TLabel;
    dsModelo: TDataSource;
    btInserir: TBitBtn;
    GridModelos: TDBGrid;
    procedure FormActivate(Sender: TObject);
    procedure btInserirClick(Sender: TObject);
    procedure GridModelosDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmInsereModeloMacro: TfrmInsereModeloMacro;

implementation

{$R *.dfm}

uses dataCadastros, uVarGlobal, dataExames, uDaoLaudosModMacro,
  uDaoExamesHistMacro;

procedure TfrmInsereModeloMacro.btInserirClick(Sender: TObject);
begin
  inherited;
  //Filtra a tabela de modelos e verifica se é nulo
  FiltrarLaudosModMacro('lmm_id', '=', dmCadastros.qyLaudosPadraomat_id.Text, '0', '0');
  if not(dmCadastros.qyLaudosModMacrolmm_id.IsNull) then
  Begin
    try
    //Filtra a Macroscopia e verifica se existe
    FiltrarExamesHistMacro('exa_id', '=', vgIDModeloMacro, '0', '0');
    if dmExames.qyExamesHistMacroexa_id.IsNull then
      InsExamesHistMacro(vgIDModeloMacro)
    else
      UpdExamesHistMacro(vgIDModeloMacro);
    MessageDlg('Modelo gravado com sucesso!', mtInformation, [mbok], 0);
    Close;
    except
      MessageDlg('Não foi possível gravar o modelo!', mtError, [mbok], 0);
    end;
  end
  else
    MessageDlg('Já existe modelo inserido!', mtError, [mbok], 0);
end;

procedure TfrmInsereModeloMacro.FormActivate(Sender: TObject);
begin
  inherited;
  lbExame.Caption := vgIDModeloMacro;
  dsModelo.DataSet.Active := True;
  GridModelos.SetFocus;
end;

procedure TfrmInsereModeloMacro.GridModelosDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  if odd(dsModelo.DataSet.RecNo) then
    GridModelos.Canvas.Brush.Color := clSilver
  else
    GridModelos.Canvas.Brush.Color:= clWhite;
  GridModelos.Canvas.FillRect(Rect);
  if gdSelected in State then
    with GridModelos.Canvas do
    begin
      Brush.Color := clHighlight;
      FillRect(Rect);
      //Font.Style := [fsbold];
    end;
  GridModelos.DefaultDrawDataCell(Rect, Column.Field, State);
end;

end.
