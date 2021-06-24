unit uAltExame;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpFormNormal, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Menus, Vcl.ActnList, Data.DB, Vcl.Grids, Wwdbigrd, Wwdbgrid,
  wwdbdatetimepicker, Vcl.Mask, wwdbedit, Wwdotdot, Wwdbcomb, wwdblook, Inifiles;

type
  TfrmAltExame = class(TfrmTmpFormNormal)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    lbDtEntrega: TLabel;
    Label15: TLabel;
    Label14: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    sbPaciente: TSpeedButton;
    sbCadMed: TSpeedButton;
    sbCadMedAd: TSpeedButton;
    sbCadPac: TSpeedButton;
    edRequisicao: TEdit;
    cbTpExame: TwwDBLookupCombo;
    cbConvenio: TwwDBLookupCombo;
    cbPaciente: TwwDBLookupCombo;
    edAnos: TEdit;
    edMeses: TEdit;
    cbMedico: TwwDBLookupCombo;
    edMatricula: TEdit;
    edGuia: TEdit;
    cbOrigem: TwwDBLookupCombo;
    cbDestino: TwwDBLookupCombo;
    cbPrioridade: TwwDBComboBox;
    meObservacoes: TMemo;
    edDtRequisicao: TwwDBDateTimePicker;
    edDtNasc: TwwDBDateTimePicker;
    edDtEntrega: TwwDBDateTimePicker;
    wwDBGrid2: TwwDBGrid;
    cbMedicoAd: TwwDBLookupCombo;
    cbSexo: TwwDBComboBox;
    edCrm: TEdit;
    btExamesAnt: TBitBtn;
    btGravar: TBitBtn;
    btCancelar: TBitBtn;
    dsRequisicao: TDataSource;
    ActionList: TActionList;
    actInserir: TAction;
    actAlterar: TAction;
    actDeletar: TAction;
    actGravar: TAction;
    actCancelar: TAction;
    actProcurar: TAction;
    actFechar: TAction;
    actCadPaciente: TAction;
    dsExamesAnt: TDataSource;
    dsExamesCob: TDataSource;
    dsResExames: TDataSource;
    PopupMenu1: TPopupMenu;
    Examesanteriores1: TMenuItem;
    dsMedAdd: TDataSource;
    procedure Similar(vNome: String; vQuantResult: Integer);
    procedure CadNewMedico(vTipo: Integer);
    procedure CadNewPaciente;
    procedure selecionar;
    procedure Libera;
    procedure Bloqueia;
    procedure ExamesAnteriores(vfCodPaciente: String);
    procedure LimpaForm;
    procedure LimpaFiltro;
    procedure FormActivate(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure btFecharClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbPacienteDblClick(Sender: TObject);
    procedure cbPacienteExit(Sender: TObject);
    procedure cbPacienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edDtRequisicaoExit(Sender: TObject);
    procedure cbConvenioExit(Sender: TObject);
    procedure edAnosKeyPress(Sender: TObject; var Key: Char);
    procedure edMesesMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure edCrmExit(Sender: TObject);
    procedure cbMedicoExit(Sender: TObject);
    procedure cbMedicoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure sbPacienteClick(Sender: TObject);
    procedure sbCadMedClick(Sender: TObject);
    procedure sbCadMedAdClick(Sender: TObject);
    procedure cbMedicoAdExit(Sender: TObject);
    procedure cbMedicoAdKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edMatriculaExit(Sender: TObject);
    procedure edGuiaExit(Sender: TObject);
    procedure cbPrioridadeChange(Sender: TObject);
    procedure cbPrioridadeExit(Sender: TObject);
    procedure edDtEntregaExit(Sender: TObject);
    procedure cbOrigemExit(Sender: TObject);
    procedure cbDestinoExit(Sender: TObject);
    procedure btExamesAntClick(Sender: TObject);
    procedure meObservacoesExit(Sender: TObject);
    procedure dsRequisicaoDataChange(Sender: TObject; Field: TField);
    procedure sbCadPacClick(Sender: TObject);

  private
    vlStatus: Boolean;
  public
    { Public declarations }
  end;

var
  frmAltExame: TfrmAltExame;

implementation

{$R *.dfm}

uses dataExames, dataFinanceiro, dataConsultas, dataLookups, uFuncoesFormatacao,
  uVarGlobal, uVisualizaNomes, uCadPacRequisicao, uDaoPacientes, uCadPacientes,
  dataGestao, uCadMedRequisicao, uDaoExames, uExamesAnt, uDaoExamesRespAd,
  uDaoExamesEnvMail, uDaoExamesCob, uDaoExamesLogs, uFuncoesDatas, uDaoMedicos,
  uDaoExamesResp, dataCadastros;

procedure TfrmAltExame.Similar(vNome: String; vQuantResult: Integer);
Var
vControl: TInifile;
vRangeIni: String;
vRange, vCont: Integer;
vAjuste: Real;
vOpcao: Integer;
Begin
  //pega range do ini
  vControl := Tinifile.create(vgArqIni);
  vRangeIni := vControl.readstring('Busca', 'Range', '');
  vControl.Free;
  vOpcao := 75;
  if vRangeIni = '0' then
    vOpcao := 90;
  if vRangeIni = '1' then
    vOpcao := 80;
  if vRangeIni = '2' then
    vOpcao := 75;
  if vRangeIni = '3' then
    vOpcao := 70;
  if vRangeIni = '4' then
    vOpcao := 60;
  if vRangeIni = '5' then
    vOpcao := 50;
  vAjuste := (100 - vOpcao) / 100;
  vRange := Trunc(Length(vNome) * vAjuste) + 1;  //a escala padrão é de 25% arredondando para cima
  //utiliza levenshtein
  FiltrarPacLevenshtein(vNome, IntToStr(vRange));
  if not dmExames.QTemp.Fields[0].IsNull then
  Begin
    vCont := 0;
    dmExames.QTemp.First;
    Repeat
    Begin
      vCont := vCont + 1;
      dmExames.QTemp.Next;
    end;
    Until dmExames.QTemp.EOF = true;
    if vCont >= vQuantResult then
      if MessageDlg('Foram encontrados resultados parecidos na busca!' + #13 + 'Deseja visualizá-los?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
        cbPaciente.SetFocus;
        frmVisualizaNomes.ShowModal;
      end
      else
        if MessageDlg('Deseja cadastrar o novo paciente?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        begin
          vgNomePac := cbPaciente.Text;
          frmCadPacRequisicao.ShowModal;
        end
        else
          cbPaciente.SetFocus;
  end
  else
  if MessageDlg('Deseja cadastrar o novo paciente?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    frmCadPacRequisicao.ShowModal
  else
    cbPaciente.SetFocus;
end;

procedure TfrmAltExame.sbCadPacClick(Sender: TObject);
begin
  frmCadPacientes.ShowModal;
end;

procedure TfrmAltExame.btCancelarClick(Sender: TObject);
begin
  dsRequisicao.DataSet.Cancel;
  Close;
end;

procedure TfrmAltExame.btExamesAntClick(Sender: TObject);
begin
  if cbPaciente.Text <> '' then
  begin
    FiltrarConsExames('e.pac_codigo', '=', dmExames.qyExamespac_codigo.Text, 'e.exa_data desc', '100');
    if not(dmConsultas.qyConsExamesexa_id.IsNull) then
      frmExamesAnt.ShowModal
    else
      MessageDlg('Não foram encontrados exames anteriores do Paciente!', mtWarning, [mbok], 0);
  end
  else
    MessageDlg('Não é possível carregar exames sem a seleção do Paciente!', mtWarning, [mbok], 0);
end;

procedure TfrmAltExame.btFecharClick(Sender: TObject);
begin
  dsRequisicao.DataSet.Cancel;
  Close;
end;

procedure TfrmAltExame.btGravarClick(Sender: TObject);
Var
vIDExame: String;
begin
  Try
  //Verifica prioridade
  dmExames.qyExamesexa_prioridade.Value := cbPrioridade.ItemIndex;
  if cbPrioridade.ItemIndex = 1 then
    dmExames.qyExamesexa_dataprior.Value := edDtEntrega.Date
  else
    dmExames.qyExamesexa_dataprior.IsNull;
  //verifica dados necessários
  if cbPaciente.Text = '' then
    MessageDlg('Você deve selecionar o Paciente!', mtWarning, [mbok], 0)
  else
    if cbMedico.Text = '' then
      MessageDlg('Você deve selecionar o Médico!', mtWarning, [mbok], 0)
    else
      if cbOrigem.Text = '' then
        MessageDlg('Você deve selecionar a Origem!', mtWarning, [mbok], 0)
      else
        if cbDestino.Text = '' then
          MessageDlg('Você deve selecionar o Destino!', mtWarning, [mbok], 0)
        else
        begin
          if edAnos.Text <> '' then
            dmExames.qyExamespac_idade.Text := edAnos.Text;
          if dmExames.qyExamesexa_matricula.IsNull then
            dmExames.qyExamesexa_matricula.Text := '0';
          if dmExames.qyExamesexa_guia.IsNull then
            dmExames.qyExamesexa_guia.Text := '0';
          //Grava requisição
          dsRequisicao.DataSet.Post;
          edRequisicao.Text := dmExames.qyExamesexa_id.Text;
          vIDExame := dmExames.qyExamesexa_id.Text;
          //Grava médico adicional
          if cbMedicoAd.Text <> '' then
          begin
            FiltrarExamesRespAd('e.exa_id', '=', vIDExame, '0', '0');
            if dmExames.qyExamesRespAdexa_id.IsNull then
              InsExamesRespAd(vIDExame, dmLookups.lkProcMedAdicionalmed_codigo.Text)
            else
              UpdExamesRespAd(vIDExame, dmLookups.lkProcMedAdicionalmed_codigo.Text);
          end
          else
          begin
            //testa se já existia cadastrado e deleta
            FiltrarExamesRespAd('e.exa_id', '=', vIDExame, '0', '0');
            if not dmExames.qyExamesRespAdexa_id.IsNull then
              dmExames.qyExamesRespAd.Delete;
          end;
          //Controle de envio de e-mail's
          FiltrarExamesEnvMail('exa_id', '=', vIDExame, '0', '1');
          if dmExames.qyExamesEnvMaileem_id.IsNull then
            InsExamesEnvMail(vIDExame);
          //verifica se ja foi gerado o controle de cobrança
          FiltrarExamesCob('exa_id', '=', vIDExame, '0', '1');
          if dmFinanceiro.qyExamesCobexa_id.IsNull then
            //insere controle na tabela ExamesCob
            InsExamesCobNew(vIDExame);
          //Grava log de usuário etapa 2
          InsExamesLogs(vIDExame, '2', vgCodUsuarioLog);
          MessageDlg('Dados alterados com sucesso!', mtInformation, [mbok], 0);
          dmExames.qyExames.Refresh;
          Close;
        end;
        Except
        on E: Exception do
        Begin
          MessageDlg('Erro ao gravar Alteração / Inserção!' + #13#10 +
           E.Message, mtError,[mbOk],0);
          dsRequisicao.DataSet.Refresh;
        end;
      end;
end;

procedure TfrmAltExame.CadNewMedico(vTipo: Integer);
begin
  if vlStatus then
  Begin
    vgTipoCadMed := vTipo;
    if vTipo = 0 then
    begin
      cbMedico.Clear;
      cbMedico.SetFocus;
    end;
    if vTipo = 1 then
    begin
      cbMedicoAd.Clear;
      cbMedicoAd.SetFocus;
    end;
    frmCadMedRequisicao.ShowModal;
  end
  else
    MessageDlg('A tabela não está em modo de Inserção / Edição!', mtWarning, [mbok],0);
end;

procedure TfrmAltExame.CadNewPaciente;
begin
  if vlStatus then
  Begin
    if cbPaciente.Text <> '' then
      vgNomePac := cbPaciente.Text;
    cbPaciente.Clear;
    cbPaciente.SetFocus;
    edDtNasc.Clear;
    edAnos.Clear;
    edMeses.Clear;
    frmCadPacRequisicao.ShowModal;
  end
  else
    MessageDlg('A tabela não está em modo de Inserção / Edição!', mtWarning, [mbok],0);
end;

procedure TfrmAltExame.cbConvenioExit(Sender: TObject);
begin
  if vlStatus then
  Begin
    if cbConvenio.Text = '' then
      dmExames.qyExamescov_codigo.Value := 0
    else
      dmExames.qyExamescov_codigo.Value := dmLookups.lkProcConvenioscov_codigo.Value;
  end;
end;

procedure TfrmAltExame.cbDestinoExit(Sender: TObject);
begin
  if vlStatus then
    dmExames.qyExamesexa_destino.Value := dmLookups.lkProcLocaisexl_id.value;
end;

procedure TfrmAltExame.cbMedicoAdExit(Sender: TObject);
begin
  if vlStatus then
  begin
    if cbMedicoAd.Text <> '' then
    begin
      //Consulta ve se existe o nome do médico
      if cbMedicoAd.Text <> dmLookups.lkProcMedAdicionalmed_nome.Text then
      begin
        if MessageDlg('Deseja cadastrar novo médico?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        begin
          vgNomeMed := cbMedicoAd.Text;
          CadNewMedico(1);
        end;
      end;
    end;
  end;
end;

procedure TfrmAltExame.cbMedicoAdKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_F12 then
    CadNewMedico(1);
end;

procedure TfrmAltExame.cbMedicoExit(Sender: TObject);
begin
  if vlStatus then
  begin
    //Consulta ve se existe o nome do médico
    if cbMedico.Text <> dmLookups.lkProcMedicosmed_nome.Text then
    begin
      if MessageDlg('Deseja cadastrar novo médico?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
        vgNomeMed := cbMedico.Text;
        CadNewMedico(0);
      end;
    end
    else
    begin
      dmExames.qyExamesmed_codigo.value := dmLookups.lkProcMedicosmed_codigo.value;
      edCrm.Text := dmLookups.lkProcMedicosmed_numconselho.Text;
    end;
  end;
end;

procedure TfrmAltExame.cbMedicoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_F12 then
    CadNewMedico(0);
end;

procedure TfrmAltExame.cbOrigemExit(Sender: TObject);
begin
  if vlStatus then
  begin
    dmExames.qyExamesexa_origem.Value := dmLookups.lkProcOrigemexl_id.Value;
    dmExames.qyExamesexa_destino.Value := dmLookups.lkProcOrigemexl_id.Value;
    cbDestino.Text := dmLookups.lkProcOrigemexl_descricao.Text;
    cbDestino.PerformSearch;
  end;
end;

procedure TfrmAltExame.cbPacienteDblClick(Sender: TObject);
begin
  LimpaFiltro;
end;

procedure TfrmAltExame.cbPacienteExit(Sender: TObject);
Var
vDataNasc, vDataExame: TDate;
vIdadeAnos: Integer;
vIdadeFull: String;
begin
  if vlStatus then
  begin
    vgNomePac := cbPaciente.Text;
    if cbPaciente.Text <> dmLookups.lkProcPacientespac_nome.Text then
      Similar(cbPaciente.Text, 1)
    else
    begin
      //limpa dados caso retorne ao combo
      edAnos.Clear;
      edMeses.Clear;
      edDtNasc.Clear;
      dmExames.qyExamespac_idade.Clear;
      dmExames.qyExamespac_meses.Clear;
      dmExames.qyExamespac_codigo.Value := dmLookups.lkProcPacientespac_codigo.value;
      if not dmLookups.lkProcPacientespac_dtnasc.IsNull then
      Begin
        vDataExame := edDtRequisicao.Date;
        if not(dmLookups.lkProcPacientespac_dtnasc.IsNull) then
        begin
          vDataNasc := dmLookups.lkProcPacientespac_dtnasc.Value;
          vIdadeAnos := Trunc((vDataExame - vDataNasc) / 365.25);
          vIdadeFull := CalculaIdade(vDataNasc, vDataExame);
          dmExames.qyExamespac_idade.Value := vIdadeAnos;
          dmExames.qyExamespac_meses.Text := vIdadeFull;
          edDtNasc.Date := dmLookups.lkProcPacientespac_dtnasc.Value;
          edAnos.Text := IntToStr(vIdadeAnos);
          edMeses.Text := vIdadeFull;
        end;
      end;
      ExamesAnteriores(dmLookups.lkProcPacientespac_codigo.text);
      //busca outros dados que não estão no cadastro (Matrícula)
      dmExames.qyExamesexa_matricula.Text := GetMatricula(dmExames.qyExamespac_codigo.Text);
      edMatricula.Text := dmExames.qyExamesexa_matricula.Text;
    end;
  end;
end;

procedure TfrmAltExame.cbPacienteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_F12 then
    CadNewPaciente;
end;

procedure TfrmAltExame.cbPrioridadeChange(Sender: TObject);
begin
  if cbPrioridade.Value = '0' then
  Begin
    edDtEntrega.ReadOnly := true;
    edDtEntrega.Enabled := false;
    lbDtEntrega.Enabled := false;
  end
  else
  Begin
    edDtEntrega.ReadOnly := false;
    edDtEntrega.Enabled := true;
    lbDtEntrega.Enabled := true;
  end;
end;

procedure TfrmAltExame.cbPrioridadeExit(Sender: TObject);
begin
  if vlStatus then
    dmExames.qyExamesexa_prioridade.Text := cbPrioridade.Value;
end;

procedure TfrmAltExame.dsRequisicaoDataChange(Sender: TObject; Field: TField);
begin
  if dsRequisicao.DataSet.State in [dsInsert, dsEdit] then
  Begin
    btGravar.Enabled := True;
    btCancelar.Enabled := True;
    vlStatus := true;
    Libera;
  end
  else
  Begin
    btGravar.Enabled := False;
    btCancelar.Enabled := False;
    vlStatus := false;
    Bloqueia;
  end;
end;

procedure TfrmAltExame.edAnosKeyPress(Sender: TObject; var Key: Char);
begin
  Key := Numeros(Key);
end;

procedure TfrmAltExame.edCrmExit(Sender: TObject);
begin
  if edCrm.Text <> '' then
  begin
    FiltrarMedCRM(edCrm.Text);
    if dmConsultas.qyProcMedCRMmed_codigo.IsNull then
    begin
      MessageDlg('CRM: ' + edCrm.Text + ' Médico não localizado!', mtWarning, [mbok], 0);
      edCrm.Clear;
      cbMedico.Text := '';
      cbMedico.PerformSearch;
    end
    else
    begin
      cbMedico.Text := dmConsultas.qyProcMedCRMmed_nome.Text;
      cbMedico.PerformSearch;
    end;
  end;
end;

procedure TfrmAltExame.edDtEntregaExit(Sender: TObject);
begin
  if vlStatus then
    if edDtEntrega.ReadOnly = false then
      dmExames.qyExamesexa_dataprior.Value := edDtEntrega.Date;
end;

procedure TfrmAltExame.edDtRequisicaoExit(Sender: TObject);
begin
  if vlStatus then
    dmExames.qyExamesexa_data.Value := edDtRequisicao.Date;
end;

procedure TfrmAltExame.edGuiaExit(Sender: TObject);
begin
  if vlStatus then
    dmExames.qyExamesexa_guia.Text := edGuia.Text;
  if edGuia.Text = '' then
  begin
    edGuia.Text := '0';
    dmExames.qyExamesexa_guia.text := edGuia.Text;
  end;
end;

procedure TfrmAltExame.edMatriculaExit(Sender: TObject);
begin
  if vlStatus then
    dmExames.qyExamesexa_matricula.text := edMatricula.Text;
  if edMatricula.Text = '' then
  begin
    edMatricula.Text := '0';
    dmExames.qyExamesexa_matricula.text := edMatricula.Text;
  end;
end;

procedure TfrmAltExame.edMesesMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  edMeses.Hint := edMeses.Text;
end;

procedure TfrmAltExame.sbCadMedAdClick(Sender: TObject);
begin
  CadNewMedico(1);
end;

procedure TfrmAltExame.sbCadMedClick(Sender: TObject);
begin
  CadNewMedico(0);
end;

procedure TfrmAltExame.sbPacienteClick(Sender: TObject);
begin
  CadNewPaciente;
end;

procedure TfrmAltExame.selecionar;
Var
vDataNasc, vDataExame: TDate;
vIdadeAnos: Integer;
vIdadeFull, vIDExame: String;
begin
  if vgIDExameSel <> '' then
  Begin
    //Busca variavel uVarGlobal
    vIDExame := vgIDExameSel;
    //limpa o formulário frmRequisicao
    LimpaForm;
    //Carrega dados
    edRequisicao.Text := dmExames.qyExamesexa_id.Text;
    edDtRequisicao.Date := dmExames.qyExamesexa_data.Value;
    cbTpExame.Text := dmExames.qyExamesetp_tipo.Text;
    cbConvenio.Text := dmExames.qyExamescov_descricao.Text;
    cbPaciente.Text := dmExames.qyExamespac_nome.Text;
    meObservacoes.Text := dmExames.qyExamesexa_obs.Text;
    //filtra paciente
    FiltrarPacientes('p.pac_codigo', '=', dmExames.qyExamespac_codigo.Text, '0', '1');
    //Verifica médico adicional
    FiltrarExamesResp('e.exa_id', '=', vgIDExameSel, '0', '0');
    if not(dmExames.qyExamesRespAdexa_id.IsNull) then
      cbMedicoAd.Text := dmExames.qyExamesRespAdmed_nome.Text;
    //testa se existe data de nascimento e calcula a idade}
    if not(dmCadastros.qyPacientespac_dtnasc.IsNull) then
    Begin
      edDtNasc.Date := dmCadastros.qyPacientespac_dtnasc.Value;
      //Calcula idade na data do exame
      vDataExame := edDtRequisicao.Date;
      vDataNasc := edDtNasc.Date;
      vIdadeAnos := Trunc((vDataExame - vDataNasc) / 365.25);
      vIdadeFull := CalculaIdade(vDataNasc, vDataExame);
      edAnos.Text := IntToStr(vIdadeAnos);
      edMeses.Text := vIdadeFull;
    end
    else
      edAnos.Text := dmExames.qyExamespac_idade.Text;
    cbMedico.Text := dmExames.qyExamesmed_nome.Text;
    edMatricula.Text := dmExames.qyExamesexa_matricula.Text;
    edGuia.Text := dmExames.qyExamesexa_guia.Text;
    cbOrigem.Text := dmExames.qyExamesexl_descricao.Text;
    cbDestino.Text := dmExames.qyExamesexa_destino.Text;
    if dmExames.qyExamesexa_prioridade.Text = '0' then
      cbPrioridade.Text := 'Normal'
    else
      cbPrioridade.Text := 'Alta';
    if not dmExames.qyExamesexa_dataprior.IsNull then
      edDtEntrega.Date := dmExames.qyExamesexa_dataprior.Value;
    meObservacoes.Text := dmExames.qyExamesexa_obs.Text;
    Libera;
  end
  else
    MessageDlg('Exame não encontrado!', mtWarning, [mbOk],0);
end;

procedure TfrmAltExame.Libera;
Begin
  edDtRequisicao.ReadOnly := false;
  cbTpExame.ReadOnly := false;
  cbConvenio.ReadOnly := false;
  cbPaciente.ReadOnly := false;
  cbMedico.ReadOnly := false;
  edMatricula.ReadOnly := false;
  edGuia.ReadOnly := false;
  cbOrigem.ReadOnly := false;
  cbDestino.ReadOnly := false;
  cbPrioridade.ReadOnly := false;
  meObservacoes.ReadOnly := false;
  edCrm.ReadOnly := false;
  edDtEntrega.ReadOnly := false;
end;

procedure TfrmAltExame.Bloqueia;
Begin
  edDtRequisicao.ReadOnly := true;
  cbTpExame.ReadOnly := true;
  cbConvenio.ReadOnly := true;
  cbPaciente.ReadOnly := true;
  cbMedico.ReadOnly := true;
  edMatricula.ReadOnly := true;
  edGuia.ReadOnly := true;
  cbOrigem.ReadOnly := true;
  cbDestino.ReadOnly := true;
  cbPrioridade.ReadOnly := true;
  meObservacoes.ReadOnly := true;
  edCrm.ReadOnly := true;
  edDtEntrega.ReadOnly := true;
end;

procedure TfrmAltExame.ExamesAnteriores(vfCodPaciente: String);
begin
  //Tela de exames anteriores
  FiltrarProcExames('e.pac_codigo', '=', vfCodPaciente, '0', 'e.exa_data', '100');
  //Preenche grid de doenças
  FiltrarExamesPac(vfCodPaciente);
end;

procedure TfrmAltExame.FormActivate(Sender: TObject);
begin
  inherited;
  dsRequisicao.DataSet.Active := true;
  dsExamesAnt.DataSet.Active := true;
  dsExamesCob.DataSet.Active := true;
  dsResExames.DataSet.Active := true;
  dsMedAdd.DataSet.Active := true;
  vlStatus := false;
  //Criado variavel para não limpar o formulário ao imprimir o relatório da Citologia
  dsRequisicao.DataSet.Edit;
  selecionar;
end;

procedure TfrmAltExame.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if dsRequisicao.DataSet.State in [dsEdit] then
    dsRequisicao.DataSet.Cancel;
end;

procedure TfrmAltExame.LimpaFiltro;
Begin
  dmLookups.Refresh;
end;

procedure TfrmAltExame.LimpaForm;
Begin
  LimpaFiltro;
  edRequisicao.Clear;
  edDtRequisicao.Clear;
  cbTpExame.Clear;
  cbConvenio.Clear;
  cbPaciente.Clear;
  edDtNasc.Clear;
  edAnos.Clear;
  edMeses.Clear;
  cbSexo.Clear;
  edCrm.Clear;
  cbMedico.Clear;
  cbMedicoAd.Clear;
  edMatricula.Clear;
  edMatricula.Text := '0';
  edGuia.Clear;
  edGuia.Text := '0';
  cbOrigem.Clear;
  cbDestino.Clear;
  //Controle de prioridade Zerada - Início -------------------------------------
  cbPrioridade.ItemIndex := 0;
  edDtEntrega.Date := (now + 7);
  edDtEntrega.ReadOnly := true;
  edDtEntrega.Enabled := false;
  lbDtEntrega.Enabled := false;
  //Controle de prioridade Zerada - Final --------------------------------------
  meObservacoes.Clear;
  edDtRequisicao.Date := (now);
  edDtNasc.Date := 0;
  ExamesAnteriores('0');
  if dmExames.qyExames.State in [dsInsert] then
    edDtRequisicao.SetFocus
  else
    edRequisicao.SetFocus;
end;

procedure TfrmAltExame.meObservacoesExit(Sender: TObject);
begin
  if vlStatus then
    dmExames.qyExamesexa_obs.Text := meObservacoes.Text;
end;

end.
