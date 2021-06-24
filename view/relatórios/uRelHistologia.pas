unit uRelHistologia;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpRelFormNormal, Data.DB, ppDB,
  ppDBPipe, ppParameter, ppBands, ppPrnabl, ppClass, ppCtrls, ppCache, ppComm,
  ppRelatv, ppProd, ppReport, Vcl.StdCtrls, Vcl.Buttons, ppVar, ppDesignLayer,
  ppRichTx, ppStrtch, ppSubRpt, ShellApi, Inifiles;

const
InputBoxMessage = WM_USER + 200;

type
  TfrmRelHistologia = class(TfrmTmpRelFormNormal)
    dsExamesHist: TDataSource;
    dsConfig: TDataSource;
    dsMacro: TDataSource;
    dsImagem: TDataSource;
    dsMicro: TDataSource;
    dsLog: TDataSource;
    sbSalvar: TSpeedButton;
    cbRecibo: TCheckBox;
    cbImagem: TCheckBox;
    dbImagem: TppDBPipeline;
    dbExamesHist: TppDBPipeline;
    dbMacro: TppDBPipeline;
    dbMicro: TppDBPipeline;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppLine1: TppLine;
    ppSystemVariable2: TppSystemVariable;
    ppLabel2: TppLabel;
    ppDBText2: TppDBText;
    ppLabel3: TppLabel;
    ppDBText3: TppDBText;
    ppLabel4: TppLabel;
    ppDBText5: TppDBText;
    ppLabel5: TppLabel;
    ppDBText6: TppDBText;
    ppLbMedicoAd: TppLabel;
    ppLabel6: TppLabel;
    ppDBText4: TppDBText;
    ppLabel12: TppLabel;
    ppDBText18: TppDBText;
    ppLabel7: TppLabel;
    ppDBText8: TppDBText;
    ppLabel8: TppLabel;
    ppDBText9: TppDBText;
    lbMedTitulo: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppFooterBand1: TppFooterBand;
    imgRodape: TppImage;
    ppLine5: TppLine;
    ppLabel15: TppLabel;
    ppLine4: TppLine;
    subMacro: TppSubReport;
    ppChildReport1: TppChildReport;
    ppDetailBand2: TppDetailBand;
    dbMacroscopia: TppDBRichText;
    ppLabel11: TppLabel;
    subMicro: TppSubReport;
    ppChildReport2: TppChildReport;
    ppDetailBand3: TppDetailBand;
    dbMicroscopia: TppDBRichText;
    ppLabelMicro: TppLabel;
    subDiagnostico: TppSubReport;
    ppChildReport3: TppChildReport;
    ppDetailBand4: TppDetailBand;
    ppLbDiagnostico: TppLabel;
    dbDiagnostico: TppDBRichText;
    subComplemento: TppSubReport;
    ppChildReport4: TppChildReport;
    ppDetailBand5: TppDetailBand;
    dbComplemento: TppDBRichText;
    ppLbComplemento: TppLabel;
    subImagem: TppSubReport;
    ppChildReport5: TppChildReport;
    ppDetailBand6: TppDetailBand;
    img_imagem: TppDBImage;
    subAssinatura: TppSubReport;
    ppChildReport6: TppChildReport;
    ppDetailBand7: TppDetailBand;
    lbData: TppLabel;
    ppLine2: TppLine;
    ppDBText14: TppDBText;
    ppLabel1: TppLabel;
    imgAssinatura: TppImage;
    ppDBText11: TppDBText;
    ppDBText1: TppDBText;
    ppLabel10: TppLabel;
    ppDBText12: TppDBText;
    ppDesignLayers2: TppDesignLayers;
    ppDesignLayer2: TppDesignLayer;
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
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    lbExamesSolic: TppLabel;
    ppLine3: TppLine;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppEHI_MATERIAL: TppDBText;
    ppResTitulo: TppLabel;
    ppResConselho: TppLabel;
    ppResNumConselho: TppLabel;
    ppResUfCons: TppLabel;
    SaveDialog1: TSaveDialog;
    cbAssinatura: TCheckBox;
    ppSystemVariable1: TppSystemVariable;
    ppTracoAssAd: TppLine;
    ppHifenAd: TppLabel;
    imgAssinaturaAd: TppImage;
    ppTituloAd: TppLabel;
    ppConselhoAd: TppLabel;
    ppNumConsAd: TppLabel;
    ppUfAd: TppLabel;
    ppRespAd: TppLabel;
    SubExamesDoencas: TppSubReport;
    ppChildReport7: TppChildReport;
    ppDesignLayers8: TppDesignLayers;
    ppDesignLayer8: TppDesignLayer;
    ppDetailBand8: TppDetailBand;
    dbExamesDoencas: TppDBPipeline;
    dsExamesDoencas: TDataSource;
    ppDBText7: TppDBText;
    ppLabel9: TppLabel;
    ppLabel13: TppLabel;
    ppDBText10: TppDBText;
    lbRQE: TppLabel;
    dbRQE: TppDBText;
    ppLabel14: TppLabel;
    dsColeta: TDataSource;
    ppDBText13: TppDBText;
    dbColeta: TppDBPipeline;
    procedure atualizaLog(vfEtapa: Integer);
    procedure ImprimeFigura(vImprime: boolean);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btVisualizarClick(Sender: TObject);
    procedure btImprimirClick(Sender: TObject);
    procedure ImprimeAss;
    procedure sbExportarClick(Sender: TObject);
    procedure sbSalvarClick(Sender: TObject);
    procedure img_imagemPrint(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure lbRQEPrint(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelHistologia: TfrmRelHistologia;

implementation

{$R *.dfm}

uses dataExames, dataConfig, dataFinanceiro, uVarGlobal, dataGestao, uRelRecibo,
  uPrincipal, uDaoEmpresa, uDaoExamesFinal, uFuncoesDatas, uDaoExamesLogs,
  UFuncoesTISS, uDaoExamesEnvMail, uDaoExamesCob, uDaoImagens, uFuncoesSistema,
  uDaoExames, uDaoExamesResp, uDaoExamesHist, uDaoExamesHistMacro,
  uDaoExamesHistMicro, uDaoExamesRespAd, uDaoRespAss, uFuncoesMail,
  uDaoResponsaveis, dataCadastros, uDaoUsuariosMail, uCorreio,
  uDaoExamesDoencas, uDaoExamesColeta;

procedure TfrmRelHistologia.atualizaLog(vfEtapa: Integer);
begin
  //Atualiza data de impressão
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

procedure TfrmRelHistologia.ImprimeFigura(vImprime: boolean);
Begin
  //filtra tabela de imagens
  FiltrarImagens('img_exame', '=', vgIDExame, '0', '1');
  if not (dmExames.qyImagensimg_id.IsNull) then
  Begin
    if cbImagem.Checked = true then
    begin
      img_imagem.GraphicType := 'JPEG';
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

procedure TfrmRelHistologia.lbRQEPrint(Sender: TObject);
begin
  if dbRQE.Text = '' then
    lbRQE.Visible := false
  else
    lbRQE.Visible := true;
end;

procedure TfrmRelHistologia.btImprimirClick(Sender: TObject);
begin
  atualizaLog(8);
  if cbImagem.Checked = true then
    ImprimeFigura(true)
  else
    ImprimeFigura(false);
  if cbAssinatura.Checked = true then
    ImprimeAss
  else
  begin
    imgAssinatura.Visible := false;
    imgAssinaturaAd.Visible := false;
  end;
  Relatorio.DeviceType := 'Printer';
  Relatorio.ShowPrintDialog := True;
  Relatorio.Print;
  Close;
end;

procedure TfrmRelHistologia.btVisualizarClick(Sender: TObject);
begin
  atualizaLog(8);
  if cbImagem.Checked = true then
    ImprimeFigura(true)
  else
    ImprimeFigura(false);
  if cbAssinatura.Checked = true then
    ImprimeAss
  else
  begin
    imgAssinatura.Visible := false;
    imgAssinaturaAd.Visible := false;
  end;
  Relatorio.DeviceType := 'Screen';
  Relatorio.ShowPrintDialog := True;
  Relatorio.Print;
  Close;
end;

procedure TfrmRelHistologia.FormActivate(Sender: TObject);
Var
vControl: TInifile;
vAss: String;
begin
  inherited;
  vControl := Tinifile.create(vgArqIni);
  vAss := vControl.ReadString('Relatorio', 'AssHisto', '');
  vControl.Free;
  if vAss = 'true' then
    cbAssinatura.Checked := true
  else
    cbAssinatura.Checked := false;
  frmRelHistologia.Caption := 'Impressão Histologia - Vs. ' + VersaoSistema(0);
  imgRodape.Visible := false;
  dmExames.qyExames.Active := true;
  dmConfig.qyEmpresa.Active := true;
  dmExames.qyExamesHist.Active := true;
  dmExames.qyImagens.Active := true;
  dmExames.qyExamesHistMacro.Active := true;
  dmExames.qyExamesHistMicro.Active := true;
  dsExamesHist.DataSet.Active := true;
  dsImagem.DataSet.Active := true;
  dsMacro.DataSet.Active := true;
  dsMicro.DataSet.Active := true;
  dsLog.DataSet.Active := true;
  dsConfig.DataSet.Active := true;
  dsExamesDoencas.DataSet.Active := True;
  dsColeta.DataSet.Active := True;
  cbRecibo.Checked := false;
  cbImagem.Checked := false;
  subImagem.Visible := false;
  ImgAssinatura.Visible := false;
  imgAssinaturaAd.Visible := false;
  Relatorio.PrinterSetup.DocumentName := 'Exame n°: ' + vgIDExame;
  //busca ID do exame da unit uVarGlobal
  frmRelHistologia.Caption := 'Exame - (Histologia: ' + vgIDExame + ')';
  lbCaption.Caption := frmRelHistologia.Caption;
  FiltrarExames('e.exa_id', '=', vgIDExame, '0', '1');
  if dmExames.qyExamesetp_id.Value = 4 then
    ppLbDiagnostico.Caption := 'Resultado:'
  else
    ppLbDiagnostico.Caption := 'Diagnóstico:';
  //filtra tabela de imagens
  FiltrarImagens('img_exame', '=', vgIDExame, '0', '1');
  //filtra a tabela de exameshist
  FiltrarExamesHist('h.exa_id', '=', vgIDExame, 'h.mat_id', '100');
  //filtra a tabela de exameshistmacro
  FiltrarExamesHistMacro('exa_id', '=', vgIDExame, '0', '100');
  //filtra a tabela de exameshistmicro
  FiltrarExamesHistMicro('exa_id', '=', vgIDExame, '0', '1');
  //Fitra data de finalização do exame
  FiltrarExamesFinal('exa_id', '=', vgIDExame, '0', '1');
  //Filtra ExamesDoencas
  FiltrarExamesDoencas('exa_id', '=', vgIDExame, '0', '0');
  //verifica se existe algum campo em branco caso não deixa invisível o ppLbs
  if dmExames.qyExamesHistMicroehr_microscopia.IsNull then
    ppLabelMicro.Visible := false
  else
    ppLabelMicro.Visible := true;
  if dmExames.qyExamesHistMicroehr_diagnostico.IsNull then
    ppLbDiagnostico.Visible := false
  else
    ppLbDiagnostico.Visible := true;
  if dmExames.qyExamesHistMicroehr_complemento.IsNull then
    ppLbComplemento.Visible := false
  else
    ppLbComplemento.Visible := true;
  //filtra medico adicional
  ppLbMedicoAd.Visible := false;
  //Filtra e busca dados do responsavel
  FiltrarResponsaveis('r.res_codigo', '=', dmExames.qyExamesres_codigo.Text, '0', '1' );
  ppResTitulo.Text := dmCadastros.qyResponsaveisres_titulo.Text;
  ppResConselho.Text := dmCadastros.qyResponsaveiscos_tipo.Text;
  ppResNumConselho.Text := dmCadastros.qyResponsaveisres_numconselho.Text;
  ppResUfCons.Text := dmCadastros.qyResponsaveiscos_uf.Text;
  //Coleta e diversos
  FiltrarExamesColeta('exa_id', '=', vgIDExame, '0');
  //Responsável adicional
  FiltrarExamesResp('exa_id', '=', vgIDExame, '0', '1');
  if dmExames.qyExamesRespexa_id.IsNull then
  begin
    ppTracoAssAd.Visible := False;
    ppTituloAd.Visible := False;
    ppRespAd.Visible := False;
    ppConselhoAd.Visible := False;
    ppNumConsAd.Visible := False;
    ppHifenAd.Visible := False;
    ppUfAd.Visible := False;
  end
  else
  begin
    FiltrarResponsaveis('res_codigo', '=', dmExames.qyExamesRespres_codigo.Text, '0', '0');
    ppTituloAd.Caption := dmCadastros.qyResponsaveisres_titulo.Text;
    ppRespAd.Caption := dmCadastros.qyResponsaveisres_nome.Text;
    ppConselhoAd.Caption := dmCadastros.qyResponsaveiscos_tipo.Text;
    ppNumConsAd.Caption := dmCadastros.qyResponsaveisres_numconselho.Text;
    ppUfAd.Caption := dmCadastros.qyResponsaveiscos_uf.Text;
    ppTracoAssAd.Visible := True;
    ppTituloAd.Visible := True;
    ppRespAd.Visible := True;
    ppConselhoAd.Visible := True;
    ppNumConsAd.Visible := True;
    ppHifenAd.Visible := True;
    ppUfAd.Visible := True;
  end;
  FiltrarExamesRespAd('e.exa_id', '=', vgIDExame, '0', '10');
  if not(dmExames.qyExamesRespAdmed_nome.IsNull) then
  begin
    ppLbMedicoAd.Visible := true;
    ppLbMedicoAd.Text := '/ ' + dmExames.qyExamesRespAdmed_titulo.Text +
                         ' ' + dmExames.qyExamesRespAdmed_nome.Text;
  end;
  ImgAssinatura.Visible := false;
end;

procedure TfrmRelHistologia.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if cbRecibo.Checked = true then
  begin
    vgClienteRec := dmExames.qyExamespac_nome.Text;
    vgIDExRec := dmExames.qyExamesexa_id.Text;
    vgValorRec := '0,00';
    frmRelRecibo.ShowModal;
  end;
  inherited;
end;

procedure TfrmRelHistologia.FormDestroy(Sender: TObject);
begin
  inherited;
  //
end;

procedure TfrmRelHistologia.img_imagemPrint(Sender: TObject);
begin
  //filtra tabela de imagens
  FiltrarImagens('img_exame', '=', vgIDExame, '0', '1');
  if dmExames.qyImagensimg_id.IsNull then
    img_imagem.Visible := false
  else
    img_imagem.Visible := true;
end;

procedure TfrmRelHistologia.sbSalvarClick(Sender: TObject);
Var
vArqTempJPG, vArqPDF: String;
vImgRodape: String;
vOrigem, vIDExame, vExame: String;
begin
  if vgExpPdf = 'S' then
  begin
    imgRodape.Visible := true;
    if cbImagem.Checked = true then
      ImprimeFigura(true)
    else
      ImprimeFigura(false);
    //Testa se o responsável tem imagem / assinatura
    FiltrarRespAss('res_codigo', '=', dmExames.qyExamesres_codigo.Text, '0', '1');
    if not(dmGestao.qyRespAssres_codigo.IsNull) then
    begin
      atualizaLog(8);
      //Inclui imagem da assinatura no PDF a ser gerado
      imgRodape.Picture.LoadFromFile(vgImgRodape);
      Relatorio.ShowPrintDialog := false;
      Relatorio.TextFileName := vgDirTemp + '\' + vgIDExame + '.pdf';
      SaveDialog1.Title := vgIDExame + '.pdf';
      SaveDialog1.FileName := vgIDExame + '.pdf';
      if SaveDialog1.Execute then
        Relatorio.TextFileName := SaveDialog1.FileName;
      vArqPDF := Relatorio.TextFileName;
      if FileExists(Relatorio.TextFileName) then
        DeleteFile(Relatorio.TextFileName);
      if cbAssinatura.Checked = true then
        ImprimeAss
      else
      begin
        imgAssinatura.Visible := false;
        imgAssinaturaAd.Visible := false;
      end;
      Relatorio.PDFSettings.OpenPDFFile := false;
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

procedure TfrmRelHistologia.ImprimeAss;
Var
vArqTempJPG: String;
begin
  //Testa se o responsável tem imagem / assinatura
  FiltrarRespAss('res_codigo', '=', dmExames.qyExamesres_codigo.Text, '0', '1');
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
  //Verifica se o exame possui responsável adicional
  FiltrarExamesResp('e.exa_id', '=', dmExames.qyExamesexa_id.Text, '0', '0');
  if not(dmExames.qyExamesRespexa_id.IsNull) then
  begin
    FiltrarRespAss('res_codigo', '=', dmExames.qyExamesRespres_codigo.Text, '0', '1');
    if not(dmGestao.qyRespAssres_codigo.IsNull) then
    begin
      vArqTempJPG := vgDirTemp + '\assinaturaAd.jpg';
      if FileExists(vArqTempJPG) then
        DeleteFile(vArqTempJPG);
      dmGestao.qyRespAssres_ass.SaveToFile(vArqTempJPG);
      imgAssinaturaAd.Picture.LoadFromFile(vArqTempJPG);
      imgAssinaturaAd.Visible := true;
    end
    else
      MessageDlg('O responsável adicional não possui assinatura no sistema!', mtWarning, [mbOk], 0);
  end;
end;

procedure TfrmRelHistologia.sbExportarClick(Sender: TObject);
Var
vArqTempJPG, vArqPDF: String;
vImgRodape: String;
vOrigem, vAttachmentNum: String;
begin
  if vgExpPdf = 'S' then
  begin
    //Configurar exportação
    Relatorio.ShowPrintDialog := True;
    //Configura PDF
    Relatorio.PDFSettings.Subject := Relatorio.PrinterSetup.DocumentName;
    Relatorio.PDFSettings.Title := Relatorio.PrinterSetup.DocumentName;
    imgRodape.Visible := true;
    //Testa se o responsável tem imagem / assinatura
    FiltrarRespAss('res_codigo', '=', dmExames.qyExamesres_codigo.Text, '0', '1');
    if not(dmGestao.qyRespAssres_codigo.IsNull) then
    begin
      atualizaLog(8);
      if cbImagem.Checked = true then
        ImprimeFigura(true)
      else
        ImprimeFigura(false);
      //Inclui imagem da assinatura no PDF a ser gerado
      imgRodape.Picture.LoadFromFile(vgImgRodape);
      //busca pasta temporaria
      Relatorio.ShowPrintDialog := false;
      Relatorio.TextFileName := vgDirTemp + '\' + vgIDExame + '.pdf';
      if FileExists(Relatorio.TextFileName) then
        DeleteFile(Relatorio.TextFileName);
      if cbAssinatura.Checked = true then
        ImprimeAss
      else
      begin
        imgAssinatura.Visible := false;
        imgAssinaturaAd.Visible := false;
      end;
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
