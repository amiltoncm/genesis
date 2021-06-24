unit uBxCheques;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpFormNormal, Vcl.StdCtrls,
  Vcl.Buttons, Data.DB, Vcl.Grids, Wwdbigrd, Wwdbgrid;

type
  TfrmBxCheques = class(TfrmTmpFormNormal)
    Label1: TLabel;
    edDescricao: TEdit;
    btFiltrar: TBitBtn;
    btLimpar: TBitBtn;
    DBGrid1: TwwDBGrid;
    btExcluir: TBitBtn;
    btDepositar: TBitBtn;
    btAlterar: TBitBtn;
    dsConsulta: TDataSource;
    procedure Limpar;
    procedure Filtrar;
    procedure FormActivate(Sender: TObject);
    procedure btFiltrarClick(Sender: TObject);
    procedure btLimparClick(Sender: TObject);
    procedure btDepositarClick(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
    procedure btAlterarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBxCheques: TfrmBxCheques;

implementation

{$R *.dfm}

uses dataFinanceiro, uDaoCheques, uSenhaCheque, uDepCheque, uConfirmaBxChq;

procedure TfrmBxCheques.FormActivate(Sender: TObject);
begin
  inherited;
  Limpar;
  dsConsulta.DataSet.Active := True;
  dsConsulta.DataSet.Refresh;
end;

procedure TfrmBxCheques.Limpar;
begin
  edDescricao.Text := '';
  FiltrarCheques('c.chq_estado', '=', 'A', 'c.chq_vencimento', '0');
  edDescricao.SetFocus;
end;

procedure TfrmBxCheques.btAlterarClick(Sender: TObject);
begin
  frmConfirmaBxChq.ShowModal;
end;

procedure TfrmBxCheques.btDepositarClick(Sender: TObject);
begin
  frmDepCheque.ShowModal;
end;

procedure TfrmBxCheques.btExcluirClick(Sender: TObject);
begin
  frmSenhaCheque.ShowModal;
end;

procedure TfrmBxCheques.btFiltrarClick(Sender: TObject);
begin
  Filtrar;
end;

procedure TfrmBxCheques.btLimparClick(Sender: TObject);
begin
  Limpar;
end;

procedure TfrmBxCheques.Filtrar;
begin
  FiltrarConsCheques(edDescricao.Text, '0', '0', 'A');
  if dmFinanceiro.qyChequeschq_estado.IsNull then
    MessageDlg('Não foi encontrado resultado com a busca efetuada (' + edDescricao.Text + ')!',
               mtWarning, [mbOk], 0);
end;

end.
