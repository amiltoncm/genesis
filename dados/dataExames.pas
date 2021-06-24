unit dataExames;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dataTmpConexao, Data.DB, SDEngine;

type
  TdmExames = class(TdmTmpConexao)
    SessaoExames: TSDSession;
    qyExames: TSDQuery;
    qyExamesexa_id: TStringField;
    qyExamesexa_data: TDateField;
    qyExamespac_codigo: TIntegerField;
    qyExamespac_nome: TStringField;
    qyExamespac_idade: TSmallintField;
    qyExamespac_meses: TStringField;
    qyExamescov_codigo: TIntegerField;
    qyExamescov_descricao: TStringField;
    qyExamesexa_matricula: TStringField;
    qyExamesexa_guia: TStringField;
    qyExamesmed_codigo: TIntegerField;
    qyExamesmed_nome: TStringField;
    qyExamesexa_etapa: TIntegerField;
    qyExamesexa_prioridade: TIntegerField;
    qyExamesexa_dataprior: TDateField;
    qyExamesexa_origem: TIntegerField;
    qyExamesexl_descricao: TStringField;
    qyExamesexa_destino: TIntegerField;
    qyExamesexl_descricao_1: TStringField;
    qyExamesetp_id: TIntegerField;
    qyExamesetp_tipo: TStringField;
    qyExamesres_codigo: TIntegerField;
    qyExamesres_nome: TStringField;
    updExames: TSDUpdateSQL;
    qyExamesLogs: TSDQuery;
    qyExamesLogsexa_id: TStringField;
    qyExamesLogseta_id: TIntegerField;
    qyExamesLogslog_data: TDateField;
    qyExamesLogslog_hora: TTimeField;
    qyExamesLogsusu_codigo: TIntegerField;
    qyExamesLogsusu_nome: TStringField;
    updExamesLogs: TSDUpdateSQL;
    qyExamesRespAd: TSDQuery;
    qyExamesRespAdexa_id: TStringField;
    qyExamesRespAdmed_codigo: TIntegerField;
    qyExamesRespAdmed_titulo: TStringField;
    qyExamesRespAdmed_nome: TStringField;
    qyExamesRespAdcos_tipo: TStringField;
    qyExamesRespAdmed_numconselho: TStringField;
    qyExamesRespAdcos_uf: TStringField;
    updExamesRespAd: TSDUpdateSQL;
    qyExamesEnvMail: TSDQuery;
    qyExamesEnvMaileem_id: TIntegerField;
    qyExamesEnvMailexa_id: TStringField;
    qyExamesEnvMaileem_enviado: TBooleanField;
    qyExamesEnvMaileem_enviar: TBooleanField;
    qyExamesEnvMaileem_concluido: TBooleanField;
    updExamesEnvMail: TSDUpdateSQL;
    qyExamesProced: TSDQuery;
    updExamesProced: TSDUpdateSQL;
    qyExamesProcedexp_id: TIntegerField;
    qyExamesProcedexa_id: TStringField;
    qyExamesProcedprc_tuss: TIntegerField;
    qyExamesProcedprc_descricao: TStringField;
    qyExamesProcedexp_quant: TIntegerField;
    qyExamesProcedexp_unitario: TFloatField;
    qyExamesProcedexp_total: TFloatField;
    qyExamesCito: TSDQuery;
    qyExamesCitoeto_local: TStringField;
    qyExamesCitoeto_descricao: TStringField;
    qyExamesCitoeci_id: TIntegerField;
    qyExamesCitoexa_id: TStringField;
    qyExamesCitoeto_id: TIntegerField;
    qyExamesCitoeci_quant: TIntegerField;
    updExamesCito: TSDUpdateSQL;
    qyExamesHist: TSDQuery;
    updExamesHist: TSDUpdateSQL;
    qyExamesHistehi_id: TIntegerField;
    qyExamesHistexa_id: TStringField;
    qyExamesHistmat_id: TIntegerField;
    qyExamesHistmat_descricao: TStringField;
    qyExamesHisteio_id: TIntegerField;
    qyExamesHisteio_descricao: TStringField;
    qyExamesHisteth_id: TIntegerField;
    qyExamesHisteth_descricao: TStringField;
    qyExamesHistehi_quant: TIntegerField;
    qyExamesHistMacro: TSDQuery;
    updExamesHistMacro: TSDUpdateSQL;
    qyExamesHistMacroehm_id: TIntegerField;
    qyExamesHistMacroexa_id: TStringField;
    qyExamesHistMacroehm_macroscopia: TBlobField;
    qyExamespac_sexo: TStringField;
    qyExamespac_dtnasc: TDateField;
    qyImagens: TSDQuery;
    updImagens: TSDUpdateSQL;
    qyImagensimg_id: TIntegerField;
    qyImagensimg_exame: TStringField;
    qyImagensimg_imagem: TBlobField;
    qyExamesCitoNotas: TSDQuery;
    updExamesCitoNotas: TSDUpdateSQL;
    qyExamesCitoNotasecn_id: TIntegerField;
    qyExamesCitoNotasexa_id: TStringField;
    qyExamesCitoNotasecn_obs: TBlobField;
    qyExamesResp: TSDQuery;
    qyExamesRespexa_id: TStringField;
    qyExamesRespres_codigo: TIntegerField;
    updExamesResp: TSDUpdateSQL;
    qyExamesLaudo: TSDQuery;
    updExamesLaudo: TSDUpdateSQL;
    qyExamesCitoMacro: TSDQuery;
    updExamesCitoMacro: TSDUpdateSQL;
    qyExamesCitoMacroecm_id: TIntegerField;
    qyExamesCitoMacroexa_id: TStringField;
    qyExamesCitoMacroecm_macro: TBlobField;
    qyExamesDoencas: TSDQuery;
    updExamesDoencas: TSDUpdateSQL;
    qyExamesDoencasedo_id: TIntegerField;
    qyExamesDoencasexa_id: TStringField;
    qyExamesDoencassct_subcat: TStringField;
    qyExamesDoencassct_descabrev: TStringField;
    qyExamesFinal: TSDQuery;
    qyExamesFinalexa_id: TStringField;
    qyExamesFinalexa_data: TDateField;
    qyExamesFinalusu_id: TIntegerField;
    updExamesFinal: TSDUpdateSQL;
    qyExamesLaudoexa_id: TStringField;
    qyExamesLaudoexa_laudo: TBlobField;
    qyExamesLaudoexa_diagnostico: TBlobField;
    qyExamesHistMicro: TSDQuery;
    qyExamesHistMicroehr_id: TIntegerField;
    qyExamesHistMicroexa_id: TStringField;
    qyExamesHistMicroehr_microscopia: TBlobField;
    qyExamesHistMicroehr_diagnostico: TBlobField;
    qyExamesHistMicroehr_complemento: TBlobField;
    updExamesHistMicro: TSDUpdateSQL;
    qyExamesRespres_nome: TStringField;
    qyExamesRespres_iniciais: TStringField;
    qyModelosLaudo: TSDQuery;
    qyModelosLaudomod_descricao: TStringField;
    qyModelosLaudomod_id: TIntegerField;
    qyModelosLaudomod_modelo: TBlobField;
    updModelosLaudo: TSDUpdateSQL;
    qyExamesTipoCito: TSDQuery;
    qyExamesTipoCitoeto_id: TIntegerField;
    qyExamesTipoCitoeto_local: TStringField;
    qyExamesTipoCitoeto_descricao: TStringField;
    updExamesTipoCito: TSDUpdateSQL;
    qyExamesObs: TSDQuery;
    qyExamesObsexa_id: TStringField;
    qyExamesObsexa_obs: TBlobField;
    updExamesObs: TSDUpdateSQL;
    qyExamesres_titulo: TStringField;
    qyExamescos_tipo: TStringField;
    qyExamesres_numconselho: TStringField;
    qyExamescos_uf: TStringField;
    qyExamesTop: TSDQuery;
    qyExamesTopetg_id: TIntegerField;
    qyExamesTopexa_id: TStringField;
    qyExamesTopetg_seq: TIntegerField;
    qyExamesToptop_id: TIntegerField;
    qyExamesTopetg_top: TStringField;
    qyExamesTopetg_reserva: TBooleanField;
    updExamesTop: TSDUpdateSQL;
    qyExamesToptop_descricao: TStringField;
    qyExamesBlocos: TSDQuery;
    qyExamesBlocosebl_seq: TIntegerField;
    qyExamesBlocosebl_fragmentos: TIntegerField;
    qyExamesBlocosebl_laminas: TIntegerField;
    qyExamesBlocosetg_id: TIntegerField;
    qyExamesBlocosebl_id: TIntegerField;
    qyExamesBlocosexa_id: TStringField;
    updExamesBlocos: TSDUpdateSQL;
    qyExamesBlocosetg_seq: TIntegerField;
    qyModLaudoHist: TSDQuery;
    qyModLaudoHistlmh_descricao: TStringField;
    qyModLaudoHistlmh_id: TIntegerField;
    qyModLaudoHistlmh_microscopia: TBlobField;
    qyModLaudoHistlmh_diagnostico: TBlobField;
    updModLaudoHist: TSDUpdateSQL;
    qyMin: TSDQuery;
    qyMinmin: TMemoField;
    qyExamesTISS: TSDQuery;
    updExamesTISS: TSDUpdateSQL;
    qyExamesTISSexa_id: TStringField;
    qyExamesTISStis_tipoatend: TIntegerField;
    qyExamesAut: TSDQuery;
    qyExamesAutexa_id: TStringField;
    qyExamesAutaut_senha: TStringField;
    qyExamesAutaut_data: TDateField;
    updExamesAut: TSDUpdateSQL;
    qyExamesexa_obs: TStringField;
    qyModelosLaudomod_diagnostico: TBlobField;
    qyExamesDoencasmat_id: TIntegerField;
    qyExamesTopehi_id: TIntegerField;
    qyExamesFrases: TSDQuery;
    updExamesFrases: TSDUpdateSQL;
    qyExamesFrasesexa_id: TStringField;
    qyExamesFrasesctf_id: TIntegerField;
    qyExamesFrasesctf_frase: TStringField;
    qyExamesres_rqe: TStringField;
    qyExamesColeta: TSDQuery;
    updExamesColeta: TSDUpdateSQL;
    qyExamesColetaexa_id: TStringField;
    qyExamesColetaexc_data: TDateField;
    qyExamesColetaexc_nomemae: TStringField;
    procedure qyExamesAfterDelete(DataSet: TDataSet);
    procedure qyExamesAfterPost(DataSet: TDataSet);
    procedure qyExamesBeforeDelete(DataSet: TDataSet);
    procedure qyExamesBeforePost(DataSet: TDataSet);
    procedure qyExamesPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qyExamesUpdateError(DataSet: TDataSet; E: EDatabaseError;
      UpdateKind: TUpdateKind; var UpdateAction: TUpdateAction);
    procedure qyExamesAfterInsert(DataSet: TDataSet);
    procedure qyExamesLogsAfterDelete(DataSet: TDataSet);
    procedure qyExamesLogsAfterPost(DataSet: TDataSet);
    procedure qyExamesLogsBeforeDelete(DataSet: TDataSet);
    procedure qyExamesLogsBeforePost(DataSet: TDataSet);
    procedure qyExamesLogsPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qyExamesLogsUpdateError(DataSet: TDataSet; E: EDatabaseError;
      UpdateKind: TUpdateKind; var UpdateAction: TUpdateAction);
    procedure qyExamesLogsAfterInsert(DataSet: TDataSet);
    procedure qyExamesRespAdAfterDelete(DataSet: TDataSet);
    procedure qyExamesRespAdAfterPost(DataSet: TDataSet);
    procedure qyExamesRespAdBeforeDelete(DataSet: TDataSet);
    procedure qyExamesRespAdBeforePost(DataSet: TDataSet);
    procedure qyExamesRespAdPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qyExamesRespAdUpdateError(DataSet: TDataSet; E: EDatabaseError;
      UpdateKind: TUpdateKind; var UpdateAction: TUpdateAction);
    procedure qyExamesRespAdAfterInsert(DataSet: TDataSet);
    procedure qyExamesEnvMailAfterDelete(DataSet: TDataSet);
    procedure qyExamesEnvMailAfterPost(DataSet: TDataSet);
    procedure qyExamesEnvMailBeforeDelete(DataSet: TDataSet);
    procedure qyExamesEnvMailBeforePost(DataSet: TDataSet);
    procedure qyExamesEnvMailPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qyExamesEnvMailUpdateError(DataSet: TDataSet; E: EDatabaseError;
      UpdateKind: TUpdateKind; var UpdateAction: TUpdateAction);
    procedure qyExamesEnvMailAfterInsert(DataSet: TDataSet);
    procedure qyExamesProcedAfterDelete(DataSet: TDataSet);
    procedure qyExamesProcedAfterPost(DataSet: TDataSet);
    procedure qyExamesProcedBeforeDelete(DataSet: TDataSet);
    procedure qyExamesProcedBeforePost(DataSet: TDataSet);
    procedure qyExamesProcedPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qyExamesProcedUpdateError(DataSet: TDataSet; E: EDatabaseError;
      UpdateKind: TUpdateKind; var UpdateAction: TUpdateAction);
    procedure qyExamesProcedAfterInsert(DataSet: TDataSet);
    procedure qyExamesCitoAfterDelete(DataSet: TDataSet);
    procedure qyExamesCitoAfterPost(DataSet: TDataSet);
    procedure qyExamesCitoBeforeDelete(DataSet: TDataSet);
    procedure qyExamesCitoBeforePost(DataSet: TDataSet);
    procedure qyExamesCitoPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qyExamesCitoUpdateError(DataSet: TDataSet; E: EDatabaseError;
      UpdateKind: TUpdateKind; var UpdateAction: TUpdateAction);
    procedure qyExamesCitoAfterInsert(DataSet: TDataSet);
    procedure qyExamesHistAfterDelete(DataSet: TDataSet);
    procedure qyExamesHistAfterPost(DataSet: TDataSet);
    procedure qyExamesHistBeforeDelete(DataSet: TDataSet);
    procedure qyExamesHistBeforePost(DataSet: TDataSet);
    procedure qyExamesHistPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qyExamesHistUpdateError(DataSet: TDataSet; E: EDatabaseError;
      UpdateKind: TUpdateKind; var UpdateAction: TUpdateAction);
    procedure qyExamesHistAfterInsert(DataSet: TDataSet);
    procedure qyExamesHistMacroAfterDelete(DataSet: TDataSet);
    procedure qyExamesHistMacroAfterPost(DataSet: TDataSet);
    procedure qyExamesHistMacroBeforeDelete(DataSet: TDataSet);
    procedure qyExamesHistMacroBeforePost(DataSet: TDataSet);
    procedure qyExamesHistMacroPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qyExamesHistMacroUpdateError(DataSet: TDataSet; E: EDatabaseError;
      UpdateKind: TUpdateKind; var UpdateAction: TUpdateAction);
    procedure qyExamesHistMacroAfterInsert(DataSet: TDataSet);
    procedure qyImagensAfterDelete(DataSet: TDataSet);
    procedure qyImagensAfterPost(DataSet: TDataSet);
    procedure qyImagensBeforeDelete(DataSet: TDataSet);
    procedure qyImagensBeforePost(DataSet: TDataSet);
    procedure qyImagensPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qyImagensUpdateError(DataSet: TDataSet; E: EDatabaseError;
      UpdateKind: TUpdateKind; var UpdateAction: TUpdateAction);
    procedure qyExamesCitoNotasAfterDelete(DataSet: TDataSet);
    procedure qyExamesCitoNotasAfterPost(DataSet: TDataSet);
    procedure qyExamesCitoNotasBeforeDelete(DataSet: TDataSet);
    procedure qyExamesCitoNotasBeforePost(DataSet: TDataSet);
    procedure qyExamesCitoNotasPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qyExamesCitoNotasUpdateError(DataSet: TDataSet; E: EDatabaseError;
      UpdateKind: TUpdateKind; var UpdateAction: TUpdateAction);
    procedure qyExamesCitoNotasAfterInsert(DataSet: TDataSet);
    procedure qyExamesRespAfterDelete(DataSet: TDataSet);
    procedure qyExamesRespAfterPost(DataSet: TDataSet);
    procedure qyExamesRespBeforeDelete(DataSet: TDataSet);
    procedure qyExamesRespBeforePost(DataSet: TDataSet);
    procedure qyExamesRespPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qyExamesRespUpdateError(DataSet: TDataSet; E: EDatabaseError;
      UpdateKind: TUpdateKind; var UpdateAction: TUpdateAction);
    procedure qyExamesRespAfterInsert(DataSet: TDataSet);
    procedure qyExamesCitoMacroAfterDelete(DataSet: TDataSet);
    procedure qyExamesCitoMacroAfterPost(DataSet: TDataSet);
    procedure qyExamesCitoMacroBeforeDelete(DataSet: TDataSet);
    procedure qyExamesCitoMacroBeforePost(DataSet: TDataSet);
    procedure qyExamesCitoMacroPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qyExamesCitoMacroUpdateError(DataSet: TDataSet; E: EDatabaseError;
      UpdateKind: TUpdateKind; var UpdateAction: TUpdateAction);
    procedure qyExamesCitoMacroAfterInsert(DataSet: TDataSet);
    procedure qyExamesLaudoAfterDelete(DataSet: TDataSet);
    procedure qyExamesLaudoAfterPost(DataSet: TDataSet);
    procedure qyExamesLaudoBeforeDelete(DataSet: TDataSet);
    procedure qyExamesLaudoBeforePost(DataSet: TDataSet);
    procedure qyExamesLaudoPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qyExamesLaudoUpdateError(DataSet: TDataSet; E: EDatabaseError;
      UpdateKind: TUpdateKind; var UpdateAction: TUpdateAction);
    procedure qyExamesLaudoAfterInsert(DataSet: TDataSet);
    procedure qyExamesDoencasAfterDelete(DataSet: TDataSet);
    procedure qyExamesDoencasAfterPost(DataSet: TDataSet);
    procedure qyExamesDoencasBeforeDelete(DataSet: TDataSet);
    procedure qyExamesDoencasBeforePost(DataSet: TDataSet);
    procedure qyExamesDoencasPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qyExamesDoencasUpdateError(DataSet: TDataSet; E: EDatabaseError;
      UpdateKind: TUpdateKind; var UpdateAction: TUpdateAction);
    procedure qyExamesDoencasAfterInsert(DataSet: TDataSet);
    procedure qyExamesFinalAfterDelete(DataSet: TDataSet);
    procedure qyExamesFinalAfterPost(DataSet: TDataSet);
    procedure qyExamesFinalBeforeDelete(DataSet: TDataSet);
    procedure qyExamesFinalBeforePost(DataSet: TDataSet);
    procedure qyExamesFinalPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qyExamesFinalUpdateError(DataSet: TDataSet; E: EDatabaseError;
      UpdateKind: TUpdateKind; var UpdateAction: TUpdateAction);
    procedure qyExamesFinalAfterInsert(DataSet: TDataSet);
    procedure qyExamesHistMicroAfterDelete(DataSet: TDataSet);
    procedure qyExamesHistMicroAfterPost(DataSet: TDataSet);
    procedure qyExamesHistMicroBeforeDelete(DataSet: TDataSet);
    procedure qyExamesHistMicroBeforePost(DataSet: TDataSet);
    procedure qyExamesHistMicroPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qyExamesHistMicroUpdateError(DataSet: TDataSet; E: EDatabaseError;
      UpdateKind: TUpdateKind; var UpdateAction: TUpdateAction);
    procedure qyExamesHistMicroAfterInsert(DataSet: TDataSet);
    procedure qyModelosLaudoAfterDelete(DataSet: TDataSet);
    procedure qyModelosLaudoAfterPost(DataSet: TDataSet);
    procedure qyModelosLaudoBeforeDelete(DataSet: TDataSet);
    procedure qyModelosLaudoBeforePost(DataSet: TDataSet);
    procedure qyModelosLaudoPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qyModelosLaudoUpdateError(DataSet: TDataSet; E: EDatabaseError;
      UpdateKind: TUpdateKind; var UpdateAction: TUpdateAction);
    procedure qyModelosLaudoAfterInsert(DataSet: TDataSet);
    procedure qyExamesTipoCitoAfterDelete(DataSet: TDataSet);
    procedure qyExamesTipoCitoAfterPost(DataSet: TDataSet);
    procedure qyExamesTipoCitoBeforeDelete(DataSet: TDataSet);
    procedure qyExamesTipoCitoBeforePost(DataSet: TDataSet);
    procedure qyExamesTipoCitoPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qyExamesTipoCitoUpdateError(DataSet: TDataSet; E: EDatabaseError;
      UpdateKind: TUpdateKind; var UpdateAction: TUpdateAction);
    procedure qyImagensAfterInsert(DataSet: TDataSet);
    procedure qyExamesObsAfterDelete(DataSet: TDataSet);
    procedure qyExamesObsAfterPost(DataSet: TDataSet);
    procedure qyExamesObsBeforeDelete(DataSet: TDataSet);
    procedure qyExamesObsBeforePost(DataSet: TDataSet);
    procedure qyExamesObsPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qyExamesObsUpdateError(DataSet: TDataSet; E: EDatabaseError;
      UpdateKind: TUpdateKind; var UpdateAction: TUpdateAction);
    procedure qyExamesTopAfterDelete(DataSet: TDataSet);
    procedure qyExamesTopAfterPost(DataSet: TDataSet);
    procedure qyExamesTopBeforeDelete(DataSet: TDataSet);
    procedure qyExamesTopBeforePost(DataSet: TDataSet);
    procedure qyExamesTopPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qyExamesTopUpdateError(DataSet: TDataSet; E: EDatabaseError;
      UpdateKind: TUpdateKind; var UpdateAction: TUpdateAction);
    procedure qyExamesTopAfterInsert(DataSet: TDataSet);
    procedure qyExamesBlocosAfterDelete(DataSet: TDataSet);
    procedure qyExamesBlocosAfterPost(DataSet: TDataSet);
    procedure qyExamesBlocosBeforeDelete(DataSet: TDataSet);
    procedure qyExamesBlocosBeforePost(DataSet: TDataSet);
    procedure qyExamesBlocosPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qyExamesBlocosUpdateError(DataSet: TDataSet; E: EDatabaseError;
      UpdateKind: TUpdateKind; var UpdateAction: TUpdateAction);
    procedure qyExamesBlocosAfterInsert(DataSet: TDataSet);
    procedure qyExamesTipoCitoAfterInsert(DataSet: TDataSet);
    procedure qyModLaudoHistAfterDelete(DataSet: TDataSet);
    procedure qyModLaudoHistAfterPost(DataSet: TDataSet);
    procedure qyModLaudoHistBeforeDelete(DataSet: TDataSet);
    procedure qyModLaudoHistBeforePost(DataSet: TDataSet);
    procedure qyModLaudoHistPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qyModLaudoHistUpdateError(DataSet: TDataSet; E: EDatabaseError;
      UpdateKind: TUpdateKind; var UpdateAction: TUpdateAction);
    procedure qyModLaudoHistAfterInsert(DataSet: TDataSet);
    procedure qyExamesTISSAfterDelete(DataSet: TDataSet);
    procedure qyExamesTISSAfterPost(DataSet: TDataSet);
    procedure qyExamesTISSBeforeDelete(DataSet: TDataSet);
    procedure qyExamesTISSBeforePost(DataSet: TDataSet);
    procedure qyExamesTISSPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qyExamesTISSUpdateError(DataSet: TDataSet; E: EDatabaseError;
      UpdateKind: TUpdateKind; var UpdateAction: TUpdateAction);
    procedure qyExamesTISSAfterInsert(DataSet: TDataSet);
    procedure qyExamesAutAfterDelete(DataSet: TDataSet);
    procedure qyExamesAutAfterPost(DataSet: TDataSet);
    procedure qyExamesAutBeforeDelete(DataSet: TDataSet);
    procedure qyExamesAutBeforePost(DataSet: TDataSet);
    procedure qyExamesAutPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qyExamesAutUpdateError(DataSet: TDataSet; E: EDatabaseError;
      UpdateKind: TUpdateKind; var UpdateAction: TUpdateAction);
    procedure qyExamesAutAfterInsert(DataSet: TDataSet);
    procedure qyExamesFrasesAfterDelete(DataSet: TDataSet);
    procedure qyExamesFrasesAfterPost(DataSet: TDataSet);
    procedure qyExamesFrasesBeforeDelete(DataSet: TDataSet);
    procedure qyExamesFrasesBeforePost(DataSet: TDataSet);
    procedure qyExamesFrasesPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qyExamesFrasesUpdateError(DataSet: TDataSet; E: EDatabaseError;
      UpdateKind: TUpdateKind; var UpdateAction: TUpdateAction);
    procedure qyExamesColetaAfterDelete(DataSet: TDataSet);
    procedure qyExamesColetaAfterPost(DataSet: TDataSet);
    procedure qyExamesColetaBeforeDelete(DataSet: TDataSet);
    procedure qyExamesColetaBeforePost(DataSet: TDataSet);
    procedure qyExamesColetaPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qyExamesColetaUpdateError(DataSet: TDataSet; E: EDatabaseError;
      UpdateKind: TUpdateKind; var UpdateAction: TUpdateAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmExames: TdmExames;

implementation

{$R *.dfm}

uses dataLookups, uDaoExames, uDaoExamesLogs, uDaoExamesCob, uDaoPacientes, uDaoExamesProced,
  uDaoExamesCito, uDaoExamesHist, uDaoExamesHistMacro, uDaoExamesRespAd,
  uDaoExamesEnvMail, uDaoImagens, uDaoExamesCitoNotas, uDaoExamesResp,
  uDaoExamesLaudo, uDaoExamesCitoMacro, uDaoExamesDoencas, uDaoExamesFinal,
  uDaoExamesHistMicro, uFuncoesDB;

{--- qyExames -----------------------------------------------------------------}

procedure TdmExames.qyExamesAfterDelete(DataSet: TDataSet);
begin
  qyExames.ApplyUpdates;
  database.Commit;
  qyExames.CommitUpdates;
end;

procedure TdmExames.qyExamesAfterPost(DataSet: TDataSet);
begin
  qyExames.ApplyUpdates;
  database.Commit;
  qyExames.CommitUpdates;
end;

procedure TdmExames.qyExamesBeforeDelete(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmExames.qyExamesBeforePost(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmExames.qyExamesPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  database.Rollback;
end;

procedure TdmExames.qyExamesUpdateError(DataSet: TDataSet; E: EDatabaseError;
  UpdateKind: TUpdateKind; var UpdateAction: TUpdateAction);
begin
  database.Rollback;
  qyExames.RollbackUpdates;
end;

procedure TdmExames.qyExamesAfterInsert(DataSet: TDataSet);
begin
  qyExamesexa_data.Value := now;
  qyExamescov_codigo.Value := 0;
  qyExamesexa_guia.Value := '0';
  qyExamesexa_matricula.Text := '0';
  qyExamesres_codigo.Value := 1;
end;

{--- qyExamesAut --------------------------------------------------------------}

procedure TdmExames.qyExamesAutAfterDelete(DataSet: TDataSet);
begin
  qyExamesAut.ApplyUpdates;
  database.Commit;
  qyExamesAut.CommitUpdates;
end;

procedure TdmExames.qyExamesAutAfterPost(DataSet: TDataSet);
begin
  qyExamesAut.ApplyUpdates;
  database.Commit;
  qyExamesAut.CommitUpdates;
end;

procedure TdmExames.qyExamesAutBeforeDelete(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmExames.qyExamesAutBeforePost(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmExames.qyExamesAutPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  database.Rollback;
end;

procedure TdmExames.qyExamesAutUpdateError(DataSet: TDataSet;
  E: EDatabaseError; UpdateKind: TUpdateKind;
  var UpdateAction: TUpdateAction);
begin
  database.Rollback;
  qyExamesAut.RollbackUpdates;
end;

procedure TdmExames.qyExamesAutAfterInsert(DataSet: TDataSet);
begin
  //
end;

{--- qyExamesBlocos -----------------------------------------------------------}

procedure TdmExames.qyExamesBlocosAfterDelete(DataSet: TDataSet);
begin
  qyExamesBlocos.ApplyUpdates;
  database.Commit;
  qyExamesBlocos.CommitUpdates;
end;

procedure TdmExames.qyExamesBlocosAfterPost(DataSet: TDataSet);
begin
  qyExamesBlocos.ApplyUpdates;
  database.Commit;
  qyExamesBlocos.CommitUpdates;
end;

procedure TdmExames.qyExamesBlocosBeforeDelete(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmExames.qyExamesBlocosBeforePost(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmExames.qyExamesBlocosPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  database.Rollback;
end;

procedure TdmExames.qyExamesBlocosUpdateError(DataSet: TDataSet;
  E: EDatabaseError; UpdateKind: TUpdateKind;
  var UpdateAction: TUpdateAction);
begin
  database.Rollback;
  qyExamesBlocos.RollbackUpdates;
end;

procedure TdmExames.qyExamesBlocosAfterInsert(DataSet: TDataSet);
begin
  //
end;

{--- qyExamesCito -------------------------------------------------------------}

procedure TdmExames.qyExamesCitoAfterDelete(DataSet: TDataSet);
begin
  qyExamesCito.ApplyUpdates;
  database.Commit;
  qyExamesCito.CommitUpdates;
end;

procedure TdmExames.qyExamesCitoAfterPost(DataSet: TDataSet);
begin
  qyExamesCito.ApplyUpdates;
  database.Commit;
  qyExamesCito.CommitUpdates;
end;

procedure TdmExames.qyExamesCitoBeforeDelete(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmExames.qyExamesCitoBeforePost(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmExames.qyExamesCitoPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  database.Rollback;
end;

procedure TdmExames.qyExamesCitoUpdateError(DataSet: TDataSet;
  E: EDatabaseError; UpdateKind: TUpdateKind;
  var UpdateAction: TUpdateAction);
begin
  database.Rollback;
  qyExamesCito.RollbackUpdates;
end;

procedure TdmExames.qyExamesCitoAfterInsert(DataSet: TDataSet);
begin
  //
end;

{--- qyExamesColeta ---------------------------------------------------------------}

procedure TdmExames.qyExamesColetaAfterDelete(DataSet: TDataSet);
begin
  qyExamesColeta.ApplyUpdates;
  database.Commit;
  qyExamesColeta.CommitUpdates;
end;

procedure TdmExames.qyExamesColetaAfterPost(DataSet: TDataSet);
begin
  qyExamesColeta.ApplyUpdates;
  database.Commit;
  qyExamesColeta.CommitUpdates;
end;

procedure TdmExames.qyExamesColetaBeforeDelete(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmExames.qyExamesColetaBeforePost(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmExames.qyExamesColetaPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  database.Rollback;
end;

procedure TdmExames.qyExamesColetaUpdateError(DataSet: TDataSet; E: EDatabaseError;
  UpdateKind: TUpdateKind; var UpdateAction: TUpdateAction);
begin
  database.Rollback;
  qyExamesColeta.RollbackUpdates;
end;

{--- qyExamesCitoMacro --------------------------------------------------------}

procedure TdmExames.qyExamesCitoMacroAfterDelete(DataSet: TDataSet);
begin
  qyExamesCitoMacro.ApplyUpdates;
  database.Commit;
  qyExamesCitoMacro.CommitUpdates;
end;

procedure TdmExames.qyExamesCitoMacroAfterPost(DataSet: TDataSet);
begin
  qyExamesCitoMacro.ApplyUpdates;
  database.Commit;
  qyExamesCitoMacro.CommitUpdates;
end;

procedure TdmExames.qyExamesCitoMacroBeforeDelete(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmExames.qyExamesCitoMacroBeforePost(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmExames.qyExamesCitoMacroPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  database.Rollback;
end;

procedure TdmExames.qyExamesCitoMacroUpdateError(DataSet: TDataSet;
  E: EDatabaseError; UpdateKind: TUpdateKind;
  var UpdateAction: TUpdateAction);
begin
  database.Rollback;
  qyExamesCitoMacro.RollbackUpdates;
end;

procedure TdmExames.qyExamesCitoMacroAfterInsert(DataSet: TDataSet);
begin
  //
end;

{--- qyExamesCitoNotas --------------------------------------------------------}

procedure TdmExames.qyExamesCitoNotasAfterDelete(DataSet: TDataSet);
begin
  qyExamesCitoNotas.ApplyUpdates;
  database.Commit;
  qyExamesCitoNotas.CommitUpdates;
end;

procedure TdmExames.qyExamesCitoNotasAfterPost(DataSet: TDataSet);
begin
  qyExamesCitoNotas.ApplyUpdates;
  database.Commit;
  qyExamesCitoNotas.CommitUpdates;
end;

procedure TdmExames.qyExamesCitoNotasBeforeDelete(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmExames.qyExamesCitoNotasBeforePost(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmExames.qyExamesCitoNotasPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  database.Rollback;
end;

procedure TdmExames.qyExamesCitoNotasUpdateError(DataSet: TDataSet;
  E: EDatabaseError; UpdateKind: TUpdateKind;
  var UpdateAction: TUpdateAction);
begin
  database.Rollback;
  qyExamesCitoNotas.RollbackUpdates;
end;

procedure TdmExames.qyExamesCitoNotasAfterInsert(DataSet: TDataSet);
begin
  //
end;

{--- qyExamesDoencas ---------------------------------------------------------------}

procedure TdmExames.qyExamesDoencasAfterDelete(DataSet: TDataSet);
begin
  qyExamesDoencas.ApplyUpdates;
  database.Commit;
  qyExamesDoencas.CommitUpdates;
end;

procedure TdmExames.qyExamesDoencasAfterPost(DataSet: TDataSet);
begin
  qyExamesDoencas.ApplyUpdates;
  database.Commit;
  qyExamesDoencas.CommitUpdates;
end;

procedure TdmExames.qyExamesDoencasBeforeDelete(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmExames.qyExamesDoencasBeforePost(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmExames.qyExamesDoencasPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  database.Rollback;
end;

procedure TdmExames.qyExamesDoencasUpdateError(DataSet: TDataSet;
  E: EDatabaseError; UpdateKind: TUpdateKind;
  var UpdateAction: TUpdateAction);
begin
  database.Rollback;
  qyExamesDoencas.RollbackUpdates;
end;

procedure TdmExames.qyExamesDoencasAfterInsert(DataSet: TDataSet);
begin
  qyExamesDoencasmat_id.Value := 0;
end;

{--- qyExamesEnvMail ----------------------------------------------------------}

procedure TdmExames.qyExamesEnvMailAfterDelete(DataSet: TDataSet);
begin
  qyExamesEnvMail.ApplyUpdates;
  database.Commit;
  qyExamesEnvMail.CommitUpdates;
end;

procedure TdmExames.qyExamesEnvMailAfterPost(DataSet: TDataSet);
begin
  qyExamesEnvMail.ApplyUpdates;
  database.Commit;
  qyExamesEnvMail.CommitUpdates;
end;

procedure TdmExames.qyExamesEnvMailBeforeDelete(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmExames.qyExamesEnvMailBeforePost(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmExames.qyExamesEnvMailPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  database.Rollback;
end;

procedure TdmExames.qyExamesEnvMailUpdateError(DataSet: TDataSet;
  E: EDatabaseError; UpdateKind: TUpdateKind;
  var UpdateAction: TUpdateAction);
begin
  database.Rollback;
  qyExamesEnvMail.RollbackUpdates;
end;

procedure TdmExames.qyExamesEnvMailAfterInsert(DataSet: TDataSet);
begin
  //
end;

{--- qyExamesFinal ------------------------------------------------------------}

procedure TdmExames.qyExamesFinalAfterDelete(DataSet: TDataSet);
begin
  qyExamesFinal.ApplyUpdates;
  database.Commit;
  qyExamesFinal.CommitUpdates;
end;

procedure TdmExames.qyExamesFinalAfterPost(DataSet: TDataSet);
begin
  qyExamesFinal.ApplyUpdates;
  database.Commit;
  qyExamesFinal.CommitUpdates;
end;

procedure TdmExames.qyExamesFinalBeforeDelete(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmExames.qyExamesFinalBeforePost(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmExames.qyExamesFinalPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  database.Rollback;
end;

procedure TdmExames.qyExamesFinalUpdateError(DataSet: TDataSet;
  E: EDatabaseError; UpdateKind: TUpdateKind;
  var UpdateAction: TUpdateAction);
begin
  database.Rollback;
  qyExamesFinal.RollbackUpdates;
end;

procedure TdmExames.qyExamesFinalAfterInsert(DataSet: TDataSet);
begin
  //
end;

{--- qyExamesFrases ---------------------------------------------------------------}

procedure TdmExames.qyExamesFrasesAfterDelete(DataSet: TDataSet);
begin
  qyExamesFrases.ApplyUpdates;
  database.Commit;
  qyExamesFrases.CommitUpdates;
end;

procedure TdmExames.qyExamesFrasesAfterPost(DataSet: TDataSet);
begin
  qyExamesFrases.ApplyUpdates;
  database.Commit;
  qyExamesFrases.CommitUpdates;
end;

procedure TdmExames.qyExamesFrasesBeforeDelete(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmExames.qyExamesFrasesBeforePost(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmExames.qyExamesFrasesPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  database.Rollback;
end;

procedure TdmExames.qyExamesFrasesUpdateError(DataSet: TDataSet; E: EDatabaseError;
  UpdateKind: TUpdateKind; var UpdateAction: TUpdateAction);
begin
  database.Rollback;
  qyExamesFrases.RollbackUpdates;
end;

{--- qyExamesHist -------------------------------------------------------------}

procedure TdmExames.qyExamesHistAfterDelete(DataSet: TDataSet);
begin
  qyExamesHist.ApplyUpdates;
  database.Commit;
  qyExamesHist.CommitUpdates;
end;

procedure TdmExames.qyExamesHistAfterPost(DataSet: TDataSet);
begin
  qyExamesHist.ApplyUpdates;
  database.Commit;
  qyExamesHist.CommitUpdates;
end;

procedure TdmExames.qyExamesHistBeforeDelete(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmExames.qyExamesHistBeforePost(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmExames.qyExamesHistPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  database.Rollback;
end;

procedure TdmExames.qyExamesHistUpdateError(DataSet: TDataSet;
  E: EDatabaseError; UpdateKind: TUpdateKind;
  var UpdateAction: TUpdateAction);
begin
  database.Rollback;
  qyExamesHist.RollbackUpdates;
end;

procedure TdmExames.qyExamesHistAfterInsert(DataSet: TDataSet);
begin
  qyExamesHistehi_id.Value := GetCodigo('ehi_id', 'exameshist');
  qyExamesHistehi_quant.Value := 1;
end;

{--- qyExamesImuno ------------------------------------------------------------

procedure TdmExames.qyExamesImunoAfterDelete(DataSet: TDataSet);
begin
  qyExamesImuno.ApplyUpdates;
  database.Commit;
  qyExamesImuno.CommitUpdates;
end;

procedure TdmExames.qyExamesImunoAfterPost(DataSet: TDataSet);
begin
  qyExamesImuno.ApplyUpdates;
  database.Commit;
  qyExamesImuno.CommitUpdates;
end;

procedure TdmExames.qyExamesImunoBeforeDelete(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmExames.qyExamesImunoBeforePost(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmExames.qyExamesImunoPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  database.Rollback;
end;

procedure TdmExames.qyExamesImunoUpdateError(DataSet: TDataSet;
  E: EDatabaseError; UpdateKind: TUpdateKind;
  var UpdateAction: TUpdateAction);
begin
  database.Rollback;
  qyExamesImuno.RollbackUpdates;
end;

procedure TdmExames.qyExamesImunoAfterInsert(DataSet: TDataSet);
begin
  //
end;                                                                           }

{--- qyExamesHistMacro --------------------------------------------------------}

procedure TdmExames.qyExamesHistMacroAfterDelete(DataSet: TDataSet);
begin
  qyExamesHistMacro.ApplyUpdates;
  database.Commit;
  qyExamesHistMacro.CommitUpdates;
end;

procedure TdmExames.qyExamesHistMacroAfterPost(DataSet: TDataSet);
begin
  qyExamesHistMacro.ApplyUpdates;
  database.Commit;
  qyExamesHistMacro.CommitUpdates;
end;

procedure TdmExames.qyExamesHistMacroBeforeDelete(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmExames.qyExamesHistMacroBeforePost(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmExames.qyExamesHistMacroPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  database.Rollback;
end;

procedure TdmExames.qyExamesHistMacroUpdateError(DataSet: TDataSet;
  E: EDatabaseError; UpdateKind: TUpdateKind;
  var UpdateAction: TUpdateAction);
begin
  database.Rollback;
  qyExamesHistMacro.RollbackUpdates;
end;

procedure TdmExames.qyExamesHistMacroAfterInsert(DataSet: TDataSet);
begin
  //
end;

{--- qyExamesHistMicro --------------------------------------------------------}

procedure TdmExames.qyExamesHistMicroAfterDelete(DataSet: TDataSet);
begin
  qyExamesHistMicro.ApplyUpdates;
  database.Commit;
  qyExamesHistMicro.CommitUpdates;
end;

procedure TdmExames.qyExamesHistMicroAfterPost(DataSet: TDataSet);
begin
  qyExamesHistMicro.ApplyUpdates;
  database.Commit;
  qyExamesHistMicro.CommitUpdates;
end;

procedure TdmExames.qyExamesHistMicroBeforeDelete(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmExames.qyExamesHistMicroBeforePost(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmExames.qyExamesHistMicroPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  database.Rollback;
end;

procedure TdmExames.qyExamesHistMicroUpdateError(DataSet: TDataSet;
  E: EDatabaseError; UpdateKind: TUpdateKind;
  var UpdateAction: TUpdateAction);
begin
  database.Rollback;
  qyExamesHistMicro.RollbackUpdates;
end;

procedure TdmExames.qyExamesHistMicroAfterInsert(DataSet: TDataSet);
begin
  //
end;

{--- qyExamesLaudo ------------------------------------------------------------}

procedure TdmExames.qyExamesLaudoAfterDelete(DataSet: TDataSet);
begin
  qyExamesLaudo.ApplyUpdates;
  database.Commit;
  qyExamesLaudo.CommitUpdates;
end;

procedure TdmExames.qyExamesLaudoAfterPost(DataSet: TDataSet);
begin
  qyExamesLaudo.ApplyUpdates;
  database.Commit;
  qyExamesLaudo.CommitUpdates;
end;

procedure TdmExames.qyExamesLaudoBeforeDelete(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmExames.qyExamesLaudoBeforePost(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmExames.qyExamesLaudoPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  database.Rollback;
end;

procedure TdmExames.qyExamesLaudoUpdateError(DataSet: TDataSet;
  E: EDatabaseError; UpdateKind: TUpdateKind;
  var UpdateAction: TUpdateAction);
begin
  database.Rollback;
  qyExamesLaudo.RollbackUpdates;
end;

procedure TdmExames.qyExamesLaudoAfterInsert(DataSet: TDataSet);
begin
  //
end;

{--- qyExamesLogs -------------------------------------------------------------}

procedure TdmExames.qyExamesLogsAfterDelete(DataSet: TDataSet);
begin
  qyExamesLogs.ApplyUpdates;
  database.Commit;
  qyExamesLogs.CommitUpdates;
end;

procedure TdmExames.qyExamesLogsAfterPost(DataSet: TDataSet);
begin
  qyExamesLogs.ApplyUpdates;
  database.Commit;
  qyExamesLogs.CommitUpdates;
end;

procedure TdmExames.qyExamesLogsBeforeDelete(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmExames.qyExamesLogsBeforePost(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmExames.qyExamesLogsPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  database.Rollback;
end;

procedure TdmExames.qyExamesLogsUpdateError(DataSet: TDataSet;
  E: EDatabaseError; UpdateKind: TUpdateKind;
  var UpdateAction: TUpdateAction);
begin
  database.Rollback;
  qyExamesLogs.RollbackUpdates;
end;

procedure TdmExames.qyExamesLogsAfterInsert(DataSet: TDataSet);
begin
  //
end;

{--- qyExamesObs --------------------------------------------------------------}

procedure TdmExames.qyExamesObsAfterDelete(DataSet: TDataSet);
begin
  qyExamesObs.ApplyUpdates;
  database.Commit;
  qyExamesObs.CommitUpdates;
end;

procedure TdmExames.qyExamesObsAfterPost(DataSet: TDataSet);
begin
  qyExamesObs.ApplyUpdates;
  database.Commit;
  qyExamesObs.CommitUpdates;
end;

procedure TdmExames.qyExamesObsBeforeDelete(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmExames.qyExamesObsBeforePost(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmExames.qyExamesObsPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  database.Rollback;
end;

procedure TdmExames.qyExamesObsUpdateError(DataSet: TDataSet;
  E: EDatabaseError; UpdateKind: TUpdateKind;
  var UpdateAction: TUpdateAction);
begin
  database.Rollback;
  qyExamesObs.RollbackUpdates;
end;

{--- qyExamesProced -----------------------------------------------------------}

procedure TdmExames.qyExamesProcedAfterDelete(DataSet: TDataSet);
begin
  qyExamesProced.ApplyUpdates;
  database.Commit;
  qyExamesProced.CommitUpdates;
end;

procedure TdmExames.qyExamesProcedAfterPost(DataSet: TDataSet);
begin
  qyExamesProced.ApplyUpdates;
  database.Commit;
  qyExamesProced.CommitUpdates;
end;

procedure TdmExames.qyExamesProcedBeforeDelete(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmExames.qyExamesProcedBeforePost(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmExames.qyExamesProcedPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  database.Rollback;
end;

procedure TdmExames.qyExamesProcedUpdateError(DataSet: TDataSet;
  E: EDatabaseError; UpdateKind: TUpdateKind;
  var UpdateAction: TUpdateAction);
begin
  database.Rollback;
  qyExamesProced.RollbackUpdates;
end;

procedure TdmExames.qyExamesProcedAfterInsert(DataSet: TDataSet);
begin
  qyExamesProcedexp_quant.Value := 1;
  qyExamesProcedexp_unitario.Value := 0;
end;

{--- qyExamesResp ---------------------------------------------------------------}

procedure TdmExames.qyExamesRespAfterDelete(DataSet: TDataSet);
begin
  qyExamesResp.ApplyUpdates;
  database.Commit;
  qyExamesResp.CommitUpdates;
end;

procedure TdmExames.qyExamesRespAfterPost(DataSet: TDataSet);
begin
  qyExamesResp.ApplyUpdates;
  database.Commit;
  qyExamesResp.CommitUpdates;
end;

procedure TdmExames.qyExamesRespBeforeDelete(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmExames.qyExamesRespBeforePost(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmExames.qyExamesRespPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  database.Rollback;
end;

procedure TdmExames.qyExamesRespUpdateError(DataSet: TDataSet;
  E: EDatabaseError; UpdateKind: TUpdateKind;
  var UpdateAction: TUpdateAction);
begin
  database.Rollback;
  qyExamesResp.RollbackUpdates;
end;

procedure TdmExames.qyExamesRespAfterInsert(DataSet: TDataSet);
begin
  //
end;

{--- qyExamesRespAd -----------------------------------------------------------}

procedure TdmExames.qyExamesRespAdAfterDelete(DataSet: TDataSet);
begin
  qyExamesRespAd.ApplyUpdates;
  database.Commit;
  qyExamesRespAd.CommitUpdates;
end;

procedure TdmExames.qyExamesRespAdAfterPost(DataSet: TDataSet);
begin
  qyExamesRespAd.ApplyUpdates;
  database.Commit;
  qyExamesRespAd.CommitUpdates;
end;

procedure TdmExames.qyExamesRespAdBeforeDelete(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmExames.qyExamesRespAdBeforePost(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmExames.qyExamesRespAdPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  database.Rollback;
end;

procedure TdmExames.qyExamesRespAdUpdateError(DataSet: TDataSet;
  E: EDatabaseError; UpdateKind: TUpdateKind;
  var UpdateAction: TUpdateAction);
begin
  database.Rollback;
  qyExamesRespAd.RollbackUpdates;
end;

procedure TdmExames.qyExamesRespAdAfterInsert(DataSet: TDataSet);
begin
  //
end;

{--- qyExamesTipoCito ---------------------------------------------------------}

procedure TdmExames.qyExamesTipoCitoAfterDelete(DataSet: TDataSet);
begin
  qyExamesTipoCito.ApplyUpdates;
  database.Commit;
  qyExamesTipoCito.CommitUpdates;
end;

procedure TdmExames.qyExamesTipoCitoAfterInsert(DataSet: TDataSet);
begin
  //
end;

procedure TdmExames.qyExamesTipoCitoAfterPost(DataSet: TDataSet);
begin
  qyExamesTipoCito.ApplyUpdates;
  database.Commit;
  qyExamesTipoCito.CommitUpdates;
end;

procedure TdmExames.qyExamesTipoCitoBeforeDelete(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmExames.qyExamesTipoCitoBeforePost(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmExames.qyExamesTipoCitoPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  database.Rollback;
end;

procedure TdmExames.qyExamesTipoCitoUpdateError(DataSet: TDataSet;
  E: EDatabaseError; UpdateKind: TUpdateKind;
  var UpdateAction: TUpdateAction);
begin
  database.Rollback;
  qyExamesTipoCito.RollbackUpdates;
end;

{--- qyExamesTISS ---------------------------------------------------------------}

procedure TdmExames.qyExamesTISSAfterDelete(DataSet: TDataSet);
begin
  qyExamesTISS.ApplyUpdates;
  database.Commit;
  qyExamesTISS.CommitUpdates;
end;

procedure TdmExames.qyExamesTISSAfterPost(DataSet: TDataSet);
begin
  qyExamesTISS.ApplyUpdates;
  database.Commit;
  qyExamesTISS.CommitUpdates;
end;

procedure TdmExames.qyExamesTISSBeforeDelete(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmExames.qyExamesTISSBeforePost(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmExames.qyExamesTISSPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  database.Rollback;
end;

procedure TdmExames.qyExamesTISSUpdateError(DataSet: TDataSet;
  E: EDatabaseError; UpdateKind: TUpdateKind;
  var UpdateAction: TUpdateAction);
begin
  database.Rollback;
  qyExamesTISS.RollbackUpdates;
end;

procedure TdmExames.qyExamesTISSAfterInsert(DataSet: TDataSet);
begin
  //
end;

{--- qyExamesTop --------------------------------------------------------------}

procedure TdmExames.qyExamesTopAfterDelete(DataSet: TDataSet);
begin
  qyExamesTop.ApplyUpdates;
  database.Commit;
  qyExamesTop.CommitUpdates;
end;

procedure TdmExames.qyExamesTopAfterPost(DataSet: TDataSet);
begin
  qyExamesTop.ApplyUpdates;
  database.Commit;
  qyExamesTop.CommitUpdates;
end;

procedure TdmExames.qyExamesTopBeforeDelete(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmExames.qyExamesTopBeforePost(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmExames.qyExamesTopPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  database.Rollback;
end;

procedure TdmExames.qyExamesTopUpdateError(DataSet: TDataSet;
  E: EDatabaseError; UpdateKind: TUpdateKind;
  var UpdateAction: TUpdateAction);
begin
  database.Rollback;
  qyExamesTop.RollbackUpdates;
end;

procedure TdmExames.qyExamesTopAfterInsert(DataSet: TDataSet);
begin
  qyExamesTopehi_id.Value := 0;
end;

{--- qyImagens ----------------------------------------------------------------}

procedure TdmExames.qyImagensAfterDelete(DataSet: TDataSet);
begin
  qyImagens.ApplyUpdates;
  database.Commit;
  qyImagens.CommitUpdates;
end;

procedure TdmExames.qyImagensAfterInsert(DataSet: TDataSet);
begin
  //
end;

procedure TdmExames.qyImagensAfterPost(DataSet: TDataSet);
begin
  qyImagens.ApplyUpdates;
  database.Commit;
  qyImagens.CommitUpdates;
end;

procedure TdmExames.qyImagensBeforeDelete(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmExames.qyImagensBeforePost(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmExames.qyImagensPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  database.Rollback;
end;

procedure TdmExames.qyImagensUpdateError(DataSet: TDataSet;
  E: EDatabaseError; UpdateKind: TUpdateKind;
  var UpdateAction: TUpdateAction);
begin
  database.Rollback;
  qyImagens.RollbackUpdates;
end;

{--- qyModelosLaudo -----------------------------------------------------------}

procedure TdmExames.qyModelosLaudoAfterDelete(DataSet: TDataSet);
begin
  qyModelosLaudo.ApplyUpdates;
  database.Commit;
  qyModelosLaudo.CommitUpdates;
end;

procedure TdmExames.qyModelosLaudoAfterPost(DataSet: TDataSet);
begin
  qyModelosLaudo.ApplyUpdates;
  database.Commit;
  qyModelosLaudo.CommitUpdates;
end;

procedure TdmExames.qyModelosLaudoBeforeDelete(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmExames.qyModelosLaudoBeforePost(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmExames.qyModelosLaudoPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  database.Rollback;
end;

procedure TdmExames.qyModelosLaudoUpdateError(DataSet: TDataSet;
  E: EDatabaseError; UpdateKind: TUpdateKind;
  var UpdateAction: TUpdateAction);
begin
  database.Rollback;
  qyModelosLaudo.RollbackUpdates;
end;

procedure TdmExames.qyModelosLaudoAfterInsert(DataSet: TDataSet);
begin
  //
end;

{--- qyModLaudoHist ---------------------------------------------------------------}

procedure TdmExames.qyModLaudoHistAfterDelete(DataSet: TDataSet);
begin
  qyModLaudoHist.ApplyUpdates;
  database.Commit;
  qyModLaudoHist.CommitUpdates;
end;

procedure TdmExames.qyModLaudoHistAfterPost(DataSet: TDataSet);
begin
  qyModLaudoHist.ApplyUpdates;
  database.Commit;
  qyModLaudoHist.CommitUpdates;
end;

procedure TdmExames.qyModLaudoHistBeforeDelete(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmExames.qyModLaudoHistBeforePost(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmExames.qyModLaudoHistPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  database.Rollback;
end;

procedure TdmExames.qyModLaudoHistUpdateError(DataSet: TDataSet;
  E: EDatabaseError; UpdateKind: TUpdateKind;
  var UpdateAction: TUpdateAction);
begin
  database.Rollback;
  qyModLaudoHist.RollbackUpdates;
end;

procedure TdmExames.qyModLaudoHistAfterInsert(DataSet: TDataSet);
begin
  //
end;


end.
