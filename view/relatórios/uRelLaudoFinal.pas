unit uRelLaudoFinal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpRelFormNormal, Data.DB, ppDB,
  ppDBPipe, ppParameter, ppBands, ppPrnabl, ppClass, ppCtrls, ppCache, ppComm,
  ppRelatv, ppProd, ppReport, Vcl.StdCtrls, Vcl.Buttons, ppVar, ppDesignLayer,
  ppRichTx, ppStrtch, ppSubRpt, ShellApi, Inifiles;

const
InputBoxMessage = WM_USER + 200;

type
  TfrmRelLaudoFinal = class(TfrmTmpRelFormNormal)
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppSystemVariable2: TppSystemVariable;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppDBText2: TppDBText;
    ppLabel6: TppLabel;
    ppDBText4: TppDBText;
    ppDBText3: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppLbMedicoAd: TppLabel;
    lbMedTitulo: TppLabel;
    ppLabel9: TppLabel;
    ppLine2: TppLine;
    ppLabel7: TppLabel;
    ppDBText8: TppDBText;
    ppLabel8: TppLabel;
    ppDBText9: TppDBText;
    ppLine1: TppLine;
    dbExamesSolic: TppDBPipeline;
    dsExamesSolic: TDataSource;
    ppDBText15: TppDBText;
    ppDBText14: TppDBText;
    ppLabel10: TppLabel;
    ppDBText16: TppDBText;
    ppFooterBand1: TppFooterBand;
    imgRodape: TppImage;
    ppSummaryBand1: TppSummaryBand;
    dbNotas: TppDBPipeline;
    dbResp: TppDBPipeline;
    dbImagem: TppDBPipeline;
    dbLaudo: TppDBPipeline;
    dbMacro: TppDBPipeline;
    dsNotas: TDataSource;
    dsExamesResp: TDataSource;
    dsImagem: TDataSource;
    dsLaudo: TDataSource;
    dsMacro: TDataSource;
    cbImagem: TCheckBox;
    cbRecibo: TCheckBox;
    sbSalvar: TSpeedButton;
    ppLine6: TppLine;
    ppLabel11: TppLabel;
    subMacro: TppSubReport;
    ppChildReport3: TppChildReport;
    ppDetailBand4: TppDetailBand;
    ppDBRichText1: TppDBRichText;
    lbMacro: TppLabel;
    subCito: TppSubReport;
    ppChildReport4: TppChildReport;
    ppDetailBand5: TppDetailBand;
    lbMicro: TppLabel;
    dbExameLaudo: TppDBRichText;
    subNotas: TppSubReport;
    ppChildReport1: TppChildReport;
    ppDetailBand2: TppDetailBand;
    ppDBRichText3: TppDBRichText;
    lbNotas: TppLabel;
    subDiagnostico: TppSubReport;
    ppChildReport5: TppChildReport;
    ppDetailBand6: TppDetailBand;
    lbDiagnostico: TppLabel;
    ppDBRichText2: TppDBRichText;
    subImagem: TppSubReport;
    ppChildReport2: TppChildReport;
    ppDetailBand3: TppDetailBand;
    img_imagem: TppDBImage;
    subAssinatura: TppSubReport;
    ppChildReport6: TppChildReport;
    ppDetailBand7: TppDetailBand;
    lbData: TppLabel;
    ppLine3: TppLine;
    ppDBText1: TppDBText;
    ppLabel1: TppLabel;
    imgAssinatura: TppImage;
    ppDesignLayers2: TppDesignLayers;
    ppDesignLayer2: TppDesignLayer;
    dsLogUsuarios: TDataSource;
    dsConfig: TDataSource;
    ppDesignLayers3: TppDesignLayers;
    ppDesignLayer3: TppDesignLayer;
    ppDesignLayers4: TppDesignLayers;
    ppDesignLayer4: TppDesignLayer;
    ppDesignLayers5: TppDesignLayers;
    ppDesignLayer5: TppDesignLayer;
    ppDesignLayers6: TppDesignLayers;
    ppDesignLayer6: TppDesignLayer;
    ppDesignLayers7: TppDesignLayers;
    ppDesignLayer7: TppDesignLayer;
    ppResTitulo: TppLabel;
    ppResConselho: TppLabel;
    ppResNumConselho: TppLabel;
    ppResUfCons: TppLabel;
    ppResIniciais: TppLabel;
    SaveDialog1: TSaveDialog;
    cbAssinatura: TCheckBox;
    ppLine4: TppLine;
    ppLabel12: TppLabel;
    ppDBText18: TppDBText;
    dsExamesDoencas: TDataSource;
    dbExamesDoencas: TppDBPipeline;
    subDoencas: TppSubReport;
    ppChildReport7: TppChildReport;
    ppDesignLayers8: TppDesignLayers;
    ppDesignLayer8: TppDesignLayer;
    ppDetailBand8: TppDetailBand;
    ppDBText7: TppDBText;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppDBText10: TppDBText;
    subFrase: TppSubReport;
    ppChildReport8: TppChildReport;
    dsFrases: TDataSource;
    dbFrases: TppDBPipeline;
    ppDesignLayers9: TppDesignLayers;
    ppDesignLayer9: TppDesignLayer;
    ppDetailBand9: TppDetailBand;
    ppDBText11: TppDBText;
    lbRQE: TppLabel;
    dbRQE: TppDBText;
    dbColeta: TppDBPipeline;
    dsColeta: TDataSource;
    ppLabel15: TppLabel;
    ppDBText12: TppDBText;
    procedure AtualizaLog(vfEtapa: Integer);
    procedure ImprimeFigura(vImprime: boolean);
    procedure sbSalvarClick(Sender: TObject);
    procedure ImprimeAss;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btImprimirClick(Sender: TObject);
    procedure btVisualizarClick(Sender: TObject);
    procedure sbExportarClick(Sender: TObject);
    procedure lbRQEPrint(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelLaudoFinal: TfrmRelLaudoFinal;

implementation

{$R *.dfm}

uses dataExames, dataConfig, dataGestao, dataFinanceiro, uVarGlobal, uDaoEmpresa,
  uDaoExamesFinal, uFuncoesDatas, uDaoExamesLogs, UFuncoesTISS,
  uDaoExamesEnvMail, uDaoExamesCob, uDaoImagens, uDaoExamesResp, uRelRecibo,
  uDaoRespAss, uFuncoesMail, uDaoExames, uDaoExamesDoencas, dataCadastros,
  uDaoExamesProced, uDaoExamesCitoNotas, uDaoExamesLaudo, uDaoExamesCitoMacro,
  uDaoExamesRespAd, uDaoResponsaveis, uDaoUsuariosMail, uCorreio,
  uDaoExamesCito, uDaoExamesFrases, uDaoExamesColeta;

procedure TfrmRelLaudoFinal.AtualizaLog(vfEtapa: Integer);
begin
  ListarEmpresa('emp_id', '1');
  dsConfig.DataSet.Active := true;
  //Atualiza data de impressão
  FiltrarExamesFinal('exa_id', '=', vgIDExame, '0', '1');
  if dmExames.qyExamesFinalexa_id.IsNull then
    InsExamesFinal(vgIDExame);
  lbData.Caption := DataExtenso(dmConfig.qyEmpresaemp_cidade.Text, dmExames.qyExamesFinalexa_data.Value);
  //altera etapa
  dmExames.qyExames.Edit;
  dmExames.qyExamesexa_etapa.Value := vfEtapa;
  dmExames.qyExames.Post;
  //atualiza log
  InsExamesLogs(vgIDExame, IntToStr(vfEtapa), vgCodUsuarioLog);
  //verifica pendências TISS
  if VerificaDadosTISS(dmExames.qyExamesexa_id.Text) = true then
  begin
    //volta etapa para a revisão e gera log = MASTER
    InsExamesLogs(vgIDExame, '4', '1');
    dmExames.qyExames.Edit;
    dmExames.qyExamesexa_etapa.Value := 4;
    dmExames.qyExames.Post;
    MessageDlg('Exames com pendências no TISS!' +#13 + 'Etapa não alterada!', mtWarning, [mbok], 0);
  end
  else
  begin
    //atualiza tabela ExamesEnvM
    SetEnvExamesEnvMail(vgIDExame);
    //Atualiza examescob para aparecer na geração de cobrança
    ConcExamesCob(vgIDExame);
  end;
end;

procedure TfrmRelLaudoFinal.ImprimeFigura(vImprime: boolean);
Begin
  //filtra tabela de imagens
  FiltrarImagens('img_exame', '=', vgIDExame, '0', '1');
  if not (dmExames.qyImagensimg_id.IsNull) then
  Begin
    if cbImagem.Checked = true then
    begin
      //img_imagem.GraphicType := 'JPEG';
      img_imagem.Visible := True;
      subImagem.Visible := True;
    end
    else //caso não imrpima figura por não existir imagem
    begin
      img_imagem.Visible := False;
      subImagem.Visible := false;
    end;
  end
  else //caso não imrpima figura por solicitação do usuário
  begin
    img_imagem.Visible := False;
    subImagem.Visible := false;
  end;
end;

procedure TfrmRelLaudoFinal.lbRQEPrint(Sender: TObject);
begin
  if dbRQE.Text = '' then
    lbRQE.Visible := false
  else
    lbRQE.Visible := true;
end;

procedure TfrmRelLaudoFinal.btImprimirClick(Sender: TObject);
begin
  AtualizaLog(6);
  if cbImagem.Checked = true then
    ImprimeFigura(true)
  else
    ImprimeFigura(false);
  if cbAssinatura.Checked = true then
    ImprimeAss
  else
    imgAssinatura.Visible := false;
  inherited;
end;

procedure TfrmRelLaudoFinal.btVisualizarClick(Sender: TObject);
begin
  AtualizaLog(6);
  if cbImagem.Checked = true then
    ImprimeFigura(true)
  else
    ImprimeFigura(false);
  if cbAssinatura.Checked = true then
    ImprimeAss
  else
    imgAssinatura.Visible := false;
  inherited;
end;

procedure TfrmRelLaudoFinal.FormActivate(Sender: TObject);
Var
vControl: TInifile;
vAss: String;
begin
  inherited;
  vControl := Tinifile.create(vgArqIni);
  vAss := vControl.ReadString('Relatorio', 'AssCito', '');
  vControl.Free;
  if vAss = 'true' then
    cbAssinatura.Checked := true
  else
    cbAssinatura.Checked := false;
  imgRodape.Visible := false;
  Relatorio.PrinterSetup.DocumentName := 'Exame n°: ' + vgIDExame;
  cbRecibo.Checked := false;
  dsLogUsuarios.DataSet.Active := true;
  dsExamesSolic.DataSet.Active := true;
  dsLaudo.DataSet.Active := true;
  dsImagem.DataSet.Active := true;
  dsMacro.DataSet.Active := true;
  dsNotas.DataSet.Active := true;
  dsExamesResp.DataSet.Active := true;
  Self.Caption := 'Exame: ' + vgIDExame;
  Relatorio.PrinterSetup.DocumentName := 'Exame: ' + vgIDExame;
  lbCaption.Caption := 'Exame: ' + vgIDExame;
  //filtra a tabela de exames
  FiltrarExames('e.exa_id', '=', vgIDExame, '0', '1');
  //filtra tabela de exameDoencas
  FiltrarExamesDoencas('d.exa_id', '=', vgIDExame, '0', '100');
  //filtra exames procedimentos
  FiltrarExamesProced('e.exa_id', '=', vgIDExame, '0', '100');
  //filtra tabela de notas complementares
  FiltrarExamesCitoNotas('exa_id', '=', vgIDExame, '0', '10');
  //filtra tabela de laudo
  FiltrarExamesLaudo('exa_id', '=', vgIDExame, '0', '10');
  //filtra tabela de exames solicitados
  FiltrarExamesCito('c.exa_id', '=', vgIDExame, '0', '100');
  //filtra tabela de ExamesCitoMacro
  FiltrarExamesCitoMacro('exa_id', '=', vgIDExame, '0', '10');
  //filtra frases de citologia
  FiltrarExamesFrases('exa_id', '=', vgIDExame, '0');
  //Filtra coleta e diversos
  FiltrarExamesColeta('exa_id', '=', vgIDExame, '0');
  if dmExames.qyExamesCitoMacroecm_macro.IsNull then
    frmRelLaudoFinal.lbMacro.Visible := false
  else
    frmRelLaudoFinal.lbMacro.Visible := true;
  //filtra medico adicional
  ppLbMedicoAd.Visible := false;
  FiltrarExamesRespAd('e.exa_id', '=', vgIDExame, '0', '10');
  if not(dmExames.qyExamesRespAdmed_nome.IsNull) then
  begin
    ppLbMedicoAd.Visible := true;
    ppLbMedicoAd.Text := '/ ' + dmExames.qyExamesRespAdmed_titulo.Text +
                         ' ' + dmExames.qyExamesRespAdmed_nome.Text;
  end;
  //Fitra data de finalização do exame
  FiltrarExamesFinal('exa_id', '=', vgIDExame, '0', '1');

  //Filtra e busca dados do responsavel
  FiltrarResponsaveis('r.res_codigo', '=', dmExames.qyExamesres_codigo.Text, '0', '1' );
  ppResTitulo.Text := dmCadastros.qyResponsaveisres_titulo.Text;
  ppResConselho.Text := dmCadastros.qyResponsaveiscos_tipo.Text;
  ppResNumConselho.Text := dmCadastros.qyResponsaveisres_numconselho.Text;
  ppResUfCons.Text := dmCadastros.qyResponsaveiscos_uf.Text;

  //Responsável adicional
  FiltrarExamesResp('exa_id', '=', vgIDExame, '0', '1');
  if dmExames.qyExamesRespres_iniciais.IsNull then
    ppResIniciais.Text := ''
  else
    ppResIniciais.Text := dmExames.qyExamesRespres_iniciais.Text;

  //Configura o que aparece ou não nos relatórios
  if ((dmExames.qyExamesLaudoexa_laudo.IsNull) or (dmExames.qyExamesLaudoexa_laudo.Text = ' ')) then
  begin
    lbMicro.Visible := false;
    subCito.Visible := false;
  end
  else
    begin
      lbMicro.Visible := true;
      subCito.Visible := true;
    end;
  if dmExames.qyExamesLaudoexa_laudo.IsNull then
    lbMacro.Visible := false
  else
    lbMacro.Visible := true;
  if dmExames.qyExamesLaudoexa_diagnostico.IsNull then
    lbDiagnostico.Visible := false
  else
    lbDiagnostico.Visible := true;
  if dmExames.qyExamesCitoNotasexa_id.IsNull then
    lbNotas.Visible := false
  else
    lbNotas.Visible := true;
  if dmExames.qyExamesCitoMacroexa_id.IsNull then
    lbMacro.Visible := false
  else
    lbMacro.Visible := true;
  //Imagem
  cbImagem.Checked := true;
end;

procedure TfrmRelLaudoFinal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  dmExames.qyImagens.Refresh;
  dmExames.qyImagens.Close;
  if vgExpedicao = false then
  begin
    if cbRecibo.Checked = true then
    begin
      vgClienteRec := dmExames.qyExamespac_nome.Text;
      vgIDExRec := dmExames.qyExamesexa_id.Text;
      vgValorRec := '0,00';
      frmRelRecibo.ShowModal;
    end;
  end;
  inherited;
end;

procedure TfrmRelLaudoFinal.sbSalvarClick(Sender: TObject);
Var
vArqTempJPG, vArqPDF: String;
vExame: String;
begin
  if vgExpPdf = 'S' then
  begin
    imgRodape.Visible := true;
    //Testa se o responsável tem imagem / assinatura
    FiltrarRespAss('res_codigo', '=', dmExames.qyExamesres_codigo.Text, '0', '1');
    if not(dmGestao.qyRespAssres_codigo.IsNull) then
    begin
      atualizaLog(6);
      if cbImagem.Checked = true then
        ImprimeFigura(true)
      else
        ImprimeFigura(false);
      //busca pasta temporaria
      imgRodape.Picture.LoadFromFile(vgImgRodape);
      //ID do exame
      vExame := dmExames.qyExamesexa_id.Text;
      vArqTempJPG := vgDirTemp + '\' + dmExames.qyExamesres_codigo.Text + '.jpg';
      if FileExists(vArqTempJPG) then
        DeleteFile(vArqTempJPG);
      if cbAssinatura.Checked = true then
        ImprimeAss
      else
        imgAssinatura.Visible := false;
      Relatorio.ShowPrintDialog := false;
      Relatorio.TextFileName := vgDirTemp + '\' + vExame + '.pdf';
      SaveDialog1.Title := vgIDExame + '.pdf';
      SaveDialog1.FileName := vgIDExame + '.pdf';
      if SaveDialog1.Execute then
        Relatorio.TextFileName := SaveDialog1.FileName;
      vArqPDF := Relatorio.TextFileName;
      if FileExists(Relatorio.TextFileName) then
        DeleteFile(Relatorio.TextFileName);
      Relatorio.DeviceType := 'PDF';
      Relatorio.Print;
      //Verifica se o usuário quer abrir o pdf gerado
      if MessageDlg('Deseja abrir o arquivo gerado?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        ShellExecute(Handle, 'OPEN', PChar(vArqPDF), nil, nil, sw_shownormal);
      Close;
    end
    else
      MessageDlg('O Responsável não possui imagem da assinatura cadastrada!', mtWarning, [mbok], 0);
  end
  else
    MessageDlg('O usuário não possui privilégios para exportação de laudos!', mtWarning, [mbok], 0);
end;

procedure TfrmRelLaudoFinal.ImprimeAss;
Var
vArqTempJPG: String;
begin
  FiltrarRespAss('res_codigo', '=', dmExames.qyExamesres_codigo.Text, '0', '1');
  //Testa se o responsável tem imagem / assinatura
  if not(dmGestao.qyRespAssres_codigo.IsNull) then
  begin
    //busca pasta temporaria
    vArqTempJPG := vgDirTemp + '\assinatura.jpg';
    if FileExists(vArqTempJPG) then
      DeleteFile(vArqTempJPG);
    dmGestao.qyRespAssres_ass.SaveToFile(vArqTempJPG);
    imgAssinatura.Picture.LoadFromFile(vArqTempJPG);
    ImgAssinatura.Visible := true;
  end;
end;

procedure TfrmRelLaudoFinal.sbExportarClick(Sender: TObject);
Var
vArqTempJPG, vArqPDF: String;
vAttachmentNum: String;
begin
  if vgExpPdf = 'S' then
  begin
    //Configurar exportação
    Relatorio.DeviceType := 'PDFFile';
    Relatorio.ShowPrintDialog := True;
    //Configura PDF
    Relatorio.PDFSettings.Subject := Relatorio.PrinterSetup.DocumentName;
    Relatorio.PDFSettings.Title := Relatorio.PrinterSetup.DocumentName;
    imgRodape.Visible := true;
    //Testa se o responsável tem imagem / assinatura
    FiltrarRespAss('res_codigo', '=', dmExames.qyExamesres_codigo.Text, '0', '1');
    if not(dmGestao.qyRespAssres_codigo.IsNull) then
    begin
      atualizaLog(6);
      if cbImagem.Checked = true then
        ImprimeFigura(true)
      else
        ImprimeFigura(false);
      //busca pasta temporaria
      imgRodape.Picture.LoadFromFile(vgImgRodape);
      //ID do exame
      vArqTempJPG := vgDirTemp + '\' + dmExames.qyExamesres_codigo.Text + '.jpg';
      if FileExists(vArqTempJPG) then
        DeleteFile(vArqTempJPG);
      if cbAssinatura.Checked = true then
        ImprimeAss
      else
        imgAssinatura.Visible := false;
      Relatorio.ShowPrintDialog := false;
      Relatorio.TextFileName := vgDirTemp + '\' + vgIDExame + '.pdf';
      if FileExists(Relatorio.TextFileName) then
        DeleteFile(Relatorio.TextFileName);
      Relatorio.DeviceType := 'PDF';
      Relatorio.Print;
      vArqPDF := Relatorio.TextFileName;
      //inicia procedimento de envio de e-mail
      //Carrega arquivo para enviar por e-mail
      if FileExists(vArqPDF) then
      begin
        if MessageDlg('Deseja enviar o arquivo gerado por e-mail?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        begin
          vAttachmentNum := 'attachment' + ('0');
          FiltrarUsuariosMail('usu_codigo', '=', vgCodUsuarioLog, '0', '1');
          if not(dmCadastros.qyUsuariosMailusu_codigo.IsNull) then
          begin
            frmCorreio.Caption := 'Enviar exame por e-mail (' + vgIDExame + ')';
            frmCorreio.edAnexo.Text := vArqPDF;
            frmCorreio.ShowModal;
          end
          else
            MessageDlg('Usuário sem e-mail cadastrado!', mtWarning, [mbOk], 0);
        end;
      end
      else
        MessageDlg('Não foi possível gerar o exame!', mtWarning, [mbOk], 0);
      Close;
    end
    else
      MessageDlg('O Responsável não possui imagem da assinatura cadastrada!', mtWarning, [mbok], 0);
  end
  else
    MessageDlg('O usuário não possui privilégios para exportação de laudos!', mtWarning, [mbok], 0);
end;

end.
