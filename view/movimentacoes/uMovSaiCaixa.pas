unit uMovSaiCaixa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpFormNormal, Vcl.StdCtrls,
  Vcl.Buttons, Data.DB, wwdblook, wwdbdatetimepicker, uClassCaixa;

type
  TfrmMovSaiCaixa = class(TfrmTmpFormNormal)
    Label2: TLabel;
    edData: TwwDBDateTimePicker;
    Label3: TLabel;
    cbConta: TwwDBLookupCombo;
    Label1: TLabel;
    cbMovimento: TwwDBLookupCombo;
    Label4: TLabel;
    edDescricao: TEdit;
    Label5: TLabel;
    edValor: TEdit;
    btOk: TBitBtn;
    dsCaixa: TDataSource;
    procedure btFecharClick(Sender: TObject);
    procedure btOkClick(Sender: TObject);
    procedure edValorEnter(Sender: TObject);
    procedure edValorExit(Sender: TObject);
    procedure edValorKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private

    vlCaixa: TCaixa;

  public
    { Public declarations }
  end;

var
  frmMovSaiCaixa: TfrmMovSaiCaixa;

implementation

{$R *.dfm}

uses dataLookups, uDaoCaixa, uVarGlobal, uFuncoesFormatacao;

procedure TfrmMovSaiCaixa.btFecharClick(Sender: TObject);
begin
  dsCaixa.DataSet.Cancel;
  Messagedlg('Lançamento cancelado!',mtinformation,[mbok], 0);
  inherited;
end;

procedure TfrmMovSaiCaixa.btOkClick(Sender: TObject);
Var
vTpLanc: String;
begin
  vTpLanc := dmLookups.lkProcMovimentosMOV_TIPO.Text;
  if vTpLanc = 'D' then
  Begin
  Try
    vlCaixa.Con_codigo := dmLookups.lkProcContascon_codigo.Value;
    vlCaixa.Con_descricao := dmLookups.lkProcContascon_descricao.Value;
    vlCaixa.Mov_codigo := dmLookups.lkProcMovimentosmov_codigo.Value;
    vlCaixa.Mov_descricao := dmLookups.lkProcMovimentosmov_descricao.Value;
    vlCaixa.Cai_data := edData.Date;
    vlCaixa.Cai_descricao := edDescricao.Text;
    vlCaixa.Cai_valor := StrToFloat(edValor.Text);
    if vlCaixa.Cai_valor > 0 then
      vlCaixa.Cai_valor := vlCaixa.Cai_valor * -1;
    SetValuesCaixa(vlCaixa);
    PostCaixa;
    if Messagedlg('Lançamento concluído!' + #13 + 'Deseja efetuar outro lançamento?', mtconfirmation,[mbyes,mbno],0)= mryes then
    begin
      vlCaixa.Free;
      InsCaixa;
      vlCaixa := TCaixa.Create;
      vlCaixa.Cai_data := now;
      vlCaixa.Mov_codigo := dmLookups.lkProcMovimentosMOV_Codigo.Value;
      cbConta.Text := dmLookups.lkProcContascon_descricao.Text;
      cbMovimento.Text := dmLookups.lkProcMovimentosmov_descricao.Text;
      btOk.Enabled := false;
      edDescricao.Clear;
      edValor.Clear;
      edData.setfocus;
    end
    else
      Close;
  except
    MessageDlg('Verifique o preenchimento daS datas!', mtWarning, [mbok],0);
  end;
  end
  else
  Begin
    Messagedlg('Verifique o tipo de Movimento!' + #13 + 'Ele deve ser C de crédito!',mtError,[mbOk],0);
    cbMovimento.SetFocus;
  end;
end;

procedure TfrmMovSaiCaixa.edValorEnter(Sender: TObject);
begin
  btOk.Enabled := true;
end;

procedure TfrmMovSaiCaixa.edValorExit(Sender: TObject);
Var
vVlrFloat: real;
begin
  try
    if edValor.Text <> '' then
    begin
      vVlrFloat := StrToFloat(edValor.Text);
      edValor.Text := FormatFloat(vgMaskReal, vVlrFloat);
    end
    else
      MessageDlg('Valor em branco!' + #13 + #13 + 'Por favor verifique!', mtWarning, [mbok], 0);
  except
    MessageDlg('Valor inválido!' + #13 + #13 + 'Por favor verifique!', mtWarning, [mbok], 0);
  end;
end;

procedure TfrmMovSaiCaixa.edValorKeyPress(Sender: TObject; var Key: Char);
begin
  if key in [',', '.'] then
    key := DecimalSeparator;
  key := NumeroReal(key);
end;

procedure TfrmMovSaiCaixa.FormActivate(Sender: TObject);
begin
  inherited;
  dmLookups.FiltrarPlanoContas('D');
  dsCaixa.DataSet.Active := True;
  InsCaixa;
  vlCaixa := TCaixa.Create;
  vlCaixa.Cai_data := now;
  vlCaixa.Mov_codigo := dmLookups.lkProcMovimentosMOV_Codigo.Value;
  cbConta.Text := dmLookups.lkProcContascon_descricao.Text;
  cbMovimento.Text := dmLookups.lkProcMovimentosmov_descricao.Text;
  btOk.Enabled := false;
  edDescricao.Clear;
  edValor.Clear;
  edData.setfocus;
end;

procedure TfrmMovSaiCaixa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if dsCaixa.DataSet.State in [dsInsert, dsEdit] then
    dsCaixa.DataSet.Cancel;
  dmLookups.ListarPlanoContas;
  vlCaixa.Free;
  inherited;
end;

procedure TfrmMovSaiCaixa.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if dsCaixa.DataSet.State in [dsInsert, dsEdit] then
    if Messagedlg('Existem alterações pendentes,' + #13 + 'deseja salvar?',mtConfirmation,[mbYes, mbNo],0) = mrYes then
      Canclose := False
    else
      Canclose := True;
end;

end.
