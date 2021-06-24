unit uExpedicao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpFormNormal, Vcl.StdCtrls,
  Vcl.Buttons, wwdbdatetimepicker, Vcl.Mask, wwdbedit, Wwdotdot, Wwdbcomb,
  wwdblook, Vcl.Menus, Vcl.Grids, Wwdbigrd, Wwdbgrid, Data.DB, Inifiles;

type
  TfrmExpedicao = class(TfrmTmpFormNormal)
    Label1: TLabel;
    cbConvenio: TwwDBLookupCombo;
    Label2: TLabel;
    cbFiltro: TwwDBComboBox;
    Label3: TLabel;
    edInicio: TwwDBDateTimePicker;
    Label9: TLabel;
    edFinal: TwwDBDateTimePicker;
    Label7: TLabel;
    cbExamesTp: TwwDBLookupCombo;
    cbGerCob: TCheckBox;
    btFiltrar: TBitBtn;
    btLimpar: TBitBtn;
    dsExpedicao: TDataSource;
    dsConvenios: TDataSource;
    dsEndereco: TDataSource;
    Label6: TLabel;
    cbEndereco: TwwDBLookupCombo;
    btAlterar: TBitBtn;
    Label8: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBGrid1: TwwDBGrid;
    PopupMenu: TPopupMenu;
    Selecionartodos1: TMenuItem;
    Desmarcartodos1: TMenuItem;
    procedure Limpar;
    procedure Filtrar;
    procedure Imprimefigura;
    procedure FormActivate(Sender: TObject);
    procedure btFiltrarClick(Sender: TObject);
    procedure btLimparClick(Sender: TObject);
    procedure btAlterarClick(Sender: TObject);
    procedure Selecionartodos1Click(Sender: TObject);
    procedure Desmarcartodos1Click(Sender: TObject);
    procedure DBGrid1CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1DrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
    procedure DBGrid1Exit(Sender: TObject);
  private
    vlExameEnv: String;

  public
    { Public declarations }
  end;

var
  frmExpedicao: TfrmExpedicao;

implementation

{$R *.dfm}

uses dataLookups, dataExames, dataConsultas, uDaoExames, dataGestao, uVarGlobal,
  uDaoConsEnvMail, uFuncoesMail, uDaoImagens, uFuncoesSistema, uRelLaudoFinal,
  uDaoEmail, uDaoExamesProced, uDaoExamesCito, uDaoExamesRespAd,
  uDaoExamesHist, uDaoExamesHistMacro, uDaoExamesDoencas, uDaoExamesCitoNotas,
  uDaoExamesLaudo, uDaoExamesCitoMacro, uDaoExamesFinal, uDaoRespAss,
  dataConfig, uFuncoesDatas, uRelHistologia, uDaoExamesEnvMail,
  uDaoExamesHistMicro, uDaoResponsaveis, dataCadastros, uDaoExamesResp,
  uDaoImagensZEOS, dataFiles;

procedure TfrmExpedicao.Limpar;
begin
  cbGerCob.Checked := false;
  cbConvenio.Clear;
  cbExamesTp.Clear;
  cbFiltro.ItemIndex := 0;
  cbFiltro.Text := 'Não Enviados';
  edInicio.Date := now - 90;
  edFinal.Date := now;
  cbEndereco.Clear;
  FiltrarConsEnvMail(edInicio.Text, edFinal.Text, 'false', '', '0', '');
  cbConvenio.SetFocus;
end;

procedure TfrmExpedicao.Selecionartodos1Click(Sender: TObject);
begin
  dmConsultas.qyConsEnvMail.Last;
  repeat
  begin
    dmConsultas.qyConsEnvMail.Edit;
    dmConsultas.qyConsEnvMaileem_enviar.Value := true;
    dmConsultas.qyConsEnvMail.Post;
    dmConsultas.qyConsEnvMail.Prior;
  end;
  until dmConsultas.qyConsEnvMail.Bof = true;
end;

procedure TfrmExpedicao.Imprimefigura;
Var
vArqTempJPG, vArqTempBMP: String;
vOrigem: String;
begin
  //filtra tabela de imagens
  FiltrarImagensZeos('img_exame', '=', vlExameEnv, '0', '1');
  if not(dmFiles.qyImagensimg_id.IsNull) then
  Begin
    //caso a tabela possua a imagem, salva em pasta temporária e copia para a pasta correta
    vArqTempJPG := vgDirTemp + '\' + vlExameEnv + '.jpg';
    dmFiles.qyImagensimg_imagem.SaveToFile(vArqTempJPG);
    ConvertJPG_BMP(vArqTempJPG);
    vArqTempBMP := vgDirTemp + '\' + vlExameEnv + '.bmp';
    vOrigem := vArqTempBMP;
  end;
  //busca imagem da pasta temporária
  if FileExists(vOrigem) then
    frmRelLaudoFinal.img_imagem.Visible := true
  else
    frmRelLaudoFinal.img_imagem.Visible := False;
end;

procedure TfrmExpedicao.btLimparClick(Sender: TObject);
begin
  Limpar;
end;

procedure TfrmExpedicao.DBGrid1CalcCellColors(Sender: TObject; Field: TField;
  State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
  if (dsExpedicao.DataSet.FieldByName('eem_enviado').Value = true) then
    aFont.Color := clRed
  else
    AFont.Color := clBlack;
end;

procedure TfrmExpedicao.DBGrid1DrawDataCell(Sender: TObject; const Rect: TRect;
  Field: TField; State: TGridDrawState);
begin
  if odd(dsExpedicao.DataSet.RecNo) then
    DBGrid1.Canvas.Brush.Color := clSilver
  else
    DBGrid1.Canvas.Brush.Color:= clWhite;
  DBGrid1.Canvas.FillRect(Rect);
  DBGrid1.Canvas.font.Color:= clBlack;
  if gdSelected in State then
    with DBGrid1.Canvas do
    begin
      Brush.Color := clYellow;
      FillRect(Rect);
      //Font.Style := [fsbold];
    end;
  DBGrid1.DefaultDrawDataCell(Rect, Field, State);
end;

procedure TfrmExpedicao.DBGrid1Exit(Sender: TObject);
begin
  inherited;
  if dsExpedicao.DataSet.State in [dsEdit] then
    dsExpedicao.DataSet.Post;
end;

procedure TfrmExpedicao.Desmarcartodos1Click(Sender: TObject);
begin
  dmConsultas.qyConsEnvMail.Last;
  repeat
  begin
    dmConsultas.qyConsEnvMail.Edit;
    dmConsultas.qyConsEnvMaileem_enviar.Value := false;
    dmConsultas.qyConsEnvMail.Post;
    dmConsultas.qyConsEnvMail.Prior;
  end;
  until dmConsultas.qyConsEnvMail.Bof = true;
end;

procedure TfrmExpedicao.Filtrar;
Var
vGerCob, vCodConvenio, vCodTpExame: String;
begin
  if cbGerCob.Checked = true then
    vGerCob := 'S'
  else
    vGerCob := 'N';

  if cbConvenio.Text <> '' then
    vCodConvenio := dmLookups.lkProcConvenioscov_codigo.Text
  else
    vCodConvenio := '';

  if cbExamesTp.Text <> '' then
    vCodTpExame := dmLookups.lkProcExamesTpetp_id.Text
  else
    vCodTpExame := '';

  if cbFiltro.ItemIndex = 0 then
    cbFiltro.Text := 'Não Enviados';
  if cbFiltro.ItemIndex = 1 then
    cbFiltro.Text := 'Enviados';
  if cbFiltro.ItemIndex = 2 then
    cbFiltro.Text := 'Todos';

  FiltrarConsEnvMail(edInicio.Text, edFinal.Text, vGerCob, vCodConvenio, IntToStr(cbFiltro.ItemIndex), vCodTpExame);

  if not(dsExpedicao.DataSet.FieldByName('exa_id').IsNull) then
    DBGrid1.SetFocus;
end;

procedure TfrmExpedicao.btAlterarClick(Sender: TObject);
Var
vAnexo, vEndEmail: String;
vArqTempJPG: String;
vLstAnexos: TStringList;
begin
  try
  //Verifica se o campo endereço foi preenchido
  if cbEndereco.Text <> '' then
  begin
    vLstAnexos := TStringList.Create;
    //verifica se a tabela está em modo de edição
    if dsExpedicao.DataSet.State in [dsEdit] then
      dsExpedicao.DataSet.Post;
    Cursor := crHourGlass;
    vEndEmail := cbEndereco.Text;
    //verifica se endereço digitado já existe na tabela de emails
    FiltrarEmail('ema_endereco', '=', cbEndereco.Text, '0', '1');
    if dmGestao.qyEmailema_endereco.IsNull then
      SetMail(cbEndereco.Text);
    dmConsultas.qyConsEnvMail.Last;
    repeat
    begin
      if dmConsultas.qyConsEnvMaileem_enviar.Value = TRUE then
      begin
        //variavel da unit
        vlExameEnv := dmConsultas.qyConsEnvMailexa_id.Text;
        //envia ID do exame para o uVarGlobal
        vgIDCaptura := dmConsultas.qyConsEnvMailexa_id.Text;
        vgImagemExame := dmConsultas.qyConsEnvMailexa_id.Text;
//Citologia --------------------------------------------------------------------
        if ((dmConsultas.qyConsEnvMailetp_id.Value = 0) or (dmConsultas.qyConsEnvMailetp_id.Value = 1) or
         (dmConsultas.qyConsEnvMailetp_id.Value = 5)) then
        begin
          //Envia ID do exame para a variável global
          vgIDExame := vlExameEnv;
          CriaFormMDI(TfrmRelLaudoFinal, frmRelLaudoFinal);
          frmRelLaudoFinal.ImgAssinatura.Visible := false;
          frmRelLaudoFinal.imgRodape.Visible := true;
          //filtra a tabela de exames
          FiltrarExames('e.exa_id', '=', vlExameEnv, '0', '1');
          //filtra tabela de exameDoencas
          FiltrarExamesDoencas('d.exa_id', '=', vlExameEnv, '0', '100');
          //filtra exames procedimentos
          FiltrarExamesProced('e.exa_id', '=', vlExameEnv, '0', '100');
          //filtra tabela de notas complementares
          FiltrarExamesCitoNotas('exa_id', '=', vlExameEnv, '0', '10');
          //filtra tabela de laudo
          FiltrarExamesLaudo('exa_id', '=', vlExameEnv, '0', '10');
          //filtra tabela de exames solicitados
          FiltrarExamesCito('c.exa_id', '=', vlExameEnv, '0', '100');
          //filtra tabela de ExamesCitoMacro
          FiltrarExamesCitoMacro('exa_id', '=', vlExameEnv, '0', '10');
          if dmExames.qyExamesCitoMacroecm_macro.IsNull then
            frmRelLaudoFinal.lbMacro.Visible := false
          else
            frmRelLaudoFinal.lbMacro.Visible := true;
          //filtra medico adicional
          frmRelLaudoFinal.ppLbMedicoAd.Visible := false;
          FiltrarExamesRespAd('e.exa_id', '=', vlExameEnv, '0', '10');
          if not(dmExames.qyExamesRespAdmed_nome.IsNull) then
          begin
            frmRelLaudoFinal.ppLbMedicoAd.Visible := true;
            frmRelLaudoFinal.ppLbMedicoAd.Text := '/ ' + dmExames.qyExamesRespAdmed_titulo.Text +
            ' ' + dmExames.qyExamesRespAdmed_nome.Text;
          end;
          //Fitra data de finalização do exame
          FiltrarExamesFinal('exa_id', '=', vlExameEnv, '0', '1');
          //Filtra e busca dados do responsavel
          FiltrarResponsaveis('r.res_codigo', '=', dmExames.qyExamesres_codigo.Text, '0', '1' );
          frmRelLaudoFinal.ppResTitulo.Text := dmCadastros.qyResponsaveisres_titulo.Text;
          frmRelLaudoFinal.ppResConselho.Text := dmCadastros.qyResponsaveiscos_tipo.Text;
          frmRelLaudoFinal.ppResNumConselho.Text := dmCadastros.qyResponsaveisres_numconselho.Text;
          frmRelLaudoFinal.ppResUfCons.Text := dmCadastros.qyResponsaveiscos_uf.Text;
          //Responsável adicional
          FiltrarExamesResp('exa_id', '=', vgIDExame, '0', '1');
          if dmExames.qyExamesRespres_iniciais.IsNull then
            frmRelLaudoFinal.ppResIniciais.Text := ''
          else
            frmRelLaudoFinal.ppResIniciais.Text := dmExames.qyExamesRespres_iniciais.Text;
          //Testa se o responsável tem imagem / assinatura
          FiltrarRespAss('res_codigo', '=', dmExames.qyExamesres_codigo.Text, '0', '1');
          if not(dmGestao.qyRespAssres_codigo.IsNull) then
          begin
            frmRelLaudoFinal.imgRodape.Picture.LoadFromFile(vgImgRodape);
            //ID do exame
            vArqTempJPG := vgDirTemp + '\assinatura.jpg';
            dmGestao.qyRespAssres_ass.SaveToFile(vArqTempJPG);
            frmRelLaudoFinal.imgAssinatura.Picture.LoadFromFile(vArqTempJPG);
            frmRelLaudoFinal.ImgAssinatura.Visible := true;
          end;
          //Configura o que aparece ou não nos relatórios
          if ((dmExames.qyExamesLaudoexa_laudo.IsNull) or (dmExames.qyExamesLaudoexa_laudo.Text = ' ')) then
          begin
            frmRelLaudoFinal.lbMicro.Visible := false;
            frmRelLaudoFinal.subCito.Visible := false;
          end
          else
          begin
            frmRelLaudoFinal.lbMicro.Visible := true;
            frmRelLaudoFinal.subCito.Visible := true;
          end;
          if dmExames.qyExamesLaudoexa_laudo.IsNull then
            frmRelLaudoFinal.lbMacro.Visible := false
          else
            frmRelLaudoFinal.lbMacro.Visible := true;
          if dmExames.qyExamesLaudoexa_diagnostico.IsNull then
            frmRelLaudoFinal.lbDiagnostico.Visible := false
          else
            frmRelLaudoFinal.lbDiagnostico.Visible := true;
          if dmExames.qyExamesCitoNotasexa_id.IsNull then
            frmRelLaudoFinal.lbNotas.Visible := false
          else
            frmRelLaudoFinal.lbNotas.Visible := true;
          if dmExames.qyExamesCitoMacroexa_id.IsNull then
            frmRelLaudoFinal.lbMacro.Visible := false
          else
            frmRelLaudoFinal.lbMacro.Visible := true;
          //Começa impressão / exportação PDF
          frmRelLaudoFinal.Relatorio.PrinterSetup.DocumentName := 'Exame: ' + vlExameEnv;
          frmRelLaudoFinal.dsImagem.DataSet.Active := true;
          frmRelLaudoFinal.img_imagem.Visible := true;
          frmRelLaudoFinal.cbImagem.Checked := true;
          frmRelLaudoFinal.lbData.Caption := DataExtenso(dmConfig.qyEmpresaemp_cidade.Text, dmExames.qyExamesFinalexa_data.Value);
          ImprimeFigura;
          frmRelLaudoFinal.Relatorio.ShowPrintDialog := false;
          frmRelLaudoFinal.Relatorio.DeviceType := 'PDFFile';
          frmRelLaudoFinal.Relatorio.TextFileName := vgDirTemp + '\' + vlExameEnv + '.pdf';
          frmRelLaudoFinal.Relatorio.Print;
          vAnexo := vgDirTemp + '\' + vlExameEnv + '.pdf';
          vLstAnexos.Add(vAnexo);
        end;
//Histologia -------------------------------------------------------------------
        if ((dmConsultas.qyConsEnvMailetp_id.Value = 2) or (dmConsultas.qyConsEnvMailetp_id.Value = 3)
            or (dmConsultas.qyConsEnvMailetp_id.Value = 4)) then
        //Gera relatorio Histo
        begin
          //Envia ID do exame para a variavel global
          vgIDExame := vlExameEnv;
          CriaFormMDI(TfrmRelHistologia, frmRelHistologia);
          frmRelHistologia.imgRodape.Visible := true;
          //filtra a tabela de exames
          FiltrarExames('e.exa_id', '=', vlExameEnv, '0', '1');
          //filtra tabela de imagens
          FiltrarImagens('img_exame', '=', vlExameEnv, '0', '1');
          //filtra a tabela de exameshist
          FiltrarExamesHist('h.exa_id', '=', vlExameEnv, '0', '100');
          //filtra a tabela de exameshistmacro
          FiltrarExamesHistMacro('exa_id', '=', vlExameEnv, '0', '100');
          //filtra a tabela de exameshistmicro
          FiltrarExamesHistMicro('exa_id', '=', vlExameEnv, '0', '1');
          //Fitra data de finalização do exame
          FiltrarExamesFinal('exa_id', '=', vlExameEnv, '0', '1');
          //Filtra e busca dados do responsavel
          FiltrarResponsaveis('r.res_codigo', '=', dmExames.qyExamesres_codigo.Text, '0', '1' );
          frmRelHistologia.ppResTitulo.Text := dmCadastros.qyResponsaveisres_titulo.Text;
          frmRelHistologia.ppResConselho.Text := dmCadastros.qyResponsaveiscos_tipo.Text;
          frmRelHistologia.ppResNumConselho.Text := dmCadastros.qyResponsaveisres_numconselho.Text;
          frmRelHistologia.ppResUfCons.Text := dmCadastros.qyResponsaveiscos_uf.Text;

          //verifica se existe algum campo em branco caso não deixa invisível o ppLbs
          if dmExames.qyExamesHistMicroehr_microscopia.IsNull then
            frmRelHistologia.ppLabelMicro.Visible := false
          else
            frmRelHistologia.ppLabelMicro.Visible := true;
          if dmExames.qyExamesHistMicroehr_diagnostico.IsNull then
            frmRelHistologia.ppLbDiagnostico.Visible := false
          else
            frmRelHistologia.ppLbDiagnostico.Visible := true;
          if dmExames.qyExamesHistMicroehr_complemento.IsNull then
            frmRelHistologia.ppLbComplemento.Visible := false
          else
            frmRelHistologia.ppLbComplemento.Visible := true;
          //filtra medico adicional
          frmRelHistologia.ppLbMedicoAd.Visible := false;
          //Filtra responsável adicional
          FiltrarExamesResp('exa_id', '=', vgIDExame, '0', '1');
          FiltrarExamesRespAd('e.exa_id', '=', vlExameEnv, '0', '10');
          if not(dmExames.qyExamesRespAdmed_nome.IsNull) then
          begin
            frmRelHistologia.ppLbMedicoAd.Visible := true;
            frmRelHistologia.ppLbMedicoAd.Text := '/ ' + dmExames.qyExamesRespAdmed_titulo.Text +
            ' ' + dmExames.qyExamesRespAdmed_nome.Text;
          end;
          frmRelHistologia.ImgAssinatura.Visible := false;
          //Testa se o responsável tem imagem / assinatura
          FiltrarRespAss('res_codigo', '=', dmExames.qyExamesres_codigo.Text, '0', '1');
          if not(dmGestao.qyRespAssres_codigo.IsNull) then
          begin
            frmRelHistologia.imgRodape.Picture.LoadFromFile(vgImgRodape);
            vArqTempJPG := vgDirTemp + '\assinatura.jpg';
            dmGestao.qyRespAssres_ass.SaveToFile(vArqTempJPG);
            frmRelHistologia.imgAssinatura.Picture.LoadFromFile(vArqTempJPG);
            frmRelHistologia.ImgAssinatura.Visible := true;
          end;
          //dados para a geração do relatório
          frmRelHistologia.Relatorio.PrinterSetup.DocumentName := 'Exame: ' + vlExameEnv;
          frmRelHistologia.img_imagem.Visible := true;
          frmRelHistologia.cbImagem.Checked := true;
          frmRelHistologia.lbData.Caption := DataExtenso(dmConfig.qyEmpresaemp_cidade.Text, dmExames.qyExamesFinalexa_data.Value);
          //ImprimeFigura;
          frmRelHistologia.Relatorio.ShowPrintDialog := false;
          frmRelHistologia.Relatorio.DeviceType := 'PDFFile';
          frmRelHistologia.Relatorio.TextFileName := vgDirTemp + '\' + vlExameEnv + '.pdf';
          frmRelHistologia.Relatorio.Print;
          vAnexo := vgDirTemp + '\' + vlExameEnv + '.pdf';
          vLstAnexos.Add(vAnexo);
        end;
        //atualiza status de enviado na tabela examesenvmail
        SetEnvExamesEnvMail(vlExameEnv);
      end;
      dmConsultas.qyConsEnvMail.Prior;
    end;
    until dmConsultas.qyConsEnvMail.Bof = true;
    Cursor := crDefault;
    //conclui o procedimento de envio de e-mail
{
    SendMailIndy(cbEndereco.Text, 'Exames solicitados', 'Em anexo exame(s) solicitado(s).',
                 vLstAnexos, true);
}
    //SendMailIndyMail();
    dmConsultas.qyConsEnvMail.Refresh;
    vLstAnexos.Free;
    Close;
  end
  else
    MessageDlg('Você deve preencher o campo Endereço de e-mail!', mtWarning, [mbOk], 0);
  except
    on E: Exception do
    Begin
      Cursor := crDefault;
      MessageDlg('Não foi possível gerar o envio!' + #13#10 +
          E.Message,mtError,[mbOk],0);
    end;
  end;
end;

procedure TfrmExpedicao.btFiltrarClick(Sender: TObject);
begin
  Filtrar;
end;

procedure TfrmExpedicao.FormActivate(Sender: TObject);
begin
  inherited;
  Limpar;
  dmConfig.qyEmpresa.Active := True;
  dsConvenios.DataSet.Active := True;
  dsExpedicao.DataSet.Active := True;
  FiltrarImagens('img_exame', '=', '0', '0', '0');
end;

procedure TfrmExpedicao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if frmRelLaudoFinal <> nil then
    frmRelLaudoFinal.Close;
  if frmRelHistologia <> nil then
    frmRelHistologia.Close;
  inherited;
end;

end.
