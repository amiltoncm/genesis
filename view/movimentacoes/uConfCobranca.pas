unit uConfCobranca;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpFormNormal, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Mask, Vcl.DBCtrls, wwdbdatetimepicker, Data.DB;

type
  TfrmConfCobranca = class(TfrmTmpFormNormal)
    dsReceber: TDataSource;
    Label1: TLabel;
    dbVencimento: TwwDBDateTimePicker;
    Label5: TLabel;
    dbDtEmissao: TwwDBDateTimePicker;
    Label2: TLabel;
    dbCodCliente: TDBEdit;
    dbCliente: TDBEdit;
    Label3: TLabel;
    dbNF: TDBEdit;
    Label10: TLabel;
    dbHistorico: TDBEdit;
    Label4: TLabel;
    dbAcrescimo: TDBEdit;
    Label6: TLabel;
    dbDesconto: TDBEdit;
    Label8: TLabel;
    dbValor: TDBEdit;
    Label7: TLabel;
    dbVlrPago: TDBEdit;
    Label9: TLabel;
    dbSaldo: TDBEdit;
    procedure LimpaTabela;
    procedure CalculaValor;
    procedure FormActivate(Sender: TObject);
    procedure btFecharClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dbAcrescimoExit(Sender: TObject);
    procedure dbDescontoExit(Sender: TObject);
    procedure dbAcrescimoKeyPress(Sender: TObject; var Key: Char);
    procedure dbDescontoKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConfCobranca: TfrmConfCobranca;

implementation

{$R *.dfm}

uses dataFinanceiro, dataConsultas, uFuncoesFormatacao, uDaoConsultas,
  uDaoReceber;

procedure TfrmConfCobranca.FormActivate(Sender: TObject);
begin
  inherited;
  dsReceber.DataSet.Active := true;
  dmFinanceiro.qyReceber.Edit;
  dbVencimento.SetFocus;
end;

procedure TfrmConfCobranca.FormCreate(Sender: TObject);
Var
hSysMenu: HMENU;
begin
  inherited;
  hSysMenu := GetSystemMenu(Self.Handle, False);
  if hSysMenu <> 0 then
  begin
    EnableMenuItem(hSysMenu, SC_CLOSE,
     MF_BYCOMMAND Or MF_GRAYED);
     DrawMenuBar(Self.Handle);
  end;
end;

procedure TfrmConfCobranca.LimpaTabela;
begin
  LimparGeraCobranca;
  FiltrarReceber('r.rec_codigo', '=', '0', '0', '0');
end;

procedure TfrmConfCobranca.btFecharClick(Sender: TObject);
begin
  Try
    dmFinanceiro.qyReceberrec_saldo.Value := dmFinanceiro.qyReceberrec_valor.Value;
    dmFinanceiro.qyReceber.Post;
    //Limpa formulário frmGeraCobranca
    LimpaTabela;
    inherited;
  Except
    MessageDlg('Não foi possível gerar a Cobrança!', mtError, [mbok],0);
    Close;
  end;
end;

procedure TfrmConfCobranca.CalculaValor;
Var
vSaldo, vTotal, vAcrescimo, vDesconto, vPago: real;
begin
  vPago := dmFinanceiro.qyReceberrec_pago.Value;
  vAcrescimo := StrToFloat(dbAcrescimo.Text);
  vDesconto := StrToFloat(dbDesconto.text);
  vTotal := vSaldo + vAcrescimo - vDesconto;
  vSaldo := vTotal - vPago;
  dmFinanceiro.qyReceberrec_valor.Value := vTotal;
end;

procedure TfrmConfCobranca.dbAcrescimoExit(Sender: TObject);
begin
  CalculaValor;
end;

procedure TfrmConfCobranca.dbAcrescimoKeyPress(Sender: TObject; var Key: Char);
begin
  key := NumeroReal(key);
end;

procedure TfrmConfCobranca.dbDescontoExit(Sender: TObject);
begin
  CalculaValor;
end;

procedure TfrmConfCobranca.dbDescontoKeyPress(Sender: TObject; var Key: Char);
begin
  key := NumeroReal(key);
end;

end.
