unit uCadMedicos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpCadastro, Data.DB, 
  Vcl.ImgList, Vcl.ActnList, Vcl.ComCtrls, Vcl.ToolWin, Vcl.StdCtrls, Vcl.Buttons, 
  Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, wwdblook, wwdbedit, Wwdotdot, Wwdbcomb;

type
  TfrmCadMedicos = class(TfrmTmpCadastro)
    lbCodigo: TLabel;
    dbCodigo: TDBEdit;
    lbDescricao: TLabel;
    dbDescricao: TDBEdit;
    Label6: TLabel;
    cbTitulo: TwwDBComboBox;
    Label4: TLabel;
    Label5: TLabel;
    dbNumRegistro: TDBEdit;
    Label18: TLabel;
    cbUfCons: TwwDBComboBox;
    Label3: TLabel;
    dbFone: TDBEdit;
    Label7: TLabel;
    dbCelular: TDBEdit;
    Label8: TLabel;
    dbCpf: TDBEdit;
    Label9: TLabel;
    dbRg: TDBEdit;
    Label10: TLabel;
    cbTpEndereco: TwwDBLookupCombo;
    Label11: TLabel;
    dbLogradouro: TDBEdit;
    Label12: TLabel;
    dbNumero: TDBEdit;
    Label13: TLabel;
    dbBairro: TDBEdit;
    Label14: TLabel;
    cbCidade: TwwDBLookupCombo;
    Label15: TLabel;
    dbUf: TDBEdit;
    Label16: TLabel;
    dbCEP: TDBEdit;
    Label17: TLabel;
    dbEmail: TDBEdit;
    Label20: TLabel;
    wwDBLookupCombo1: TwwDBLookupCombo;
    dbCBO: TDBEdit;
    Label19: TLabel;
    cbConselho: TwwDBLookupCombo;
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
  frmCadMedicos: TfrmCadMedicos;

implementation

{$R *.dfm}

uses dataCadastros, uDaoMedicos, uFuncoesDB, dataLookups, uProcMedicos,
  uFuncoesValidacao;

procedure TfrmCadMedicos.actGravarExecute(Sender: TObject);
begin
  if dsCadastro.DataSet.State in [dsInsert] then
    dsCadastro.DataSet.FieldByName('med_codigo').Value := GetCodigo('med_codigo', 'medicos');
  if dsCadastro.DataSet.FieldByName('med_cpf').IsNull then
    MessageDlg('Caso este médico trabalhe com convênio que necessite gerar TISS, seu CPF é obrigatório!',
               mtWarning, [mbOk], 0)
  else
    if Cpf(dsCadastro.DataSet.FieldByName('med_cpf').Text) = false then
      MessageDlg('CPF inválido!', mtWarning, [mbok], 0);
  inherited;
end;

procedure TfrmCadMedicos.actAlterarExecute(Sender: TObject);
begin
  inherited;
  dbDescricao.SetFocus;
end;

procedure TfrmCadMedicos.actAtualizarExecute(Sender: TObject);
begin
  dsCadastro.DataSet.Refresh;
end;

procedure TfrmCadMedicos.actLimparExecute(Sender: TObject);
begin
  ListarMedicos('med_nome', '0');
  sbPrincipal.Panels[3].Text := 'Inativo';
  inherited;
end;

procedure TfrmCadMedicos.actNovoExecute(Sender: TObject);
begin
  inherited;
  dbDescricao.SetFocus;
  cbCidade.Text := 'Blumenau';
  cbCidade.PerformSearch;
  dbUf.Text := 'SC';
end;

procedure TfrmCadMedicos.FormActivate(Sender: TObject);
begin
  inherited;
  ListarMedicos('med_nome', '0');
  dbDescricao.SetFocus;
end;

procedure TfrmCadMedicos.actProcurarExecute(Sender: TObject);
begin
  ListarMedicos('med_nome', '0');
  frmProcMedicos.ShowModal;
end;

procedure TfrmCadMedicos.cbCidadeExit(Sender: TObject);
begin
  if dsCadastro.DataSet.State in [dsInsert, dsEdit] then
  Begin
    dmCadastros.qyMedicoscid_codigo.value := dmLookups.lkProcCidadescid_codigo.Value;
    dmCadastros.qyMedicoscid_cidade.value := dmLookups.lkProcCidadescid_cidade.Value;
    dmCadastros.qyMedicosuf_sigla.Value := dmLookups.lkProcCidadesuf_sigla.Value;
    if not dmLookups.lkProcCidadescid_ceppadrao.IsNull then
      dmCadastros.qyMedicosmed_cep.text := dmLookups.lkProcCidadescid_ceppadrao.text;
 end;
end;

procedure TfrmCadMedicos.cbTpEnderecoExit(Sender: TObject);
begin
  if dsCadastro.DataSet.State in [dsInsert, dsEdit] then
    dmCadastros.qyMedicostpl_id.value := dmLookups.lkProcTpLogradourotpl_id.Value;
end;

procedure TfrmCadMedicos.dsCadastroDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if dsCadastro.DataSet.State in [dsBrowse, dsEdit] then
  Begin
    cbTpEndereco.Text := dmCadastros.qyMedicostpl_tipo.text;
    cbCidade.Text := dmCadastros.qyMedicoscid_cidade.text;
  end;
end;

end.
