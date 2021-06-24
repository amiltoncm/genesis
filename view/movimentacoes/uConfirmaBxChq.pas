unit uConfirmaBxChq;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpFormNormal, Vcl.StdCtrls,
  Vcl.Buttons, wwdbdatetimepicker, Data.DB;

type
  TfrmConfirmaBxChq = class(TfrmTmpFormNormal)
    Label1: TLabel;
    edRepasse: TEdit;
    Label2: TLabel;
    edData: TwwDBDateTimePicker;
    btConfirmar: TBitBtn;
    dsCaixa: TDataSource;
    procedure ConfBaixarCheque;
    procedure FormActivate(Sender: TObject);
    procedure btConfirmarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConfirmaBxChq: TfrmConfirmaBxChq;

implementation

{$R *.dfm}

uses dataFinanceiro, uDaoCheques, uClassCaixa, uDaoCaixa;

procedure TfrmConfirmaBxChq.ConfBaixarCheque;
Var
vCaixa: TCaixa;
begin
  BaixarCheque(edRepasse.Text + ' - (' + edData.Text + ')');

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
  dmFinanceiro.qyCheques.Refresh;
  Messagedlg('Cheque baixado com sucesso!',mtinformation, [mbOk], 0);
  Close;
end;

procedure TfrmConfirmaBxChq.btConfirmarClick(Sender: TObject);
begin
  if dmFinanceiro.qyChequeschq_vencimento.Value <> now then
  begin
    if MessageDlg('A data de vencimento do cheque é diferente da data de hoje!' +#13 + #13 +
                  'Deseja baixar mesmo assim?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      ConfBaixarCheque;
  end
  else
    ConfBaixarCheque;
end;

procedure TfrmConfirmaBxChq.FormActivate(Sender: TObject);
begin
  inherited;
  edRepasse.Clear;
  dsCaixa.DataSet.Active := True;
  edData.Date := Date;
  edRepasse.SetFocus;
end;

end.
