inherited dmLookups: TdmLookups
  OldCreateOrder = True
  Height = 521
  Width = 767
  inherited database: TSDDatabase
    DatabaseName = 'Lookups'
    Params.Strings = (
      'USER NAME=postgres'
      'PASSWORD=postgres')
    RemoteDatabase = 'localhost:genesis'
    ServerType = stPostgreSQL
    SessionName = 'SessaoLookups'
  end
  inherited QGeraCodigo: TSDQuery
    DatabaseName = 'lookups'
    SessionName = 'SessaoLookups'
  end
  inherited QTemp: TSDQuery
    DatabaseName = 'lookups'
    SessionName = 'SessaoLookups'
  end
  object lkProcPacientes: TSDQuery
    DatabaseName = 'lookups'
    Options = []
    SessionName = 'SessaoLookups'
    SQL.Strings = (
      'select pac_nome, pac_codigo, pac_dtnasc, pac_sexo from pacientes'
      'order by pac_nome')
    Left = 136
    Top = 376
    object lkProcPacientespac_nome: TStringField
      DisplayLabel = 'Paciente'
      FieldName = 'pac_nome'
      Size = 80
    end
    object lkProcPacientespac_dtnasc: TDateField
      DisplayLabel = 'Dt. Nasc.'
      FieldName = 'pac_dtnasc'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object lkProcPacientespac_codigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 8
      FieldName = 'pac_codigo'
      DisplayFormat = '000'
    end
    object lkProcPacientespac_sexo: TStringField
      FieldName = 'pac_sexo'
      FixedChar = True
      Size = 1
    end
  end
  object SessaoLookups: TSDSession
    Active = True
    SessionName = 'SessaoLookups'
    Left = 104
    Top = 16
  end
  object lkProcExamesTp: TSDQuery
    DatabaseName = 'lookups'
    Options = []
    SessionName = 'SessaoLookups'
    SQL.Strings = (
      'select etp_tipo,  etp_id, etp_abrev from examestp'
      'order by etp_tipo')
    Left = 232
    Top = 168
    object lkProcExamesTpetp_tipo: TStringField
      DisplayLabel = 'Tipo de exame'
      FieldName = 'etp_tipo'
    end
    object lkProcExamesTpetp_id: TIntegerField
      DisplayLabel = 'ID Tp. Exame'
      FieldName = 'etp_id'
      DisplayFormat = '000'
    end
    object lkProcExamesTpetp_abrev: TStringField
      DisplayLabel = 'Abrev.'
      FieldName = 'etp_abrev'
      FixedChar = True
      Size = 1
    end
  end
  object lkProcConvenios: TSDQuery
    DatabaseName = 'lookups'
    Options = []
    SessionName = 'SessaoLookups'
    SQL.Strings = (
      'select cov_descricao, cov_codigo, cov_fone from convenios'
      'order by cov_descricao')
    Left = 640
    Top = 96
    object lkProcConvenioscov_descricao: TStringField
      DisplayLabel = 'Conv'#234'nio'
      FieldName = 'cov_descricao'
      Size = 30
    end
    object lkProcConvenioscov_codigo: TIntegerField
      DisplayLabel = 'C'#243'd. Conv.'
      FieldName = 'cov_codigo'
    end
    object lkProcConvenioscov_fone: TStringField
      DisplayLabel = 'Fone'
      FieldName = 'cov_fone'
      Size = 14
    end
  end
  object lkProcMedicos: TSDQuery
    DatabaseName = 'lookups'
    Options = []
    SessionName = 'SessaoLookups'
    SQL.Strings = (
      'select med_nome, med_codigo, med_titulo, cos_id, '
      'med_numconselho, med_fone from medicos'
      'order by med_nome')
    Left = 136
    Top = 304
    object lkProcMedicosmed_nome: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'med_nome'
      Size = 50
    end
    object lkProcMedicosmed_codigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'med_codigo'
    end
    object lkProcMedicosmed_titulo: TStringField
      DisplayLabel = 'T'#237'tulo'
      FieldName = 'med_titulo'
      Size = 5
    end
    object lkProcMedicoscos_id: TIntegerField
      DisplayLabel = 'Cons.'
      FieldName = 'cos_id'
    end
    object lkProcMedicosmed_numconselho: TStringField
      DisplayLabel = 'Num. Cons.'
      FieldName = 'med_numconselho'
      Size = 10
    end
    object lkProcMedicosmed_fone: TStringField
      DisplayLabel = 'Fone'
      FieldName = 'med_fone'
      Size = 15
    end
  end
  object lkProcMedAdicional: TSDQuery
    DatabaseName = 'lookups'
    Options = []
    SessionName = 'SessaoLookups'
    SQL.Strings = (
      'select med_nome, med_codigo, med_titulo, cos_id, '
      'med_numconselho, med_fone from medicos'
      'order by med_nome')
    Left = 232
    Top = 304
    object lkProcMedAdicionalmed_nome: TStringField
      DisplayLabel = 'M'#233'dico'
      DisplayWidth = 50
      FieldName = 'med_nome'
      Size = 50
    end
    object lkProcMedAdicionalmed_codigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 8
      FieldName = 'med_codigo'
    end
    object lkProcMedAdicionalmed_titulo: TStringField
      DisplayLabel = 'T'#237't.'
      FieldName = 'med_titulo'
      Size = 5
    end
    object lkProcMedAdicionalcos_id: TIntegerField
      DisplayLabel = 'Cons.'
      FieldName = 'cos_id'
    end
    object lkProcMedAdicionalmed_numconselho: TStringField
      DisplayLabel = 'Registro'
      DisplayWidth = 10
      FieldName = 'med_numconselho'
      Size = 10
    end
    object lkProcMedAdicionalmed_fone: TStringField
      DisplayLabel = 'Telefone'
      DisplayWidth = 15
      FieldName = 'med_fone'
      Size = 15
    end
  end
  object lkProcOrigem: TSDQuery
    DatabaseName = 'lookups'
    Options = []
    SessionName = 'SessaoLookups'
    SQL.Strings = (
      'select exl_descricao, exl_id from exameslocais'
      'order by exl_descricao')
    Left = 40
    Top = 376
    object lkProcOrigemexl_descricao: TStringField
      DisplayLabel = 'Local'
      FieldName = 'exl_descricao'
      Size = 35
    end
    object lkProcOrigemexl_id: TIntegerField
      DisplayLabel = 'ID Local'
      FieldName = 'exl_id'
    end
  end
  object lkProcDestino: TSDQuery
    DatabaseName = 'lookups'
    Options = []
    SessionName = 'SessaoLookups'
    SQL.Strings = (
      'select exl_descricao, exl_id from exameslocais'
      'order by exl_descricao')
    Left = 728
    Top = 96
    object lkProcDestinoexl_descricao: TStringField
      DisplayLabel = 'Destino'
      FieldName = 'exl_descricao'
      Size = 35
    end
    object lkProcDestinoexl_id: TIntegerField
      DisplayLabel = 'ID do destino'
      FieldName = 'exl_id'
    end
  end
  object lkProcExamesTipoCito: TSDQuery
    DatabaseName = 'lookups'
    Options = []
    SessionName = 'SessaoLookups'
    SQL.Strings = (
      'select eto_id, eto_local, eto_descricao from examestipocito'
      'order by eto_id')
    Left = 440
    Top = 168
    object lkProcExamesTipoCitoeto_local: TStringField
      DisplayLabel = 'Local'
      DisplayWidth = 40
      FieldName = 'eto_local'
      Size = 40
    end
    object lkProcExamesTipoCitoeto_descricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 120
      FieldName = 'eto_descricao'
      Size = 120
    end
    object lkProcExamesTipoCitoeto_id: TIntegerField
      DisplayLabel = 'ID'
      DisplayWidth = 10
      FieldName = 'eto_id'
    end
  end
  object lkProcMateriais: TSDQuery
    DatabaseName = 'lookups'
    Options = []
    SessionName = 'SessaoLookups'
    SQL.Strings = (
      'select mat_id, mat_descricao from materiais'
      'order by mat_descricao')
    Left = 40
    Top = 304
    object lkProcMateriaismat_descricao: TStringField
      DisplayLabel = 'Material'
      DisplayWidth = 50
      FieldName = 'mat_descricao'
      Size = 50
    end
    object lkProcMateriaismat_id: TIntegerField
      DisplayLabel = 'ID'
      DisplayWidth = 10
      FieldName = 'mat_id'
    end
  end
  object lkProcExamesHist: TSDQuery
    DatabaseName = 'lookups'
    Options = []
    SessionName = 'SessaoLookups'
    SQL.Strings = (
      'select eth_id, eio_id, eth_descricao from examestipohist'
      'order by eth_id')
    Left = 136
    Top = 168
    object lkProcExamesHisteio_id: TIntegerField
      DisplayLabel = 'ID Tp. Exame'
      DisplayWidth = 10
      FieldName = 'eio_id'
    end
    object lkProcExamesHisteth_descricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 50
      FieldName = 'eth_descricao'
      Size = 50
    end
    object lkProcExamesHisteth_id: TIntegerField
      DisplayLabel = 'ID'
      DisplayWidth = 8
      FieldName = 'eth_id'
      DisplayFormat = '000'
    end
  end
  object lkProcExamesTipo: TSDQuery
    DatabaseName = 'lookups'
    Options = []
    SessionName = 'SessaoLookups'
    SQL.Strings = (
      'select eio_id, eio_descricao from examestipo'
      'order by eio_descricao'
      ' ')
    Left = 328
    Top = 168
    object lkProcExamesTipoeio_descricao: TStringField
      DisplayLabel = 'Tipo de Exame'
      DisplayWidth = 30
      FieldName = 'eio_descricao'
      Size = 30
    end
    object lkProcExamesTipoeio_id: TIntegerField
      DisplayLabel = 'ID'
      DisplayWidth = 8
      FieldName = 'eio_id'
      DisplayFormat = '000'
    end
  end
  object lkProcLocais: TSDQuery
    DatabaseName = 'lookups'
    Options = []
    SessionName = 'SessaoLookups'
    SQL.Strings = (
      'select exl_descricao, exl_id'
      'from exameslocais'
      'order by exl_descricao')
    Left = 704
    Top = 232
    object lkProcLocaisexl_descricao: TStringField
      DisplayLabel = 'Local'
      FieldName = 'exl_descricao'
      Size = 35
    end
    object lkProcLocaisexl_id: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'exl_id'
      DisplayFormat = '000'
    end
  end
  object lkProcAcesso: TSDTable
    DatabaseName = 'lookups'
    Options = []
    SessionName = 'SessaoLookups'
    IndexName = 'pk_ace'
    TableName = 'acesso'
    Left = 336
    Top = 16
    object lkProcAcessoace_codigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 8
      FieldName = 'ace_codigo'
    end
    object lkProcAcessoace_descricao: TStringField
      DisplayLabel = 'Acesso'
      FieldName = 'ace_descricao'
    end
  end
  object lkProcUsuarios: TSDQuery
    DatabaseName = 'lookups'
    Options = []
    SessionName = 'SessaoLookups'
    SQL.Strings = (
      'select usu_nome, usu_codigo'
      'from usuarios'
      'order by usu_nome')
    Left = 528
    Top = 448
    object lkProcUsuariosusu_nome: TStringField
      DisplayLabel = 'Usu'#225'rios'
      FieldName = 'usu_nome'
    end
    object lkProcUsuariosusu_codigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'usu_codigo'
      DisplayFormat = '000'
    end
  end
  object lkProcTpTabela: TSDQuery
    DatabaseName = 'lookups'
    Options = []
    SessionName = 'SessaoLookups'
    SQL.Strings = (
      'select tab_id, tab_descricao from tipotabela'
      'order by tab_id')
    Left = 280
    Top = 448
    object lkProcTpTabelatab_id: TIntegerField
      DisplayLabel = 'ID'
      DisplayWidth = 10
      FieldName = 'tab_id'
      DisplayFormat = '00'
      EditFormat = '00'
    end
    object lkProcTpTabelatab_descricao: TStringField
      DisplayLabel = 'Descricao da tabela'
      DisplayWidth = 80
      FieldName = 'tab_descricao'
      Size = 80
    end
  end
  object lkProcExames: TSDQuery
    DatabaseName = 'lookups'
    Options = []
    SessionName = 'SessaoLookups'
    SQL.Strings = (
      
        'select e.exa_id, e.exa_data, e.pac_codigo, p.pac_nome, e.pac_ida' +
        'de, p.pac_dtnasc,'
      
        'e.pac_meses,p.pac_sexo, e.cov_codigo, c.cov_descricao, e.exa_mat' +
        'ricula, e.exa_guia,'
      
        'e.med_codigo, m.med_nome, e.exa_etapa, e.exa_prioridade, e.exa_d' +
        'ataprior,'
      
        'e.exa_obs, e.exa_origem, o.exl_descricao, e.exa_destino, d.exl_d' +
        'escricao,'
      'e.etp_id, t.etp_tipo, e.res_codigo, r.res_nome'
      'from exames e, pacientes p, convenios c, medicos m, examestp t,'
      'responsaveis r, exameslocais o, exameslocais d'
      'where e.pac_codigo = p.pac_codigo'
      'and e.cov_codigo = c.cov_codigo'
      'and e.med_codigo = m.med_codigo'
      'and e.etp_id = t.etp_id'
      'and e.res_codigo = r.res_codigo'
      'and e.exa_origem = o.exl_id'
      'and e.exa_destino = d.exl_id'
      'limit 1')
    Left = 40
    Top = 168
    object lkProcExamesexa_id: TStringField
      DisplayLabel = 'ID'
      DisplayWidth = 11
      FieldName = 'exa_id'
      FixedChar = True
      Size = 10
    end
    object lkProcExamesexa_data: TDateField
      DisplayLabel = 'Data'
      DisplayWidth = 10
      FieldName = 'exa_data'
      DisplayFormat = 'dd/MM/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object lkProcExamespac_nome: TStringField
      DisplayLabel = 'Paciente'
      DisplayWidth = 45
      FieldName = 'pac_nome'
      Size = 80
    end
    object lkProcExamesmed_nome: TStringField
      DisplayLabel = 'M'#233'dico'
      DisplayWidth = 35
      FieldName = 'med_nome'
      Size = 50
    end
    object lkProcExamescov_descricao: TStringField
      DisplayLabel = 'Conv'#234'nio'
      DisplayWidth = 25
      FieldName = 'cov_descricao'
      Size = 30
    end
    object lkProcExamespac_idade: TSmallintField
      DisplayLabel = 'Idade'
      DisplayWidth = 8
      FieldName = 'pac_idade'
    end
    object lkProcExamespac_dtnasc: TDateField
      DisplayLabel = 'Dt. Nasc.'
      DisplayWidth = 10
      FieldName = 'pac_dtnasc'
      DisplayFormat = 'dd/MM/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object lkProcExamespac_sexo: TStringField
      DisplayLabel = 'Sexo'
      DisplayWidth = 1
      FieldName = 'pac_sexo'
      FixedChar = True
      Size = 1
    end
    object lkProcExamesexa_matricula: TStringField
      DisplayLabel = 'Matr'#237'cula'
      DisplayWidth = 20
      FieldName = 'exa_matricula'
    end
    object lkProcExamesexa_guia: TStringField
      DisplayLabel = 'Guia'
      DisplayWidth = 20
      FieldName = 'exa_guia'
    end
    object lkProcExamesexl_descricao: TStringField
      DisplayLabel = 'Origem'
      DisplayWidth = 35
      FieldName = 'exl_descricao'
      Size = 35
    end
    object lkProcExamesexl_descricao_1: TStringField
      DisplayLabel = 'Destino'
      DisplayWidth = 35
      FieldName = 'exl_descricao_1'
      Size = 35
    end
    object lkProcExamesres_nome: TStringField
      DisplayLabel = 'Respons'#225'vel'
      DisplayWidth = 80
      FieldName = 'res_nome'
      Size = 80
    end
    object lkProcExamespac_meses: TStringField
      DisplayLabel = 'Idade/Meses'
      DisplayWidth = 30
      FieldName = 'pac_meses'
      Visible = False
      Size = 30
    end
    object lkProcExamespac_codigo: TIntegerField
      DisplayLabel = 'C'#243'd. Paciente'
      DisplayWidth = 8
      FieldName = 'pac_codigo'
      Visible = False
    end
    object lkProcExamescov_codigo: TIntegerField
      DisplayLabel = 'C'#243'd. Conv'#234'nio'
      DisplayWidth = 10
      FieldName = 'cov_codigo'
      Visible = False
    end
    object lkProcExamesmed_codigo: TIntegerField
      DisplayLabel = 'C'#243'd. M'#233'dico'
      DisplayWidth = 10
      FieldName = 'med_codigo'
      Visible = False
    end
    object lkProcExamesexa_origem: TIntegerField
      DisplayLabel = 'C'#243'd. Origem'
      DisplayWidth = 8
      FieldName = 'exa_origem'
      Visible = False
    end
    object lkProcExamesexa_destino: TIntegerField
      DisplayLabel = 'C'#243'd. Destino'
      DisplayWidth = 8
      FieldName = 'exa_destino'
      Visible = False
    end
    object lkProcExamesetp_id: TIntegerField
      DisplayLabel = 'C'#243'd. Tipo'
      DisplayWidth = 10
      FieldName = 'etp_id'
      Visible = False
      DisplayFormat = '000'
    end
    object lkProcExamesexa_prioridade: TIntegerField
      DisplayLabel = 'Prioridade'
      DisplayWidth = 8
      FieldName = 'exa_prioridade'
      Visible = False
    end
    object lkProcExamesexa_dataprior: TDateField
      DisplayLabel = 'Data prioridade'
      DisplayWidth = 10
      FieldName = 'exa_dataprior'
      Visible = False
      DisplayFormat = 'dd/MM/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object lkProcExamesexa_etapa: TIntegerField
      DisplayWidth = 8
      FieldName = 'exa_etapa'
      Visible = False
      DisplayFormat = '00'
    end
    object lkProcExamesetp_tipo: TStringField
      DisplayLabel = 'Tipo'
      DisplayWidth = 20
      FieldName = 'etp_tipo'
      Visible = False
    end
    object lkProcExamesexa_obs: TStringField
      DisplayLabel = 'Obs.'
      DisplayWidth = 256
      FieldName = 'exa_obs'
      Visible = False
      Size = 256
    end
    object lkProcExamesres_codigo: TIntegerField
      DisplayLabel = 'C'#243'd. Resp.'
      DisplayWidth = 10
      FieldName = 'res_codigo'
      Visible = False
    end
  end
  object lkProcCidades: TSDQuery
    DatabaseName = 'lookups'
    Options = []
    SessionName = 'SessaoLookups'
    SQL.Strings = (
      
        'select cid_codigo, cid_cidade, uf_sigla, cid_ceppadrao from cida' +
        'des'
      'order by cid_cidade')
    Left = 112
    Top = 96
    object lkProcCidadescid_cidade: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'cid_cidade'
      Size = 50
    end
    object lkProcCidadescid_codigo: TIntegerField
      DisplayLabel = 'C'#243'd. Cidade'
      DisplayWidth = 8
      FieldName = 'cid_codigo'
      Visible = False
    end
    object lkProcCidadesuf_sigla: TStringField
      DisplayLabel = 'UF'
      FieldName = 'uf_sigla'
      Size = 2
    end
    object lkProcCidadescid_ceppadrao: TStringField
      FieldName = 'cid_ceppadrao'
      Visible = False
      Size = 9
    end
  end
  object lkProcTpLogradouro: TSDQuery
    DatabaseName = 'lookups'
    Options = []
    SessionName = 'SessaoLookups'
    SQL.Strings = (
      'select tpl_id, tpl_tipo from tplogradouro'
      'order by tpl_tipo')
    Left = 144
    Top = 456
    object lkProcTpLogradourotpl_tipo: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'tpl_tipo'
    end
    object lkProcTpLogradourotpl_id: TIntegerField
      DisplayLabel = 'ID'
      FieldName = 'tpl_id'
    end
  end
  object lkProcResponsaveis: TSDQuery
    DatabaseName = 'lookups'
    Options = []
    SessionName = 'SessaoLookups'
    SQL.Strings = (
      
        'select res_codigo, res_nome, res_titulo, cos_id, res_numconselho' +
        ', cos_uf from responsaveis'
      'order by res_nome')
    Left = 624
    Top = 368
    object lkProcResponsaveisres_nome: TStringField
      DisplayWidth = 80
      FieldName = 'res_nome'
      Size = 80
    end
    object lkProcResponsaveisres_codigo: TIntegerField
      DisplayWidth = 10
      FieldName = 'res_codigo'
    end
    object lkProcResponsaveisres_titulo: TStringField
      DisplayWidth = 5
      FieldName = 'res_titulo'
      Size = 5
    end
    object lkProcResponsaveiscos_id: TIntegerField
      DisplayWidth = 10
      FieldName = 'cos_id'
    end
    object lkProcResponsaveisres_numconselho: TStringField
      DisplayWidth = 10
      FieldName = 'res_numconselho'
      Size = 10
    end
  end
  object lkProcProcedimentos: TSDQuery
    DatabaseName = 'lookups'
    Options = []
    SessionName = 'SessaoLookups'
    SQL.Strings = (
      
        'select prc_tuss, prc_descricao, prc_amr, prc_descant, prc_vlrhor' +
        'a, prc_vlroper,'
      
        'prc_vlrfilme, prc_vlrtotal from procedimentos order by prc_descr' +
        'icao')
    Left = 360
    Top = 376
    object lkProcProcedimentosprc_descricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 80
      FieldName = 'prc_descricao'
      Size = 80
    end
    object lkProcProcedimentosprc_tuss: TIntegerField
      DisplayLabel = 'TUSS'
      DisplayWidth = 10
      FieldName = 'prc_tuss'
    end
    object lkProcProcedimentosprc_amr: TIntegerField
      DisplayLabel = 'AMR'
      DisplayWidth = 10
      FieldName = 'prc_amr'
    end
    object lkProcProcedimentosprc_vlrtotal: TFloatField
      DisplayLabel = 'Vlr. total'
      FieldName = 'prc_vlrtotal'
      Visible = False
      DisplayFormat = '#,###,###,##0.00'
      EditFormat = '#,###,###,##0.00'
    end
  end
  object lkProcConselhos: TSDQuery
    DatabaseName = 'lookups'
    Options = []
    SessionName = 'SessaoLookups'
    SQL.Strings = (
      'select cos_tipo, cos_descricao, cos_codigo'
      'from conselhos'
      'order by cos_tipo')
    Left = 408
    Top = 96
    object lkProcConselhoscos_tipo: TStringField
      DisplayLabel = 'Tipo'
      DisplayWidth = 7
      FieldName = 'cos_tipo'
      Size = 7
    end
    object lkProcConselhoscos_codigo: TIntegerField
      DisplayLabel = 'ID. Conselho'
      DisplayWidth = 10
      FieldName = 'cos_codigo'
    end
    object lkProcConselhoscos_descricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 60
      FieldName = 'cos_descricao'
      Size = 60
    end
  end
  object lkProcCBO: TSDQuery
    DatabaseName = 'lookups'
    Options = []
    SessionName = 'SessaoLookups'
    SQL.Strings = (
      'select cbo_descricao, cbo_codigo'
      'from cbo'
      'order by cbo_descricao')
    Left = 40
    Top = 96
    object lkProcCBOcbo_descricao: TStringField
      DisplayLabel = 'CBO'
      FieldName = 'cbo_descricao'
      Size = 150
    end
    object lkProcCBOcbo_codigo: TIntegerField
      DisplayLabel = 'ID. CBO'
      FieldName = 'cbo_codigo'
    end
  end
  object lkProcParticipacao: TSDQuery
    DatabaseName = 'lookups'
    Options = []
    SessionName = 'SessaoLookups'
    SQL.Strings = (
      'select prt_termo, prt_codigo'
      'from participacao'
      'order by prt_termo')
    Left = 232
    Top = 376
    object lkProcParticipacaoprt_termo: TStringField
      DisplayLabel = 'Termo'
      FieldName = 'prt_termo'
      Size = 30
    end
    object lkProcParticipacaoprt_codigo: TIntegerField
      DisplayLabel = 'ID. Part.'
      FieldName = 'prt_codigo'
    end
  end
  object lkProcTopografias: TSDQuery
    DatabaseName = 'lookups'
    Options = []
    SessionName = 'SessaoLookups'
    SQL.Strings = (
      'select top_id, top_descricao from topografias'
      'order by top_descricao')
    Left = 40
    Top = 456
    object lkProcTopografiastop_descricao: TStringField
      DisplayLabel = 'Topografias'
      DisplayWidth = 50
      FieldName = 'top_descricao'
      Size = 50
    end
    object lkProcTopografiastop_id: TIntegerField
      DisplayLabel = 'ID'
      DisplayWidth = 10
      FieldName = 'top_id'
    end
  end
  object lkProcModMacro: TSDQuery
    DatabaseName = 'lookups'
    Options = []
    SessionName = 'SessaoLookups'
    SQL.Strings = (
      'select lmm_id, lmm_descricao, lmm_modelo from laudosmodmacro'
      'order by lmm_descricao')
    Left = 632
    Top = 296
    object lkProcModMacrolmm_descricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 30
      FieldName = 'lmm_descricao'
      Size = 30
    end
    object lkProcModMacrolmm_id: TIntegerField
      DisplayLabel = 'ID'
      DisplayWidth = 8
      FieldName = 'lmm_id'
      DisplayFormat = '000'
      EditFormat = '000'
    end
    object lkProcModMacrolmm_modelo: TBlobField
      DisplayLabel = 'Modelo'
      FieldName = 'lmm_modelo'
      Visible = False
    end
  end
  object lkProcMovimentos: TSDQuery
    DatabaseName = 'lookups'
    Options = []
    SessionName = 'SessaoLookups'
    SQL.Strings = (
      'select mov_codigo, mov_descricao, mov_tipo from movimentos'
      'order by mov_codigo')
    Left = 368
    Top = 296
    object lkProcMovimentosmov_descricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 20
      FieldName = 'mov_descricao'
    end
    object lkProcMovimentosmov_codigo: TIntegerField
      DisplayLabel = 'ID'
      DisplayWidth = 10
      FieldName = 'mov_codigo'
    end
    object lkProcMovimentosmov_tipo: TStringField
      DisplayLabel = 'Tipo'
      DisplayWidth = 1
      FieldName = 'mov_tipo'
      Size = 1
    end
  end
  object lkProcLaudosModHist: TSDQuery
    DatabaseName = 'lookups'
    Options = []
    SessionName = 'SessaoLookups'
    SQL.Strings = (
      
        'select lmh_id, lmh_descricao, lmh_microscopia, lmh_diagnostico f' +
        'rom laudosmodhist'
      'order by lmh_descricao')
    Left = 464
    Top = 232
    object lkProcLaudosModHistlmh_id: TIntegerField
      DisplayLabel = 'ID'
      FieldName = 'lmh_id'
    end
    object lkProcLaudosModHistlmh_descricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'lmh_descricao'
      Size = 30
    end
  end
  object lkProcLaudosModMacro: TSDQuery
    DatabaseName = 'lookups'
    Options = []
    SessionName = 'SessaoLookups'
    SQL.Strings = (
      'select lmm_id, lmm_descricao from laudosmodmacro')
    Left = 584
    Top = 232
    object lkProcLaudosModMacrolmm_id: TIntegerField
      DisplayLabel = 'ID'
      FieldName = 'lmm_id'
      DisplayFormat = '000'
    end
    object lkProcLaudosModMacrolmm_descricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'lmm_descricao'
      Size = 30
    end
  end
  object lkProcFuncoes: TSDQuery
    DatabaseName = 'lookups'
    Options = []
    SessionName = 'SessaoLookups'
    SQL.Strings = (
      'select fnc_id, fnc_descricao from funcoes')
    Left = 192
    Top = 232
    object lkProcFuncoesfnc_descricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 30
      FieldName = 'fnc_descricao'
      Size = 30
    end
    object lkProcFuncoesfnc_id: TIntegerField
      DisplayLabel = 'ID'
      DisplayWidth = 10
      FieldName = 'fnc_id'
    end
  end
  object lkProcUf: TSDQuery
    DatabaseName = 'lookups'
    Options = []
    SessionName = 'SessaoLookups'
    SQL.Strings = (
      'select * from uf'
      'order by uf_estado')
    Left = 424
    Top = 448
    object lkProcUfuf_sigla: TStringField
      FieldName = 'uf_sigla'
      FixedChar = True
      Size = 2
    end
    object lkProcUfuf_estado: TStringField
      FieldName = 'uf_estado'
      Size = 25
    end
    object lkProcUfuf_codigo: TIntegerField
      FieldName = 'uf_codigo'
    end
  end
  object lkProcLaudosMod: TSDQuery
    DatabaseName = 'lookups'
    Options = []
    SessionName = 'SessaoLookups'
    SQL.Strings = (
      'select * from laudosmod')
    Left = 352
    Top = 232
    object lkProcLaudosModmod_id: TIntegerField
      DisplayLabel = 'ID'
      FieldName = 'mod_id'
      DisplayFormat = '000'
    end
    object lkProcLaudosModmod_descricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'mod_descricao'
      Size = 30
    end
    object lkProcLaudosModmod_modelo: TBlobField
      DisplayLabel = 'Modelo'
      FieldName = 'mod_modelo'
      Visible = False
    end
    object lkProcLaudosModmod_diagnostico: TBlobField
      DisplayLabel = 'Diagn'#243'stico'
      FieldName = 'mod_diagnostico'
      Visible = False
    end
  end
  object lkProcAgenda: TSDQuery
    DatabaseName = 'lookups'
    Options = []
    SessionName = 'SessaoLookups'
    SQL.Strings = (
      'select * from agenda')
    Left = 432
    Top = 16
    object lkProcAgendaage_codigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'age_codigo'
      DisplayFormat = '000'
    end
    object lkProcAgendaage_nome: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'age_nome'
    end
    object lkProcAgendaage_telefone: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'age_telefone'
      EditMask = '(99) 9999-9999;1;_'
      Size = 15
    end
    object lkProcAgendaage_fax: TStringField
      DisplayLabel = 'Fax'
      FieldName = 'age_fax'
      EditMask = '(99) 9999-9999;1;_'
      Size = 15
    end
    object lkProcAgendaage_celular: TStringField
      DisplayLabel = 'Celular'
      FieldName = 'age_celular'
      EditMask = '(99) 9999-9999;1;_'
      Size = 15
    end
    object lkProcAgendaage_email: TStringField
      DisplayLabel = 'e-mail'
      FieldName = 'age_email'
      Size = 40
    end
    object lkProcAgendaage_homepage: TStringField
      DisplayLabel = 'Home page'
      FieldName = 'age_homepage'
      Size = 40
    end
    object lkProcAgendaage_msn: TStringField
      DisplayLabel = 'msn'
      FieldName = 'age_msn'
      Size = 40
    end
    object lkProcAgendaage_skype: TStringField
      DisplayLabel = 'Skype'
      FieldName = 'age_skype'
      Size = 30
    end
  end
  object lkProcBancos: TSDQuery
    DatabaseName = 'lookups'
    Options = []
    SessionName = 'SessaoLookups'
    SQL.Strings = (
      'select * from bancos')
    Left = 504
    Top = 16
    object lkProcBancosban_codigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ban_codigo'
      DisplayFormat = '000'
    end
    object lkProcBancosban_descricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'ban_descricao'
      Size = 50
    end
  end
  object lkProcContas: TSDQuery
    DatabaseName = 'lookups'
    Options = []
    SessionName = 'SessaoLookups'
    SQL.Strings = (
      'select con_descricao, con_codigo, con_obs from contas')
    Left = 528
    Top = 96
    object lkProcContascon_descricao: TStringField
      DisplayLabel = 'Conta'
      DisplayWidth = 15
      FieldName = 'con_descricao'
      Size = 15
    end
    object lkProcContascon_codigo: TIntegerField
      DisplayLabel = 'ID'
      DisplayWidth = 8
      FieldName = 'con_codigo'
    end
    object lkProcContascon_obs: TStringField
      DisplayLabel = 'Obs'
      DisplayWidth = 20
      FieldName = 'con_obs'
    end
  end
  object lkProcFornecedores: TSDQuery
    DatabaseName = 'lookups'
    Options = []
    SessionName = 'SessaoLookups'
    SQL.Strings = (
      'select for_razao, for_codigo, for_cnpj from fornecedores'
      'order by for_razao')
    Left = 32
    Top = 232
    object lkProcFornecedoresfor_razao: TStringField
      DisplayLabel = 'Raz'#227'o social'
      FieldName = 'for_razao'
      Size = 60
    end
    object lkProcFornecedoresfor_codigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'for_codigo'
    end
    object lkProcFornecedoresfor_cnpj: TStringField
      DisplayLabel = 'CNPJ'
      FieldName = 'for_cnpj'
      Size = 18
    end
  end
  object lkProcFuncionarios: TSDQuery
    DatabaseName = 'lookups'
    Options = []
    SessionName = 'SessaoLookups'
    SQL.Strings = (
      'select fun_nome, fun_codigo from funcionarios')
    Left = 120
    Top = 232
    object lkProcFuncionariosfun_nome: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'fun_nome'
      Size = 40
    end
    object lkProcFuncionariosfun_codigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'fun_codigo'
    end
  end
  object lkProcExamesTipoHist: TSDQuery
    DatabaseName = 'lookups'
    Options = []
    SessionName = 'SessaoLookups'
    SQL.Strings = (
      'select eth_descricao, eth_id, eio_id from examestipohist')
    Left = 560
    Top = 168
    object lkProcExamesTipoHisteth_descricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'eth_descricao'
      Size = 50
    end
    object lkProcExamesTipoHisteth_id: TIntegerField
      DisplayLabel = 'ID'
      FieldName = 'eth_id'
    end
    object lkProcExamesTipoHisteio_id: TIntegerField
      FieldName = 'eio_id'
      Visible = False
    end
  end
  object lkProcReceber: TSDQuery
    DatabaseName = 'lookups'
    Options = []
    SessionName = 'SessaoLookups'
    SQL.Strings = (
      'select * from receber where rec_codcliente = -1')
    Left = 488
    Top = 376
    object lkProcReceberrec_emissao: TDateField
      DisplayLabel = 'Emiss'#227'o'
      DisplayWidth = 10
      FieldName = 'rec_emissao'
      EditMask = '!99/99/0000;1;_'
    end
    object lkProcReceberrec_codigo: TIntegerField
      DisplayLabel = 'ID'
      DisplayWidth = 8
      FieldName = 'rec_codigo'
      DisplayFormat = '000'
    end
    object lkProcReceberhis_id: TIntegerField
      DisplayLabel = 'ID Hist.'
      DisplayWidth = 10
      FieldName = 'his_id'
      DisplayFormat = '000'
    end
    object lkProcReceberrec_vencimento: TDateField
      DisplayLabel = 'Vencimento'
      DisplayWidth = 10
      FieldName = 'rec_vencimento'
      EditMask = '!99/99/0000;1;_'
    end
    object lkProcReceberrec_nome: TStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 30
      FieldName = 'rec_nome'
      Size = 80
    end
    object lkProcReceberrec_valor: TFloatField
      DisplayLabel = 'Valor'
      DisplayWidth = 8
      FieldName = 'rec_valor'
      DisplayFormat = '#,###,###,##0.00'
    end
    object lkProcReceberrec_saldo: TFloatField
      DisplayLabel = 'Saldo'
      FieldName = 'rec_saldo'
      Visible = False
      DisplayFormat = '#,###,###,##0.00'
    end
    object lkProcReceberrec_status: TStringField
      DisplayLabel = 'Status'
      FieldName = 'rec_status'
      Visible = False
      FixedChar = True
      Size = 1
    end
  end
  object lkProcCobranca: TSDQuery
    DatabaseName = 'lookups'
    Options = []
    SessionName = 'SessaoLookups'
    SQL.Strings = (
      'select cob_codigo, cob_descricao from cobranca'
      'order by cob_descricao')
    Left = 288
    Top = 96
    object lkProcCobrancacob_descricao: TStringField
      DisplayLabel = 'Cobran'#231'a'
      DisplayWidth = 20
      FieldName = 'cob_descricao'
    end
    object lkProcCobrancacob_codigo: TIntegerField
      DisplayLabel = 'ID'
      DisplayWidth = 10
      FieldName = 'cob_codigo'
      DisplayFormat = '000'
    end
  end
  object lkProcCitosTp: TSDQuery
    DatabaseName = 'lookups'
    Options = []
    SessionName = 'SessaoLookups'
    SQL.Strings = (
      'select etp_id, etp_tipo, etp_abrev from examestp'
      'where etp_id = 0'
      'or etp_id = 1'
      'or etp_id = 5'
      'order by etp_id')
    Left = 592
    Top = 16
    object lkProcCitosTpetp_id: TIntegerField
      DisplayLabel = 'ID'
      DisplayWidth = 10
      FieldName = 'etp_id'
    end
    object lkProcCitosTpetp_tipo: TStringField
      DisplayLabel = 'Tipo'
      DisplayWidth = 20
      FieldName = 'etp_tipo'
    end
    object lkProcCitosTpetp_abrev: TStringField
      FieldName = 'etp_abrev'
      Visible = False
      Size = 1
    end
  end
  object lkProcCIDSubCat: TSDQuery
    DatabaseName = 'lookups'
    Options = []
    SessionName = 'SessaoLookups'
    SQL.Strings = (
      'select'
      'sct_descricao, sct_descabrev, sct_subcat'
      'from cid10subcategorias'
      'order by sct_descricao')
    Left = 456
    Top = 296
    object lkProcCIDSubCatsct_descricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 100
      FieldName = 'sct_descricao'
      Size = 300
    end
    object lkProcCIDSubCatsct_subcat: TStringField
      DisplayLabel = 'ID'
      DisplayWidth = 10
      FieldName = 'sct_subcat'
      Size = 10
    end
    object lkProcCIDSubCatsct_descabrev: TStringField
      DisplayLabel = 'Desc. Abrev.'
      DisplayWidth = 80
      FieldName = 'sct_descabrev'
      Visible = False
      Size = 80
    end
  end
  object lkProcMatCid: TSDQuery
    DatabaseName = 'lookups'
    Options = []
    SessionName = 'SessaoLookups'
    SQL.Strings = (
      'select m.mat_id, m.sct_subcat, c.sct_descabrev, c.sct_descricao'
      'from matcid m, cid10subcategorias c'
      'where m.sct_subcat = c.sct_subcat')
    Left = 688
    Top = 168
    object lkProcMatCidsct_descricao: TStringField
      DisplayLabel = 'CID'
      DisplayWidth = 300
      FieldName = 'sct_descricao'
      Size = 300
    end
    object lkProcMatCidsct_subcat: TStringField
      DisplayLabel = 'ID'
      DisplayWidth = 4
      FieldName = 'sct_subcat'
      Size = 4
    end
    object lkProcMatCidmat_id: TIntegerField
      FieldName = 'mat_id'
      Visible = False
    end
    object lkProcMatCidsct_descabrev: TStringField
      DisplayLabel = 'Desc. Abrev.'
      FieldName = 'sct_descabrev'
      Visible = False
      Size = 80
    end
  end
  object lkProcLaudosPreMod: TSDQuery
    DatabaseName = 'lookups'
    Options = []
    SessionName = 'SessaoLookups'
    SQL.Strings = (
      'select lpm_codigo, lpm_descricao, lpm_modelo, lpm_diagnostico'
      'from laudospremod'
      'order by lpm_codigo')
    Left = 264
    Top = 232
    object lkProcLaudosPreModlpm_descricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 25
      FieldName = 'lpm_descricao'
      Size = 25
    end
    object lkProcLaudosPreModlpm_codigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 10
      FieldName = 'lpm_codigo'
      DisplayFormat = '00'
    end
    object lkProcLaudosPreModlpm_modelo: TBlobField
      DisplayLabel = 'Modelo'
      FieldName = 'lpm_modelo'
      Visible = False
    end
    object lkProcLaudosPreModlpm_diagnostico: TBlobField
      DisplayLabel = 'Diagn'#243'stico'
      FieldName = 'lpm_diagnostico'
      Visible = False
    end
  end
  object lkProcCitofrases: TSDQuery
    DatabaseName = 'lookups'
    Options = []
    SessionName = 'SessaoLookups'
    SQL.Strings = (
      'select * from citofrases'
      'order by ctf_frase')
    Left = 208
    Top = 96
    object lkProcCitofrasesctf_frase: TStringField
      DisplayLabel = 'Frase'
      DisplayWidth = 100
      FieldName = 'ctf_frase'
      Size = 100
    end
    object lkProcCitofrasesctf_id: TIntegerField
      DisplayLabel = 'ID'
      DisplayWidth = 10
      FieldName = 'ctf_id'
    end
  end
end
