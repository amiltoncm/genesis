unit uRequisicao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpFormNormal, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Menus, Vcl.ActnList, Data.DB, Vcl.Grids, Wwdbigrd, Wwdbgrid,
  wwdbdatetimepicker, Vcl.Mask, wwdbedit, Wwdotdot, Wwdbcomb, wwdblook,
  Vcl.DBGrids, Inifiles, Vcl.DBCtrls, Vcl.ComCtrls;

type
  TfrmRequisicao = class(TfrmTmpFormNormal)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    sbPaciente: TSpeedButton;
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
    lbResultPrior: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    spCadMedico: TSpeedButton;
    spCadMedAd: TSpeedButton;
    btInserir: TBitBtn;
    btAlterar: TBitBtn;
    btDeletar: TBitBtn;
    btGravar: TBitBtn;
    btCancelar: TBitBtn;
    btProcurar: TBitBtn;
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
    btImprimir: TBitBtn;
    btExames: TBitBtn;
    cbMedicoAd: TwwDBLookupCombo;
    cbSexo: TwwDBComboBox;
    btCobAnt: TBitBtn;
    edCrm: TEdit;
    btExamesAnt: TBitBtn;
    dsRequisicao: TDataSource;
    dsLog: TDataSource;
    ActionList: TActionList;
    actInserir: TAction;
    actAlterar: TAction;
    actExcluir: TAction;
    actGravar: TAction;
    actCancelar: TAction;
    actProcurar: TAction;
    actCadPaciente: TAction;
    dsExamesAnt: TDataSource;
    dsExamesCob: TDataSource;
    dsResExames: TDataSource;
    PopupMenu1: TPopupMenu;
    Examesanteriores1: TMenuItem;
    dsMedAdd: TDataSource;
    popTpExame: TPopupMenu;
    ConverterCitologiaemCitologiaEspecial1: TMenuItem;
    GridResAnt: TDBGrid;
    actCadMedico: TAction;
    actCadMedicoAd: TAction;
    dbCodigo: TDBText;
    actAltCadPaciente: TAction;
    SpeedButton1: TSpeedButton;
    Label18: TLabel;
    Label19: TLabel;
    edNomeMae: TEdit;
    cbDataColeta: TwwDBDateTimePicker;
    procedure Libera;
    procedure Bloqueia;
    procedure ExamesAnteriores(vfCodPaciente: String);
    procedure ImprimeEtapaI;
    procedure LimpaForm;
    procedure LimpaFiltro;
    procedure CadNewPaciente;
    procedure CadNewMedico(vTipo: Integer);
    procedure Similar(vNome: String; vQuantResult: Integer);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure actAlterarExecute(Sender: TObject);
    procedure actInserirExecute(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure actGravarExecute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure actProcurarExecute(Sender: TObject);
    procedure cbPrioridadeChange(Sender: TObject);
    procedure cbTpExameExit(Sender: TObject);
    procedure cbConvenioExit(Sender: TObject);
    procedure cbMedicoExit(Sender: TObject);
    procedure edMatriculaExit(Sender: TObject);
    procedure edGuiaExit(Sender: TObject);
    procedure cbOrigemExit(Sender: TObject);
    procedure cbDestinoExit(Sender: TObject);
    procedure cbPrioridadeExit(Sender: TObject);
    procedure edDtEntregaExit(Sender: TObject);
    procedure meObservacoesExit(Sender: TObject);
    procedure cbPacienteExit(Sender: TObject);
    procedure actCadPacienteExecute(Sender: TObject);
    procedure actCadMedicoExecute(Sender: TObject);
    procedure actCadMedicoAdExecute(Sender: TObject);
    procedure ConverterCitologiaemCitologiaEspecial1Click(Sender: TObject);
    procedure edMesesMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure btImprimirClick(Sender: TObject);
    procedure btExamesClick(Sender: TObject);
    procedure Examesanteriores1Click(Sender: TObject);
    procedure btExamesAntClick(Sender: TObject);
    procedure GridResAntDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure cbTpExameEnter(Sender: TObject);
    procedure cbPacienteDblClick(Sender: TObject);
    procedure cbPacienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbMedicoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btCobAntClick(Sender: TObject);
    procedure cbMedicoAdExit(Sender: TObject);
    procedure cbMedicoAdKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edCrmExit(Sender: TObject);
    procedure edRequisicaoExit(Sender: TObject);
    procedure dsRequisicaoStateChange(Sender: TObject);
    procedure actAltCadPacienteExecute(Sender: TObject);

  private
    vlStatus: Boolean;

  public
    { Public declarations }
  end;

var
  frmRequisicao: TfrmRequisicao;

implementation

{$R *.dfm}

uses dataExames, uVarGlobal, dataLookups, uDaoExames, uDaoPacientes,
  uDaoExamesRespAd, uDaoExamesEnvMail, uDaoExamesCob, uDaoExamesLogs,
  dataFinanceiro, dataGestao, uValorPago, uFuncoesTISS, uExamesCito,
  uExamesHist, uGerenFiles, uRelCitoEspecial, uRelCitoEtapaI,
  uDaoExamesHistMacro, uRelHistoEtapaIMac, uRelHistoEtapaI, dataConsultas,
  uConsSelExame, uCadPacRequisicao, uCadMedRequisicao, uVisualizaNomes,
  uFuncoesDatas, uExamesAnt, uDaoMedicos, uDaoExamesResp, uFuncoesDBEsp,
  uCadPacientes, dataCadastros, uDaoExamesColeta, uClassExamescoleta;

procedure TfrmRequisicao.Libera;
begin
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

procedure TfrmRequisicao.CadNewPaciente;
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

procedure TfrmRequisicao.ExamesAnteriores(vfCodPaciente: String);
Begin
  //Tela de exames anteriores
  FiltrarProcExames('e.pac_codigo', '=', vfCodPaciente, '0', 'e.exa_data', '100');
  //Preenche grid de doenças
  FiltrarExamesPac(vfCodPaciente);
  if dmConsultas.qyConsExamesPacexa_id.IsNull then
    lbResultPrior.Color := clBtnFace
  else
    lbResultPrior.Color := clYellow;
end;

procedure TfrmRequisicao.Examesanteriores1Click(Sender: TObject);
begin
  frmExamesAnt.ShowModal;
end;

procedure TfrmRequisicao.cbConvenioExit(Sender: TObject);
begin
  if vlStatus then
  Begin
    if cbConvenio.Text = '' then
      dmExames.qyExamescov_codigo.Value := 0
    else
      dmExames.qyExamescov_codigo.Value := dmLookups.lkProcConvenioscov_codigo.Value;
  end;
end;

procedure TfrmRequisicao.cbDestinoExit(Sender: TObject);
begin
  if vlStatus then
    dmExames.qyExamesexa_destino.Value := dmLookups.lkProcDestinoexl_id.Value;
end;

procedure TfrmRequisicao.cbMedicoAdExit(Sender: TObject);
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

procedure TfrmRequisicao.cbMedicoAdKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_F12 then
    CadNewMedico(1);
end;

procedure TfrmRequisicao.cbMedicoExit(Sender: TObject);
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

procedure TfrmRequisicao.cbMedicoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_F12 then
    CadNewMedico(0);
end;

procedure TfrmRequisicao.cbOrigemExit(Sender: TObject);
begin
  if vlStatus then
  begin
    dmExames.qyExamesexa_origem.Value := dmLookups.lkProcOrigemexl_id.Value;
    dmExames.qyExamesexa_destino.Value := dmLookups.lkProcOrigemexl_id.Value;
    cbDestino.Text := dmLookups.lkProcOrigemexl_descricao.Text;
    cbDestino.PerformSearch;
  end;
end;

procedure TfrmRequisicao.cbPacienteDblClick(Sender: TObject);
begin
  LimpaFiltro;
end;

procedure TfrmRequisicao.cbPacienteExit(Sender: TObject);
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
        if not (dmLookups.lkProcPacientespac_dtnasc.IsNull) then
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
      //Sexo
      if dmLookups.lkProcPacientespac_sexo.Text = 'F' then
        cbSexo.ItemIndex := 0
      else
        if dmLookups.lkProcPacientespac_sexo.Text = 'M' then
          cbSexo.ItemIndex := 1
        else
          cbSexo.ItemIndex := -1;
      ExamesAnteriores(dmLookups.lkProcPacientespac_codigo.text);
      //busca outros dados que não estão no cadastro
      FiltrarDadosReq(dmExames.qyExamespac_codigo.Text);
      if not(dmConsultas.qyConsDadosReqpac_codigo.IsNull) then
      begin
        dmConsultas.qyConsDadosReq.Last;
        dmExames.qyExamesexa_matricula.Text := dmConsultas.qyConsDadosReqexa_matricula.Text;
        edMatricula.Text := dmExames.qyExamesexa_matricula.Text;
      end;
    end;
  end;
end;

procedure TfrmRequisicao.cbPacienteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_F12 then
    CadNewPaciente;
end;

procedure TfrmRequisicao.cbPrioridadeChange(Sender: TObject);
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

procedure TfrmRequisicao.cbPrioridadeExit(Sender: TObject);
begin
  if vlStatus then
  begin
    dmExames.qyExamesexa_prioridade.Text := cbPrioridade.Value;
  end;
  if cbPrioridade.ItemIndex = 0 then
    cbOrigem.SetFocus
  else
    edDtEntrega.SetFocus;
end;

procedure TfrmRequisicao.cbTpExameEnter(Sender: TObject);
begin
  if dsRequisicao.DataSet.State in [dsEdit] then
    cbTpExame.ReadOnly := true
  else
    cbTpExame.ReadOnly := false;
end;

procedure TfrmRequisicao.cbTpExameExit(Sender: TObject);
begin
  if vlStatus then
    dmExames.qyExamesetp_id.Value := dmLookups.lkProcExamesTpetp_id.value;
end;

procedure TfrmRequisicao.ConverterCitologiaemCitologiaEspecial1Click(
  Sender: TObject);
begin
  if dmExames.qyExames.State in [dsEdit] then
  begin
    if dmExames.qyExamesetp_id.Value = 1 then
    begin
      dmExames.qyExamesetp_id.Value := 0;
      cbTpExame.Text := 'Citologia Especial';
      cbTpExame.PerformSearch;
    end
    else
      MessageDlg('O exame não é uma Citologia e não pode ser convertida!!', mtInformation, [mbok], 0);
  end
  else
    MessageDlg('A tabela não está em modo de alteração!', mtInformation, [mbok], 0);
end;

procedure TfrmRequisicao.GridResAntDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  if odd(dsResExames.DataSet.RecNo) then
    GridResAnt.Canvas.Brush.Color := clSilver
  else
    GridResAnt.Canvas.Brush.Color:= clWhite;
  GridResAnt.Canvas.FillRect(Rect);
  if gdSelected in State then
    with GridResAnt.Canvas do
    begin
      Brush.Color := clHighlight;
      FillRect(Rect);
      //Font.Style := [fsbold];
    end;
  GridResAnt.DefaultDrawDataCell(Rect, Column.Field, State);
end;

procedure TfrmRequisicao.dsRequisicaoStateChange(Sender: TObject);
begin
  if dsRequisicao.DataSet.State in [dsInsert, dsEdit] then
  Begin
    btInserir.Enabled := False;
    btAlterar.Enabled := False;
    btDeletar.Enabled := False;
    btGravar.Enabled := True;
    btCancelar.Enabled := True;
    btProcurar.Enabled := False;
    btImprimir.Enabled := False;
    btCobAnt.Enabled := False;
    btExames.Enabled := False;
    vlStatus := true;
    Libera;
  end
  else
  Begin
    btInserir.Enabled := True;
    btAlterar.Enabled := True;
    btDeletar.Enabled := True;
    btGravar.Enabled := False;
    btCancelar.Enabled := False;
    btProcurar.Enabled := True;
    btImprimir.Enabled := True;
    btCobAnt.Enabled := True;
    btExames.Enabled := True;
    vlStatus := false;
    Bloqueia;
  end;
end;

procedure TfrmRequisicao.edCrmExit(Sender: TObject);
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

procedure TfrmRequisicao.edDtEntregaExit(Sender: TObject);
begin
  if vlStatus then
    if edDtEntrega.ReadOnly = false then
      dmExames.qyExamesexa_dataprior.Value := edDtEntrega.Date;
end;

procedure TfrmRequisicao.edGuiaExit(Sender: TObject);
begin
  if vlStatus then
    dmExames.qyExamesexa_guia.Text := edGuia.Text;
  if edGuia.Text = '' then
  begin
    edGuia.Text := '0';
    dmExames.qyExamesexa_guia.text := edGuia.Text;
  end;
end;

procedure TfrmRequisicao.edMatriculaExit(Sender: TObject);
begin
  if vlStatus then
    dmExames.qyExamesexa_matricula.text := edMatricula.Text;
  if edMatricula.Text = '' then
  begin
    edMatricula.Text := '0';
    dmExames.qyExamesexa_matricula.text := edMatricula.Text;
  end;
end;

procedure TfrmRequisicao.edMesesMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  edMeses.Hint := edMeses.Text;
end;

procedure TfrmRequisicao.edRequisicaoExit(Sender: TObject);
begin
  inherited;
  edRequisicao.Color := clBtnFace;
end;

procedure TfrmRequisicao.CadNewMedico(vTipo: Integer);
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

procedure TfrmRequisicao.Similar(vNome: String; vQuantResult: Integer);
Var
vPath, vArqIni: String;
vRange, vCont: Integer;
vAjuste: Real;
vOpcao: Integer;
Begin
  //pega range do ini
  vOpcao := 75;
  if vgRangeIni = '0' then
    vOpcao := 90;
  if vgRangeIni = '1' then
    vOpcao := 80;
  if vgRangeIni = '2' then
    vOpcao := 75;
  if vgRangeIni = '3' then
    vOpcao := 70;
  if vgRangeIni = '4' then
    vOpcao := 60;
  if vgRangeIni = '5' then
    vOpcao := 50;
  vAjuste := (100 - vOpcao) / 100;
  vRange := Trunc(Length(vNome) * vAjuste) + 1;  //a escala padrão é de 25% arredondando para cima
  //utiliza levenshtein
  dmExames.QTemp.Close;
  dmExames.QTemp.SQL.Clear;
  dmExames.QTemp.SQL.Add('select pac_codigo as codigo, pac_nome as paciente, pac_dtnasc as nascimento from pacientes where levenshtein(pac_nome, ');
  dmExames.QTemp.SQL.Add(QuotedStr(vNome));
  dmExames.QTemp.SQL.Add(' ) <= ' + IntToStr(vRange));
  dmExames.QTemp.Open;
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
  begin
    frmCadPacRequisicao.ShowModal;
  end
  else
    cbPaciente.SetFocus;
end;

procedure TfrmRequisicao.actAltCadPacienteExecute(Sender: TObject);
begin
  if vlStatus then
  begin
    if dsRequisicao.DataSet.FieldByName('pac_codigo').IsNull then
      MessageDlg('É necessário selecionar o paciente!', mtWarning, [mbOk], 0)
    else
    begin
      vgCadPaciente := dsRequisicao.DataSet.FieldByName('pac_codigo').Text;
      frmCadPacientes.ShowModal;
      cbPaciente.Text := vgNomePaciente;
      cbPaciente.PerformSearch;
      cbPaciente.SetFocus;
    end;
  end;
end;

procedure TfrmRequisicao.actAlterarExecute(Sender: TObject);
begin
  //Testa se o exame é válido e edita
  FiltrarExames('e.exa_id', '=', edRequisicao.Text, '0', '1');
  FiltrarExamesColeta('exa_id', '=', edRequisicao.Text, '0');
  if not(dmExames.qyExamesexa_id.IsNull) then
  begin
    dsRequisicao.DataSet.Edit;
    edDtRequisicao.SetFocus;
  end
  else
    MessageDlg('Exame inválido!' + #13 + 'Primeiro você deve selecionar o exame!', mtWarning, [mbok], 0);
end;

procedure TfrmRequisicao.actCadMedicoAdExecute(Sender: TObject);
begin
  //Manda o parâmetro para cadastro do médico adicional
  CadNewMedico(1);
end;

procedure TfrmRequisicao.actCadMedicoExecute(Sender: TObject);
begin
  //Manda o parâmetro para cadastro do médico principal
  CadNewMedico(0);
end;

procedure TfrmRequisicao.actCadPacienteExecute(Sender: TObject);
begin
  CadNewPaciente;
end;

procedure TfrmRequisicao.actCancelarExecute(Sender: TObject);
begin
  dsRequisicao.DataSet.Cancel;
  LimpaForm;
end;

procedure TfrmRequisicao.actExcluirExecute(Sender: TObject);
Var
vIDExame: String;
begin
  Try
  vIDExame := edRequisicao.Text;
  if messagedlg('Deseja realmente apagar o registro?',mtConfirmation,[mbYes, mbNo],0) = mrYes then
  Begin
    //Apaga as tabelas dependentes
    //Médico adicional
    FiltrarExamesRespAd('e.exa_id', '=', vIDExame, '0', '1');
    if not(dmExames.qyExamesRespAdexa_id.IsNull) then
      dmExames.qyExamesRespAd.Delete;
    //Controle de envio de e-mail's
    FiltrarExamesEnvMail('exa_id', '=', vIDExame, '0', '1');
    if not(dmExames.qyExamesEnvMaileem_id.IsNull) then
      dmExames.qyExamesEnvMail.Delete;
    //Controle de cobrança
    FiltrarExamesCob('exa_id', '=', vIDExame, '0', '1');
    if not(dmFinanceiro.qyExamesCobexa_id.IsNull) then
      dmFinanceiro.qyExamesCob.Delete;
    //Grava log de usuário
    FiltrarExamesLogs('l.exa_id', '=', vIDExame, '0', '0');
    if not(dmExames.qyExamesLogsexa_id.IsNull) then
    begin
      dmExames.qyExamesLogs.Last;
      repeat
      begin
        if not(dmExames.qyExamesLogsexa_id.IsNull) then
          dmExames.qyExamesLogs.Delete;
        dmExames.qyExamesLogs.Refresh;
      end;
      until dmExames.qyExamesLogs.Bof = true;
    end;
    //Altera a etapa para 0
    dsRequisicao.DataSet.Edit;
    dmExames.qyExamesexa_etapa.Value := 0;
    dsRequisicao.DataSet.Post;
    Messagedlg('O exame foi apagado com sucesso!', mtInformation,[mbok],0);
    dsRequisicao.DataSet.Refresh;
    LimpaForm;
  end;
  except
    Begin
      Messagedlg('O registro não pode ser apagado!',mterror,[mbok],0);
      dsRequisicao.DataSet.Refresh;
    end;
  end;
end;

procedure TfrmRequisicao.actGravarExecute(Sender: TObject);
Var
vTeste: boolean;
vIDExame: String;
vLogErro: String;
vExamesColeta: TExamesColeta;
begin
  Try
  //Caso seja alteração testa a letra (C, ou H), caso seja inserção passa direto
  vTeste := false;
  if dsRequisicao.DataSet.State in [dsEdit] then
  begin
    if TestaTipo(edRequisicao.Text) = true then
      vTeste := true
    else
      vTeste := false;
  end
  else
    vTeste := true;
  //fim do teste
  vLogErro := 'Aguardando dados de gravação das tabelas...';
  dmExames.qyExamesetp_id.Value := dmLookups.lkProcExamesTpetp_id.Value;
  //Verifica prioridade
  dmExames.qyExamesexa_prioridade.Value := cbPrioridade.ItemIndex;
  if cbPrioridade.ItemIndex = 1 then
    dmExames.qyExamesexa_dataprior.Value := edDtEntrega.Date
  else
    dmExames.qyExamesexa_dataprior.IsNull;
  if dsRequisicao.DataSet.State in [dsInsert] then
  Begin
    dmExames.qyExamesexa_id.Text := GetCodigoExame(dmLookups.lkProcExamesTpetp_id.Text);
    dmExames.qyExamesexa_etapa.Value := 2;
  end;
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
          //Caso não tenha passado no teste de letra, não contiuna
          if vTeste = true then
          begin
            if dmExames.qyExamesexa_data.IsNull then
              dmExames.qyExamesexa_data.Value := now;
            if dmExames.qyExamesexa_data.Value > now then
            begin
              if MessageDlg('A data selecionada (' + dmExames.qyExamesexa_data.Text +
                            ') é menor que a data atual!' + #13 + #13 +
                            'Deseja que o sistema faça a correção?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                dmExames.qyExamesexa_data.Value := now;
            end;
            if edAnos.Text <> '' then
              dmExames.qyExamespac_idade.Text := edAnos.Text;
            if dmExames.qyExamesexa_matricula.IsNull then
              dmExames.qyExamesexa_matricula.Text := '0';
            if dmExames.qyExamesexa_guia.IsNull then
              dmExames.qyExamesexa_guia.Text := '0';
            //Grava requisição
            try
              dsRequisicao.DataSet.Post;
              vLogErro := 'Requisição - OK';
            except
              on E: Exception do
              begin
                MessageDlg('Erro ao gravar a Requisição!' + #13#10 +
                E.Message, mtError, [mbOk], 0);
              end;
            end;
            edRequisicao.Text := dmExames.qyExamesexa_id.Text;
            vIDExame := dmExames.qyExamesexa_id.Text;
            //Grava médico adicional -------------------------------------------
            if cbMedicoAd.Text <> '' then
            begin
              FiltrarExamesRespAd('e.exa_id', '=', vIDExame, '0', '10');
              if dmExames.qyExamesRespAdexa_id.IsNull then
              begin
                InsExamesRespAd(vIDExame, dmLookups.lkProcMedAdicionalmed_codigo.Text);
                vLogErro := vLogErro + #13 + 'Responsável adicional - OK';
              end
              else
              begin
                UpdExamesRespAd(vIDExame, dmLookups.lkProcMedAdicionalmed_codigo.Text);
                vLogErro := vLogErro + #13 + 'Responsável adicional - OK';
              end;
            end
            else
            begin
              //testa se já existia cadastrado e deleta
              FiltrarExamesRespAd('e.exa_id', '=', vIDExame, '0', '0');
              if not dmExames.qyExamesRespAdexa_id.IsNull then
                dmExames.qyExamesRespAd.Delete;
            end;
            //Controle de envio de e-mail's ------------------------------------
            FiltrarExamesEnvMail('exa_id', '=', vIDExame, '0', '1');
            if dmExames.qyExamesEnvMaileem_id.IsNull then
            begin
              InsExamesEnvMail(vIDExame);
              vLogErro := vLogErro + #13 + 'Exames enviados - OK';
            end;
            //verifica se ja foi gerado o controle de cobrança -----------------
            FiltrarExamesCob('exa_id', '=', vIDExame, '0', '1');
            if dmFinanceiro.qyExamesCobexa_id.IsNull then
            Begin
              //insere controle na tabela ExamesCob
              InsExamesCobNew(vIDExame);
              vLogErro := vLogErro + #13 + 'Cobrança de exames - OK';
            end;
            //Verifica data de coleta e diversos -------------------------------
            FiltrarExamesColeta('exa_id', '=', vIDExame, '0');
            vExamesColeta := TExamescoleta.Create;
            vExamesColeta.Exame := vIDExame;
            vExamesColeta.Data := cbDataColeta.Text;
            if edNomeMae.Text <> '' then
              vExamesColeta.NomeMae := edNomeMae.Text
            else
              vExamesColeta.NomeMae := '';
            if dmExames.qyExamesColetaexa_id.IsNull then
            begin
              InsExamesColeta;
              SetValuesExamesColeta(vExamesColeta);
              PostExamesColeta;
            end
            else
            begin
              EdtExamesColeta;
              SetValuesExamesColeta(vExamesColeta);
              PostExamesColeta;
            end;
            vExamesColeta.Free;
            //Caso o Convênio seja particular, abre tela para controle recebimento
            if dmExames.qyExamescov_codigo.Value = 0 then
            Begin
              vgClienteRec := FiltrarNomePacEx(vIDExame);
              frmValorPago.ShowModal;
            end;
            //Grava log de usuário etapa 2 -------------------------------------
            InsExamesLogs(vIDExame, '2', vgCodUsuarioLog);
            vLogErro := vLogErro + #13 + 'Logs - OK';
            //Verifica TISS x Requisição e TISS x Médico
            VerificaDadosTISS(vIDExame);
            if MessageDlg('Dados do exame gravados com sucesso!' + #13#13 + 'Exame gerado/alterado: ' + vIDExame
            + '.' + #13#13 + 'Deseja inserir os exames solicitados?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
            begin
              FiltrarExames('e.exa_id', '=', vIDExame, '0', '1');
              if dmExames.qyExamesetp_id.Value = 0 then //Citologia Especial
              begin
                vgIDExamesReq := vIDExame;
                frmExamesCito.ShowModal;
              end;
              if dmExames.qyExamesetp_id.Value = 1 then //Citologia
              begin
                vgIDExamesReq := vIDExame;
                frmExamesCito.ShowModal;
              end;
              if dmExames.qyExamesetp_id.Value = 2 then //Histologia
              begin
                frmExamesHist.ShowModal;
              end;
              if dmExames.qyExamesetp_id.Value = 3 then //Revisão
              begin
                frmExamesHist.ShowModal;
              end;
              if dmExames.qyExamesetp_id.Value = 4 then //Imunohistoquímica
              begin
                //MessageDlg('Função não disponível para este tipo de exame!', mtWarning, [mbok], 0);
                frmExamesHist.ShowModal;
              end;
              if dmExames.qyExamesetp_id.Value = 5 then //Citologia em meio líquido
              begin
                frmExamesCito.ShowModal;
              end;
              if dmExames.qyExamesetp_id.Value = 6 then //Captura hibrida
              begin
                MessageDlg('Função não disponível para este tipo de exame!', mtWarning, [mbok], 0);
              end;
            end;
            //Anexa arquivos
            if MessageDlg('Deseja anexar arquivos ao exame?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
            begin
              vgIDArq := dmExames.qyExamesexa_id.Text;
              frmGerenFiles.ShowModal;
            end;
            //Verifica sobre impressão e etiquetas
            ImprimeEtapaI;
          end
          else
          begin
            MessageDlg('Tipo de exame incompatível com o Número do exame!', mtError, [mbOk], 0);
            cbTpExame.SetFocus;
          end;
          except
          on E: Exception do
          begin
            MessageDlg('Erro ao gravar Alteração / Inserção!' + #13#10 +
             E.Message, mtError, [mbOk], 0);
            dsRequisicao.DataSet.Refresh;
            Close;
          end;
        end;
end;

procedure TfrmRequisicao.actInserirExecute(Sender: TObject);
begin
  dsRequisicao.DataSet.Insert;
  dmExames.qyExamesexa_prioridade.Value := 0;
  LimpaForm;
  dmLookups.lkProcExamesTp.First;
  if vgTpExameReq = 1 then
  begin
    dmLookups.lkProcExamesTp.Next;
  end;
  if vgTpExameReq = 2 then
  begin
    dmLookups.lkProcExamesTp.Next;
    dmLookups.lkProcExamesTp.Next;
    dmLookups.lkProcExamesTp.Next;
    dmLookups.lkProcExamesTp.Next;
  end;
  if vgTpExameReq = 4 then
  begin
    dmLookups.lkProcExamesTp.Next;
    dmLookups.lkProcExamesTp.Next;
    dmLookups.lkProcExamesTp.Next;
    dmLookups.lkProcExamesTp.Next;
    dmLookups.lkProcExamesTp.Next;
  end;
  dmExames.qyExamesetp_id.Value := dmLookups.lkProcExamesTpetp_id.Value;
  cbTpExame.Text := dmLookups.lkProcExamesTpetp_tipo.Text;
end;

procedure TfrmRequisicao.actProcurarExecute(Sender: TObject);
begin
  frmConsSelExame.ShowModal;
end;

procedure TfrmRequisicao.Bloqueia;
begin
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

procedure TfrmRequisicao.btCobAntClick(Sender: TObject);
begin
  if dmExames.qyExamescov_codigo.Value = 0 then
  Begin
    if edRequisicao.text <> '' then
    begin
      if not (dmExames.qyExamesexa_id.IsNull) then
      begin
        if dsExamesCob.DataSet.State in [dsBrowse] then
          dsExamesCob.DataSet.Edit;
        frmValorPago.ShowModal;
      end;
    end
    else
      MessageDlg('Número de exame inválido!', mtWarning, [mbOk], 0);
  end
  else
    MessageDlg('Controle apenas para exames sem Convênio!', mtWarning, [mbOk], 0);
end;

procedure TfrmRequisicao.btExamesAntClick(Sender: TObject);
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

procedure TfrmRequisicao.btExamesClick(Sender: TObject);
begin
  if not (dsRequisicao.DataSet.State in [dsInsert, dsEdit]) then
  Begin
    if dmExames.qyExamesetp_id.Value = 1 then //Citologia
    Begin
      frmExamesCito.ShowModal;
    end;
    if dmExames.qyExamesetp_id.Value = 2 then //Histologia
    Begin
      frmExamesHist.ShowModal;
    end;
  end
  else
    MessageDlg('Você deve gravar as alterações no exame!', mtInformation, [mbOk], 0);
end;

procedure TfrmRequisicao.btImprimirClick(Sender: TObject);
begin
  if edRequisicao.Text <> '' then
    ImprimeEtapaI
  else
    MessageDlg('Você deve selecionar um exame!', mtWarning, [mbOk], 0);
end;

procedure TfrmRequisicao.ImprimeEtapaI;
//Var
//vPath, vExtra, vExame: String;
begin
  if edRequisicao.Text <> '' then
  begin
    if MessageDlg('Deseja imprimir o relatório da requisição?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      Cursor := crHourGlass;
      if ((dmExames.qyExamesetp_id.Value = 0) or (dmExames.qyExamesetp_id.Value = 1) or (dmExames.qyExamesetp_id.Value = 5)) then //Citologia
      begin
        FiltrarExames('e.exa_id', '=', edRequisicao.Text, '0', '1');
        if dmExames.qyExamesetp_id.Value = 0 then
          frmRelCitoEspecial.ShowModal
        else
          frmRelCitoEtapaI.ShowModal;
      end;

      if ((dmExames.qyExamesetp_id.Value = 2) or (dmExames.qyExamesetp_id.Value = 3)  or (dmExames.qyExamesetp_id.Value = 4)) then
      begin
        FiltrarExames('exa_id', '=', edRequisicao.Text, '0', '1');
        //Verifica se existe Macro gravada
        FiltrarExamesHistMacro('exa_id', '=', edRequisicao.Text, '0', '1');
        if not(dmExames.qyExamesHistMacroexa_id.IsNull) then
        begin
          if MessageDlg('Existe macroscopia gravada deseja imprimir Etapa I + Macro?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
            frmRelHistoEtapaIMac.ShowModal
          else
            frmRelHistoEtapaI.ShowModal;
        end
        else
          frmRelHistoEtapaI.ShowModal;
      end;
      if (dmExames.qyExamesetp_id.Value = 6) then
      begin
        MessageDlg('Em desenvolvimento!', mtWarning, [mbok], 0);
      end;
      LimpaForm;
      Cursor := crDefault;
    end;
    LimpaForm;
  end
  else
    MessageDlg('Não foi selecionado nenhum exame para a impressão!', mtwarning, [mbOk], 0);
end;

procedure TfrmRequisicao.LimpaForm;
Begin
  if not(dsRequisicao.DataSet.State in [dsInsert]) then
  begin
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
    cbDataColeta.Clear;
    edNomeMae.Clear;
    FiltrarProcExames('e.exa_id', '=', '0', '0', '0', '1');
    if dmExames.qyExames.State in [dsInsert] then
      edDtRequisicao.SetFocus
    else
      btFechar.SetFocus;
  end;
end;

procedure TfrmRequisicao.meObservacoesExit(Sender: TObject);
begin
  if vlStatus then
    dmExames.qyExamesexa_obs.Text := meObservacoes.Text;
end;

procedure TfrmRequisicao.LimpaFiltro;
Begin
  //Limpa a tabela lkProcPacientes
  FiltrarDoencasPacientes('e.pac_codigo', '=', '0', '0', '1');
  //Limpa a tabela lkProcExames
  FiltrarProcExames('e.pac_codigo', '=', '0', '0', '0', '1');
end;

procedure TfrmRequisicao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if dsRequisicao.DataSet.State in [dsInsert, dsEdit] then
    dsRequisicao.DataSet.Cancel;
end;

procedure TfrmRequisicao.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  inherited;
  if dsRequisicao.DataSet.State in [dsInsert, dsEdit] then
    if Messagedlg('Existem alterações pendentes,' + #13 + 'deseja salvar?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      Canclose := False
    else
      Canclose := True;
end;

procedure TfrmRequisicao.FormActivate(Sender: TObject);
begin
  inherited;
  dsExamesAnt.DataSet.Active := true;
  dsExamesCob.DataSet.Active := true;
  dsExamesAnt.DataSet.Active := true;
  dsLog.DataSet.Active := true;
  dsRequisicao.DataSet.Active := true;
  dsMedAdd.DataSet.Active := true;
  vlStatus := false;
  //Criado variavel para não limpar o formulário ao imprimir o relatório da Citologia
  if vgLimpaRequisicao = 1 then
    LimpaForm;
end;

end.
