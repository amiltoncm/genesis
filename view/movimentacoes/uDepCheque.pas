unit uDepCheque;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpFormNormal, Vcl.StdCtrls,
  Vcl.Buttons, wwdblook, Data.DB, Vcl.DBCtrls, Vcl.ExtCtrls;

type
  TfrmDepCheque = class(TfrmTmpFormNormal)
    dsCheque: TDataSource;
    dsCaixa: TDataSource;
    Label1: TLabel;
    cbConta: TwwDBLookupCombo;
    Panel1: TPanel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    DBText6: TDBText;
    DBText7: TDBText;
    btDepositar: TBitBtn;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    procedure DepositarCheque;
    procedure FormActivate(Sender: TObject);
    procedure btDepositarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDepCheque: TfrmDepCheque;

implementation

{$R *.dfm}

uses dataFinanceiro, dataLookups, uClassCaixa, uDaoCaixa, uDaoCheques;

procedure TfrmDepCheque.DepositarCheque;
Var
vCaixa: TCaixa;
begin
  if cbConta.text <> '' then
  Begin
    if dmLookups.lkProcContascon_codigo.Value <> 0 then
    begin
      BaixarCheque('Depósito em C.C. - (' + dmFinanceiro.qyChequesCHQ_VENCIMENTO.Text + ')');
      //faz movimentação de saída no caixa
      vCaixa := TCaixa.Create;
      InsCaixa;
      vCaixa.Cai_data := dmFinanceiro.qyChequesCHQ_VENCIMENTO.Value;
      vCaixa.Cai_descricao := 'REPASSE DE CHEQUE';
      vCaixa.Cai_valor := dmFinanceiro.qyChequeschq_valor.Value * -1;
      vCaixa.Mov_codigo := 5;
      vCaixa.Con_codigo := 1;
      SetValuesCaixa(vCaixa);
      PostCaixa;
      vCaixa.Free;
      //faz movimentação de entrada no caixa
      vCaixa := TCaixa.Create;
      InsCaixa;
      vCaixa.Cai_data := dmFinanceiro.qyChequesCHQ_VENCIMENTO.Value;
      vCaixa.Cai_descricao := 'REPASSE DE CHEQUE';
      vCaixa.Cai_valor := dmFinanceiro.qyChequesCHQ_VALOR.Value;
      vCaixa.Mov_codigo := 5;
      vCaixa.Con_codigo := dmLookups.lkProcContascon_codigo.Value;
      SetValuesCaixa(vCaixa);
      PostCaixa;
      vCaixa.Free;
      dmFinanceiro.qyCheques.Refresh;
      Messagedlg('Cheque depositado com sucesso!',mtinformation,[mbOk],0);
      Close;
    end
    else
      Messagedlg('A conta de destino deve ser diferente da de origem!',mterror,[mbOk],0);
  end
  else
    Messagedlg('Você deve selecionar a conta de destino!',mterror,[mbOk],0);
end;

procedure TfrmDepCheque.btDepositarClick(Sender: TObject);
begin
  if dmFinanceiro.qyChequeschq_vencimento.Value <> now then
  begin
    if MessageDlg('A data de vencimento do cheque é diferente da data de hoje!' +#13 + #13 +
                  'Deseja depositar mesmo assim?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      DepositarCheque;
  end
  else
    DepositarCheque;
end;

procedure TfrmDepCheque.FormActivate(Sender: TObject);
begin
  inherited;
  dsCaixa.DataSet.Active := True;
  dsCheque.DataSet.Active := True;
  cbConta.Clear;
  cbConta.Clear;
  cbConta.SetFocus;
end;

end.
