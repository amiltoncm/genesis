unit dataCadastros;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dataTmpConexao, DB, SDEngine;

type
  TdmCadastros = class(TdmTmpConexao)
    SessaoCadastros: TSDSession;
    qyUsuarios: TSDQuery;
    qyUsuariosusu_codigo: TIntegerField;
    qyUsuariosusu_nome: TStringField;
    qyUsuariosusu_senha: TStringField;
    qyUsuariosace_codigo: TIntegerField;
    qyUsuariosace_descricao: TStringField;
    qyUsuariosusu_ativo: TStringField;
    qyUsuariosusu_nomecomp: TStringField;
    qyUsuariosusu_exppdf: TStringField;
    updUsuarios: TSDUpdateSQL;
    qyPacientes: TSDQuery;
    qyPacientespac_codigo: TIntegerField;
    qyPacientespac_nome: TStringField;
    qyPacientespac_dtnasc: TDateField;
    qyPacientespac_cpf: TStringField;
    qyPacientespac_rg: TStringField;
    qyPacientespac_logradouro: TStringField;
    qyPacientespac_numero: TIntegerField;
    qyPacientespac_bairro: TStringField;
    qyPacientescid_codigo: TIntegerField;
    qyPacientescid_cidade: TStringField;
    qyPacientesuf_sigla: TStringField;
    qyPacientespac_fone: TStringField;
    qyPacientespac_celular: TStringField;
    qyPacientespac_cep: TStringField;
    qyPacientespac_email: TStringField;
    qyPacientespac_sexo: TStringField;
    qyPacientespac_obs: TBlobField;
    updPacientes: TSDUpdateSQL;
    qyConvenios: TSDQuery;
    updConvenios: TSDUpdateSQL;
    qyConvenioscov_codigo: TIntegerField;
    qyConvenioscov_descricao: TStringField;
    qyConvenioscov_cnpj: TStringField;
    qyConvenioscov_ie: TStringField;
    qyConveniostpl_id: TIntegerField;
    qyConveniostpl_tipo: TStringField;
    qyConvenioscov_logradouro: TStringField;
    qyConvenioscov_numero: TIntegerField;
    qyConvenioscov_bairro: TStringField;
    qyConvenioscid_codigo: TIntegerField;
    qyConvenioscid_cidade: TStringField;
    qyConveniosuf_sigla: TStringField;
    qyConvenioscov_fone: TStringField;
    qyConvenioscov_fax: TStringField;
    qyConvenioscov_celular: TStringField;
    qyConvenioscov_email: TStringField;
    qyConvenioscov_cep: TStringField;
    qyConvenioscov_regans: TStringField;
    qyConvenioscov_veriftiss: TStringField;
    qyConvenioscov_codoperadora: TStringField;
    qyMedicos: TSDQuery;
    updMedicos: TSDUpdateSQL;
    qyMedicosmed_codigo: TIntegerField;
    qyMedicosmed_nome: TStringField;
    qyMedicosmed_fone: TStringField;
    qyMedicoscos_id: TIntegerField;
    qyMedicoscos_tipo: TStringField;
    qyMedicosmed_numconselho: TStringField;
    qyMedicosmed_titulo: TStringField;
    qyMedicosmed_cpf: TStringField;
    qyMedicosmed_rg: TStringField;
    qyMedicostpl_id: TIntegerField;
    qyMedicostpl_tipo: TStringField;
    qyMedicosmed_logradouro: TStringField;
    qyMedicosmed_numero: TIntegerField;
    qyMedicosmed_bairro: TStringField;
    qyMedicoscid_codigo: TIntegerField;
    qyMedicoscid_cidade: TStringField;
    qyMedicosuf_sigla: TStringField;
    qyMedicosmed_celular: TStringField;
    qyMedicosmed_cep: TStringField;
    qyMedicosmed_email: TStringField;
    qyMedicoscos_uf: TStringField;
    qyMedicoscbo_codigo: TIntegerField;
    qyMedicoscbo_descricao: TStringField;
    qyProcedimentos: TSDQuery;
    qyProcedimentosprc_tuss: TIntegerField;
    qyProcedimentosprc_descricao: TStringField;
    qyProcedimentosprc_amr: TIntegerField;
    qyProcedimentosprc_descant: TStringField;
    qyProcedimentosprc_vlrhora: TFloatField;
    qyProcedimentosprc_vlroper: TFloatField;
    qyProcedimentosprc_vlrfilme: TFloatField;
    qyProcedimentosprc_vlrtotal: TFloatField;
    updProcedimentos: TSDUpdateSQL;
    qyLaudosPadrao: TSDQuery;
    updLaudosPadrao: TSDUpdateSQL;
    qyLaudosPadraolpa_id: TIntegerField;
    qyLaudosPadraolmm_id: TIntegerField;
    qyLaudosPadraomat_id: TIntegerField;
    qyLaudosPadraolmm_descricao: TStringField;
    qyLaudosModMacro: TSDQuery;
    qyLaudosModMacrolmm_id: TIntegerField;
    qyLaudosModMacrolmm_descricao: TStringField;
    qyLaudosModMacrolmm_modelo: TBlobField;
    updLaudosModMacro: TSDUpdateSQL;
    qyExamesTp: TSDQuery;
    qyExamesTpetp_id: TIntegerField;
    qyExamesTpetp_tipo: TStringField;
    qyExamesTpetp_abrev: TStringField;
    updExamesTp: TSDUpdateSQL;
    qyPacientestpl_id: TIntegerField;
    qyPacientestpl_tipo: TStringField;
    qyResponsaveis: TSDQuery;
    updResponsaveis: TSDUpdateSQL;
    qyResponsaveisres_codigo: TIntegerField;
    qyResponsaveisres_titulo: TStringField;
    qyResponsaveisres_nome: TStringField;
    qyResponsaveiscos_id: TIntegerField;
    qyResponsaveiscos_tipo: TStringField;
    qyResponsaveisres_numconselho: TStringField;
    qyResponsaveiscos_uf: TStringField;
    qyResponsaveisres_iniciais: TStringField;
    qyUsuariosMail: TSDQuery;
    updUsuariosMail: TSDUpdateSQL;
    qyUsuariosMailusu_codigo: TIntegerField;
    qyUsuariosMailmai_host: TStringField;
    qyUsuariosMailmai_username: TStringField;
    qyUsuariosMailmai_password: TStringField;
    qyUsuariosMailmai_namefrom: TStringField;
    qyUsuariosMailmai_adressfrom: TStringField;
    qyUsuariosMailmai_door: TIntegerField;
    qyResponsaveiscbo_codigo: TIntegerField;
    qyResponsaveiscbo_descricao: TStringField;
    qyResponsaveisprt_codigo: TIntegerField;
    qyResponsaveisprt_termo: TStringField;
    qyResponsaveisres_cpf: TStringField;
    qyModLaudoMacro: TSDQuery;
    qyModLaudoMacrolmm_id: TIntegerField;
    qyModLaudoMacrolmm_descricao: TStringField;
    qyModLaudoMacrolmm_modelo: TBlobField;
    updModLaudoMacro: TSDUpdateSQL;
    qyAcesso: TSDQuery;
    updAcesso: TSDUpdateSQL;
    qyAcessoace_codigo: TIntegerField;
    qyAcessoace_descricao: TStringField;
    qyBancos: TSDQuery;
    updBancos: TSDUpdateSQL;
    qyBancosban_codigo: TIntegerField;
    qyBancosban_descricao: TStringField;
    qyAgenda: TSDQuery;
    updAgenda: TSDUpdateSQL;
    qyAgendaage_codigo: TIntegerField;
    qyAgendaage_nome: TStringField;
    qyAgendaage_telefone: TStringField;
    qyAgendaage_fax: TStringField;
    qyAgendaage_celular: TStringField;
    qyAgendaage_email: TStringField;
    qyAgendaage_homepage: TStringField;
    qyAgendaage_msn: TStringField;
    qyAgendaage_skype: TStringField;
    qyUf: TSDQuery;
    qyUfuf_sigla: TStringField;
    qyUfuf_estado: TStringField;
    qyUfuf_codigo: TIntegerField;
    updUf: TSDUpdateSQL;
    qyFuncoes: TSDQuery;
    updFuncoes: TSDUpdateSQL;
    qyFuncoesfnc_id: TIntegerField;
    qyFuncoesfnc_descricao: TStringField;
    qyMateriais: TSDQuery;
    updMateriais: TSDUpdateSQL;
    qyMateriaismat_id: TIntegerField;
    qyMateriaismat_descricao: TStringField;
    qyTopografias: TSDQuery;
    updTopografia: TSDUpdateSQL;
    qyTopografiastop_id: TIntegerField;
    qyTopografiastop_descricao: TStringField;
    qyExamesLocais: TSDQuery;
    updExamesLocais: TSDUpdateSQL;
    qyExamesLocaisexl_id: TIntegerField;
    qyExamesLocaisexl_descricao: TStringField;
    qyMovimentos: TSDQuery;
    updMovimentos: TSDUpdateSQL;
    qyMovimentosmov_codigo: TIntegerField;
    qyMovimentosmov_descricao: TStringField;
    qyMovimentosmov_tipo: TStringField;
    qyLaudosModHist: TSDQuery;
    updLaudosModHist: TSDUpdateSQL;
    qyExamesTipoCito: TSDQuery;
    updExamesTipoCito: TSDUpdateSQL;
    qyExamesTipoCitoeto_id: TIntegerField;
    qyExamesTipoCitoeto_local: TStringField;
    qyExamesTipoCitoeto_descricao: TStringField;
    qyLaudosModHistlmh_id: TIntegerField;
    qyLaudosModHistlmh_descricao: TStringField;
    qyLaudosModHistlmh_microscopia: TBlobField;
    qyLaudosModHistlmh_diagnostico: TBlobField;
    qyExamesTipo: TSDQuery;
    qyExamesTipoeio_id: TIntegerField;
    qyExamesTipoeio_descricao: TStringField;
    updExamesTipo: TSDUpdateSQL;
    qyLaudosMod: TSDQuery;
    updLaudosMod: TSDUpdateSQL;
    qyLaudosModmod_id: TIntegerField;
    qyLaudosModmod_descricao: TStringField;
    qyLaudosModmod_modelo: TBlobField;
    qyCidades: TSDQuery;
    qyCidadescid_codigo: TIntegerField;
    qyCidadescid_cidade: TStringField;
    qyCidadesuf_sigla: TStringField;
    qyCidadesuf_estado: TStringField;
    qyCidadescid_ceppadrao: TStringField;
    updCidades: TSDUpdateSQL;
    qyContas: TSDQuery;
    updContas: TSDUpdateSQL;
    qyContascon_codigo: TIntegerField;
    qyContascon_descricao: TStringField;
    qyContascon_obs: TStringField;
    qyContascon_ativa: TStringField;
    qyContasban_codigo: TIntegerField;
    qyContasban_descricao: TStringField;
    qyExamesTipoHist: TSDQuery;
    updExamesTipoHist: TSDUpdateSQL;
    qyExamesTipoHisteth_id: TIntegerField;
    qyExamesTipoHisteth_descricao: TStringField;
    qyExamesTipoHisteio_id: TIntegerField;
    qyExamesTipoHisteio_descricao: TStringField;
    qyFornecedores: TSDQuery;
    qyFuncionarios: TSDQuery;
    updFornecedores: TSDUpdateSQL;
    updFuncionarios: TSDUpdateSQL;
    qyFornecedoresfor_codigo: TIntegerField;
    qyFornecedoresfor_razao: TStringField;
    qyFornecedoresfor_fantasia: TStringField;
    qyFornecedoresfor_cnpj: TStringField;
    qyFornecedoresfor_ie: TStringField;
    qyFornecedorestpl_id: TIntegerField;
    qyFornecedorestpl_tipo: TStringField;
    qyFornecedoresfor_logradouro: TStringField;
    qyFornecedoresfor_numero: TIntegerField;
    qyFornecedoresfor_complemento: TStringField;
    qyFornecedoresfor_bairro: TStringField;
    qyFornecedorescid_codigo: TIntegerField;
    qyFornecedorescid_cidade: TStringField;
    qyFornecedoresuf_sigla: TStringField;
    qyFornecedoresfor_cep: TStringField;
    qyFornecedoresfor_fone: TStringField;
    qyFornecedoresfor_fax: TStringField;
    qyFornecedoresfor_celular: TStringField;
    qyFornecedoresfor_email: TStringField;
    qyFornecedoresfor_homepage: TStringField;
    qyFornecedoresfor_dtcadastro: TDateField;
    qyFornecedoresfor_tipo: TStringField;
    qyFuncionariosfun_codigo: TIntegerField;
    qyFuncionariosfun_nome: TStringField;
    qyFuncionariosfnc_id: TIntegerField;
    qyFuncionariosfnc_descricao: TStringField;
    qyFuncionariosfun_cpf: TStringField;
    qyFuncionariosfun_rg: TStringField;
    qyFuncionariosfun_carttrab: TStringField;
    qyFuncionariosfun_dataadmis: TDateField;
    qyFuncionariosfun_salario: TFloatField;
    qyFuncionariosfun_endereco: TStringField;
    qyFuncionariosfun_bairro: TStringField;
    qyFuncionarioscid_codigo: TIntegerField;
    qyFuncionarioscid_cidade: TStringField;
    qyFuncionariosuf_sigla: TStringField;
    qyFuncionariosfun_cep: TStringField;
    qyFuncionariosfun_telefone: TStringField;
    qyFuncionariosfun_celular: TStringField;
    qyFuncionariosfun_email: TStringField;
    qyFuncionariosfun_datanasc: TDateField;
    qyFuncionariosfun_ativo: TBooleanField;
    qyUsuariosusu_altdata: TStringField;
    qyLaudosModmod_diagnostico: TBlobField;
    qyMatCid: TSDQuery;
    updMatCid: TSDUpdateSQL;
    qyMatCidmat_id: TIntegerField;
    qyMatCidsct_subcat: TStringField;
    qyMatCidsct_descabrev: TStringField;
    qyMatCidsct_descricao: TStringField;
    qyLaudosPreMod: TSDQuery;
    updLaudosPreMod: TSDUpdateSQL;
    qyLaudosPreModlpm_codigo: TIntegerField;
    qyLaudosPreModlpm_descricao: TStringField;
    qyLaudosPreModlpm_modelo: TBlobField;
    qyLaudosPreModlpm_diagnostico: TBlobField;
    qyCitofrases: TSDQuery;
    updCitoFrases: TSDUpdateSQL;
    qyCitofrasesctf_id: TIntegerField;
    qyCitofrasesctf_frase: TStringField;
    qyResponsaveisres_rqe: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure qyUsuariosAfterDelete(DataSet: TDataSet);
    procedure qyUsuariosAfterPost(DataSet: TDataSet);
    procedure qyUsuariosBeforeDelete(DataSet: TDataSet);
    procedure qyUsuariosBeforePost(DataSet: TDataSet);
    procedure qyUsuariosPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qyUsuariosUpdateError(DataSet: TDataSet; E: EDatabaseError;
      UpdateKind: TUpdateKind; var UpdateAction: TUpdateAction);
    procedure qyUsuariosAfterInsert(DataSet: TDataSet);
    procedure qyPacientesAfterDelete(DataSet: TDataSet);
    procedure qyPacientesAfterPost(DataSet: TDataSet);
    procedure qyPacientesBeforeDelete(DataSet: TDataSet);
    procedure qyPacientesBeforePost(DataSet: TDataSet);
    procedure qyPacientesPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qyPacientesUpdateError(DataSet: TDataSet; E: EDatabaseError;
      UpdateKind: TUpdateKind; var UpdateAction: TUpdateAction);
    procedure qyPacientesAfterInsert(DataSet: TDataSet);
    procedure qyConveniosAfterDelete(DataSet: TDataSet);
    procedure qyConveniosAfterPost(DataSet: TDataSet);
    procedure qyConveniosBeforeDelete(DataSet: TDataSet);
    procedure qyConveniosBeforePost(DataSet: TDataSet);
    procedure qyConveniosPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qyConveniosUpdateError(DataSet: TDataSet; E: EDatabaseError;
      UpdateKind: TUpdateKind; var UpdateAction: TUpdateAction);
    procedure qyConveniosAfterInsert(DataSet: TDataSet);
    procedure qyMedicosAfterDelete(DataSet: TDataSet);
    procedure qyMedicosAfterPost(DataSet: TDataSet);
    procedure qyMedicosBeforeDelete(DataSet: TDataSet);
    procedure qyMedicosBeforePost(DataSet: TDataSet);
    procedure qyMedicosPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qyMedicosUpdateError(DataSet: TDataSet; E: EDatabaseError;
      UpdateKind: TUpdateKind; var UpdateAction: TUpdateAction);
    procedure qyMedicosAfterInsert(DataSet: TDataSet);
    procedure qyProcedimentosAfterDelete(DataSet: TDataSet);
    procedure qyProcedimentosAfterPost(DataSet: TDataSet);
    procedure qyProcedimentosBeforeDelete(DataSet: TDataSet);
    procedure qyProcedimentosBeforePost(DataSet: TDataSet);
    procedure qyProcedimentosPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qyProcedimentosUpdateError(DataSet: TDataSet; E: EDatabaseError;
      UpdateKind: TUpdateKind; var UpdateAction: TUpdateAction);
    procedure qyProcedimentosAfterInsert(DataSet: TDataSet);
    procedure qyLaudosPadraoAfterDelete(DataSet: TDataSet);
    procedure qyLaudosPadraoAfterPost(DataSet: TDataSet);
    procedure qyLaudosPadraoBeforeDelete(DataSet: TDataSet);
    procedure qyLaudosPadraoBeforePost(DataSet: TDataSet);
    procedure qyLaudosPadraoPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qyLaudosPadraoUpdateError(DataSet: TDataSet; E: EDatabaseError;
      UpdateKind: TUpdateKind; var UpdateAction: TUpdateAction);
    procedure qyLaudosPadraoAfterInsert(DataSet: TDataSet);
    procedure qyLaudosModMacroAfterDelete(DataSet: TDataSet);
    procedure qyLaudosModMacroAfterPost(DataSet: TDataSet);
    procedure qyLaudosModMacroBeforeDelete(DataSet: TDataSet);
    procedure qyLaudosModMacroBeforePost(DataSet: TDataSet);
    procedure qyLaudosModMacroPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qyLaudosModMacroUpdateError(DataSet: TDataSet; E: EDatabaseError;
      UpdateKind: TUpdateKind; var UpdateAction: TUpdateAction);
    procedure qyLaudosModMacroAfterInsert(DataSet: TDataSet);
    procedure qyExamesTpAfterDelete(DataSet: TDataSet);
    procedure qyExamesTpAfterPost(DataSet: TDataSet);
    procedure qyExamesTpBeforeDelete(DataSet: TDataSet);
    procedure qyExamesTpBeforePost(DataSet: TDataSet);
    procedure qyExamesTpPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qyExamesTpUpdateError(DataSet: TDataSet; E: EDatabaseError;
      UpdateKind: TUpdateKind; var UpdateAction: TUpdateAction);
    procedure qyExamesTpAfterInsert(DataSet: TDataSet);
    procedure qyResponsaveisAfterDelete(DataSet: TDataSet);
    procedure qyResponsaveisAfterPost(DataSet: TDataSet);
    procedure qyResponsaveisBeforeDelete(DataSet: TDataSet);
    procedure qyResponsaveisBeforePost(DataSet: TDataSet);
    procedure qyResponsaveisPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qyResponsaveisUpdateError(DataSet: TDataSet; E: EDatabaseError;
      UpdateKind: TUpdateKind; var UpdateAction: TUpdateAction);
    procedure qyResponsaveisAfterInsert(DataSet: TDataSet);
    procedure qyUsuariosMailAfterDelete(DataSet: TDataSet);
    procedure qyUsuariosMailAfterPost(DataSet: TDataSet);
    procedure qyUsuariosMailBeforeDelete(DataSet: TDataSet);
    procedure qyUsuariosMailBeforePost(DataSet: TDataSet);
    procedure qyUsuariosMailPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qyUsuariosMailUpdateError(DataSet: TDataSet; E: EDatabaseError;
      UpdateKind: TUpdateKind; var UpdateAction: TUpdateAction);
    procedure qyUsuariosMailAfterInsert(DataSet: TDataSet);
    procedure qyModLaudoMacroAfterDelete(DataSet: TDataSet);
    procedure qyModLaudoMacroAfterPost(DataSet: TDataSet);
    procedure qyModLaudoMacroBeforeDelete(DataSet: TDataSet);
    procedure qyModLaudoMacroBeforePost(DataSet: TDataSet);
    procedure qyModLaudoMacroPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qyModLaudoMacroUpdateError(DataSet: TDataSet; E: EDatabaseError;
      UpdateKind: TUpdateKind; var UpdateAction: TUpdateAction);
    procedure qyModLaudoMacroAfterInsert(DataSet: TDataSet);
    procedure qyAcessoAfterDelete(DataSet: TDataSet);
    procedure qyAcessoAfterPost(DataSet: TDataSet);
    procedure qyAcessoBeforeDelete(DataSet: TDataSet);
    procedure qyAcessoBeforePost(DataSet: TDataSet);
    procedure qyAcessoPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qyAcessoUpdateError(DataSet: TDataSet; E: EDatabaseError;
      UpdateKind: TUpdateKind; var UpdateAction: TUpdateAction);
    procedure qyAcessoAfterInsert(DataSet: TDataSet);
    procedure qyBancosAfterDelete(DataSet: TDataSet);
    procedure qyBancosAfterPost(DataSet: TDataSet);
    procedure qyBancosBeforeDelete(DataSet: TDataSet);
    procedure qyBancosBeforePost(DataSet: TDataSet);
    procedure qyBancosPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qyBancosUpdateError(DataSet: TDataSet; E: EDatabaseError;
      UpdateKind: TUpdateKind; var UpdateAction: TUpdateAction);
    procedure qyBancosAfterInsert(DataSet: TDataSet);
    procedure qyAgendaAfterDelete(DataSet: TDataSet);
    procedure qyAgendaAfterPost(DataSet: TDataSet);
    procedure qyAgendaBeforeDelete(DataSet: TDataSet);
    procedure qyAgendaBeforePost(DataSet: TDataSet);
    procedure qyAgendaPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qyAgendaUpdateError(DataSet: TDataSet; E: EDatabaseError;
      UpdateKind: TUpdateKind; var UpdateAction: TUpdateAction);
    procedure qyAgendaAfterInsert(DataSet: TDataSet);
    procedure qyUfAfterDelete(DataSet: TDataSet);
    procedure qyUfAfterPost(DataSet: TDataSet);
    procedure qyUfBeforeDelete(DataSet: TDataSet);
    procedure qyUfBeforePost(DataSet: TDataSet);
    procedure qyUfPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qyUfUpdateError(DataSet: TDataSet; E: EDatabaseError;
      UpdateKind: TUpdateKind; var UpdateAction: TUpdateAction);
    procedure qyUfAfterInsert(DataSet: TDataSet);
    procedure qyFuncoesAfterDelete(DataSet: TDataSet);
    procedure qyFuncoesAfterPost(DataSet: TDataSet);
    procedure qyFuncoesBeforeDelete(DataSet: TDataSet);
    procedure qyFuncoesBeforePost(DataSet: TDataSet);
    procedure qyFuncoesPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qyFuncoesUpdateError(DataSet: TDataSet; E: EDatabaseError;
      UpdateKind: TUpdateKind; var UpdateAction: TUpdateAction);
    procedure qyFuncoesAfterInsert(DataSet: TDataSet);
    procedure qyTopografiasAfterDelete(DataSet: TDataSet);
    procedure qyTopografiasAfterPost(DataSet: TDataSet);
    procedure qyTopografiasBeforeDelete(DataSet: TDataSet);
    procedure qyTopografiasBeforePost(DataSet: TDataSet);
    procedure qyTopografiasPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qyTopografiasUpdateError(DataSet: TDataSet; E: EDatabaseError;
      UpdateKind: TUpdateKind; var UpdateAction: TUpdateAction);
    procedure qyTopografiasAfterInsert(DataSet: TDataSet);
    procedure qyExamesLocaisAfterDelete(DataSet: TDataSet);
    procedure qyExamesLocaisAfterPost(DataSet: TDataSet);
    procedure qyExamesLocaisBeforeDelete(DataSet: TDataSet);
    procedure qyExamesLocaisBeforePost(DataSet: TDataSet);
    procedure qyExamesLocaisPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qyExamesLocaisUpdateError(DataSet: TDataSet; E: EDatabaseError;
      UpdateKind: TUpdateKind; var UpdateAction: TUpdateAction);
    procedure qyExamesLocaisAfterInsert(DataSet: TDataSet);
    procedure qyMovimentosAfterDelete(DataSet: TDataSet);
    procedure qyMovimentosAfterPost(DataSet: TDataSet);
    procedure qyMovimentosBeforeDelete(DataSet: TDataSet);
    procedure qyMovimentosBeforePost(DataSet: TDataSet);
    procedure qyMovimentosPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qyMovimentosUpdateError(DataSet: TDataSet; E: EDatabaseError;
      UpdateKind: TUpdateKind; var UpdateAction: TUpdateAction);
    procedure qyMovimentosAfterInsert(DataSet: TDataSet);
    procedure qyLaudosModHistAfterDelete(DataSet: TDataSet);
    procedure qyLaudosModHistAfterPost(DataSet: TDataSet);
    procedure qyLaudosModHistBeforeDelete(DataSet: TDataSet);
    procedure qyLaudosModHistBeforePost(DataSet: TDataSet);
    procedure qyLaudosModHistPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qyLaudosModHistUpdateError(DataSet: TDataSet; E: EDatabaseError;
      UpdateKind: TUpdateKind; var UpdateAction: TUpdateAction);
    procedure qyLaudosModHistAfterInsert(DataSet: TDataSet);
    procedure qyExamesTipoCitoAfterDelete(DataSet: TDataSet);
    procedure qyExamesTipoCitoAfterPost(DataSet: TDataSet);
    procedure qyExamesTipoCitoBeforeDelete(DataSet: TDataSet);
    procedure qyExamesTipoCitoBeforePost(DataSet: TDataSet);
    procedure qyExamesTipoCitoPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qyExamesTipoCitoUpdateError(DataSet: TDataSet; E: EDatabaseError;
      UpdateKind: TUpdateKind; var UpdateAction: TUpdateAction);
    procedure qyExamesTipoCitoAfterInsert(DataSet: TDataSet);
    procedure qyLaudosModAfterDelete(DataSet: TDataSet);
    procedure qyLaudosModAfterPost(DataSet: TDataSet);
    procedure qyLaudosModBeforeDelete(DataSet: TDataSet);
    procedure qyLaudosModBeforePost(DataSet: TDataSet);
    procedure qyLaudosModAfterInsert(DataSet: TDataSet);
    procedure qyLaudosModPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qyLaudosModUpdateError(DataSet: TDataSet; E: EDatabaseError;
      UpdateKind: TUpdateKind; var UpdateAction: TUpdateAction);
    procedure qyCidadesAfterDelete(DataSet: TDataSet);
    procedure qyCidadesAfterPost(DataSet: TDataSet);
    procedure qyCidadesBeforeDelete(DataSet: TDataSet);
    procedure qyCidadesBeforePost(DataSet: TDataSet);
    procedure qyCidadesPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qyCidadesUpdateError(DataSet: TDataSet; E: EDatabaseError;
      UpdateKind: TUpdateKind; var UpdateAction: TUpdateAction);
    procedure qyContasAfterDelete(DataSet: TDataSet);
    procedure qyContasAfterPost(DataSet: TDataSet);
    procedure qyContasBeforeDelete(DataSet: TDataSet);
    procedure qyContasBeforePost(DataSet: TDataSet);
    procedure qyContasPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qyContasUpdateError(DataSet: TDataSet; E: EDatabaseError;
      UpdateKind: TUpdateKind; var UpdateAction: TUpdateAction);
    procedure qyContasAfterInsert(DataSet: TDataSet);
    procedure qyExamesTipoHistAfterDelete(DataSet: TDataSet);
    procedure qyExamesTipoHistAfterPost(DataSet: TDataSet);
    procedure qyExamesTipoHistBeforeDelete(DataSet: TDataSet);
    procedure qyExamesTipoHistBeforePost(DataSet: TDataSet);
    procedure qyExamesTipoHistPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qyExamesTipoHistUpdateError(DataSet: TDataSet; E: EDatabaseError;
      UpdateKind: TUpdateKind; var UpdateAction: TUpdateAction);
    procedure qyExamesTipoHistAfterInsert(DataSet: TDataSet);
    procedure qyFornecedoresAfterDelete(DataSet: TDataSet);
    procedure qyFornecedoresAfterPost(DataSet: TDataSet);
    procedure qyFornecedoresBeforeDelete(DataSet: TDataSet);
    procedure qyFornecedoresBeforePost(DataSet: TDataSet);
    procedure qyFornecedoresPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qyFornecedoresUpdateError(DataSet: TDataSet; E: EDatabaseError;
      UpdateKind: TUpdateKind; var UpdateAction: TUpdateAction);
    procedure qyFornecedoresAfterInsert(DataSet: TDataSet);
    procedure qyFuncionariosAfterDelete(DataSet: TDataSet);
    procedure qyFuncionariosAfterPost(DataSet: TDataSet);
    procedure qyFuncionariosBeforeDelete(DataSet: TDataSet);
    procedure qyFuncionariosBeforePost(DataSet: TDataSet);
    procedure qyFuncionariosPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qyFuncionariosUpdateError(DataSet: TDataSet; E: EDatabaseError;
      UpdateKind: TUpdateKind; var UpdateAction: TUpdateAction);
    procedure qyFuncionariosAfterInsert(DataSet: TDataSet);
    procedure qyMateriaisAfterDelete(DataSet: TDataSet);
    procedure qyMateriaisAfterPost(DataSet: TDataSet);
    procedure qyMateriaisBeforeDelete(DataSet: TDataSet);
    procedure qyMateriaisBeforePost(DataSet: TDataSet);
    procedure qyMateriaisPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qyMateriaisUpdateError(DataSet: TDataSet; E: EDatabaseError;
      UpdateKind: TUpdateKind; var UpdateAction: TUpdateAction);
    procedure qyMatCidAfterDelete(DataSet: TDataSet);
    procedure qyMatCidAfterPost(DataSet: TDataSet);
    procedure qyMatCidBeforeDelete(DataSet: TDataSet);
    procedure qyMatCidBeforePost(DataSet: TDataSet);
    procedure qyMatCidPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qyMatCidUpdateError(DataSet: TDataSet; E: EDatabaseError;
      UpdateKind: TUpdateKind; var UpdateAction: TUpdateAction);
    procedure qyLaudosPreModAfterDelete(DataSet: TDataSet);
    procedure qyLaudosPreModAfterPost(DataSet: TDataSet);
    procedure qyLaudosPreModBeforeDelete(DataSet: TDataSet);
    procedure qyLaudosPreModBeforePost(DataSet: TDataSet);
    procedure qyLaudosPreModPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qyLaudosPreModUpdateError(DataSet: TDataSet; E: EDatabaseError;
      UpdateKind: TUpdateKind; var UpdateAction: TUpdateAction);
    procedure qyCitofrasesAfterDelete(DataSet: TDataSet);
    procedure qyCitofrasesAfterPost(DataSet: TDataSet);
    procedure qyCitofrasesBeforeDelete(DataSet: TDataSet);
    procedure qyCitofrasesBeforePost(DataSet: TDataSet);
    procedure qyCitofrasesPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qyCitofrasesUpdateError(DataSet: TDataSet; E: EDatabaseError;
      UpdateKind: TUpdateKind; var UpdateAction: TUpdateAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmCadastros: TdmCadastros;

implementation

uses uDaoUsuarios, uDaoConvenios, uDaoPacientes, uDaoMedicos, uDaoLaudosPadrao,
  uDaoExamesTp, uDaoLaudosModMacro, uDaoProcedimentos, uDaoResponsaveis,
  uDaoUsuariosMail;

{$R *.dfm}

procedure TdmCadastros.DataModuleCreate(Sender: TObject);
begin
  inherited;
end;

{--- qyAcesso -----------------------------------------------------------------}

procedure TdmCadastros.qyAcessoAfterDelete(DataSet: TDataSet);
begin
  qyAcesso.ApplyUpdates;
  database.Commit;
  qyAcesso.CommitUpdates;
end;

procedure TdmCadastros.qyAcessoAfterPost(DataSet: TDataSet);
begin
  qyAcesso.ApplyUpdates;
  database.Commit;
  qyAcesso.CommitUpdates;
end;

procedure TdmCadastros.qyAcessoBeforeDelete(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmCadastros.qyAcessoBeforePost(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmCadastros.qyAcessoPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  database.Rollback;
end;

procedure TdmCadastros.qyAcessoUpdateError(DataSet: TDataSet;
  E: EDatabaseError; UpdateKind: TUpdateKind;
  var UpdateAction: TUpdateAction);
begin
  database.Rollback;
  qyAcesso.RollbackUpdates;
end;

procedure TdmCadastros.qyAcessoAfterInsert(DataSet: TDataSet);
begin
  //
end;

{--- qyAgenda -----------------------------------------------------------------}

procedure TdmCadastros.qyAgendaAfterDelete(DataSet: TDataSet);
begin
  qyAgenda.ApplyUpdates;
  database.Commit;
  qyAgenda.CommitUpdates;
end;

procedure TdmCadastros.qyAgendaAfterPost(DataSet: TDataSet);
begin
  qyAgenda.ApplyUpdates;
  database.Commit;
  qyAgenda.CommitUpdates;
end;

procedure TdmCadastros.qyAgendaBeforeDelete(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmCadastros.qyAgendaBeforePost(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmCadastros.qyAgendaPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  database.Rollback;
end;

procedure TdmCadastros.qyAgendaUpdateError(DataSet: TDataSet;
  E: EDatabaseError; UpdateKind: TUpdateKind;
  var UpdateAction: TUpdateAction);
begin
  database.Rollback;
  qyAgenda.RollbackUpdates;
end;

procedure TdmCadastros.qyAgendaAfterInsert(DataSet: TDataSet);
begin
  //
end;

{--- qyBancos -----------------------------------------------------------------}

procedure TdmCadastros.qyBancosAfterDelete(DataSet: TDataSet);
begin
  qyBancos.ApplyUpdates;
  database.Commit;
  qyBancos.CommitUpdates;
end;

procedure TdmCadastros.qyBancosAfterPost(DataSet: TDataSet);
begin
  qyBancos.ApplyUpdates;
  database.Commit;
  qyBancos.CommitUpdates;
end;

procedure TdmCadastros.qyBancosBeforeDelete(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmCadastros.qyBancosBeforePost(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmCadastros.qyBancosPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  database.Rollback;
end;

procedure TdmCadastros.qyBancosUpdateError(DataSet: TDataSet;
  E: EDatabaseError; UpdateKind: TUpdateKind;
  var UpdateAction: TUpdateAction);
begin
  database.Rollback;
  qyBancos.RollbackUpdates;
end;

procedure TdmCadastros.qyBancosAfterInsert(DataSet: TDataSet);
begin
  //
end;

{--- qyCidades ----------------------------------------------------------------}

procedure TdmCadastros.qyCidadesAfterDelete(DataSet: TDataSet);
begin
  qyCidades.ApplyUpdates;
  database.Commit;
  qyCidades.CommitUpdates;
end;

procedure TdmCadastros.qyCidadesAfterPost(DataSet: TDataSet);
begin
  qyCidades.ApplyUpdates;
  database.Commit;
  qyCidades.CommitUpdates;
end;

procedure TdmCadastros.qyCidadesBeforeDelete(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmCadastros.qyCidadesBeforePost(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmCadastros.qyCidadesPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  database.Rollback;
end;

procedure TdmCadastros.qyCidadesUpdateError(DataSet: TDataSet;
  E: EDatabaseError; UpdateKind: TUpdateKind;
  var UpdateAction: TUpdateAction);
begin
  database.Rollback;
  qyCidades.RollbackUpdates;
end;

{--- qyCitofrases ---------------------------------------------------------------}

procedure TdmCadastros.qyCitofrasesAfterDelete(DataSet: TDataSet);
begin
  qyCitofrases.ApplyUpdates;
  database.Commit;
  qyCitofrases.CommitUpdates;
end;

procedure TdmCadastros.qyCitofrasesAfterPost(DataSet: TDataSet);
begin
  qyCitofrases.ApplyUpdates;
  database.Commit;
  qyCitofrases.CommitUpdates;
end;

procedure TdmCadastros.qyCitofrasesBeforeDelete(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmCadastros.qyCitofrasesBeforePost(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmCadastros.qyCitofrasesPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  database.Rollback;
end;

procedure TdmCadastros.qyCitofrasesUpdateError(DataSet: TDataSet; E: EDatabaseError;
  UpdateKind: TUpdateKind; var UpdateAction: TUpdateAction);
begin
  database.Rollback;
  qyCitofrases.RollbackUpdates;
end;

{--- qyContas -----------------------------------------------------------------}

procedure TdmCadastros.qyContasAfterDelete(DataSet: TDataSet);
begin
  qyContas.ApplyUpdates;
  database.Commit;
  qyContas.CommitUpdates;
end;

procedure TdmCadastros.qyContasAfterPost(DataSet: TDataSet);
begin
  qyContas.ApplyUpdates;
  database.Commit;
  qyContas.CommitUpdates;
end;

procedure TdmCadastros.qyContasBeforeDelete(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmCadastros.qyContasBeforePost(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmCadastros.qyContasPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  database.Rollback;
end;

procedure TdmCadastros.qyContasUpdateError(DataSet: TDataSet;
  E: EDatabaseError; UpdateKind: TUpdateKind;
  var UpdateAction: TUpdateAction);
begin
  database.Rollback;
  qyContas.RollbackUpdates;
end;

procedure TdmCadastros.qyContasAfterInsert(DataSet: TDataSet);
begin
  //
end;

{--- qyConvenios --------------------------------------------------------------}

procedure TdmCadastros.qyConveniosAfterDelete(DataSet: TDataSet);
begin
  qyConvenios.ApplyUpdates;
  database.Commit;
  qyConvenios.CommitUpdates;
end;

procedure TdmCadastros.qyConveniosAfterPost(DataSet: TDataSet);
begin
  qyConvenios.ApplyUpdates;
  database.Commit;
  qyConvenios.CommitUpdates;
end;

procedure TdmCadastros.qyConveniosBeforeDelete(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmCadastros.qyConveniosBeforePost(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmCadastros.qyConveniosPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  database.Rollback;
end;

procedure TdmCadastros.qyConveniosUpdateError(DataSet: TDataSet;
  E: EDatabaseError; UpdateKind: TUpdateKind;
  var UpdateAction: TUpdateAction);
begin
  database.Rollback;
  qyConvenios.RollbackUpdates;
end;

procedure TdmCadastros.qyConveniosAfterInsert(DataSet: TDataSet);
begin
  qyConveniostpl_id.Value := 0;
  qyConvenioscov_veriftiss.Text := 'N';
  qyConvenioscov_codoperadora.Value := '0';
  qyConvenioscid_codigo.Value := 4202404;
end;

{--- qyExamesTipoCito ---------------------------------------------------------}

procedure TdmCadastros.qyExamesTipoCitoAfterDelete(DataSet: TDataSet);
begin
  qyExamesTipoCito.ApplyUpdates;
  database.Commit;
  qyExamesTipoCito.CommitUpdates;
end;

procedure TdmCadastros.qyExamesTipoCitoAfterPost(DataSet: TDataSet);
begin
  qyExamesTipoCito.ApplyUpdates;
  database.Commit;
  qyExamesTipoCito.CommitUpdates;
end;

procedure TdmCadastros.qyExamesTipoCitoBeforeDelete(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmCadastros.qyExamesTipoCitoBeforePost(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmCadastros.qyExamesTipoCitoPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  database.Rollback;
end;

procedure TdmCadastros.qyExamesTipoCitoUpdateError(DataSet: TDataSet;
  E: EDatabaseError; UpdateKind: TUpdateKind;
  var UpdateAction: TUpdateAction);
begin
  database.Rollback;
  qyExamesTipoCito.RollbackUpdates;
end;

procedure TdmCadastros.qyExamesTipoCitoAfterInsert(DataSet: TDataSet);
begin
  //
end;

{--- qyExamesTipoHist ---------------------------------------------------------}

procedure TdmCadastros.qyExamesTipoHistAfterDelete(DataSet: TDataSet);
begin
  qyExamesTipoHist.ApplyUpdates;
  database.Commit;
  qyExamesTipoHist.CommitUpdates;
end;

procedure TdmCadastros.qyExamesTipoHistAfterPost(DataSet: TDataSet);
begin
  qyExamesTipoHist.ApplyUpdates;
  database.Commit;
  qyExamesTipoHist.CommitUpdates;
end;

procedure TdmCadastros.qyExamesTipoHistBeforeDelete(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmCadastros.qyExamesTipoHistBeforePost(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmCadastros.qyExamesTipoHistPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  database.Rollback;
end;

procedure TdmCadastros.qyExamesTipoHistUpdateError(DataSet: TDataSet;
  E: EDatabaseError; UpdateKind: TUpdateKind;
  var UpdateAction: TUpdateAction);
begin
  database.Rollback;
  qyExamesTipoHist.RollbackUpdates;
end;

procedure TdmCadastros.qyExamesTipoHistAfterInsert(DataSet: TDataSet);
begin
  //
end;

{--- qyExamesTp ---------------------------------------------------------------}

procedure TdmCadastros.qyExamesTpAfterDelete(DataSet: TDataSet);
begin
  qyExamesTp.ApplyUpdates;
  database.Commit;
  qyExamesTp.CommitUpdates;
end;

procedure TdmCadastros.qyExamesTpAfterPost(DataSet: TDataSet);
begin
  qyExamesTp.ApplyUpdates;
  database.Commit;
  qyExamesTp.CommitUpdates;
end;

procedure TdmCadastros.qyExamesTpBeforeDelete(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmCadastros.qyExamesTpBeforePost(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmCadastros.qyExamesTpPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  database.Rollback;
end;

procedure TdmCadastros.qyExamesTpUpdateError(DataSet: TDataSet;
  E: EDatabaseError; UpdateKind: TUpdateKind;
  var UpdateAction: TUpdateAction);
begin
  database.Rollback;
  qyExamesTp.RollbackUpdates;
end;

procedure TdmCadastros.qyExamesTpAfterInsert(DataSet: TDataSet);
begin
  //
end;

{--- qyExamesLocais -----------------------------------------------------------}

procedure TdmCadastros.qyExamesLocaisAfterDelete(DataSet: TDataSet);
begin
  qyExamesLocais.ApplyUpdates;
  database.Commit;
  qyExamesLocais.CommitUpdates;
end;

procedure TdmCadastros.qyExamesLocaisAfterPost(DataSet: TDataSet);
begin
  qyExamesLocais.ApplyUpdates;
  database.Commit;
  qyExamesLocais.CommitUpdates;
end;

procedure TdmCadastros.qyExamesLocaisBeforeDelete(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmCadastros.qyExamesLocaisBeforePost(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmCadastros.qyExamesLocaisPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  database.Rollback;
end;

procedure TdmCadastros.qyExamesLocaisUpdateError(DataSet: TDataSet;
  E: EDatabaseError; UpdateKind: TUpdateKind;
  var UpdateAction: TUpdateAction);
begin
  database.Rollback;
  qyExamesLocais.RollbackUpdates;
end;

procedure TdmCadastros.qyExamesLocaisAfterInsert(DataSet: TDataSet);
begin
  //
end;

{--- qyFornecedores -----------------------------------------------------------}

procedure TdmCadastros.qyFornecedoresAfterDelete(DataSet: TDataSet);
begin
  qyFornecedores.ApplyUpdates;
  database.Commit;
  qyFornecedores.CommitUpdates;
end;

procedure TdmCadastros.qyFornecedoresAfterPost(DataSet: TDataSet);
begin
  qyFornecedores.ApplyUpdates;
  database.Commit;
  qyFornecedores.CommitUpdates;
end;

procedure TdmCadastros.qyFornecedoresBeforeDelete(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmCadastros.qyFornecedoresBeforePost(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmCadastros.qyFornecedoresPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  database.Rollback;
end;

procedure TdmCadastros.qyFornecedoresUpdateError(DataSet: TDataSet;
  E: EDatabaseError; UpdateKind: TUpdateKind;
  var UpdateAction: TUpdateAction);
begin
  database.Rollback;
  qyFornecedores.RollbackUpdates;
end;

procedure TdmCadastros.qyFornecedoresAfterInsert(DataSet: TDataSet);
begin
  qyFornecedorestpl_id.Value := 0;
  qyFornecedoresfor_tipo.Value := 'J';
  qyFornecedorescid_codigo.Value := 4202404; //Blumenau
  qyFornecedoresfor_numero.Value := 0;
  qyFornecedoresfor_dtcadastro.Value := now;
end;

{--- qyFuncionarios -----------------------------------------------------------}

procedure TdmCadastros.qyFuncionariosAfterDelete(DataSet: TDataSet);
begin
  qyFuncionarios.ApplyUpdates;
  database.Commit;
  qyFuncionarios.CommitUpdates;
end;

procedure TdmCadastros.qyFuncionariosAfterPost(DataSet: TDataSet);
begin
  qyFuncionarios.ApplyUpdates;
  database.Commit;
  qyFuncionarios.CommitUpdates;
end;

procedure TdmCadastros.qyFuncionariosBeforeDelete(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmCadastros.qyFuncionariosBeforePost(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmCadastros.qyFuncionariosPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  database.Rollback;
end;

procedure TdmCadastros.qyFuncionariosUpdateError(DataSet: TDataSet;
  E: EDatabaseError; UpdateKind: TUpdateKind;
  var UpdateAction: TUpdateAction);
begin
  database.Rollback;
  qyFuncionarios.RollbackUpdates;
end;

procedure TdmCadastros.qyFuncionariosAfterInsert(DataSet: TDataSet);
begin
  qyFuncionariosfnc_id.Value := 1;
  qyFuncionariosfun_ativo.Value := true;
end;

{--- qyFuncoes ----------------------------------------------------------------}

procedure TdmCadastros.qyFuncoesAfterDelete(DataSet: TDataSet);
begin
  qyFuncoes.ApplyUpdates;
  database.Commit;
  qyFuncoes.CommitUpdates;
end;

procedure TdmCadastros.qyFuncoesAfterPost(DataSet: TDataSet);
begin
  qyFuncoes.ApplyUpdates;
  database.Commit;
  qyFuncoes.CommitUpdates;
end;

procedure TdmCadastros.qyFuncoesBeforeDelete(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmCadastros.qyFuncoesBeforePost(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmCadastros.qyFuncoesPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  database.Rollback;
end;

procedure TdmCadastros.qyFuncoesUpdateError(DataSet: TDataSet;
  E: EDatabaseError; UpdateKind: TUpdateKind;
  var UpdateAction: TUpdateAction);
begin
  database.Rollback;
  qyFuncoes.RollbackUpdates;
end;

procedure TdmCadastros.qyFuncoesAfterInsert(DataSet: TDataSet);
begin
  //
end;

{--- qyLaudosMod ---------------------------------------------------------------}

procedure TdmCadastros.qyLaudosModAfterDelete(DataSet: TDataSet);
begin
  qyLaudosMod.ApplyUpdates;
  database.Commit;
  qyLaudosMod.CommitUpdates;
end;

procedure TdmCadastros.qyLaudosModAfterPost(DataSet: TDataSet);
begin
  qyLaudosMod.ApplyUpdates;
  database.Commit;
  qyLaudosMod.CommitUpdates;
end;

procedure TdmCadastros.qyLaudosModBeforeDelete(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmCadastros.qyLaudosModBeforePost(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmCadastros.qyLaudosModPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  database.Rollback;
end;

procedure TdmCadastros.qyLaudosModUpdateError(DataSet: TDataSet;
  E: EDatabaseError; UpdateKind: TUpdateKind;
  var UpdateAction: TUpdateAction);
begin
  database.Rollback;
  qyLaudosMod.RollbackUpdates;
end;

procedure TdmCadastros.qyLaudosModAfterInsert(DataSet: TDataSet);
begin
  //
end;

{--- qyLaudosModMacro ---------------------------------------------------------}

procedure TdmCadastros.qyLaudosModMacroAfterDelete(DataSet: TDataSet);
begin
  qyLaudosModMacro.ApplyUpdates;
  database.Commit;
  qyLaudosModMacro.CommitUpdates;
end;

procedure TdmCadastros.qyLaudosModMacroAfterPost(DataSet: TDataSet);
begin
  qyLaudosModMacro.ApplyUpdates;
  database.Commit;
  qyLaudosModMacro.CommitUpdates;
end;

procedure TdmCadastros.qyLaudosModMacroBeforeDelete(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmCadastros.qyLaudosModMacroBeforePost(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmCadastros.qyLaudosModMacroPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  database.Rollback;
end;

procedure TdmCadastros.qyLaudosModMacroUpdateError(DataSet: TDataSet;
  E: EDatabaseError; UpdateKind: TUpdateKind;
  var UpdateAction: TUpdateAction);
begin
  database.Rollback;
  qyLaudosModMacro.RollbackUpdates;
end;

procedure TdmCadastros.qyLaudosModMacroAfterInsert(DataSet: TDataSet);
begin
  //
end;

{--- qyLaudosModHist ----------------------------------------------------------}

procedure TdmCadastros.qyLaudosModHistAfterDelete(DataSet: TDataSet);
begin
  qyLaudosModHist.ApplyUpdates;
  database.Commit;
  qyLaudosModHist.CommitUpdates;
end;

procedure TdmCadastros.qyLaudosModHistAfterPost(DataSet: TDataSet);
begin
  qyLaudosModHist.ApplyUpdates;
  database.Commit;
  qyLaudosModHist.CommitUpdates;
end;

procedure TdmCadastros.qyLaudosModHistBeforeDelete(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmCadastros.qyLaudosModHistBeforePost(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmCadastros.qyLaudosModHistPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  database.Rollback;
end;

procedure TdmCadastros.qyLaudosModHistUpdateError(DataSet: TDataSet;
  E: EDatabaseError; UpdateKind: TUpdateKind;
  var UpdateAction: TUpdateAction);
begin
  database.Rollback;
  qyLaudosModHist.RollbackUpdates;
end;

procedure TdmCadastros.qyLaudosModHistAfterInsert(DataSet: TDataSet);
begin
  //
end;

{--- qyLaudosPadrao -----------------------------------------------------------}

procedure TdmCadastros.qyLaudosPadraoAfterDelete(DataSet: TDataSet);
begin
  qyLaudosPadrao.ApplyUpdates;
  database.Commit;
  qyLaudosPadrao.CommitUpdates;
end;

procedure TdmCadastros.qyLaudosPadraoAfterPost(DataSet: TDataSet);
begin
  qyLaudosPadrao.ApplyUpdates;
  database.Commit;
  qyLaudosPadrao.CommitUpdates;
end;

procedure TdmCadastros.qyLaudosPadraoBeforeDelete(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmCadastros.qyLaudosPadraoBeforePost(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmCadastros.qyLaudosPadraoPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  database.Rollback;
end;

procedure TdmCadastros.qyLaudosPadraoUpdateError(DataSet: TDataSet;
  E: EDatabaseError; UpdateKind: TUpdateKind;
  var UpdateAction: TUpdateAction);
begin
  database.Rollback;
  qyLaudosPadrao.RollbackUpdates;
end;

procedure TdmCadastros.qyLaudosPadraoAfterInsert(DataSet: TDataSet);
begin
  //
end;

{--- qyLaudosPreMod ---------------------------------------------------------------}

procedure TdmCadastros.qyLaudosPreModAfterDelete(DataSet: TDataSet);
begin
  qyLaudosPreMod.ApplyUpdates;
  database.Commit;
  qyLaudosPreMod.CommitUpdates;
end;

procedure TdmCadastros.qyLaudosPreModAfterPost(DataSet: TDataSet);
begin
  qyLaudosPreMod.ApplyUpdates;
  database.Commit;
  qyLaudosPreMod.CommitUpdates;
end;

procedure TdmCadastros.qyLaudosPreModBeforeDelete(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmCadastros.qyLaudosPreModBeforePost(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmCadastros.qyLaudosPreModPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  database.Rollback;
end;

procedure TdmCadastros.qyLaudosPreModUpdateError(DataSet: TDataSet; E: EDatabaseError;
  UpdateKind: TUpdateKind; var UpdateAction: TUpdateAction);
begin
  database.Rollback;
  qyLaudosPreMod.RollbackUpdates;
end;

{--- qyMateriais --------------------------------------------------------------}

procedure TdmCadastros.qyMateriaisAfterDelete(DataSet: TDataSet);
begin
  qyMateriais.ApplyUpdates;
  database.Commit;
  qymateriais.CommitUpdates;
end;

procedure TdmCadastros.qyMateriaisAfterPost(DataSet: TDataSet);
begin
  qyMateriais.ApplyUpdates;
  database.Commit;
  qyMateriais.CommitUpdates;
end;

procedure TdmCadastros.qyMateriaisBeforeDelete(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmCadastros.qyMateriaisBeforePost(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmCadastros.qyMateriaisPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  database.Rollback;
end;

procedure TdmCadastros.qyMateriaisUpdateError(DataSet: TDataSet;
  E: EDatabaseError; UpdateKind: TUpdateKind; var UpdateAction: TUpdateAction);
begin
  database.Rollback;
  qyMateriais.RollbackUpdates;
end;

{--- qyMatCid -----------------------------------------------------------------}

procedure TdmCadastros.qyMatCidAfterDelete(DataSet: TDataSet);
begin
  qyMatCid.ApplyUpdates;
  database.Commit;
  qyMatCid.CommitUpdates;
end;

procedure TdmCadastros.qyMatCidAfterPost(DataSet: TDataSet);
begin
  qyMatCid.ApplyUpdates;
  database.Commit;
  qyMatCid.CommitUpdates;
end;

procedure TdmCadastros.qyMatCidBeforeDelete(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmCadastros.qyMatCidBeforePost(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmCadastros.qyMatCidPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  database.Rollback;
end;

procedure TdmCadastros.qyMatCidUpdateError(DataSet: TDataSet;
  E: EDatabaseError; UpdateKind: TUpdateKind; var UpdateAction: TUpdateAction);
begin
  database.Rollback;
  qyMatCid.RollbackUpdates;
end;

{--- qyMedicos ----------------------------------------------------------------}

procedure TdmCadastros.qyMedicosAfterDelete(DataSet: TDataSet);
begin
  qyMedicos.ApplyUpdates;
  database.Commit;
  qyMedicos.CommitUpdates;
end;

procedure TdmCadastros.qyMedicosAfterPost(DataSet: TDataSet);
begin
  qyMedicos.ApplyUpdates;
  database.Commit;
  qyMedicos.CommitUpdates;
end;

procedure TdmCadastros.qyMedicosBeforeDelete(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmCadastros.qyMedicosBeforePost(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmCadastros.qyMedicosPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  database.Rollback;
end;

procedure TdmCadastros.qyMedicosUpdateError(DataSet: TDataSet;
  E: EDatabaseError; UpdateKind: TUpdateKind;
  var UpdateAction: TUpdateAction);
begin
  database.Rollback;
  qyMedicos.RollbackUpdates;
end;

procedure TdmCadastros.qyMedicosAfterInsert(DataSet: TDataSet);
begin
  qyMedicoscos_id.Value := 6;
  qyMedicoscos_tipo.Value := 'CRM';
  qyMedicostpl_id.Value := 0;
  qyMedicoscid_codigo.Value := 4202404;
  qyMedicoscid_cidade.Value := 'Blumenau';
  qyMedicoscos_uf.Text := 'SC';
  qyMedicosuf_sigla.Value := 'SC';
  qyMedicosmed_titulo.Text := 'Dr.';
  qyMedicoscbo_codigo.Value := 999999;
  qyMedicoscbo_descricao.Text := 'CBO-S desconhecido ou não informado pelo solicitante';
end;

{--- qyModLaudoMacro ----------------------------------------------------------}

procedure TdmCadastros.qyModLaudoMacroAfterDelete(DataSet: TDataSet);
begin
  qyModLaudoMacro.ApplyUpdates;
  database.Commit;
  qyModLaudoMacro.CommitUpdates;
end;

procedure TdmCadastros.qyModLaudoMacroAfterPost(DataSet: TDataSet);
begin
  qyModLaudoMacro.ApplyUpdates;
  database.Commit;
  qyModLaudoMacro.CommitUpdates;
end;

procedure TdmCadastros.qyModLaudoMacroBeforeDelete(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmCadastros.qyModLaudoMacroBeforePost(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmCadastros.qyModLaudoMacroPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  database.Rollback;
end;

procedure TdmCadastros.qyModLaudoMacroUpdateError(DataSet: TDataSet;
  E: EDatabaseError; UpdateKind: TUpdateKind;
  var UpdateAction: TUpdateAction);
begin
  database.Rollback;
  qyModLaudoMacro.RollbackUpdates;
end;

procedure TdmCadastros.qyModLaudoMacroAfterInsert(DataSet: TDataSet);
begin
  //
end;

{--- qyMovimentos -------------------------------------------------------------}

procedure TdmCadastros.qyMovimentosAfterDelete(DataSet: TDataSet);
begin
  qyMovimentos.ApplyUpdates;
  database.Commit;
  qyMovimentos.CommitUpdates;
end;

procedure TdmCadastros.qyMovimentosAfterPost(DataSet: TDataSet);
begin
  qyMovimentos.ApplyUpdates;
  database.Commit;
  qyMovimentos.CommitUpdates;
end;

procedure TdmCadastros.qyMovimentosBeforeDelete(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmCadastros.qyMovimentosBeforePost(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmCadastros.qyMovimentosPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  database.Rollback;
end;

procedure TdmCadastros.qyMovimentosUpdateError(DataSet: TDataSet;
  E: EDatabaseError; UpdateKind: TUpdateKind;
  var UpdateAction: TUpdateAction);
begin
  database.Rollback;
  qyMovimentos.RollbackUpdates;
end;

procedure TdmCadastros.qyMovimentosAfterInsert(DataSet: TDataSet);
begin
  //
end;

{--- qyPacientes --------------------------------------------------------------}

procedure TdmCadastros.qyPacientesAfterDelete(DataSet: TDataSet);
begin
  qyPacientes.ApplyUpdates;
  database.Commit;
  qyPacientes.CommitUpdates;
end;

procedure TdmCadastros.qyPacientesAfterPost(DataSet: TDataSet);
begin
  qyPacientes.ApplyUpdates;
  database.Commit;
  qyPacientes.CommitUpdates;
end;

procedure TdmCadastros.qyPacientesBeforeDelete(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmCadastros.qyPacientesBeforePost(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmCadastros.qyPacientesPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  database.Rollback;
end;

procedure TdmCadastros.qyPacientesUpdateError(DataSet: TDataSet;
  E: EDatabaseError; UpdateKind: TUpdateKind;
  var UpdateAction: TUpdateAction);
begin
  database.Rollback;
  qyPacientes.RollbackUpdates;
end;

procedure TdmCadastros.qyPacientesAfterInsert(DataSet: TDataSet);
begin
  //
end;

{--- qyProcedimentos ----------------------------------------------------------}

procedure TdmCadastros.qyProcedimentosAfterDelete(DataSet: TDataSet);
begin
  qyProcedimentos.ApplyUpdates;
  database.Commit;
  qyProcedimentos.CommitUpdates;
end;

procedure TdmCadastros.qyProcedimentosAfterPost(DataSet: TDataSet);
begin
  qyProcedimentos.ApplyUpdates;
  database.Commit;
  qyProcedimentos.CommitUpdates;
end;

procedure TdmCadastros.qyProcedimentosBeforeDelete(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmCadastros.qyProcedimentosBeforePost(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmCadastros.qyProcedimentosPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  database.Rollback;
end;

procedure TdmCadastros.qyProcedimentosUpdateError(DataSet: TDataSet;
  E: EDatabaseError; UpdateKind: TUpdateKind;
  var UpdateAction: TUpdateAction);
begin
  database.Rollback;
  qyProcedimentos.RollbackUpdates;
end;

procedure TdmCadastros.qyProcedimentosAfterInsert(DataSet: TDataSet);
begin
  qyProcedimentosprc_vlrhora.Value := 0;
  qyProcedimentosprc_vlroper.Value := 0;
  qyProcedimentosprc_vlrfilme.Value := 0;
  qyProcedimentosprc_vlrtotal.Value := 0;
end;

{--- qyResponsaveis -----------------------------------------------------------}

procedure TdmCadastros.qyResponsaveisAfterDelete(DataSet: TDataSet);
begin
  qyResponsaveis.ApplyUpdates;
  database.Commit;
  qyResponsaveis.CommitUpdates;
end;

procedure TdmCadastros.qyResponsaveisAfterPost(DataSet: TDataSet);
begin
  qyResponsaveis.ApplyUpdates;
  database.Commit;
  qyResponsaveis.CommitUpdates;
end;

procedure TdmCadastros.qyResponsaveisBeforeDelete(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmCadastros.qyResponsaveisBeforePost(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmCadastros.qyResponsaveisPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  database.Rollback;
end;

procedure TdmCadastros.qyResponsaveisUpdateError(DataSet: TDataSet;
  E: EDatabaseError; UpdateKind: TUpdateKind;
  var UpdateAction: TUpdateAction);
begin
  database.Rollback;
  qyResponsaveis.RollbackUpdates;
end;

procedure TdmCadastros.qyResponsaveisAfterInsert(DataSet: TDataSet);
begin
  qyResponsaveiscos_id.Value := 6;
  qyResponsaveiscos_tipo.Text := 'CRM';
end;

{--- qyTopografias ------------------------------------------------------------}

procedure TdmCadastros.qyTopografiasAfterDelete(DataSet: TDataSet);
begin
  qyTopografias.ApplyUpdates;
  database.Commit;
  qyTopografias.CommitUpdates;
end;

procedure TdmCadastros.qyTopografiasAfterPost(DataSet: TDataSet);
begin
  qyTopografias.ApplyUpdates;
  database.Commit;
  qyTopografias.CommitUpdates;
end;

procedure TdmCadastros.qyTopografiasBeforeDelete(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmCadastros.qyTopografiasBeforePost(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmCadastros.qyTopografiasPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  database.Rollback;
end;

procedure TdmCadastros.qyTopografiasUpdateError(DataSet: TDataSet;
  E: EDatabaseError; UpdateKind: TUpdateKind;
  var UpdateAction: TUpdateAction);
begin
  database.Rollback;
  qyTopografias.RollbackUpdates;
end;

procedure TdmCadastros.qyTopografiasAfterInsert(DataSet: TDataSet);
begin
  //
end;

{--- qyUf ---------------------------------------------------------------------}

procedure TdmCadastros.qyUfAfterDelete(DataSet: TDataSet);
begin
  qyUf.ApplyUpdates;
  database.Commit;
  qyUf.CommitUpdates;
end;

procedure TdmCadastros.qyUfAfterPost(DataSet: TDataSet);
begin
  qyUf.ApplyUpdates;
  database.Commit;
  qyUf.CommitUpdates;
end;

procedure TdmCadastros.qyUfBeforeDelete(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmCadastros.qyUfBeforePost(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmCadastros.qyUfPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  database.Rollback;
end;

procedure TdmCadastros.qyUfUpdateError(DataSet: TDataSet;
  E: EDatabaseError; UpdateKind: TUpdateKind;
  var UpdateAction: TUpdateAction);
begin
  database.Rollback;
  qyUf.RollbackUpdates;
end;

procedure TdmCadastros.qyUfAfterInsert(DataSet: TDataSet);
begin
  //
end;

{--- qyUsuarios ---------------------------------------------------------------}

procedure TdmCadastros.qyUsuariosAfterDelete(DataSet: TDataSet);
begin
  qyUsuarios.ApplyUpdates;
  database.Commit;
  qyUsuarios.CommitUpdates;
end;

procedure TdmCadastros.qyUsuariosAfterPost(DataSet: TDataSet);
begin
  qyUsuarios.ApplyUpdates;
  database.Commit;
  qyUsuarios.CommitUpdates;
end;

procedure TdmCadastros.qyUsuariosBeforeDelete(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmCadastros.qyUsuariosBeforePost(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmCadastros.qyUsuariosPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  database.Rollback;
end;

procedure TdmCadastros.qyUsuariosUpdateError(DataSet: TDataSet;
  E: EDatabaseError; UpdateKind: TUpdateKind;
  var UpdateAction: TUpdateAction);
begin
  database.Rollback;
  qyUsuarios.RollbackUpdates;
end;

procedure TdmCadastros.qyUsuariosAfterInsert(DataSet: TDataSet);
begin
  qyUsuariosusu_ativo.Value := 'S';
  qyUsuariosusu_exppdf.Value := 'S';
  qyUsuariosace_codigo.Value := 1;
  qyUsuariosace_descricao.Text := 'Administrador';
  qyUsuariosusu_altdata.Text := 'N';
end;

{--- qyUsuariosMail -----------------------------------------------------------}

procedure TdmCadastros.qyUsuariosMailAfterDelete(DataSet: TDataSet);
begin
  qyUsuariosMail.ApplyUpdates;
  database.Commit;
  qyUsuariosMail.CommitUpdates;
end;

procedure TdmCadastros.qyUsuariosMailAfterPost(DataSet: TDataSet);
begin
  qyUsuariosMail.ApplyUpdates;
  database.Commit;
  qyUsuariosMail.CommitUpdates;
end;

procedure TdmCadastros.qyUsuariosMailBeforeDelete(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmCadastros.qyUsuariosMailBeforePost(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmCadastros.qyUsuariosMailPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  database.Rollback;
end;

procedure TdmCadastros.qyUsuariosMailUpdateError(DataSet: TDataSet;
  E: EDatabaseError; UpdateKind: TUpdateKind;
  var UpdateAction: TUpdateAction);
begin
  database.Rollback;
  qyUsuariosMail.RollbackUpdates;
end;

procedure TdmCadastros.qyUsuariosMailAfterInsert(DataSet: TDataSet);
begin
  //
end;

end.
