unit uCadConvenios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpCadastro, Data.DB, 
  Vcl.ImgList, Vcl.ActnList, Vcl.ComCtrls, Vcl.ToolWin, Vcl.StdCtrls, Vcl.Buttons, 
  Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, wwdbedit, Wwdotdot, Wwdbcomb, wwdblook;

type
  TfrmCadConvenios = class(TfrmTmpCadastro)
    lbCodigo: TLabel;
    dbCodigo: TDBEdit;
    lbDescricao: TLabel;
    dbDescricao: TDBEdit;
    Label3: TLabel;
    dbCnpj: TDBEdit;
    Label8: TLabel;
    dbRegAns: TDBEdit;
    Label4: TLabel;
    dbIe: TDBEdit;
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
    Label5: TLabel;
    dbFone: TDBEdit;
    Label6: TLabel;
    dbFax: TDBEdit;
    Label7: TLabel;
    dbCelular: TDBEdit;
    Label18: TLabel;
    dbCodPrest: TDBEdit;
    Label9: TLabel;
    cbTISS: TwwDBComboBox;
    lbMail: TLabel;
    btTabela: TBitBtn;
    procedure actGravarExecute(Sender: TObject);
    procedure actNovoExecute(Sender: TObject);
    procedure actAlterarExecute(Sender: TObject);
    procedure actAtualizarExecute(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure actLimparExecute(Sender: TObject);
    procedure actProcurarExecute(Sender: TObject);
    procedure cbTpEnderecoExit(Sender: TObject);
    procedure cbCidadeExit(Sender: TObject);
    procedure dbEmailChange(Sender: TObject);
    procedure dsCadastroDataChange(Sender: TObject; Field: TField);
    procedure btTabelaClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadConvenios: TfrmCadConvenios;

implementation

{$R *.dfm}

uses dataCadastros, uDaoConvenios, uFuncoesDB, dataLookups, uProcConvenios,
  uTabPrecos, uDaoConvProc;

procedure TfrmCadConvenios.actGravarExecute(Sender: TObject);
begin
  if dsCadastro.DataSet.State in [dsInsert] then
    dsCadastro.DataSet.FieldByName('cov_codigo').Value := GetCodigo('cov_codigo', 'convenios');
  inherited;
end;

procedure TfrmCadConvenios.actAlterarExecute(Sender: TObject);
begin
  inherited;
  dbDescricao.SetFocus;
end;

procedure TfrmCadConvenios.actAtualizarExecute(Sender: TObject);
begin
  dsCadastro.DataSet.Refresh;
end;

procedure TfrmCadConvenios.actLimparExecute(Sender: TObject);
begin
  ListarConvenios('cov_descricao', '0');
  sbPrincipal.Panels[3].Text := 'Inativo';
  inherited;
end;

procedure TfrmCadConvenios.actNovoExecute(Sender: TObject);
begin
  inherited;
  dbDescricao.SetFocus;
  cbCidade.Text := 'Blumenau';
  cbCidade.PerformSearch;
end;

procedure TfrmCadConvenios.FormActivate(Sender: TObject);
begin
  inherited;
  ListarConvenios('cov_descricao', '0');
  dbDescricao.SetFocus;
end;

procedure TfrmCadConvenios.actProcurarExecute(Sender: TObject);
begin
  ListarConvenios('cov_descricao', '0');
  frmProcConvenios.ShowModal;
end;

procedure TfrmCadConvenios.btTabelaClick(Sender: TObject);
begin
  if (dmCadastros.qyConvenioscov_codigo.Value <> 0) then
  begin
    FiltrarConvProc('c.cov_id', '=', dmCadastros.qyConvenioscov_codigo.Text, 'c.prc_tuss', '0');
    frmTabPrecos.ShowModal;
  end
  else
    MessageDlg('O valor para o paciente é inserido da Tabela de Procedimentos!', mtWarning, [mbok], 0);end;

procedure TfrmCadConvenios.cbCidadeExit(Sender: TObject);
begin
  if dsCadastro.DataSet.State in [dsInsert, dsEdit] then
  Begin
    dmCadastros.qyConvenioscid_codigo.value := dmLookups.lkProcCidadescid_codigo.Value;
    dmCadastros.qyConvenioscid_cidade.Value := dmLookups.lkProcCidadescid_cidade.Value;
    dmCadastros.qyConveniosuf_sigla.Value := dmLookups.lkProcCidadesuf_sigla.Value;
    if not dmLookups.lkProcCidadescid_ceppadrao.IsNull then
      dmCadastros.qyConvenioscov_cep.text := dmLookups.lkProcCidadescid_ceppadrao.text;
 end;
end;

procedure TfrmCadConvenios.cbTpEnderecoExit(Sender: TObject);
begin
  if dsCadastro.DataSet.State in [dsInsert, dsEdit] then
    dmCadastros.qyConveniostpl_id.value := dmLookups.lkProcTpLogradourotpl_id.Value;
end;

procedure TfrmCadConvenios.dbEmailChange(Sender: TObject);
begin
  lbMail.Caption := dbEmail.Text;
end;

procedure TfrmCadConvenios.dsCadastroDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if dsCadastro.DataSet.State in [dsBrowse, dsEdit] then
  Begin
    cbTpEndereco.Text := dmCadastros.qyConveniostpl_tipo.text;
    cbCidade.Text := dmCadastros.qyConvenioscid_cidade.text;
  end;
end;

end.
