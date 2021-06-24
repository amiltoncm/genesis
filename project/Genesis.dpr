program Genesis;

uses
  Vcl.Forms,
  Vcl.Themes,
  Vcl.Styles,
  uPrincipal in '..\view\estrutura\uPrincipal.pas' {frmPrincipal},
  uTmpForm in '..\templates\uTmpForm.pas' {frmTmpForm},
  uVarGlobal in '..\var\uVarGlobal.pas',
  uFuncoesSistema in '..\funcoes\uFuncoesSistema.pas',
  uFuncoesLogs in '..\funcoes\uFuncoesLogs.pas',
  uFuncoesSeguranca in '..\funcoes\uFuncoesSeguranca.pas',
  uFuncoesDB in '..\funcoes\uFuncoesDB.pas',
  uFuncoesFormatacao in '..\funcoes\uFuncoesFormatacao.pas',
  uFuncoesDatas in '..\funcoes\uFuncoesDatas.pas',
  UFuncoesTISS in '..\funcoes\UFuncoesTISS.pas',
  uFuncoesValidacao in '..\funcoes\uFuncoesValidacao.pas',
  uFuncoesVersao in '..\funcoes\uFuncoesVersao.pas',
  uFuncoesWeb in '..\funcoes\uFuncoesWeb.pas',
  uFuncoesMail in '..\funcoes\uFuncoesMail.pas',
  uErConexao in '..\view\mensagens\uErConexao.pas' {frmErConexao},
  dataTmpConexao in '..\dados\dataTmpConexao.pas' {dmTmpConexao: TDataModule},
  dataCadastros in '..\dados\dataCadastros.pas' {dmCadastros: TDataModule},
  dataConfig in '..\dados\dataConfig.pas' {dmConfig: TDataModule},
  dataConsultas in '..\dados\dataConsultas.pas' {dmConsultas: TDataModule},
  dataGestao in '..\dados\dataGestao.pas' {dmGestao: TDataModule},
  dataLookups in '..\dados\dataLookups.pas' {dmLookups: TDataModule},
  uSenha in '..\view\estrutura\uSenha.pas' {frmSenha},
  uDaoUsuarios in '..\dao\uDaoUsuarios.pas',
  uTmpModulos in '..\templates\uTmpModulos.pas' {frmTmpModulos},
  uSobre in '..\view\mensagens\uSobre.pas' {frmSobre},
  uSQL in '..\view\uteis\uSQL.pas' {frmSQL},
  uTmpFormNormal in '..\templates\uTmpFormNormal.pas' {frmTmpFormNormal},
  uTmpFormMDI in '..\templates\uTmpFormMDI.pas' {frmTmpFormMDI},
  uTmpCadastro in '..\templates\uTmpCadastro.pas' {frmTmpCadastro},
  uDaoExames in '..\dao\uDaoExames.pas',
  uDaoExamesLogs in '..\dao\uDaoExamesLogs.pas',
  uDaoExamesCob in '..\dao\uDaoExamesCob.pas',
  dataExames in '..\dados\dataExames.pas' {dmExames: TDataModule},
  uRequisicao in '..\view\estrutura\uRequisicao.pas' {frmRequisicao},
  uDaoPacientes in '..\dao\uDaoPacientes.pas',
  uDaoExamesEnvMail in '..\dao\uDaoExamesEnvMail.pas',
  uDaoExamesTp in '..\dao\uDaoExamesTp.pas',
  dataFinanceiro in '..\dados\dataFinanceiro.pas' {dmFinanceiro: TDataModule},
  uValorPago in '..\view\estrutura\uValorPago.pas' {frmValorPago},
  uTmpRelFormNormal in '..\templates\uTmpRelFormNormal.pas' {frmTmpRelFormNormal},
  uRelRecibo in '..\view\relatórios\uRelRecibo.pas' {frmRelRecibo},
  uDaoTissPend in '..\dao\uDaoTissPend.pas',
  uPendencias in '..\view\mensagens\uPendencias.pas' {frmPendencias},
  uDaoConvenios in '..\dao\uDaoConvenios.pas',
  uDaoMedicos in '..\dao\uDaoMedicos.pas',
  uDaoExamesProced in '..\dao\uDaoExamesProced.pas',
  uDaoConvProc in '..\dao\uDaoConvProc.pas',
  uDaoProcedimentos in '..\dao\uDaoProcedimentos.pas',
  uExamesCito in '..\view\estrutura\uExamesCito.pas' {frmExamesCito},
  uDaoExamesCito in '..\dao\uDaoExamesCito.pas',
  uExamesHist in '..\view\estrutura\uExamesHist.pas' {frmExamesHist},
  uDaoExamesHist in '..\dao\uDaoExamesHist.pas',
  uDaoLaudosPadrao in '..\dao\uDaoLaudosPadrao.pas',
  uInsereModeloMacro in '..\view\estrutura\uInsereModeloMacro.pas' {frmInsereModeloMacro},
  uDaoExamesHistMacro in '..\dao\uDaoExamesHistMacro.pas',
  uGerenFiles in '..\view\estrutura\uGerenFiles.pas' {frmGerenFiles},
  uDaoExamesFiles in '..\dao\uDaoExamesFiles.pas',
  uRelCitoEspecial in '..\view\relatórios\uRelCitoEspecial.pas' {frmRelCitoEspecial},
  uRelCitoEtapaI in '..\view\relatórios\uRelCitoEtapaI.pas' {frmRelCitoEtapaI},
  uRelHistoEtapaIMac in '..\view\relatórios\uRelHistoEtapaIMac.pas' {frmRelHistoEtapaIMac},
  uRelHistoEtapaI in '..\view\relatórios\uRelHistoEtapaI.pas' {frmRelHistoEtapaI},
  uTmpConsultasNormal in '..\templates\uTmpConsultasNormal.pas' {frmTmpConsultasNormal},
  uConsSelExame in '..\view\consultas\uConsSelExame.pas' {frmConsSelExame},
  uCadPacRequisicao in '..\view\cadastros\uCadPacRequisicao.pas' {frmCadPacRequisicao},
  uCadMedRequisicao in '..\view\cadastros\uCadMedRequisicao.pas' {frmCadMedRequisicao},
  uVisualizaNomes in '..\view\estrutura\uVisualizaNomes.pas' {frmVisualizaNomes},
  uExamesAnt in '..\view\estrutura\uExamesAnt.pas' {frmExamesAnt},
  uDetExame in '..\view\estrutura\uDetExame.pas' {frmDetExame},
  uDaoEmpresa in '..\dao\uDaoEmpresa.pas',
  uDaoConsEnvMail in '..\dao\uDaoConsEnvMail.pas',
  uDaoImagens in '..\dao\uDaoImagens.pas',
  uRelLaudoFinal in '..\view\relatórios\uRelLaudoFinal.pas' {frmRelLaudoFinal},
  uDaoEmail in '..\dao\uDaoEmail.pas',
  uDaoExamesCitoNotas in '..\dao\uDaoExamesCitoNotas.pas',
  uDaoExamesResp in '..\dao\uDaoExamesResp.pas',
  uDaoExamesLaudo in '..\dao\uDaoExamesLaudo.pas',
  uExpedicao in '..\view\estrutura\uExpedicao.pas' {frmExpedicao},
  uDaoExamesCitoMacro in '..\dao\uDaoExamesCitoMacro.pas',
  uDaoExamesDoencas in '..\dao\uDaoExamesDoencas.pas',
  uDaoExamesFinal in '..\dao\uDaoExamesFinal.pas',
  uDaoRespAss in '..\dao\uDaoRespAss.pas',
  uDaoConfig in '..\dao\uDaoConfig.pas',
  uRelHistologia in '..\view\relatórios\uRelHistologia.pas' {frmRelHistologia},
  uDaoExamesHistMicro in '..\dao\uDaoExamesHistMicro.pas',
  uDaoResponsaveis in '..\dao\uDaoResponsaveis.pas',
  uSelImprimeCit in '..\view\estrutura\uSelImprimeCit.pas' {frmSelImprimeCit},
  uFuncoesExames in '..\funcoes\uFuncoesExames.pas',
  uSelHistologia in '..\view\consultas\uSelHistologia.pas' {frmSelHistologia},
  uCfgMail in '..\view\uteis\uCfgMail.pas' {frmCfgMail},
  uTmpProcura in '..\templates\uTmpProcura.pas' {frmTmpProcura},
  uProcUsuarios in '..\view\procuras\uProcUsuarios.pas' {frmProcUsuarios},
  uDaoUsuariosMail in '..\dao\uDaoUsuariosMail.pas',
  uCadUsuariosMail in '..\view\cadastros\uCadUsuariosMail.pas' {frmCadUsuariosMail},
  uCorreio in '..\view\uteis\uCorreio.pas' {frmCorreio},
  uDaoExamesRespAd in '..\dao\uDaoExamesRespAd.pas',
  uSelCIT in '..\view\consultas\uSelCIT.pas' {frmSelCIT},
  uParametros in '..\view\uteis\uParametros.pas' {frmParametros},
  uTransfCito in '..\view\movimentacoes\uTransfCito.pas' {frmTransfCito},
  dataCid10 in '..\dados\dataCid10.pas' {dmCid10: TDataModule},
  uSelCITTable in '..\view\consultas\uSelCITTable.pas' {frmSelCITTable},
  uDaoExamesObs in '..\dao\uDaoExamesObs.pas',
  uFuncRelExameLaudo in '..\funcoes\uFuncRelExameLaudo.pas',
  uPreencheCito in '..\view\estrutura\uPreencheCito.pas' {frmPreencheCito},
  uNotasCito in '..\view\estrutura\uNotasCito.pas' {frmNotasCito},
  uObsExame in '..\view\estrutura\uObsExame.pas' {frmObsExame},
  uAltExame in '..\view\estrutura\uAltExame.pas' {frmAltExame},
  uCadPacientes in '..\view\cadastros\uCadPacientes.pas' {frmCadPacientes},
  uObsPacientes in '..\view\cadastros\uObsPacientes.pas' {frmObsPacientes},
  uProcPacientes in '..\view\procuras\uProcPacientes.pas' {frmProcPacientes},
  uVisImagem in '..\view\estrutura\uVisImagem.pas' {frmVisImagem},
  uCadMedAd in '..\view\cadastros\uCadMedAd.pas' {frmCadMedAd},
  uEditMatGuia in '..\view\estrutura\uEditMatGuia.pas' {frmEditMatGuia},
  uEditaDataNasc in '..\view\estrutura\uEditaDataNasc.pas' {frmEditaDataNasc},
  uRespAdd in '..\view\cadastros\uRespAdd.pas' {frmRespAdd},
  uExameLaudo in '..\view\movimentacoes\uExameLaudo.pas' {frmExameLaudo},
  uSelExameLaudo in '..\view\consultas\uSelExameLaudo.pas' {frmSelExameLaudo},
  uMacroCito in '..\view\estrutura\uMacroCito.pas' {frmMacroCito},
  uCadResponsaveis in '..\view\cadastros\uCadResponsaveis.pas' {frmCadResponsaveis},
  uProcResponsaveis in '..\view\procuras\uProcResponsaveis.pas' {frmProcResponsaveis},
  uCorte in '..\view\estrutura\uCorte.pas' {frmCorte},
  uSelHistCorte in '..\view\consultas\uSelHistCorte.pas' {frmSelHistCorte},
  uDaoExamesTop in '..\dao\uDaoExamesTop.pas',
  uDaoExamesBlocos in '..\dao\uDaoExamesBlocos.pas',
  uObsExames in '..\view\estrutura\uObsExames.pas' {frmObsExames},
  uConsDivExames in '..\view\consultas\uConsDivExames.pas' {frmConsDivExames},
  uDaoLaudosModMacro in '..\dao\uDaoLaudosModMacro.pas',
  uMacroscopia in '..\view\estrutura\uMacroscopia.pas' {frmMacroscopia},
  uClassExamesProced in '..\classes\uClassExamesProced.pas',
  uClassExamesBlocos in '..\classes\uClassExamesBlocos.pas',
  uObsEx in '..\view\estrutura\uObsEx.pas' {frmObsEx},
  uSelHISTTable in '..\view\estrutura\uSelHISTTable.pas' {frmSelHISTTable},
  uClassConexao in '..\classes\uClassConexao.pas',
  dataTestSGDB in '..\dados\dataTestSGDB.pas' {dmTestSGDB: TDataModule},
  uCfgBase in '..\view\uteis\uCfgBase.pas' {frmCfgBase},
  uRelCorte in '..\view\relatórios\uRelCorte.pas' {frmRelCorte},
  uDaoExamesTipo in '..\dao\uDaoExamesTipo.pas',
  uDaoTestes in '..\dao\uDaoTestes.pas',
  uMicroscopia in '..\view\estrutura\uMicroscopia.pas' {frmMicroscopia},
  uRevisao in '..\view\estrutura\uRevisao.pas' {frmRevisao},
  uClassExamesTop in '..\classes\uClassExamesTop.pas',
  uClassExamesHistMicro in '..\classes\uClassExamesHistMicro.pas',
  uDoenca in '..\view\estrutura\uDoenca.pas' {frmDoenca},
  uTransfMacro in '..\view\movimentacoes\uTransfMacro.pas' {frmTransfMacro},
  uDaoAcesso in '..\dao\uDaoAcesso.pas',
  uCadAcesso in '..\view\cadastros\uCadAcesso.pas' {frmCadAcesso},
  uCadBancos in '..\view\cadastros\uCadBancos.pas' {frmCadBancos},
  uDaoBancos in '..\dao\uDaoBancos.pas',
  uCadAgenda in '..\view\cadastros\uCadAgenda.pas' {frmCadAgenda},
  uDaoUf in '..\dao\uDaoUf.pas',
  uDaoFuncoes in '..\dao\uDaoFuncoes.pas',
  uDaoMateriais in '..\dao\uDaoMateriais.pas',
  uDaoTopografias in '..\dao\uDaoTopografias.pas',
  uDaoExamesLocais in '..\dao\uDaoExamesLocais.pas',
  uDaoMovimentos in '..\dao\uDaoMovimentos.pas',
  uDaoLaudosModHist in '..\dao\uDaoLaudosModHist.pas',
  uCadLaudosMod in '..\view\cadastros\uCadLaudosMod.pas' {frmCadLaudosMod},
  uCadExamesTipoCito in '..\view\cadastros\uCadExamesTipoCito.pas' {frmCadExamesTipoCito},
  uDaoExamesTipoCito in '..\dao\uDaoExamesTipoCito.pas',
  uCadUf in '..\view\cadastros\uCadUf.pas' {frmCadUf},
  uCadFuncoes in '..\view\cadastros\uCadFuncoes.pas' {frmCadFuncoes},
  uCadMateriais in '..\view\cadastros\uCadMateriais.pas' {frmCadMateriais},
  uCadLaudosModMacro in '..\view\cadastros\uCadLaudosModMacro.pas' {frmCadLaudosModMacro},
  uCadLaudosModHist in '..\view\cadastros\uCadLaudosModHist.pas' {frmCadLaudosModHist},
  uCadExamesTipo in '..\view\cadastros\uCadExamesTipo.pas' {frmCadExamesTipo},
  uCadTopografias in '..\view\cadastros\uCadTopografias.pas' {frmCadTopografias},
  uCadExamesLocais in '..\view\cadastros\uCadExamesLocais.pas' {frmCadExamesLocais},
  uCadProcedimentos in '..\view\cadastros\uCadProcedimentos.pas' {frmCadProcedimentos},
  uCadMovimentos in '..\view\cadastros\uCadMovimentos.pas' {frmCadMovimentos},
  uProcMovimentos in '..\view\procuras\uProcMovimentos.pas' {frmProcMovimentos},
  uProcProcedimentos in '..\view\procuras\uProcProcedimentos.pas' {frmProcProcedimentos},
  uProcExamesLocais in '..\view\procuras\uProcExamesLocais.pas' {frmProcExamesLocais},
  uProcTopografias in '..\view\procuras\uProcTopografias.pas' {frmProcTopografias},
  uProcLaudosModHist in '..\view\procuras\uProcLaudosModHist.pas' {frmProcLaudosModHist},
  uProcLaudosModMacro in '..\view\procuras\uProcLaudosModMacro.pas' {frmProcLaudosModMacro},
  uProcMateriais in '..\view\procuras\uProcMateriais.pas' {frmProcMateriais},
  uProcFuncoes in '..\view\procuras\uProcFuncoes.pas' {frmProcFuncoes},
  uProcUf in '..\view\procuras\uProcUf.pas' {frmProcUf},
  uProcExamesTipoCito in '..\view\procuras\uProcExamesTipoCito.pas' {frmProcExamesTipoCito},
  uProcLaudosMod in '..\view\procuras\uProcLaudosMod.pas' {frmProcLaudosMod},
  uDaoLaudosMod in '..\dao\uDaoLaudosMod.pas',
  uProcAcesso in '..\view\procuras\uProcAcesso.pas' {frmProcAcesso},
  uProcAgenda in '..\view\procuras\uProcAgenda.pas' {frmProcAgenda},
  uProcBancos in '..\view\procuras\uProcBancos.pas' {frmProcBancos},
  uDaoCid10capitulos in '..\dao\uDaoCid10capitulos.pas',
  uDaoCid10categorias in '..\dao\uDaoCid10categorias.pas',
  uDaoCid10grupos in '..\dao\uDaoCid10grupos.pas',
  uDaoCid10subcategorias in '..\dao\uDaoCid10subcategorias.pas',
  uDaoCidades in '..\dao\uDaoCidades.pas',
  uDaoContas in '..\dao\uDaoContas.pas',
  uDaoExamesTipoHist in '..\dao\uDaoExamesTipoHist.pas',
  uDaoFornecedores in '..\dao\uDaoFornecedores.pas',
  uDaoFuncionarios in '..\dao\uDaoFuncionarios.pas',
  uCadCID10 in '..\view\cadastros\uCadCID10.pas' {frmCadCID10},
  uCadCidades in '..\view\cadastros\uCadCidades.pas' {frmCadCidades},
  uCadContas in '..\view\cadastros\uCadContas.pas' {frmCadContas},
  uCadConvenios in '..\view\cadastros\uCadConvenios.pas' {frmCadConvenios},
  uCadFornecedores in '..\view\cadastros\uCadFornecedores.pas' {frmCadFornecedores},
  uCadFuncionarios in '..\view\cadastros\uCadFuncionarios.pas' {frmCadFuncionarios},
  uCadExamesTipoHist in '..\view\cadastros\uCadExamesTipoHist.pas' {frmCadExamesTipoHist},
  uCadMedicos in '..\view\cadastros\uCadMedicos.pas' {frmCadMedicos},
  uProcCidades in '..\view\procuras\uProcCidades.pas' {frmProcCidades},
  uProcContas in '..\view\procuras\uProcContas.pas' {frmProcContas},
  uProcConvenios in '..\view\procuras\uProcConvenios.pas' {frmProcConvenios},
  uProcFornecedores in '..\view\procuras\uProcFornecedores.pas' {frmProcFornecedores},
  uProcFuncionarios in '..\view\procuras\uProcFuncionarios.pas' {frmProcFuncionarios},
  uProcExamesTipoHist in '..\view\procuras\uProcExamesTipoHist.pas' {frmProcExamesTipoHist},
  uProcExamesTipo in '..\view\procuras\uProcExamesTipo.pas' {frmProcExamesTipo},
  uProcMedicos in '..\view\procuras\uProcMedicos.pas' {frmProcMedicos},
  uTabPrecos in '..\view\cadastros\uTabPrecos.pas' {frmTabPrecos},
  uClassConvProc in '..\classes\uClassConvProc.pas',
  uDaoRelatorios in '..\dao\uDaoRelatorios.pas',
  uTmpRelFormNormalDefault in '..\templates\uTmpRelFormNormalDefault.pas' {frmTmpRelFormNormalDefault},
  uRelExConv in '..\view\relatórios\uRelExConv.pas' {frmRelExConv},
  uRelExMed in '..\view\relatórios\uRelExMed.pas' {frmRelExMed},
  uRelExOri in '..\view\relatórios\uRelExOri.pas' {frmRelExOri},
  uRelExPac in '..\view\relatórios\uRelExPac.pas' {frmRelExPac},
  uRelListagem in '..\view\relatórios\uRelListagem.pas' {frmRelListagem},
  uRelExProced in '..\view\relatórios\uRelExProced.pas' {frmRelExProced},
  uRelCaixa in '..\view\relatórios\uRelCaixa.pas' {frmRelCaixa},
  uDaoCaixa in '..\dao\uDaoCaixa.pas',
  uRelCaixaAgrupado in '..\view\relatórios\uRelCaixaAgrupado.pas' {frmRelCaixaAgrupado},
  uRelCaixaMov in '..\view\relatórios\uRelCaixaMov.pas' {frmRelCaixaMov},
  uRelCaixaAll in '..\view\relatórios\uRelCaixaAll.pas' {frmRelCaixaAll},
  uRelPagar in '..\view\relatórios\uRelPagar.pas' {frmRelPagar},
  uDaoPagar in '..\dao\uDaoPagar.pas',
  uRelPagas in '..\view\relatórios\uRelPagas.pas' {frmRelPagas},
  uRelReceber in '..\view\relatórios\uRelReceber.pas' {frmRelReceber},
  uDaoReceber in '..\dao\uDaoReceber.pas',
  uRelRecebido in '..\view\relatórios\uRelRecebido.pas' {frmRelRecebido},
  uRelLotesTISS in '..\view\relatórios\uRelLotesTISS.pas' {frmRelLotesTISS},
  uRelExamesConvenios in '..\view\relatórios\uRelExamesConvenios.pas' {frmRelExamesConvenios},
  uRelProcedXConv in '..\view\relatórios\uRelProcedXConv.pas' {frmRelProcedXConv},
  uRelEtiquetasAut in '..\view\relatórios\uRelEtiquetasAut.pas' {frmRelEtiquetasAut},
  uConsStatus in '..\view\consultas\uConsStatus.pas' {frmConsStatus},
  uDaoConsultas in '..\dao\uDaoConsultas.pas',
  uCalendario in '..\view\uteis\uCalendario.pas' {frmCalendario},
  uMovEntCaixa in '..\view\movimentacoes\uMovEntCaixa.pas' {frmMovEntCaixa},
  uClassCaixa in '..\classes\uClassCaixa.pas',
  uExamesPend in '..\view\consultas\uExamesPend.pas' {frmExamesPend},
  uExamesLog in '..\view\consultas\uExamesLog.pas' {frmExamesLog},
  uFuncIntegridade in '..\funcoes\uFuncIntegridade.pas',
  uIntegridade in '..\view\consultas\uIntegridade.pas' {frmIntegridade},
  uSelDataIntegridade in '..\view\consultas\uSelDataIntegridade.pas' {frmSelDataIntegridade},
  uConsCheques in '..\view\consultas\uConsCheques.pas' {frmConsCheques},
  uDaoCheques in '..\dao\uDaoCheques.pas',
  uConsQuantEx in '..\view\consultas\uConsQuantEx.pas' {frmConsQuantEx},
  uDaoConsQuantEx in '..\dao\uDaoConsQuantEx.pas',
  uConsPagar in '..\view\consultas\uConsPagar.pas' {frmConsPagar},
  uMovSaiCaixa in '..\view\movimentacoes\uMovSaiCaixa.pas' {frmMovSaiCaixa},
  uSplash in '..\view\uteis\uSplash.pas' {frmSplash},
  uSelImuno in '..\view\consultas\uSelImuno.pas' {frmSelImuno},
  uInsereImuno in '..\view\estrutura\uInsereImuno.pas' {frmInsereImuno},
  uClassExamesImuno in '..\classes\uClassExamesImuno.pas',
  dataTmpConexaoZeos in '..\dados\dataTmpConexaoZeos.pas' {dmTmpConexaoZeos: TDataModule},
  dataFiles in '..\dados\dataFiles.pas' {dmFiles: TDataModule},
  uDaoExamesImunoZEOS in '..\dao\uDaoExamesImunoZEOS.pas',
  uDaoImagensZEOS in '..\dao\uDaoImagensZEOS.pas',
  uDaoModulos in '..\dao\uDaoModulos.pas',
  uMovTransfContas in '..\view\movimentacoes\uMovTransfContas.pas' {frmMovTransfContas},
  dataImagens in '..\dados\dataImagens.pas' {dmImagens: TDataModule},
  uVisLogs in '..\view\uteis\uVisLogs.pas' {frmVisLogs},
  uModulos in '..\view\uteis\uModulos.pas' {frmModulos},
  uVisualizaAgenda in '..\view\uteis\uVisualizaAgenda.pas' {frmVisualizaAgenda},
  uDaoAgenda in '..\dao\uDaoAgenda.pas',
  uDaoAgendaDia in '..\dao\uDaoAgendaDia.pas',
  uAgendamento in '..\view\uteis\uAgendamento.pas' {frmAgendamento},
  uBxCheques in '..\view\movimentacoes\uBxCheques.pas' {frmBxCheques},
  uLancCheque in '..\view\movimentacoes\uLancCheque.pas' {frmLancCheque},
  uClassCheques in '..\classes\uClassCheques.pas',
  uTmpSenhaMaster in '..\templates\uTmpSenhaMaster.pas' {frmTmpSenhaMaster},
  uSenhaCheque in '..\view\movimentacoes\uSenhaCheque.pas' {frmSenhaCheque},
  uDepCheque in '..\view\movimentacoes\uDepCheque.pas' {frmDepCheque},
  uConfirmaBxChq in '..\view\movimentacoes\uConfirmaBxChq.pas' {frmConfirmaBxChq},
  uLancPagar in '..\view\movimentacoes\uLancPagar.pas' {frmLancPagar},
  uBxDupFor in '..\view\movimentacoes\uBxDupFor.pas' {frmBxDupFor},
  uConfBaixaDup in '..\view\movimentacoes\uConfBaixaDup.pas' {frmConfBaixaDup},
  uClassPagar in '..\classes\uClassPagar.pas',
  uSelChq in '..\view\movimentacoes\uSelChq.pas' {frmSelChq},
  uAltPagamento in '..\view\movimentacoes\uAltPagamento.pas' {frmAltPagamento},
  uConfAltPagamento in '..\view\movimentacoes\uConfAltPagamento.pas' {frmConfAltPagamento},
  uAltVlrPagar in '..\view\movimentacoes\uAltVlrPagar.pas' {frmAltVlrPagar},
  uFuncoesDBEsp in '..\funcoes\uFuncoesDBEsp.pas',
  uRelPendTISS in '..\view\relatórios\uRelPendTISS.pas' {frmRelPendTISS},
  uConsPendTISS in '..\view\consultas\uConsPendTISS.pas' {frmConsPendTISS},
  uBxDupCli in '..\view\movimentacoes\uBxDupCli.pas' {frmBxDupCli},
  uConfBxDupCli in '..\view\movimentacoes\uConfBxDupCli.pas' {frmConfBxDupCli},
  uDaoHistRec in '..\dao\uDaoHistRec.pas',
  uAltReceber in '..\view\movimentacoes\uAltReceber.pas' {frmAltReceber},
  uConfAltReceber in '..\view\movimentacoes\uConfAltReceber.pas' {frmConfAltReceber},
  uSelConvenio in '..\view\movimentacoes\uSelConvenio.pas' {frmSelConvenio},
  uAltVlrProced in '..\view\movimentacoes\uAltVlrProced.pas' {frmAltVlrProced},
  uGeraCobranca in '..\view\movimentacoes\uGeraCobranca.pas' {frmGeraCobranca},
  uFuncoesCob in '..\funcoes\uFuncoesCob.pas',
  uConfCobranca in '..\view\movimentacoes\uConfCobranca.pas' {frmConfCobranca},
  uConsReceber in '..\view\consultas\uConsReceber.pas' {frmConsReceber},
  uDaoRecTISS in '..\dao\uDaoRecTISS.pas',
  uClassReceber in '..\classes\uClassReceber.pas',
  uProcedimentosCob in '..\view\consultas\uProcedimentosCob.pas' {frmProcedimentosCob},
  uClassHistRec in '..\classes\uClassHistRec.pas',
  uClassRecTISS in '..\classes\uClassRecTISS.pas',
  uGeraCobMult in '..\view\movimentacoes\uGeraCobMult.pas' {frmGeraCobMult},
  uDaoRecObs in '..\dao\uDaoRecObs.pas',
  uExportaCob in '..\view\movimentacoes\uExportaCob.pas' {frmExportaCob},
  uDaoConsDivExames in '..\dao\uDaoConsDivExames.pas',
  uClassConsDivExames in '..\classes\uClassConsDivExames.pas',
  uRelListaExames in '..\view\relatórios\uRelListaExames.pas' {frmRelListaExames},
  uDaoExamesTISS in '..\dao\uDaoExamesTISS.pas',
  uDaoExamesAut in '..\dao\uDaoExamesAut.pas',
  uDaoExamesPend in '..\dao\uDaoExamesPend.pas',
  dataExamesZEOS in '..\dados\dataExamesZEOS.pas' {dmExamesZEOS: TDataModule},
  uCadUsuarios in '..\view\cadastros\uCadUsuarios.pas' {frmCadUsuarios},
  uDaoMatCid in '..\dao\uDaoMatCid.pas',
  uProcCIDSubCat in '..\view\procuras\uProcCIDSubCat.pas' {frmProcCIDSubCat},
  uDoencaNew in '..\view\estrutura\uDoencaNew.pas' {frmDoencaNew},
  uConsTopografiasEx in '..\view\consultas\uConsTopografiasEx.pas' {frmConsTopografiasEx},
  uFuncoesString in '..\funcoes\uFuncoesString.pas',
  uRelTopografiasEx in '..\view\relatórios\uRelTopografiasEx.pas' {frmRelTopografiasEx},
  uRelAuditoriaH in '..\view\relatórios\uRelAuditoriaH.pas' {frmRelAuditoriaH},
  uCadLaudosPreMod in '..\view\cadastros\uCadLaudosPreMod.pas' {frmCadLaudosPreMod},
  uDaoLaudosPreMod in '..\dao\uDaoLaudosPreMod.pas',
  uProcLaudosPreMod in '..\view\procuras\uProcLaudosPreMod.pas' {frmProcLaudosPreMod},
  uRelExamesDoencas in '..\view\relatórios\uRelExamesDoencas.pas' {frmRelExamesDoencas},
  uDaoVersao in '..\dao\uDaoVersao.pas',
  uVersao in '..\view\estrutura\uVersao.pas' {frmVersao},
  uDaoCitofrases in '..\dao\uDaoCitofrases.pas',
  uCadcitofrases in '..\view\cadastros\uCadcitofrases.pas' {frmCadcitofrases},
  uProcCitofrases in '..\view\procuras\uProcCitofrases.pas' {frmProcCitofrases},
  uFraseCito in '..\view\movimentacoes\uFraseCito.pas' {frmFraseCito},
  uClassExamesfrases in '..\classes\uClassExamesfrases.pas',
  uDaoExamesFrases in '..\dao\uDaoExamesFrases.pas',
  uExameTISS in '..\view\movimentacoes\uExameTISS.pas' {frmExameTISS},
  uClassExamescoleta in '..\classes\uClassExamescoleta.pas',
  uDaoExamesColeta in '..\dao\uDaoExamesColeta.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Genesis';

  frmSplash := TfrmSplash.Create(Application);
  frmSplash.Show;

  frmSplash.lbStatus.Caption := 'Carregando formulário principal...';
  frmSplash.update;

  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TdmExamesZEOS, dmExamesZEOS);
  Application.CreateForm(TfrmTmpForm, frmTmpForm);
  Application.CreateForm(TfrmSenha, frmSenha);
  Application.CreateForm(TfrmTmpModulos, frmTmpModulos);
  Application.CreateForm(TfrmSobre, frmSobre);
  Application.CreateForm(TfrmSQL, frmSQL);
  Application.CreateForm(TfrmTmpFormNormal, frmTmpFormNormal);
  Application.CreateForm(TfrmCadUsuarios, frmCadUsuarios);
  Application.CreateForm(TfrmProcCIDSubCat, frmProcCIDSubCat);
  Application.CreateForm(TfrmDoencaNew, frmDoencaNew);
  Application.CreateForm(TfrmConsTopografiasEx, frmConsTopografiasEx);
  Application.CreateForm(TfrmRelTopografiasEx, frmRelTopografiasEx);
  Application.CreateForm(TfrmRelAuditoriaH, frmRelAuditoriaH);
  Application.CreateForm(TfrmCadLaudosPreMod, frmCadLaudosPreMod);
  Application.CreateForm(TfrmProcLaudosPreMod, frmProcLaudosPreMod);
  Application.CreateForm(TfrmRelExamesDoencas, frmRelExamesDoencas);
  Application.CreateForm(TfrmVersao, frmVersao);
  Application.CreateForm(TfrmCadcitofrases, frmCadcitofrases);
  Application.CreateForm(TfrmProcCitofrases, frmProcCitofrases);
  Application.CreateForm(TfrmFraseCito, frmFraseCito);
  Application.CreateForm(TfrmExameTISS, frmExameTISS);
  frmSplash.lbStatus.Caption := 'Testando conexão com a(s) base(s) de dados...';
  frmSplash.update;

  Application.CreateForm(TdmTestSGDB, dmTestSGDB);
  Application.CreateForm(TfrmCfgBase, frmCfgBase);
  Application.CreateForm(TfrmTmpForm, frmTmpForm);
  Application.CreateForm(TfrmErConexao, frmErConexao);

  frmSplash.lbStatus.Caption := 'Conectando com a(s) base(s) de dados...';
  frmSplash.update;

  Application.CreateForm(TdmTmpConexao, dmTmpConexao);
  Application.CreateForm(TdmTmpConexaoZeos, dmTmpConexaoZeos);
  Application.CreateForm(TdmCadastros, dmCadastros);
  Application.CreateForm(TdmConfig, dmConfig);
  Application.CreateForm(TdmConsultas, dmConsultas);
  Application.CreateForm(TdmGestao, dmGestao);
  Application.CreateForm(TdmLookups, dmLookups);
  Application.CreateForm(TdmFiles, dmFiles);
  Application.CreateForm(TdmImagens, dmImagens);
  Application.CreateForm(TdmExames, dmExames);
  Application.CreateForm(TdmFinanceiro, dmFinanceiro);
  Application.CreateForm(TdmCid10, dmCid10);

  frmSplash.lbStatus.Caption := 'Carregando templates...';
  frmSplash.update;

  Application.CreateForm(TfrmTmpFormNormal, frmTmpFormNormal);
  Application.CreateForm(TfrmTmpModulos, frmTmpModulos);
  Application.CreateForm(TfrmTmpConsultasNormal, frmTmpConsultasNormal);
  Application.CreateForm(TfrmTmpProcura, frmTmpProcura);
  Application.CreateForm(TfrmModulos, frmModulos);
  Application.CreateForm(TfrmTmpRelFormNormal, frmTmpRelFormNormal);
  Application.CreateForm(TfrmTmpRelFormNormalDefault, frmTmpRelFormNormalDefault);
  Application.CreateForm(TfrmTmpSenhaMaster, frmTmpSenhaMaster);

  frmSplash.lbStatus.Caption := 'Carregando formulários de cadastros...';
  frmSplash.update;

  Application.CreateForm(TfrmCadPacRequisicao, frmCadPacRequisicao);
  Application.CreateForm(TfrmCadMedRequisicao, frmCadMedRequisicao);
  Application.CreateForm(TfrmCadUsuariosMail, frmCadUsuariosMail);
  Application.CreateForm(TfrmCadAcesso, frmCadAcesso);
  Application.CreateForm(TfrmCadBancos, frmCadBancos);
  Application.CreateForm(TfrmCadAgenda, frmCadAgenda);
  Application.CreateForm(TfrmCadLaudosMod, frmCadLaudosMod);
  Application.CreateForm(TfrmCadExamesTipoCito, frmCadExamesTipoCito);
  Application.CreateForm(TfrmCadUf, frmCadUf);
  Application.CreateForm(TfrmCadFuncoes, frmCadFuncoes);
  Application.CreateForm(TfrmCadMateriais, frmCadMateriais);
  Application.CreateForm(TfrmCadLaudosModMacro, frmCadLaudosModMacro);
  Application.CreateForm(TfrmCadLaudosModHist, frmCadLaudosModHist);
  Application.CreateForm(TfrmCadExamesTipo, frmCadExamesTipo);
  Application.CreateForm(TfrmCadTopografias, frmCadTopografias);
  Application.CreateForm(TfrmCadExamesLocais, frmCadExamesLocais);
  Application.CreateForm(TfrmCadProcedimentos, frmCadProcedimentos);
  Application.CreateForm(TfrmCadMovimentos, frmCadMovimentos);
  Application.CreateForm(TfrmCadCID10, frmCadCID10);
  Application.CreateForm(TfrmCadCidades, frmCadCidades);
  Application.CreateForm(TfrmCadContas, frmCadContas);
  Application.CreateForm(TfrmCadConvenios, frmCadConvenios);
  Application.CreateForm(TfrmCadFornecedores, frmCadFornecedores);
  Application.CreateForm(TfrmCadFuncionarios, frmCadFuncionarios);
  Application.CreateForm(TfrmCadExamesTipoHist, frmCadExamesTipoHist);
  Application.CreateForm(TfrmCadMedicos, frmCadMedicos);
  Application.CreateForm(TfrmCadPacientes, frmCadPacientes);
  Application.CreateForm(TfrmCadMedAd, frmCadMedAd);
  Application.CreateForm(TfrmCadResponsaveis, frmCadResponsaveis);

  frmSplash.lbStatus.Caption := 'Carregando formulários de buscas...';
  frmSplash.update;

  Application.CreateForm(TfrmProcUsuarios, frmProcUsuarios);
  Application.CreateForm(TfrmProcPacientes, frmProcPacientes);
  Application.CreateForm(TfrmProcResponsaveis, frmProcResponsaveis);
  Application.CreateForm(TfrmProcMovimentos, frmProcMovimentos);
  Application.CreateForm(TfrmProcProcedimentos, frmProcProcedimentos);
  Application.CreateForm(TfrmProcExamesLocais, frmProcExamesLocais);
  Application.CreateForm(TfrmProcTopografias, frmProcTopografias);
  Application.CreateForm(TfrmProcLaudosModHist, frmProcLaudosModHist);
  Application.CreateForm(TfrmProcExamesTipo, frmProcExamesTipo);
  Application.CreateForm(TfrmProcLaudosModMacro, frmProcLaudosModMacro);
  Application.CreateForm(TfrmProcMateriais, frmProcMateriais);
  Application.CreateForm(TfrmProcFuncoes, frmProcFuncoes);
  Application.CreateForm(TfrmProcUf, frmProcUf);
  Application.CreateForm(TfrmProcExamesTipoCito, frmProcExamesTipoCito);
  Application.CreateForm(TfrmProcLaudosMod, frmProcLaudosMod);
  Application.CreateForm(TfrmProcAcesso, frmProcAcesso);
  Application.CreateForm(TfrmProcAgenda, frmProcAgenda);
  Application.CreateForm(TfrmProcBancos, frmProcBancos);
  Application.CreateForm(TfrmProcCidades, frmProcCidades);
  Application.CreateForm(TfrmProcContas, frmProcContas);
  Application.CreateForm(TfrmProcConvenios, frmProcConvenios);
  Application.CreateForm(TfrmProcFornecedores, frmProcFornecedores);
  Application.CreateForm(TfrmProcFornecedores, frmProcFornecedores);
  Application.CreateForm(TfrmProcFuncionarios, frmProcFuncionarios);
  Application.CreateForm(TfrmProcExamesTipoHist, frmProcExamesTipoHist);
  Application.CreateForm(TfrmProcExamesTipo, frmProcExamesTipo);
  Application.CreateForm(TfrmProcMedicos, frmProcMedicos);

  frmSplash.lbStatus.Caption := 'Carregando relatórios...';
  frmSplash.update;

  Application.CreateForm(TfrmRelRecibo, frmRelRecibo);
  Application.CreateForm(TfrmRelCitoEspecial, frmRelCitoEspecial);
  Application.CreateForm(TfrmRelCitoEtapaI, frmRelCitoEtapaI);
  Application.CreateForm(TfrmRelHistoEtapaIMac, frmRelHistoEtapaIMac);
  Application.CreateForm(TfrmRelHistoEtapaI, frmRelHistoEtapaI);
  Application.CreateForm(TfrmRelLaudoFinal, frmRelLaudoFinal);
  Application.CreateForm(TfrmRelCorte, frmRelCorte);
  Application.CreateForm(TfrmRelHistologia, frmRelHistologia);
  Application.CreateForm(TfrmRelExConv, frmRelExConv);
  Application.CreateForm(TfrmRelExMed, frmRelExMed);
  Application.CreateForm(TfrmRelExOri, frmRelExOri);
  Application.CreateForm(TfrmRelExPac, frmRelExPac);
  Application.CreateForm(TfrmRelListagem, frmRelListagem);
  Application.CreateForm(TfrmRelExProced, frmRelExProced);
  Application.CreateForm(TfrmRelCaixa, frmRelCaixa);
  Application.CreateForm(TfrmRelCaixaAgrupado, frmRelCaixaAgrupado);
  Application.CreateForm(TfrmRelCaixaMov, frmRelCaixaMov);
  Application.CreateForm(TfrmRelCaixaAll, frmRelCaixaAll);
  Application.CreateForm(TfrmRelPagar, frmRelPagar);
  Application.CreateForm(TfrmRelPagas, frmRelPagas);
  Application.CreateForm(TfrmRelReceber, frmRelReceber);
  Application.CreateForm(TfrmRelRecebido, frmRelRecebido);
  Application.CreateForm(TfrmRelLotesTISS, frmRelLotesTISS);
  Application.CreateForm(TfrmRelExamesConvenios, frmRelExamesConvenios);
  Application.CreateForm(TfrmRelProcedXConv, frmRelProcedXConv);
  Application.CreateForm(TfrmRelEtiquetasAut, frmRelEtiquetasAut);
  Application.CreateForm(TfrmRelListaExames, frmRelListaExames);

  frmSplash.lbStatus.Caption := 'Carregando consultas...';
  frmSplash.update;

  Application.CreateForm(TfrmConsSelExame, frmConsSelExame);
  Application.CreateForm(TfrmConsStatus, frmConsStatus);
  Application.CreateForm(TfrmConsReceber, frmConsReceber);
  Application.CreateForm(TfrmConsCheques, frmConsCheques);
  Application.CreateForm(TfrmConsQuantEx, frmConsQuantEx);
  Application.CreateForm(TfrmConsPagar, frmConsPagar);

  frmSplash.lbStatus.Caption := 'Carregando formulários de exames...';
  frmSplash.update;

  Application.CreateForm(TfrmRequisicao, frmRequisicao);
  Application.CreateForm(TfrmExamesCito, frmExamesCito);
  Application.CreateForm(TfrmExamesHist, frmExamesHist);
  Application.CreateForm(TfrmExamesAnt, frmExamesAnt);
  Application.CreateForm(TfrmDetExame, frmDetExame);
  Application.CreateForm(TfrmExpedicao, frmExpedicao);
  Application.CreateForm(TfrmPreencheCito, frmPreencheCito);
  Application.CreateForm(TfrmNotasCito, frmNotasCito);
  Application.CreateForm(TfrmExameLaudo, frmExameLaudo);
  Application.CreateForm(TfrmSelExameLaudo, frmSelExameLaudo);
  Application.CreateForm(TfrmMacroCito, frmMacroCito);
  Application.CreateForm(TfrmCorte, frmCorte);
  Application.CreateForm(TfrmSelHistCorte, frmSelHistCorte);
  Application.CreateForm(TfrmObsExames, frmObsExames);
  Application.CreateForm(TfrmMacroscopia, frmMacroscopia);
  Application.CreateForm(TfrmObsEx, frmObsEx);
  Application.CreateForm(TfrmSelHISTTable, frmSelHISTTable);
  Application.CreateForm(TfrmMicroscopia, frmMicroscopia);
  Application.CreateForm(TfrmDoenca, frmDoenca);
  Application.CreateForm(TfrmRevisao, frmRevisao);
  Application.CreateForm(TfrmInsereModeloMacro, frmInsereModeloMacro);
  Application.CreateForm(TfrmGerenFiles, frmGerenFiles);
  Application.CreateForm(TfrmVisualizaNomes, frmVisualizaNomes);
  Application.CreateForm(TfrmSelImprimeCit, frmSelImprimeCit);
  Application.CreateForm(TfrmSelHistologia, frmSelHistologia);

  frmSplash.lbStatus.Caption := 'Carregando formulários de movimentações...';
  frmSplash.update;

  Application.CreateForm(TfrmValorPago, frmValorPago);
  Application.CreateForm(TfrmPendencias, frmPendencias);
  Application.CreateForm(TfrmTabPrecos, frmTabPrecos);
  Application.CreateForm(TfrmMovEntCaixa, frmMovEntCaixa);
  Application.CreateForm(TfrmSelDataIntegridade, frmSelDataIntegridade);
  Application.CreateForm(TfrmMovSaiCaixa, frmMovSaiCaixa);
  Application.CreateForm(TfrmMovTransfContas, frmMovTransfContas);
  Application.CreateForm(TfrmBxCheques, frmBxCheques);
  Application.CreateForm(TfrmLancCheque, frmLancCheque);
  Application.CreateForm(TfrmSenhaCheque, frmSenhaCheque);
  Application.CreateForm(TfrmDepCheque, frmDepCheque);
  Application.CreateForm(TfrmConfirmaBxChq, frmConfirmaBxChq);
  Application.CreateForm(TfrmLancPagar, frmLancPagar);
  Application.CreateForm(TfrmBxDupFor, frmBxDupFor);
  Application.CreateForm(TfrmConfBaixaDup, frmConfBaixaDup);
  Application.CreateForm(TfrmSelChq, frmSelChq);
  Application.CreateForm(TfrmAltPagamento, frmAltPagamento);
  Application.CreateForm(TfrmConfAltPagamento, frmConfAltPagamento);
  Application.CreateForm(TfrmAltVlrPagar, frmAltVlrPagar);

  frmSplash.lbStatus.Caption := 'Carregando menu úteis...';
  frmSplash.update;

  Application.CreateForm(TfrmVisLogs, frmVisLogs);
  Application.CreateForm(TfrmSenha, frmSenha);
  Application.CreateForm(TfrmSobre, frmSobre);
  Application.CreateForm(TfrmSQL, frmSQL);
  Application.CreateForm(TfrmCfgMail, frmCfgMail);
  Application.CreateForm(TfrmCorreio, frmCorreio);
  Application.CreateForm(TfrmSelCIT, frmSelCIT);
  Application.CreateForm(TfrmParametros, frmParametros);
  Application.CreateForm(TfrmTransfCito, frmTransfCito);
  Application.CreateForm(TfrmSelCITTable, frmSelCITTable);
  Application.CreateForm(TfrmObsExame, frmObsExame);
  Application.CreateForm(TfrmAltExame, frmAltExame);
  Application.CreateForm(TfrmObsPacientes, frmObsPacientes);
  Application.CreateForm(TfrmVisImagem, frmVisImagem);
  Application.CreateForm(TfrmEditMatGuia, frmEditMatGuia);
  Application.CreateForm(TfrmEditaDataNasc, frmEditaDataNasc);
  Application.CreateForm(TfrmRespAdd, frmRespAdd);
  Application.CreateForm(TfrmTransfMacro, frmTransfMacro);
  Application.CreateForm(TfrmExamesLog, frmExamesLog);
  Application.CreateForm(TfrmIntegridade, frmIntegridade);
  Application.CreateForm(TfrmSelImuno, frmSelImuno);
  Application.CreateForm(TfrmInsereImuno, frmInsereImuno);
  Application.CreateForm(TfrmAgendamento, frmAgendamento);
  Application.CreateForm(TfrmRelPendTISS, frmRelPendTISS);
  Application.CreateForm(TfrmConfBxDupCli, frmConfBxDupCli);
  Application.CreateForm(TfrmAltReceber, frmAltReceber);
  Application.CreateForm(TfrmConfAltReceber, frmConfAltReceber);
  Application.CreateForm(TfrmSelConvenio, frmSelConvenio);
  Application.CreateForm(TfrmAltVlrProced, frmAltVlrProced);
  Application.CreateForm(TfrmGeraCobranca, frmGeraCobranca);
  Application.CreateForm(TfrmConfCobranca, frmConfCobranca);
  Application.CreateForm(TfrmProcedimentosCob, frmProcedimentosCob);
  Application.CreateForm(TfrmGeraCobMult, frmGeraCobMult);
  Application.CreateForm(TfrmExportaCob, frmExportaCob);

  frmSplash.hide;
  frmSplash.free;

  Application.Run;
end.
