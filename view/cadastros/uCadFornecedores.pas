unit uCadFornecedores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpCadastro, Data.DB,
  Vcl.ImgList, Vcl.ActnList, Vcl.ComCtrls, Vcl.ToolWin, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, wwdbdatetimepicker, wwdblook, wwdbedit,
  Wwdotdot, Wwdbcomb;

type
  TfrmCadFornecedores = class(TfrmTmpCadastro)
    lbCodigo: TLabel;
    dbCodigo: TDBEdit;
    lbDescricao: TLabel;
    dbDescricao: TDBEdit;
    Label3: TLabel;
    dbNomeFan: TDBEdit;
    Label15: TLabel;
    dbTipo: TwwDBComboBox;
    Label12: TLabel;
    dbCNPJ: TDBEdit;
    Label13: TLabel;
    dbIE: TDBEdit;
    Label18: TLabel;
    cbTpEndereco: TwwDBLookupCombo;
    Label4: TLabel;
    dbEndereco: TDBEdit;
    Label19: TLabel;
    dbNumero: TDBEdit;
    Label5: TLabel;
    dbBairro: TDBEdit;
    Label6: TLabel;
    cbCidade: TwwDBLookupCombo;
    Label7: TLabel;
    dbUf: TDBEdit;
    Label8: TLabel;
    dbCep: TDBEdit;
    Label9: TLabel;
    dbTelefone: TDBEdit;
    Label10: TLabel;
    dbCelular: TDBEdit;
    Label11: TLabel;
    dbFax: TDBEdit;
    Label14: TLabel;
    dbEmail: TDBEdit;
    Label17: TLabel;
    wwDBDateTimePicker1: TwwDBDateTimePicker;
    Label16: TLabel;
    dbHomePage: TDBEdit;
    procedure actGravarExecute(Sender: TObject);
    procedure actNovoExecute(Sender: TObject);
    procedure actAlterarExecute(Sender: TObject);
    procedure actAtualizarExecute(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure actLimparExecute(Sender: TObject);
    procedure actProcurarExecute(Sender: TObject);
    procedure cbTpEnderecoExit(Sender: TObject);
    procedure cbCidadeExit(Sender: TObject);
    procedure dsCadastroDataChange(Sender: TObject; Field: TField);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadFornecedores: TfrmCadFornecedores;

implementation

{$R *.dfm}

uses dataCadastros, uDaoFornecedores, uFuncoesDB, dataLookups,
  uProcFornecedores;

procedure TfrmCadFornecedores.actGravarExecute(Sender: TObject);
begin
  if dsCadastro.DataSet.State in [dsInsert] then
    dsCadastro.DataSet.FieldByName('for_codigo').Value := GetCodigo('for_codigo', 'fornecedores');
  inherited;
end;

procedure TfrmCadFornecedores.actAlterarExecute(Sender: TObject);
begin
  inherited;
  dbDescricao.SetFocus;
end;

procedure TfrmCadFornecedores.actAtualizarExecute(Sender: TObject);
begin
  dsCadastro.DataSet.Refresh;
end;

procedure TfrmCadFornecedores.actLimparExecute(Sender: TObject);
begin
  ListarFornecedores('for_razao', '0');
  sbPrincipal.Panels[3].Text := 'Inativo';
  inherited;
end;

procedure TfrmCadFornecedores.actNovoExecute(Sender: TObject);
begin
  inherited;
  dbDescricao.SetFocus;
end;

procedure TfrmCadFornecedores.FormActivate(Sender: TObject);
begin
  inherited;
  ListarFornecedores('for_razao', '0');
  dbDescricao.SetFocus;
end;

procedure TfrmCadFornecedores.actProcurarExecute(Sender: TObject);
begin
  ListarFornecedores('for_razao', '0');
  frmProcFornecedores.ShowModal;
end;

procedure TfrmCadFornecedores.cbCidadeExit(Sender: TObject);
begin
  if dsCadastro.DataSet.State in [dsInsert, dsEdit] then
  begin
    dmCadastros.qyFornecedorescid_codigo.Value := dmLookups.lkProcCidadescid_codigo.Value;
    dmCadastros.qyFornecedorescid_cidade.Value := dmLookups.lkProcCidadescid_cidade.Value;
    dmCadastros.qyFornecedoresuf_sigla.Value := dmLookups.lkProcCidadesuf_sigla.Value;
  end;
end;

procedure TfrmCadFornecedores.cbTpEnderecoExit(Sender: TObject);
begin
  if dsCadastro.DataSet.State in [dsEdit, dsInsert] then
    dmCadastros.qyFornecedorestpl_id.value := dmLookups.lkProcTpLogradourotpl_id.Value;
end;

procedure TfrmCadFornecedores.dsCadastroDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  cbCidade.Text := dmCadastros.qyFornecedorescid_cidade.Text;
  cbTpEndereco.Text := dmCadastros.qyFornecedorestpl_tipo.Text;
  if dsCadastro.DataSet.State in [dsEdit, dsBrowse] then
    dbTipo.ReadOnly := True;
  if dsCadastro.DataSet.State in [dsInsert] then
    cbCidade.Text := dmCadastros.qyFornecedorescid_cidade.Text;
end;

end.
