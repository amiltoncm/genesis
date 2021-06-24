unit uExamesHist;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpFormNormal, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Mask, wwdbedit, Wwdbspin, wwdblook, Vcl.ExtCtrls, Vcl.Menus,
  Data.DB, Vcl.Grids, Wwdbigrd, Wwdbgrid, Vcl.DBGrids;

type
  TfrmExamesHist = class(TfrmTmpFormNormal)
    Label1: TLabel;
    lbExame: TLabel;
    dsExamesHist: TDataSource;
    PopupMenu: TPopupMenu;
    Deletar1: TMenuItem;
    Panel1: TPanel;
    Label23: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    cbMaterial: TwwDBLookupCombo;
    cbTipoExame: TwwDBLookupCombo;
    cbExame: TwwDBLookupCombo;
    edQuantidade: TwwDBSpinEdit;
    btInsereExame: TBitBtn;
    GridMateriais: TDBGrid;
    procedure FormActivate(Sender: TObject);
    procedure Deletar1Click(Sender: TObject);
    procedure btInsereExameClick(Sender: TObject);
    procedure cbTipoExameChange(Sender: TObject);
    procedure cbExameEnter(Sender: TObject);
    procedure GridMateriaisDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmExamesHist: TfrmExamesHist;

implementation

{$R *.dfm}

uses uDaoExamesHist, dataExames, dataLookups, uDaoLaudosPadrao, dataCadastros,
  uInsereModeloMacro, uVarGlobal;

procedure TfrmExamesHist.btInsereExameClick(Sender: TObject);
Var
vIDMaterial: String;
vIDExameHisteth: String;
begin
  try
  vIDExameHisteth := dmLookups.lkProcExamesHisteth_id.Text;
  vIDMaterial := dmLookups.lkProcMateriaismat_id.Text;
  InsExamesHist(lbExame.Caption, dmLookups.lkProcMateriaismat_id.Value,
                dmLookups.lkProcExamesTipoeio_id.Value, vIDExameHisteth,
                StrToInt(edQuantidade.Text));
  //limpa combos
  cbMaterial.Text := '';
  cbTipoExame.Text := '';
  cbExame.Text := '';
  //Verifica se para este material existe algum modelo de macroscopia padrão
  FiltrarLaudosPadrao('mat_id', '=', vIDMaterial, '0', '100');
  if not(dmCadastros.qyLaudosPadraolmm_id.IsNull) then
  begin
    vgIDModeloMacro := dmExames.qyExamesHistexa_id.Text;
    frmInsereModeloMacro.ShowModal;
  end;
  except
    MessageDlg('Não foi possível inserir o exame solicitado!', mtError, [mbok], 0);
  end;
end;

procedure TfrmExamesHist.cbExameEnter(Sender: TObject);
begin
  if cbTipoExame.Text <> '' then
    FiltrarProcExamesHist(dmLookups.lkProcExamesTipoeio_id.Text)
  else
    FiltrarProcExamesHist('0');
end;

procedure TfrmExamesHist.cbTipoExameChange(Sender: TObject);
begin
  if cbTipoExame.Text <> '' then
    FiltrarProcExamesHist(dmLookups.lkProcExamesTipoeio_id.Text)
  else
    FiltrarProcExamesHist('0');
end;

procedure TfrmExamesHist.GridMateriaisDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  if odd(dsExamesHist.DataSet.RecNo) then
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

procedure TfrmExamesHist.Deletar1Click(Sender: TObject);
begin
  if MessageDlg('Deseja realmente apagar o registro?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    dmExames.qyExamesHist.Delete;
end;

procedure TfrmExamesHist.FormActivate(Sender: TObject);
Var
vExame: String;
begin
  inherited;
  vExame := dmExames.qyExamesexa_id.Text;
  lbExame.Caption := vExame;
  dsExamesHist.DataSet.Active := true;
  FiltrarExamesHist('h.exa_id', '=', vExame, '0', '100');
  cbMaterial.SetFocus;
end;

end.
