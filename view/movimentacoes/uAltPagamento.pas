unit uAltPagamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpFormNormal, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Grids, Wwdbigrd, Wwdbgrid, Data.DB, wwdblook;

type
  TfrmAltPagamento = class(TfrmTmpFormNormal)
    Label1: TLabel;
    cbFornecedor: TwwDBLookupCombo;
    dsConsulta: TDataSource;
    btFiltrar: TBitBtn;
    btLimpar: TBitBtn;
    DBGrid1: TwwDBGrid;
    btAlterar: TBitBtn;
    procedure FormActivate(Sender: TObject);
    procedure btFiltrarClick(Sender: TObject);
    procedure btLimparClick(Sender: TObject);
    procedure DBGrid1CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure btAlterarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAltPagamento: TfrmAltPagamento;

implementation

{$R *.dfm}

uses dataFinanceiro, uDaoPagar, dataLookups, uConfAltPagamento;

procedure TfrmAltPagamento.btAlterarClick(Sender: TObject);
begin
  frmConfAltPagamento.ShowModal;
end;

procedure TfrmAltPagamento.btFiltrarClick(Sender: TObject);
Var
vCodigo: String;
begin
  vCodigo := dmLookups.lkProcFornecedoresfor_codigo.Text;
  cbFornecedor.Text := dmLookups.lkProcFornecedoresfor_razao.Text;
  FiltrarConsPagar(vCodigo, 'A');
end;

procedure TfrmAltPagamento.btLimparClick(Sender: TObject);
begin
  cbFornecedor.Clear;
  cbFornecedor.Text := 'Todos';
  FiltrarPagar('p.pag_status', '=', 'A', 'p.pag_vencimento', '0');
  cbFornecedor.SetFocus;
end;

procedure TfrmAltPagamento.DBGrid1CalcCellColors(Sender: TObject; Field: TField;
  State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
  if (dsConsulta.DataSet.FieldByName('pag_vencimento').Value <= Date) then
    aFont.Color := clBlack
  else
  Begin
    aFont.Color := clRed;
  end;
end;

procedure TfrmAltPagamento.DBGrid1DblClick(Sender: TObject);
begin
  frmConfAltPagamento.ShowModal;
end;

procedure TfrmAltPagamento.FormActivate(Sender: TObject);
begin
  inherited;
  cbFornecedor.Clear;
  cbFornecedor.Text := 'Todos';
  FiltrarPagar('p.pag_status', '=', 'A', 'p.pag_vencimento', '0');
  dmFinanceiro.qyPagar.Open;
  cbFornecedor.SetFocus;
end;

end.
