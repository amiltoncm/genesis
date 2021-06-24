unit uPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, ToolWin, ComCtrls, Menus, ExtCtrls, ShellApi, Inifiles,
  ActnList, Vcl.StdCtrls, Wwintl, Vcl.AppEvnts, SDEngine, ClipBrd;

const
  InputBoxMessage = WM_USER + 200;

type
  TfrmPrincipal = class(TForm)
    Imagens: TImageList;
    MainMenu1: TMainMenu;
    Cadastros1: TMenuItem;
    Consultas1: TMenuItem;
    Movimentaes1: TMenuItem;
    Relatrios1: TMenuItem;
    teis1: TMenuItem;
    ToolBar1: TToolBar;
    ImgFundoTela: TImage;
    ActionList1: TActionList;
    actFechar: TAction;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    Sair1: TMenuItem;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    actMaximizaTodas: TAction;
    actMinimizaTodas: TAction;
    actFechaAtiva: TAction;
    actFecharTodas: TAction;
    BalloonHint1: TBalloonHint;
    N1: TMenuItem;
    actBloquear: TAction;
    ToolButton9: TToolButton;
    ToolButton11: TToolButton;
    Bloquearsistema1: TMenuItem;
    Janelas1: TMenuItem;
    Maximimzarjanelas1: TMenuItem;
    Minimizarjanelas1: TMenuItem;
    Fecharjanela1: TMenuItem;
    Fecharjanelas1: TMenuItem;
    actSobre: TAction;
    Sobre1: TMenuItem;
    N2: TMenuItem;
    ToolButton13: TToolButton;
    ToolButton10: TToolButton;
    Exames1: TMenuItem;
    Citologia1: TMenuItem;
    Histologia1: TMenuItem;
    actRegCito: TAction;
    Requisio1: TMenuItem;
    ToolButton12: TToolButton;
    ToolButton14: TToolButton;
    actRegHisto: TAction;
    Requisio2: TMenuItem;
    ToolButton15: TToolButton;
    ToolButton16: TToolButton;
    actRegCapturaH: TAction;
    Capturahbrida1: TMenuItem;
    actRegCapturaH1: TMenuItem;
    Imunohistoqumica1: TMenuItem;
    actRegImuno: TAction;
    Requisio3: TMenuItem;
    popPrincipal: TPopupMenu;
    Capturahbrida2: TMenuItem;
    Requisio7: TMenuItem;
    citologia3: TMenuItem;
    MenuItem1: TMenuItem;
    Histologia3: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    Requisio4: TMenuItem;
    actExpedicao: TAction;
    actExpedicao1: TMenuItem;
    actImpCito: TAction;
    ImprimeexameCitologia1: TMenuItem;
    actImpHistologia: TAction;
    ImprimeexameHistologia1: TMenuItem;
    actCfgMail: TAction;
    Parmetroseconfiguraes1: TMenuItem;
    N3: TMenuItem;
    email1: TMenuItem;
    actCadUsuarios: TAction;
    Acesso1: TMenuItem;
    Usurios1: TMenuItem;
    actLeitura: TAction;
    Leitura1: TMenuItem;
    actParametros: TAction;
    Parmetroseconfiguraes2: TMenuItem;
    actAltEtapaCito: TAction;
    N4: TMenuItem;
    Alteraetapa1: TMenuItem;
    ToolButton17: TToolButton;
    ToolButton18: TToolButton;
    ToolButton19: TToolButton;
    ToolButton20: TToolButton;
    actLaudo: TAction;
    ToolButton21: TToolButton;
    PreencherLaudo1: TMenuItem;
    actCadPacientes: TAction;
    Pacientes1: TMenuItem;
    wwIntl1: TwwIntl;
    Leitura2: TMenuItem;
    PreencherLaudo2: TMenuItem;
    ImprimeexameCitologia2: TMenuItem;
    N5: TMenuItem;
    Alteraetapa2: TMenuItem;
    actCadResponsaveis: TAction;
    actCadResponsaveis1: TMenuItem;
    ToolButton22: TToolButton;
    ToolButton23: TToolButton;
    ImprimeexameHistologia2: TMenuItem;
    actCorte: TAction;
    ToolButton24: TToolButton;
    actMacroscopia: TAction;
    ToolButton25: TToolButton;
    actCfgBase: TAction;
    Basededados1: TMenuItem;
    actRelCorte: TAction;
    ToolButton26: TToolButton;
    RelatriodeCorte1: TMenuItem;
    actMicroscopia: TAction;
    ToolButton27: TToolButton;
    Microscopia1: TMenuItem;
    Corte1: TMenuItem;
    Macroscopia1: TMenuItem;
    actRevisao: TAction;
    ToolButton28: TToolButton;
    Reviso1: TMenuItem;
    actAltEtapaHist: TAction;
    ToolButton30: TToolButton;
    N6: TMenuItem;
    Alteraetapa3: TMenuItem;
    actCatTpAcesso: TAction;
    ipodeacesso1: TMenuItem;
    actCadBancos: TAction;
    Bancos1: TMenuItem;
    ToolButton31: TToolButton;
    actAgenda: TAction;
    ToolButton32: TToolButton;
    actAgenda1: TMenuItem;
    actCID10: TAction;
    CID101: TMenuItem;
    actCadCidades: TAction;
    Citologia2: TMenuItem;
    actLaudosMod: TAction;
    ModelosdeLaudosCitologia1: TMenuItem;
    actExamesTipoCito: TAction;
    iposdeexamesCitologia1: TMenuItem;
    actCadContas: TAction;
    Contas1: TMenuItem;
    actCadConvenios: TAction;
    Convnios1: TMenuItem;
    actCadFornecedores: TAction;
    Fornecedores1: TMenuItem;
    Funcionrios1: TMenuItem;
    actCadFuncoes: TAction;
    Funes1: TMenuItem;
    actCadFuncionarios: TAction;
    Funcionrios2: TMenuItem;
    actCadExamesLocais: TAction;
    actCadMedicos: TAction;
    actCadProcedimentos: TAction;
    actCadMovimentos: TAction;
    actCadUf: TAction;
    abeladepreos1: TMenuItem;
    Procedimentos1: TMenuItem;
    Locaiscoletaentrega1: TMenuItem;
    Mdicos1: TMenuItem;
    iposdemovimentao1: TMenuItem;
    EstadosUF1: TMenuItem;
    Histologia2: TMenuItem;
    actCadMateriais: TAction;
    actCadLaudosModMacro: TAction;
    actCadLaudosModHist: TAction;
    actCadExamesTipoHist: TAction;
    actCadExamesTipo: TAction;
    actCadTopografias: TAction;
    Materiais1: TMenuItem;
    ModelosMacroscopia1: TMenuItem;
    Modelosmicroscopiaediagnstico1: TMenuItem;
    Subtiposdeexames1: TMenuItem;
    iposdeexames1: TMenuItem;
    opografias1: TMenuItem;
    ToolButton33: TToolButton;
    ToolButton34: TToolButton;
    ToolButton35: TToolButton;
    ToolButton36: TToolButton;
    ToolButton37: TToolButton;
    ToolButton38: TToolButton;
    ToolButton39: TToolButton;
    ToolButton40: TToolButton;
    actRefreshLK: TAction;
    ToolButton41: TToolButton;
    actRelExConv: TAction;
    Exames2: TMenuItem;
    Financeiros1: TMenuItem;
    ExamesXConvnios1: TMenuItem;
    actRelExMed: TAction;
    ExamesXMdicos1: TMenuItem;
    ToolButton29: TToolButton;
    ToolButton42: TToolButton;
    actRelExOri: TAction;
    ExamesXOrigem1: TMenuItem;
    actRelExPac: TAction;
    ExamesXPacientes1: TMenuItem;
    actRelListagem: TAction;
    ListagemdeExames1: TMenuItem;
    actRelExProced: TAction;
    ExamesXProcedimentos1: TMenuItem;
    Caixa1: TMenuItem;
    actRelCaixa: TAction;
    actRelCaixa1: TMenuItem;
    actRelCaixaAgr: TAction;
    CaixaPlanodecontasagrupado1: TMenuItem;
    actRelCaixaMov: TAction;
    CaixaPlanodecontasdetalhado1: TMenuItem;
    actRelSaldos: TAction;
    N7: TMenuItem;
    Saldodascontas1: TMenuItem;
    actRelPagar: TAction;
    ContasPagar1: TMenuItem;
    Contaspagar2: TMenuItem;
    actRelPagas: TAction;
    Contaspagas1: TMenuItem;
    ContasReceber1: TMenuItem;
    actRelReceber: TAction;
    Contasreceber2: TMenuItem;
    actRelRecebidos: TAction;
    Contasrecebidas1: TMenuItem;
    Diversos1: TMenuItem;
    actRelLotesTISS: TAction;
    actRelLotesTISS1: TMenuItem;
    actRelExameXConvenio: TAction;
    ExamesXConvnio1: TMenuItem;
    actRelProcedXCob: TAction;
    ProcedimentosXCobrana1: TMenuItem;
    Atualizartabelas1: TMenuItem;
    actRelEtiquetas: TAction;
    actRelEtiquetas1: TMenuItem;
    Etiquetas1: TMenuItem;
    ToolButton43: TToolButton;
    ToolButton44: TToolButton;
    actGerenFiles: TAction;
    Arquivos1: TMenuItem;
    N8: TMenuItem;
    actGerarSADT: TAction;
    ContasReceber3: TMenuItem;
    GerarTISS1: TMenuItem;
    actIntegrador: TAction;
    N9: TMenuItem;
    Integrador1: TMenuItem;
    actHelpCID10: TAction;
    HelpCID101: TMenuItem;
    actHomePage: TAction;
    Pginadodesenvolvedor1: TMenuItem;
    actLimpaLogs: TAction;
    Limparlogs1: TMenuItem;
    actLimpaCacheImg: TAction;
    LimparcacheImagens1: TMenuItem;
    actStatusExames: TAction;
    Exames3: TMenuItem;
    StatusdoExame1: TMenuItem;
    actCalendario: TAction;
    Calendrio1: TMenuItem;
    actEntCaixa: TAction;
    Caixa2: TMenuItem;
    Entradasdiversas1: TMenuItem;
    StatusBar1: TStatusBar;
    ApplicationEvents1: TApplicationEvents;
    actExamesPendentes: TAction;
    ExamesPendentes1: TMenuItem;
    actIntegridade: TAction;
    Integridadedosexames1: TMenuItem;
    Financeiras1: TMenuItem;
    actConsCheques: TAction;
    Cheques1: TMenuItem;
    actConsQuantEx: TAction;
    Quantidadedeexames1: TMenuItem;
    actConsPagar: TAction;
    Contaspagarpagas1: TMenuItem;
    actSaiCaixa: TAction;
    actInserirImuno: TAction;
    Inserirexame1: TMenuItem;
    Inserirexame2: TMenuItem;
    Sadasdiversas1: TMenuItem;
    N10: TMenuItem;
    actMovTransfContas: TAction;
    ransfernciaentrecontas1: TMenuItem;
    actAtualizacaoSistema: TAction;
    Atualizaodosistema1: TMenuItem;
    actBackup: TAction;
    Backupbasededados1: TMenuItem;
    Imagens1: TMenuItem;
    actLogsLogin: TAction;
    Logsdologin1: TMenuItem;
    actModulos: TAction;
    Mdulosdosistema1: TMenuItem;
    actAgendaComp: TAction;
    actAgendaComp1: TMenuItem;
    TimerAgenda: TTimer;
    actBxCheques: TAction;
    Cheques2: TMenuItem;
    Baixadecheques1: TMenuItem;
    actLancCheque: TAction;
    Lanmanetodecheque1: TMenuItem;
    actLancPagar: TAction;
    Contaspagar3: TMenuItem;
    Lanamento1: TMenuItem;
    actBxPagar: TAction;
    Baixar1: TMenuItem;
    actAltPag: TAction;
    Alterarpagamentos1: TMenuItem;
    actConsPendTISS: TAction;
    ISS1: TMenuItem;
    Pendncias1: TMenuItem;
    actBxDupCli: TAction;
    Baixar2: TMenuItem;
    actAltReceber: TAction;
    Alterarecebimento1: TMenuItem;
    actAltProced: TAction;
    actAltProced1: TMenuItem;
    actGeraCob: TAction;
    GerarcobranaExame1: TMenuItem;
    actGeraCobMult: TAction;
    actGeraCobMult1: TMenuItem;
    actConsReceber: TAction;
    Contasreceberrecebidas1: TMenuItem;
    actConsDivExames: TAction;
    Exames4: TMenuItem;
    ToolButton45: TToolButton;
    ToolButton46: TToolButton;
    actRecibo: TAction;
    Recibo1: TMenuItem;
    ToolButton47: TToolButton;
    actHelp: TAction;
    Helponline1: TMenuItem;
    actConsTopografiasEx: TAction;
    actConsCortes1: TMenuItem;
    Auditoria1: TMenuItem;
    actRelAuditoria: TAction;
    Histologia4: TMenuItem;
    actImagens: TAction;
    actCadLaudosPreMod: TAction;
    Prmodelos1: TMenuItem;
    actRelExamesDoencas: TAction;
    ExamesXDoencas1: TMenuItem;
    actVersao: TAction;
    ToolButton48: TToolButton;
    ToolButton49: TToolButton;
    Notasdaverso1: TMenuItem;
    actPGTools: TAction;
    PGTools1: TMenuItem;
    actCadFrasesCito: TAction;
    Frasesdecitologia1: TMenuItem;
    actFinalizarHisto: TAction;
    Finalizar1: TMenuItem;
    ToolButton50: TToolButton;
    procedure DisplayHint(Sender: TObject);
    procedure InputBoxSetPasswordChar(var Msg: TMessage); Message InputBoxMessage;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure actFecharExecute(Sender: TObject);
    procedure actMaximizaTodasExecute(Sender: TObject);
    procedure actMinimizaTodasExecute(Sender: TObject);
    procedure actFechaAtivaExecute(Sender: TObject);
    procedure actFecharTodasExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actBloquearExecute(Sender: TObject);
    procedure actSobreExecute(Sender: TObject);
    procedure actRegCitoExecute(Sender: TObject);
    procedure actRegHistoExecute(Sender: TObject);
    procedure actRegCapturaHExecute(Sender: TObject);
    procedure actRegImunoExecute(Sender: TObject);
    procedure actExpedicaoExecute(Sender: TObject);
    procedure actImpCitoExecute(Sender: TObject);
    procedure actImpHistologiaExecute(Sender: TObject);
    procedure actCfgMailExecute(Sender: TObject);
    procedure actCadUsuariosExecute(Sender: TObject);
    procedure actLeituraExecute(Sender: TObject);
    procedure actParametrosExecute(Sender: TObject);
    procedure actAltEtapaCitoExecute(Sender: TObject);
    procedure actLaudoExecute(Sender: TObject);
    procedure actCadPacientesExecute(Sender: TObject);
    procedure actCadResponsaveisExecute(Sender: TObject);
    procedure actCorteExecute(Sender: TObject);
    procedure actMacroscopiaExecute(Sender: TObject);
    procedure actCfgBaseExecute(Sender: TObject);
    procedure actRelCorteExecute(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure actMicroscopiaExecute(Sender: TObject);
    procedure actRevisaoExecute(Sender: TObject);
    procedure actAltEtapaHistExecute(Sender: TObject);
    procedure actCatTpAcessoExecute(Sender: TObject);
    procedure actCadBancosExecute(Sender: TObject);
    procedure actAgendaExecute(Sender: TObject);
    procedure actCID10Execute(Sender: TObject);
    procedure actCadCidadesExecute(Sender: TObject);
    procedure actLaudosModExecute(Sender: TObject);
    procedure actExamesTipoCitoExecute(Sender: TObject);
    procedure actCadContasExecute(Sender: TObject);
    procedure actCadConveniosExecute(Sender: TObject);
    procedure actCadFornecedoresExecute(Sender: TObject);
    procedure actCadFuncoesExecute(Sender: TObject);
    procedure actCadFuncionariosExecute(Sender: TObject);
    procedure actCadExamesLocaisExecute(Sender: TObject);
    procedure actCadMedicosExecute(Sender: TObject);
    procedure actCadProcedimentosExecute(Sender: TObject);
    procedure actCadMovimentosExecute(Sender: TObject);
    procedure actCadUfExecute(Sender: TObject);
    procedure actCadMateriaisExecute(Sender: TObject);
    procedure actCadLaudosModMacroExecute(Sender: TObject);
    procedure actCadLaudosModHistExecute(Sender: TObject);
    procedure actCadExamesTipoHistExecute(Sender: TObject);
    procedure actCadExamesTipoExecute(Sender: TObject);
    procedure actCadTopografiasExecute(Sender: TObject);
    procedure actRefreshLKExecute(Sender: TObject);
    procedure actRelExConvExecute(Sender: TObject);
    procedure actRelExMedExecute(Sender: TObject);
    procedure actRelExOriExecute(Sender: TObject);
    procedure actRelExPacExecute(Sender: TObject);
    procedure actRelListagemExecute(Sender: TObject);
    procedure actRelExProcedExecute(Sender: TObject);
    procedure actRelCaixaExecute(Sender: TObject);
    procedure actRelCaixaAgrExecute(Sender: TObject);
    procedure actRelCaixaMovExecute(Sender: TObject);
    procedure actRelSaldosExecute(Sender: TObject);
    procedure actRelPagarExecute(Sender: TObject);
    procedure actRelPagasExecute(Sender: TObject);
    procedure actRelReceberExecute(Sender: TObject);
    procedure actRelRecebidosExecute(Sender: TObject);
    procedure actRelLotesTISSExecute(Sender: TObject);
    procedure actRelExameXConvenioExecute(Sender: TObject);
    procedure actRelProcedXCobExecute(Sender: TObject);
    procedure actRelEtiquetasExecute(Sender: TObject);
    procedure actGerenFilesExecute(Sender: TObject);
    procedure actGerarSADTExecute(Sender: TObject);
    procedure actIntegradorExecute(Sender: TObject);
    procedure actHelpCID10Execute(Sender: TObject);
    procedure actHomePageExecute(Sender: TObject);
    procedure actLimpaLogsExecute(Sender: TObject);
    procedure actLimpaCacheImgExecute(Sender: TObject);
    procedure actStatusExamesExecute(Sender: TObject);
    procedure actCalendarioExecute(Sender: TObject);
    procedure actEntCaixaExecute(Sender: TObject);
    procedure actExamesPendentesExecute(Sender: TObject);
    procedure actIntegridadeExecute(Sender: TObject);
    procedure actConsChequesExecute(Sender: TObject);
    procedure actConsQuantExExecute(Sender: TObject);
    procedure actConsPagarExecute(Sender: TObject);
    procedure actSaiCaixaExecute(Sender: TObject);
    procedure actInserirImunoExecute(Sender: TObject);
    procedure actMovTransfContasExecute(Sender: TObject);
    procedure actAtualizacaoSistemaExecute(Sender: TObject);
    procedure actBackupExecute(Sender: TObject);
    procedure actLogsLoginExecute(Sender: TObject);
    procedure actModulosExecute(Sender: TObject);
    procedure actAgendaCompExecute(Sender: TObject);
    procedure actBxChequesExecute(Sender: TObject);
    procedure actLancChequeExecute(Sender: TObject);
    procedure actLancPagarExecute(Sender: TObject);
    procedure actBxPagarExecute(Sender: TObject);
    procedure actAltPagExecute(Sender: TObject);
    procedure actConsPendTISSExecute(Sender: TObject);
    procedure actBxDupCliExecute(Sender: TObject);
    procedure actAltReceberExecute(Sender: TObject);
    procedure actAltProcedExecute(Sender: TObject);
    procedure actGeraCobExecute(Sender: TObject);
    procedure actGeraCobMultExecute(Sender: TObject);
    procedure actConsReceberExecute(Sender: TObject);
    procedure actConsDivExamesExecute(Sender: TObject);
    procedure actReciboExecute(Sender: TObject);
    procedure actHelpExecute(Sender: TObject);
    procedure actConsTopografiasExExecute(Sender: TObject);
    procedure actRelAuditoriaExecute(Sender: TObject);
    procedure actImagensExecute(Sender: TObject);
    procedure actCadLaudosPreModExecute(Sender: TObject);
    procedure actRelExamesDoencasExecute(Sender: TObject);
    procedure actVersaoExecute(Sender: TObject);
    procedure actPGToolsExecute(Sender: TObject);
    procedure actCadFrasesCitoExecute(Sender: TObject);
    procedure actFinalizarHistoExecute(Sender: TObject);
    procedure FinalizarHisto;

  private

    FClientInstance, FPrevClient: TFarProc;
    Procedure ClientWindow(Var Message: TMessage);

  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses uVarGlobal, uFuncoesSistema, uSenha, uSobre, uRequisicao, uExpedicao,
  uSelImprimeCit, uSelHistologia, uCfgMail, uCadUsuarios, uSelCIT, uParametros,
  uDaoUsuarios, uFuncoesSeguranca, dataCadastros, uTransfCito, uSelExameLaudo,
  uCadPacientes, uCadResponsaveis, uSelHistCorte, uCfgBase, uDaoExames,
  dataConsultas, uRelCorte, uDaoTestes, uTransfMacro, uCadAcesso, uCadBancos,
  uCadAgenda, uCadCidades, uCadCID10, uCadLaudosMod, uCadExamesTipoCito,
  uCadContas, uCadConvenios, uCadFornecedores, uCadFuncionarios, uCadFuncoes,
  uCadExamesLocais, uCadMedicos, uCadMovimentos, uCadProcedimentos, uCadUf,
  uCadExamesTipo, uCadExamesTipoHist, uCadLaudosModHist, uCadLaudosModMacro,
  uCadMateriais, uCadTopografias, dataLookups, uRelExConv, uRelExMed, uRelExOri,
  uRelExPac, uRelListagem, uRelExProced, uRelCaixa, uRelCaixaAgrupado,
  uRelCaixaMov, uRelCaixaAll, uRelPagar, uRelPagas, uRelReceber, uRelRecebido,
  uRelLotesTISS, uRelExamesConvenios, uRelProcedXConv, uRelEtiquetasAut,
  uGerenFiles, uConsStatus, uCalendario, uMovEntCaixa, uExamesPend,
  dataTmpConexao, uSelDataIntegridade, uConsCheques, uConsQuantEx, uConsPagar,
  uMovSaiCaixa, uSelImuno, uDaoModulos, uFuncoesVersao, dataConfig, uFuncoesWeb,
  uMovTransfContas, uVisLogs, uModulos,
  uVisualizaAgenda, uDaoAgendaDia, uBxCheques, uLancCheque, uLancPagar,
  uBxDupFor, uAltPagamento, uConsPendTISS, uBxDupCli, uAltReceber, uSelConvenio,
  uGeraCobranca, uGeraCobMult, uConsReceber, uConsDivExames, uRelRecibo,
  uConsTopografiasEx, uRelAuditoriaH, uCadLaudosPreMod, uRelExamesDoencas,
  uDaoVersao, uVersao, uCadcitofrases;

{$R *.dfm}

procedure TfrmPrincipal.DisplayHint(Sender: TObject);
begin
  StatusBar1.Panels[2].Text := Application.Hint;
end;

procedure TfrmPrincipal.InputBoxSetPasswordChar(var Msg: TMessage);
Var
hInputForm, hEdit: HWND;
Begin
  hInputForm := Screen.Forms[0].Handle;
  if (hInputForm <> 0) then
  Begin
    hEdit := FindWindowEx(hInputForm, 0, 'TEdit', nil);
    SendMessage(hEdit, EM_SETPASSWORDCHAR, Ord('*'), 0);
  end;
end;

procedure TfrmPrincipal.ClientWindow(Var Message: TMessage);
Var
DisplayContext: hDC;
Row, Col: Word;
Begin
  with Message do
  case Msg of
  WM_ERASEBKGND:
  Begin
    DisplayContext := TWMEraseBkGnd(Message).DC;
    For Row := 0 to ClientHeight DIV ImgFundoTela.Picture.Height DO
      For Col := 0 TO ClientWidth  DIV ImgFundoTela.Picture.Width DO
        BitBlt(DisplayContext, Col*ImgFundoTela.Picture.Width,
    Row * ImgFundoTela.Picture.Height,
    ImgFundoTela.Picture.Width, ImgFundoTela.Picture.Height,
    ImgFundoTela.Picture.BitMap.Canvas.Handle, 0, 0, SRCCOPY);
    Result := 1;
  end
  else
    Result := CallWindowProc(FPrevClient, ClientHandle, Msg, wParam, LParam);
  end;
end;

procedure TfrmPrincipal.FormActivate(Sender: TObject);
Var
vDtExame: TDate;
begin
  //Versão do módulo: 1 - Genesis
  AtualizaSGDB('1');
  //StatusBar
  StatusBar1.Panels[0].Text := DateToStr(now);
  //Testa data micro x último exame
  vDtExame := TestaUltimaDataExame;
  if vDtExame > now then
  begin
    if MessageDlg('A data do micro (' + FormatDateTime(vgMaskData,(now)) +
      ') é menor que a data atual dos exames (' + FormatDateTime(vgMaskData,
      (vDtExame))+')!' +#13 + 'Deseja atualizar a data do micro para ' +
      FormatDateTime(vgMaskData, vDtExame) + '?', mtConfirmation,
      [mbYes, mbNo], 0) = mrYes then
      SetDataSistema(vDtExame);
  end;
  //Verifica agenda
  TimerAgenda.Enabled := false;
  if VerificaAgenda(FormatDateTime(vgMaskData, now)) = true then
    frmPrincipal.TimerAgenda.Enabled := true;
end;

procedure TfrmPrincipal.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  {$IFDEF RELEASE}
    if MessageDlg('Deseja realmente sair do sistema?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      dmTmpConexao.database.Connected := false;
      Canclose := true;
    end
    else
      Canclose := false;
  {$ENDIF}
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
var
hSysMenu: HMENU;
vControl: TInifile;
begin
  Application.OnHint := DisplayHint;
  if hSysMenu <> 0 then
  begin
    EnableMenuItem(hSysMenu, SC_CLOSE,
    MF_BYCOMMAND Or MF_GRAYED);
    DrawMenuBar(Self.Handle);
  end;
  hSysMenu := GetSystemMenu(Self.Handle, False);
  //Carrega variáveis padrões
  vgPath := DiretorioSemBarra(ExtractFileDir(Application.exename));
  vgArqIni := (vgPath + '\' + RetornaExecutavelSemExtensao + '.ini');
  vgNomeIni := 'Genesis.ini';
  vControl := Tinifile.create(vgArqIni);
  vgDirTemp := vControl.ReadString('Temp', 'Diretorio', '');
  vgDirImagens := vControl.ReadString('Imagens', 'Diretorio', '');
  vgFundo := vControl.ReadString('Imagens', 'Logo', '');
  vgRangeIni := vControl.readstring('Busca', 'Range', '');
  vgImgRodape := vControl.ReadString('Imagens', 'LogoPDF', '');
  vgDirCaptura := vControl.ReadString('Captura', 'Local', '');
  vgImgNd := vControl.ReadString('Imagens','ND','');
  vgDirLogs := vControl.ReadString('Logs', 'diretorio', '');
  vgMaskData := vControl.ReadString('Mascaras', 'Data', '');
  vgMaskHora := vControl.ReadString('Mascaras', 'Hora', '');
  vgMaskReal := vControl.ReadString('Mascaras', 'Real', '');
  vControl.free;
  vgDirRelatorios := vgPath + '\Relatorios';
  frmPrincipal.Caption := Application.Title + ' - Vs. ' + VersaoSistema(0);
  {$IFDEF DEBUG}
    frmPrincipal.Caption := Application.Title + ' - Vs. ' + VersaoSistema(0) + ' - Debug Version';
  {$ENDIF}
  //Carrega imagem de fundo
  ImgFundoTela.Picture.LoadFromFile(vgFundo);
  FClientInstance := MakeObjectInstance(ClientWindow);
  FPrevClient := Pointer(GetWindowLong(ClientHandle, GWL_WNDPROC));
  SetWindowLong(ClientHandle, GWL_WNDPROC, Longint(FClientInstance));
  //Controle do hint do sistema
  Application.HintPause := 1000;
  Application.HintHidePause := 1000;
  //StatusBar
  StatusBar1.Panels[1].Text := vgNomeUsuarioLog;
end;

procedure TfrmPrincipal.actFecharExecute(Sender: TObject);
begin
  Close;
end;

procedure TfrmPrincipal.actMacroscopiaExecute(Sender: TObject);
begin
  vgNumEtapa := '2';
  vgEtapaHist := 'macroscopia';
  frmSelHistologia.ShowModal;
end;

procedure TfrmPrincipal.actMaximizaTodasExecute(Sender: TObject);
var
X : Byte;
begin
  try
    for X := 0 to Pred(MDIChildCount) do
      MDIChildren[X].WindowState := wsNormal;
    ActiveMDIChild.WindowState := wsNormal;
  except
  end;
end;

procedure TfrmPrincipal.actMicroscopiaExecute(Sender: TObject);
begin
  vgNumEtapa := '4';
  vgEtapaHist := 'microscopia';
  frmSelHistologia.ShowModal;
end;

procedure TfrmPrincipal.actMinimizaTodasExecute(Sender: TObject);
var
X : Byte;
begin
  try
    for X := 0 to Pred(MDIChildCount) do
      MDIChildren[X].WindowState := wsMinimized;
    ActiveMDIChild.WindowState := wsMinimized;
  except
  end;
end;

procedure TfrmPrincipal.actModulosExecute(Sender: TObject);
begin
  frmModulos.ShowModal;
end;

procedure TfrmPrincipal.actMovTransfContasExecute(Sender: TObject);
begin
  frmMovTransfContas.ShowModal;
end;

procedure TfrmPrincipal.actParametrosExecute(Sender: TObject);
Var
vSenhaDig, vSenhaMaster: String;
vOK: Boolean;
begin
  PostMessage(Handle, InputBoxMessage, 0, 0);
  FiltrarUsuarios('u.usu_codigo', '=', '1', '0', '0');
  vSenhaMaster := DecryptMsg(dmCadastros.qyUsuariosusu_senha.Text, Length(dmCadastros.qyUsuariosusu_senha.Text));
  vOK := InputQuery('Senha master', 'Digite a senha MASTER', vSenhaDig);
  if vOK then
  Begin
    if vSenhaDig = vSenhaMaster then
      frmParametros.ShowModal
    else
      MessageDlg('Senha MASTER inválida!', mtError, [mbOk], 0);
  end;
end;

procedure TfrmPrincipal.actPGToolsExecute(Sender: TObject);
Var
vPGTools: String;
Begin
  vPGTools := vgPath + '\PGTools.exe';
  if FileExists(vPGTools) then
  Begin
    if MessageDlg('O PGTools deve ser executado somente no servidor, ' + #13 + 'Deseja continuar?', mtConfirmation, [mbYes, mbno], 0) = mrYes then
    Begin
      ShellExecute(Handle, 'OPEN', PChar(vPGTools), nil, nil, sw_shownormal);
      Application.Terminate;
    end;
  end
  else
    Messagedlg('Módulo não instalado!', mtInformation,[mbok],0);
end;

procedure TfrmPrincipal.actReciboExecute(Sender: TObject);
begin
  vgClienteRec := '';
  vgIDExRec := '';
  vgValorRec := '0,00';
  frmRelRecibo.ShowModal;
end;

procedure TfrmPrincipal.actRefreshLKExecute(Sender: TObject);
begin
  if MessageDlg('Deseja realmente atualizar as tabelas?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    dmLookups.Refresh;
    MessageDlg('Tabelas atualizadas com sucesso!', mtInformation, [mbOk], 0);
  end;
end;

procedure TfrmPrincipal.actRegCapturaHExecute(Sender: TObject);
begin
  //Variável global para controle do form da requisição = 1 limpa
  vgLimpaRequisicao := 1;
  vgTpExameReq := 6;
  frmRequisicao.ShowModal;
end;

procedure TfrmPrincipal.actRegCitoExecute(Sender: TObject);
begin
  //Variável global para controle do form da requisição = 1 limpa
  vgLimpaRequisicao := 1;
  vgTpExameReq := 1;
  frmRequisicao.ShowModal;
end;

procedure TfrmPrincipal.actRegHistoExecute(Sender: TObject);
begin
  //Variável global para controle do form da requisição = 1 limpa
  vgLimpaRequisicao := 1;
  vgTpExameReq := 2;
  frmRequisicao.ShowModal;
end;

procedure TfrmPrincipal.actRegImunoExecute(Sender: TObject);
begin
  //Variável global para controle do form da requisição = 1 limpa
  vgLimpaRequisicao := 1;
  vgTpExameReq := 4;
  frmRequisicao.ShowModal;
end;

procedure TfrmPrincipal.actRelAuditoriaExecute(Sender: TObject);
begin
  frmRelAuditoriaH.ShowModal;
end;

procedure TfrmPrincipal.actRelCaixaAgrExecute(Sender: TObject);
begin
  frmRelcaixaAgrupado.ShowModal;
end;

procedure TfrmPrincipal.actRelCaixaExecute(Sender: TObject);
begin
  frmRelCaixa.ShowModal;
end;

procedure TfrmPrincipal.actRelCaixaMovExecute(Sender: TObject);
begin
  frmRelCaixaMov.ShowModal;
end;

procedure TfrmPrincipal.actRelCorteExecute(Sender: TObject);
begin
  //Verifica se existe impressões, caso não exista não carrega form
  RelatorioCorte;
  if not(dmConsultas.qyRelCorteexa_id.IsNull) then
    frmRelCorte.ShowModal
  else
    MessageDlg('Não existem relatórios de corte pendentes!', mtWarning, [mbok], 0);
end;

procedure TfrmPrincipal.actRelEtiquetasExecute(Sender: TObject);
begin
  frmRelEtiquetasAut.ShowModal;
end;

procedure TfrmPrincipal.actRelExamesDoencasExecute(Sender: TObject);
begin
  frmRelExamesDoencas.ShowModal;
end;

procedure TfrmPrincipal.actRelExameXConvenioExecute(Sender: TObject);
begin
  frmRelExamesConvenios.ShowModal;
end;

procedure TfrmPrincipal.actRelExConvExecute(Sender: TObject);
begin
  frmRelExConv.ShowModal;
end;

procedure TfrmPrincipal.actRelExMedExecute(Sender: TObject);
begin
  frmRelExMed.ShowModal;
end;

procedure TfrmPrincipal.actRelExOriExecute(Sender: TObject);
begin
  frmRelExOri.ShowModal;
end;

procedure TfrmPrincipal.actRelExPacExecute(Sender: TObject);
begin
  frmRelExPac.ShowModal;
end;

procedure TfrmPrincipal.actRelExProcedExecute(Sender: TObject);
begin
  frmRelExProced.ShowModal;
end;

procedure TfrmPrincipal.actRelListagemExecute(Sender: TObject);
begin
  frmRelListagem.ShowModal;
end;

procedure TfrmPrincipal.actRelLotesTISSExecute(Sender: TObject);
begin
  frmRelLotesTISS.ShowModal;
end;

procedure TfrmPrincipal.actRelPagarExecute(Sender: TObject);
begin
  frmRelPagar.ShowModal;
end;

procedure TfrmPrincipal.actRelPagasExecute(Sender: TObject);
begin
  frmRelPagas.ShowModal;
end;

procedure TfrmPrincipal.actRelProcedXCobExecute(Sender: TObject);
begin
  frmRelProcedXConv.ShowModal;
end;

procedure TfrmPrincipal.actRelReceberExecute(Sender: TObject);
begin
  frmRelReceber.ShowModal;
end;

procedure TfrmPrincipal.actRelRecebidosExecute(Sender: TObject);
begin
  frmRelRecebido.ShowModal;
end;

procedure TfrmPrincipal.actRelSaldosExecute(Sender: TObject);
begin
  frmRelCaixaAll.ShowModal;
end;

procedure TfrmPrincipal.actRevisaoExecute(Sender: TObject);
begin
  vgNumEtapa := '5';
  vgEtapaHist := 'revisao';
  frmSelHistologia.ShowModal;
end;

procedure TfrmPrincipal.actImpHistologiaExecute(Sender: TObject);
begin
  vgNumEtapa := '6';
  vgEtapaHist := 'relatorio';
  frmSelHistologia.ShowModal;
end;

procedure TfrmPrincipal.actInserirImunoExecute(Sender: TObject);
begin
  frmSelImuno.ShowModal;
end;

procedure TfrmPrincipal.actIntegradorExecute(Sender: TObject);
Var
vArqIntegrador: String;
begin
  vArqIntegrador := vgPath + '\integrador.exe';
  if FileExists(vArqIntegrador) then
    ShellExecute(Handle, 'OPEN', PChar(vArqIntegrador), nil, nil, sw_shownormal)
  else
    MessageDlg('Não foi encontrado a instalação do integrador neste computador!', mtWarning, [mbok], 0);
end;

procedure TfrmPrincipal.actIntegridadeExecute(Sender: TObject);
begin
  frmSelDataIntegridade.ShowModal;
end;

procedure TfrmPrincipal.actLancChequeExecute(Sender: TObject);
begin
  frmLancCheque.ShowModal;
end;

procedure TfrmPrincipal.actLancPagarExecute(Sender: TObject);
begin
  frmLancPagar.ShowModal;
end;

procedure TfrmPrincipal.actLaudoExecute(Sender: TObject);
begin
  frmSelExameLaudo.ShowModal;
end;

procedure TfrmPrincipal.actLaudosModExecute(Sender: TObject);
begin
  frmCadLaudosMod.ShowModal;
end;

procedure TfrmPrincipal.actLeituraExecute(Sender: TObject);
Var
vTiss: String;
begin
  frmSelCIT.ShowModal;
end;

procedure TfrmPrincipal.actLimpaCacheImgExecute(Sender: TObject);
begin
  try
    //apaga imagens no diretório temporário e diretório de captura
    frmPrincipal.Cursor := crHourGlass;
    ApagaTemporario(vgDirTemp);
    ApagaTemporario(vgDirCaptura);
    MessageDlg('Cache limpo com sucesso!!', mtInformation, [mbok], 0);
    frmPrincipal.Cursor := crDefault;
  except
    frmPrincipal.Cursor := crDefault;
  end;
end;

procedure TfrmPrincipal.actLimpaLogsExecute(Sender: TObject);
begin
  try
    //apaga arquivos no diretório temporário de logs
    frmPrincipal.Cursor := crHourGlass;
    ApagaTemporario(vgDirLogs);
    MessageDlg('Logs apagados com sucesso!!', mtInformation, [mbok], 0);
    frmPrincipal.Cursor := crDefault;
  except
    frmPrincipal.Cursor := crDefault;
  end;
end;

procedure TfrmPrincipal.actLogsLoginExecute(Sender: TObject);
begin
  frmVisLogs.ShowModal;
end;

procedure TfrmPrincipal.actSaiCaixaExecute(Sender: TObject);
begin
  frmMovSaiCaixa.ShowModal;
end;

procedure TfrmPrincipal.actSobreExecute(Sender: TObject);
begin
  frmSobre.ShowModal;
end;

procedure TfrmPrincipal.actStatusExamesExecute(Sender: TObject);
begin
  frmConsStatus.ShowModal;
end;

procedure TfrmPrincipal.actVersaoExecute(Sender: TObject);
begin
  frmVersao.ShowModal;
end;

procedure TfrmPrincipal.actAtualizacaoSistemaExecute(Sender: TObject);
begin
  AtualizaSistemaFunc;
end;

procedure TfrmPrincipal.actAgendaCompExecute(Sender: TObject);
begin
  CriaFormMDI(TfrmVisualizaAgenda, frmVisualizaAgenda);
end;

procedure TfrmPrincipal.actAgendaExecute(Sender: TObject);
begin
  frmCadAgenda.ShowModal;
end;

procedure TfrmPrincipal.actAltEtapaCitoExecute(Sender: TObject);
begin
  frmTransfCito.ShowModal;
end;

procedure TfrmPrincipal.actAltEtapaHistExecute(Sender: TObject);
begin
  frmTransfMacro.ShowModal;
end;

procedure TfrmPrincipal.actAltPagExecute(Sender: TObject);
begin
  frmAltPagamento.ShowModal;
end;

procedure TfrmPrincipal.actAltProcedExecute(Sender: TObject);
begin
  frmSelConvenio.ShowModal;
end;

procedure TfrmPrincipal.actAltReceberExecute(Sender: TObject);
begin
  frmAltReceber.ShowModal;
end;

procedure TfrmPrincipal.actBackupExecute(Sender: TObject);
Var
vBackup: String;
vControl: TInifile;
Begin
  vControl := Tinifile.create(vgArqIni);
  vBackup := vControl.readstring('Backup', 'Path','');
  vControl.free;
  if FileExists(vBackup) then
  Begin
    if MessageDlg('O backup deve ser executado somente no servidor, ' + #13 + 'Deseja continuar?', mtConfirmation, [mbYes, mbno], 0) = mrYes then
    Begin
      ShellExecute(Handle, 'OPEN', PChar(vBackup), nil, nil, sw_shownormal);
      Application.Terminate;
    end;
  end
  else
    Messagedlg('Módulo não instalado!', mtInformation,[mbok],0);
end;

procedure TfrmPrincipal.actBloquearExecute(Sender: TObject);
begin
  frmSenha.ShowModal;
end;

procedure TfrmPrincipal.actBxChequesExecute(Sender: TObject);
begin
  frmBxCheques.ShowModal;
end;

procedure TfrmPrincipal.actBxDupCliExecute(Sender: TObject);
begin
  CriaFormMDI(TfrmBxDupCli, frmBxDupCli);
end;

procedure TfrmPrincipal.actBxPagarExecute(Sender: TObject);
begin
  frmBxDupFor.ShowModal;
end;

procedure TfrmPrincipal.actCadBancosExecute(Sender: TObject);
begin
  frmCadBancos.ShowModal;
end;

procedure TfrmPrincipal.actCadCidadesExecute(Sender: TObject);
begin
  frmCadCidades.ShowModal;
end;

procedure TfrmPrincipal.actCadContasExecute(Sender: TObject);
begin
  frmCadContas.ShowModal;
end;

procedure TfrmPrincipal.actCadConveniosExecute(Sender: TObject);
begin
  frmCadConvenios.ShowModal;
end;

procedure TfrmPrincipal.actCadExamesLocaisExecute(Sender: TObject);
begin
  frmCadExamesLocais.ShowModal;
end;

procedure TfrmPrincipal.actCadExamesTipoExecute(Sender: TObject);
begin
  frmCadExamesTipo.ShowModal;
end;

procedure TfrmPrincipal.actCadExamesTipoHistExecute(Sender: TObject);
begin
  frmCadExamesTipoHist.ShowModal;
end;

procedure TfrmPrincipal.actCadFornecedoresExecute(Sender: TObject);
begin
  frmCadFornecedores.ShowModal;
end;

procedure TfrmPrincipal.actCadFrasesCitoExecute(Sender: TObject);
begin
  frmCadCitoFrases.ShowModal;
end;

procedure TfrmPrincipal.actCadFuncionariosExecute(Sender: TObject);
begin
  frmCadFuncionarios.ShowModal;
end;

procedure TfrmPrincipal.actCadFuncoesExecute(Sender: TObject);
begin
  frmCadFuncoes.ShowModal;
end;

procedure TfrmPrincipal.actCadLaudosModHistExecute(Sender: TObject);
begin
  frmCadLaudosModHist.ShowModal;
end;

procedure TfrmPrincipal.actCadLaudosModMacroExecute(Sender: TObject);
begin
  frmCadLaudosModMacro.ShowModal;
end;

procedure TfrmPrincipal.actCadLaudosPreModExecute(Sender: TObject);
begin
  frmCadLaudosPreMod.ShowModal;
end;

procedure TfrmPrincipal.actCadMateriaisExecute(Sender: TObject);
begin
  frmCadMateriais.ShowModal;
end;

procedure TfrmPrincipal.actCadMedicosExecute(Sender: TObject);
begin
  frmCadMedicos.ShowModal;
end;

procedure TfrmPrincipal.actCadMovimentosExecute(Sender: TObject);
begin
  frmCadMovimentos.ShowModal;
end;

procedure TfrmPrincipal.actCadPacientesExecute(Sender: TObject);
begin
  vgCadPaciente := '0';
  frmCadPacientes.showmodal;
end;

procedure TfrmPrincipal.actCadProcedimentosExecute(Sender: TObject);
begin
  frmCadProcedimentos.ShowModal;
end;

procedure TfrmPrincipal.actCadResponsaveisExecute(Sender: TObject);
begin
  frmCadResponsaveis.ShowModal;
end;

procedure TfrmPrincipal.actCadTopografiasExecute(Sender: TObject);
begin
  frmCadTopografias.ShowModal;
end;

procedure TfrmPrincipal.actCadUfExecute(Sender: TObject);
begin
  frmCadUf.ShowModal;
end;

procedure TfrmPrincipal.actCadUsuariosExecute(Sender: TObject);
begin
  frmCadUsuarios.ShowModal;
end;

procedure TfrmPrincipal.actCalendarioExecute(Sender: TObject);
begin
  CriaFormMDI(TfrmCalendario, frmCalendario);
end;

procedure TfrmPrincipal.actCatTpAcessoExecute(Sender: TObject);
begin
  frmCadAcesso.ShowModal;
end;

procedure TfrmPrincipal.actCfgBaseExecute(Sender: TObject);
Var
vSenhaDig, vSenhaMaster: String;
vOK: Boolean;
begin
  PostMessage(Handle, InputBoxMessage, 0, 0);
  FiltrarUsuarios('u.usu_codigo', '=', '1', '0', '0');
  vSenhaMaster := DecryptMsg(dmCadastros.qyUsuariosusu_senha.Text, Length(dmCadastros.qyUsuariosusu_senha.Text));
  vOK := InputQuery('Senha master', 'Digite a senha MASTER', vSenhaDig);
  if vOK then
  Begin
    if vSenhaDig = vSenhaMaster then
      frmCfgBase.ShowModal
    else
      MessageDlg('Senha MASTER inválida!', mtError, [mbOk], 0);
  end;
end;

procedure TfrmPrincipal.actCfgMailExecute(Sender: TObject);
Var
vSenhaDig, vSenhaMaster: String;
vOK: Boolean;
begin
  PostMessage(Handle, InputBoxMessage, 0, 0);
  FiltrarUsuarios('u.usu_codigo', '=', '1', '0', '0');
  vSenhaMaster := DecryptMsg(dmCadastros.qyUsuariosusu_senha.Text, Length(dmCadastros.qyUsuariosusu_senha.Text));
  vOK := InputQuery('Senha master', 'Digite a senha MASTER', vSenhaDig);
  if vOK then
  Begin
    if vSenhaDig = vSenhaMaster then
      frmCfgMail.ShowModal
    else
      MessageDlg('Senha MASTER inválida!', mtError, [mbOk], 0);
  end;
end;

procedure TfrmPrincipal.actCID10Execute(Sender: TObject);
begin
  frmCadCID10.ShowModal;
end;

procedure TfrmPrincipal.actConsChequesExecute(Sender: TObject);
begin
  frmConsCheques.ShowModal;
end;

procedure TfrmPrincipal.actConsTopografiasExExecute(Sender: TObject);
begin
  frmConsTopografiasEx.ShowModal;
end;

procedure TfrmPrincipal.actConsDivExamesExecute(Sender: TObject);
begin
  CriaFormMDI(TfrmConsDivExames, frmConsDivExames);
end;

procedure TfrmPrincipal.actConsPagarExecute(Sender: TObject);
begin
  frmConsPagar.ShowModal;
end;

procedure TfrmPrincipal.actConsPendTISSExecute(Sender: TObject);
begin
  CriaFormMDI(TfrmConsPendTISS, frmConsPendTISS);
end;

procedure TfrmPrincipal.actConsQuantExExecute(Sender: TObject);
begin
  frmConsQuantEx.ShowModal;
end;

procedure TfrmPrincipal.actConsReceberExecute(Sender: TObject);
begin
  frmConsReceber.ShowModal;
end;

procedure TfrmPrincipal.actCorteExecute(Sender: TObject);
begin
  vgNumEtapa := '3';
  vgEtapaHist := 'corte';
  frmSelHistCorte.ShowModal;
end;

procedure TfrmPrincipal.actEntCaixaExecute(Sender: TObject);
begin
  frmMovEntCaixa.ShowModal;
end;

procedure TfrmPrincipal.actExamesPendentesExecute(Sender: TObject);
begin
  CriaFormMDI(TfrmExamesPend, frmExamesPend);
end;

procedure TfrmPrincipal.actExamesTipoCitoExecute(Sender: TObject);
begin
  frmCadExamesTipoCito.ShowModal;
end;

procedure TfrmPrincipal.actExpedicaoExecute(Sender: TObject);
Var
vArqExe: String;
begin
  {$IFDEF DEBUG}
    frmExpedicao.ShowModal;
  {$ENDIF}

  {$IFDEF RELEASE}
    vArqExe := vgPath + '\Expedicao.exe';
    if FileExists(vArqExe) then
    begin
      Clipboard.AsText := vgCodUsuarioLog;
      ShellExecute(Handle, 'OPEN', PChar(vArqExe), nil, nil, sw_shownormal);
      //WinExec(PAnsiChar(vArqExe), SW_MAXIMIZE);
      Windows.SetParent( FindWindow( nil, 'Expedição' ), frmPrincipal.handle ) ;
    end
    else
      MessageDlg('Módulo de expedição não instalado!', mtWarning, [mbOk], 0);
  {$ENDIF}
end;

procedure TfrmPrincipal.actFechaAtivaExecute(Sender: TObject);
begin
  try
    ActiveMDIChild.Close;
  except
  end;
end;

procedure TfrmPrincipal.actFecharTodasExecute(Sender: TObject);
var
X : Byte;
begin
  if MDIChildCount > 0 then
    for X := 0 to Pred(MDIChildCount) do
      MDIChildren[X].Close;
end;

procedure TfrmPrincipal.actFinalizarHistoExecute(Sender: TObject);
begin
  FinalizarHisto;
end;

procedure TfrmPrincipal.FinalizarHisto;
Var
vOk: boolean;
vExame: String;
vEtapaAtual: Integer;
begin
  vOK := InputQuery('Finalizar Histologia', 'Digite o ID do exame', vExame);
  if vOk then
  begin
    if vExame <> '' then
    begin
      vExame := UpperCase(vExame);
      if TestaExame(vExame) = true then
      begin
        vEtapaAtual := VerifEtapa(vExame);
        if (vEtapaAtual = 0) then
          MessageDlg('Exame ' + vExame + ' não encontrado ou cancelado!', mtWarning, [mbok], 0)
        else
        begin
        if (vEtapaAtual >= 8) then
        begin
          FiltrarExames('e.exa_id', '=', vExame, '0', '0');
          SetEtapaExame(20);
          if MessageDlg('Exame finalizado com sucesso!' + #13 + 'Deseja finalizar outro exame?', mtInformation, [mbYes, mbNo], 0) = mrYes then
            FinalizarHisto;
        end;
        end;
      end
      else
        MessageDlg('Exame ' + vExame + ' não encontrado!', mtWarning, [mbok], 0);
    end;
  end;
end;

procedure TfrmPrincipal.actGeraCobExecute(Sender: TObject);
begin
  frmGeraCobranca.ShowModal;
end;

procedure TfrmPrincipal.actGeraCobMultExecute(Sender: TObject);
begin
  frmGeraCobMult.ShowModal;
end;

procedure TfrmPrincipal.actGerarSADTExecute(Sender: TObject);
Var
vTiss: String;
begin
  vTiss := vgPath + '\TISS.exe';
  if FileExists(vTiss) then
    ShellExecute(Handle, 'OPEN', PChar(vTiss), nil, nil, sw_shownormal)
  else
    MessageDlg('Não foi possível abrir o aplicativo!', mtWarning, [mbok], 0);
end;

procedure TfrmPrincipal.actGerenFilesExecute(Sender: TObject);
Var
vOk: boolean;
vExame: String;
begin
  vOK := InputQuery('Gerenciador de arquivos', 'Digite o ID do exame', vExame);
  if vOk then
  begin
    if vExame <> '' then
    begin
      vExame := UpperCase(vExame);
      if TestaExame(vExame) = true then
      begin
        vgIDArq := vExame;
        frmGerenFiles.ShowModal;
      end
      else
        MessageDlg('Exame ' + vExame + ' não encontrado!', mtWarning, [mbok], 0);
    end;
  end;
end;

procedure TfrmPrincipal.actHelpCID10Execute(Sender: TObject);
Var
vHelp: String;
begin
  vHelp := vgPath + '\cid10.hlp';
  ShellExecute(Handle, 'OPEN', PChar(vHelp), nil, nil, sw_showmaximized);
end;

procedure TfrmPrincipal.actHelpExecute(Sender: TObject);
begin
  if ConectadoWeb = True then
    ShellExecute(Handle, 'OPEN', Pchar('www.nextinf.com/genesis/help'), nil, nil, sw_ShowNormal)
  else
    MessageDlg('É necessário estar conectado na internet!', mtWarning, [mbOk], 0);
end;

procedure TfrmPrincipal.actHomePageExecute(Sender: TObject);
begin
  ShellExecute(Handle, 'OPEN', Pchar('www.nextinf.com'), nil, nil, sw_ShowNormal);
end;

procedure TfrmPrincipal.actImagensExecute(Sender: TObject);
Var
vImagens: String;
begin
  vImagens := vgPath + '\Imagens.exe';
  if FileExists(vImagens) then
    ShellExecute(Handle, 'OPEN', PChar(vImagens), nil, nil, sw_shownormal)
  else
    MessageDlg('Não foi possível abrir o aplicativo!', mtWarning, [mbok], 0);
end;

procedure TfrmPrincipal.actImpCitoExecute(Sender: TObject);
begin
  frmSelImprimeCit.ShowModal;
end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
Var
vVersaoAtual: boolean;
vVersaoExe, vVersaoBase: String;
begin
  {$IFDEF RELEASE}
    frmSenha.ShowModal;
    // Controle de versão ------------------------------------------------------
    vVersaoAtual := VerifVersao(Trim(VersaoSistema(0)));
    if vVersaoAtual = false then
    begin
      InsVersao;
      SetVersao(Trim(VersaoSistema(0)),
                //FormatDateTime('dd/MM/yyyy', now) + ' - Requisição - Adicionado campo data de coleta.' + #13 +
                //FormatDateTime('dd/MM/yyyy', now) + ' - Requisição - Adicionado campo nome da mãe.' + #13 +
                //FormatDateTime('dd/MM/yyyy', now) + ' - Laudo de histologia - Adicionado campo data de coleta.' + #13 +
                FormatDateTime('dd/MM/yyyy', now) + ' - Requisição - Alterado campo data de coleta para opcional.');// + #13 +
                //FormatDateTime('dd/MM/yyyy', now) + ' - Cadastro de frases de citologia - Incluído cadastro de frases de citologia.' + #13 +
                //FormatDateTime('dd/MM/yyyy', now) + ' - Preenchimento do laudo - Incluído seleção / cadastro de frases de citologia.' + #13 +
                //FormatDateTime('dd/MM/yyyy', now) + ' - Cadastro de frases de citologia - Incluído cadastro de frases de citologia.' + #13 +
                //FormatDateTime('dd/MM/yyyy', now) + ' - Relatório de citologia - Incluído frases de citologia no rodapé.' + #13 +
                //FormatDateTime('dd/MM/yyyy', now) + ' - Cadastro de responsáveis - Incluído campo de RQE.' + #13 +
                //FormatDateTime('dd/MM/yyyy', now) + ' - Relatório de citologia - Incluído campo de RQE.' + #13 +
                //FormatDateTime('dd/MM/yyyy', now) + ' - Relatório de Histologia - Incluído campo de RQE.');
      PostVersao;
    end;
    vVersaoExe := Trim(VersaoSistema(0));
    vVersaoBase := GetMajorVersion;
    if vVersaoExe <> vVersaoBase then
      MessageDlg('Seu sistema está desatualizado!' + #13 + 'Sua versão: ' + vVersaoExe + #13 +
                 'Versão disponível: ' + vVersaoBase, mtInformation, [mbOk], 0);
    // Controle de versão ------------------------------------------------------
    // Controle de data e tamanho do backup ------------------------------------

    // Controle de data e tamanho do backup ------------------------------------
  {$ENDIF}
  {$IFDEF DEBUG}
    vgCodUsuarioLog := '1';
    vgNomeUsuarioLog := 'MASTER';
    vgExpPdf := 'S';
  {$ENDIF}
end;

end.
