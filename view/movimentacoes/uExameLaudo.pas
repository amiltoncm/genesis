unit uExameLaudo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Menus, Vcl.ExtCtrls, Vcl.ActnList, Data.DB, Vcl.Samples.Spin,
  Vcl.DBGrids, Vcl.ComCtrls, wwriched, wwrichedspellxp, Wwdbspin, Vcl.Grids,
  Wwdbigrd, Wwdbgrid, wwdblook, wwdbdatetimepicker, wwdbedit, Wwdotdot,
  Wwdbcomb, Vcl.Mask, Vcl.DBCtrls, uTmpFormNormal;

type
  TfrmExameLaudo = class(TForm)
    BalloonHint2: TBalloonHint;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label6: TLabel;
    Label9: TLabel;
    Label7: TLabel;
    Label10: TLabel;
    Label13: TLabel;
    lbDtEntrega: TLabel;
    Label16: TLabel;
    sbLaudo: TSpeedButton;
    spMedAdic: TSpeedButton;
    spBuscarNovo: TSpeedButton;
    sbCorretor: TSpeedButton;
    sbDiagnostico: TSpeedButton;
    spEditaMatGuia: TSpeedButton;
    sbDataNasc: TSpeedButton;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    dbExame: TDBEdit;
    dbMatricula: TDBEdit;
    dbIdade: TDBEdit;
    dbMeses: TDBEdit;
    dbGuia: TDBEdit;
    cbPrioridade: TwwDBComboBox;
    edDtEntrega: TwwDBDateTimePicker;
    btObs: TBitBtn;
    cbResponsavel: TwwDBLookupCombo;
    dbTitulo: TDBEdit;
    dbConselho: TDBEdit;
    dbNumConselho: TDBEdit;
    btAlterar: TBitBtn;
    btRespAd: TBitBtn;
    Panel6: TPanel;
    dbUfCons: TDBEdit;
    dbData: TDBEdit;
    dbTpExame: TDBEdit;
    dbConvenio: TDBEdit;
    dbPaciente: TDBEdit;
    dbDtNasc: TDBEdit;
    dbMedico: TDBEdit;
    dbOrigem: TDBEdit;
    dbDestino: TDBEdit;
    Panel5: TPanel;
    Label17: TLabel;
    sbInsereClin: TSpeedButton;
    sbEditaClin: TSpeedButton;
    sbDeletaClin: TSpeedButton;
    sbGravaClin: TSpeedButton;
    sbCancelaClin: TSpeedButton;
    dbGridDadosClin: TwwDBGrid;
    cbDadosClin: TwwDBLookupCombo;
    dbQuantExame: TwwDBSpinEdit;
    Panel4: TPanel;
    Image: TImage;
    Panel2: TPanel;
    lbLaudo: TLabel;
    Label19: TLabel;
    meDiagnostico: TwwDBRichEditMSWord;
    meLaudo: TwwDBRichEditMSWord;
    painelModelo: TPanel;
    Label14: TLabel;
    cbModelo: TwwDBLookupCombo;
    btInsereModelo: TBitBtn;
    painelDoenca: TPanel;
    Label15: TLabel;
    btInsereDoenca: TBitBtn;
    cbDoenca: TwwDBLookupCombo;
    dbCodDoenca: TDBEdit;
    DBGrid1: TDBGrid;
    painelProcedimento: TPanel;
    Label26: TLabel;
    Label18: TLabel;
    Label25: TLabel;
    cbProcedimento: TwwDBLookupCombo;
    btInserir: TBitBtn;
    wwDBGrid2: TwwDBGrid;
    seQuantidade: TSpinEdit;
    Panel3: TPanel;
    btModelo: TBitBtn;
    btDoenca: TBitBtn;
    btGravar: TBitBtn;
    btCancelar: TBitBtn;
    btProcedimento: TBitBtn;
    btPadrao: TBitBtn;
    btMacro: TBitBtn;
    btImprimir: TBitBtn;
    btNotas: TBitBtn;
    btFecharVis: TBitBtn;
    dsExame: TDataSource;
    dsLaudo: TDataSource;
    dsLogUsuario: TDataSource;
    dsTissPend: TDataSource;
    dsModelo: TDataSource;
    dsExamesTipo: TDataSource;
    dsDoenca: TDataSource;
    dsExameDoencas: TDataSource;
    dsExamesSolicitados: TDataSource;
    dsTpExame: TDataSource;
    ActionList1: TActionList;
    actGravar: TAction;
    actBuscarNovo: TAction;
    TimerEtapa: TTimer;
    popProcedimento: TPopupMenu;
    Deletar3: TMenuItem;
    popDoenca: TPopupMenu;
    Deletar2: TMenuItem;
    popExamesSolic: TPopupMenu;
    Deletar1: TMenuItem;
    dsProcedimentos: TDataSource;
    pnStatus: TPanel;
    pnEtapa: TPanel;
    SpeedButton1: TSpeedButton;
    btFrases: TBitBtn;
    procedure VerificaEtapa(vEtapa: String);
    procedure NotEdit;
    procedure BuscarNovo;
    procedure AlteraEtapa;
    procedure SalvaLaudo;
    procedure LoadExame;
    procedure CancelaDataSets;
    procedure Paineis(vPainel: String);
    procedure ImprimeLaudo;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btProcedimentoClick(Sender: TObject);
    procedure btDoencaClick(Sender: TObject);
    procedure btModeloClick(Sender: TObject);
    procedure btPadraoClick(Sender: TObject);
    procedure btMacroClick(Sender: TObject);
    procedure btNotasClick(Sender: TObject);
    procedure btImprimirClick(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure btObsClick(Sender: TObject);
    procedure btAlterarClick(Sender: TObject);
    procedure dbMesesMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ImageDblClick(Sender: TObject);
    procedure btInsereModeloClick(Sender: TObject);
    procedure btInsereDoencaClick(Sender: TObject);
    procedure cbResponsavelExit(Sender: TObject);
    procedure cbResponsavelEnter(Sender: TObject);
    procedure sbLaudoClick(Sender: TObject);
    procedure btInserirClick(Sender: TObject);
    procedure spMedAdicClick(Sender: TObject);
    procedure meLaudoKeyPress(Sender: TObject; var Key: Char);
    procedure sbInsereClinClick(Sender: TObject);
    procedure sbEditaClinClick(Sender: TObject);
    procedure sbDeletaClinClick(Sender: TObject);
    procedure sbGravaClinClick(Sender: TObject);
    procedure sbCancelaClinClick(Sender: TObject);
    procedure cbDadosClinExit(Sender: TObject);
    procedure dsExamesSolicitadosDataChange(Sender: TObject; Field: TField);
    procedure meLaudoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dsLaudoStateChange(Sender: TObject);
    procedure sbCorretorClick(Sender: TObject);
    procedure sbDiagnosticoClick(Sender: TObject);
    procedure actBuscarNovoExecute(Sender: TObject);
    procedure spEditaMatGuiaClick(Sender: TObject);
    procedure dsProcedimentosStateChange(Sender: TObject);
    procedure dsExamesSolicitadosStateChange(Sender: TObject);
    procedure sbDataNascClick(Sender: TObject);
    procedure btRespAdClick(Sender: TObject);
    procedure edDtRequisicaoExit(Sender: TObject);
    procedure cbTpExameExit(Sender: TObject);
    procedure cbConvenioExit(Sender: TObject);
    procedure cbPacienteExit(Sender: TObject);
    procedure edDtNascExit(Sender: TObject);
    procedure cbMedicoExit(Sender: TObject);
    procedure cbOrigemExit(Sender: TObject);
    procedure cbDestinoExit(Sender: TObject);
    procedure cbPrioridadeExit(Sender: TObject);
    procedure edDtEntregaExit(Sender: TObject);
    procedure dsExameStateChange(Sender: TObject);
    procedure TimerEtapaTimer(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btFecharVisClick(Sender: TObject);
    procedure spBuscarNovoClick(Sender: TObject);
    procedure Deletar3Click(Sender: TObject);
    procedure Deletar2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure btFrasesClick(Sender: TObject);

  private
    ComponentePro: TComponent;
    procedure ProCode(Sender: TObject);

  public
    { Public declarations }
  end;

var
  frmExameLaudo: TfrmExameLaudo;

implementation

{$R *.dfm}

uses dataExames, dataFinanceiro, dataLookups, dataCid10, dataConsultas,
  dataGestao, uPendencias, uVarGlobal, uSelCITTable, uDaoExamesLogs, uDaoExames,
  UFuncoesTISS, uDaoExamesFinal, uDaoExamesCob, uDaoExamesLaudo,
  uDaoExamesDoencas, uDaoExamesProced, uDaoImagens, uFuncoesSistema,
  uFuncRelExameLaudo, uSelImprimeCit, uDaoExamesCito, uFuncoesDB,
  uDaoExamesCitoNotas, uPreencheCito, uNotasCito, uObsExame, uAltExame,
  uVisImagem, uCadMedAd, uEditMatGuia, uEditaDataNasc, uRespAdd, uSelExameLaudo,
  uRelLaudoFinal, uMacroCito, dataFiles, uDaoImagensZEOS, uDaoExamesFrases,
  uFraseCito;

procedure TfrmExameLaudo.ProCode(Sender: TObject);
begin
  if Assigned(ComponentePro) then
  begin
    if TEdit(ComponentePro).ReadOnly then
      TEdit(ComponentePro).Color := clBtnFace // cor ao sair
    else
      TEdit(ComponentePro).Color := clWindow; // cor ao sair
  end;
  if (ActiveControl is TCustomEdit) or
     (ActiveControl is TComboBox) or
     (ActiveControl is TMemo) then
  begin
    TEdit(ActiveControl).Color := clSkyBlue;  // cor ao focar
    ComponentePro := ActiveControl;
  end;
end;

procedure TfrmExameLaudo.VerificaEtapa(vEtapa: String);
begin
  if vEtapa = '02' then
  begin
    pnEtapa.Caption := 'Requisição';
    pnEtapa.Color := clRed;
    pnEtapa.Font.Color := clWhite;
  end
  else
    if vEtapa = '03' then
    begin
      pnEtapa.Caption := 'Captura';
      pnEtapa.Color := clRed;
      pnEtapa.Font.Color := clWhite;
    end
    else
      if vEtapa = '04' then
      begin
        pnEtapa.Caption := 'Preenchimento';
        pnEtapa.Color := clTeal;
        pnEtapa.Font.Color := clWhite;
      end
      else
        if vEtapa = '05' then
        begin
          pnEtapa.Caption := 'Aguardando imp.';
          pnEtapa.Color := clYellow;
          pnEtapa.Font.Color := clBlack;
        end
        else
          if vEtapa = '06' then
          begin
            pnEtapa.Caption := 'Impresso';
            pnEtapa.Color := clGreen;
            pnEtapa.Font.Color := clWhite;
            TimerEtapa.Enabled := false;
          end
          else
            if vEtapa = '07' then
            begin
              pnEtapa.Caption := 'Env. e-mail';
              pnEtapa.Color := clGreen;
              pnEtapa.Font.Color := clWhite;
              TimerEtapa.Enabled := false;
            end
            else
            begin
              pnEtapa.Caption := 'Indefinido';
              pnEtapa.Color := clRed;
            end;
  pnEtapa.Repaint;
end;

//Verifica se o exame está em modo de edição e cancela!
procedure TfrmExameLaudo.NotEdit;
begin
  if dsExame.DataSet.State in [dsInsert, dsEdit] then
    dsExame.DataSet.Cancel;
end;

procedure TfrmExameLaudo.btAlterarClick(Sender: TObject);
begin
  vgIDExameSel := dmExames.qyExamesexa_id.Text;
  frmAltExame.ShowModal;
end;

procedure TfrmExameLaudo.btCancelarClick(Sender: TObject);
begin
  Paineis('0');
  CancelaDataSets;
  if MessageDlg('Alterações canceladas!' + #13 + 'Deseja sair do Laudo?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    Close;
end;

procedure TfrmExameLaudo.btDoencaClick(Sender: TObject);
begin
  Paineis('doenca');
end;

procedure TfrmExameLaudo.btFecharVisClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmExameLaudo.btFrasesClick(Sender: TObject);
begin
  vgExameFrase := dbExame.Text;
  FiltrarExamesFrases('f.exa_id', '=', dbExame.Text, '0');
  frmFraseCito.ShowModal;
end;

procedure TfrmExameLaudo.btGravarClick(Sender: TObject);
begin
  Paineis('0');
  if ((dmExames.qyExamesLaudoexa_laudo.IsNull) or (dmExames.qyExamesLaudoexa_laudo.Text = '')) then
  begin
    if MessageDlg('O laudo não foi preenchido!' + #13 + 'Deseja finalizar assim mesmo?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      SalvaLaudo;
  end
  else
    SalvaLaudo;
  btFecharVis.SetFocus;
end;

procedure TfrmExameLaudo.btImprimirClick(Sender: TObject);
begin
  Paineis('0');
  SalvaLaudo;
end;

procedure TfrmExameLaudo.btInsereDoencaClick(Sender: TObject);
begin
  if cbDoenca.Text <> '' then
  Begin
    InsExamesDoencas(dbExame.Text, dbCodDoenca.Text, '0');
    painelDoenca.Visible := false;
  end
  else
    MessageDlg('você deve selecionar a doença!', mtWarning, [mbok],0);
end;

procedure TfrmExameLaudo.btInsereModeloClick(Sender: TObject);
begin
  if MessageDlg('Deseja realmente inserir o modelo?' + #13 + 'Caso você opte por inserir o modelo, o laudo será apagado!',
                mtConfirmation, [mbYes, mbno], 0) = mrYes then
  Begin
    if cbModelo.Text <> '' then
    Begin
      //Insere laudo
      if not(dmExames.qyExamesLaudo.State in [dsInsert, dsEdit]) then
      begin
        //testa se já existe registro na tabela
        if dmExames.qyExamesLaudoexa_laudo.IsNull then
          dmExames.qyExamesLaudo.Insert
        else
          dmExames.qyExamesLaudo.Edit;
      end;
      meLaudo.Clear;
      meDiagnostico.Clear;
      dmExames.qyExamesLaudoexa_laudo.Value := dmLookups.lkProcLaudosmodmod_modelo.Value;
      dmExames.qyExamesLaudoexa_diagnostico.Value := dmLookups.lkProcLaudosmodmod_diagnostico.Value;
      dmExames.qyExamesLaudo.Post;
      Paineis('0');
      meLaudo.SetFocus;
    end
    else
      MessageDlg('você deve selecionar o modelo!', mtWarning, [mbok],0);
  end;
end;

procedure TfrmExameLaudo.btInserirClick(Sender: TObject);
Var
vCodConvenio: integer;
vExame: String;
vCodTuss: integer;
vQuant: integer;
vVlrDefaultTuss: real;
begin
  if cbProcedimento.Text <> '' then
  begin
    //testa se não foi gerado cobrança
    if TestaExameCob(dbExame.Text) = 0 then
    begin
      vCodConvenio := dmExames.qyExamescov_codigo.Value;
      vExame := dbExame.Text;
      vCodTuss := dmLookups.lkProcProcedimentosprc_tuss.Value;
      vQuant := StrToInt(seQuantidade.Text);
      vVlrDefaultTuss := dmLookups.lkProcProcedimentosprc_vlrtotal.Value;
      InsExamesProced(vExame, vCodTuss, vQuant, vCodConvenio, vVlrDefaultTuss);
      dsProcedimentos.DataSet.Refresh;
      if MessageDlg('Procedimento inserido com sucesso!' +#13 + 'Deseja inserir outro?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
        seQuantidade.Value := 1;
        cbProcedimento.Clear;
        cbProcedimento.SetFocus;
      end
      else
        painelProcedimento.Visible := false;
    end
    else
      MessageDlg('Este exame já foi gerado cobrança e não pode ser alterado!', mtWarning, [mbok], 0);
  end
  else
    MessageDlg('Primeiro você deve selecionar um procedimento!', mtWarning, [mbok], 0);
end;

procedure TfrmExameLaudo.btMacroClick(Sender: TObject);
begin
  Paineis('0');
  frmMacroCito.Caption := 'Macroscopia (Citologia), Exame: ' + dmExames.qyExamesexa_id.Text;
  frmMacroCito.ShowModal;
end;

procedure TfrmExameLaudo.btModeloClick(Sender: TObject);
begin
  Paineis('modelo');
end;

procedure TfrmExameLaudo.btNotasClick(Sender: TObject);
begin
  if not(dsLaudo.DataSet.State in [dsInsert, dsEdit]) then
  Begin
    Paineis('0');
    FiltrarExamesCitoNotas('exa_id', '=', dbExame.Text, '0', '0');
    if dmExames.qyExamesCitoNotasecn_id.IsNull then
      InsExamesCitoNotas(dbExame.Text)
    else
      UpdExamesCitoNotas(dbExame.Text);
    frmNotasCito.lbNumExame.Caption := dbExame.Text;
    frmNotasCito.ShowModal;
  end
  else
    MessageDlg('Você deve gravar os dados alterados no laudo antes de prosseguir!', mtWarning, [mbok], 0);
end;

procedure TfrmExameLaudo.btObsClick(Sender: TObject);
begin
  frmObsExame.ShowModal;
end;

procedure TfrmExameLaudo.btPadraoClick(Sender: TObject);
begin
  Paineis('0');
  if (dsLaudo.DataSet.State in [dsInsert, dsEdit]) then
    dsLaudo.DataSet.Cancel;
  frmPreencheCito.Caption := 'Preenche Citologia - Exame: ' + dbExame.Text;
  frmPreencheCito.ShowModal;
end;

procedure TfrmExameLaudo.btProcedimentoClick(Sender: TObject);
begin
 Paineis('procedimento');
end;

procedure TfrmExameLaudo.btRespAdClick(Sender: TObject);
begin
  vgNumeExameRespAd := dbExame.Text;
  frmRespAdd.ShowModal;
end;

procedure TfrmExameLaudo.BuscarNovo;
begin
  CancelaDataSets;
  //Envia tabela exames para o registro atual e abre a tela de busca
  vgIDExameBuscaTb := dmExames.qyExamesexa_id.Text;
  //Envia tipo de busca / etapa 2 = Captura
  vgIDTpBusca := '4';
  dmConsultas.tbExamesCito.Open;
  dmConsultas.tbExamesCito.Refresh;
  dmConsultas.tbExamesCito.Locate('exa_id', vgIDExameBuscaTb, [LOPARTIALKEY, LOCASEINSENSITIVE]);
  frmSelCITTable.ShowModal;
  //Carrega exame
  LoadExame;
end;

procedure TfrmExameLaudo.actBuscarNovoExecute(Sender: TObject);
begin
  BuscarNovo;
end;

procedure TfrmExameLaudo.AlteraEtapa;
begin
  //log de usuário
  dsLogUsuario.DataSet.Insert;
  InsExamesLogs(vgIDExameLaudo, '4', vgCodUsuarioLog);
  //Altera a etapa do exame
  SetEtapaExame(5);
  //verifica pendências TISS
  if VerificaDadosTISS(vgIDExameLaudo) = true then
  begin
    if MessageDlg('Existe(m) pendência(s) do TISS neste exame!' + #13 + 'gostaria de visualizar?', mtWarning, [mbYes, mbNo], 0 ) = mrYes then
      frmPendencias.ShowModal;
  end;
end;

procedure TfrmExameLaudo.SalvaLaudo;
Var
vOK: boolean;
vCont: Integer;
vTexto, vTextoDiag: String;
begin
  vOk := true;
  //faz verificações de dados necessários preenchidos
      try
      //Atualiza data de impressão
      FiltrarExamesFinal('exa_id', '=', dbExame.Text, '0', '0');
      if dmExames.qyExamesFinalexa_id.IsNull then
        InsExamesFinal(dbExame.Text);
      if meLaudo.Lines.Text = '' then
        dmExames.qyExamesLaudoexa_laudo.Clear;
      if dmExames.qyExamesres_codigo.IsNull then
        vOk := false;
      if dsExame.DataSet.State in [dsEdit, dsInsert] then
        dsExame.DataSet.Post;
      if dsLaudo.DataSet.State in [dsEdit, dsInsert] then
        dsLaudo.DataSet.Post;
      //Consulta totalização de valores do exame
      dmConsultas.QTemp.Close;
      dmConsultas.QTemp.SQL.Clear;
      dmConsultas.QTemp.SQL.Add('select sum(exp_total) from examesproced where exa_id = ');
      dmConsultas.QTemp.SQL.Add(QuotedStr(dbExame.Text));
      dmConsultas.QTemp.Open;
      if not dmConsultas.QTemp.Fields[0].IsNull then
      begin
        FiltrarExamesCob('exa_id', '=', dbExame.Text, '0', '0');
        if not dmFinanceiro.qyExamesCobexa_id.IsNull then
        begin
          dmFinanceiro.qyExamesCob.Edit;
          dmFinanceiro.qyExamesCobeco_valor.Value := dmConsultas.QTemp.Fields[0].Value;
          dmFinanceiro.qyExamesCob.Post;
        end;
      end
      else
        vOk := false;
      FiltrarExamesCito('c.exa_id', '=', dbExame.Text, '0', '100');
      if dmExames.qyExamesCitoexa_id.IsNull then
        vOk := false;
      if vOk = true then
      begin
        AlteraEtapa;
        //Verifica responsável padrão = 1
        if dmExames.qyExamesres_codigo.Value <> 1 then
          MessageDlg('O responsável selecionado é ' + dmExames.qyExamesres_nome.Text, mtInformation, [mbok], 0);
        if MessageDlg('Laudo concluído com sucesso, ' + #13 + 'Deseja imprimí-lo?' ,
         mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        begin
          ImprimeLaudo;
        end;
      end
      else
      begin
        if MessageDlg('Alterações gravadas, porém existe(m) pendência(s) neste exame!' + #13 +
         'gostaria de visualizar?', mtConfirmation, [mbYes, mbNo], 0 ) = mrYes then
        begin
          vCont := 0;
          frmPendencias.rePendencias.Clear;
          if dmExames.qyExamesres_codigo.IsNull then
          begin
            vCont := vCont + 1;
            frmPendencias.rePendencias.Lines.Add('Pendência n.º ' + IntToStr(vCont));
            frmPendencias.rePendencias.Lines.Add('Você deve selecionar o responsável pelo Laudo!');
            frmPendencias.rePendencias.Lines.Add('--------------------------------------------------------------------------');
          end;
          if dmConsultas.QTemp.Fields[0].IsNull then
          begin
            vCont := vCont + 1;
            frmPendencias.rePendencias.Lines.Add('Pendência n.º ' + IntToStr(vCont));
            frmPendencias.rePendencias.Lines.Add('Nenhum procedimento foi adicionado ao exame!');
            frmPendencias.rePendencias.Lines.Add('--------------------------------------------------------------------------');
          end;
          if dmExames.qyExamesCitoexa_id.IsNull then
          begin
            vCont := vCont + 1;
            frmPendencias.rePendencias.Lines.Add('Pendência n.º ' + IntToStr(vCont));
            frmPendencias.rePendencias.Lines.Add('Nenhum exame solicitado foi adicionado!');
            frmPendencias.rePendencias.Lines.Add('--------------------------------------------------------------------------');
          end;
          frmPendencias.ShowModal;
          dsLaudo.DataSet.Edit;
        end
        else
        begin
          MessageDlg('A etapa não será alterada!', mtWarning, [mbOk], 0);
          //dsLaudo.DataSet.Edit;
        end;
      end;
      //Close;
      Except
        on E: Exception do
        Begin
          MessageDlg('Erro ao gravar Alteração / Inserção!' + #13#10 +
           E.Message,mtError,[mbOk],0);
          dsLaudo.DataSet.Refresh;
        end;
      end;
end;

procedure TfrmExameLaudo.sbCancelaClinClick(Sender: TObject);
begin
  dsExamesSolicitados.DataSet.Cancel;
end;

procedure TfrmExameLaudo.sbCorretorClick(Sender: TObject);
begin
  try
    if MessageDlg('Este processo é um pouco lento, deseja continuar?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      if meLaudo.Focused = true then
        meLaudo.MSWordSpellChecker;
      if meDiagnostico.Focused = true then
        meDiagnostico.MSWordSpellChecker;
    end;
  except
    MessageDlg('Não foi possível carregar o corretor!', mtError, [mbok], 0);
  end;
end;

procedure TfrmExameLaudo.sbDataNascClick(Sender: TObject);
begin
  frmEditaDataNasc.ShowModal;
end;

procedure TfrmExameLaudo.sbDeletaClinClick(Sender: TObject);
begin
  if MessageDlg('Deseja realmente deletar o registro?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    dsExamesSolicitados.DataSet.Delete;
end;

procedure TfrmExameLaudo.sbDiagnosticoClick(Sender: TObject);
begin
  meDiagnostico.EditorCaption := 'Diagnóstico do Laudo: ' + dbExame.Text;
  meDiagnostico.Execute;
end;

procedure TfrmExameLaudo.sbEditaClinClick(Sender: TObject);
begin
  dsExamesSolicitados.DataSet.Edit;
  dbGridDadosClin.SetFocus;
end;

procedure TfrmExameLaudo.sbGravaClinClick(Sender: TObject);
begin
  try
    dsExamesSolicitados.DataSet.Post;
    dsExamesSolicitados.DataSet.Refresh;
  except
    MessageDlg('Não foi possível gravar o Exame Solicitado!', mtWarning, [mbok], 0);
  end;
end;

procedure TfrmExameLaudo.sbInsereClinClick(Sender: TObject);
begin
  dsExamesSolicitados.DataSet.Insert;
  dmExames.qyExamesCitoexa_id.Text := dbExame.Text;
  dmExames.qyExamesCitoeto_id.Value := dmLookups.lkProcExamesTipoCitoeto_id.Value;
  dmExames.qyExamesCitoeto_local.Text := dmLookups.lkProcExamesTipoCitoeto_local.Text;
  dmExames.qyExamesCitoeto_descricao.Text := dmLookups.lkProcExamesTipoCitoeto_descricao.Text;
  dmExames.qyExamesCitoeci_quant.Value := 1;
  dbGridDadosClin.SetFocus;
end;

procedure TfrmExameLaudo.sbLaudoClick(Sender: TObject);
begin
  meLaudo.EditorCaption := 'Laudo: ' + dbExame.Text;
  meLaudo.Execute;
end;

procedure TfrmExameLaudo.spBuscarNovoClick(Sender: TObject);
begin
  BuscarNovo;
end;

procedure TfrmExameLaudo.spEditaMatGuiaClick(Sender: TObject);
begin
  frmEditMatGuia.ShowModal;
end;

procedure TfrmExameLaudo.SpeedButton1Click(Sender: TObject);
begin
  if MessageDlg('Deseja realmente excluir a doença do exame?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    DeleteExamesDoencas;
end;

procedure TfrmExameLaudo.spMedAdicClick(Sender: TObject);
begin
  //envia ID do exame para uCadMeAd
  if dbExame.Text <> '' then
  begin
    vgExameMedAd := dbExame.Text;
    frmCadMedAd.ShowModal;
  end;
end;

procedure TfrmExameLaudo.TimerEtapaTimer(Sender: TObject);
begin
  //Verifica etapa
  dsExame.DataSet.Refresh;
  VerificaEtapa(dmExames.qyExamesexa_etapa.Text);
end;

procedure TfrmExameLaudo.LoadExame;
Var
vFiguraBMP, vArqTempJPG, vArqTempBMP: String;
vFiguraJPG, vOrigem, vDestino: String;
begin
  TimerEtapa.Enabled := False;
  //inicia painéis
  painelModelo.Visible := false;
  painelDoenca.Visible := false;
  painelProcedimento.Visible := false;
  //testa se a figura existe e limpa panel com imagem local
  if FileExists(vgImgND) then
    Image.Picture.LoadFromFile(vgImgND);
  //limpa variável com o path para impressão de imagem
  vgImagemExame := '';
  //filtra tabela de laudo
  FiltrarExamesLaudo('exa_id', '=', vgIDExameLaudo, '0', '1');
  if dmExames.qyExamesLaudoexa_id.IsNull then
  Begin
    dsLaudo.DataSet.Insert;
    dmExames.qyExamesLaudoexa_id.Text := vgIDExameLaudo;
  end
  else
    dsLaudo.DataSet.Edit;
  if not dmExames.qyExamesexa_obs.IsNull then
    btObs.Enabled := true
  else
    btObs.Enabled := false;
  //Filtra tabela de exames solicitados
  FiltrarExamesCito('c.exa_id', '=', vgIDExameLaudo, '0', '100');
  //Filtra tabela de exameDoencas
  FiltrarExamesDoencas('exa_id', '=', vgIDExameLaudo, '0', '0');
  //Filtra exames procedimentos
  FiltrarExamesProced('exa_id', '=', vgIDExameLaudo, '0', '0');
  vFiguraJPG := vgDirCaptura + '\' + vgIDExameLaudo + '.jpg';
  vFiguraBMP := vgDirCaptura + '\' + vgIDExameLaudo + '.bmp';
  //Filtra tabela de imagens
  FiltrarImagensZeos('img_exame', '=', vgIDExameLaudo, '0', '1');
  if not dmFiles.qyImagensimg_id.IsNull then
  Begin
    //caso a tabela possua a imagem, salva em pasta temporária e copia para a pasta correta
    vArqTempJPG := vgDirTemp + '\' + vgIDExameLaudo + '.jpg';
    dmFiles.qyImagensimg_imagem.SaveToFile(vArqTempJPG);
    ConvertJPG_BMP(vArqTempJPG);
    vArqTempBMP := vgDirTemp + '\' + vgIDExameLaudo + '.bmp';
    vOrigem := vArqTempBMP;
    vDestino := vFiguraBMP;
    //o parametro false na função copyfile sobreescreve o arquivo caso exista
    if not CopyFile(PChar(vOrigem), PChar(vDestino), false) then
      ShowMessage('Erro ao copiar ' + vOrigem + ' para ' + vDestino)
    else
    Begin
      Image.Picture.LoadFromFile(vFiguraBMP);
      //envia path da figura para uVarGlobal
      vgImagemExame := vDestino;
    end;
  end;
  if dmExames.qyExamesres_codigo.IsNull then
  begin
    if not(dmExames.qyExames.State in [dsEdit]) then
      dmExames.qyExames.Edit;
    //Caso não tenha responsável, joga Dra. Beatriz
    dmExames.qyExamesres_codigo.Value := 1;
    dmExames.qyExames.Post;
    cbResponsavel.Text := dmExames.qyExamesres_nome.Text;
    cbResponsavel.PerformSearch;
    meLaudo.SetFocus;
  end
  else
  begin
    cbResponsavel.Text := dmExames.qyExamesres_nome.Text;
    meLaudo.SetFocus;
  end;
end;

procedure TfrmExameLaudo.meLaudoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key =  VK_F12 then
    if dsLaudo.DataSet.State in [dsEdit, dsInsert] then
      dsLaudo.DataSet.Post;
end;

procedure TfrmExameLaudo.meLaudoKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #9 then
  begin
    key := #0;
    btGravar.SetFocus;
  end;
end;

procedure TfrmExameLaudo.CancelaDataSets;
begin
  if dsTpExame.DataSet.State in [dsEdit, dsInsert] then
    dsTpExame.DataSet.Cancel;
  if dsExame.DataSet.State in [dsEdit, dsInsert] then
    dsExame.DataSet.Cancel;
  if dsExamesTipo.DataSet.State in [dsEdit, dsInsert] then
    dsExamesTipo.DataSet.Cancel;
  if dsLaudo.DataSet.State in [dsEdit, dsInsert] then
    dsLaudo.DataSet.Cancel;
  if dsModelo.DataSet.State in [dsEdit, dsInsert] then
    dsModelo.DataSet.Cancel;
  if dsDoenca.DataSet.State in [dsEdit, dsInsert] then
    dsDoenca.DataSet.Cancel;
  if dsExamesSolicitados.DataSet.State in [dsEdit, dsInsert] then
    dsExamesSolicitados.DataSet.Cancel;
  if dsExameDoencas.DataSet.State in [dsEdit, dsInsert] then
    dsExameDoencas.DataSet.Cancel;
  if dsLogUsuario.Dataset.State in [dsEdit, dsInsert] then
    dsLogUsuario.DataSet.Cancel;
  if dsProcedimentos.DataSet.State in [dsEdit, dsInsert] then
    dsProcedimentos.DataSet.Cancel;
end;

procedure TfrmExameLaudo.cbConvenioExit(Sender: TObject);
begin
  NotEdit;
end;

procedure TfrmExameLaudo.cbDadosClinExit(Sender: TObject);
begin
  if dsExamesSolicitados.DataSet.State in [dsEdit, dsInsert] then
  begin
    dmExames.qyExamesCitoeto_id.Value := dmLookups.lkProcExamesTipoCitoeto_id.Value;
    dmExames.qyExamesCitoeto_local.Text := dmLookups.lkProcExamesTipoCitoeto_local.Text;
    dmExames.qyExamesCitoeto_descricao.Text := dmLookups.lkProcExamesTipoCitoeto_descricao.Text;
  end;
end;

procedure TfrmExameLaudo.cbDestinoExit(Sender: TObject);
begin
  NotEdit;
end;

procedure TfrmExameLaudo.cbMedicoExit(Sender: TObject);
begin
  NotEdit;
end;

procedure TfrmExameLaudo.cbOrigemExit(Sender: TObject);
begin
  NotEdit;
end;

procedure TfrmExameLaudo.cbPacienteExit(Sender: TObject);
begin
  NotEdit;
end;

procedure TfrmExameLaudo.cbPrioridadeExit(Sender: TObject);
begin
  NotEdit;
end;

procedure TfrmExameLaudo.cbResponsavelEnter(Sender: TObject);
begin
  cbResponsavel.Text := dmExames.qyExamesres_nome.Text;
  cbResponsavel.PerformSearch;
  if not (dsExame.DataSet.State in [dsEdit]) then
    dsExame.DataSet.Edit;
end;

procedure TfrmExameLaudo.cbResponsavelExit(Sender: TObject);
begin
  if cbResponsavel.Text <> '' then
  Begin
    if not (dsExame.DataSet.State in [dsEdit, dsInsert]) then
      dsExame.DataSet.Edit;
    dmExames.qyExamesres_codigo.value := dmLookups.lkProcResponsaveisres_codigo.Value;
    dsExame.DataSet.Post;
  end
  else
    if dsExame.DataSet.State in [dsEdit, dsInsert] then
      dsExame.DataSet.Cancel;
  cbResponsavel.Text := dmExames.qyExamesres_nome.Text;
end;

procedure TfrmExameLaudo.cbTpExameExit(Sender: TObject);
begin
  NotEdit;
end;

procedure TfrmExameLaudo.dbMesesMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  dbMeses.Hint := dbMeses.Text;
end;

procedure TfrmExameLaudo.Deletar2Click(Sender: TObject);
begin
  if MessageDlg('Deseja realmente excluir a doença do exame?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    DeleteExamesDoencas;
end;

procedure TfrmExameLaudo.Deletar3Click(Sender: TObject);
begin
  if (TestaExameCob(dbExame.text) = 0) then
  begin
    if MessageDlg('Deseja realmente apagar o registro?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      dsProcedimentos.DataSet.Delete;
  end
  else
    MessageDlg('Este exame já foi gerado cobrança e não pode ser alterado!', mtWarning, [mbok], 0);
end;

procedure TfrmExameLaudo.dsExamesSolicitadosDataChange(Sender: TObject;
  Field: TField);
begin
  if dsExamesSolicitados.DataSet.State in [dsEdit, dsInsert] then
  begin
    sbInsereClin.Enabled := false;
    sbEditaClin.Enabled := false;
    sbDeletaClin.Enabled := false;
    sbGravaClin.Enabled := true;
    sbCancelaClin.Enabled := true;
    dbGridDadosClin.Color := clWindow;
  end
  else
  begin
    sbInsereClin.Enabled := true;
    sbEditaClin.Enabled := true;
    sbDeletaClin.Enabled := true;
    sbGravaClin.Enabled := false;
    sbCancelaClin.Enabled := false;
    dbGridDadosClin.Color := clBtnFace;
  end;
end;

procedure TfrmExameLaudo.dsExamesSolicitadosStateChange(Sender: TObject);
begin
  if dsExamesSolicitados.DataSet.State in [dsInsert] then
  begin
    dmExames.qyExamesCitoeci_id.Value := GetCodigo('eci_id', 'examescito');
    dmExames.qyExamesCitoexa_id.Value := dbExame.Text;
  end;
  if dsExamesSolicitados.DataSet.State in [dsEdit] then
    dmExames.qyExamesCitoexa_id.Value := dbExame.Text;
end;

procedure TfrmExameLaudo.dsExameStateChange(Sender: TObject);
begin
  if dsExame.DataSet.State in [dsEdit] then
  begin
    cbResponsavel.Color := clYellow;
    pnStatus.Caption := 'Alterando';
    pnStatus.Color := clYellow;
  end;
  if dsExame.DataSet.State in [dsInsert] then
  begin
    cbResponsavel.Color := clRed;
    pnStatus.Caption := 'Inserindo';
    pnStatus.Color := clRed;
  end;
  if dsExame.DataSet.State in [dsBrowse] then
  begin
    cbResponsavel.Color := clWindow;
    pnStatus.Caption := 'Visualizando';
    pnStatus.Color := clBtnFace;
  end;
  //Controle da etapa
  pnStatus.Repaint;
  VerificaEtapa(dsExame.DataSet.FieldByName('exa_etapa').Text);
end;

procedure TfrmExameLaudo.dsLaudoStateChange(Sender: TObject);
begin
  if dsLaudo.DataSet.State in [dsInsert] then
  begin
    lbLaudo.Font.Color := clRed;
    lbLaudo.Caption := 'Descrição do Laudo (Inserindo)';
    meLaudo.Color := clWindow;
    meDiagnostico.Color := clWindow;
  end;
  if dsLaudo.DataSet.State in [dsEdit] then
  begin
    btAlterar.Enabled := false;
    lbLaudo.Font.Color := clRed;
    lbLaudo.Caption := 'Descrição do Laudo (Editando)';
    meLaudo.Color := clWindow;
    meDiagnostico.Color := clWindow;
  end;
  if dsLaudo.DataSet.State in [dsBrowse] then
  begin
    btAlterar.Enabled := true;
    lbLaudo.Font.Color := clGreen;
    lbLaudo.Caption := 'Descrição do Laudo (Gravado / Visualizando)';
    meLaudo.Color := clBtnFace;
    meDiagnostico.Color := clBtnFace;
  end;
end;

procedure TfrmExameLaudo.dsProcedimentosStateChange(Sender: TObject);
begin
  if dsProcedimentos.DataSet.State in [dsInsert, dsEdit] then
  begin
    if (TestaExameCob(dbExame.Text) <> 0) then
    begin
      MessageDlg('Este exame já foi gerado cobrança e não pode ser alterado!', mtWarning, [mbok], 0);
      dsProcedimentos.DataSet.Cancel;
    end;
  end;
end;

procedure TfrmExameLaudo.edDtEntregaExit(Sender: TObject);
begin
  NotEdit;
end;

procedure TfrmExameLaudo.edDtNascExit(Sender: TObject);
begin
  NotEdit;
end;

procedure TfrmExameLaudo.edDtRequisicaoExit(Sender: TObject);
begin
  NotEdit;
end;

procedure TfrmExameLaudo.FormActivate(Sender: TObject);
begin
  inherited;
  Screen.OnActiveControlChange := ProCode;
  //ativa datasets
  dsTpExame.DataSet.Active := true;
  dsExame.DataSet.Active := true;
  dsExamesTipo.DataSet.Active := true;
  dsLaudo.DataSet.Active := true;
  dsModelo.DataSet.Active := true;
  dsDoenca.DataSet.Active := true;
  dsExamesSolicitados.DataSet.Active := true;
  dsExameDoencas.DataSet.Active := true;
  dsLogUsuario.Dataset.Active := true;
  dsProcedimentos.DataSet.Active := true;
  dsTissPend.DataSet.Active := true;
  LoadExame;
end;

procedure TfrmExameLaudo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //verifica pendências TISS
  if VerificaDadosTISS(dmExames.qyExamesexa_id.Text) = true then
  begin
    SetEtapaExame(4);
    //volta etapa para a revisão e gera log = MASTER
    InsExamesLogs(dmExames.qyExamesexa_id.Text, '4', '1');
    if MessageDlg('Existe(m) pendência(s) do TISS neste exame!' + #13 + 'gostaria de visualizar?', mtWarning, [mbYes, mbNo], 0 ) = mrYes then
      frmPendencias.ShowModal;
  end;
  TimerEtapa.Enabled := false;
  CancelaDataSets;
  inherited;
end;

procedure TfrmExameLaudo.FormDestroy(Sender: TObject);
begin
  inherited;
  Screen.OnActiveControlChange := nil;
end;

procedure TfrmExameLaudo.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #27 then
  begin
    painelProcedimento.Visible := false;
    painelDoenca.Visible := false;
    painelModelo.Visible := false;
  end;
  inherited;
end;

procedure TfrmExameLaudo.Paineis(vPainel: String);
begin
  if vPainel = 'procedimento' then
  begin
    seQuantidade.Value := 1;
    painelDoenca.Visible := false;
    painelModelo.Visible := false;
    if painelProcedimento.Visible = true then
      painelProcedimento.Visible := false
    else
    begin
      cbProcedimento.Clear;
      painelProcedimento.Visible := true;
      cbProcedimento.SetFocus;
    end;
  end;
  if vPainel = 'doenca' then
  begin
    painelProcedimento.Visible := false;
    painelModelo.Visible := false;
    if painelDoenca.Visible = true then
      painelDoenca.Visible := false
    else
    begin
      cbDoenca.Clear;
      painelDoenca.Visible := true;
      cbDoenca.SetFocus;
    end;
  end;
  if vPainel = 'modelo' then
  begin
    painelProcedimento.Visible := false;
    painelDoenca.Visible := false;
    if painelModelo.Visible = true then
      painelModelo.Visible := false
    else
    begin
      cbModelo.Clear;
      painelModelo.Visible := true;
      cbModelo.SetFocus;
    end;
  end;
  if vPainel = '0' then
  begin
    painelDoenca.Visible := false;
    painelModelo.Visible := false;
    painelProcedimento.Visible := false;
  end;
end;

procedure TfrmExameLaudo.ImageDblClick(Sender: TObject);
begin
  frmVisImagem.ImgVisualiza.Picture := Image.Picture;
  frmVisImagem.ShowModal;
end;

procedure TfrmExameLaudo.ImprimeLaudo;
Var
vEtapa: integer;
vIDImpExame: String;
Begin
  if not(dmExames.qyExamesCitoexa_id.IsNull) then
  begin
    vIDImpExame := dmExames.qyExamesexa_id.Text;
    vgIDExame := dmExames.qyExamesexa_id.Text;
    //filtra tabela exames e verifica a etapa
    FiltrarExames('e.exa_id', '=', vIDImpExame, '0', '1');
    vEtapa := dmExames.qyExamesexa_etapa.Value;
    if vEtapa > 4 then
    begin
      //log de usuário
      InsExamesLogs(dmExames.qyExamesexa_id.Text, '5', vgCodUsuarioLog);
      //altera etapa
      SetEtapaExame(5);
      //envia ID do exame para o uVarGlobal
      vgIDExame := dmExames.qyExamesexa_id.Text;
      vgIDCaptura := dmExames.qyExamesexa_id.Text;
      vgImagemExame := vgIDExame;
      FiltraTabelasCito(vIDImpExame);
      frmRelLaudoFinal.ShowModal;
    end
    else
      MessageDlg('Este exame não foi concluído!' + #13 + 'Etapa atual: ' + IntToStr(vEtapa) , mtWarning, [mbok], 0);
    end
  else
    MessageDlg('Não foram encontrados exames solicitados!' + #13 + 'Você precisa selecionar pelo menos um exame solicitado!', mtWarning, [mbok], 0);
end;

end.
