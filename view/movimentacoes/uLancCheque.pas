unit uLancCheque;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpFormNormal, Vcl.StdCtrls,
  Vcl.Buttons, wwdbdatetimepicker, Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls,
  Data.DB;

type
  TfrmLancCheque = class(TfrmTmpFormNormal)
    ImgCheque: TImage;
    Label3: TLabel;
    edNBanco: TEdit;
    Label4: TLabel;
    edConta: TEdit;
    Label5: TLabel;
    edCheque: TEdit;
    Label6: TLabel;
    edOrc: TEdit;
    edValor: TEdit;
    lbValorExtenso: TLabel;
    dbEmpresa: TDBText;
    lbDataExtenso: TLabel;
    edBanco: TEdit;
    cbTipo: TComboBox;
    Label8: TLabel;
    edCpf: TMaskEdit;
    Label9: TLabel;
    edTitular: TEdit;
    Label7: TLabel;
    edBomPara: TwwDBDateTimePicker;
    Label1: TLabel;
    edEndosso: TEdit;
    Label2: TLabel;
    edTelefone: TMaskEdit;
    btGravar: TBitBtn;
    dsCaixa: TDataSource;
    dsBanco: TDataSource;
    dsCheques: TDataSource;
    procedure Limpar;
    procedure FormActivate(Sender: TObject);
    procedure btFecharClick(Sender: TObject);
    procedure cbTipoChange(Sender: TObject);
    procedure edTitularChange(Sender: TObject);
    procedure edNBancoKeyPress(Sender: TObject; var Key: Char);
    procedure edNBancoExit(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure edValorKeyPress(Sender: TObject; var Key: Char);
    procedure edValorExit(Sender: TObject);
    procedure edCpfExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLancCheque: TfrmLancCheque;

implementation

{$R *.dfm}

uses dataFinanceiro, dataCadastros, dataConfig, uFuncoesDatas,
  uFuncoesFormatacao, uDaoBancos, uFuncoesSistema, uCadBancos,
  uFuncoesValidacao, uClassCheques, uDaoCheques, uDaoEmpresa;

procedure TfrmLancCheque.btFecharClick(Sender: TObject);
begin
  if Messagedlg('Deseja realmente cancelar o Lançamento?',mtConfirmation,[mbYes, mbno],0) = mrYes then
    Close;
end;

procedure TfrmLancCheque.btGravarClick(Sender: TObject);
Var
vCheque: TCheques;
begin
  InsCheques;
  vCheque := TCheques.Create;
  vCheque.Chq_vencimento := StrToDate(edBompara.text);
  vCheque.Chq_emissao := now;
  vCheque.Chq_titular := edTitular.Text;
  vCheque.Chq_doc := edCpf.Text;
  vCheque.Chq_endosso := edEndosso.Text;
  vCheque.Ban_codigo := StrToInt(edNBanco.text);
  vCheque.Chq_conta := edConta.text;
  vCheque.Chq_numcheque := edCheque.text;
  vCheque.Chq_telefone := edTelefone.Text;
  vCheque.Chq_valor := StrToFloat(edValor.Text);
  vCheque.Chq_estado := 'A';
  SetValuesCheques(vCheque);
  PostCheques;
  vCheque.Free;
  if messagedlg('Deseja cadastrar outro CHEQUE?',mtconfirmation,[mbyes,mbno],0) = mryes then
    Limpar
  else
    Close;
end;

procedure TfrmLancCheque.cbTipoChange(Sender: TObject);
begin
  if cbTipo.text = 'PESSOA FÍSICA' then
    edCpf.EditMask := '000.000.000-00'
  else
    edCpf.EditMask := '00.000.000/0000-00';
end;

procedure TfrmLancCheque.edCpfExit(Sender: TObject);
begin
  If cbTipo.text = 'PESSOA FÍSICA' then
  Begin
    If Cpf(edCpf.Text) = false then
    Begin
      Messagedlg('CPF inválido!', mterror,[mbok],0);
      edCpf.setfocus;
    end;
  end;
  If cbTipo.text = 'PESSOA JURÍDICA' then
  Begin
    If Cnpj(edCpf.Text) = false then
    Begin
      Messagedlg('CNPJ inválido!', mterror,[mbok],0);
      edCpf.setfocus;
    end;
  end;
end;

procedure TfrmLancCheque.edNBancoExit(Sender: TObject);
begin
  FiltrarBancos('ban_codigo', '=', edNBanco.Text, '0', '0');
  if dmCadastros.qyBancosBAN_CODIGO.Text <> '' then
  Begin
    edBanco.Text := dmCadastros.qyBancosBAN_DESCRICAO.Text;
    edConta.SetFocus;
  end
  else
  Begin
    if Messagedlg('Banco não cadastrado!' + #13 + #10 + 'Deseja cadastrar agora?',
                  mtConfirmation,[mbYes, mbno],0) = mrYes then
      CriaFormMDI(TfrmCadBancos, frmCadBancos)
    else
    Begin
      edNBanco.Clear;
      edNBanco.SetFocus;
    end;
  end;
end;

procedure TfrmLancCheque.edNBancoKeyPress(Sender: TObject; var Key: Char);
begin
  key := Numeros(key);
end;

procedure TfrmLancCheque.edTitularChange(Sender: TObject);
begin
  edEndosso.Text := edTitular.text;
end;

procedure TfrmLancCheque.edValorExit(Sender: TObject);
begin
  try
    edValor.text := FloatToStrF((strtofloat(edValor.text)), fffixed, 15, 2);
    lbValorExtenso.Caption := ValorPorExtenso(StrToFloat(LimpaDoc(edvalor.Text)));
  except
    MessageDlg('Verifique o preenchimento do valor!', mtWarning, [mbOk], 0);
  end;
end;

procedure TfrmLancCheque.edValorKeyPress(Sender: TObject; var Key: Char);
begin
  key := NumeroReal(key);
end;

procedure TfrmLancCheque.FormActivate(Sender: TObject);
begin
  inherited;
  dsCheques.DataSet.Active := True;
  dsCaixa.DataSet.Active := True;
  dsBanco.DataSet.Active := True;
  Limpar;
end;

procedure TfrmLancCheque.FormCreate(Sender: TObject);
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
end;

procedure TfrmLancCheque.Limpar;
Var
vCidade:String;
vFig: tHandle;
begin
  vFig := loadlibrary('genesis.dll');
  if vFig <> 0 then
    ImgCheque.Picture.Bitmap.LoadFromResourceName(vFig, 'Cheque');
  FreeLibrary(vFig);
  vCidade := GetNomeCidade;
  lbValorExtenso.Caption := '';
  lbDataExtenso.Caption := DataExtenso(vCidade, Now);
  edBompara.Date := now;
  edCpf.Clear;
  edCpf.EditMask := '000.000.000-00';
  cbTipo.Text := 'PESSOA FÍSICA';
  edNBanco.Clear;
  edConta.Clear;
  edCheque.Clear;
  edValor.Clear;
  edBanco.Clear;
  edTitular.Clear;
  edEndosso.Clear;
  edTelefone.Clear;
  edNBanco.Text := '001';
  edNBanco.SetFocus;
end;

end.
