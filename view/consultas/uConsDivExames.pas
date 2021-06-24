unit uConsDivExames;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpFormMDI, Vcl.StdCtrls, Vcl.Buttons,
  Data.DB, Vcl.Menus, Vcl.DBCtrls, Vcl.DBGrids, Vcl.ComCtrls, wwriched,
  wwrichedspellxp, Vcl.ExtCtrls, Vcl.Grids, Wwdbigrd, Wwdbgrid, Vcl.Mask,
  wwdbedit, Wwdotdot, Wwdbcomb, wwdbdatetimepicker, wwdblook, Inifiles, System.Win.ComObj;

type
  TfrmConsDivExames = class(TfrmTmpFormMDI)
    dsConsLogs: TDataSource;
    pgPrincipal: TPageControl;
    tsPesquisa: TTabSheet;
    Label28: TLabel;
    Panel1: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label8: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label5: TLabel;
    Label27: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label9: TLabel;
    cbTpExame: TwwDBLookupCombo;
    cbConvenio: TwwDBLookupCombo;
    cbPaciente: TwwDBLookupCombo;
    cbMedico: TwwDBLookupCombo;
    edDtInicio: TwwDBDateTimePicker;
    edDtFinal: TwwDBDateTimePicker;
    btFiltrar: TBitBtn;
    btLimpar: TBitBtn;
    cbKeyOrdem: TwwDBComboBox;
    cbOrdem: TwwDBComboBox;
    cbTipoBusca: TwwDBComboBox;
    cbLimite: TwwDBComboBox;
    edIDExame: TMaskEdit;
    cbOrigem: TwwDBLookupCombo;
    Panel2: TPanel;
    DBGrid1: TwwDBGrid;
    btRelLista: TBitBtn;
    tsCitologia: TTabSheet;
    Label15: TLabel;
    DBText3: TDBText;
    Label17: TLabel;
    lbLaudo: TLabel;
    Label16: TLabel;
    Image: TImage;
    dbGridDadosClin: TwwDBGrid;
    meLaudo: TwwDBRichEditMSWord;
    wwDBRichEditMSWord1: TwwDBRichEditMSWord;
    btImagem: TBitBtn;
    gbAltTipo: TGroupBox;
    cbProcTipocit: TwwDBLookupCombo;
    btGravarCit: TBitBtn;
    tsHistologia: TTabSheet;
    Label13: TLabel;
    DBText2: TDBText;
    pgHistologia: TPageControl;
    tsMacro: TTabSheet;
    Panel4: TPanel;
    Label18: TLabel;
    lbMacroscopia: TLabel;
    meMacroscopia: TwwDBRichEditMSWord;
    painelTopografia: TPanel;
    Label19: TLabel;
    GridTop: TwwDBGrid;
    painelBlocos: TPanel;
    Label20: TLabel;
    wwDBGrid2: TwwDBGrid;
    GridDadosClin: TwwDBGrid;
    tsMicro: TTabSheet;
    lbMicroscopia: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    meMicroscopia: TwwDBRichEditMSWord;
    meDiagnostico: TwwDBRichEditMSWord;
    meNota: TwwDBRichEditMSWord;
    tsLogs: TTabSheet;
    DBText1: TDBText;
    Label12: TLabel;
    wwDBGrid1: TwwDBGrid;
    Panel5: TPanel;
    Label29: TLabel;
    lbUltEtapaAlt: TLabel;
    Label30: TLabel;
    lbUltAlt: TLabel;
    Label34: TLabel;
    lbEtapaAtual2: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    DBText9: TDBText;
    lbDataFinal: TLabel;
    Panel6: TPanel;
    Label33: TLabel;
    btGravar: TBitBtn;
    dbObs: TDBMemo;
    dbObservacoes: TwwDBRichEditMSWord;
    btNovaObs: TBitBtn;
    btArquivos: TBitBtn;
    tsProcedimentos: TTabSheet;
    Label23: TLabel;
    DBText4: TDBText;
    Label25: TLabel;
    wwDBGrid3: TwwDBGrid;
    tsDoencas: TTabSheet;
    Label24: TLabel;
    DBText5: TDBText;
    Label26: TLabel;
    DBGrid2: TDBGrid;
    tsImuno: TTabSheet;
    Label35: TLabel;
    Label36: TLabel;
    DBText6: TDBText;
    btCarregar: TBitBtn;
    wwDBGrid4: TwwDBGrid;
    tsFinanceiro: TTabSheet;
    Panel7: TPanel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    DBText7: TDBText;
    DBText8: TDBText;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    DBCheckBox1: TDBCheckBox;
    Panel8: TPanel;
    Label44: TLabel;
    wwDBGrid5: TwwDBGrid;
    Panel9: TPanel;
    Label45: TLabel;
    GridExames: TwwDBGrid;
    dsConsulta: TDataSource;
    MainMenu1: TMainMenu;
    dsExamesSolicitados: TDataSource;
    dsHistologia: TDataSource;
    dsCitologia: TDataSource;
    dsLogs: TDataSource;
    dsMicroscopia: TDataSource;
    dsReceber: TDataSource;
    dsMacroscopia: TDataSource;
    dsExameDoencas: TDataSource;
    dsExamesCob: TDataSource;
    dsHistRec: TDataSource;
    dsExTopografias: TDataSource;
    dsBlocos: TDataSource;
    dsProcedimentos: TDataSource;
    dsObs: TDataSource;
    btRequisicao: TBitBtn;
    btImprimir: TBitBtn;
    dsCitosTp: TDataSource;
    PopupMenu1: TPopupMenu;
    tsTiss: TTabSheet;
    dsExamesTISS: TDataSource;
    Label10: TLabel;
    cbTpAtendimento: TwwDBComboBox;
    btGravarTISS: TBitBtn;
    btCancelarTISS: TBitBtn;
    btConfigurarTISS: TBitBtn;
    pnTISS: TPanel;
    edTipoCit: TEdit;
    lbExamesFilt: TLabel;
    Panel3: TPanel;
    Label11: TLabel;
    lbEnvEmail: TLabel;
    procedure FormCreate(Sender: TObject);
    function BuscaUltEtapa(vIDExame: String): String;
    procedure limpar;
    procedure filtrar;
    procedure FormActivate(Sender: TObject);
    procedure btLimparClick(Sender: TObject);
    procedure btFiltrarClick(Sender: TObject);
    procedure pgPrincipalChange(Sender: TObject);
    procedure DBGrid1CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure pgHistologiaChange(Sender: TObject);
    procedure DBGrid1DrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
    procedure GridTopDblClick(Sender: TObject);
    procedure btImagemClick(Sender: TObject);
    procedure cbTipoBuscaExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btImprimirClick(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure dsConsultaStateChange(Sender: TObject);
    procedure dsObsStateChange(Sender: TObject);
    procedure btCarregarClick(Sender: TObject);
    procedure btNovaObsClick(Sender: TObject);
    procedure btRelListaClick(Sender: TObject);
    procedure btArquivosClick(Sender: TObject);
    procedure GridExamesDrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
    procedure btGravarCitClick(Sender: TObject);
    procedure btRequisicaoClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btGravarTISSClick(Sender: TObject);
    procedure btCancelarTISSClick(Sender: TObject);
    procedure btConfigurarTISSClick(Sender: TObject);
    procedure dsExamesTISSStateChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbProcTipocitChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsDivExames: TfrmConsDivExames;

implementation

{$R *.dfm}

uses dataConsultas, dataExames, dataFinanceiro, dataLookups, uVisImagem,
  dataGestao, uVarGlobal, uObsExames, uGerenFiles, uRelCitoEspecial,
  uRelCitoEtapaI, uRelHistoEtapaIMac, uRelHistoEtapaI, uDaoExamesLogs,
  uDaoExames, uRelLaudoFinal, uRelHistologia, uFuncoesSistema,
  uDaoExamesHistMacro, uDaoConsultas, uDaoExamesProced, uDaoExamesDoencas,
  uDaoExamesCito, uDaoExamesLaudo, uDaoExamesHist, uDaoExamesTop,
  uDaoExamesBlocos, uDaoExamesHistMicro, uDaoExamesCob, uDaoReceber,
  uDaoHistRec, uFuncoesDBEsp, uDaoExamesObs, uFuncoesFormatacao,
  uClassConsDivExames, uDaoConsDivExames, uRelListaExames, uDaoExamesTISS,
  uDaoImagensZEOS, dataFiles, uDaoExamesTp, uDaoExamesEnvMail;

procedure TfrmConsDivExames.btArquivosClick(Sender: TObject);
begin
  vgIDArq := dmConsultas.qyConsDivExamesexa_id.Text;
  frmGerenFiles.ShowModal;
end;

procedure TfrmConsDivExames.btCancelarTISSClick(Sender: TObject);
begin
  if dsExamesTISS.DataSet.State in [dsInsert, dsEdit] then
    dsExamesTISS.DataSet.Cancel;
end;

procedure TfrmConsDivExames.btCarregarClick(Sender: TObject);
begin
  MessageDlg('Em desenvolvimento!', mtWarning, [mbok], 0);
end;

procedure TfrmConsDivExames.btConfigurarTISSClick(Sender: TObject);
begin
  if not(dsConsulta.DataSet.FieldByName('exa_id').IsNull) then
  begin
    if dsExamesTISS.DataSet.FieldByName('exa_id').IsNull then
      InsExamesTISS
    else
      EdtExamesTISS;
    cbTpAtendimento.SetFocus;
  end;
end;

procedure TfrmConsDivExames.btFiltrarClick(Sender: TObject);
begin
  Filtrar;
end;

procedure TfrmConsDivExames.btGravarCitClick(Sender: TObject);
begin
  try
  //Grava nas observações quem alterou o tipo de citologia
  dmConsultas.qyConsDivExamesexa_obs.Text := FormatDateTime('dd/MM/yyyy',(now)) + ' - ' +
                                             FormatDateTime('hh:mm',(now)) + ' : ' +
                                             'Alterado tipo de citologia para: ' +
                                             edTipoCit.Text + ' por: ' + vgNomeUsuarioLog;
  dsConsulta.DataSet.Post;
  MessageDlg('Alteração efetuada com sucesso!', mtInformation, [mbok], 0);
  Except
    MessageDlg('Não foi possível gravar as alterações!', mtError, [mbok], 0);
  end;
end;

procedure TfrmConsDivExames.btGravarClick(Sender: TObject);
begin
  Try
    dmExames.qyExamesObsexa_id.Text := dmConsultas.qyConsDivExamesexa_id.Text;
    dmExames.qyExamesObs.Post;
    //Grava log
    InsExamesLogs(dmConsultas.qyConsDivExamesexa_id.Text, '10', vgCodUsuarioLog);
    dsConsLogs.DataSet.Refresh;
  Except
    MessageDlg('Não foi posível gravar as alterações!', mtWarning, [mbok], 0);
    dmConsultas.qyConsDivExames.Refresh;
  end;
end;

procedure TfrmConsDivExames.btGravarTISSClick(Sender: TObject);
begin
  if dsExamesTISS.DataSet.State in [dsInsert, dsEdit] then
    PostExamesTISS;
end;

procedure TfrmConsDivExames.btImagemClick(Sender: TObject);
begin
  //Carrega imagem no formulário a ser chamado
  frmVisImagem.ImgVisualiza.Picture := Image.Picture;
  frmVisImagem.ShowModal;
end;

procedure TfrmConsDivExames.btImprimirClick(Sender: TObject);
Var
vExame: String;
begin
  vExame := dmConsultas.qyConsDivExamesexa_id.Text;
  FiltrarExames('e.exa_id', '=', vExame, '0', '0');
  if not(dmExames.qyExamesexa_id.IsNull) then
  begin
    //verifica o tipo e a etapa

    //Citologia e Citologia Especial e Meio líquido
    if ((dmExames.qyExamesetp_id.Value = 0) or (dmExames.qyExamesetp_id.Value = 1)
        or (dmExames.qyExamesetp_id.Value = 5)) then
    begin
      if dmExames.qyExamesexa_etapa.Value >= 5 then
      begin
        //envia ID do exame para o uVarGlobal
        vgIDCaptura := dmExames.qyExamesexa_id.Text;
        vgImagemExame := vExame;
        vgIDExame := dmExames.qyExamesexa_id.Text;
        frmRelLaudoFinal.ShowModal;
      end
      else
        MessageDlg('O exame não foi liberado para a impressão!', mtInformation, [mbok], 0);
    end;

    //Histologia, Revisão e Imunohistoquímica
    if ((dmExames.qyExamesetp_id.Value = 2) or (dmExames.qyExamesetp_id.Value = 3) or (dmExames.qyExamesetp_id.Value = 4)) then
    begin
      if dmExames.qyExamesexa_etapa.Value >= 7 then
      begin
        //filtra a tabela de exames
        if not(dmExames.qyExamesexa_id.IsNull) then
        Begin
          //envia ID do exame para VarGlobal
          vgIDCaptura := vExame;
          vgIDExame := vExame;
          frmRelHistologia.ShowModal;
        end;
      end
      else
        MessageDlg('O exame não foi liberado para a impressão!', mtInformation, [mbok], 0);
    end;

  end
  else
    MessageDlg('O exame não encontrado!', mtInformation, [mbok], 0);
end;

procedure TfrmConsDivExames.btLimparClick(Sender: TObject);
begin
  Limpar;
end;

procedure TfrmConsDivExames.btNovaObsClick(Sender: TObject);
begin
  vgExaLog := dsConsulta.DataSet.FieldByName('exa_id').Text;
  frmObsExames.ShowModal;
end;

procedure TfrmConsDivExames.btRelListaClick(Sender: TObject);
//begin
  //frmRelListaExames.ShowModal;
  //Esportar para excel
Var
vLinha, vColuna : integer;
vPlanilha : variant;
vValorCampo : string;
begin
  if MessageDlg('Deseja exportar em planilha do excel?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    vPlanilha:= CreateoleObject('Excel.Application');
    vPlanilha.WorkBooks.add(1);
    vPlanilha.caption := 'Contas à receber';
    vPlanilha.visible := true;
    dsConsulta.DataSet.First;
    for vLinha := 0 to dsConsulta.DataSet.RecordCount - 1 do
    begin
      for vColuna := 1 to dsConsulta.DataSet.FieldCount do
      begin
        vValorCampo := dsConsulta.DataSet.Fields[vColuna - 1].AsString;
        vPlanilha.cells[vLinha + 2, vColuna] := vValorCampo;
      end;
      dsConsulta.DataSet.Next;
    end;
    for vColuna := 1 to dsConsulta.DataSet.FieldCount do
    begin
      vValorCampo := dsConsulta.DataSet.Fields[vColuna - 1].DisplayLabel;
      vPlanilha.cells[1, vColuna] := vValorCampo;
    end;
    vPlanilha.columns.Autofit;
    MessageDlg('Exportação realizada com sucesso!', mtInformation, [mbok], 0);
  end
end;

procedure TfrmConsDivExames.btRequisicaoClick(Sender: TObject);
Var
vExame: String;
begin
  if not(dmConsultas.qyConsDivExamesexa_id.IsNull) then
  begin
    vExame := dmConsultas.qyConsDivExamesexa_id.Text;
    if MessageDlg('Deseja imprimir o relatório da requisição?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      Cursor := crHourGlass;
      if ((dmExames.qyExamesetp_id.Value = 0) or (dmExames.qyExamesetp_id.Value = 1) or (dmExames.qyExamesetp_id.Value = 5)) then //Citologia
      begin
        FiltrarExames('e.exa_id', '=', vExame, '0', '1');
        if dmExames.qyExamesetp_id.Value = 0 then
          frmRelCitoEspecial.ShowModal
        else
          frmRelCitoEtapaI.ShowModal;
      end;

      if ((dmExames.qyExamesetp_id.Value = 2) or (dmExames.qyExamesetp_id.Value = 3)) then
      begin
        FiltrarExames('exa_id', '=', vExame, '0', '1');
        //Verifica se existe Macro gravada
        FiltrarExamesHistMacro('exa_id', '=', vExame, '0', '1');
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
      if ((dmExames.qyExamesetp_id.Value = 4) or (dmExames.qyExamesetp_id.Value = 6))  then
      begin
        MessageDlg('Em desenvolvimento!', mtWarning, [mbok], 0);
      end;
      Cursor := crDefault;
    end;
  end
  else
    MessageDlg('Não foi selecionado nenhum exame para a impressão!', mtwarning, [mbOk], 0);
end;

function TfrmConsDivExames.BuscaUltEtapa(vIDExame: String): String;
Var
vTpExame: Integer;
vUltEtapa: Integer;
vResult: String;
Begin
  vResult := '';
  dmConsultas.QTemp.Close;
  dmConsultas.QTemp.SQL.Clear;
  dmConsultas.QTemp.SQL.Add('select etp_id, exa_etapa from exames where exa_id = ');
  dmConsultas.QTemp.SQL.Add(QuotedStr(vIDExame));
  dmConsultas.QTemp.Open;
  if not(dmConsultas.QTemp.Fields[0].IsNull) then
  Begin
    vTpExame := dmConsultas.QTemp.Fields[0].AsInteger;
    vUltEtapa := dmConsultas.QTemp.Fields[1].AsInteger;
    //Caso seja Citologia Especial ou Citologia ou meio líquido
    if ((vTpExame = 0) or (vTpExame = 1) or (vTpExame = 5)) then
    begin
      if vUltEtapa = 2 then
        vResult := '3 - Captura';
      if vUltEtapa = 3 then
        vResult := '4 - Preenchimento Laudo';
      if vUltEtapa = 4 then
        vResult := '5 - Aguardando impressão';
      if vUltEtapa > 5 then
        vResult := '6 - Laudo impresso';
    end;
    //Caso seja Histologia ou Revisão
    if (vTpExame = 2) or (vTpExame = 3) then
    begin
      if vUltEtapa = 2 then
        vResult := '3 - Macroscopia';
      if vUltEtapa = 3 then
        vResult := '4 - Corte';
      if vUltEtapa = 4 then
        vResult := '5 - Microscopia';
      if vUltEtapa = 5 then
        vResult := '6 - Revisão';
      if vUltEtapa = 6 then
        vResult := '7 - Aguardando impressão';
      if vUltEtapa > 7 then
        vResult := '8 - Laudo impresso';
    end;
    //Caso seja Imuno ou Captura híbrida
    if ((vTpExame = 4) or (vTpExame = 6)) then
    begin
      if vUltEtapa = 2 then
        vResult := '3 - Inserção de exame';
      if vUltEtapa = 3 then
        vResult := '4 - Aguardando arquivamento';
      if vUltEtapa = 4 then
        vResult := '5 - Concluído / Armazenado';
    end;
    //Envia retorno
    Result := vResult;
  end
  else
    Result := vResult;
end;

procedure TfrmConsDivExames.cbTipoBuscaExit(Sender: TObject);
begin
  if cbTipoBusca.ItemIndex = 0 then
  begin
    cbPaciente.AutoSelect := false;
    cbPaciente.AutoDropDown := false;
    cbPaciente.ShowMatchText := false;
  end;
  if cbTipoBusca.ItemIndex = 1 then
  begin
    cbPaciente.AutoSelect := false;
    cbPaciente.AutoDropDown := false;
    cbPaciente.ShowMatchText := false;
  end;
  if cbTipoBusca.ItemIndex = 2 then
  begin
    cbPaciente.AutoSelect := true;
    cbPaciente.AutoDropDown := true;
    cbPaciente.ShowMatchText := true;
  end;
  cbPaciente.Clear;
end;

procedure TfrmConsDivExames.DBGrid1CalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
  if ((dmConsultas.qyConsLogs.fields[3].Value mod 2) = 0) then
    aFont.Color := clBlack
  else
    aFont.Color := clRed;
end;

procedure TfrmConsDivExames.DBGrid1DrawDataCell(Sender: TObject;
  const Rect: TRect; Field: TField; State: TGridDrawState);
begin
  if odd(dsConsulta.DataSet.RecNo) then
    DBGrid1.Canvas.Brush.Color := clGray
  else
    DBGrid1.Canvas.Brush.Color:= clWhite;
  DBGrid1.Canvas.FillRect(Rect);
  DBGrid1.Canvas.font.Color:= clBlack;
  if gdSelected in State then
    with DBGrid1.Canvas do
    begin
      Brush.Color := clYellow;
      FillRect(Rect);
      Font.Style := [fsbold];
    end;
  DBGrid1.DefaultDrawDataCell(Rect, Field, State);
end;

procedure TfrmConsDivExames.dsConsultaStateChange(Sender: TObject);
begin
  if dsConsulta.DataSet.State in [dsEdit] then
  begin
    btGravar.Enabled := true;
    btGravarCit.Enabled := true;
  end
  else
  begin
    btGravar.Enabled := false;
    btGravarCit.Enabled := false;
  end;
end;

procedure TfrmConsDivExames.dsExamesTISSStateChange(Sender: TObject);
begin
  if dsExamesTISS.DataSet.State in [dsInsert, dsEdit] then
  begin
    if dsExamesTISS.DataSet.FieldByName('exa_id').IsNull then
      dsExamesTISS.DataSet.FieldByName('exa_id').Value := dsConsulta.DataSet.FieldByName('exa_id').Value;
    btConfigurarTISS.Enabled := false;
    btGravarTISS.Enabled := true;
    btcancelarTISS.Enabled := true;
  end
  else
  begin
    btConfigurarTISS.Enabled := true;
    btGravarTISS.Enabled := false;
    btcancelarTISS.Enabled := false;
  end;
end;

procedure TfrmConsDivExames.dsObsStateChange(Sender: TObject);
begin
  if dsObs.State in [dsEdit, dsInsert] then
    btGravar.Enabled := true
  else
    btGravar.Enabled := false;
end;

procedure TfrmConsDivExames.limpar;
Begin
  pgPrincipal.ActivePage := tsPesquisa;
  cbKeyOrdem.ItemIndex := 3;
  cbOrdem.ItemIndex := 0;
  cbLimite.ItemIndex := 3;
  edDtInicio.Date := now - 365;
  edDtFinal.Date := now;
  cbTpExame.Text := '';
  cbConvenio.Text := '';
  cbPaciente.Text := '';
  cbMedico.Text := '';
  cbOrigem.Text := '';
  lbEtapaAtual2.Caption := '';
  lbUltEtapaAlt.Caption := '';
  lbUltAlt.Caption := '';
  edIDExame.Clear;
  cbTipoBusca.ItemIndex := 0;
  cbPaciente.AutoSelect := false;
  cbPaciente.AutoDropDown := false;
  cbPaciente.ShowMatchText := false;
  FiltrarConsDivExames('0');
  lbExamesFilt.Caption := 'Exames encontrados no filtro: ' + IntToStr(dsConsulta.DataSet.RecordCount);
  edDtInicio.SetFocus;
end;

procedure TfrmConsDivExames.pgHistologiaChange(Sender: TObject);
begin
  if pgHistologia.ActivePage = tsMacro then
  Begin
    tsMacro.Highlighted := true;
    tsMicro.Highlighted := false;
  end;
  if pgHistologia.ActivePage = tsMicro then
  Begin
    tsMacro.Highlighted := false;
    tsMicro.Highlighted := true;
  end;
end;

procedure TfrmConsDivExames.pgPrincipalChange(Sender: TObject);
Var
vIDExame: String;
vFigND, vLocGravar, vFiguraJPG, vFiguraBMP, vIDCaptura: String;
vArqTempJPG, vArqTempBMP, vOrigem, vDestino: String;
vControl: TInifile;
begin
  if dmConsultas.qyConsDivExamesexa_id.Text <> '' then
    vIDExame := dmConsultas.qyConsDivExamesexa_id.Text
  else
    vIDExame := '0';

{ Procedimentos ---------------------------------------------------------------}

  if pgPrincipal.ActivePage = tsProcedimentos then
    FiltrarExamesProced('e.exa_id', '=', vIDExame, '0', '0');

{ Doenças ---------------------------------------------------------------------}

  if pgPrincipal.ActivePage = tsDoencas then
    FiltrarExamesDoencas('d.exa_id', '=', vIDExame, '0', '0');

{ TISS ------------------------------------------------------------------------}

  if pgPrincipal.ActivePage = tsTiss then
  begin
    FiltrarExamesTISS('exa_id', '=', vIDExame, '0', '0');
    pnTISS.Caption := 'ID do exame: ' + vIDExame;
    dsExamesTISS.DataSet.Active := true;
  end;

{ Citologia -------------------------------------------------------------------}

  if pgPrincipal.ActivePage = tsCitologia then
  Begin
    if ((dmConsultas.qyConsDivExamesetp_id.Value = 0) or
        (dmConsultas.qyConsDivExamesetp_id.Value = 1) or
        (dmConsultas.qyConsDivExamesetp_id.Value = 5)) then
    Begin
      //Filtra exame Citologia
      FiltrarExamesCito('c.exa_id', '=', vIDExame, '0', '0');
      FiltrarExamesLaudo('exa_id', '=', vIDExame, '0', '0');
      //Filtra imagem
      vIDCaptura := vIDExame;
      vControl := Tinifile.create(vgArqIni);
      vFigND := vControl.ReadString('Imagens','ND','');
      //testa se a figura existe e limpa panel com imagem local
     if FileExists(vFigND) then
       Image.Picture.LoadFromFile(vFigND);
     //feBitmap.Text := vLocGravar + '\' + vIDCaptura + '.bmp';
     vLocGravar := vControl.ReadString('Captura', 'Local','');
     vFiguraJPG := vLocGravar + '\' + vIDCaptura + '.jpg';
     vFiguraBMP := vLocGravar + '\' + vIDCaptura + '.bmp';
     //filtra tabela de imagens
     FiltrarImagensZEOS('img_exame', '=', vIDExame, '0', '0');
     if not dmFiles.qyImagensimg_id.IsNull then
     Begin
       //caso a tabela possua a imagem, salva em pasta temporária e copia para a pasta correta
       vArqTempJPG := vgDirTemp + '\' + vIDCaptura + '.jpg';
       dmFiles.qyImagensimg_imagem.SaveToFile(vArqTempJPG);
       ConvertJPG_BMP(vArqTempJPG);
       vArqTempBMP := vgDirTemp + '\' + vIDCaptura + '.bmp';
       vOrigem := vArqTempBMP;
       vDestino := vFiguraBMP;
       //o parametro false na função copyfile sobreescreve o arquivo caso exista
       if not CopyFile(PChar(vOrigem), PChar(vDestino), false) then
         ShowMessage('Erro ao copiar ' + vOrigem + ' para ' + vDestino)
       else
         Image.Picture.LoadFromFile(vArqTempBMP);
     end;
     vControl.Free;
    end
    else
    Begin
      MessageDlg('O exame não é uma Citologia!', mtWarning, [mbok], 0);
      pgPrincipal.ActivePage := tsPesquisa;
    end;
  end;

{ Histologia ------------------------------------------------------------------}

  if pgPrincipal.ActivePage = tsHistologia then
  Begin
    if ((dmConsultas.qyConsDivExamesetp_id.Value = 2) or (dmConsultas.qyConsDivExamesetp_id.Value = 3)) then
    Begin
      //Busca informações da Histolgia
      FiltrarExamesHist('h.exa_id', '=', vIDExame, '0', '0');
      //Descrição da Macroscopia = qyExamesHistMacro
      FiltrarExamesHistMacro('exa_id', '=', vIDExame, '0', '0');
      //Topografia = qyExamesTop
      FiltrarExamesTop('e.exa_id', '=', vIDExame, '0', '0');
      //Blocos = qyExamesBlocos (Os blocos são filtrados pela topografia)
      if not(dmExames.qyExamesTopetg_id.IsNull) then
        FiltrarExamesBlocos('e.etg_id', '=', dmExames.qyExamesTopetg_id.Text, '0', '0');
      //Microscopia = qyExamesHistMicro
      FiltrarExamesHistMicro('exa_id', '=', vIDExame, '0', '0');
    end
    else
    Begin
      MessageDlg('O exame não é uma Histologia!', mtWarning, [mbok], 0);
      pgPrincipal.ActivePage := tsPesquisa;
    end;
  end;

{ Imunohistoquímica e Captura Híbrida -----------------------------------------}

  if pgPrincipal.ActivePage = tsImuno then
  Begin
    if ((dmConsultas.qyConsDivExamesetp_id.Value = 4) or (dmConsultas.qyConsDivExamesetp_id.Value = 6))  then
      //Filtra tabela ExamesProced
      FiltrarExamesProced('e.exa_id', '=', vIDExame, '0', '0')
    else
    Begin
      MessageDlg('O exame não é uma Imunohistoquímica!', mtWarning, [mbok], 0);
      pgPrincipal.ActivePage := tsPesquisa;
    end;
  end;

{ Financeiro ------------------------------------------------------------------}

  if pgPrincipal.ActivePage = tsFinanceiro then
  Begin
    if dmConsultas.qyConsDivExamesexa_id.IsNull then
    begin
      MessageDlg('Você deve selecionar um exame!', mtWarning, [mbok], 0);
      pgPrincipal.ActivePage := tsPesquisa;
    end
    else
    begin
      //Busca dados sobre cobrança
      FiltrarExamesCob('exa_id', '=', vIDExame, '0', '0');
      //Busca cobrança gerada
      if dmFinanceiro.qyExamesCobhis_id.Text <> '0' then
        FiltrarReceber('r.his_id', '=', dmFinanceiro.qyExamesCobhis_id.Text, '0', '0')
      else
        FiltrarReceber('r.his_id', '=', '-1', '0', '0');
      //Histórico da cobrança
      if dmFinanceiro.qyExamesCobhis_id.Text <> '0' then
        FiltrarHistRec('h.his_id', '=', dmFinanceiro.qyExamesCobhis_id.Text, '0', '0')
      else
        FiltrarHistRec('h.his_id', '=', '-1', '0', '0');
      //Busca ID de envio de e-mail
      if GetStatusEnvio(dmConsultas.qyConsDivExamesexa_id.Text) = false then
        lbEnvEmail.Caption := 'Não enviado'
      else
        lbEnvEmail.Caption := 'Enviado';
    end;
  end;

{ Logs ------------------------------------------------------------------------}

  if pgPrincipal.ActivePage = tsLogs then
  Begin
    if dmConsultas.qyConsDivExamesexa_id.Text <> '' then
    begin
      lbDataFinal.Caption := GetDataFinal(dmConsultas.qyConsDivExamesexa_id.Text);
      if lbDataFinal.Caption = '01/01/2000' then
        lbDataFinal.Caption := '';
      btNovaObs.SetFocus;
      //Busca dados diversos
      //Filtra tabela ExamesObs
      FiltrarExamesObs('exa_id', '=', dmConsultas.qyConsDivExamesexa_id.Text, '0', '0');
      //filtra logs do exame
      if ((dmConsultas.qyConsDivExamesetp_id.Value = 0) or (dmConsultas.qyConsDivExamesetp_id.Value = 1) or (dmConsultas.qyConsDivExamesetp_id.Value = 5)) then //Citologia
      Begin
        //Cito e Cito especial
        FiltrarConsLogsCito(vIDExame);
        //seta etapa atual
        FiltrarConsEtapaCito(vIDExame);
        //----------------------------------------------------------------------------------------------------
        lbEtapaAtual2.Caption := BuscaUltEtapa(vIDExame);
        lbUltEtapaAlt.Caption := dmConsultas.qyConsEtapaExame.Fields[0].Text +
                                ' - ' + dmConsultas.qyConsEtapaExame.Fields[1].Text;
        //seta última alteração
        GetMaxLogData(vIDExame);
        if dmConsultas.qyConsUltAlt.Fields[0].IsNull then
          lbUltAlt.Caption := ''
        else
          lbUltAlt.Caption := FormatDateTime('dd/mm/yyyy', (dmConsultas.qyConsUltAlt.fields[0].Value));
      end
      else
        if ((dmConsultas.qyConsDivExamesetp_id.Value = 2) or (dmConsultas.qyConsDivExamesetp_id.Value = 3) or (dmConsultas.qyConsDivExamesetp_id.Value = 4)) then //Histologia, revisão e Imunohistoquímica
        Begin
          //Histo e Revisão
          FiltrarConsLogsHisto(vIDExame);
          //seta etapa atual
          FiltrarConsEtapaHisto(vIDExame);
          //----------------------------------------------------------------------------------------------------
          lbEtapaAtual2.Caption := BuscaUltEtapa(vIDExame);
          lbUltEtapaAlt.Caption := dmConsultas.qyConsEtapaExame.Fields[0].Text +
                                  ' - ' +
                                  dmConsultas.qyConsEtapaExame.Fields[1].Text;
          //seta última alteração
          GetMaxLogData(vIDExame);
          if dmConsultas.qyConsUltAlt.Fields[0].IsNull then
            lbUltAlt.Caption := ''
          else
            lbUltAlt.Caption := FormatDateTime('dd/mm/yyyy', (dmConsultas.qyConsUltAlt.fields[0].Value));
        end
        else
          if (dmConsultas.qyConsDivExamesetp_id.Value = 6) then //Captura híbrida
          begin
            //Imuno e captura híbrida
            FiltrarconsLogsImuno(vIDExame);
            //seta etapa atual
            FiltrarConsEtapaImuno(vIDExame);
            //----------------------------------------------------------------------------------------------------
            lbEtapaAtual2.Caption := BuscaUltEtapa(vIDExame);
            lbUltEtapaAlt.Caption := dmConsultas.qyConsEtapaExame.Fields[0].Text +
                                     ' - ' +
                                     dmConsultas.qyConsEtapaExame.Fields[1].Text;
            //seta última alteração
            GetMaxLogData(vIDExame);
            if dmConsultas.qyConsUltAlt.Fields[0].IsNull then
              lbUltAlt.Caption := ''
            else
              lbUltAlt.Caption := FormatDateTime('dd/mm/yyyy', (dmConsultas.qyConsUltAlt.fields[0].Value));
        end
        else
          //precisa para limpar resultados anteriores na consulta caso não tenha nada agora.
          LimparConsLogs(vIDExame);
        end
        else
        begin
          pgPrincipal.ActivePage := tsPesquisa;
          MessageDlg('Você deve selecionar um exame!', mtWarning, [mbok], 0);
        end;
    end;
end;

procedure TfrmConsDivExames.cbProcTipocitChange(Sender: TObject);
begin
  if cbProcTipocit.Text <> '' then
    edTipoCit.Text := GetTipo(cbProcTipocit.Text);
end;

procedure TfrmConsDivExames.filtrar;
Var
vConsDivExames: TConsDivExames;
Begin
  vConsDivExames := TConsDivExames.Create;
  //Datas de início e final
  vConsDivExames.DataInicio := FormatDateTime(vgMaskData, edDtInicio.Date);
  vConsDivExames.DataFinal := FormatDateTime(vgMaskData, edDtFinal.Date);
  //Origem ---------------------------------------------------------------------
  if cbOrigem.Text <> '' then
    vConsDivExames.CodOrigem := dmLookups.lkProcOrigemexl_id.Text
  else
    vConsDivExames.CodOrigem := '0';
  //Tipo de exame --------------------------------------------------------------
  if cbTpExame.Text <> '' then
    vConsDivExames.CodTpExame := dmLookups.lkProcExamesTpetp_id.Text
  else
    vConsDivExames.CodTpExame := '0';
  //Convênio
  if cbConvenio.Text <> '' then
    vConsDivExames.CodConvenio := dmLookups.lkProcConvenioscov_codigo.Text
  else
    vConsDivExames.CodConvenio := '-1';
  //Médico
  if cbMedico.Text <> '' then
    vConsDivExames.CodMedico := dmLookups.lkProcMedicosmed_codigo.Text
  else
    vConsDivExames.CodMedico := '0';
  //ID de exames
  if edIDExame.Text <> '          ' then
    vConsDivExames.IDExame := edIDExame.Text
  else
    vConsDivExames.IDExame := '0';
  //tipo de busca por paciente
  vConsDivExames.TipoDeBusca := cbTipoBusca.ItemIndex;
  if cbPaciente.Text <> '' then
  begin
    vConsDivExames.NomePaciente := RemoveAcento(cbPaciente.Text);
    vConsDivExames.CodPaciente := dmLookups.lkProcPacientespac_codigo.Text;
  end
  else
  begin
    vConsDivExames.NomePaciente := '0';
    vConsDivExames.CodPaciente := '0';
  end;
  //Ordem da consulta
  vConsDivExames.Organizar := cbKeyOrdem.Value;
  vConsDivExames.Ordem := cbOrdem.Value;
  vConsDivExames.Registros := cbLimite.Value;
  vConsDivExames.NomePaciente := RemoveAcento(cbPaciente.Text);
  vConsDivExames.CodPaciente := dmLookups.lkProcPacientespac_codigo.Text;
  FiltrarExamesDiv(vConsDivExames);
  vConsDivExames.Free;
  //Contagem de exames
  lbExamesFilt.Caption := 'Exames encontrados no filtro: ' + IntToStr(dsConsulta.DataSet.RecordCount);
end;

procedure TfrmConsDivExames.FormActivate(Sender: TObject);
begin
  inherited;
  dsCitosTp.DataSet.Active := true;
  dsLogs.DataSet.Active := true;
  dsConsulta.DataSet.Active := true;
  dsCitologia.DataSet.Active := true;
  dsExamesSolicitados.DataSet.Active := true;
  dsHistologia.DataSet.Active := true;
  dsMacroscopia.DataSet.Active := true;
  dsExTopografias.DataSet.Active := true;
  dsBlocos.DataSet.Active := true;
  dsMicroscopia.DataSet.Active := true;
  dsProcedimentos.DataSet.Active := true;
  dsExameDoencas.DataSet.Active := true;
  dsExamesCob.DataSet.Active := true;
  dsReceber.DataSet.Active := true;
  dsHistRec.DataSet.Active := true;
  dmLookups.lkProcCitosTp.Active := true;
  limpar;
end;

procedure TfrmConsDivExames.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if dmExames.qyExamesTISS.State in [dsEdit, dsInsert] then
    dmExames.qyExamesTISS.Cancel;
  inherited;
end;

procedure TfrmConsDivExames.FormCreate(Sender: TObject);
begin
  inherited;
  FiltrarConsLogsCito('0');
  dsConsLogs.DataSet.Active := True;
end;

procedure TfrmConsDivExames.FormDestroy(Sender: TObject);
begin
  inherited;
  if frmConsDivExames <> nil then
    frmConsDivExames := nil;
end;

procedure TfrmConsDivExames.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_F5 then
    filtrar;
end;

procedure TfrmConsDivExames.GridExamesDrawDataCell(Sender: TObject;
  const Rect: TRect; Field: TField; State: TGridDrawState);
begin
  if odd(dsHistrec.DataSet.RecNo) then
    GridExames.Canvas.Brush.Color := clGray
  else
    GridExames.Canvas.Brush.Color:= clWhite;
  GridExames.Canvas.FillRect(Rect);
  GridExames.Canvas.font.Color:= clBlack;
  if gdSelected in State then
    with GridExames.Canvas do
    begin
      Brush.Color := clYellow;
      FillRect(Rect);
      Font.Style := [fsbold];
    end;
  GridExames.DefaultDrawDataCell(Rect, Field, State);
end;

procedure TfrmConsDivExames.GridTopDblClick(Sender: TObject);
begin
  FiltrarExamesBlocos('e.etg_id', '=', dmExames.qyExamesTopetg_id.Text, '0', '0');
end;

end.
