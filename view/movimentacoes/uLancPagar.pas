unit uLancPagar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpFormNormal, Vcl.StdCtrls,
  Vcl.Buttons, wwdbedit, Wwdotdot, Wwdbcomb, Vcl.Mask, Vcl.DBCtrls, Data.DB,
  wwdblook, wwdbdatetimepicker;

type
  TfrmLancPagar = class(TfrmTmpFormNormal)
    Label1: TLabel;
    dbVencimento: TwwDBDateTimePicker;
    Label5: TLabel;
    dbDtEmissao: TwwDBDateTimePicker;
    Label2: TLabel;
    cbProcFornecedor: TwwDBLookupCombo;
    dsPagar: TDataSource;
    Label3: TLabel;
    dbNF: TDBEdit;
    Label6: TLabel;
    dbParcela: TwwDBComboBox;
    Label8: TLabel;
    dbValor: TDBEdit;
    btGravar: TBitBtn;
    procedure Limpar;
    procedure FormActivate(Sender: TObject);
    procedure btFecharClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btGravarClick(Sender: TObject);
    procedure cbProcFornecedorExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLancPagar: TfrmLancPagar;

implementation

{$R *.dfm}

uses dataFinanceiro, dataLookups, uDaoPagar;

procedure TfrmLancPagar.Limpar;
begin
  InsPagar;
  dbVencimento.SetFocus;
  cbProcFornecedor.Clear;
end;

procedure TfrmLancPagar.btFecharClick(Sender: TObject);
begin
  dsPagar.DataSet.Cancel;
  inherited;
end;

procedure TfrmLancPagar.btGravarClick(Sender: TObject);
begin
  if dbVencimento.Date > dbDtEmissao.Date then
  begin
    dmFinanceiro.qyPagarfor_codigo.Value := dmLookups.lkProcFornecedoresfor_codigo.Value;
    dmFinanceiro.qyPagarpag_saldo.Value := dmFinanceiro.qyPagarpag_valor.Value;
    PostPagar;
    if Messagedlg('Lançamento efetuado com sucesso!' + #13 + 'Deseja efetuar outro?',
                  mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      Limpar
    else
      close;
  end
  else
    MessageDlg('A data de vencimento está menor que a da emissão, favor corrigir!', mtWarning, [mbOk], 0);
end;

procedure TfrmLancPagar.cbProcFornecedorExit(Sender: TObject);
begin
  dmFinanceiro.qyPagarfor_codigo.Value := dmLookups.lkProcFornecedoresfor_codigo.Value;
end;

procedure TfrmLancPagar.FormActivate(Sender: TObject);
begin
  inherited;
  dsPagar.DataSet.Active := True;
  Limpar;
end;

procedure TfrmLancPagar.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if dsPagar.DataSet.State in [dsInsert, dsEdit] then
    if Messagedlg('Existem alterações pendentes,' + #13 + 'deseja realmente cancelar?',
                  mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      Canclose := True
    else
      Canclose := False;
end;

end.
