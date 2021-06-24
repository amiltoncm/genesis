unit uConfAltPagamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpFormNormal, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Mask, Vcl.DBCtrls, wwdbdatetimepicker, DB;

type
  TfrmConfAltPagamento = class(TfrmTmpFormNormal)
    Label1: TLabel;
    cbVencimento: TwwDBDateTimePicker;
    Label2: TLabel;
    dbForCodigo: TDBEdit;
    dbFornecedor: TDBEdit;
    Label3: TLabel;
    dbReferente: TDBEdit;
    Label4: TLabel;
    dbValor: TDBEdit;
    Label12: TLabel;
    dbPago: TDBEdit;
    Label5: TLabel;
    dbDesconto: TDBEdit;
    Label6: TLabel;
    dbAcrescimo: TDBEdit;
    Label7: TLabel;
    dbSaldo: TDBEdit;
    Label11: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    btAlterar: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure btAlterarClick(Sender: TObject);
    procedure dbDescontoExit(Sender: TObject);
    procedure dbAcrescimoExit(Sender: TObject);
    procedure dbValorDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConfAltPagamento: TfrmConfAltPagamento;

implementation

{$R *.dfm}

uses dataFinanceiro, uAltPagamento, uAltVlrPagar;

procedure TfrmConfAltPagamento.btAlterarClick(Sender: TObject);
begin
  if frmAltPagamento.dsConsulta.DataSet.State in [dsEdit] then
    frmAltPagamento.dsConsulta.DataSet.Post;
  Messagedlg('Pagamento alterado!', mtInformation,[mbok],0);
  Close;
end;

procedure TfrmConfAltPagamento.dbAcrescimoExit(Sender: TObject);
Var
vValor, vPago, vSaldo, vAcrescimo, vDesconto: Real;
begin
  vValor := StrToFloat(dbValor.Text);
  vPago := StrToFloat(dbPago.Text);
  vAcrescimo := StrToFloat(dbAcrescimo.Text);
  vDesconto := StrToFloat(dbDesconto.Text);
  vSaldo := vValor - vPago - vDesconto + vAcrescimo;
  if vSaldo >= 0 then
    dbSaldo.Text := FloatToStrF((vSaldo),fffixed,15,2)
  else
  Begin
    Messagedlg('O saldo não pode ser igual ou menor'+#13#10+'do que ZERO!',mtError,[mbOk],0);
    dbDesconto.SetFocus;
  end;
end;

procedure TfrmConfAltPagamento.dbDescontoExit(Sender: TObject);
Var
vValor, vPago, vSaldo, vAcrescimo, vDesconto: Real;
begin
  vValor := StrToFloat(dbValor.Text);
  vPago := StrToFloat(dbPago.Text);
  vAcrescimo := StrToFloat(dbAcrescimo.Text);
  vDesconto := StrToFloat(dbDesconto.Text);
  vSaldo := vValor - vPago - vDesconto + vAcrescimo;
  if vSaldo >= 0 then
    dbSaldo.Text := FloatToStrF((vSaldo),fffixed,15,2)
  else
  Begin
    Messagedlg('O saldo não pode ser igual ou menor'+#13#10+'do que ZERO!',mtError,[mbOk],0);
    dbDesconto.SetFocus;
  end;
end;

procedure TfrmConfAltPagamento.dbValorDblClick(Sender: TObject);
begin
  frmAltVlrPagar.ShowModal;
end;

procedure TfrmConfAltPagamento.FormActivate(Sender: TObject);
begin
  inherited;
  frmAltPagamento.dsConsulta.DataSet.Edit;
  cbVencimento.SetFocus;
end;

procedure TfrmConfAltPagamento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if frmAltPagamento.dsConsulta.DataSet.State in [dsEdit] then
    frmAltPagamento.dsConsulta.DataSet.Cancel;
  inherited;
end;

end.
