unit uRevisao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpFormNormal, Vcl.StdCtrls,
  Vcl.Buttons, wwdbedit, Wwdotdot, Wwdbcomb, wwdblook, wwdbdatetimepicker, Vcl.Mask,
  Vcl.DBCtrls, Vcl.ExtCtrls, Data.DB, Vcl.ActnList, Wwdbspin, Vcl.Grids,
  Wwdbigrd, Wwdbgrid, Vcl.ComCtrls, wwriched, wwrichedspellxp, Vcl.Samples.Spin,
  Inifiles, Vcl.Menus, uTmpFormMDI;

type
  TfrmRevisao = class(TfrmTmpFormNormal)
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
    SpeedButton5: TSpeedButton;
    spEditaMatGuia: TSpeedButton;
    SpeedButton6: TSpeedButton;
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
    ActionList1: TActionList;
    actAlternaExame: TAction;
    dsProcExames: TDataSource;
    dsExames: TDataSource;
    dsModelosHist: TDataSource;
    dsExTopografias: TDataSource;
    dsBlocos: TDataSource;
    dsHistologia: TDataSource;
    dsMacroscopia: TDataSource;
    dsLog: TDataSource;
    dsMicroscopia: TDataSource;
    dsImagens: TDataSource;
    dsTissPend: TDataSource;
    dsExamesFinal: TDataSource;
    actDadosClin: TActionList;
    actInsereClin: TAction;
    actEditaClin: TAction;
    actDeletaClin: TAction;
    actGravaClin: TAction;
    actCancelaClin: TAction;
    actGravarAlteracoes: TAction;
    Panel3: TPanel;
    btGravar: TBitBtn;
    btCancelar: TBitBtn;
    btImprimir: TBitBtn;
    btDoenca: TBitBtn;
    btProcedimento: TBitBtn;
    Panel2: TPanel;
    PageControl: TPageControl;
    tsMacro: TTabSheet;
    Panel4: TPanel;
    Label14: TLabel;
    lbMacroscopia: TLabel;
    sbInsereClin: TSpeedButton;
    sbEditaClin: TSpeedButton;
    sbDeletaClin: TSpeedButton;
    sbGravaClin: TSpeedButton;
    sbCancelaClin: TSpeedButton;
    SpeedButton7: TSpeedButton;
    meMacroscopia: TwwDBRichEditMSWord;
    painelTopografia: TPanel;
    Label18: TLabel;
    cbTopografia: TwwDBLookupCombo;
    GridTop: TwwDBGrid;
    painelBlocos: TPanel;
    Label17: TLabel;
    tsMicro: TTabSheet;
    lbMicroscopia: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    sbDelNota: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton8: TSpeedButton;
    meMicroscopia: TwwDBRichEditMSWord;
    meDiagnostico: TwwDBRichEditMSWord;
    meNota: TwwDBRichEditMSWord;
    tsImagem: TTabSheet;
    Image: TImage;
    painelProcedimento: TPanel;
    Label25: TLabel;
    Label26: TLabel;
    Label24: TLabel;
    cbProcedimento: TwwDBLookupCombo;
    btInserir: TBitBtn;
    wwDBGrid2: TwwDBGrid;
    seQuantidade: TSpinEdit;
    dbDtReq: TDBEdit;
    dbTpExame: TDBEdit;
    dbConvenio: TDBEdit;
    dbPaciente: TDBEdit;
    dbDtNasc: TDBEdit;
    dbMedico: TDBEdit;
    dbOrigem: TDBEdit;
    dbDestino: TDBEdit;
    dbPrioridade: TDBEdit;
    dbDtEntrega: TDBEdit;
    Label27: TLabel;
    dsProcedimentos: TDataSource;
    popProcedimento: TPopupMenu;
    Excluir1: TMenuItem;
    wwDBGrid1: TwwDBGrid;
    painelTpExame: TPanel;
    Label19: TLabel;
    Label20: TLabel;
    Label15: TLabel;
    Label23: TLabel;
    cbTipoExame: TwwDBLookupCombo;
    btInsereExame: TBitBtn;
    cbExame: TwwDBLookupCombo;
    edQuantidade: TwwDBSpinEdit;
    cbMaterial: TwwDBLookupCombo;
    btRespAd: TBitBtn;
    popTopografias: TPopupMenu;
    Vincularcomdadoclnicoselecionado1: TMenuItem;
    Label28: TLabel;
    DBText1: TDBText;
    dbGridDadosEx: TwwDBGrid;
    function TestaDataSets: boolean;
    procedure CancelarAlt;
    procedure GravarAlt;
    procedure ImprimeRevisao;
    procedure BuscarNovo;
    procedure InitRevisao;
    procedure CancelaDataSets;
    procedure ExecutaFiltro(vfCodEio: String);
    procedure LimpaFiltro;
    procedure InsereTopografia;
    procedure cbResponsavelExit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure cbTopografiaKeyPress(Sender: TObject; var Key: Char);
    procedure PageControlChange(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure ImageDblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure meMicroscopiaKeyPress(Sender: TObject; var Key: Char);
    procedure meDiagnosticoKeyPress(Sender: TObject; var Key: Char);
    procedure meNotaKeyPress(Sender: TObject; var Key: Char);
    procedure meMacroscopiaKeyPress(Sender: TObject; var Key: Char);
    procedure meMacroscopiaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure meMicroscopiaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure meDiagnosticoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure meNotaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure dsMacroscopiaStateChange(Sender: TObject);
    procedure dsMicroscopiaStateChange(Sender: TObject);
    procedure actAlternaExameExecute(Sender: TObject);
    procedure btImprimirClick(Sender: TObject);
    procedure btDoencaClick(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure edQuantidadeKeyPress(Sender: TObject; var Key: Char);
    procedure actInsereClinExecute(Sender: TObject);
    procedure actEditaClinExecute(Sender: TObject);
    procedure actDeletaClinExecute(Sender: TObject);
    procedure actGravaClinExecute(Sender: TObject);
    procedure actCancelaClinExecute(Sender: TObject);
    procedure actGravarAlteracoesExecute(Sender: TObject);
    procedure spEditaMatGuiaClick(Sender: TObject);
    procedure btProcedimentoClick(Sender: TObject);
    procedure btInserirClick(Sender: TObject);
    procedure dsProcedimentosStateChange(Sender: TObject);
    procedure Excluir1Click(Sender: TObject);
    procedure sbDelNotaClick(Sender: TObject);
    procedure dsHistologiaDataChange(Sender: TObject; Field: TField);
    procedure cbExameEnter(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure btAlterarClick(Sender: TObject);
    procedure dsExamesStateChange(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure cbMaterialExit(Sender: TObject);
    procedure cbTipoExameExit(Sender: TObject);
    procedure cbExameExit(Sender: TObject);
    procedure btRespAdClick(Sender: TObject);
    procedure Vincularcomdadoclnicoselecionado1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRevisao: TfrmRevisao;

implementation

{$R *.dfm}

uses dataExames, dataLookups, dataFinanceiro, uVarGlobal, uRelHistologia,
  dataConsultas, uSelHISTTable, uDaoExamesFinal, uDaoExamesProced,
  uDaoExamesHist, uDaoExamesTop, uDaoExamesBlocos, uDaoResponsaveis,
  uDaoExamesHistMacro, uDaoExamesHistMicro, uDaoExamesTipo, uDaoExames,
  uClassExamesHistMicro, uFuncoesDB, uDaoExamesLogs, UFuncoesTISS, uPendencias,
  uClassExamesTop, uDaoImagens, uFuncoesSistema, uVisImagem, uDoenca,
  uDaoExamesDoencas, uFuncoesFormatacao, uEditMatGuia, uClassExamesProced,
  uDaoConvProc, uEditaDataNasc, uAltExame, uDaoImagensZEOS, dataFiles, uRespAdd,
  uDoencaNew;

function TfrmRevisao.TestaDataSets: boolean;
Var
vResult: boolean;
begin
  try
  vResult := false;
  if dsExames.DataSet.State in [dsInsert, dsEdit] then
    dsExames.DataSet.Post;
  if dsMicroscopia.DataSet.State in [dsInsert, dsEdit] then
    dsMicroscopia.DataSet.Post;
  if dsMacroscopia.DataSet.State in [dsInsert, dsEdit] then
    dsMacroscopia.DataSet.Post;
  if dsHistologia.DataSet.State in [dsInsert, dsEdit] then
    dsHistologia.DataSet.Post;
  if dsExTopografias.DataSet.State in [dsEdit, dsInsert] then
    dsExTopografias.DataSet.Post;
  if dsBlocos.DataSet.State in [dsEdit, dsInsert] then
    dsBlocos.DataSet.Post;
  Result := vResult;
  except
    vResult := true;
    Result := vResult;
  end;
end;

procedure TfrmRevisao.Vincularcomdadoclnicoselecionado1Click(Sender: TObject);
begin
  if MessageDlg('Deseja realmente alterar o vínculo?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    EdtExamesTop;
    SetDadosClin(dsHistologia.DataSet.FieldByName('ehi_id').Value);
    PostExamesTop;
  end;
end;

procedure TfrmRevisao.CancelarAlt;
begin
  if dsExames.DataSet.State in [dsEdit] then
    dmExames.qyExames.Cancel;
  if dsMacroscopia.DataSet.State in [dsInsert, dsEdit] then
    dmExames.qyExamesHistMicro.Cancel;
  if dsMicroscopia.DataSet.State in [dsInsert, dsEdit] then
    dmExames.qyExamesHistMicro.Cancel;
  if dsHistologia.DataSet.State in [dsInsert, dsEdit] then
    dmExames.qyExamesHist.Cancel;
  if dsExTopografias.DataSet.State in [dsEdit, dsInsert] then
    dmExames.qyExamesTop.Cancel;
  if dsBlocos.DataSet.State in [dsEdit, dsInsert] then
    dmExames.qyExamesBlocos.Cancel;
end;

procedure TfrmRevisao.GravarAlt;
begin
  if dsExames.DataSet.State in [dsEdit] then
    dmExames.qyExames.Post;
  if dsMacroscopia.DataSet.State in [dsInsert, dsEdit] then
    dmExames.qyExamesHistMicro.Post;
  if dsMicroscopia.DataSet.State in [dsInsert, dsEdit] then
    dmExames.qyExamesHistMicro.Post;
  if dsHistologia.DataSet.State in [dsInsert, dsEdit] then
    dmExames.qyExamesHist.Post;
  if dsExTopografias.DataSet.State in [dsEdit, dsInsert] then
    dmExames.qyExamesTop.Post;
  if dsBlocos.DataSet.State in [dsEdit, dsInsert] then
    dmExames.qyExamesBlocos.Post;
end;

procedure TfrmRevisao.ImageDblClick(Sender: TObject);
begin
  frmVisImagem.ImgVisualiza.Picture := Image.Picture;
  frmVisImagem.ShowModal;
end;

procedure TfrmRevisao.ImprimeRevisao;
Begin
  vgIDExame := dbExame.Text;
  frmRelHistologia.ShowModal;
end;

procedure TfrmRevisao.actAlternaExameExecute(Sender: TObject);
begin
  BuscarNovo;
end;

procedure TfrmRevisao.actCancelaClinExecute(Sender: TObject);
begin
  dsHistologia.DataSet.Cancel;
end;

procedure TfrmRevisao.actDeletaClinExecute(Sender: TObject);
begin
  if MessageDlg('Deseja realmente apagar o registro?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    dsHistologia.DataSet.Delete;
end;

procedure TfrmRevisao.actEditaClinExecute(Sender: TObject);
begin
  dsHistologia.DataSet.Edit;
  dbGridDadosEx.SetFocus;
end;

procedure TfrmRevisao.actGravaClinExecute(Sender: TObject);
begin
  if dsHistologia.DataSet.State in [dsInsert] then
    dmExames.qyExamesHistehi_id.Value := GetCodigo('ehi_id', 'exameshist');
  dmExames.qyExamesHistexa_id.Text := dbExame.Text;
  dsHistologia.DataSet.Post;
end;

procedure TfrmRevisao.actGravarAlteracoesExecute(Sender: TObject);
begin
  if dsHistologia.DataSet.State in [dsEdit] then
    dmExames.qyExamesHist.Post;
end;

procedure TfrmRevisao.actInsereClinExecute(Sender: TObject);
begin
  dsHistologia.DataSet.Append;
  LimpaFiltro;
  dbGridDadosEx.SetFocus;
end;

procedure TfrmRevisao.btAlterarClick(Sender: TObject);
begin
  vgIDExameSel := dmExames.qyExamesexa_id.Text;
  frmAltExame.ShowModal;
end;

procedure TfrmRevisao.btCancelarClick(Sender: TObject);
begin
  CancelarAlt;
  if MessageDlg('Alterações cancaladas!' + #13 + 'Deseja sair da Revisão?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    Close;
end;

procedure TfrmRevisao.btDoencaClick(Sender: TObject);
begin
  FiltrarExamesDoencas('d.exa_id', '=', dbExame.Text, '0', '0');
  vgIDExameInsDoenca := dbExame.Text;
  frmDoenca.ShowModal; //Antiga tela sem vínculo com o material
  //frmDoencaNew.ShowModal; //Nova tela, vinculando com o material
end;

procedure TfrmRevisao.btGravarClick(Sender: TObject);
begin
  if dsMacroscopia.DataSet.State in [dsEdit] then
    dsMacroscopia.DataSet.Post;
  if dsMicroscopia.DataSet.State in [dsInsert] then
  Begin
    dmExames.qyExamesHistMicroehr_id.Value := GetCodigo('ehr_id','exameshistmicro');
    dmExames.qyExamesHistMicroexa_id.Value := dbExame.Text;
  end;
  if dsHistologia.DataSet.State in [dsInsert] then
  Begin
    dmExames.qyExamesHistehi_id.Value := GetCodigo('ehi_id', 'exameshist');
    dmExames.qyExamesHistexa_id.Text := dbExame.Text;
    dmExames.qyExamesHist.Post;
  end;
  //grava log de usuário
  InsExamesLogs(dmExames.qyExamesexa_id.Text, '6', vgCodUsuarioLog);
  //altera etapa do exame
  if not (dsExames.DataSet.State in [dsEdit]) then
    SetEtapaExame(7);
  if dsExames.DataSet.State in [dsEdit] then
    dmExames.qyExames.Post;
  if dsMicroscopia.DataSet.State in [dsInsert, dsEdit] then
    dmExames.qyExamesHistMicro.Post;
  if dsHistologia.DataSet.State in [dsInsert, dsEdit] then
    dmExames.qyExamesHist.Post;
  if dsExTopografias.DataSet.State in [dsEdit, dsInsert] then
    dmExames.qyExamesTop.Post;
  if dsBlocos.DataSet.State in [dsEdit, dsInsert] then
    dmExames.qyExamesBlocos.Post;
  //verifica pendências TISS
  if VerificaDadosTISS(dmExames.qyExamesexa_id.Text) = true then
  begin
    //volta etapa para a revisão e gera log = MASTER
    InsExamesLogs(dmExames.qyExamesexa_id.Text, '6', '1');
    if MessageDlg('Existe(m) pendência(s) do TISS neste exame!' + #13 + 'gostaria de visualizar?', mtWarning, [mbYes, mbNo], 0 ) = mrYes then
      frmPendencias.ShowModal;
  end;
  //Verifica responsável padrão = 1
  if dmExames.qyExamesres_codigo.Value <> 1 then
    MessageDlg('O responsável selecionado é ' + dmExames.qyExamesres_nome.Text, mtInformation, [mbok], 0);
  //prepara para pedir a impressão
  if MessageDlg('Alterações gravadas com sucesso!' + #13 + 'Deseja imprimí-lo?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    ImprimeRevisao;
end;

procedure TfrmRevisao.btImprimirClick(Sender: TObject);
begin
  ImprimeRevisao;
end;

procedure TfrmRevisao.btInserirClick(Sender: TObject);
Var
vExamesProced: TExamesProced;
vCodConvenio: integer;
vCodTuss: String;
vVlrProced: real;
begin
  if (TestaExameCob(dbExame.Text) = 0) then
  begin
    vCodConvenio := dmExames.qyExamescov_codigo.Value;
    vCodTuss := dmLookups.lkProcProcedimentosprc_tuss.Text;
    vExamesProced := TExamesProced.Create;
    vExamesProced.Exp_id := 0;
    vExamesProced.Exa_id := dbExame.Text;
    vExamesProced.Prc_tuss := dmLookups.lkProcProcedimentosprc_tuss.Value;
    vExamesProced.Prc_descricao := dmLookups.lkProcProcedimentosprc_descricao.Value;
    vExamesProced.Exp_quant := seQuantidade.Value;
    //Busca valor do procedimento
    if vCodConvenio > 1 then
    begin
      vVlrProced := GetVlrTotconvProc(vCodConvenio, StrToInt(vCodTuss));
      if vVlrProced <> 0 then
        vExamesProced.Exp_unitario := vVlrProced
      else  //caso o convênio não tenha valor diferenciado, busca valor da tabela padrão
        vExamesProced.Exp_unitario := dmLookups.lkProcProcedimentosprc_vlrtotal.Value;
    end
    else //Traz valor da tabela padrão
      vExamesProced.Exp_unitario := dmLookups.lkProcProcedimentosprc_vlrtotal.Value;
    vExamesProced.Exp_total  := vExamesProced.Exp_quant * vExamesProced.Exp_unitario;
    SetValuesExamesProced(vExamesProced);
    if MessageDlg('Procedimento selecionado com sucesso!' +#13 + 'Deseja inserir outro?', mtConfirmation, [mbyes, mbno], 0) = mrYes then
    begin
      seQuantidade.Value := 1;
      cbProcedimento.Clear;
      cbProcedimento.SetFocus;
    end
    else
      painelProcedimento.Visible := false;
    vExamesProced.Free;
  end
  else
    MessageDlg('Este exame já foi gerado cobrança e não pode ser alterado!', mtWarning, [mbok], 0);
end;

procedure TfrmRevisao.btProcedimentoClick(Sender: TObject);
begin
  if painelProcedimento.Visible = true then
    painelProcedimento.Visible := false
  else
  begin
    seQuantidade.Value := 1;
    painelTpExame.Visible := false;
    cbProcedimento.Clear;
    painelProcedimento.Visible := true;
    cbProcedimento.SetFocus;
  end;
end;

procedure TfrmRevisao.btRespAdClick(Sender: TObject);
begin
  vgNumeExameRespAd := dbExame.Text;
  frmRespAdd.ShowModal;
end;

procedure TfrmRevisao.BuscarNovo;
begin
  CancelaDataSets;
  //CriaForm(TfrmSelExameLaudo, frmSelExameLaudo);
  //Envia tabela exames para o registro atual e abre a tela de busca
  vgIDExameBuscaTb := dmExames.qyExamesexa_id.Text;
  //Envia tipo de busca / etapa 2 = Captura
  vgIDTpBusca := '5';
  dmConsultas.tbExamesHist.Open;
  dmConsultas.tbExamesHist.Refresh;
  dmConsultas.tbExamesHist.Locate('exa_id', vgIDExameBuscaTb, [LOPARTIALKEY, LOCASEINSENSITIVE]);
  frmSelHISTTable.ShowModal;
  //Carrega exame
  InitRevisao;
end;

procedure TfrmRevisao.InitRevisao;
Var
vCodMed: String;
begin
  //limpa filtro das tabelas Exames
  LimpaFiltro;
  //filtra tabela de finalização
  FiltrarExamesFinal('exa_id', '=', dbExame.Text, '0', '0');
  //filtra exames procedimentos
  FiltrarExamesProced('e.exa_id', '=', dbExame.Text, '0', '0');
  //filtra a tabela de Histologia
  FiltrarExamesHist('h.exa_id', '=', dbExame.Text, '0', '0');
  //fitra topografias
  FiltrarExamesTop('e.exa_id', '=', dbExame.Text, '0', '0');
  //filtra blocos
  FiltrarExamesBlocos('e.exa_id', '=', dbExame.Text, 'e.etg_id, e.ebl_seq', '0');
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
  end;
  //filtra a tabela ExamesHistMacro
  FiltrarExamesHistMacro('exa_id', '=', dbExame.Text, 'ehm_id', '0');
  //testa se existe registro na tabela microscopia, caso exista edita, caso não exista insere
  FiltrarExamesHistMicro('exa_id', '=', dbExame.Text, '0', '0');
  if dmExames.qyExamesHistMicroehr_id.IsNull then
    dmExames.qyExamesHistMicro.Insert
  else
    dmExames.qyExamesHistMicro.Edit;
  if cbResponsavel.Text = '' then
    cbResponsavel.SetFocus
  else
  begin
    PageControl.ActivePage := tsMacro;
    tsMacro.Highlighted := true;
    tsMicro.Highlighted := false;
    tsImagem.Highlighted := false;
    meMacroscopia.SetFocus;
  end;
end;

procedure TfrmRevisao.CancelaDataSets;
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
end;

procedure TfrmRevisao.cbExameEnter(Sender: TObject);
begin
  if cbTipoExame.Text <> '' then
    ExecutaFiltro(dmLookups.lkProcExamesTipoeio_id.Text)
  else
    ExecutaFiltro('0');
end;

procedure TfrmRevisao.cbExameExit(Sender: TObject);
begin
  if dsHistologia.DataSet.State in [dsInsert, dsEdit] then
    dsHistologia.DataSet.FieldByName('eth_id').Value := dmLookups.lkProcExamesHisteth_id.Value;
end;

procedure TfrmRevisao.cbMaterialExit(Sender: TObject);
begin
  if dsHistologia.DataSet.State in [dsInsert, dsEdit] then
    dsHistologia.DataSet.FieldByName('mat_id').Value := dmLookups.lkProcMateriaismat_id.Value;
end;

procedure TfrmRevisao.cbResponsavelExit(Sender: TObject);
begin
  if cbResponsavel.Text <> '' then
  begin
    SetExamesResp(dmLookups.lkProcResponsaveisres_codigo.Value);
    dsExames.DataSet.Refresh;
  end;
end;

procedure TfrmRevisao.cbTipoExameExit(Sender: TObject);
begin
    if dsHistologia.DataSet.State in [dsInsert, dsEdit] then
    dsHistologia.DataSet.FieldByName('eio_id').Value := dmLookups.lkProcExamesTipoeio_id.Value;
end;

procedure TfrmRevisao.cbTopografiaKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    InsereTopografia;
end;

procedure TfrmRevisao.InsereTopografia;
Begin
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

procedure TfrmRevisao.dsExamesStateChange(Sender: TObject);
begin
  if dsExames.DataSet.State in [dsEdit] then
    btAlterar.Enabled := false
  else
    btAlterar.Enabled := true;
end;

procedure TfrmRevisao.dsHistologiaDataChange(Sender: TObject; Field: TField);
begin
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

procedure TfrmRevisao.dsMacroscopiaStateChange(Sender: TObject);
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

procedure TfrmRevisao.dsMicroscopiaStateChange(Sender: TObject);
begin
  if dsMicroscopia.DataSet.State in [dsInsert] then
  begin
    lbMicroscopia.Font.Color := clRed;
    lbMicroscopia.Caption := 'Descrição da Microscopia (Inserindo)';
    meMicroscopia.Color := clWindow;
    meDiagnostico.Color := clWindow;
    meNota.Color := clWindow;
  end;
  if dsMicroscopia.DataSet.State in [dsEdit] then
  begin
    lbMicroscopia.Font.Color := clRed;
    lbMicroscopia.Caption := 'Descrição da Microscopia (Editando)';
    meMicroscopia.Color := clWindow;
    meDiagnostico.Color := clWindow;
    meNota.Color := clWindow;
  end;
  if dsMicroscopia.DataSet.State in [dsBrowse] then
  begin
    lbMicroscopia.Font.Color := clGreen;
    lbMicroscopia.Caption := 'Descrição da Microscopia (Gravado / Visualizando)';
    meMicroscopia.Color := clBtnFace;
    meDiagnostico.Color := clBtnFace;
    meNota.Color := clBtnFace;
  end;
end;

procedure TfrmRevisao.dsProcedimentosStateChange(Sender: TObject);
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

procedure TfrmRevisao.edQuantidadeKeyPress(Sender: TObject; var Key: Char);
begin
  key := Numeros(key);
end;

procedure TfrmRevisao.Excluir1Click(Sender: TObject);
begin
  if (TestaExameCob(dbExame.Text) = 0) then
  begin
    if MessageDlg('Deseja realmente apagar o registro?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      dmExames.qyExamesProced.Delete;
  end
  else
    MessageDlg('Este exame já foi gerado cobrança e não pode ser alterado!', mtWarning, [mbok], 0);
end;

procedure TfrmRevisao.ExecutaFiltro(vfCodEio: String);
begin
  FiltrarProcExamesHist(vfCodEio);
end;

procedure TfrmRevisao.FormActivate(Sender: TObject);
begin
  painelProcedimento.Visible := false;
  tsMicro.Highlighted := true;
  PageControl.ActivePage := tsMicro;
  //abre os datasets
  dsLog.DataSet.Active := true;
  dsExames.DataSet.Active := true;
  dsHistologia.DataSet.Active := true;
  dsMacroscopia.DataSet.Active := true;
  dsMicroscopia.DataSet.Active := true;
  dsProcedimentos.DataSet.Active := true;
  dsExTopografias.DataSet.Active := true;
  dsImagens.DataSet.Active := true;
  dsModelosHist.DataSet.Active := true;
  dsBlocos.DataSet.Active := true;
  dsTissPend.DataSet.Active := true;
  dsExamesFinal.DataSet.Active := true;
  InitRevisao;
end;

procedure TfrmRevisao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if VerificaDadosTISS(dmExames.qyExamesexa_id.Text) = true then
    SetEtapaExame(5);
  PageControl.ActivePage := tsMicro;
  inherited;
end;

procedure TfrmRevisao.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if TestaDataSets = true then
    if Messagedlg('Existem alterações pendentes,' + #13 + 'deseja salvar?',mtConfirmation,[mbYes, mbNo],0) = mrYes then
    begin
      GravarAlt;
      Canclose := True
    end
    else
    begin
      CancelarAlt;
      Canclose := True;
    end;
end;

procedure TfrmRevisao.FormKeyPress(Sender: TObject; var Key: Char);
begin
  //inherited;
end;

procedure TfrmRevisao.LimpaFiltro;
begin
  FiltrarProcExamesTipo('0');
  FiltrarProcExamesHist('0');
end;

procedure TfrmRevisao.meDiagnosticoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_F4 then
  begin
    if dsMicroscopia.DataSet.State in [dsEdit, dsInsert] then
      dsMicroscopia.DataSet.Post;
  end;
end;

procedure TfrmRevisao.meDiagnosticoKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #9 then
  begin
    key := #0;
    meNota.SetFocus;
  end;
end;

procedure TfrmRevisao.meMacroscopiaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_F4 then
  begin
    if dsMacroscopia.DataSet.State in [dsEdit, dsInsert] then
      dsMacroscopia.DataSet.Post;
  end;
end;

procedure TfrmRevisao.meMacroscopiaKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #9 then
  begin
    key := #0;
    cbTopografia.SetFocus;
  end;
end;

procedure TfrmRevisao.meMicroscopiaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_F4 then
  begin
    if dsMicroscopia.DataSet.State in [dsEdit, dsInsert] then
      dsMicroscopia.DataSet.Post;
  end;
end;

procedure TfrmRevisao.meMicroscopiaKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #9 then
  begin
    key := #0;
    meDiagnostico.SetFocus;
  end;
end;

procedure TfrmRevisao.meNotaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_F4 then
  begin
    if dsMicroscopia.DataSet.State in [dsEdit, dsInsert] then
      dsMicroscopia.DataSet.Post;
  end;
end;

procedure TfrmRevisao.meNotaKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #9 then
  begin
    key := #0;
    btGravar.SetFocus;
  end;
end;

procedure TfrmRevisao.PageControlChange(Sender: TObject);
Var
vPath, vLocGravar: String;
vControl: TInifile;
vfiguraJPG, vFiguraBMP, vDirTemp, vArqTempJPG, vArqTempBMP: String;
vOrigem, vDestino, vFigND: String;
begin
  if PageControl.ActivePage = tsMacro then
  Begin
    tsMacro.Highlighted := true;
    tsMicro.Highlighted := false;
    tsImagem.Highlighted := false;
  end;
  if PageControl.ActivePage = tsMicro then
  Begin
    tsMacro.Highlighted := false;
    tsMicro.Highlighted := true;
    tsImagem.Highlighted := false;
  end;
  if PageControl.ActivePage = tsImagem then
  Begin
    tsMacro.Highlighted := false;
    tsMicro.Highlighted := false;
    tsImagem.Highlighted := true;
    vgIDCaptura := dmExames.qyExamesexa_id.Text;
    vControl := Tinifile.create(vgArqIni);
    vFigND := vControl.ReadString('Imagens','ND','');
    //testa se a figura existe e limpa panel com imagem local
    if FileExists(vFigND) then
      Image.Picture.LoadFromFile(vFigND);
    vLocGravar := vControl.ReadString('Captura','Local','');
    vFiguraJPG := vLocGravar + '\' + vgIDCaptura + '.jpg';
    vFiguraBMP := vLocGravar + '\' + vgIDCaptura + '.bmp';
    //filtra tabela de imagens
    FiltrarImagensZeos('img_exame', '=', vgIDCaptura, '0', '1');
    if not dmFiles.qyImagensimg_id.IsNull then
    Begin
      //caso a tabela possua a imagem, salva em pasta temporária e copia para a pasta correta
      vDirTemp := vControl.ReadString('Temp','Diretorio','');
      vArqTempJPG := vDirTemp + '\' + vgIDCaptura + '.jpg';
      dmFiles.qyImagensimg_imagem.SaveToFile(vArqTempJPG);
      ConvertJPG_BMP(vArqTempJPG);
      vArqTempBMP := vDirTemp + '\' + vgIDCaptura + '.bmp';
      vOrigem := vArqTempBMP;
      vDestino := vFiguraBMP;
      //o parametro false na função copyfile sobreescreve o arquivo caso exista
      if not CopyFile(PChar(vOrigem), PChar(vDestino), false) then
        ShowMessage('Erro ao copiar ' + vOrigem + ' para ' + vDestino);
      Image.Picture.LoadFromFile(vFiguraBMP);
    end;
    vControl.free;
  end;
end;

procedure TfrmRevisao.sbDelNotaClick(Sender: TObject);
begin
  if MessageDlg('Deseja realmente apagar as notas complementares?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    if dsMicroscopia.DataSet.State in [dsEdit, dsInsert] then
      dsMicroscopia.DataSet.Cancel;
    dsMicroscopia.DataSet.Edit;
    dmExames.qyExamesHistMicroehr_complemento.Clear;
    dsMicroscopia.DataSet.Post;
  end;
end;

procedure TfrmRevisao.spEditaMatGuiaClick(Sender: TObject);
begin
  frmEditMatGuia.ShowModal;
end;

procedure TfrmRevisao.SpeedButton2Click(Sender: TObject);
begin
  meMicroscopia.Execute;
end;

procedure TfrmRevisao.SpeedButton3Click(Sender: TObject);
begin
  meDiagnostico.Execute;
end;

procedure TfrmRevisao.SpeedButton4Click(Sender: TObject);
begin
  meNota.Execute;
end;

procedure TfrmRevisao.SpeedButton5Click(Sender: TObject);
begin
  try
    if MessageDlg('Este processo é um pouco lento, deseja continuar?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      if MessageDlg('Deseja corrigir a Macroscopia?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        meMacroscopia.MSWordSpellChecker;
      if MessageDlg('Deseja corrigir a Microscopia?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        meMicroscopia.MSWordSpellChecker;
      if MessageDlg('Deseja corrigir o Diagnóstico?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        meDiagnostico.MSWordSpellChecker;
      if MessageDlg('Deseja corrigir o Complemento?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        meNota.MSWordSpellChecker;
    end;
  except
    MessageDlg('Não foi possível carregar o corretor!', mtError, [mbok], 0);
  end;
end;

procedure TfrmRevisao.SpeedButton6Click(Sender: TObject);
begin
  frmEditaDataNasc.ShowModal;
end;

procedure TfrmRevisao.SpeedButton7Click(Sender: TObject);
begin
  meMacroscopia.Execute;
end;

procedure TfrmRevisao.SpeedButton8Click(Sender: TObject);
begin
  if MessageDlg('Deseja realmente excluir a microscopia?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    dsMicroscopia.DataSet.Edit;
    dsMicroscopia.DataSet.FieldByName('ehr_microscopia').Clear;
    dsMicroscopia.DataSet.Post;
  end;
end;

end.
