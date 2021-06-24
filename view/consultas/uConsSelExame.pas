unit uConsSelExame;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics,   Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpConsultasNormal, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask;

type
  TfrmConsSelExame = class(TfrmTmpConsultasNormal)
    meExame: TMaskEdit;
    procedure Selecionar;
    procedure Limpar;
    procedure Filtrar;
    procedure FormActivate(Sender: TObject);
    procedure btFiltrarClick(Sender: TObject);
    procedure btLimparClick(Sender: TObject);
    procedure btSelecionarClick(Sender: TObject);
    procedure GridConsultaDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsSelExame: TfrmConsSelExame;

implementation

{$R *.dfm}

uses uDaoExames, dataExames, uFuncoesLogs, uRequisicao, uDaoPacientes,
  uDaoExamesRespAd, dataCadastros, uFuncoesDatas, uDaoExamesColeta;

procedure TfrmConsSelExame.Selecionar;
Var
vDataNasc, vDataExame: TDate;
vIdadeAnos: Integer;
vIdadeFull, vIDExame: String;
begin
  if not dmExames.qyExamesexa_id.IsNull then
  begin
    vIDExame := dmExames.qyExamesexa_id.Text;
    FiltrarExames('e.exa_id', '=', vIDExame, '0', '1');
    //limpa o formulário frmRequisicao
    frmRequisicao.LimpaForm;
    //Carrega dados
    frmRequisicao.edRequisicao.Text := dmExames.qyExamesexa_id.Text;
    frmRequisicao.edDtRequisicao.Date := dmExames.qyExamesexa_data.Value;
    frmRequisicao.cbTpExame.Text := dmExames.qyExamesetp_tipo.Text;
    frmRequisicao.cbTpExame.PerformSearch;
    frmRequisicao.cbConvenio.Text := dmExames.qyExamescov_descricao.Text;
    frmRequisicao.cbPaciente.Text := dmExames.qyExamespac_nome.Text;
    frmRequisicao.meObservacoes.Text := dmExames.qyExamesexa_obs.Text;
    //filtra paciente
    FiltrarPacientes('p.pac_codigo', '=', dmExames.qyExamespac_codigo.Text, '0', '1');
    //Verifica médico adicional
    FiltrarExamesRespAd('e.exa_id', '=', vIDExame, '0', '1');
    if not(dmExames.qyExamesRespAdexa_id.IsNull) then
    begin
      frmRequisicao.cbMedicoAd.Text := dmExames.qyExamesRespAdmed_nome.Text;
      frmRequisicao.cbMedicoAd.PerformSearch;
    end;
    //testa se existe data de nascimento e calcula a idade}
    if not dmCadastros.qyPacientespac_dtnasc.IsNull then
    Begin
      frmRequisicao.edDtNasc.Date := dmCadastros.qyPacientespac_dtnasc.Value;
      //Calcula idade na data do exame
      vDataExame := frmRequisicao.edDtRequisicao.Date;
      vDataNasc := frmRequisicao.edDtNasc.Date;
      vIdadeAnos := Trunc((vDataExame - vDataNasc) / 365.25);
      vIdadeFull := CalculaIdade(vDataNasc, vDataExame);
      frmRequisicao.edAnos.Text := IntToStr(vIdadeAnos);
      frmRequisicao.edMeses.Text := vIdadeFull;
    end
    else
      frmRequisicao.edAnos.Text := dmExames.qyExamespac_idade.Text;
    frmRequisicao.cbMedico.Text := dmExames.qyExamesmed_nome.Text;
    frmRequisicao.edMatricula.Text := dmExames.qyExamesexa_matricula.Text;
    frmRequisicao.edGuia.Text := dmExames.qyExamesexa_guia.Text;
    frmRequisicao.cbOrigem.Text := dmExames.qyExamesexl_descricao.Text;
    frmRequisicao.cbDestino.Text := dmExames.qyExamesexl_descricao_1.Text;
    if dmExames.qyExamesexa_prioridade.Text = '0' then
      frmRequisicao.cbPrioridade.Text := 'Normal'
    else
      frmRequisicao.cbPrioridade.Text := 'Alta';
    if not dmExames.qyExamesexa_dataprior.IsNull then
      frmRequisicao.edDtEntrega.Date := dmExames.qyExamesexa_dataprior.Value;
    frmRequisicao.meObservacoes.Text := dmExames.qyExamesexa_obs.Text;
    //Dados da coleta e campos diversos ----------------------------------------
    FiltrarExamesColeta('exa_id', '=', vIDExame, '0');
    if dmExames.qyExamesColetaexa_id.IsNull then
    begin
      frmRequisicao.cbDataColeta.Clear;
      frmRequisicao.edNomeMae.Clear;
    end
    else
    begin
      frmRequisicao.cbDataColeta.Date := dmExames.qyExamesColetaexc_data.Value;
      frmRequisicao.edNomeMae.Text := dmExames.qyExamesColetaexc_nomemae.text;
    end;
    Close;
  end
  else
    MessageDlg('Exame não encontrado!', mtWarning, [mbOk],0);
end;

procedure TfrmConsSelExame.Limpar;
begin
  meExame.Clear;
  FiltrarExames('e.exa_etapa', '=', '2', 'e.exa_id desc', '100');
  meExame.SetFocus;
end;

procedure TfrmConsSelExame.btLimparClick(Sender: TObject);
begin
  Limpar;
end;

procedure TfrmConsSelExame.btSelecionarClick(Sender: TObject);
begin
  Selecionar;
end;

procedure TfrmConsSelExame.Filtrar;
begin
  FiltrarExamesAltReq('e.exa_id', '=', meExame.Text, '0', '1');
  if not(dmExames.qyExamesexa_id.IsNull) then
    GridConsulta.SetFocus;
end;

procedure TfrmConsSelExame.btFiltrarClick(Sender: TObject);
begin
  Filtrar;
end;

procedure TfrmConsSelExame.FormActivate(Sender: TObject);
begin
  //inherited;
  dsConsulta.DataSet.Active := True;
  Limpar;
end;

procedure TfrmConsSelExame.GridConsultaDblClick(Sender: TObject);
begin
  inherited;
  Selecionar;
end;

end.
