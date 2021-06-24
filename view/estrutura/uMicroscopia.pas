unit uMicroscopia;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpFormNormal, Vcl.StdCtrls,
  Vcl.Buttons, Data.DB, wwdbedit, Wwdotdot, Wwdbcomb, wwdblook, ClipBrd,
  wwdbdatetimepicker, Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls, Wwdbspin, Vcl.Grids,
  Wwdbigrd, Wwdbgrid, Vcl.ComCtrls, wwriched, wwrichedspellxp, Vcl.ActnList,
  uClassExamesHistMicro, Inifiles;

type
  TfrmMicroscopia = class(TfrmTmpFormNormal)
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
    sbAlterna: TSpeedButton;
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
    dsExames: TDataSource;
    dsProcExames: TDataSource;
    dsModelosHist: TDataSource;
    dsExTopografias: TDataSource;
    dsBlocos: TDataSource;
    dsHistologia: TDataSource;
    dsMacroscopia: TDataSource;
    dsLog: TDataSource;
    dsImagens: TDataSource;
    dsMicroscopia: TDataSource;
    Panel3: TPanel;
    sbReconhecimento: TSpeedButton;
    btGravar: TBitBtn;
    btCancelar: TBitBtn;
    BitBtn2: TBitBtn;
    btImprimir: TBitBtn;
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
    sbMacroscopia: TSpeedButton;
    sbSelectAllMacro: TSpeedButton;
    sbMaiusculasMacro: TSpeedButton;
    sbMinusculasMacro: TSpeedButton;
    meMacroscopia: TwwDBRichEditMSWord;
    painelTopografia: TPanel;
    Label18: TLabel;
    cbTopografia: TwwDBLookupCombo;
    GridTop: TwwDBGrid;
    painelBlocos: TPanel;
    Label17: TLabel;
    dbGridDadosClin: TwwDBGrid;
    Panel5: TPanel;
    Label19: TLabel;
    Label15: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    cbTipoExame: TwwDBLookupCombo;
    btInsereExame: TBitBtn;
    cbExame: TwwDBLookupCombo;
    edQuantidade: TwwDBSpinEdit;
    cbMaterial: TwwDBLookupCombo;
    tsMicro: TTabSheet;
    lbMicroscopia: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    sbMicroscopia: TSpeedButton;
    sbDiagnostico: TSpeedButton;
    sbNota: TSpeedButton;
    sbSelecionaTodos: TSpeedButton;
    sbMaiusculas: TSpeedButton;
    sbMinusculas: TSpeedButton;
    sbSelectAllDiag: TSpeedButton;
    sbMaiusculasDiag: TSpeedButton;
    sbMinusculasDiag: TSpeedButton;
    sbSelectAllNota: TSpeedButton;
    sbMaiusculaNota: TSpeedButton;
    sbMinusculaNota: TSpeedButton;
    meMicroscopia: TwwDBRichEditMSWord;
    meDiagnostico: TwwDBRichEditMSWord;
    meNota: TwwDBRichEditMSWord;
    tsImagem: TTabSheet;
    Image: TImage;
    painelTpExame: TPanel;
    Label20: TLabel;
    cbModelo: TwwDBLookupCombo;
    btInsereModelo: TBitBtn;
    ActionList1: TActionList;
    actGravarAlteracoes: TAction;
    actAlternaExame: TAction;
    dbDtRequisicao: TDBEdit;
    dbTpExame: TDBEdit;
    dbConvenio: TDBEdit;
    dbPaciente: TDBEdit;
    dbDtNasc: TDBEdit;
    dbMedico: TDBEdit;
    dbOrigem: TDBEdit;
    dbDestino: TDBEdit;
    dbPrioridade: TDBEdit;
    dbDtEntrega: TDBEdit;
    Label25: TLabel;
    wwDBGrid1: TwwDBGrid;
    SpeedButton2: TSpeedButton;
    btDoenca: TBitBtn;
    procedure RichtToStr(vfTexto: String; vfTipo: String);
    procedure BuscarNovo;
    procedure Gravar;
    function TestaDataSets: boolean;
    procedure InitMicro;
    procedure CancelaDataSets;
    procedure ExecutaFiltro(vfCodEio: String);
    procedure LimpaFiltro;
    procedure cbResponsavelExit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure CancelarAlt;
    procedure InsereTopografia;
    procedure btCancelarClick(Sender: TObject);
    procedure cbTopografiaKeyPress(Sender: TObject; var Key: Char);
    procedure btInsereExameClick(Sender: TObject);
    procedure PageControlChange(Sender: TObject);
    procedure sbMicroscopiaClick(Sender: TObject);
    procedure sbDiagnosticoClick(Sender: TObject);
    procedure sbNotaClick(Sender: TObject);
    procedure ImageDblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure meMacroscopiaKeyPress(Sender: TObject; var Key: Char);
    procedure meMicroscopiaKeyPress(Sender: TObject; var Key: Char);
    procedure meDiagnosticoKeyPress(Sender: TObject; var Key: Char);
    procedure meNotaKeyPress(Sender: TObject; var Key: Char);
    procedure meMacroscopiaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure meDiagnosticoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure meNotaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure meMicroscopiaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dsMacroscopiaDataChange(Sender: TObject; Field: TField);
    procedure actGravarAlteracoesExecute(Sender: TObject);
    procedure dsMicroscopiaDataChange(Sender: TObject; Field: TField);
    procedure actAlternaExameExecute(Sender: TObject);
    procedure btImprimirClick(Sender: TObject);
    procedure sbInsereClinClick(Sender: TObject);
    procedure sbEditaClinClick(Sender: TObject);
    procedure sbDeletaClinClick(Sender: TObject);
    procedure sbGravaClinClick(Sender: TObject);
    procedure sbCancelaClinClick(Sender: TObject);
    procedure dsHistologiaStateChange(Sender: TObject);
    procedure cbExameEnter(Sender: TObject);
    procedure sbMacroscopiaClick(Sender: TObject);
    procedure sbSelecionaTodosClick(Sender: TObject);
    procedure sbMaiusculasClick(Sender: TObject);
    procedure sbMinusculasClick(Sender: TObject);
    procedure sbSelectAllDiagClick(Sender: TObject);
    procedure sbMaiusculasDiagClick(Sender: TObject);
    procedure sbMinusculasDiagClick(Sender: TObject);
    procedure sbSelectAllNotaClick(Sender: TObject);
    procedure sbMaiusculaNotaClick(Sender: TObject);
    procedure sbMinusculaNotaClick(Sender: TObject);
    procedure sbSelectAllMacroClick(Sender: TObject);
    procedure sbMaiusculasMacroClick(Sender: TObject);
    procedure sbMinusculasMacroClick(Sender: TObject);
    procedure btAlterarClick(Sender: TObject);
    procedure dsExamesStateChange(Sender: TObject);
    procedure sbReconhecimentoClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure btInsereModeloClick(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton2Click(Sender: TObject);
    procedure btDoencaClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMicroscopia: TfrmMicroscopia;

implementation

{$R *.dfm}

uses dataExames, uVarGlobal, dataConsultas, uSelHISTTable, dataGestao,
  dataLookups, uDaoExamesHistMicro, uDaoExamesHistMacro, uDaoExamesHist,
  uDaoExamesTop, uDaoExamesLogs, uDaoExames, uRelHistologia, uDaoExamesBlocos,
  uDaoMedicos, uDaoExamesTipo, uClassExamesTop, uDaoImagens, uFuncoesSistema,
  uVisImagem, uAltExame, uFuncoesDB, uDaoResponsaveis, dataFiles,
  uDaoImagensZEOS, uDaoExamesDoencas, uDoenca;

procedure TfrmMicroscopia.RichtToStr(vfTexto: String; vfTipo: String);
{Converter RichText formatado em texto não formatado. Onde : Texto é o texto formatado contido em um campo Blob By Adriano Barbosa }
var
vCb: TClipboard; // utiliza Unit Clipbrd
vRt: TwwDBRichEditMSWord;
vFr: TForm;
vTam: Integer;
begin
  vCb.Create;
  if vFr <> nil then
    vFr := TForm.Create(nil); // Cria um form
  vCb := Clipboard;
  vRt := TwwDBRichEditMSWord.Create(vFr); // Cria um richedit
  vTam := 0;
  try
    vCb.Clear; // Limpa memória
  with vRt do
  begin
    Parent := vFr; // Atribui um parent ao RichEdit
    Text := vfTexto; // Recebe o texto formatado
    SelectAll; // Seleciona todo o texto
    CopyToClipboard; // Envia para memória (texto sem formato)
  end;
  vTam := Length(vCb.AsText);
  if vfTipo = 'microscopia' then
    vgMicroscopia := Copy(vCb.AsText, 1, vTam); // Retorna o texto sem formato com 255 caracteres.
  if vfTipo = 'diagnostico' then
    vgDiagnostico := Copy(vCb.AsText, 1, vTam); // Retorna o texto sem formato com 255 caracteres.
  finally
    vCb.Free;
    vRt.Free; // Libera o RichEdit
    vFr.Free; // Libera o Form
  end;
end;

procedure TfrmMicroscopia.sbCancelaClinClick(Sender: TObject);
begin
  dsHistologia.DataSet.Cancel;
end;

procedure TfrmMicroscopia.sbDeletaClinClick(Sender: TObject);
begin
  if MessageDlg('Deseja realmente apagar o registro?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    dsHistologia.DataSet.Delete;
end;

procedure TfrmMicroscopia.sbDiagnosticoClick(Sender: TObject);
begin
  meDiagnostico.Execute;
end;

procedure TfrmMicroscopia.sbEditaClinClick(Sender: TObject);
begin
  dsHistologia.DataSet.Edit;
  dbGridDadosClin.SetFocus;
end;

procedure TfrmMicroscopia.sbGravaClinClick(Sender: TObject);
begin
  PostExamesHist(dbExame.Text);
end;

procedure TfrmMicroscopia.sbInsereClinClick(Sender: TObject);
begin
  dsHistologia.DataSet.Append;
  LimpaFiltro;
  dbGridDadosClin.SetFocus;
end;

procedure TfrmMicroscopia.sbMacroscopiaClick(Sender: TObject);
begin
  meMacroscopia.Execute;
end;

procedure TfrmMicroscopia.sbMaiusculaNotaClick(Sender: TObject);
begin
  meNota.SelText := UpperCase(meNota.SelText);
end;

procedure TfrmMicroscopia.sbMaiusculasClick(Sender: TObject);
begin
  meMicroscopia.SelText := UpperCase(meMicroscopia.SelText);
end;

procedure TfrmMicroscopia.sbMaiusculasDiagClick(Sender: TObject);
begin
  meDiagnostico.SelText := UpperCase(meDiagnostico.SelText);
end;

procedure TfrmMicroscopia.sbMaiusculasMacroClick(Sender: TObject);
begin
  meMacroscopia.SelText := UpperCase(meMacroscopia.SelText);
end;

procedure TfrmMicroscopia.sbMicroscopiaClick(Sender: TObject);
begin
  meMicroscopia.Execute;
end;

procedure TfrmMicroscopia.sbMinusculaNotaClick(Sender: TObject);
begin
  meNota.SelText := LowerCase(meNota.SelText);
end;

procedure TfrmMicroscopia.sbMinusculasClick(Sender: TObject);
begin
  meMicroscopia.SelText := LowerCase(meMicroscopia.SelText);
end;

procedure TfrmMicroscopia.sbMinusculasDiagClick(Sender: TObject);
begin
  meDiagnostico.SelText := LowerCase(meDiagnostico.SelText);
end;

procedure TfrmMicroscopia.sbMinusculasMacroClick(Sender: TObject);
begin
  meMacroscopia.SelText := LowerCase(meMacroscopia.SelText);
end;

procedure TfrmMicroscopia.sbNotaClick(Sender: TObject);
begin
  meNota.Execute;
end;

procedure TfrmMicroscopia.sbSelecionaTodosClick(Sender: TObject);
begin
  meMicroscopia.SelectAll;
end;

procedure TfrmMicroscopia.sbSelectAllDiagClick(Sender: TObject);
begin
  meDiagnostico.SelectAll;
end;

procedure TfrmMicroscopia.sbSelectAllMacroClick(Sender: TObject);
begin
  meMacroscopia.SelectAll;
end;

procedure TfrmMicroscopia.sbSelectAllNotaClick(Sender: TObject);
begin
  meNota.SelectAll;
end;

procedure TfrmMicroscopia.SpeedButton2Click(Sender: TObject);
begin
  if MessageDlg('Deseja realmente excluir a microscopia?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    dsMicroscopia.DataSet.Edit;
    dsMicroscopia.DataSet.FieldByName('ehr_microscopia').Clear;
    dsMicroscopia.DataSet.Post;
  end;
end;

procedure TfrmMicroscopia.sbReconhecimentoClick(Sender: TObject);
begin
  //
end;

procedure TfrmMicroscopia.actAlternaExameExecute(Sender: TObject);
begin
  BuscarNovo;
end;

procedure TfrmMicroscopia.actGravarAlteracoesExecute(Sender: TObject);
begin
  Gravar;
end;

procedure TfrmMicroscopia.BitBtn2Click(Sender: TObject);
Var
vErro: boolean;
begin
  vErro := false;
  //Tenta gravar a Microscopia primeiro
  try
    if dmExames.qyExamesHistMicro.State in [dsInsert, dsEdit] then
    begin
      //Campo ehr_id (PK)
      if dmExames.qyExamesHistMicroehr_id.IsNull then
        dmExames.qyExamesHistMicroehr_id.Value := GetCodigo('ehr_id', 'exameshistmicro');
      //Campo exa_id (FK)
      dmExames.qyExamesHistMicroexa_id.Text := dbExame.Text;
            dmExames.qyExamesHistMicro.Post;
    end;
  except
    on E: Exception do
    Begin
      vErro := true;
      MessageDlg('Erro ao gravar Alteração / Inserção (Microscopia)!' + #13#10 +
          E.Message,mtError,[mbOk],0);
      dmExames.qyExamesHistMicro.Refresh;
    end;
  end;
  //Testa se existe erro
  if vErro = false then
  Begin
    PageControl.ActivePage := tsMicro;
    if painelTpExame.Visible = false then
    Begin
      cbModelo.Clear;
      painelTpExame.Visible := true;
      LimpaFiltro;
    end
    else
      painelTpExame.Visible := false;
  end
  else
    MessageDlg('Não foi possível abrir a tela de modelos!', mtWarning, [mbok], 0);
end;

procedure TfrmMicroscopia.btAlterarClick(Sender: TObject);
begin
  vgIDExameSel := dmExames.qyExamesexa_id.Text;
  frmAltExame.ShowModal;
end;

procedure TfrmMicroscopia.btCancelarClick(Sender: TObject);
begin
  CancelarAlt;
  if MessageDlg('Alterações cancaladas!' + #13 +#13 + 'Deseja sair da microscopia?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    Close;
end;

procedure TfrmMicroscopia.btDoencaClick(Sender: TObject);
begin
  FiltrarExamesDoencas('d.exa_id', '=', dbExame.Text, '0', '0');
  vgIDExameInsDoenca := dbExame.Text;
  frmDoenca.ShowModal; //Antiga tela sem vínculo com o material
end;

procedure TfrmMicroscopia.btGravarClick(Sender: TObject);
begin
  Gravar;
end;

procedure TfrmMicroscopia.btImprimirClick(Sender: TObject);
begin
  Gravar;
end;

procedure TfrmMicroscopia.btInsereExameClick(Sender: TObject);
Var
vMicroscopia, vDiagnostico: String;
ExamesHistMicro: TExamesHistMicro;
begin
  if cbModelo.Text <> '' then
  Begin
    ExamesHistMicro := TExamesHistMicro.Create;
    if dmExames.qyExamesHistMicroehr_id.IsNull then
      InsertExamesHistMicro;
    if not(dmExames.qyExamesHistMicro.State in [dsInsert, dsEdit]) then
      EdtExamesHistMicro;
    if (dmExames.qyExamesHistMicro.State in [dsInsert]) then
      SetCodigoExamesHistMicro;
    if ((dmExames.qyExamesHistMicroehr_microscopia.Text = '') or (dmExames.qyExamesHistMicroehr_microscopia.IsNull)) then
      ExamesHistMicro.Ehr_Microscopia := dmExames.qyModLaudoHistlmh_microscopia.Text
    else
    begin
      if MessageDlg('Já existe Microscopia inserida, deseja excluir os dados existentes?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      Begin
        meMicroscopia.Clear;
        ExamesHistMicro.Ehr_Microscopia := dmExames.qyModLaudoHistlmh_microscopia.Text;
      end
      else
      begin
        RichtToStr(dmExames.qyModLaudoHistlmh_microscopia.Text, 'microscopia');
        meMicroscopia.Lines.Append(vgMicroscopia);
      end;
    end;
    if ((dmExames.qyExamesHistMicroehr_diagnostico.Text = '') or (dmExames.qyExamesHistMicroehr_diagnostico.IsNull)) then
      ExamesHistMicro.Ehr_Diagnostico := dmExames.qyModLaudoHistlmh_diagnostico.Text
    else
    begin
      if MessageDlg('Já existe Diagnóstico inserido, deseja excluir os dados existentes?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
        meDiagnostico.Clear;
        ExamesHistMicro.Ehr_Diagnostico := dmExames.qyModLaudoHistlmh_diagnostico.Text;
      end
      else
      begin
        RichtToStr(dmExames.qyModLaudoHistlmh_diagnostico.Text, 'diagnostico');
        meDiagnostico.Lines.Append(vgDiagnostico);
      end;
    end;
    painelTpExame.Visible := false;
    ExamesHistMicro.Exa_ID := dbExame.Text;
    SetValuesExamesHistMicro(ExamesHistMicro);
    PostExamesHistMicro(dbExame.Text);
    dmExames.qyExamesHistMicro.Refresh;
    ExamesHistMicro.Free;
  end
  else
    MessageDlg('você deve selecionar o modelo!', mtWarning, [mbok],0);
end;

procedure TfrmMicroscopia.btInsereModeloClick(Sender: TObject);
Var
vMicroscopia, vDiagnostico: String;
begin
  if cbModelo.Text <> '' then
  Begin
    if dmExames.qyExamesHistMicroehr_id.IsNull then
      dmExames.qyExamesHistMicro.Insert;
    if not(dmExames.qyExamesHistMicro.State in [dsInsert, dsEdit]) then
      dmExames.qyExamesHistMicro.Edit;
    if (dmExames.qyExamesHistMicro.State in [dsInsert]) then
      dmExames.qyExamesHistMicroehr_id.Value := GetCodigo('ehr_id', 'exameshistmicro');
    if ((dmExames.qyExamesHistMicroehr_microscopia.Text = '') or (dmExames.qyExamesHistMicroehr_microscopia.IsNull)) then
      dmExames.qyExamesHistMicroehr_microscopia.Value := dmExames.qyModLaudoHistlmh_microscopia.Value
    else
    begin
      if MessageDlg('Já existe Microscopia inserida, deseja excluir os dados existentes?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      Begin
        meMicroscopia.Clear;
        dmExames.qyExamesHistMicroehr_microscopia.Value := dmExames.qyModLaudoHistlmh_microscopia.Value;
      end
      else
      begin
        RichtToStr(dmExames.qyModLaudoHistlmh_microscopia.Text, 'microscopia');
        meMicroscopia.Lines.Append(vgMicroscopia);
      end;
    end;
    if ((dmExames.qyExamesHistMicroehr_diagnostico.Text = '') or (dmExames.qyExamesHistMicroehr_diagnostico.IsNull)) then
      dmExames.qyExamesHistMicroehr_diagnostico.Value := dmExames.qyModLaudoHistlmh_diagnostico.Value
    else
    begin
      if MessageDlg('Já existe Diagnóstico inserido, deseja excluir os dados existentes?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
        meDiagnostico.Clear;
        dmExames.qyExamesHistMicroehr_diagnostico.Value := dmExames.qyModLaudoHistlmh_diagnostico.Value;
      end
      else
      begin
        RichtToStr(dmExames.qyModLaudoHistlmh_diagnostico.Text, 'diagnostico');
        meDiagnostico.Lines.Append(vgDiagnostico);
      end;
    end;
    painelTpExame.Visible := false;
    dmExames.qyExamesHistMicroexa_id.Value := dbExame.Text;
    dmExames.qyExamesHistMicro.Post;
    dmExames.qyExamesHistMicro.Refresh;
  end
  else
    MessageDlg('você deve selecionar o modelo!', mtWarning, [mbok],0);
end;

procedure TfrmMicroscopia.BuscarNovo;
begin
  CancelaDataSets;
  //Envia tabela exames para o registro atual e abre a tela de busca
  vgIDExameBuscaTb := dmExames.qyExamesexa_id.Text;
  //Envia tipo de busca / etapa 2 = Captura
  vgIDTpBusca := '4';
  dmConsultas.tbExamesHist.Open;
  dmConsultas.tbExamesHist.Refresh;
  dmConsultas.tbExamesHist.Locate('exa_id', vgIDExameBuscaTb, [LOPARTIALKEY, LOCASEINSENSITIVE]);
  frmSelHISTTable.ShowModal;
  //Carrega exame
  InitMicro;
end;

procedure TfrmMicroscopia.Gravar;
Var
vPath, vArqExe: String;
vErro: boolean;
begin
  vErro := false;
  //Grava microscopia ----------------------------------------------------------
  if dmExames.qyExamesHistMicro.State in [dsInsert, dsEdit] then
  begin
    if dmExames.qyExamesHistMicroehr_id.IsNull then
      dmExames.qyExamesHistMicroehr_id.Value := GetCodigo('ehr_id', 'exameshistmicro');
    //Campo ehr_diagnóstico
    if ((dmExames.qyExamesHistMicroehr_diagnostico.IsNull) or
        (dmExames.qyExamesHistMicroehr_diagnostico.Text = ' ')) then
    begin
      vErro := true;
      MessageDlg('Não é possível gravar o diagnóstico em branco!', mtWarning, [mbok], 0);
    end
    else
      if dsMicroscopia.DataSet.State in [dsInsert, dsEdit] then
        PostExamesHistMicro(dbExame.Text);
  end;
  //Grava macroscopia ----------------------------------------------------------
  if dsMacroscopia.DataSet.State in [dsEdit, dsInsert] then
    PostExamesHistMacro(dbExame.Text);
  //Grava exames solicitados (Histologia) --------------------------------------
  if dsHistologia.DataSet.State in [dsInsert, dsEdit] then
    PostExamesHist(dbExame.Text);
  //Grava na tabela Topografias ------------------------------------------------
  if dsExTopografias.DataSet.State in [dsEdit, dsInsert] then
    PostExamesTop;
  //Grava na tabela de blocos --------------------------------------------------
  if dsBlocos.DataSet.State in [dsEdit, dsInsert] then
    dmExames.qyExamesBlocos.Post;
  //grava log de usuário -------------------------------------------------------
  InsExamesLogs(dmExames.qyExamesexa_id.Text, '5', vgCodUsuarioLog);
  //altera etapa do exame ------------------------------------------------------
  if not (dsExames.DataSet.State in [dsEdit]) then
    dsExames.Edit;
  SetEtapaExame(5);
  //Finaliza e imprime o exame -------------------------------------------------
  if (vErro = false) then
  begin
    if MessageDlg('Exame gravado com sucesso!' +#13 + 'Deseja imprimir?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    Begin
      vgIDCaptura := dbExame.Text;
      vgIDExame := dbExame.Text;
      //Alterado para imprimir direto a Histologia
      frmRelHistologia.ShowModal;
    end;
  end;
end;

function TfrmMicroscopia.TestaDataSets: boolean;
Var
vResult: boolean;
begin
  vResult := false;
  if dsExames.DataSet.State in [dsInsert, dsEdit] then
    vResult := true;
  if dsMicroscopia.DataSet.State in [dsInsert, dsEdit] then
    vResult := true;
  if dsHistologia.DataSet.State in [dsInsert, dsEdit] then
    vResult := true;
  if dsExTopografias.DataSet.State in [dsEdit, dsInsert] then
    vResult := true;
  if dsBlocos.DataSet.State in [dsEdit, dsInsert] then
    vResult := true;
  Result := vResult;
end;

procedure TfrmMicroscopia.ImageDblClick(Sender: TObject);
begin
  frmVisImagem.ImgVisualiza.Picture := Image.Picture;
  frmVisImagem.ShowModal;
end;

procedure TfrmMicroscopia.InitMicro;
Var
vCodMed: String;
begin
  PageControl.ActivePage := tsMicro;
  //filtra a tabela de Macroscopia
  FiltrarExamesHistMacro('exa_id', '=', dbExame.Text, '0', '0');
  //filtra a tabela de Histologia
  FiltrarExamesHist('h.exa_id', '=', dbExame.Text, 'h.mat_id', '0');
  //fitra topografias
  FiltrarExamesTop('e.exa_id', '=', dbExame.Text, 'e.etg_id', '0');
  //Filtra blocos
  //filtra blocos
  FiltrarExamesBlocos('e.exa_id', '=', dbExame.Text, 'e.etg_id, e.ebl_seq', '0');
{
  //filtra blocos - Bloco interligado com topografia
  if not dmExames.qyExamesTopetg_id.IsNull then
    FiltrarExamesBlocosEtg('e.exa_id', '=', dbExame.Text, dmExames.qyExamesTopetg_id.Text, '0', '0')
  else
    FiltrarExamesBlocosEtg('e.exa_id', '=', dbExame.Text, '0', '0', '0');
}
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
    meMicroscopia.SetFocus;
  end
  else
    meMicroscopia.SetFocus;
  //testa se existe registro na tabela microscopia, caso exista edita, caso não exista insere
  FiltrarExamesHistMicro('exa_id', '=', dbExame.Text, '0', '0');
  if cbResponsavel.Text = '' then
    cbResponsavel.SetFocus
  else
    meMicroscopia.SetFocus;
end;

procedure TfrmMicroscopia.CancelaDataSets;
begin
  if dsExames.DataSet.State in [dsEdit, dsInsert] then
    dsExames.DataSet.Cancel;
  if dsMicroscopia.DataSet.State in [dsEdit, dsInsert] then
    dsMicroscopia.DataSet.Cancel;
  if dsHistologia.DataSet.State in [dsEdit, dsInsert] then
    dsHistologia.DataSet.Cancel;
  if dsMacroscopia.DataSet.State in [dsEdit, dsInsert] then
    dsMacroscopia.DataSet.Cancel;
end;

procedure TfrmMicroscopia.cbExameEnter(Sender: TObject);
begin
  if cbTipoExame.Text <> '' then
    ExecutaFiltro(dmLookups.lkProcExamesTipoeio_id.Text)
  else
    ExecutaFiltro('0');
end;

procedure TfrmMicroscopia.cbResponsavelExit(Sender: TObject);
begin
  if cbResponsavel.Text <> '' then
    SetExamesResp(dmLookups.lkProcResponsaveisres_codigo.Value);
end;

procedure TfrmMicroscopia.cbTopografiaKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    InsereTopografia;
end;

procedure TfrmMicroscopia.InsereTopografia;
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

procedure TfrmMicroscopia.dsExamesStateChange(Sender: TObject);
begin
  if dsExames.DataSet.State in [dsEdit] then
    btAlterar.Enabled := false
  else
    btAlterar.Enabled := true;
end;

procedure TfrmMicroscopia.dsHistologiaStateChange(Sender: TObject);
begin
  if dmExames.qyExamesHist.State in [dsInsert] then
    dmExames.qyExamesHistehi_id.Value := GetCodigo('ehi_id', 'exameshist');
  if dsHistologia.DataSet.State in [dsEdit, dsInsert] then
  begin
    dmExames.qyExamesHistexa_id.Text := dbExame.Text;
    sbInsereClin.Enabled := false;
    sbEditaClin.Enabled := false;
    sbDeletaClin.Enabled := false;
    sbGravaClin.Enabled := true;
    sbCancelaClin.Enabled := true;
    dbGridDadosClin.Color := clWindow;
  end
  else
  Begin
    sbInsereClin.Enabled := true;
    sbEditaClin.Enabled := true;
    sbDeletaClin.Enabled := true;
    sbGravaClin.Enabled := false;
    sbCancelaClin.Enabled := false;
    dbGridDadosClin.Color := clBtnFace;
  end;
end;

procedure TfrmMicroscopia.dsMacroscopiaDataChange(Sender: TObject;
  Field: TField);
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

procedure TfrmMicroscopia.dsMicroscopiaDataChange(Sender: TObject;
  Field: TField);
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

procedure TfrmMicroscopia.ExecutaFiltro(vfCodEio: String);
begin
  FiltrarProcExamesHist(vfCodEio);
end;

procedure TfrmMicroscopia.FormActivate(Sender: TObject);
begin
  painelTpExame.Visible := false;
  tsMicro.Highlighted := true;
  PageControl.ActivePage := tsMicro;
  //abre os datasets
  dsLog.DataSet.Active := true;
  dsExames.DataSet.Active := true;
  dsHistologia.DataSet.Active := true;
  dsMacroscopia.DataSet.Active := true;
  dsMicroscopia.DataSet.Active := true;
  dsExTopografias.DataSet.Active := true;
  dsImagens.DataSet.Active := true;
  dsModelosHist.DataSet.Active := true;
  dsBlocos.DataSet.Active := true;
  dsProcExames.DataSet.Active := true;
  dmExames.qyModLaudoHist.Active := true;
  InitMicro;
end;

procedure TfrmMicroscopia.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  PageControl.ActivePage := tsMicro;
  inherited;
end;

procedure TfrmMicroscopia.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if TestaDataSets = true then
    if Messagedlg('Existem alterações pendentes,' + #13 + 'deseja salvar?',mtConfirmation,[mbYes, mbNo],0) = mrYes then
      Canclose := False
    else
    begin
      CancelarAlt;
      Canclose := True;
    end;
end;

procedure TfrmMicroscopia.FormKeyPress(Sender: TObject; var Key: Char);
begin
  //inherited;
end;

procedure TfrmMicroscopia.LimpaFiltro;
begin
  FiltrarProcExamesTipo('0');
  FiltrarProcExamesHist('0');
end;

procedure TfrmMicroscopia.meDiagnosticoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_F12 then
  begin
    if dsMicroscopia.DataSet.State in [dsEdit, dsInsert] then
      dsMicroscopia.DataSet.Post;
  end;
end;

procedure TfrmMicroscopia.meDiagnosticoKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #9 then
  begin
    key := #0;
    meNota.SetFocus;
  end;
end;

procedure TfrmMicroscopia.meMacroscopiaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_F12 then
  begin
    if dsMacroscopia.DataSet.State in [dsEdit, dsInsert] then
      dsMacroscopia.DataSet.Post;
  end;
end;

procedure TfrmMicroscopia.meMacroscopiaKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #9 then
  begin
    key := #0;
    cbTopografia.SetFocus;
  end;
end;

procedure TfrmMicroscopia.meMicroscopiaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_F12 then
  begin
    if dsMicroscopia.DataSet.State in [dsEdit, dsInsert] then
      dsMicroscopia.DataSet.Post;
  end;
end;

procedure TfrmMicroscopia.meMicroscopiaKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #9 then
  begin
    key := #0;
    meDiagnostico.SetFocus;
  end;
end;

procedure TfrmMicroscopia.meNotaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_F12 then
  begin
    if dsMicroscopia.DataSet.State in [dsEdit, dsInsert] then
      dsMicroscopia.DataSet.Post;
  end;
end;

procedure TfrmMicroscopia.meNotaKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #9 then
  begin
    key := #0;
    btGravar.SetFocus;
  end;
end;

procedure TfrmMicroscopia.PageControlChange(Sender: TObject);
Var
vLocGravar: String;
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
    vFigND := vControl.ReadString('Imagens', 'ND','');
    //testa se a figura existe e limpa panel com imagem local
    if FileExists(vFigND) then
      Image.Picture.LoadFromFile(vFigND);
    vLocGravar := vControl.ReadString('Captura', 'Local','');
    //feBitmap.Text := vLocGravar + '\' + vgIDCaptura + '.bmp';
    vFiguraJPG := vLocGravar + '\' + vgIDCaptura + '.jpg';
    vFiguraBMP := vLocGravar + '\' + vgIDCaptura + '.bmp';
    //filtra tabela de imagens
    FiltrarImagensZeos('img_exame', '=', vgIDCaptura, '0', '1');
    if not dmFiles.qyImagensimg_id.IsNull then
    Begin
      //caso a tabela possua a imagem, salva em pasta temporária e copia para a pasta correta
      vDirTemp := vControl.ReadString('Temp', 'Diretorio','');
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

procedure TfrmMicroscopia.CancelarAlt;
begin
  if dsExames.DataSet.State in [dsEdit] then
    dmExames.qyExames.Cancel;
  if dsMicroscopia.DataSet.State in [dsInsert, dsEdit] then
    dmExames.qyExamesHistMicro.Cancel;
  if dsMacroscopia.DataSet.State in [dsInsert, dsEdit] then
    dmExames.qyExamesHistMicro.Cancel;
  if dsHistologia.DataSet.State in [dsInsert, dsEdit] then
    dmExames.qyExamesHist.Cancel;
  if dsExTopografias.DataSet.State in [dsEdit, dsInsert] then
    dmExames.qyExamesTop.Cancel;
  if dsBlocos.DataSet.State in [dsEdit, dsInsert] then
    dmExames.qyExamesBlocos.Cancel;
end;

end.
