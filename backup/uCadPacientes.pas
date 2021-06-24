unit uCadPacientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpCadastro, Vcl.ImgList,
  Vcl.ActnList, Data.DB, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.ToolWin, Vcl.StdCtrls,
  Vcl.Buttons, wwdblook, wwdbdatetimepicker, wwdbedit, Wwdotdot, Wwdbcomb, Vcl.Mask,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TfrmCadPacientes = class(TfrmTmpCadastro)
    Label1: TLabel;
    dbCodigo: TDBEdit;
    Label2: TLabel;
    dbDescricao: TDBEdit;
    Label5: TLabel;
    cbSexo: TwwDBComboBox;
    Label3: TLabel;
    edDtNasc: TwwDBDateTimePicker;
    Label8: TLabel;
    dbCpf: TDBEdit;
    Label9: TLabel;
    dbRg: TDBEdit;
    Label4: TLabel;
    dbFone: TDBEdit;
    Label7: TLabel;
    dbCelular: TDBEdit;
    Label17: TLabel;
    dbEmail: TDBEdit;
    Label10: TLabel;
    cbTpEndereco: TwwDBLookupCombo;
    Label11: TLabel;
    dbLogradouro: TDBEdit;
    Label12: TLabel;
    dbNumero: TDBEdit;
    Label16: TLabel;
    dbCEP: TDBEdit;
    Label15: TLabel;
    dbUf: TDBEdit;
    Label14: TLabel;
    cbCidade: TwwDBLookupCombo;
    Label13: TLabel;
    dbBairro: TDBEdit;
    btObs: TBitBtn;
    PainelSimilar: TPanel;
    lbFormaBusca: TLabel;
    BitBtn1: TBitBtn;
    Barra: TPanel;
    SpeedButton2: TSpeedButton;
    DBGrid2: TDBGrid;
    dsBusca: TDataSource;
    procedure Procurar(vNome: String);
    procedure actNovoExecute(Sender: TObject);
    procedure actAlterarExecute(Sender: TObject);
    procedure actGravarExecute(Sender: TObject);
    procedure btAtualizarClick(Sender: TObject);
    procedure btObsClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbDescricaoExit(Sender: TObject);
    procedure cbTpEnderecoExit(Sender: TObject);
    procedure cbCidadeExit(Sender: TObject);
    procedure dsCadastroDataChange(Sender: TObject; Field: TField);
    procedure actProcurarExecute(Sender: TObject);
    procedure actAtualizarExecute(Sender: TObject);
    procedure actLimparExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadPacientes: TfrmCadPacientes;

implementation

{$R *.dfm}

uses dataCadastros, dataExames, uFuncoesDB, uRequisicao, uFuncoesValidacao, uDaoPacientes,
  dataLookups, uObsPacientes, uProcPacientes, uVarGlobal;

procedure TfrmCadPacientes.Procurar(vNome: String);
Begin
  if BuscaCliente(vNome) = true then
    PainelSimilar.Visible := True
end;

procedure TfrmCadPacientes.actAlterarExecute(Sender: TObject);
begin
  inherited;
  dbDescricao.SetFocus;
end;

procedure TfrmCadPacientes.actAtualizarExecute(Sender: TObject);
begin
  dsCadastro.DataSet.Refresh;
end;

procedure TfrmCadPacientes.actGravarExecute(Sender: TObject);
begin
  if dsCadastro.DataSet.State in [dsInsert] then
    dmcadastros.qyPacientespac_codigo.Value := GetCodigo('pac_codigo','pacientes');
  //verifica faixa de CEP por estado
  if not dmCadastros.qyPacientesuf_sigla.IsNull then
  Begin
    if not dmCadastros.qypacientespac_cep.IsNull then
    Begin
      if not VerificaCEP(dmCadastros.qyPacientespac_cep.text, dmCadastros.qyPacientesuf_sigla.text) then
        MessageDlg('CEP fora da faixa do estado!', mtError, [mbok],0);
    end
  end
  else
    MessageDlg('A UF não foi selecionada!' + #13 + 'O CEP não pode ser verificado!', mtWarning, [mbok], 0);
  //verificação de CPF
  if not dmCadastros.qyPacientespac_cpf.IsNull then
    if not CPF(dmCadastros.qyPacientespac_cpf.Text) then
      MessageDlg('Número de CPF inválido!', mtWarning, [mbok], 0);
  inherited;
  dmLookups.lkProcPacientes.Refresh;
end;

procedure TfrmCadPacientes.actLimparExecute(Sender: TObject);
begin
  ListarPacientes('p.pac_nome', '0');
  sbPrincipal.Panels[3].Text := 'Inativo';
  inherited;
end;

procedure TfrmCadPacientes.actNovoExecute(Sender: TObject);
begin
  inherited;
  dbDescricao.SetFocus;
  cbTpEndereco.Text := dmCadastros.qyPacientestpl_tipo.text;
  cbSexo.ItemIndex := 0;
  cbSexo.Text := 'Feminino';
end;

procedure TfrmCadPacientes.actProcurarExecute(Sender: TObject);
begin
  ListarPacientes('p.pac_nome', '0');
  frmProcPacientes.ShowModal;
end;

procedure TfrmCadPacientes.btAtualizarClick(Sender: TObject);
begin
  ListarPacientes('p.pac_nome', '0');
  inherited;
end;

procedure TfrmCadPacientes.btObsClick(Sender: TObject);
begin
  frmObsPacientes.ShowModal;
end;

procedure TfrmCadPacientes.cbCidadeExit(Sender: TObject);
begin
  if dsCadastro.DataSet.State in [dsInsert, dsEdit] then
  Begin
    dmCadastros.qyPacientescid_codigo.value := dmLookups.lkProcCidadescid_codigo.Value;
    if not dmLookups.lkProcCidadescid_ceppadrao.IsNull then
      dmCadastros.qyPacientespac_cep.text := dmLookups.lkProcCidadescid_ceppadrao.text;
 end;
end;

procedure TfrmCadPacientes.cbTpEnderecoExit(Sender: TObject);
begin
  if dsCadastro.DataSet.State in [dsInsert, dsEdit] then
    dmCadastros.qyPacientestpl_id.value := dmLookups.lkProcTpLogradourotpl_id.Value;
end;

procedure TfrmCadPacientes.dbDescricaoExit(Sender: TObject);
begin
  if dsCadastro.DataSet.State in [dsInsert] then
    if dbDescricao.Text <> '' then
      Procurar(dbDescricao.Text)
    else
      MessageDlg('Campo requerido!', mtError, [mbok], 0);
end;

procedure TfrmCadPacientes.dsCadastroDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if dsCadastro.DataSet.State in [dsBrowse, dsEdit] then
  Begin
    cbTpEndereco.Text := dmCadastros.qyPacientestpl_tipo.text;
    cbCidade.Text := dmCadastros.qyPacientescid_cidade.text;
  end;
  if dsCadastro.DataSet.State in [dsInsert, dsEdit] then
    btObs.Enabled := false
  else
    btObs.Enabled := true;
end;

procedure TfrmCadPacientes.FormActivate(Sender: TObject);
begin
  PainelSimilar.Visible := false;
  lbFormaBusca.Caption := 'Sem resultados - 0%';
  if vgCadPaciente = '0' then
    ListarPacientes('p.pac_nome', '0')
  else
    FiltrarPacientes('p.pac_codigo', '=', vgCadPaciente, '0', '0');
  inherited;
end;

procedure TfrmCadPacientes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if frmRequisicao <> nil then
  begin
    ListarPacientes('p.pac_nome', '0');
    frmRequisicao.cbPaciente.Text := dmCadastros.qyPacientespac_nome.Text;
    frmRequisicao.cbPaciente.PerformSearch;
  end;
  inherited;
end;

end.
