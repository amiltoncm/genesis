unit uSelChq;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpFormNormal, Vcl.StdCtrls,
  Vcl.Buttons, Data.DB, Vcl.Mask, Vcl.DBCtrls, wwdblook, Vcl.Grids, Vcl.DBGrids,
  JvMemoryDataset;

type
  TfrmSelChq = class(TfrmTmpFormNormal)
    Label1: TLabel;
    DBGrid1: TDBGrid;
    btSelecionar: TBitBtn;
    btDesmarcar: TBitBtn;
    Label3: TLabel;
    edVlrDup: TEdit;
    Label4: TLabel;
    edVlrSaldo: TEdit;
    Label5: TLabel;
    cbCodMov: TwwDBLookupCombo;
    dbMovimento: TDBEdit;
    btGravar: TBitBtn;
    dsCheques: TDataSource;
    dsMemory: TDataSource;
    dsCaixa: TDataSource;
    Label2: TLabel;
    DBGrid2: TDBGrid;
    MemoryData: TJvMemoryData;
    MemoryDataVENCIMENTO: TDateField;
    MemoryDataVALOR: TFloatField;
    MemoryDataREFERENCIA: TIntegerField;
    dsPlanoContas: TDataSource;
    procedure btFecharClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btSelecionarClick(Sender: TObject);
    procedure btDesmarcarClick(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
  private
    { Private declarations }
  public

    function SomaCheques(vSoma: real): real;
    procedure CalculaSaldo;
    function VerificaCheque(vLancamento: String): boolean;
    procedure BaixaCheques;

  end;

var
  frmSelChq: TfrmSelChq;

implementation

{$R *.dfm}

uses uVarGlobal, dataFinanceiro, uFuncoesDB, uFuncoesFormatacao,
  uDaoCheques, uDaoPagar, uDaoCaixa, dataLookups;

procedure TfrmSelChq.BaixaCheques;
Var
vLancamento: String;
Begin
  //Baixa cheques
  MemoryData.First;
  Repeat
  Begin
    vLancamento := MemoryDataREFERENCIA.Text;
    FiltrarCheques('c.chq_lancamento' , '=', vLancamento, '0', '0');
    EdtCheques;
    dmFinanceiro.qyChequeschq_estado.Text := 'C';
    dmFinanceiro.qyChequeschq_repasse.Text := vgFornecedor;
    PostCheques;
    MemoryData.Next;
  end;
  Until MemoryData.EOF = True;
  //Baixa duplicata
  EdtPagar;
  dmFinanceiro.qyPagarpag_saldo.Value := 0;
  dmFinanceiro.qyPagarpag_pago.Text := LimpaReal(edVlrDup.Text);
  dmFinanceiro.qyPagarpag_acrescimo.Value := 0;
  dmFinanceiro.qyPagarpag_status.Text := 'P';
  dmFinanceiro.qyPagarpag_desconto.Value := 0;
  PostPagar;
  //faz lançamento no caixa
  InsCaixa;
  dmFinanceiro.qyCaixacai_data.Text := DateToStr(now);
  dmFinanceiro.qyCaixacai_descricao.Text := 'PAGAMENTO FORNECEDOR C/ CHEQUE';
  dmFinanceiro.qyCaixacai_valor.Value := StrToFloat('-' + LimpaReal(edVlrDup.Text));
  dmFinanceiro.qyCaixamov_codigo.Text := cbCodMov.Text;
  dmFinanceiro.qyCaixacon_codigo.Text := '1';
  dmFinanceiro.qyCaixacai_referencia.Text := MemoryDataREFERENCIA.Text;
  PostCaixa;
  dmFinanceiro.qyPagar.Refresh;
  MemoryData.Close;
  Close;
end;

function TfrmSelChq.SomaCheques(vSoma: real): real;
Begin
  MemoryData.Last;
  Repeat
  Begin
    vSoma := vSoma + MemoryDataVALOR.Value;
    MemoryData.Prior;
  end;
  Until MemoryData.Bof = True;
  result := vSoma;
end;

procedure TfrmSelChq.btDesmarcarClick(Sender: TObject);
begin
  if MemoryData.IsEmpty <> true then
  Begin
    MemoryData.Delete;
    CalculaSaldo;
  end
  else
    Messagedlg('Obrigatório selecionar um cheque!', mtError ,[mbok], 0);
end;

procedure TfrmSelChq.btFecharClick(Sender: TObject);
begin
  MemoryData.EmptyTable;
  inherited;
end;

procedure TfrmSelChq.btGravarClick(Sender: TObject);
Var
vVlrSaldo: Real;
begin
  if cbCodMov.Text <> '' then
  Begin
    vVlrSaldo := StrToFloat(LimpaReal(edVlrSaldo.text));
    if vVlrSaldo = 0 then
      BaixaCheques;
    if vVlrSaldo > 0 then
    Begin
      if Messagedlg('Existe um saldo em aberto, ele será descontado do caixa local?', mtConfirmation,[mbYes, mbNo],0) = mrYes then
        BaixaCheques;
    end;
    if vVlrSaldo < 0 then
      if Messagedlg('O valor pago é maior que a duplicata, ele entrará como troco no caixa local?', mtConfirmation,[mbYes, mbNo],0) = mrYes then
        BaixaCheques;
  end
  else
    Messagedlg('Você deve selecionar o Plano de Contas!', mtError, [mbok], 0);
end;

procedure TfrmSelChq.btSelecionarClick(Sender: TObject);
Var
vExiste: boolean;
begin
  vExiste := VerificaCheque(dmFinanceiro.qyChequeschq_lancamento.Text);
  if vExiste <> true then
  Begin
    MemoryData.Insert;
    MemoryDataVENCIMENTO.Text := dmFinanceiro.qyChequeschq_vencimento.Text;
    MemoryDataVALOR.Text := LimpaReal(dmFinanceiro.qyChequeschq_valor.Text);
    MemoryDataREFERENCIA.Text := dmFinanceiro.qyChequeschq_lancamento.Text;
    MemoryData.Post;
    CalculaSaldo;
    DBGrid2.SetFocus;
  end
  else
    Messagedlg('O cheque já está selecionado!', mtInformation, [mbok], 0);
end;

procedure TfrmSelChq.CalculaSaldo;
Var
vTotal, vSaldo, vPago: Real;
Begin
  vPago := SomaCheques(0);
  vTotal := StrToFloat(LimpaReal(edVlrDup.Text));
  vSaldo := vTotal - vPago;
  edVlrSaldo.Text := FloatToStrF((vSaldo),fffixed,9,2);
end;

procedure TfrmSelChq.FormActivate(Sender: TObject);
begin
  inherited;
  edVlrDup.Text := vgDuplicata;
  edVlrSaldo.Text := vgDuplicata;
  MemoryData.Active := True;
  FiltrarCheques('c.chq_estado', '=', 'A', 'c.chq_vencimento', '0');
  dsCaixa.DataSet.Active := True;
  dsCheques.DataSet.Active := True;
  dsMemory.DataSet.Active := True;
  cbCodMov.Text := '1';
  DBGrid1.SetFocus;
end;

function TfrmSelChq.VerificaCheque(vLancamento: String): boolean;
Var
vExiste: boolean;
Begin
  vExiste := false;
  MemoryData.First;
  Repeat
  Begin
    if MemoryDataREFERENCIA.Text = vLancamento then
      vExiste := True;
    MemoryData.Next;
  end;
  until MemoryData.EOF = true;
  Result := vExiste;
end;

end.
