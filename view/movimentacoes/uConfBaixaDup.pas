unit uConfBaixaDup;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpFormNormal, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Grids, wwDataInspector, wwdbdatetimepicker, Vcl.Mask,
  Vcl.DBCtrls, wwdblook, DB;

type
  TfrmConfBaixaDup = class(TfrmTmpFormNormal)
    wwDataInspector1: TwwDataInspector;
    Label1: TLabel;
    edValor: TEdit;
    Label2: TLabel;
    dbCodConta: TwwDBLookupCombo;
    dbConta: TDBEdit;
    Label3: TLabel;
    edDtPagamento: TwwDBDateTimePicker;
    Label4: TLabel;
    cbPlanoContas: TwwDBLookupCombo;
    btBaixar: TBitBtn;
    dsProcContas: TDataSource;
    procedure FormActivate(Sender: TObject);
    procedure btBaixarClick(Sender: TObject);
    procedure edValorKeyPress(Sender: TObject; var Key: Char);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure edValorExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConfBaixaDup: TfrmConfBaixaDup;

implementation

{$R *.dfm}

uses uBxDupFor, dataLookups, uDaoMovimentos, dataFinanceiro, uFuncoesFormatacao,
  uClassCaixa, uClassPagar, uDaoCaixa, uDaoPagar;

procedure TfrmConfBaixaDup.btBaixarClick(Sender: TObject);
Var
vDescricao: String;
vPagoAnt, vAcrescimo, vSaldo, vPago, vValor, vDesconto: Real;
vCaixa: TCaixa;
vPagar: TPagar;
begin
  vDescricao := dmFinanceiro.qyPagarfor_razao.Text;
  vPagoAnt := dmFinanceiro.qyPagarpag_pago.Value;
  vValor := dmFinanceiro.qyPagarpag_saldo.Value;
  vPago := StrToFloat(edValor.Text);
  vCaixa := TCaixa.Create;
  vCaixa.Cai_valor := StrToFloat('-' + edValor.Text);
  vCaixa.Mov_codigo := dmLookups.lkProcMovimentosmov_codigo.Value;
  vCaixa.Con_codigo := StrToInt(dbCodConta.Text);
  vPagar := TPagar.Create;
  vPagar.Nf := dmFinanceiro.qyPagarpag_nf.Value;
  vPagar.Parcela := dmFinanceiro.qyPagarpag_parcela.Value;
  vPagar.CodFornecedor := dmFinanceiro.qyPagarfor_codigo.Value;
  vPagar.Emissao := dmFinanceiro.qyPagarpag_emissao.Value;
  vPagar.Vencimento := dmFinanceiro.qyPagarpag_vencimento.Value;
  vPagar.Valor := dmFinanceiro.qyPagarpag_valor.Value;
  vPagar.Acrescimo := dmFinanceiro.qyPagarpag_acrescimo.Value;
  vPagar.Desconto := dmFinanceiro.qyPagarpag_desconto.Value;
  vPagar.Pago := dmFinanceiro.qyPagarpag_pago.Value;
  vPagar.Saldo := dmFinanceiro.qyPagarpag_saldo.Value;
  vPagar.Status := dmFinanceiro.qyPagarpag_status.Value;
  //Se o Valor for menor ao Pago
  if vValor < vPago then
  Begin
    if Messagedlg('O valor pago é maior que o saldo?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    Begin
      vAcrescimo := vPago - vValor;
      vPagar.Saldo := 0;
      vPagar.Pago := vPago + vPagoAnt;
      vPagar.Acrescimo := vAcrescimo;
      vPagar.Status := 'P';
    end
    else
    Begin
      vPagar.Pago := vValor + vPagoAnt;
      vPagar.Saldo := 0;
      vPagar.Status := 'P';
    end;
  end;
  //Se o Saldo for igual ao Pago
  if vValor = vPago Then
  Begin
    vPagar.Pago := vPago + vPagoAnt;
    vPagar.Saldo := 0;
    vPagar.Status := 'P';
  end;
  //Se o Valor for maior ao Pago
  if vValor > vPago Then
  Begin
    if Messagedlg('O valor pago é menor que o saldo!' + #13 + 'Deseja gravar saldo?',
                  mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    Begin
      vSaldo := vValor - vPago;
      vPagar.Saldo := vSaldo;
      vPagar.Pago := vPago + vPagoAnt;
      if vSaldo <= 0 then
        vPagar.Status := 'P';
    end
    else
    Begin
      vDesconto := vValor - vPago;
      vPagar.Desconto := vDesconto;
      vPagar.Pago := vPago + vPagoAnt;
      vPagar.Saldo := 0;
      vPagar.Status := 'P';
    end;
  end;
  EdtPagar;
  SetValuesPagar(vPagar);
  PostPagar;
  InsCaixa;
  vCaixa.Cai_data := edDtPagamento.Date;
  vCaixa.Cai_descricao := vDescricao;
  SetValuesCaixa(vCaixa);
  PostCaixa;
  vCaixa.Free;
  vPagar.Free;
  dmFinanceiro.qyPagar.Refresh;
  Close;
end;

procedure TfrmConfBaixaDup.edValorExit(Sender: TObject);
Var
vValor: String;
begin
  Try
    vValor := LimpaReal(edValor.Text);
    edValor.Text := FloatToStrF((StrToFloat(vValor)),fffixed,15,2);
  Except
    Messagedlg('Verifique o preenchimento do valor!', mtError, [mbOk],0);
  end;
end;

procedure TfrmConfBaixaDup.edValorKeyPress(Sender: TObject; var Key: Char);
begin
  if key in [',','.'] then
    Key := DecimalSeparator;
  if not (Key in ['0'..'9', DecimalSeparator, Chr(8)]) then
    Key := #0;
end;

procedure TfrmConfBaixaDup.FormActivate(Sender: TObject);
begin
  inherited;
  dmLookups.lkProcContas.First;
  dbCodConta.Text := dmLookups.lkProcContascon_codigo.Text;
  FiltrarProcMovimentos('D');
  cbPlanoContas.Text := dmLookups.lkProcMovimentosmov_descricao.Text;
  edDtPagamento.Date := now;
  edValor.Clear;
  edValor.Text := dmFinanceiro.qyPagarpag_saldo.Text;
  edValor.SetFocus;
end;

procedure TfrmConfBaixaDup.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  inherited;
  if frmBxDupFor.dsDuplicatas.DataSet.State in [dsEdit] then
    frmBxDupFor.dsDuplicatas.DataSet.Cancel;
end;

procedure TfrmConfBaixaDup.FormCreate(Sender: TObject);
Var
vHwndHandle: THANDLE;
vHMenuHandle: HMenu;
begin
  vHwndHandle := Self.Handle;
  if (vHwndHandle <> 0) then
  Begin
    vHMenuHandle := GetSystemMenu(vHwndHandle, False);
    if (vHMenuHandle <> 0) then
      DeleteMenu(vHMenuHandle, SC_CLOSE, MF_BYCOMMAND);
  end;
  inherited;
end;

end.
