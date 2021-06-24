unit uMacroscopia;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpFormNormal, Vcl.StdCtrls,
  Vcl.Buttons, DB, Wwdbspin, Vcl.Grids, Wwdbigrd, Wwdbgrid, Vcl.ComCtrls,
  wwriched, wwrichedspellxp, Vcl.ActnList, wwdbedit, Wwdotdot, Wwdbcomb,
  wwdblook, wwdbdatetimepicker, Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.Menus,
  Vcl.Samples.Spin, Vcl.DBGrids;

type
  TfrmMacroscopia = class(TfrmTmpFormNormal)
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
    SpeedButton1: TSpeedButton;
    dbExame: TDBEdit;
    dbMatricula: TDBEdit;
    dbIdade: TDBEdit;
    dbMeses: TDBEdit;
    dbGuia: TDBEdit;
    cbResponsavel: TwwDBLookupCombo;
    dbTitulo: TDBEdit;
    dbConselho: TDBEdit;
    dbNumConselho: TDBEdit;
    btAlterar: TBitBtn;
    actPainel: TActionList;
    actProcedimento: TAction;
    actTpExames: TAction;
    actModelos: TAction;
    dsLog: TDataSource;
    dsProcedimentos: TDataSource;
    Panel2: TPanel;
    Label14: TLabel;
    lbMacroscopia: TLabel;
    sbInsereClin: TSpeedButton;
    sbEditaClin: TSpeedButton;
    sbDeletaClin: TSpeedButton;
    sbGravaClin: TSpeedButton;
    sbCancelaClin: TSpeedButton;
    meMacroscopia: TwwDBRichEditMSWord;
    painelTopografia: TPanel;
    Label18: TLabel;
    sbInsertTop: TSpeedButton;
    sbEditTop: TSpeedButton;
    sbDeleteTop: TSpeedButton;
    sbPostTop: TSpeedButton;
    sbCancelTop: TSpeedButton;
    cbTopografia: TwwDBLookupCombo;
    painelBlocos: TPanel;
    Label17: TLabel;
    sbInsertBloc: TSpeedButton;
    sbEditBloc: TSpeedButton;
    sbDeleteBloc: TSpeedButton;
    sbPostBloc: TSpeedButton;
    sbCancelBloc: TSpeedButton;
    SpeedButton4: TSpeedButton;
    painelTpExame: TPanel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label23: TLabel;
    cbTipoExame: TwwDBLookupCombo;
    btInsereExame: TBitBtn;
    cbExame: TwwDBLookupCombo;
    edQuantidade: TwwDBSpinEdit;
    cbMaterial: TwwDBLookupCombo;
    painelModelo: TPanel;
    Label24: TLabel;
    cbModelo: TwwDBLookupCombo;
    btInsereModelo: TBitBtn;
    painelProcedimento: TPanel;
    Label25: TLabel;
    Label26: TLabel;
    Label15: TLabel;
    cbProcedimento: TwwDBLookupCombo;
    btInserir: TBitBtn;
    wwDBGrid2: TwwDBGrid;
    sbReconhecimento: TSpeedButton;
    btProcedimento: TBitBtn;
    btModelo: TBitBtn;
    sbSelecionaTodos: TSpeedButton;
    sbMaiusculas: TSpeedButton;
    sbMinusculas: TSpeedButton;
    SpeedButton2: TSpeedButton;
    btObs: TBitBtn;
    btGravar: TBitBtn;
    btCancelar: TBitBtn;
    dsProcExames: TDataSource;
    dsExames: TDataSource;
    dsHistologia: TDataSource;
    actDadosClin: TActionList;
    actInsereClin: TAction;
    actEditaClin: TAction;
    actDeletaClin: TAction;
    actGravaClin: TAction;
    actCancelaClin: TAction;
    actGravarAlteracoes: TAction;
    actAlternaExame: TAction;
    dsMacroscopia: TDataSource;
    popProcedimento: TPopupMenu;
    Excluir1: TMenuItem;
    dsExTopografias: TDataSource;
    popTopografia: TPopupMenu;
    Deletar1: TMenuItem;
    dsBlocos: TDataSource;
    dsModMacro: TDataSource;
    alMacro: TActionList;
    actInserir: TAction;
    actEditar: TAction;
    actDeletar: TAction;
    actGravar: TAction;
    actCancelar: TAction;
    popBlocos: TPopupMenu;
    Atualizar1: TMenuItem;
    seQuantidade: TSpinEdit;
    dbData: TDBEdit;
    dbTpExame: TDBEdit;
    dbConvenio: TDBEdit;
    dbPaciente: TDBEdit;
    dbDtNasc: TDBEdit;
    dbMedico: TDBEdit;
    dbOrigem: TDBEdit;
    dbDestino: TDBEdit;
    dbPrioridade: TDBEdit;
    dbDtEntrega: TDBEdit;
    Label22: TLabel;
    wwDBGrid1: TwwDBGrid;
    Alteratopologia1: TMenuItem;
    N1: TMenuItem;
    dbGridTopografias: TwwDBGrid;
    dbGridDadosEx: TwwDBGrid;
    Label27: TLabel;
    DBText1: TDBText;
    N2: TMenuItem;
    Vincularcomdadoclnicoselecionado1: TMenuItem;
    procedure AtualizarBlocos;
    procedure BuscarNovo;
    procedure InsereTopografia;
    procedure Gravar;
    procedure InitMacro;
    procedure CancelaDataSets;
    procedure GravaLog;
    function TestaDataSets: Boolean;
    procedure Paineis(vfAcionado: String);
    procedure ExecutaFiltro(vfCodEio: String);
    procedure LimpaFiltro;
    procedure cbTopografiaKeyPress(Sender: TObject; var Key: Char);
    procedure cbResponsavelExit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure Deletar1Click(Sender: TObject);
    procedure btInsereExameClick(Sender: TObject);
    procedure sbInsertTopClick(Sender: TObject);
    procedure sbEditTopClick(Sender: TObject);
    procedure sbDeleteTopClick(Sender: TObject);
    procedure sbPostTopClick(Sender: TObject);
    procedure sbCancelTopClick(Sender: TObject);
    procedure dsExTopografiasDataChange(Sender: TObject; Field: TField);
    procedure edQuantidadeKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btModeloClick(Sender: TObject);
    procedure btInsereModeloClick(Sender: TObject);
    procedure btProcedimentoClick(Sender: TObject);
    procedure Excluir1Click(Sender: TObject);
    procedure btInserirClick(Sender: TObject);
    procedure actProcedimentoExecute(Sender: TObject);
    procedure actTpExamesExecute(Sender: TObject);
    procedure actModelosExecute(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure actInserirExecute(Sender: TObject);
    procedure actEditarExecute(Sender: TObject);
    procedure actDeletarExecute(Sender: TObject);
    procedure actGravarExecute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure actInsereClinExecute(Sender: TObject);
    procedure actEditaClinExecute(Sender: TObject);
    procedure actDeletaClinExecute(Sender: TObject);
    procedure actGravaClinExecute(Sender: TObject);
    procedure actCancelaClinExecute(Sender: TObject);
    procedure actGravarAlteracoesExecute(Sender: TObject);
    procedure meMacroscopiaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dsMacroscopiaStateChange(Sender: TObject);
    procedure actAlternaExameExecute(Sender: TObject);
    procedure dsProcedimentosStateChange(Sender: TObject);
    procedure cbModeloKeyPress(Sender: TObject; var Key: Char);
    procedure cbProcedimentoKeyPress(Sender: TObject; var Key: Char);
    procedure seQuantidadeKeyPress(Sender: TObject; var Key: Char);
    procedure cbExameEnter(Sender: TObject);
    procedure dsHistologiaStateChange(Sender: TObject);
    procedure sbMaiusculasClick(Sender: TObject);
    procedure sbMinusculasClick(Sender: TObject);
    procedure sbSelecionaTodosClick(Sender: TObject);
    procedure dsExamesStateChange(Sender: TObject);
    procedure btAlterarClick(Sender: TObject);
    procedure sbReconhecimentoClick(Sender: TObject);
    procedure Atualizar1Click(Sender: TObject);
    procedure btObsClick(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure dsExTopografiasStateChange(Sender: TObject);
    procedure dsBlocosStateChange(Sender: TObject);
    procedure Alteratopologia1Click(Sender: TObject);
    procedure Vincularcomdadoclnicoselecionado1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMacroscopia: TfrmMacroscopia;

implementation

{$R *.dfm}

uses uVarGlobal, dataConsultas, dataExames, dataFinanceiro, uPendencias,
  dataGestao, uDaoExamesTop, dataCadastros, dataLookups, uDaoExamesHist,
  uDaoExamesHistMacro, uDaoExamesProced, uDaoExamesBlocos, uDaoExamesLogs,
  uDaoExames, uFuncoesFormatacao, UFuncoesTISS, uClassExamesProced, uFuncoesDB,
  uDaoConvProc, uClassExamesBlocos, uDaoExamesObs, uObsEx, uAltExame,
  uSelHISTTable, uDaoResponsaveis;

procedure TfrmMacroscopia.AtualizarBlocos;
begin
  //filtra blocos
  FiltrarExamesBlocos('e.exa_id', '=', dbExame.Text, 't.etg_seq, e.ebl_seq', '0');
end;

procedure TfrmMacroscopia.actAlternaExameExecute(Sender: TObject);
begin
  BuscarNovo;
end;

procedure TfrmMacroscopia.actCancelaClinExecute(Sender: TObject);
begin
  CancelExamesHist;
end;

procedure TfrmMacroscopia.actCancelarExecute(Sender: TObject);
begin
  CancelExamesBlocos;
end;

procedure TfrmMacroscopia.actDeletaClinExecute(Sender: TObject);
begin
  DelExamesHist;
end;

procedure TfrmMacroscopia.actDeletarExecute(Sender: TObject);
begin
  DelExamesBlocos;
end;

procedure TfrmMacroscopia.actEditaClinExecute(Sender: TObject);
begin
  EdtExamesHist;
  dbGridDadosEx.SetFocus;
end;

procedure TfrmMacroscopia.actEditarExecute(Sender: TObject);
begin
  EdtExamesBlocos;
end;

procedure TfrmMacroscopia.actGravaClinExecute(Sender: TObject);
begin
  try
    dmExames.qyExamesHistmat_id.Text := dmLookups.lkProcMateriaismat_id.Text;
    dmExames.qyExamesHisteio_id.Text := dmLookups.lkProcExamesTipoeio_id.Text;
    dmExames.qyExamesHisteth_id.Text := dmLookups.lkProcExamesHisteth_id.Text;
    dsHistologia.DataSet.Post;
    //Insere topografia
    if MessageDlg('Deseja inserir o Material na Topografia?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    Begin
      cbTopografia.Text := dmExames.qyExamesHistmat_descricao.Text;
      cbTopografia.PerformSearch;
      if dmExames.qyExamesHistmat_descricao.Text = dmLookups.lkProcTopografiastop_descricao.text then
        InsereTopografia
      else
        Messagedlg('Não foi possível encontrar o material: '+ dmExames.qyExamesHistmat_descricao.Text, mtWarning, [mbok], 0);
    end;
  Except
    on E: Exception do
    Begin
      MessageDlg('Erro ao gravar Alteração / Inserção!' + #13#10 +
          E.Message,mtError,[mbOk],0);
      dsHistologia.DataSet.Refresh;
    end;
  end;
end;

procedure TfrmMacroscopia.actGravarAlteracoesExecute(Sender: TObject);
begin
  Gravar;
end;

procedure TfrmMacroscopia.actGravarExecute(Sender: TObject);
begin
  PostExamesBlocos;
end;

procedure TfrmMacroscopia.actInsereClinExecute(Sender: TObject);
begin
  AppendExamesHist;
  LimpaFiltro;
  dbGridDadosEx.SetFocus;
end;

procedure TfrmMacroscopia.actInserirExecute(Sender: TObject);
Var
vExamesBlocos: TExamesBlocos;
begin
  vExamesBlocos := TExamesBlocos.Create;
  vExamesBlocos.Ebl_id := 0;
  vExamesBlocos.Exa_id := dbExame.Text;
  vExamesBlocos.Etg_id := dmExames.qyExamesTopetg_id.Value;
  vExamesBlocos.Ebl_laminas := 1;
  vExamesBlocos.Ebl_fragmentos := 1;
  SetValuesExamesBlocos(vExamesBlocos);
  vExamesBlocos.Free;
end;

procedure TfrmMacroscopia.actModelosExecute(Sender: TObject);
begin
  Paineis('modelo');
end;

procedure TfrmMacroscopia.actProcedimentoExecute(Sender: TObject);
begin
  Paineis('procedimento');
end;

procedure TfrmMacroscopia.actTpExamesExecute(Sender: TObject);
begin
  Paineis('tpexame');
end;

procedure TfrmMacroscopia.Alteratopologia1Click(Sender: TObject);
begin
  SetTopologiaBlocos(dsExTopografias.DataSet.FieldByName('etg_id').Text);
  AtualizarBlocos;
end;

procedure TfrmMacroscopia.Atualizar1Click(Sender: TObject);
begin
  AtualizarBlocos;
end;

procedure TfrmMacroscopia.btAlterarClick(Sender: TObject);
begin
  vgIDExameSel := dmExames.qyExamesexa_id.Text;
  frmAltExame.ShowModal;
end;

procedure TfrmMacroscopia.btCancelarClick(Sender: TObject);
begin
  CancelaDataSets;
  if MessageDlg('Alterações cancaladas!' + #13 + 'Deseja sair da Macroscopia?', mtInformation, [mbYes, mbNo], 0) = mrYes then
    Close;
end;

procedure TfrmMacroscopia.btInsereExameClick(Sender: TObject);
Var
vQuantidade: Integer;
begin
  try
    vQuantidade := StrToInt(edQuantidade.Text);
    if vQuantidade > 0 then
    begin
      if cbMaterial.Text <> '' then
      begin
        if cbTipoExame.Text <> '' then
        begin
          if cbExame.Text <> '' then
          begin
            InsExamesHist(dbExame.Text, dmLookups.lkProcMateriaismat_id.Value,
                          dmLookups.lkProcExamesTipoeio_id.Value,
                          dmLookups.lkProcExamesHisteth_id.Text,
                          StrToInt(edQuantidade.Text));
            painelTpExame.Visible := false;
          end
          else
            MessageDlg('Você deve selecionar o EXAME SOLICITADO!', mtWarning, [mbok], 0);
        end
        else
          MessageDlg('Você deve selecionar um TIPO DE EXAME!', mtWarning, [mbok], 0);
      end
      else
        MessageDlg('Você deve selecionar um MATERIAL!', mtWarning, [mbok], 0);
    end
    else
      MessageDlg('A quantidade deve ser maior que ZERO!', mtWarning, [mbok], 0);
  except
    begin
      MessageDlg('A quantidade deve ser numérica!', mtError, [mbok], 0);
      edQuantidade.SetFocus;
    end;
  end;
end;

procedure TfrmMacroscopia.btInsereModeloClick(Sender: TObject);
begin
  if MessageDlg('Deseja realmente inserir o modelo?' + #13 + 'Caso você opte por inserir o modelo, o laudo será apagado!',
  mtConfirmation, [mbYes, mbno], 0) = mrYes then
  Begin
    if cbModelo.Text <> '' then
    Begin
      if not (dsMacroscopia.DataSet.State in [dsEdit, dsInsert]) then
      begin
        meMacroscopia.Clear;
        if dmExames.qyExamesHistMacroehm_macroscopia.IsNull then
          SetValuesExamesHistMacro('0', dbExame.Text, TEncoding.ANSI.GetString(dmLookups.lkProcModMacrolmm_modelo.Value))
        else
          SetValuesExamesHistMacro(dmExames.qyExamesHistMacroehm_macroscopia.Text,
                                   dbExame.Text, TEncoding.ANSI.GetString(dmLookups.lkProcModMacrolmm_modelo.Value));
        painelModelo.Visible := false;
        meMacroscopia.SetFocus;
      end;
    end
    else
      MessageDlg('você deve selecionar o modelo!', mtWarning, [mbok],0);
  end;
end;

procedure TfrmMacroscopia.btInserirClick(Sender: TObject);
Var
vCodConvenio: integer;
vCodTuss: integer;
ExamesProced: TExamesProced;
vVlrUnit: real;
begin
  if cbProcedimento.Text <> '' then
  begin
    if (TestaExameCob(dbExame.Text) = 0) then
    begin
      vCodConvenio := dmExames.qyExamescov_codigo.Value;
      vCodTuss := dmLookups.lkProcProcedimentosprc_tuss.Value;
      //Cria a classe ExamesProced
      ExamesProced := TExamesProced.Create;
      ExamesProced.Exp_id := 0;
      ExamesProced.Exa_id := dbExame.Text;
      ExamesProced.Prc_tuss := dmLookups.lkProcProcedimentosprc_tuss.Value;
      ExamesProced.Prc_descricao := dmLookups.lkProcProcedimentosprc_descricao.Text;
      ExamesProced.Exp_quant := seQuantidade.Value;
      //Busca valor do procedimento
      if vCodConvenio > 1 then
      begin
        vVlrUnit := GetVlrTotconvProc(vCodConvenio, vCodTuss);
        if vVlrUnit <> 0 then
          ExamesProced.Exp_unitario := vVlrUnit
        else //caso o convênio não tenha valor diferenciado, busca valor da tabela padrão
          ExamesProced.Exp_unitario := dmLookups.lkProcProcedimentosprc_vlrtotal.Value;
      end
      else //Traz valor da tabela padrão
        ExamesProced.Exp_unitario := dmLookups.lkProcProcedimentosprc_vlrtotal.Value;
      ExamesProced.Exp_total :=  ExamesProced.Exp_quant * ExamesProced.Exp_unitario;
      SetValuesExamesProced(ExamesProced);
      if MessageDlg('Procedimento selecionado com sucesso!' +#13 + 'Deseja inserir outro?', mtConfirmation, [mbyes, mbno], 0) = mrYes then
      begin
        seQuantidade.Value := 1;
        cbProcedimento.Clear;
        cbProcedimento.SetFocus;
      end
      else
        painelProcedimento.Visible := false;
      //Destroi a classe ExamesProced
      ExamesProced.Free;
    end
    else
      MessageDlg('Este exame já foi gerado cobrança e não pode ser alterado!', mtWarning, [mbok], 0);
  end
  else
    MessageDlg('Você deve selecionar um procedimento!', mtWarning, [mbok], 0);
end;

procedure TfrmMacroscopia.btModeloClick(Sender: TObject);
begin
  Paineis('modelo');
end;

procedure TfrmMacroscopia.btObsClick(Sender: TObject);
begin
  FiltrarExamesObs('exa_id', '=', dmExames.qyExamesexa_id.Text, '0', '0');
  vgExaLog := dmExames.qyExamesexa_id.Text;
  frmObsEx.ShowModal;
end;

procedure TfrmMacroscopia.btProcedimentoClick(Sender: TObject);
begin
  Paineis('procedimento');
end;

procedure TfrmMacroscopia.BuscarNovo;
begin
  CancelaDataSets;
  //Envia tabela exames para o registro atual e abre a tela de busca
  vgIDExameBuscaTb := dmExames.qyExamesexa_id.Text;
  //Envia tipo de busca / etapa 2 = Captura
  vgIDTpBusca := '2';
  dmConsultas.tbExamesHist.Open;
  dmConsultas.tbExamesHist.Refresh;
  dmConsultas.tbExamesHist.Locate('exa_id', vgIDExameBuscaTb, [LOPARTIALKEY, LOCASEINSENSITIVE]);
  frmSelHISTTable.ShowModal;
  //Carrega exame
  InitMacro;
end;

procedure TfrmMacroscopia.InsereTopografia;
Begin
  if dsHistologia.DataSet.FieldByName('ehi_id').IsNull then
    MessageDlg('É necessário selecionar um dado clínico!', mtWarning, [mbOk], 0)
  else
  begin
    if dmExames.qyExamesTop.State in [dsBrowse] then
    begin
      if cbTopografia.Text <> '' then
      begin
        if dsHistologia.DataSet.FieldByName('ehi_id').IsNull then
          MessageDlg('É necessário selecionar um dado clínico!', mtWarning, [mbOk], 0)
        else
        begin
          SetValuesTopografia(dbExame.Text, dmLookups.lkProcTopografiastop_id.Text, dmLookups.lkProcTopografiastop_id.Text,
                              dsHistologia.DataSet.FieldByName('ehi_id').Value);
          cbTopografia.Text := '';
        end;
      end;
    end;
  end;
end;

procedure TfrmMacroscopia.Gravar;
Var
vOK: boolean;
vCont: integer;
begin
  vOK := true;
  if dsHistologia.DataSet.State in [dsEdit, dsInsert] then
    PostExamesHist(dbExame.Text);
  if dsMacroscopia.DataSet.State in [dsInsert, dsEdit] then
    PostExamesHistMacro(dbExame.Text);
  if dsExTopografias.DataSet.State in [dsEdit, dsInsert] then
    dmExames.qyExamesTop.Post;
  if dsBlocos.DataSet.State in [dsEdit, dsInsert] then
    dmExames.qyExamesBlocos.Post;
  //Verifica se a Macro foi preenchida!
  if dmExames.qyExamesHistMacroexa_id.IsNull then
  begin
    vOK := false;
    if MessageDlg('A Macroscopia não foi preenchida!' + #13 +
     'Deseja realmente gravar a etapa!', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      vOK := true;
  end;
  //Faz verificações necessárias para alteração da etapa
  if dmExames.qyExamesHistexa_id.IsNull then
    vOK := false;
  if dmExames.qyExamesTopexa_id.IsNull then
    vOk := false;
  if dmExames.qyExamesBlocosexa_id.IsNull then
    vOK := false;
  if dmExames.qyExamesres_codigo.IsNull then
    vOK := false;
  //Consulta totalização de valores do exame
  dmConsultas.QTemp.Close;
  dmConsultas.QTemp.SQL.Clear;
  dmConsultas.QTemp.SQL.Add('select sum(exp_total) from examesproced where exa_id = ');
  dmConsultas.QTemp.SQL.Add(QuotedStr(dbExame.Text));
  dmConsultas.QTemp.Open;
  if not dmConsultas.QTemp.Fields[0].IsNull then
  begin
    dmFinanceiro.qyExamesCob.Close;
    dmFinanceiro.qyExamesCob.SQL.Clear;
    dmFinanceiro.qyExamesCob.SQL.Add('select eco_id, exa_id, eco_status, eco_valor, his_id, eco_gerarcob, eco_vlrpago ');
    dmFinanceiro.qyExamesCob.SQL.Add('from examescob where exa_id = ');
    dmFinanceiro.qyExamesCob.SQL.Add(QuotedStr(dbExame.Text));
    dmFinanceiro.qyExamesCob.Open;
    if not dmFinanceiro.qyExamesCobexa_id.IsNull then
    begin
      dmFinanceiro.qyExamesCob.Edit;
      dmFinanceiro.qyExamesCobeco_valor.Value := dmConsultas.QTemp.Fields[0].Value;
      dmFinanceiro.qyExamesCob.Post;
    end;
  end
  else
    vOK := false;
  if dmExames.qyExamesHistexa_id.IsNull then
    vOK := false;
  if vOK = true then
  begin
    GravaLog;
    //fitra topografias
    FiltrarExamesTop('e.exa_id', '=', dbExame.Text, 'e.etg_id', '0');
    if MessageDlg('Alterações gravadas com sucesso!' + #13 +#13 + 'Deseja sair da Macroscopia?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      Close;
  end
  else
  begin
    if MessageDlg('Existe(m) pendência(s) neste exame!' + #13 + #13 +
     'Gostaria de visualizar?', mtConfirmation, [mbYes, mbNo], 0 ) = mrYes then
    begin
      vCont := 0;
      frmPendencias.rePendencias.Clear;
      if dmExames.qyExamesHistMacroexa_id.IsNull then
      begin
        vCont := vCont + 1;
        frmPendencias.rePendencias.Lines.Add('Pendência n.º ' + IntToStr(vCont));
        frmPendencias.rePendencias.Lines.Add('A Macroscopia não foi preenchida!');
        frmPendencias.rePendencias.Lines.Add('--------------------------------------------------------------------------');
      end;
      if dmConsultas.QTemp.Fields[0].IsNull then
      begin
        vCont := vCont + 1;
        frmPendencias.rePendencias.Lines.Add('Pendência n.º ' + IntToStr(vCont));
        frmPendencias.rePendencias.Lines.Add('Nenhum procedimento foi adicionado ao exame!');
        frmPendencias.rePendencias.Lines.Add('--------------------------------------------------------------------------');
      end;
      if dmExames.qyExamesHistexa_id.IsNull then
      begin
        vCont := vCont + 1;
        frmPendencias.rePendencias.Lines.Add('Pendência n.º ' + IntToStr(vCont));
        frmPendencias.rePendencias.Lines.Add('Nenhum dado clínico foi adicionado ao exame!');
        frmPendencias.rePendencias.Lines.Add('--------------------------------------------------------------------------');
      end;
      if dmExames.qyExamesTopexa_id.IsNull then
      begin
        vCont := vCont + 1;
        frmPendencias.rePendencias.Lines.Add('Pendência n.º ' + IntToStr(vCont));
        frmPendencias.rePendencias.Lines.Add('Nenhuma topografia foi adicionada ao exame!');
        frmPendencias.rePendencias.Lines.Add('--------------------------------------------------------------------------');
      end;
      if dmExames.qyExamesBlocosexa_id.IsNull then
      begin
        vCont := vCont + 1;
        frmPendencias.rePendencias.Lines.Add('Pendência n.º ' + IntToStr(vCont));
        frmPendencias.rePendencias.Lines.Add('Nenhum bloco foi adicionado ao exame!');
        frmPendencias.rePendencias.Lines.Add('--------------------------------------------------------------------------');
      end;
      if dmExames.qyExamesres_codigo.IsNull then
      begin
        vCont := vCont + 1;
        frmPendencias.rePendencias.Lines.Add('Pendência n.º ' + IntToStr(vCont));
        frmPendencias.rePendencias.Lines.Add('Não foi selecionado o responsável!');
        frmPendencias.rePendencias.Lines.Add('--------------------------------------------------------------------------');
      end;
      if dmExames.qyExamesHistexa_id.IsNull then
      begin
        vCont := vCont + 1;
        frmPendencias.rePendencias.Lines.Add('Pendência n.º ' + IntToStr(vCont));
        frmPendencias.rePendencias.Lines.Add('Não foi selecionado o exame solicitado!');
        frmPendencias.rePendencias.Lines.Add('--------------------------------------------------------------------------');
      end;
      frmPendencias.ShowModal;
      //fitra topografias
      FiltrarExamesTop('e.exa_id', '=', dbExame.Text, 'e.etg_id', '0');
      if MessageDlg('Alterações gravadas com sucesso, porém existem pendências!' + #13 + #13 + 'Deseja sair da Macroscopia?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        Close;
    end
    else
    begin
      //fitra topografias
      FiltrarExamesTop('e.exa_id', '=', dbExame.Text, 'e.etg_id', '0');
      if MessageDlg('Alterações gravadas com sucesso!' + #13 + #13 + 'Deseja sair da Macroscopia?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        Close;
    end;
  end;
end;

procedure TfrmMacroscopia.InitMacro;
begin
  //filtra exames procedimentos
  FiltrarExamesProced('e.exa_id', '=', dbExame.Text, '0', '0');
  //filtra a tabela de Histologia
  FiltrarExamesHist('h.exa_id', '=', dbExame.Text, '0', '0');
  //filtra a tabela ExamesHistMacro
  FiltrarExamesHistMacro('exa_id', '=', dbExame.Text, 'ehm_id', '0');
  //fitra topografias
  FiltrarExamesTop('e.exa_id', '=', dbExame.Text, 'e.etg_id', '0');
  //filtra blocos
  FiltrarExamesBlocos('e.exa_id', '=', dbExame.Text, 'e.etg_id, e.ebl_seq', '0');
  //limpa filtro das tabelas Exames
  LimpaFiltro;
  //testa se o campo responsável é nulo
  if not dmExames.qyExamesres_codigo.IsNull then
    cbResponsavel.Text := GetRespExame(dmExames.qyExamesres_codigo.Text);
  if cbResponsavel.Text = '' then
  begin
    if not(dmExames.qyExames.State in [dsEdit]) then
      dmExames.qyExames.Edit;
    cbResponsavel.Text := dmLookups.lkProcResponsaveisres_nome.Text;
    dmExames.qyExamesres_codigo.Value := dmLookups.lkProcResponsaveisres_codigo.Value;
    dmExames.qyExames.Post;
    meMacroscopia.SetFocus;
  end
  else
    meMacroscopia.SetFocus;
end;

procedure TfrmMacroscopia.CancelaDataSets;
begin
  if dsExames.DataSet.State in [dsEdit] then
    dmExames.qyExames.Cancel;
  if dsMacroscopia.DataSet.State in [dsEdit] then
    dmExames.qyExamesHistMacro.Cancel;
  if dsHistologia.DataSet.State in [dsEdit] then
    dmExames.qyExamesHist.Cancel;
  if dsExTopografias.DataSet.State in [dsEdit, dsInsert] then
    dmExames.qyExamesTop.Cancel;
  if dsBlocos.DataSet.State in [dsEdit, dsInsert] then
    dmExames.qyExamesBlocos.Cancel;
  if dsProcedimentos.DataSet.State in [dsEdit, dsInsert] then
    dsProcedimentos.DataSet.Cancel;
end;

procedure TfrmMacroscopia.cbExameEnter(Sender: TObject);
begin
  if cbTipoExame.Text <> '' then
    ExecutaFiltro(dmLookups.lkProcExamesTipoeio_id.Text)
  else
    ExecutaFiltro('0');
end;

procedure TfrmMacroscopia.cbModeloKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    btInsereModelo.SetFocus;
end;

procedure TfrmMacroscopia.cbProcedimentoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    seQuantidade.SetFocus;
end;

procedure TfrmMacroscopia.cbResponsavelExit(Sender: TObject);
begin
  if cbResponsavel.Text <> '' then
    SetExamesResp(dmLookups.lkProcResponsaveisres_codigo.Value);
end;

procedure TfrmMacroscopia.cbTopografiaKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    InsereTopografia;
end;

procedure TfrmMacroscopia.Deletar1Click(Sender: TObject);
begin
  if MessageDlg('Deseja realmente apagar a Topografia?', mtConfirmation, [mbYes, mbNo],0) = mrYes then
  Begin
    try
      dmExames.qyExamesTop.Delete;
    except
      MessageDlg('O registro não pode ser apagado!', mtWarning, [mbOk],0);
    end;
  end;
end;

procedure TfrmMacroscopia.dsBlocosStateChange(Sender: TObject);
begin
  if dsBlocos.DataSet.State in [dsInsert, dsEdit] then
  Begin
    sbInsertBloc.Enabled := False;
    sbEditBloc.Enabled := False;
    sbDeleteBloc.Enabled := False;
    sbPostBloc.Enabled := True;
    sbCancelBloc.Enabled := True;
  end
  else
  Begin
    sbInsertBloc.Enabled := True;
    sbEditBloc.Enabled := True;
    sbDeleteBloc.Enabled := True;
    sbPostBloc.Enabled := False;
    sbCancelBloc.Enabled := False;
  end;
end;

procedure TfrmMacroscopia.dsExamesStateChange(Sender: TObject);
begin
  if dsExames.DataSet.State in [dsEdit] then
    btAlterar.Enabled := false
  else
    btAlterar.Enabled := true;
end;

procedure TfrmMacroscopia.dsExTopografiasDataChange(Sender: TObject;
  Field: TField);
begin
  AtualizarBlocos;
end;

procedure TfrmMacroscopia.dsExTopografiasStateChange(Sender: TObject);
begin
  if dsExTopografias.DataSet.State in [dsInsert, dsEdit] then
  Begin
    sbInsertTop.Enabled := False;
    sbEditTop.Enabled := False;
    sbDeleteTop.Enabled := False;
    sbPostTop.Enabled := True;
    sbCancelTop.Enabled := True;
  end
  else
  Begin
    sbInsertTop.Enabled := True;
    sbEditTop.Enabled := True;
    sbDeleteTop.Enabled := True;
    sbPostTop.Enabled := False;
    sbCancelTop.Enabled := False;
  end;
end;

procedure TfrmMacroscopia.dsHistologiaStateChange(Sender: TObject);
begin
  if dsHistologia.DataSet.State in [dsInsert] then
    dmExames.qyExamesHistexa_id.Text := dbExame.Text;
  if dsHistologia.DataSet.State in [dsEdit, dsInsert] then
  begin
    sbInsereClin.Enabled := false;
    sbEditaClin.Enabled := false;
    sbDeletaClin.Enabled := false;
    sbGravaClin.Enabled := true;
    sbCancelaClin.Enabled := true;
    dbGridDadosEx.Color := clWindow;
  end
  else
  begin
    sbInsereClin.Enabled := true;
    sbEditaClin.Enabled := true;
    sbDeletaClin.Enabled := true;
    sbGravaClin.Enabled := false;
    sbCancelaClin.Enabled := false;
    dbGridDadosEx.Color := clBtnFace;
  end;
end;

procedure TfrmMacroscopia.dsMacroscopiaStateChange(Sender: TObject);
begin
  if dsMacroscopia.DataSet.State in [dsInsert] then
  begin
    lbMacroscopia.Font.Color := clRed;
    lbMacroscopia.Caption := 'Descrição da Macroscopia (Inserindo)';
    meMacroscopia.Color := clWindow;
  end;
  if dsMacroscopia.DataSet.State in [dsEdit] then
  begin
    lbMacroscopia.Font.Color := clRed;
    lbMacroscopia.Caption := 'Descrição da Macroscopia (Editando)';
    meMacroscopia.Color := clWindow;
  end;
  if dsMacroscopia.DataSet.State in [dsBrowse] then
  begin
    lbMacroscopia.Font.Color := clGreen;
    lbMacroscopia.Caption := 'Descrição da Macroscopia (Gravado / Visualizando)';
    meMacroscopia.Color := clBtnFace;
  end;
end;

procedure TfrmMacroscopia.dsProcedimentosStateChange(Sender: TObject);
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

procedure TfrmMacroscopia.edQuantidadeKeyPress(Sender: TObject; var Key: Char);
begin
  key := Numeros(key);
end;

procedure TfrmMacroscopia.GravaLog;
begin
  //grava log de usuário
  InsExamesLogs(dmExames.qyExamesexa_id.Text, '3', vgCodUsuarioLog);
  //atualiza a etapa do exame
  if ((dmExames.qyExamesetp_id.Value = 3) or (dmExames.qyExamesetp_id.Value = 4)) then
    SetEtapaExame(4)
  else
    SetEtapaExame(3);
end;

function TfrmMacroscopia.TestaDataSets: Boolean;
Var
vResult: boolean;
begin
  vResult := false;
  if dsBlocos.DataSet.State in [dsInsert, dsEdit] then
    vResult := true;
  if dsExames.DataSet.State in [dsInsert, dsEdit] then
    vResult := true;
  if dsExTopografias.DataSet.State in [dsInsert, dsEdit] then
    vResult := true;
  if dsHistologia.DataSet.State in [dsInsert, dsEdit] then
    vResult := true;
  if dsLog.DataSet.State in [dsInsert, dsEdit] then
    vResult := true;
  if dsMacroscopia.DataSet.State in [dsInsert, dsEdit] then
    vResult := true;
  if dsProcedimentos.DataSet.State in [dsInsert, dsEdit] then
    vResult := true;
  Result := vResult;
end;

procedure TfrmMacroscopia.Vincularcomdadoclnicoselecionado1Click(
  Sender: TObject);
begin
  if MessageDlg('Deseja realmente alterar o vínculo?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    EdtExamesTop;
    SetDadosClin(dsHistologia.DataSet.FieldByName('ehi_id').Value);
    PostExamesTop;
  end;
end;

procedure TfrmMacroscopia.Paineis(vfAcionado: String);
begin
  if vfAcionado = 'tpexame' then
  begin
    painelModelo.Visible := false;
    painelProcedimento.Visible := false;
    if painelTpExame.Visible = true then
      painelTpExame.Visible := false
    else
    begin
      cbMaterial.Clear;
      cbExame.Clear;
      edQuantidade.Text := '1';
      painelTpExame.Visible := true;
      LimpaFiltro;
      cbMaterial.SetFocus;
    end;
  end;
  if vfAcionado = 'modelo' then
  Begin
    painelTpExame.Visible := false;
    painelProcedimento.Visible := false;
    if painelModelo.Visible = true then
      painelModelo.Visible := false
    else
    Begin
      cbModelo.Clear;
      painelModelo.Visible := true;
      cbModelo.SetFocus;
    end;
  end;
  if vfAcionado = 'procedimento' then
  begin
    seQuantidade.Value := 1;
    painelTpExame.Visible := false;
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
end;

procedure TfrmMacroscopia.sbCancelTopClick(Sender: TObject);
begin
  dsExTopografias.DataSet.Cancel;
end;

procedure TfrmMacroscopia.sbDeleteTopClick(Sender: TObject);
begin
  try
    if MessageDlg('Deseja realmente apagar o registro?', mtConfirmation, [mbYes, mbNo], 0) = mryes then
      dsExTopografias.DataSet.Delete;
  except
    dsExTopografias.DataSet.Refresh;
    MessageDlg('Não foi possível apagar a topografia!', mtInformation, [mbOk], 0);
  end;
end;

procedure TfrmMacroscopia.sbEditTopClick(Sender: TObject);
begin
  dsExTopografias.DataSet.Edit;
end;

procedure TfrmMacroscopia.sbInsertTopClick(Sender: TObject);
begin
  if cbTopografia.Text <> '' then
    InsereTopografia
  else
    cbTopografia.SetFocus;
end;

procedure TfrmMacroscopia.sbMaiusculasClick(Sender: TObject);
begin
  meMacroscopia.SelText := UpperCase(meMacroscopia.SelText);
end;

procedure TfrmMacroscopia.sbMinusculasClick(Sender: TObject);
begin
  meMacroscopia.SelText := LowerCase(meMacroscopia.SelText);
end;

procedure TfrmMacroscopia.sbPostTopClick(Sender: TObject);
begin
  dsExTopografias.DataSet.Post;
end;

procedure TfrmMacroscopia.sbSelecionaTodosClick(Sender: TObject);
begin
  meMacroscopia.SelectAll;
end;

procedure TfrmMacroscopia.seQuantidadeKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    btInserir.SetFocus;
end;

procedure TfrmMacroscopia.SpeedButton2Click(Sender: TObject);
begin
  meMacroscopia.Execute;
end;

procedure TfrmMacroscopia.sbReconhecimentoClick(Sender: TObject);
begin
{
  //Envia dados para as variáveis globais
  vgIDExameRec := dmExames.qyExamesexa_id.Text;
  vgIDEtapaExameRec := 'histologia - macroscopia';
  frmReconhecimento.memDitado.Text := meMacroscopia.Text;
  frmReconhecimento.ShowModal;
}
end;

procedure TfrmMacroscopia.SpeedButton4Click(Sender: TObject);
begin
  AtualizarBlocos;
end;

procedure TfrmMacroscopia.Excluir1Click(Sender: TObject);
begin
  if (TestaExameCob(dbExame.Text) = 0) then
  begin
    if MessageDlg('Deseja realmente apagar o registro?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      dmExames.qyExamesProced.Delete;
  end
  else
    MessageDlg('Este exame já foi gerado cobrança e não pode ser alterado!', mtWarning, [mbok], 0);
end;

procedure TfrmMacroscopia.ExecutaFiltro(vfCodEio: String);
begin
  dmLookups.lkProcExamesHist.Close;
  dmLookups.lkProcExamesHist.SQL.Clear;
  dmLookups.lkProcExamesHist.SQL.Add('select eth_id, eio_id, eth_descricao from examestipohist ');
  dmLookups.lkProcExamesHist.SQL.Add('where eio_id = ');
  dmLookups.lkProcExamesHist.SQL.Add(QuotedStr(vfCodEio));
  dmLookups.lkProcExamesHist.SQL.Add(' order by eth_descricao');
  dmLookups.lkProcExamesHist.Open;
end;

procedure TfrmMacroscopia.FormActivate(Sender: TObject);
begin
  inherited;
  painelProcedimento.Visible := false;
  painelModelo.Visible := false;
  painelTpExame.Visible := false;
  //abre os datasets
  dsBlocos.DataSet.Active := true;
  dsExames.DataSet.Active := true;
  dsExTopografias.DataSet.Active := true;
  dsHistologia.DataSet.Active := true;
  dsLog.DataSet.Active := true;
  dsMacroscopia.DataSet.Active := true;
  dsModMacro.DataSet.Active := true;
  dsProcedimentos.DataSet.Active := true;
  InitMacro;
end;

procedure TfrmMacroscopia.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if TestaDataSets = true then
    if Messagedlg('Existem alterações pendentes,' + #13 + 'deseja salvar?',mtConfirmation,[mbYes, mbNo],0) = mrYes then
      Canclose := False
    else
      Canclose := True;
end;

procedure TfrmMacroscopia.FormKeyPress(Sender: TObject; var Key: Char);
begin
  //inherited;
  if key = #27 then
  begin
    painelProcedimento.Visible := false;
    painelTpExame.Visible := false;
    painelModelo.Visible := false;
  end;
end;

procedure TfrmMacroscopia.LimpaFiltro;
begin
  dmLookups.lkProcExamesTipo.Close;
  dmLookups.lkProcExamesTipo.SQL.Clear;
  dmLookups.lkProcExamesTipo.SQL.Add('select eio_id, eio_descricao from examestipo ');
  dmLookups.lkProcExamesTipo.SQL.Add('order by eio_descricao');
  dmLookups.lkProcExamesTipo.Open;
  dmLookups.lkProcExamesHist.Close;
  dmLookups.lkProcExamesHist.SQL.Clear;
  dmLookups.lkProcExamesHist.SQL.Add('select eth_id, eio_id, eth_descricao from examestipohist ');
  dmLookups.lkProcExamesHist.SQL.Add('where eio_id = ');
  dmLookups.lkProcExamesHist.SQL.Add(QuotedStr('0'));
  dmLookups.lkProcExamesHist.Open;
end;

procedure TfrmMacroscopia.meMacroscopiaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_F12 then
    PostExamesHistMacro(dbExame.Text);
end;

end.
