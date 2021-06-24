unit uBxDupFor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpFormNormal, Vcl.StdCtrls,
  Vcl.Buttons, Data.DB, Vcl.Grids, Vcl.DBGrids, wwdblook;

type
  TfrmBxDupFor = class(TfrmTmpFormNormal)
    Label1: TLabel;
    cbFornecedor: TwwDBLookupCombo;
    btFiltrar: TBitBtn;
    btLimpar: TBitBtn;
    DBGrid1: TDBGrid;
    dsDuplicatas: TDataSource;
    btBxChq: TBitBtn;
    btBaixar: TBitBtn;
    procedure Limpar;
    procedure FormActivate(Sender: TObject);
    procedure btFiltrarClick(Sender: TObject);
    procedure btLimparClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btBaixarClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure btBxChqClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBxDupFor: TfrmBxDupFor;

implementation

{$R *.dfm}

uses dataFinanceiro, dataLookups, uDaoPagar, uConfBaixaDup, uVarGlobal, uSelChq;

procedure TfrmBxDupFor.Limpar;
begin
  cbFornecedor.Clear;
  cbFornecedor.Text := 'Todos';
  FiltrarPagar('p.pag_status', '=', 'A', 'p.pag_vencimento', '0');
  cbFornecedor.SetFocus;
end;

procedure TfrmBxDupFor.btBaixarClick(Sender: TObject);
begin
  frmConfBaixaDup.ShowModal;
end;

procedure TfrmBxDupFor.btBxChqClick(Sender: TObject);
begin
  vgDuplicata := dmFinanceiro.qyPagarpag_saldo.Text;
  vgNumParc := dmFinanceiro.qyPagarpag_parcela.text;
  vgCodFornec := dmFinanceiro.qyPagarfor_codigo.text;
  vgFornecedor := dmFinanceiro.qyPagarfor_razao.text;
  frmSelChq.ShowModal;
end;

procedure TfrmBxDupFor.btFiltrarClick(Sender: TObject);
Var
vCodigo: String;
begin
  if cbFornecedor.Text <> '' then
  Begin
    vCodigo := dmLookups.lkProcFornecedoresfor_codigo.Text;
    cbFornecedor.Text := dmLookups.lkProcFornecedoresfor_razao.Text;
    FiltrarConsPagar(vCodigo, 'A');
  end
  else
  Begin
    Messagedlg('Você deve selecionar o fornecedor!',mtError,[mbok],0);
    cbFornecedor.SetFocus;
  end;
end;

procedure TfrmBxDupFor.btLimparClick(Sender: TObject);
begin
  Limpar;
end;

procedure TfrmBxDupFor.DBGrid1DblClick(Sender: TObject);
begin
  frmConfBaixaDup.ShowModal;
end;

procedure TfrmBxDupFor.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if dmFinanceiro.qyPagarPAG_VENCIMENTO.Value <= Date then
    DBGrid1.Canvas.Font.Color := clRed;
  DBGrid1.DefaultDrawDataCell(Rect, dbgrid1.Columns[datacol].field, state);
end;

procedure TfrmBxDupFor.FormActivate(Sender: TObject);
begin
  inherited;
  Limpar;
  dsDuplicatas.DataSet.Active := True;
end;

end.
