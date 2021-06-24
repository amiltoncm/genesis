unit uCadFuncionarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpCadastro, Data.DB, 
  Vcl.ImgList, Vcl.ActnList, Vcl.ComCtrls, Vcl.ToolWin, Vcl.StdCtrls, Vcl.Buttons, 
  Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, wwdbdatetimepicker, wwdblook, wwdbedit,
  Wwdotdot, Wwdbcomb;

type
  TfrmCadFuncionarios = class(TfrmTmpCadastro)
    lbCodigo: TLabel;
    dbCodigo: TDBEdit;
    lbDescricao: TLabel;
    dbDescricao: TDBEdit;
    Label20: TLabel;
    Label3: TLabel;
    cbAtivo: TwwDBComboBox;
    cbFuncao: TwwDBLookupCombo;
    Label6: TLabel;
    dbEndereco: TDBEdit;
    Label7: TLabel;
    dbBairro: TDBEdit;
    Label8: TLabel;
    cbCidade: TwwDBLookupCombo;
    dbUf: TDBEdit;
    Label9: TLabel;
    dbCep: TDBEdit;
    Label10: TLabel;
    dbFone: TDBEdit;
    Label11: TLabel;
    dbCelular: TDBEdit;
    Label12: TLabel;
    dbCartTrab: TDBEdit;
    Label13: TLabel;
    Label17: TLabel;
    dbRG: TDBEdit;
    dbDtNasc: TwwDBDateTimePicker;
    dbSalario: TDBEdit;
    Label16: TLabel;
    wwDBDateTimePicker1: TwwDBDateTimePicker;
    Label15: TLabel;
    dbCPF: TDBEdit;
    Label14: TLabel;
    Label18: TLabel;
    dbemail: TDBEdit;
    procedure actGravarExecute(Sender: TObject);
    procedure actNovoExecute(Sender: TObject);
    procedure actAlterarExecute(Sender: TObject);
    procedure actAtualizarExecute(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure actLimparExecute(Sender: TObject);
    procedure actProcurarExecute(Sender: TObject);
    procedure cbFuncaoExit(Sender: TObject);
    procedure cbCidadeExit(Sender: TObject);
    procedure dsCadastroDataChange(Sender: TObject; Field: TField);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadFuncionarios: TfrmCadFuncionarios;

implementation

{$R *.dfm}

uses dataCadastros, uDaoFuncionarios, uFuncoesDB, dataLookups,
  uProcFuncionarios;

procedure TfrmCadFuncionarios.actGravarExecute(Sender: TObject);
begin
  if dsCadastro.DataSet.State in [dsInsert] then
    dsCadastro.DataSet.FieldByName('fun_codigo').Value := GetCodigo('fun_codigo', 'funcionarios');
  inherited;
end;

procedure TfrmCadFuncionarios.actAlterarExecute(Sender: TObject);
begin
  inherited;
  dbDescricao.SetFocus;
end;

procedure TfrmCadFuncionarios.actAtualizarExecute(Sender: TObject);
begin
  dsCadastro.DataSet.Refresh;
end;

procedure TfrmCadFuncionarios.actLimparExecute(Sender: TObject);
begin
  ListarFuncionarios('fun_nome', '0');
  sbPrincipal.Panels[3].Text := 'Inativo';
  inherited;
end;

procedure TfrmCadFuncionarios.actNovoExecute(Sender: TObject);
begin
  inherited;
  dbDescricao.SetFocus;
end;

procedure TfrmCadFuncionarios.FormActivate(Sender: TObject);
begin
  inherited;
  ListarFuncionarios('fun_nome', '0');
  dbDescricao.SetFocus;
end;

procedure TfrmCadFuncionarios.actProcurarExecute(Sender: TObject);
begin
  ListarFuncionarios('fun_nome', '0');
  frmProcFuncionarios.ShowModal;
end;

procedure TfrmCadFuncionarios.cbCidadeExit(Sender: TObject);
begin
  if dsCadastro.DataSet.State in [dsInsert, dsEdit] then
  begin
    if cbCidade.Text <> '' then
    begin
      dmCadastros.qyFuncionarioscid_codigo.Value := dmLookups.lkProcCidadescid_codigo.Value;
      dmCadastros.qyFuncionarioscid_cidade.Value := dmLookups.lkProcCidadescid_cidade.Value;
      dmCadastros.qyFuncionariosuf_sigla.Value := dmLookups.lkProcCidadesuf_sigla.Value;
    end;
  end;
end;

procedure TfrmCadFuncionarios.cbFuncaoExit(Sender: TObject);
begin
  if dsCadastro.DataSet.State in [dsInsert, dsEdit] then
    dmCadastros.qyFuncionariosfnc_id.Value := dmLookups.lkProcFuncoesfnc_id.Value;
end;

procedure TfrmCadFuncionarios.dsCadastroDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  if dsCadastro.DataSet.State in [dsBrowse, dsEdit] then
  Begin
    cbCidade.Text := dmCadastros.qyFuncionarioscid_cidade.text;
    cbFuncao.Text := dmCadastros.qyFuncionariosfnc_descricao.Text;
  end;
end;

end.
