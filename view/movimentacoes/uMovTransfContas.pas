unit uMovTransfContas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpForm, Vcl.StdCtrls, Vcl.Buttons,
  wwdbdatetimepicker, Data.DB, Vcl.Mask, Vcl.DBCtrls, wwdblook;

type
  TfrmMovTransfContas = class(TfrmTmpForm)
    GroupBox1: TGroupBox;
    cbContaDeb: TwwDBLookupCombo;
    PnContaCred: TGroupBox;
    cbContaCred: TwwDBLookupCombo;
    dsCaixa: TDataSource;
    Label1: TLabel;
    edData: TwwDBDateTimePicker;
    Label2: TLabel;
    edValor: TEdit;
    Label3: TLabel;
    edDescricao: TEdit;
    btGravar: TBitBtn;
    procedure FormActivate(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure edValorKeyPress(Sender: TObject; var Key: Char);
    procedure edValorExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMovTransfContas: TfrmMovTransfContas;

implementation

{$R *.dfm}

uses uDaoCaixa, uDaoContas, dataLookups, dataCadastros,
  uClassCaixa, uFuncoesFormatacao;

procedure TfrmMovTransfContas.btGravarClick(Sender: TObject);
Var
vData: TDate;
vContaDeb, vContaCred: String;
vValor: Real;
vCaixa: TCaixa;
begin
  if edValor.Text <> '' then
  begin
    Try
    //busca conta de crédito e débito
    vContaCred := dmCadastros.qyContascon_codigo.Text;
    vContaDeb := dmLookups.lkProcContascon_codigo.Text;
    if vContaDeb <> vContaCred then
    begin
      vData := StrToDate(edData.Text);
      vValor := StrToFloat(edValor.Text);
      //Lança o débito no caixa
      vCaixa := TCaixa.Create;
      vCaixa.Cai_data := vData;
      vCaixa.Cai_descricao := 'CREDITADO PARA: ' + vContaCred + ' - ' +
                              dmCadastros.qyContascon_descricao.Text;
      vCaixa.Cai_valor := vValor * -1;
      vCaixa.Mov_codigo := 1;
      vCaixa.Con_codigo := StrToInt(vContaDeb);
      SetValuesCaixa(vCaixa);
      PostCaixa;
      vCaixa.Free;
      //Lança o crédito no caixa
      InsCaixa;
      vCaixa := TCaixa.Create;
      vCaixa.Cai_data := vData;
      vCaixa.Cai_descricao := 'DEBITADO DE: ' + vContaDeb + ' - ' +
                              dmLookups.lkProcContascon_descricao.Text;
      vCaixa.Cai_valor := vValor;
      vCaixa.Mov_codigo := 1;
      vCaixa.Con_codigo := StrToInt(vContaCred);
      SetValuesCaixa(vCaixa);
      PostCaixa;
      if Messagedlg('Tranferência efetuada com sucesso!'+#13+'Deseja efetuar outra?',mtConfirmation,[mbYes, mbNo],0) = mrYes then
      Begin
        InsCaixa;
        edValor.Clear;
        edDescricao.Clear;
        edDescricao.Text := 'TRASNFERENCIA';
        cbContaDeb.SetFocus;
      end
      else
        Close
    end
    else
      MessageDlg('As contas de crédito e débito não podem ser as mesmas!', mtWarning, [mbok], 0);
    except
      on E: Exception do
      begin
        MessageDlg('Verifique o preenchimento dos campos!' + #13#10 +
                   E.Message,mtError,[mbOk],0);
        cbContaDeb.SetFocus;
      end;
    end;
  end
  else
    MessageDlg('É necessário preencher o valor!', mtWarning, [mbok], 0);
end;

procedure TfrmMovTransfContas.edValorExit(Sender: TObject);
begin
  Try
  edValor.Text := FloatToStrF((StrToFloat(edValor.Text)),fffixed,15,2);
  Except
    Begin
      Messagedlg('Verifique o preenchimento do Valor!',mtError,[mbok],0);
      edValor.SetFocus;
    end;
  end;
end;

procedure TfrmMovTransfContas.edValorKeyPress(Sender: TObject; var Key: Char);
begin
  Key := NumeroReal(Key);
end;

procedure TfrmMovTransfContas.FormActivate(Sender: TObject);
begin
  edValor.Clear;
  edDescricao.Clear;
  edDescricao.Text := 'TRASNFERENCIA';
  ListarCaixa('c.cai_codigo', '0');
  FiltrarContas('c.con_ativa', '=', 'S', 'c.con_descricao', '0');
  cbContaCred.Text := dmCadastros.qyContascon_descricao.Text;
  FiltrarContasLkAtivas;
  cbContaDeb.Text := dmLookups.lkProcContascon_descricao.Text;
  dsCaixa.DataSet.Active := True;
  InsCaixa;
  cbContaDeb.SetFocus;
end;

procedure TfrmMovTransfContas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if dsCaixa.DataSet.State in [dsInsert, dsEdit] then
    dsCaixa.DataSet.Cancel;
end;

end.
