unit dataLookups;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dataTmpConexao, Data.DB, SDEngine;

type
  TdmLookups = class(TdmTmpConexao)
    lkProcPacientes: TSDQuery;
    lkProcPacientespac_codigo: TIntegerField;
    lkProcPacientespac_nome: TStringField;
    lkProcPacientespac_dtnasc: TDateField;
    SessaoLookups: TSDSession;
    lkProcExamesTp: TSDQuery;
    lkProcExamesTpetp_id: TIntegerField;
    lkProcExamesTpetp_tipo: TStringField;
    lkProcExamesTpetp_abrev: TStringField;
    lkProcConvenios: TSDQuery;
    lkProcConvenioscov_descricao: TStringField;
    lkProcConvenioscov_codigo: TIntegerField;
    lkProcConvenioscov_fone: TStringField;
    lkProcMedicos: TSDQuery;
    lkProcMedicosmed_nome: TStringField;
    lkProcMedicosmed_codigo: TIntegerField;
    lkProcMedicosmed_titulo: TStringField;
    lkProcMedicoscos_id: TIntegerField;
    lkProcMedicosmed_numconselho: TStringField;
    lkProcMedicosmed_fone: TStringField;
    lkProcMedAdicional: TSDQuery;
    lkProcOrigem: TSDQuery;
    lkProcOrigemexl_descricao: TStringField;
    lkProcOrigemexl_id: TIntegerField;
    lkProcDestino: TSDQuery;
    lkProcMedAdicionalmed_nome: TStringField;
    lkProcMedAdicionalmed_codigo: TIntegerField;
    lkProcMedAdicionalmed_titulo: TStringField;
    lkProcMedAdicionalcos_id: TIntegerField;
    lkProcMedAdicionalmed_numconselho: TStringField;
    lkProcMedAdicionalmed_fone: TStringField;
    lkProcExamesTipoCito: TSDQuery;
    lkProcExamesTipoCitoeto_local: TStringField;
    lkProcExamesTipoCitoeto_descricao: TStringField;
    lkProcExamesTipoCitoeto_id: TIntegerField;
    lkProcMateriais: TSDQuery;
    lkProcMateriaismat_descricao: TStringField;
    lkProcMateriaismat_id: TIntegerField;
    lkProcExamesHist: TSDQuery;
    lkProcExamesHisteth_descricao: TStringField;
    lkProcExamesHisteth_id: TIntegerField;
    lkProcExamesHisteio_id: TIntegerField;
    lkProcExamesTipo: TSDQuery;
    lkProcExamesTipoeio_descricao: TStringField;
    lkProcExamesTipoeio_id: TIntegerField;
    lkProcLocais: TSDQuery;
    lkProcLocaisexl_descricao: TStringField;
    lkProcLocaisexl_id: TIntegerField;
    lkProcDestinoexl_descricao: TStringField;
    lkProcDestinoexl_id: TIntegerField;
    lkProcAcesso: TSDTable;
    lkProcAcessoace_codigo: TIntegerField;
    lkProcAcessoace_descricao: TStringField;
    lkProcUsuarios: TSDQuery;
    lkProcUsuariosusu_nome: TStringField;
    lkProcUsuariosusu_codigo: TIntegerField;
    lkProcTpTabela: TSDQuery;
    lkProcTpTabelatab_id: TIntegerField;
    lkProcTpTabelatab_descricao: TStringField;
    lkProcExames: TSDQuery;
    lkProcExamesexa_id: TStringField;
    lkProcExamesexa_data: TDateField;
    lkProcExamespac_nome: TStringField;
    lkProcExamesmed_nome: TStringField;
    lkProcExamescov_descricao: TStringField;
    lkProcExamespac_idade: TSmallintField;
    lkProcExamespac_dtnasc: TDateField;
    lkProcExamespac_sexo: TStringField;
    lkProcExamesexa_matricula: TStringField;
    lkProcExamesexa_guia: TStringField;
    lkProcExamesexl_descricao: TStringField;
    lkProcExamesexl_descricao_1: TStringField;
    lkProcExamesres_nome: TStringField;
    lkProcExamespac_meses: TStringField;
    lkProcExamespac_codigo: TIntegerField;
    lkProcExamescov_codigo: TIntegerField;
    lkProcExamesmed_codigo: TIntegerField;
    lkProcExamesexa_origem: TIntegerField;
    lkProcExamesexa_destino: TIntegerField;
    lkProcExamesetp_id: TIntegerField;
    lkProcExamesexa_prioridade: TIntegerField;
    lkProcExamesexa_dataprior: TDateField;
    lkProcExamesexa_etapa: TIntegerField;
    lkProcExamesetp_tipo: TStringField;
    lkProcExamesexa_obs: TStringField;
    lkProcExamesres_codigo: TIntegerField;
    lkProcCidades: TSDQuery;
    lkProcCidadescid_cidade: TStringField;
    lkProcCidadescid_codigo: TIntegerField;
    lkProcCidadesuf_sigla: TStringField;
    lkProcCidadescid_ceppadrao: TStringField;
    lkProcTpLogradouro: TSDQuery;
    lkProcTpLogradourotpl_id: TIntegerField;
    lkProcTpLogradourotpl_tipo: TStringField;
    lkProcResponsaveis: TSDQuery;
    lkProcResponsaveisres_codigo: TIntegerField;
    lkProcResponsaveisres_nome: TStringField;
    lkProcResponsaveisres_titulo: TStringField;
    lkProcResponsaveiscos_id: TIntegerField;
    lkProcResponsaveisres_numconselho: TStringField;
    lkProcProcedimentos: TSDQuery;
    lkProcProcedimentosprc_descricao: TStringField;
    lkProcProcedimentosprc_tuss: TIntegerField;
    lkProcProcedimentosprc_amr: TIntegerField;
    lkProcProcedimentosprc_vlrtotal: TFloatField;
    lkProcConselhos: TSDQuery;
    lkProcConselhoscos_tipo: TStringField;
    lkProcConselhoscos_descricao: TStringField;
    lkProcConselhoscos_codigo: TIntegerField;
    lkProcCBO: TSDQuery;
    lkProcCBOcbo_descricao: TStringField;
    lkProcCBOcbo_codigo: TIntegerField;
    lkProcParticipacao: TSDQuery;
    lkProcParticipacaoprt_termo: TStringField;
    lkProcParticipacaoprt_codigo: TIntegerField;
    lkProcTopografias: TSDQuery;
    lkProcTopografiastop_descricao: TStringField;
    lkProcTopografiastop_id: TIntegerField;
    lkProcModMacro: TSDQuery;
    lkProcModMacrolmm_descricao: TStringField;
    lkProcModMacrolmm_id: TIntegerField;
    lkProcModMacrolmm_modelo: TBlobField;
    lkProcMovimentos: TSDQuery;
    lkProcMovimentosmov_descricao: TStringField;
    lkProcMovimentosmov_codigo: TIntegerField;
    lkProcMovimentosmov_tipo: TStringField;
    lkProcLaudosModHist: TSDQuery;
    lkProcLaudosModHistlmh_id: TIntegerField;
    lkProcLaudosModHistlmh_descricao: TStringField;
    lkProcLaudosModMacro: TSDQuery;
    lkProcLaudosModMacrolmm_id: TIntegerField;
    lkProcLaudosModMacrolmm_descricao: TStringField;
    lkProcFuncoes: TSDQuery;
    lkProcFuncoesfnc_descricao: TStringField;
    lkProcFuncoesfnc_id: TIntegerField;
    lkProcUf: TSDQuery;
    lkProcUfuf_sigla: TStringField;
    lkProcUfuf_estado: TStringField;
    lkProcUfuf_codigo: TIntegerField;
    lkProcLaudosMod: TSDQuery;
    lkProcLaudosModmod_id: TIntegerField;
    lkProcLaudosModmod_descricao: TStringField;
    lkProcLaudosModmod_modelo: TBlobField;
    lkProcAgenda: TSDQuery;
    lkProcAgendaage_codigo: TIntegerField;
    lkProcAgendaage_nome: TStringField;
    lkProcAgendaage_telefone: TStringField;
    lkProcAgendaage_fax: TStringField;
    lkProcAgendaage_celular: TStringField;
    lkProcAgendaage_email: TStringField;
    lkProcAgendaage_homepage: TStringField;
    lkProcAgendaage_msn: TStringField;
    lkProcAgendaage_skype: TStringField;
    lkProcBancos: TSDQuery;
    lkProcBancosban_codigo: TIntegerField;
    lkProcBancosban_descricao: TStringField;
    lkProcContas: TSDQuery;
    lkProcContascon_descricao: TStringField;
    lkProcContascon_codigo: TIntegerField;
    lkProcContascon_obs: TStringField;
    lkProcFornecedores: TSDQuery;
    lkProcFornecedoresfor_razao: TStringField;
    lkProcFornecedoresfor_codigo: TIntegerField;
    lkProcFornecedoresfor_cnpj: TStringField;
    lkProcFuncionarios: TSDQuery;
    lkProcFuncionariosfun_nome: TStringField;
    lkProcFuncionariosfun_codigo: TIntegerField;
    lkProcExamesTipoHist: TSDQuery;
    lkProcExamesTipoHisteth_descricao: TStringField;
    lkProcExamesTipoHisteth_id: TIntegerField;
    lkProcExamesTipoHisteio_id: TIntegerField;
    lkProcReceber: TSDQuery;
    lkProcReceberrec_codigo: TIntegerField;
    lkProcReceberrec_emissao: TDateField;
    lkProcReceberrec_vencimento: TDateField;
    lkProcReceberrec_nome: TStringField;
    lkProcReceberrec_valor: TFloatField;
    lkProcReceberrec_saldo: TFloatField;
    lkProcReceberrec_status: TStringField;
    lkProcReceberhis_id: TIntegerField;
    lkProcCobranca: TSDQuery;
    lkProcCobrancacob_descricao: TStringField;
    lkProcCobrancacob_codigo: TIntegerField;
    lkProcCitosTp: TSDQuery;
    lkProcCitosTpetp_id: TIntegerField;
    lkProcCitosTpetp_tipo: TStringField;
    lkProcCitosTpetp_abrev: TStringField;
    lkProcLaudosModmod_diagnostico: TBlobField;
    lkProcCIDSubCat: TSDQuery;
    lkProcCIDSubCatsct_descricao: TStringField;
    lkProcCIDSubCatsct_descabrev: TStringField;
    lkProcCIDSubCatsct_subcat: TStringField;
    lkProcMatCid: TSDQuery;
    lkProcMatCidmat_id: TIntegerField;
    lkProcMatCidsct_subcat: TStringField;
    lkProcMatCidsct_descabrev: TStringField;
    lkProcMatCidsct_descricao: TStringField;
    lkProcLaudosPreMod: TSDQuery;
    lkProcLaudosPreModlpm_codigo: TIntegerField;
    lkProcLaudosPreModlpm_descricao: TStringField;
    lkProcLaudosPreModlpm_modelo: TBlobField;
    lkProcLaudosPreModlpm_diagnostico: TBlobField;
    lkProcPacientespac_sexo: TStringField;
    lkProcCitofrases: TSDQuery;
    lkProcCitofrasesctf_id: TIntegerField;
    lkProcCitofrasesctf_frase: TStringField;
    procedure Refresh;
    procedure AtualizaLkProcMedico(vfTipo: String);
    procedure FiltrarPlanoContas(vfTipo: String);
    procedure ListarPlanoContas;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmLookups: TdmLookups;

implementation

{$R *.dfm}

procedure TdmLookups.Refresh;
begin
  //lkAcesso
  lkProcAcesso.Close;
  lkProcAcesso.Open;

  //lkProcAgenda
  lkProcAgenda.Close;
  lkProcAgenda.Open;

  //lkProcBancos
  lkProcBancos.Close;
  lkProcBancos.Open;

  //lkProcCBO
  lkProcCBO.Close;
  lkProcCBO.Open;

  //lkProcCidades
  lkProcCidades.Close;
  lkProcCidades.Open;

  //lkProcCIDSubCat
  lkProcCIDSubCat.Close;
  lkProcCIDSubCat.Open;

  //lkProcCitoFrases
  lkProcCitoFrases.Close;
  lkProcCitoFrases.Open;

  //lkProcCitosTp
  lkProcCitosTp.Close;
  lkProcCitosTp.Open;

  //lkProcCobranca
  lkProcCobranca.Close;
  lkProcCobranca.Open;

  //lkProcConselhos
  lkProcConselhos.Close;
  lkProcConselhos.Open;

  //lkProcContas
  lkProcContas.Close;
  lkProcContas.Open;

  //lkProcConvenios
  lkProcConvenios.Close;
  lkProcConvenios.Open;

  //lkProcDestino
  lkProcDestino.Close;
  lkProcDestino.Open;

  //lkProcExames
  lkProcExames.Close;
  lkProcExames.Open;

  //lkProcExamesHist
  lkProcExamesHist.Close;
  lkProcExamesHist.Open;

  //lkProcExamesTp
  lkProcExamesTp.Close;
  lkProcExamesTp.Open;

  //lkProcExamesTipo
  lkProcExamesTipo.Close;
  lkProcExamesTipo.Open;

  //lkProcExamesTipoCito
  lkProcExamesTipoCito.Close;
  lkProcExamesTipoCito.Open;

  //lkProcExamesTipoHist
  lkProcExamesTipoHist.Close;
  lkProcExamesTipoHist.Open;

  //lkProcFornecedores
  lkProcFornecedores.Close;
  lkProcFornecedores.Open;

  //lkProcFuncionarios
  lkProcFuncionarios.Close;
  lkProcFuncionarios.Open;

  //lkProcFuncoes
  lkProcFuncoes.Close;
  lkProcFuncoes.Open;

  //lkProcLaudosMod
  lkProcLaudosMod.Close;
  lkProcLaudosMod.Open;

  //lkProcLaudosModHist
  lkProcLaudosModHist.Close;
  lkProcLaudosModHist.Open;

  //lkProcLaudosModMacro
  lkProcLaudosModMacro.Close;
  lkProcLaudosModMacro.Open;

  //lkProcLaudosPreMod
  lkProcLaudosPreMod.Close;
  lkProcLaudosPreMod.Open;

  //lkProcLocais
  lkProcLocais.Close;
  lkProcLocais.Open;

  //lkProcMateriais
  lkProcMateriais.Close;
  lkProcMateriais.Open;

  //lkProcMedicos
  lkProcMedicos.Close;
  lkProcMedicos.Open;

  //lkProcMedAdicional
  lkProcMedAdicional.Close;
  lkProcMedAdicional.Open;

  //lkProcModMacro
  lkProcModMacro.Close;
  lkProcModMacro.Open;

  //lkProcMovimentos
  lkProcMovimentos.Close;
  lkProcMovimentos.Open;

  //lkProcOrigem
  lkProcOrigem.Close;
  lkProcOrigem.Open;

  //lkProcPacientes
  lkProcPacientes.Close;
  lkProcPacientes.Open;

  //lkProcParticipacao
  lkProcParticipacao.Close;
  lkProcParticipacao.Open;

  //lkProcProcedimentos
  lkProcProcedimentos.Close;
  lkProcProcedimentos.Open;

  //lkProcReceber
  lkProcReceber.Close;
  lkProcReceber.Open;

  //lkProcResposnsaveis
  lkProcResponsaveis.Close;
  lkProcResponsaveis.Open;

  //lkProcTopografias
  lkProcTopografias.Close;
  lkProcTopografias.Open;

  //lkProcTpLogradouro
  lkProcTpLogradouro.Close;
  lkProcTpLogradouro.Open;

  //lkProcTpTabela
  lkProcTpTabela.Close;
  lkProcTpTabela.Open;

  //lkProcUf
  lkProcUf.Close;
  lkProcUf.Open;

  //lkProcUsuarios
  lkProcUsuarios.Close;
  lkProcUsuarios.Open;

end;

procedure TdmLookups.AtualizaLkProcMedico(vfTipo: String);
begin

  //lkProcMedicos
  if vfTipo = '0' then
  begin
    lkProcMedicos.Close;
    lkProcMedicos.Open;
  end;

  //lkProcMedAdicional
  if vfTipo = '1' then
  begin
    lkProcMedAdicional.Close;
    lkProcMedAdicional.Open;
  end;
end;

procedure TdmLookups.FiltrarPlanoContas(vfTipo: String);
begin
  lkProcMovimentos.Close;
  lkProcMovimentos.SQL.Clear;
  lkProcMovimentos.SQL.Add('select mov_codigo, mov_descricao, mov_tipo from movimentos ');
  lkProcMovimentos.SQL.Add('where mov_tipo = ');
  lkProcMovimentos.SQL.Add(QuotedStr(vfTipo));
  lkProcMovimentos.SQL.Add(' order by mov_descricao');
  lkProcMovimentos.Open;
end;

procedure TdmLookups.ListarPlanoContas;
begin
  lkProcMovimentos.Close;
  lkProcMovimentos.SQL.Clear;
  lkProcMovimentos.SQL.Add('select mov_codigo, mov_descricao, mov_tipo from movimentos ');
  lkProcMovimentos.SQL.Add(' order by mov_descricao');
  lkProcMovimentos.Open;
end;

procedure TdmLookups.DataModuleCreate(Sender: TObject);
begin
  inherited;
  Refresh;
end;

end.
