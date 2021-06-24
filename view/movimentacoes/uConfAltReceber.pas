unit uConfAltReceber;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpFormNormal, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Mask, Vcl.DBCtrls, wwdbdatetimepicker, Data.DB;

type
  TfrmConfAltReceber = class(TfrmTmpFormNormal)
    dsReceber: TDataSource;
    Label1: TLabel;
    dbVencimento: TwwDBDateTimePicker;
    Label2: TLabel;
    dbCodCliente: TDBEdit;
    dbCliente: TDBEdit;
    Label3: TLabel;
    dbNF: TDBEdit;
    Label9: TLabel;
    dbHistorico: TDBEdit;
    Label4: TLabel;
    dbAcrescimo: TDBEdit;
    Label6: TLabel;
    dbDesconto: TDBEdit;
    Label8: TLabel;
    dbValor: TDBEdit;
    Label7: TLabel;
    dbPago: TDBEdit;
    Label5: TLabel;
    dbSaldo: TDBEdit;
    btGravar: TBitBtn;
    procedure Calcular;
    procedure FormActivate(Sender: TObject);
    procedure btFecharClick(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure dbAcrescimoExit(Sender: TObject);
    procedure dbDescontoExit(Sender: TObject);
    procedure dbPagoExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConfAltReceber: TfrmConfAltReceber;

implementation

{$R *.dfm}

uses dataFinanceiro;

procedure TfrmConfAltReceber.btFecharClick(Sender: TObject);
begin
  if Messagedlg('Deseja realmente cancelar a' + #13 + 'alteração da duplicata?', mtConfirmation,
                [mbYes, mbNo],0) = mrYes then
  Begin
    dsReceber.DataSet.Cancel;
    Close;
  end;
end;

procedure TfrmConfAltReceber.btGravarClick(Sender: TObject);
begin
  if dmFinanceiro.qyReceberrec_saldo.Value >= 0 then
  begin
    dsReceber.DataSet.Post;
    Messagedlg('Alteração efetuada com sucesso!', mtConfirmation, [mbOk], 0);
    Close;
  end
  else
    MessageDlg('O valor não pode ser ZERO ou NEGATIVO!', mtError, [mbOk], 0);
end;

procedure TfrmConfAltReceber.Calcular;
Var
vSaldo, vTotal, vDesconto, vAcrescimo, vPago: Real;
begin
  Try
  vPago := dmFinanceiro.qyReceberrec_pago.Value;
  vSaldo := dmFinanceiro.qyReceberrec_valor.Value;
  vDesconto := dmFinanceiro.qyReceberrec_desconto.Value;
  vAcrescimo := dmFinanceiro.qyReceberrec_acrescimo.Value;
  vTotal := vSaldo + vAcrescimo - vDesconto - vPago;
  dmFinanceiro.qyReceberrec_saldo.Value := vTotal;
  Except
    Messagedlg('Verifique o preenchimento dos valores!', mtError, [mbok],0);
  end;
end;

procedure TfrmConfAltReceber.dbAcrescimoExit(Sender: TObject);
begin
  if dbAcrescimo.Text = '' then
    dmFinanceiro.qyReceberrec_acrescimo.Value := 0;
  Calcular;
end;

procedure TfrmConfAltReceber.dbDescontoExit(Sender: TObject);
begin
  if dbDesconto.Text = '' then
    dmFinanceiro.qyReceberrec_desconto.Value := 0;
  Calcular;
end;

procedure TfrmConfAltReceber.dbPagoExit(Sender: TObject);
begin
  if dbPago.Text = '' then
    dmFinanceiro.qyReceberrec_pago.Value := 0;
  Calcular;
end;

procedure TfrmConfAltReceber.FormActivate(Sender: TObject);
begin
  inherited;
  dsReceber.DataSet.Edit;
  dmFinanceiro.qyReceberrec_acrescimo.Value := 0;
  dmFinanceiro.qyReceberrec_desconto.Value := 0;
  dmFinanceiro.qyReceberrec_saldo.Value := dmFinanceiro.qyReceberrec_valor.Value -
                                           dmFinanceiro.qyReceberrec_pago.Value;
  dbVencimento.SetFocus;
end;

end.
