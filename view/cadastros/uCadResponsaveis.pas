unit uCadResponsaveis;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpCadastro, Vcl.ImgList, Vcl.ActnList,
  Data.DB, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.ToolWin, Vcl.StdCtrls, Vcl.Buttons,
  wwdblook, wwdbedit, Wwdotdot, Wwdbcomb, Vcl.Mask, Vcl.DBCtrls;

type
  TfrmCadResponsaveis = class(TfrmTmpCadastro)
    Label1: TLabel;
    dbCodigo: TDBEdit;
    Label2: TLabel;
    cbTitulo: TwwDBComboBox;
    Label3: TLabel;
    dbNome: TDBEdit;
    Label4: TLabel;
    cbConselho: TwwDBLookupCombo;
    Label5: TLabel;
    dbNumConselho: TDBEdit;
    Label6: TLabel;
    dbUfConselho: TDBEdit;
    Label7: TLabel;
    dbIniciais: TDBEdit;
    cbCBO: TwwDBLookupCombo;
    cbParticipacao: TwwDBLookupCombo;
    Label8: TLabel;
    Label9: TLabel;
    dbCPF: TDBEdit;
    Label10: TLabel;
    Label11: TLabel;
    dbRQE: TDBEdit;
    procedure cbConselhoExit(Sender: TObject);
    procedure dsCadastroDataChange(Sender: TObject; Field: TField);
    procedure actNovoExecute(Sender: TObject);
    procedure cbCBOExit(Sender: TObject);
    procedure cbParticipacaoExit(Sender: TObject);
    procedure actAlterarExecute(Sender: TObject);
    procedure actAtualizarExecute(Sender: TObject);
    procedure actLimparExecute(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure actProcurarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadResponsaveis: TfrmCadResponsaveis;

implementation

{$R *.dfm}

uses dataCadastros, uDaoResponsaveis, dataLookups, uProcResponsaveis;

procedure TfrmCadResponsaveis.actAlterarExecute(Sender: TObject);
begin
  inherited;
  cbTitulo.SetFocus;
end;

procedure TfrmCadResponsaveis.actAtualizarExecute(Sender: TObject);
begin
  dsCadastro.DataSet.Refresh;
end;

procedure TfrmCadResponsaveis.actLimparExecute(Sender: TObject);
begin
  ListarResponsaveis('res_nome', '0');
  sbPrincipal.Panels[3].Text := 'Inativo';
  inherited;
end;

procedure TfrmCadResponsaveis.actNovoExecute(Sender: TObject);
begin
  inherited;
  dsCadastro.DataSet.FieldByName('res_titulo').Value := 'Dr.';
  dsCadastro.DataSet.FieldByName('cos_id').Value := 6;
  dsCadastro.DataSet.FieldByName('cos_uf').Value := 'SC';
  dsCadastro.DataSet.FieldByName('cbo_codigo').Value := 999999;
  dsCadastro.DataSet.FieldByName('prt_codigo').Value := 11;
  cbTitulo.SetFocus;
end;

procedure TfrmCadResponsaveis.actProcurarExecute(Sender: TObject);
begin
  ListarResponsaveis('res_nome', '0');
  frmProcResponsaveis.ShowModal;
end;

procedure TfrmCadResponsaveis.cbCBOExit(Sender: TObject);
begin
  inherited;
  if dsCadastro.DataSet.State in [dsInsert, dsEdit] then
  begin
    dsCadastro.DataSet.FieldByName('cbo_codigo').Value := dmLookups.lkProcCBOcbo_codigo.Value;
    dsCadastro.DataSet.FieldByName('cbo_descricao').Value := dmLookups.lkProcCBOcbo_descricao.Value;
  end
  else
    cbCBO.Text := dsCadastro.DataSet.FieldByName('cbo_descricao').Value;
end;

procedure TfrmCadResponsaveis.cbConselhoExit(Sender: TObject);
begin
  inherited;
  if dsCadastro.DataSet.State in [dsInsert, dsEdit] then
    dsCadastro.DataSet.FieldByName('cos_id').Value := dmLookups.lkProcConselhoscos_codigo.Value
  else
    cbConselho.Text := dsCadastro.DataSet.FieldByName('cos_tipo').Text;
end;

procedure TfrmCadResponsaveis.cbParticipacaoExit(Sender: TObject);
begin
  inherited;
  if dsCadastro.DataSet.State in [dsInsert, dsEdit] then
  begin
    dsCadastro.DataSet.FieldByName('prt_codigo').Value := dmLookups.lkProcParticipacaoprt_codigo.Value;
    dsCadastro.DataSet.FieldByName('prt_termo').Value := dmLookups.lkProcParticipacaoprt_termo.Value;
  end
  else
    cbParticipacao.Text := dsCadastro.DataSet.FieldByName('prt_termo').Text;
end;

procedure TfrmCadResponsaveis.dsCadastroDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  cbConselho.Text := dsCadastro.DataSet.FieldByName('cos_tipo').Text;
  cbParticipacao.Text := dsCadastro.DataSet.FieldByName('prt_termo').Text;
  cbCBO.Text := dsCadastro.DataSet.FieldByName('cbo_descricao').Text;
end;

procedure TfrmCadResponsaveis.FormActivate(Sender: TObject);
begin
  ListarResponsaveis('res_nome', '0');
  inherited;
end;

end.
