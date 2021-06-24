unit uConfBxDupCli;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpFormNormal, Vcl.StdCtrls,
  Vcl.Buttons, JvBaseDlg, JvCalc, JvExMask, JvToolEdit, JvBaseEdits, Data.DB,
  wwdbdatetimepicker, Vcl.Mask, Vcl.DBCtrls, wwdblook, Vcl.Grids, Wwdbigrd,
  Wwdbgrid, Vcl.ExtCtrls;

type
  TfrmConfBxDupCli = class(TfrmTmpFormNormal)
    Label5: TLabel;
    DBText2: TDBText;
    Label4: TLabel;
    DBText1: TDBText;
    Label9: TLabel;
    DBText4: TDBText;
    Label10: TLabel;
    DBText5: TDBText;
    Label6: TLabel;
    DBText3: TDBText;
    Label7: TLabel;
    DBText6: TDBText;
    Label8: TLabel;
    dbSaldo: TDBText;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    dbCodConta: TwwDBLookupCombo;
    dbConta: TDBEdit;
    edDtPagamento: TwwDBDateTimePicker;
    sbRecalcular: TSpeedButton;
    cbMarcar: TCheckBox;
    dsCaixa: TDataSource;
    dsDuplicatas: TDataSource;
    dsHistrec: TDataSource;
    edValor: TJvCalcEdit;
    JvCalculator1: TJvCalculator;
    btBaixar: TBitBtn;
    Panel1: TPanel;
    GridExames: TwwDBGrid;
    dsConta: TDataSource;
    SpeedButton1: TSpeedButton;
    procedure sbRecalcularClick(Sender: TObject);
    procedure btFecharClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btBaixarClick(Sender: TObject);
    procedure edValorKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure edValorExit(Sender: TObject);
    procedure GridExamesDrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
    procedure GridExamesTitleButtonClick(Sender: TObject; AFieldName: string);
    procedure cbMarcarClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConfBxDupCli: TfrmConfBxDupCli;

implementation

{$R *.dfm}

uses dataFinanceiro, dataLookups, uVarGlobal, uDaoHistRec, uFuncoesFormatacao,
  uDaoCaixa, uClassCaixa, uDaoReceber, uClassReceber;

procedure TfrmConfBxDupCli.btBaixarClick(Sender: TObject);
Var
vConta: Integer;
vDescricao: String;
vPagoAnt, vAcrescimo, vSaldo, vPago, vValor, vDesconto: Real;
vCaixa: TCaixa;
vReceber: TReceber;
begin
  if (edValor.Value <> 0) then
  begin
    if dsHistrec.DataSet.State in [dsEdit] then
      PostHistRec;
    //Update histrec atualizando
    UpdateBaixarHistRec(dmFinanceiro.qyReceberhis_id.Text);
    vDescricao := dmFinanceiro.qyReceberrec_nome.Text;
    vPagoAnt := dmFinanceiro.qyReceberrec_pago.Value;
    vValor := dmFinanceiro.qyReceberrec_saldo.Value;
    vPago := StrToFloat(LimpaReal(edValor.Text));
    //Cria objetos
    vCaixa := TCaixa.Create;
    vReceber := TReceber.Create;
    //Carrega valores iniciais da tabela receber
    vReceber.Codigo := dmFinanceiro.qyReceberrec_codigo.Value;
    vReceber.Emissao := dmFinanceiro.qyReceberrec_emissao.Value;
    vReceber.Vencimento := dmFinanceiro.qyReceberrec_vencimento.Value;
    vReceber.CodConvenio := dmFinanceiro.qyRecebercov_codigo.Value;
    vReceber.CodCliente := dmFinanceiro.qyReceberrec_codcliente.Value;
    vReceber.Nome := dmFinanceiro.qyReceberrec_nome.Value;
    vReceber.Valor := dmFinanceiro.qyReceberrec_valor.Value;
    vReceber.Acrescimo := dmFinanceiro.qyReceberrec_acrescimo.Value;
    vReceber.Desconto := dmFinanceiro.qyReceberrec_desconto.Value;
    vReceber.Pago := dmFinanceiro.qyReceberrec_pago.Value;
    vReceber.Saldo := dmFinanceiro.qyReceberrec_saldo.Value;
    vReceber.Status := dmFinanceiro.qyReceberrec_status.Value;
    vReceber.IdHist := dmFinanceiro.qyReceberhis_id.Value;
    vReceber.CodCob := dmFinanceiro.qyRecebercob_codigo.Value;
    Try
    vCaixa.Cai_valor := StrToFloat(LimpaReal(edValor.Text));
    vConta := StrToInt(dbCodConta.Text);
    if vValor < vPago then
    Begin
      if Messagedlg('O valor pago é maior que o saldo?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      Begin
        vAcrescimo := vPago - vValor;
        vReceber.Saldo := 0;
        vReceber.Pago :=  vPago + vPagoAnt;
        vReceber.Acrescimo := vAcrescimo;
        vReceber.Status := 'P';
      end
      else
      Begin
        vReceber.Pago := vValor + vPagoAnt;
        vReceber.Saldo := 0;
        vReceber.Status := 'P';
      end;
    end;
    //Se o Saldo for igual ao Pago
    if vValor = vPago Then
    Begin
      vReceber.Pago := vPago + vPagoAnt;
      vReceber.Saldo := 0;
      vReceber.Status := 'P';
    end;
    if vValor > vPago Then
    Begin
      if Messagedlg('O valor pago é menor que o saldo!'+#13+'Deseja gravar saldo?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      Begin
        vSaldo := vValor - vPago;
        vReceber.Saldo := vSaldo;
        vReceber.Pago := vPago + vPagoAnt;
        if vSaldo <= 0 then
          vReceber.Status := 'P';
      end
      else
      Begin
        vDesconto := vValor - vPago;
        vReceber.Desconto := vDesconto;
        vReceber.Pago := vPago + vPagoAnt;
        vReceber.Saldo := 0;
        vReceber.Status := 'P';
      end;
    end;
    SetValuesReceber(vReceber);
    PostReceber;
    vCaixa.Cai_data := edDtPagamento.Date;
    vCaixa.Mov_codigo := 2;
    vCaixa.Con_codigo := vConta;
    vCaixa.Cai_descricao := vDescricao;
    InsCaixa;
    SetValuesCaixa(vCaixa);
    PostCaixa;
    vCaixa.Free;
    vReceber.Free;
    FiltrarReceber('r.rec_status', '=', 'A', 'r.rec_vencimento', '0');
    MessageDlg('Título baixado com sucesso!', mtWarning, [mbOk], 0);
    Close;
    Except
      Begin
        Messagedlg('Verifique o formato do valor!' + #13 + 'Formato: 0000,00 - Somente uma vírgula!',mtError,[mbOk],0);
        edValor.SetFocus;
      end;
    end;
  end
  else
  Begin
    Messagedlg('Verifique o formato do valor!' + #13 + 'Formato: 0000,00 - Somente uma vírgula!',mtError,[mbOk],0);
    edValor.SetFocus;
  end;
end;

procedure TfrmConfBxDupCli.btFecharClick(Sender: TObject);
begin
  if dsDuplicatas.DataSet.State in [dsEdit] then
    dsDuplicatas.DataSet.Cancel;
  if dsHistrec.DataSet.State in [dsEdit] then
    dsHistrec.DataSet.Cancel;
  dmFinanceiro.SQL_Upd_his_status.SQL.Clear;
  dmFinanceiro.SQL_Upd_his_status.SQL.Add('update histrec set his_baixar = his_status');
  dmFinanceiro.SQL_Upd_his_status.SQL.Add(' where his_id = ');
  dmFinanceiro.SQL_Upd_his_status.SQL.Add(QuotedStr(dmFinanceiro.qyReceberhis_id.Text));
  dmFinanceiro.SQL_Upd_his_status.ExecSQL;
  inherited;
end;

procedure TfrmConfBxDupCli.cbMarcarClick(Sender: TObject);
begin
  if cbMarcar.Checked = true then
  begin
    //Marcou tudo
    MarcarTodos(dmFinanceiro.qyReceberhis_id.Text);
    edValor.Text := FormatFloat(vgMaskReal, (dmFinanceiro.qyReceberrec_saldo.Value));
  end
  else
  begin
    //Desmarcou tudo
    DesmarcarTodos(dmFinanceiro.qyReceberhis_id.Text);
    edValor.Text := ('0,00');
  end;
  FiltrarBaixa(dmFinanceiro.qyReceberhis_id.Text, '0', 'N');
end;

procedure TfrmConfBxDupCli.edValorExit(Sender: TObject);
Var
vValor: String;
begin
  Try
    vValor := LimpaReal(edValor.Text);
    edValor.Text := FloatToStrF((StrToFloat(vValor)), fffixed, 15, 2);
  Except
    Messagedlg('Verifique o preenchimento do valor!', mtError, [mbOk], 0);
  end;
end;

procedure TfrmConfBxDupCli.edValorKeyPress(Sender: TObject; var Key: Char);
begin
  if key in [',', '.'] then
    Key := DecimalSeparator;
  if not (Key in ['0'..'9', DecimalSeparator, Chr(8)]) then
    Key := #0;
end;

procedure TfrmConfBxDupCli.FormActivate(Sender: TObject);
begin
  inherited;
  dsHistRec.DataSet.Active := True;
  dsCaixa.DataSet.Active := True;
  dsDuplicatas.DataSet.Active := True;
  dsConta.DataSet.Active := True;
  cbMarcar.Checked := false;
  if dmFinanceiro.qyReceberrec_pago.Value = 0 then
  begin
    cbMarcar.Checked := true;
    FiltrarBaixa(dmFinanceiro.qyReceberhis_id.Text, '0', 'N');
  end
  else
    FiltrarBaixa(dmFinanceiro.qyReceberhis_id.Text, 'N', 'N');
  edDtPagamento.Date := now;
  edValor.Clear;
  edValor.Text := FormatFloat(vgMaskReal, (dmFinanceiro.qyReceberrec_saldo.Value));
  dmFinanceiro.qyReceber.Edit;
  edValor.SetFocus;
  dbCodConta.Text := '0';
  dbCodConta.PerformSearch;
end;

procedure TfrmConfBxDupCli.FormCreate(Sender: TObject);
Var
vHwndHandle: THANDLE;
vHMenuHandle: HMenu;
begin
  inherited;
  vHwndHandle := Self.Handle;
  if (vHwndHandle <> 0) then
  Begin
    vHMenuHandle := GetSystemMenu(vHwndHandle, False);
    if (vHMenuHandle <> 0) then
      DeleteMenu(vHMenuHandle, SC_CLOSE, MF_BYCOMMAND);
  end;
end;

procedure TfrmConfBxDupCli.GridExamesDrawDataCell(Sender: TObject;
  const Rect: TRect; Field: TField; State: TGridDrawState);
begin
  if odd(dsHistrec.DataSet.RecNo) then
    GridExames.Canvas.Brush.Color := clGray
  else
    GridExames.Canvas.Brush.Color:= clWhite;
  GridExames.Canvas.FillRect(Rect);
  GridExames.Canvas.font.Color:= clBlack;
  if gdSelected in State then
    with GridExames.Canvas do
    begin
      Brush.Color := clYellow;
      FillRect(Rect);
      Font.Style := [fsbold];
    end;
  GridExames.DefaultDrawDataCell(Rect, Field, State);
end;

procedure TfrmConfBxDupCli.GridExamesTitleButtonClick(Sender: TObject;
  AFieldName: string);
begin
  dmFinanceiro.qyHistRec.SortRecords(AFieldName, '', '');
end;

procedure TfrmConfBxDupCli.sbRecalcularClick(Sender: TObject);
begin
  JvCalculator1.Execute();
end;

procedure TfrmConfBxDupCli.SpeedButton1Click(Sender: TObject);
Var
vTotal: real;
begin
  if MessageDlg('Deseja realmente somar os exames selecionados?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    vTotal := 0;
    dsHistrec.DataSet.First;
    repeat
      if dsHistrec.DataSet.FieldByName('his_baixar').Text = 'S' then
        vTotal := vTotal + dsHistrec.DataSet.FieldByName('his_valor').Value;
      dsHistrec.DataSet.Next;
    until dsHistrec.DataSet.Eof = true;
    edValor.Text := FormatFloat(vgMaskReal, vTotal);
  end;
end;

end.
