inherited dmConsultas: TdmConsultas
  OldCreateOrder = True
  Height = 638
  Width = 878
  inherited database: TSDDatabase
    DatabaseName = 'Consultas'
    Params.Strings = (
      'USER NAME=postgres'
      'PASSWORD=postgres')
    RemoteDatabase = 'localhost:genesis'
    ServerType = stPostgreSQL
    SessionName = 'SessaoConsultas'
  end
  inherited QGeraCodigo: TSDQuery
    DatabaseName = 'consultas'
    SessionName = 'SessaoConsultas'
  end
  inherited QTemp: TSDQuery
    DatabaseName = 'consultas'
    SessionName = 'SessaoConsultas'
  end
  object SessaoConsultas: TSDSession
    Active = True
    SessionName = 'SessaoConsultas'
    Left = 104
    Top = 16
  end
  object SQL: TSDQuery
    DatabaseName = 'consultas'
    Options = []
    SessionName = 'SessaoConsultas'
    Left = 320
    Top = 16
  end
  object qyProcDoencasPac: TSDQuery
    DatabaseName = 'consultas'
    Options = []
    SessionName = 'SessaoConsultas'
    AutoCalcFields = False
    SQL.Strings = (
      'select e.exa_id, d.sct_subcat, c.sct_descabrev'
      'from exames e, examesdoencas d, cid10subcategorias c'
      'where e.exa_id = d.exa_id and d.sct_subcat = c.sct_subcat'
      'and e.pac_codigo ='
      #39'0'#39
      'order by e.exa_data, e.exa_id')
    Left = 136
    Top = 288
    object qyProcDoencasPacexa_id: TStringField
      DisplayLabel = 'ID Exame'
      FieldName = 'exa_id'
      FixedChar = True
      Size = 10
    end
    object qyProcDoencasPacsct_subcat: TStringField
      DisplayLabel = 'Sub-cat.'
      FieldName = 'sct_subcat'
      Size = 4
    end
    object qyProcDoencasPacsct_descabrev: TStringField
      DisplayLabel = 'Descricao'
      FieldName = 'sct_descabrev'
      Size = 80
    end
  end
  object qyConsTpExame: TSDQuery
    DatabaseName = 'consultas'
    Options = []
    SessionName = 'SessaoConsultas'
    SQL.Strings = (
      'select E.exa_id, E.etp_id, T.etp_abrev'
      'from exames E,examestp T '
      'where E.etp_id = T.etp_id')
    Left = 688
    Top = 224
    object qyConsTpExameexa_id: TStringField
      DisplayLabel = 'ID Exame'
      FieldName = 'exa_id'
      Size = 10
    end
    object qyConsTpExameetp_id: TIntegerField
      DisplayLabel = 'ID Tipo'
      FieldName = 'etp_id'
    end
    object qyConsTpExameetp_abrev: TStringField
      DisplayLabel = 'Letra'
      FieldName = 'etp_abrev'
      Size = 1
    end
  end
  object qyAtualizaProced: TSDQuery
    DatabaseName = 'consultas'
    Options = []
    SessionName = 'SessaoConsultas'
    SQL.Strings = (
      
        'select E.exa_data, E.cov_codigo, P.exa_id, P.prc_tuss, P.exp_id,' +
        ' P.exp_quant, '
      'P.exp_unitario, P.exp_total, C.eco_status, C.eco_valor'
      'from examesproced P, exames E, examescob C'
      'where P.exa_id = E.exa_id'
      'and E.cov_codigo = 2'
      'and P.exa_id = C.exa_id'
      'and C.eco_status = false'
      'and E.exa_data >= '#39'01/01/01'#39
      'order by E.exa_id')
    Left = 240
    Top = 288
    object qyAtualizaProcedexa_data: TDateField
      DisplayLabel = 'Data'
      DisplayWidth = 10
      FieldName = 'exa_data'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object qyAtualizaProcedexa_id: TStringField
      DisplayLabel = 'Exame'
      DisplayWidth = 11
      FieldName = 'exa_id'
      Size = 10
    end
    object qyAtualizaProcedprc_tuss: TIntegerField
      DisplayLabel = 'TUSS'
      DisplayWidth = 10
      FieldName = 'prc_tuss'
    end
    object qyAtualizaProcedexp_quant: TIntegerField
      DisplayLabel = 'Quantidade'
      DisplayWidth = 10
      FieldName = 'exp_quant'
    end
    object qyAtualizaProcedexp_unitario: TFloatField
      DisplayLabel = 'Unit'#225'rio'
      DisplayWidth = 10
      FieldName = 'exp_unitario'
      DisplayFormat = '#,###,###,##0.00'
    end
    object qyAtualizaProcedexp_total: TFloatField
      DisplayLabel = 'Total'
      DisplayWidth = 10
      FieldName = 'exp_total'
      DisplayFormat = '#,###,###,##0.00'
    end
    object qyAtualizaProcedeco_valor: TFloatField
      DisplayLabel = 'Vlr tot. Exame'
      DisplayWidth = 10
      FieldName = 'eco_valor'
      DisplayFormat = '#,###,###,##0.00'
    end
    object qyAtualizaProcedcov_codigo: TIntegerField
      DisplayLabel = 'ID Conv'#234'nio'
      FieldName = 'cov_codigo'
      Visible = False
    end
    object qyAtualizaProcedexp_id: TIntegerField
      DisplayLabel = 'ID Proc.'
      FieldName = 'exp_id'
      Visible = False
    end
    object qyAtualizaProcedeco_status: TBooleanField
      DisplayLabel = 'Status'
      FieldName = 'eco_status'
      Visible = False
    end
  end
  object qyConsExamesPac: TSDQuery
    DatabaseName = 'consultas'
    Options = []
    SessionName = 'SessaoConsultas'
    SQL.Strings = (
      'select e.exa_id, d.sct_subcat, c.sct_descabrev'
      'from exames e, examesdoencas d, cid10subcategorias c'
      'where e.exa_id = d.exa_id'
      'and d.sct_subcat = c.sct_subcat'
      'and e.pac_codigo = 0'
      'order by e.exa_data, e.exa_id')
    Left = 368
    Top = 224
    object qyConsExamesPacexa_id: TStringField
      DisplayLabel = 'Exame'
      DisplayWidth = 11
      FieldName = 'exa_id'
      Size = 10
    end
    object qyConsExamesPacsct_subcat: TStringField
      DisplayLabel = 'Sub. Cat.'
      DisplayWidth = 4
      FieldName = 'sct_subcat'
      Size = 4
    end
    object qyConsExamesPacsct_descabrev: TStringField
      DisplayLabel = 'Doen'#231'a'
      DisplayWidth = 50
      FieldName = 'sct_descabrev'
      Size = 80
    end
  end
  object qyProcExames: TSDQuery
    DatabaseName = 'consultas'
    Options = []
    SessionName = 'SessaoConsultas'
    SQL.Strings = (
      
        'select e.exa_id, e.exa_data, e.pac_codigo, p.pac_nome, e.pac_ida' +
        'de,'
      
        'e.pac_meses, e.cov_codigo, c.cov_descricao, e.exa_matricula, e.e' +
        'xa_guia,'
      
        'e.med_codigo, m.med_nome, e.exa_etapa, e.exa_prioridade, e.exa_d' +
        'ataprior,'
      
        'e.exa_obs, e.exa_origem, o.exl_descricao, e.exa_destino, d.exl_d' +
        'escricao, '
      'e.etp_id, t.etp_tipo, e.res_codigo, r.res_nome, p.pac_sexo'
      'from exames e, pacientes p, convenios c, medicos m, examestp t, '
      'responsaveis r, exameslocais o, exameslocais d'
      'where e.pac_codigo = p.pac_codigo'
      'and e.cov_codigo = c.cov_codigo'
      'and e.med_codigo = m.med_codigo'
      'and e.etp_id = t.etp_id'
      'and e.res_codigo = r.res_codigo'
      'and e.exa_origem = o.exl_id'
      'and e.exa_destino = d.exl_id'
      'limit 1')
    Left = 32
    Top = 288
    object qyProcExamesexa_id: TStringField
      DisplayLabel = 'ID Exame'
      FieldName = 'exa_id'
      FixedChar = True
      Size = 10
    end
    object qyProcExamesexa_data: TDateField
      DisplayLabel = 'Data'
      FieldName = 'exa_data'
      DisplayFormat = 'dd/MM/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object qyProcExamespac_codigo: TIntegerField
      DisplayLabel = 'C'#243'd. Pac.'
      FieldName = 'pac_codigo'
    end
    object qyProcExamespac_nome: TStringField
      DisplayLabel = 'Paciente'
      FieldName = 'pac_nome'
      Size = 80
    end
    object qyProcExamespac_idade: TSmallintField
      DisplayLabel = 'Idade'
      FieldName = 'pac_idade'
    end
    object qyProcExamespac_meses: TStringField
      DisplayLabel = 'Meses'
      FieldName = 'pac_meses'
      Size = 30
    end
    object qyProcExamescov_codigo: TIntegerField
      DisplayLabel = 'C'#243'd. Conv.'
      FieldName = 'cov_codigo'
    end
    object qyProcExamescov_descricao: TStringField
      DisplayLabel = 'Conv'#234'nio'
      FieldName = 'cov_descricao'
      Size = 30
    end
    object qyProcExamesexa_matricula: TStringField
      DisplayLabel = 'Matr'#237'cula'
      FieldName = 'exa_matricula'
    end
    object qyProcExamesexa_guia: TStringField
      DisplayLabel = 'Guia'
      FieldName = 'exa_guia'
    end
    object qyProcExamesmed_codigo: TIntegerField
      DisplayLabel = 'C'#243'd. Med.'
      FieldName = 'med_codigo'
    end
    object qyProcExamesmed_nome: TStringField
      DisplayLabel = 'M'#233'dico'
      FieldName = 'med_nome'
      Size = 50
    end
    object qyProcExamesexa_etapa: TIntegerField
      DisplayLabel = 'Etapa'
      FieldName = 'exa_etapa'
    end
    object qyProcExamesexa_prioridade: TIntegerField
      DisplayLabel = 'Prioridade'
      FieldName = 'exa_prioridade'
    end
    object qyProcExamesexa_dataprior: TDateField
      DisplayLabel = 'Data Prior.'
      FieldName = 'exa_dataprior'
      DisplayFormat = 'dd/MM/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object qyProcExamesexa_obs: TStringField
      DisplayLabel = 'Obs.'
      FieldName = 'exa_obs'
      Size = 256
    end
    object qyProcExamesexa_origem: TIntegerField
      DisplayLabel = 'C'#243'd. Origem'
      FieldName = 'exa_origem'
      Visible = False
    end
    object qyProcExamesexl_descricao: TStringField
      DisplayLabel = 'Origem'
      FieldName = 'exl_descricao'
      Size = 35
    end
    object qyProcExamesexa_destino: TIntegerField
      DisplayLabel = 'C'#243'd. Destino'
      FieldName = 'exa_destino'
      Visible = False
    end
    object qyProcExamesexl_descricao_1: TStringField
      DisplayLabel = 'Destino'
      FieldName = 'exl_descricao_1'
      Size = 35
    end
    object qyProcExamesetp_id: TIntegerField
      DisplayLabel = 'C'#243'd. Tipo'
      FieldName = 'etp_id'
      Visible = False
    end
    object qyProcExamesetp_tipo: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'etp_tipo'
    end
    object qyProcExamesres_codigo: TIntegerField
      DisplayLabel = 'C'#243'd. Resp.'
      FieldName = 'res_codigo'
    end
    object qyProcExamesres_nome: TStringField
      DisplayLabel = 'Respons'#225'vel'
      FieldName = 'res_nome'
      Size = 80
    end
    object qyProcExamespac_sexo: TStringField
      DisplayLabel = 'Sexo'
      FieldName = 'pac_sexo'
      FixedChar = True
      Size = 1
    end
  end
  object qyConsPacientesCad: TSDQuery
    DatabaseName = 'consultas'
    Options = []
    SessionName = 'SessaoConsultas'
    SQL.Strings = (
      
        'select pac_codigo as codigo, pac_nome as paciente, pac_dtnasc as' +
        ' nascimento, pac_sexo as sexo from pacientes')
    Left = 496
    Top = 224
    object qyConsPacientesCadcodigo: TIntegerField
      FieldName = 'codigo'
    end
    object qyConsPacientesCadpaciente: TStringField
      FieldName = 'paciente'
      Size = 80
    end
    object qyConsPacientesCadnascimento: TDateField
      FieldName = 'nascimento'
    end
    object qyConsPacientesCadsexo: TStringField
      FieldName = 'sexo'
      Size = 1
    end
  end
  object qyConsMedicosCad: TSDQuery
    DatabaseName = 'consultas'
    Options = []
    SessionName = 'SessaoConsultas'
    SQL.Strings = (
      
        'select med_codigo as codigo, med_nome as medico, med_numconselho' +
        ' as crm,'
      'med_fone telefone'
      'from medicos')
    Left = 616
    Top = 296
  end
  object qyConsDadosReq: TSDQuery
    DatabaseName = 'consultas'
    Options = []
    SessionName = 'SessaoConsultas'
    SQL.Strings = (
      
        'select exa_id, pac_codigo, pac_idade, pac_meses, cov_codigo, exa' +
        '_matricula, '
      'exa_guia from exames')
    Left = 40
    Top = 224
    object qyConsDadosReqexa_id: TStringField
      FieldName = 'exa_id'
      Size = 10
    end
    object qyConsDadosReqpac_codigo: TIntegerField
      FieldName = 'pac_codigo'
    end
    object qyConsDadosReqpac_idade: TSmallintField
      FieldName = 'pac_idade'
    end
    object qyConsDadosReqpac_meses: TStringField
      FieldName = 'pac_meses'
      Size = 30
    end
    object qyConsDadosReqcov_codigo: TIntegerField
      FieldName = 'cov_codigo'
    end
    object qyConsDadosReqexa_matricula: TStringField
      FieldName = 'exa_matricula'
    end
    object qyConsDadosReqexa_guia: TStringField
      FieldName = 'exa_guia'
    end
  end
  object qyConsExames: TSDQuery
    DatabaseName = 'consultas'
    Options = []
    SessionName = 'SessaoConsultas'
    SQL.Strings = (
      
        'select e.exa_id, e.exa_data, e.pac_codigo, p.pac_nome, e.pac_ida' +
        'de,'
      
        'e.pac_meses, e.cov_codigo, c.cov_descricao, e.exa_matricula, e.e' +
        'xa_guia,'
      
        'e.med_codigo, m.med_nome, e.exa_etapa, e.exa_prioridade, e.exa_d' +
        'ataprior,'
      
        'e.exa_obs, e.exa_origem, o.exl_descricao, e.exa_destino, d.exl_d' +
        'escricao, '
      'e.etp_id, t.etp_tipo, e.res_codigo, r.res_nome, p.pac_sexo'
      'from exames e, pacientes p, convenios c, medicos m, examestp t, '
      'responsaveis r, exameslocais o, exameslocais d'
      'where e.pac_codigo = p.pac_codigo'
      'and e.cov_codigo = c.cov_codigo'
      'and e.med_codigo = m.med_codigo'
      'and e.etp_id = t.etp_id'
      'and e.res_codigo = r.res_codigo'
      'and e.exa_origem = o.exl_id'
      'and e.exa_destino = d.exl_id'
      'limit 1')
    Left = 152
    Top = 224
    object qyConsExamesexa_id: TStringField
      DisplayLabel = 'ID Exame'
      FieldName = 'exa_id'
      FixedChar = True
      Size = 10
    end
    object qyConsExamesexa_data: TDateField
      DisplayLabel = 'Data'
      FieldName = 'exa_data'
      DisplayFormat = 'dd/MM/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object qyConsExamespac_codigo: TIntegerField
      DisplayLabel = 'C'#243'd. Pac.'
      FieldName = 'pac_codigo'
    end
    object qyConsExamespac_nome: TStringField
      DisplayLabel = 'Paciente'
      FieldName = 'pac_nome'
      Size = 80
    end
    object qyConsExamespac_idade: TSmallintField
      DisplayLabel = 'Idade'
      FieldName = 'pac_idade'
    end
    object qyConsExamespac_meses: TStringField
      DisplayLabel = 'Meses'
      FieldName = 'pac_meses'
      Size = 30
    end
    object qyConsExamescov_codigo: TIntegerField
      DisplayLabel = 'C'#243'd. Conv.'
      FieldName = 'cov_codigo'
    end
    object qyConsExamescov_descricao: TStringField
      DisplayLabel = 'Conv'#234'nio'
      FieldName = 'cov_descricao'
      Size = 30
    end
    object qyConsExamesexa_matricula: TStringField
      DisplayLabel = 'Matr'#237'cula'
      FieldName = 'exa_matricula'
    end
    object qyConsExamesexa_guia: TStringField
      DisplayLabel = 'Guia'
      FieldName = 'exa_guia'
    end
    object qyConsExamesmed_codigo: TIntegerField
      DisplayLabel = 'C'#243'd. Med.'
      FieldName = 'med_codigo'
    end
    object qyConsExamesmed_nome: TStringField
      DisplayLabel = 'M'#233'dico'
      FieldName = 'med_nome'
      Size = 50
    end
    object qyConsExamesexa_etapa: TIntegerField
      DisplayLabel = 'Etapa'
      FieldName = 'exa_etapa'
    end
    object qyConsExamesexa_prioridade: TIntegerField
      DisplayLabel = 'Prioridade'
      FieldName = 'exa_prioridade'
    end
    object qyConsExamesexa_dataprior: TDateField
      DisplayLabel = 'Data Prior.'
      FieldName = 'exa_dataprior'
      DisplayFormat = 'dd/MM/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object qyConsExamesexa_obs: TStringField
      DisplayLabel = 'Obs.'
      FieldName = 'exa_obs'
      Size = 256
    end
    object qyConsExamesexa_origem: TIntegerField
      DisplayLabel = 'C'#243'd. Origem'
      FieldName = 'exa_origem'
      Visible = False
    end
    object qyConsExamesexl_descricao: TStringField
      DisplayLabel = 'Origem'
      FieldName = 'exl_descricao'
      Size = 35
    end
    object qyConsExamesexa_destino: TIntegerField
      DisplayLabel = 'C'#243'd. Destino'
      FieldName = 'exa_destino'
      Visible = False
    end
    object qyConsExamesexl_descricao_1: TStringField
      DisplayLabel = 'Destino'
      FieldName = 'exl_descricao_1'
      Size = 35
    end
    object qyConsExamesetp_id: TIntegerField
      DisplayLabel = 'C'#243'd. Tipo'
      FieldName = 'etp_id'
      Visible = False
    end
    object qyConsExamesetp_tipo: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'etp_tipo'
    end
    object qyConsExamesres_codigo: TIntegerField
      DisplayLabel = 'C'#243'd. Resp.'
      FieldName = 'res_codigo'
    end
    object qyConsExamesres_nome: TStringField
      DisplayLabel = 'Respons'#225'vel'
      FieldName = 'res_nome'
      Size = 80
    end
    object qyConsExamespac_sexo: TStringField
      DisplayLabel = 'Sexo'
      FieldName = 'pac_sexo'
      FixedChar = True
      Size = 1
    end
  end
  object qyProcMedCRM: TSDQuery
    DatabaseName = 'consultas'
    Options = []
    SessionName = 'SessaoConsultas'
    SQL.Strings = (
      'select med_numconselho, med_codigo, med_nome  from medicos')
    Left = 32
    Top = 368
    object qyProcMedCRMmed_numconselho: TStringField
      FieldName = 'med_numconselho'
      Size = 10
    end
    object qyProcMedCRMmed_codigo: TIntegerField
      FieldName = 'med_codigo'
    end
    object qyProcMedCRMmed_nome: TStringField
      FieldName = 'med_nome'
      Size = 50
    end
  end
  object qyConsNomePacEx: TSDQuery
    DatabaseName = 'consultas'
    Options = []
    SessionName = 'SessaoConsultas'
    SQL.Strings = (
      'select p.pac_nome '
      'from pacientes p, exames e'
      'where '
      'p.pac_codigo = e.pac_codigo'
      'and e.exa_id = '#39'1'#39
      'limit 1')
    Left = 160
    Top = 368
    object qyConsNomePacExpac_nome: TStringField
      DisplayLabel = 'Paciente'
      FieldName = 'pac_nome'
      Size = 80
    end
  end
  object qyConsEnvMail: TSDQuery
    DatabaseName = 'consultas'
    Options = []
    SessionName = 'SessaoConsultas'
    SQL.Strings = (
      'select e.exa_id, e.etp_id, e.cov_codigo, c.cov_descricao,'
      'e.exa_data, e.med_codigo, m.med_nome, e.pac_codigo,'
      
        'p.pac_nome, e.exa_etapa, v.eem_enviado, v.eem_enviar, v.eem_conc' +
        'luido, b.eco_gerarcob'
      
        'from exames e, examesenvmail v, convenios c, medicos m, paciente' +
        's p, examescob b'
      'where e.exa_id = v.exa_id'
      'and e.cov_codigo = c.cov_codigo'
      'and e.med_codigo = m.med_codigo'
      'and e.pac_codigo = p.pac_codigo'
      'and e.exa_id = b.exa_id and b.eco_gerarcob = true'
      'order by e.exa_data')
    UpdateObject = updConsEnvMail
    Left = 552
    Top = 16
    object qyConsEnvMaileem_enviar: TBooleanField
      DisplayLabel = 'Enviar'
      DisplayWidth = 5
      FieldName = 'eem_enviar'
    end
    object qyConsEnvMailexa_id: TStringField
      DisplayLabel = 'ID Exame'
      DisplayWidth = 11
      FieldName = 'exa_id'
      Size = 10
    end
    object qyConsEnvMailexa_data: TDateField
      DisplayLabel = 'Data'
      DisplayWidth = 10
      FieldName = 'exa_data'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object qyConsEnvMailcov_descricao: TStringField
      DisplayLabel = 'Conv'#234'nio'
      DisplayWidth = 20
      FieldName = 'cov_descricao'
    end
    object qyConsEnvMailmed_nome: TStringField
      DisplayLabel = 'M'#233'dico'
      DisplayWidth = 50
      FieldName = 'med_nome'
      Size = 50
    end
    object qyConsEnvMailpac_nome: TStringField
      DisplayLabel = 'Paciente'
      DisplayWidth = 80
      FieldName = 'pac_nome'
      Size = 80
    end
    object qyConsEnvMaileem_enviado: TBooleanField
      DisplayLabel = 'Enviado'
      DisplayWidth = 5
      FieldName = 'eem_enviado'
    end
    object qyConsEnvMailetp_id: TIntegerField
      DisplayLabel = 'C'#243'd. Tp. Exame'
      FieldName = 'etp_id'
      Visible = False
    end
    object qyConsEnvMailcov_codigo: TIntegerField
      DisplayLabel = 'ID Conv'#234'nio'
      FieldName = 'cov_codigo'
      Visible = False
    end
    object qyConsEnvMailmed_codigo: TIntegerField
      DisplayLabel = 'ID M'#233'dico'
      FieldName = 'med_codigo'
      Visible = False
    end
    object qyConsEnvMailpac_codigo: TIntegerField
      DisplayLabel = 'ID Paciente'
      FieldName = 'pac_codigo'
      Visible = False
    end
    object qyConsEnvMailexa_etapa: TIntegerField
      DisplayLabel = 'Etapa'
      FieldName = 'exa_etapa'
      Visible = False
    end
    object qyConsEnvMaileco_gerarcob: TBooleanField
      FieldName = 'eco_gerarcob'
      Visible = False
    end
  end
  object updConsEnvMail: TSDUpdateSQL
    RefreshSQL.Strings = (
      
        'select exa_id, etp_id, cov_codigo, cov_descricao, exa_data, med_' +
        'codigo, med_nome, pac_codigo, pac_nome, exa_etapa, eem_enviado, ' +
        'eem_enviar, eem_concluido, eco_gerarcob'
      'from exames'
      'where'
      '  exa_id = :OLD_exa_id')
    ModifySQL.Strings = (
      'update exames'
      'set'
      '  exa_id = :exa_id,'
      '  etp_id = :etp_id,'
      '  cov_codigo = :cov_codigo,'
      '  cov_descricao = :cov_descricao,'
      '  exa_data = :exa_data,'
      '  med_codigo = :med_codigo,'
      '  med_nome = :med_nome,'
      '  pac_codigo = :pac_codigo,'
      '  pac_nome = :pac_nome,'
      '  exa_etapa = :exa_etapa,'
      '  eem_enviado = :eem_enviado,'
      '  eem_enviar = :eem_enviar,'
      '  eem_concluido = :eem_concluido,'
      '  eco_gerarcob = :eco_gerarcob'
      'where'
      '  exa_id = :OLD_exa_id')
    InsertSQL.Strings = (
      'insert into exames'
      
        '  (exa_id, etp_id, cov_codigo, cov_descricao, exa_data, med_codi' +
        'go, med_nome, pac_codigo, pac_nome, exa_etapa, eem_enviado, eem_' +
        'enviar, eem_concluido, eco_gerarcob)'
      'values'
      
        '  (:exa_id, :etp_id, :cov_codigo, :cov_descricao, :exa_data, :me' +
        'd_codigo, :med_nome, :pac_codigo, :pac_nome, :exa_etapa, :eem_en' +
        'viado, :eem_enviar, :eem_concluido, :eco_gerarcob)')
    DeleteSQL.Strings = (
      'delete from exames'
      'where'
      '  exa_id = :OLD_exa_id')
    Left = 632
    Top = 16
  end
  object qyConsEtapaCito: TSDQuery
    DatabaseName = 'consultas'
    Options = []
    SessionName = 'SessaoConsultas'
    Left = 368
    Top = 288
  end
  object tbExamesCito: TSDTable
    AutoRefresh = True
    DatabaseName = 'consultas'
    Options = []
    SessionName = 'SessaoConsultas'
    Filter = '((etp_id = 0) or (etp_id = 1) or (etp_id = 5))'
    Filtered = True
    IndexFieldNames = 'exa_id'
    TableName = 'exames'
    Left = 376
    Top = 16
    object tbExamesCitoexa_id: TStringField
      DisplayLabel = 'Exame'
      DisplayWidth = 12
      FieldName = 'exa_id'
      Size = 10
    end
    object tbExamesCitoexa_data: TDateField
      DisplayLabel = 'Data'
      DisplayWidth = 10
      FieldName = 'exa_data'
      EditMask = '!99/99/0000;1;_'
    end
    object tbExamesCitoexa_paciente: TStringField
      DisplayLabel = 'Paciente'
      DisplayWidth = 40
      FieldKind = fkLookup
      FieldName = 'exa_paciente'
      LookupDataSet = dmLookups.lkProcPacientes
      LookupKeyFields = 'pac_codigo'
      LookupResultField = 'pac_nome'
      KeyFields = 'pac_codigo'
      Size = 80
      Lookup = True
    end
    object tbExamesCitopac_idade: TSmallintField
      DisplayLabel = 'Idade'
      DisplayWidth = 6
      FieldName = 'pac_idade'
    end
    object tbExamesCitoexa_convenio: TStringField
      DisplayLabel = 'Conv'#234'nio'
      DisplayWidth = 20
      FieldKind = fkLookup
      FieldName = 'exa_convenio'
      LookupDataSet = dmLookups.lkProcConvenios
      LookupKeyFields = 'cov_codigo'
      LookupResultField = 'cov_descricao'
      KeyFields = 'cov_codigo'
      Lookup = True
    end
    object tbExamesCitoexa_medico: TStringField
      DisplayLabel = 'M'#233'dico'
      DisplayWidth = 50
      FieldKind = fkLookup
      FieldName = 'exa_medico'
      LookupDataSet = dmLookups.lkProcMedicos
      LookupKeyFields = 'med_codigo'
      LookupResultField = 'med_nome'
      KeyFields = 'med_codigo'
      Size = 50
      Lookup = True
    end
    object tbExamesCitoexa_dataprior: TDateField
      DisplayLabel = 'Data prev.'
      DisplayWidth = 10
      FieldName = 'exa_dataprior'
    end
    object tbExamesCitoexa_matricula: TStringField
      DisplayLabel = 'Matr'#237'cula'
      DisplayWidth = 20
      FieldName = 'exa_matricula'
    end
    object tbExamesCitoexa_guia: TStringField
      DisplayLabel = 'Guia'
      DisplayWidth = 15
      FieldName = 'exa_guia'
    end
    object tbExamesCitopac_codigo: TIntegerField
      DisplayLabel = 'ID Paciente'
      DisplayWidth = 10
      FieldName = 'pac_codigo'
      Visible = False
    end
    object tbExamesCitocov_codigo: TIntegerField
      DisplayLabel = 'ID Conv'#234'nio'
      DisplayWidth = 10
      FieldName = 'cov_codigo'
      Visible = False
    end
    object tbExamesCitomed_codigo: TIntegerField
      DisplayLabel = 'ID M'#233'dico'
      DisplayWidth = 10
      FieldName = 'med_codigo'
      Visible = False
    end
    object tbExamesCitoexa_origem: TIntegerField
      DisplayLabel = 'Origem'
      DisplayWidth = 10
      FieldName = 'exa_origem'
      Visible = False
    end
    object tbExamesCitoetp_id: TIntegerField
      FieldName = 'etp_id'
      Visible = False
    end
    object tbExamesCitoexa_etapa: TIntegerField
      FieldName = 'exa_etapa'
      Visible = False
    end
  end
  object qyTabelas: TSDQuery
    DatabaseName = 'consultas'
    Options = []
    SessionName = 'SessaoConsultas'
    SQL.Strings = (
      'select tablename from pg_catalog.pg_tables'
      'where schemaname = '#39'public'#39)
    Left = 40
    Top = 72
    object qyTabelastablename: TStringField
      DisplayLabel = 'Tabelas'
      FieldName = 'tablename'
      Size = 63
    end
  end
  object qyCampos: TSDQuery
    DatabaseName = 'consultas'
    Options = []
    SessionName = 'SessaoConsultas'
    SQL.Strings = (
      
        'SELECT * FROM information_schema.columns WHERE table_name = '#39'age' +
        'nda'#39';')
    Left = 104
    Top = 72
    object qyCampostable_catalog: TStringField
      FieldName = 'table_catalog'
      Size = 8191
    end
    object qyCampostable_schema: TStringField
      FieldName = 'table_schema'
      Size = 8191
    end
    object qyCampostable_name: TStringField
      FieldName = 'table_name'
      Size = 8191
    end
    object qyCamposcolumn_name: TStringField
      FieldName = 'column_name'
      Size = 8191
    end
    object qyCamposordinal_position: TIntegerField
      FieldName = 'ordinal_position'
    end
    object qyCamposcolumn_default: TStringField
      FieldName = 'column_default'
      Size = 8191
    end
    object qyCamposis_nullable: TStringField
      FieldName = 'is_nullable'
      Size = 8191
    end
    object qyCamposdata_type: TStringField
      FieldName = 'data_type'
      Size = 8191
    end
    object qyCamposcharacter_maximum_length: TIntegerField
      FieldName = 'character_maximum_length'
    end
    object qyCamposcharacter_octet_length: TIntegerField
      FieldName = 'character_octet_length'
    end
    object qyCamposnumeric_precision: TIntegerField
      FieldName = 'numeric_precision'
    end
    object qyCamposnumeric_precision_radix: TIntegerField
      FieldName = 'numeric_precision_radix'
    end
    object qyCamposnumeric_scale: TIntegerField
      FieldName = 'numeric_scale'
    end
    object qyCamposdatetime_precision: TIntegerField
      FieldName = 'datetime_precision'
    end
    object qyCamposinterval_type: TStringField
      FieldName = 'interval_type'
      Size = 8191
    end
    object qyCamposinterval_precision: TStringField
      FieldName = 'interval_precision'
      Size = 8191
    end
    object qyCamposcharacter_set_catalog: TStringField
      FieldName = 'character_set_catalog'
      Size = 8191
    end
    object qyCamposcharacter_set_schema: TStringField
      FieldName = 'character_set_schema'
      Size = 8191
    end
    object qyCamposcharacter_set_name: TStringField
      FieldName = 'character_set_name'
      Size = 8191
    end
    object qyCamposcollation_catalog: TStringField
      FieldName = 'collation_catalog'
      Size = 8191
    end
    object qyCamposcollation_schema: TStringField
      FieldName = 'collation_schema'
      Size = 8191
    end
    object qyCamposcollation_name: TStringField
      FieldName = 'collation_name'
      Size = 8191
    end
    object qyCamposdomain_catalog: TStringField
      FieldName = 'domain_catalog'
      Size = 8191
    end
    object qyCamposdomain_schema: TStringField
      FieldName = 'domain_schema'
      Size = 8191
    end
    object qyCamposdomain_name: TStringField
      FieldName = 'domain_name'
      Size = 8191
    end
    object qyCamposudt_catalog: TStringField
      FieldName = 'udt_catalog'
      Size = 8191
    end
    object qyCamposudt_schema: TStringField
      FieldName = 'udt_schema'
      Size = 8191
    end
    object qyCamposudt_name: TStringField
      FieldName = 'udt_name'
      Size = 8191
    end
    object qyCamposscope_catalog: TStringField
      FieldName = 'scope_catalog'
      Size = 8191
    end
    object qyCamposscope_schema: TStringField
      FieldName = 'scope_schema'
      Size = 8191
    end
    object qyCamposscope_name: TStringField
      FieldName = 'scope_name'
      Size = 8191
    end
    object qyCamposmaximum_cardinality: TIntegerField
      FieldName = 'maximum_cardinality'
    end
    object qyCamposdtd_identifier: TStringField
      FieldName = 'dtd_identifier'
      Size = 8191
    end
    object qyCamposis_self_referencing: TStringField
      FieldName = 'is_self_referencing'
      Size = 8191
    end
    object qyCamposis_identity: TStringField
      FieldName = 'is_identity'
      Size = 8191
    end
    object qyCamposidentity_generation: TStringField
      FieldName = 'identity_generation'
      Size = 8191
    end
    object qyCamposidentity_start: TStringField
      FieldName = 'identity_start'
      Size = 8191
    end
    object qyCamposidentity_increment: TStringField
      FieldName = 'identity_increment'
      Size = 8191
    end
    object qyCamposidentity_maximum: TStringField
      FieldName = 'identity_maximum'
      Size = 8191
    end
    object qyCamposidentity_minimum: TStringField
      FieldName = 'identity_minimum'
      Size = 8191
    end
    object qyCamposidentity_cycle: TStringField
      FieldName = 'identity_cycle'
      Size = 8191
    end
    object qyCamposis_generated: TStringField
      FieldName = 'is_generated'
      Size = 8191
    end
    object qyCamposgeneration_expression: TStringField
      FieldName = 'generation_expression'
      Size = 8191
    end
    object qyCamposis_updatable: TStringField
      FieldName = 'is_updatable'
      Size = 8191
    end
  end
  object qyTamFisico: TSDQuery
    DatabaseName = 'consultas'
    Options = []
    SessionName = 'SessaoConsultas'
    SQL.Strings = (
      'SELECT esquema, tabela,'
      '       pg_size_pretty(pg_relation_size(esq_tab)) AS tamanho,'
      
        '       pg_size_pretty(pg_total_relation_size(esq_tab)) AS tamanh' +
        'o_total'
      '  FROM (SELECT tablename AS tabela,'
      '               schemaname AS esquema,'
      '               schemaname||'#39'.'#39'||tablename AS esq_tab'
      '          FROM pg_catalog.pg_tables'
      '         WHERE schemaname NOT'
      
        '            IN ('#39'pg_catalog'#39', '#39'information_schema'#39', '#39'pg_toast'#39') ' +
        ') AS x'
      ' ORDER BY pg_total_relation_size(esq_tab) DESC;')
    Left = 176
    Top = 72
    object qyTamFisicotabela: TStringField
      DisplayWidth = 63
      FieldName = 'tabela'
      Size = 63
    end
    object qyTamFisicoesquema: TStringField
      DisplayWidth = 63
      FieldName = 'esquema'
      Visible = False
      Size = 63
    end
    object qyTamFisicotamanho: TMemoField
      FieldName = 'tamanho'
      BlobType = ftMemo
    end
    object qyTamFisicotamanho_total: TMemoField
      FieldName = 'tamanho_total'
      BlobType = ftMemo
    end
  end
  object tbExamesHist: TSDTable
    AutoRefresh = True
    DatabaseName = 'consultas'
    Options = []
    SessionName = 'SessaoConsultas'
    Filter = 'etp_id = 2'
    Filtered = True
    IndexFieldNames = 'exa_id'
    TableName = 'exames'
    Left = 456
    Top = 16
    object tbExamesHistexa_id: TStringField
      DisplayLabel = 'Exame'
      DisplayWidth = 12
      FieldName = 'exa_id'
      Size = 10
    end
    object tbExamesHistexa_data: TDateField
      DisplayLabel = 'Data'
      DisplayWidth = 10
      FieldName = 'exa_data'
      EditMask = '!99/99/0000;1;_'
    end
    object tbExamesHistexa_paciente: TStringField
      DisplayLabel = 'Paciente'
      DisplayWidth = 40
      FieldKind = fkLookup
      FieldName = 'exa_paciente'
      LookupDataSet = dmLookups.lkProcPacientes
      LookupKeyFields = 'pac_codigo'
      LookupResultField = 'pac_nome'
      KeyFields = 'pac_codigo'
      Size = 80
      Lookup = True
    end
    object tbExamesHistpac_idade: TSmallintField
      DisplayLabel = 'Idade'
      DisplayWidth = 6
      FieldName = 'pac_idade'
    end
    object tbExamesHistexa_convenio: TStringField
      DisplayLabel = 'Conv'#234'nio'
      DisplayWidth = 20
      FieldKind = fkLookup
      FieldName = 'exa_convenio'
      LookupDataSet = dmLookups.lkProcConvenios
      LookupKeyFields = 'cov_codigo'
      LookupResultField = 'cov_descricao'
      KeyFields = 'cov_codigo'
      Lookup = True
    end
    object tbExamesHistexa_medico: TStringField
      DisplayLabel = 'M'#233'dico'
      DisplayWidth = 50
      FieldKind = fkLookup
      FieldName = 'exa_medico'
      LookupDataSet = dmLookups.lkProcMedicos
      LookupKeyFields = 'med_codigo'
      LookupResultField = 'med_nome'
      KeyFields = 'med_codigo'
      Size = 50
      Lookup = True
    end
    object tbExamesHistexa_dataprior: TDateField
      DisplayLabel = 'Data prev.'
      DisplayWidth = 10
      FieldName = 'exa_dataprior'
    end
    object tbExamesHistexa_matricula: TStringField
      DisplayLabel = 'Matr'#237'cula'
      DisplayWidth = 20
      FieldName = 'exa_matricula'
    end
    object tbExamesHistexa_guia: TStringField
      DisplayLabel = 'Guia'
      DisplayWidth = 20
      FieldName = 'exa_guia'
    end
    object tbExamesHistpac_codigo: TIntegerField
      DisplayLabel = 'ID Paciente'
      DisplayWidth = 10
      FieldName = 'pac_codigo'
      Visible = False
    end
    object tbExamesHistcov_codigo: TIntegerField
      DisplayLabel = 'ID Conv'#234'nio'
      DisplayWidth = 10
      FieldName = 'cov_codigo'
      Visible = False
    end
    object tbExamesHistmed_codigo: TIntegerField
      DisplayLabel = 'ID M'#233'dico'
      DisplayWidth = 10
      FieldName = 'med_codigo'
      Visible = False
    end
    object tbExamesHistexa_origem: TIntegerField
      DisplayLabel = 'Origem'
      DisplayWidth = 10
      FieldName = 'exa_origem'
      Visible = False
    end
    object tbExamesHistetp_id: TIntegerField
      FieldName = 'etp_id'
      Visible = False
    end
    object tbExamesHistexa_etapa: TIntegerField
      FieldName = 'exa_etapa'
      Visible = False
    end
  end
  object qyRelCorte: TSDQuery
    DatabaseName = 'consultas'
    Options = []
    SessionName = 'SessaoConsultas'
    SQL.Strings = (
      
        'select e.exa_id, e.exa_data, e.exa_prioridade, p.top_id, t.top_d' +
        'escricao,'
      
        'h.eth_id, o.eth_descricao, p.etg_seq, b.ebl_seq, b.ebl_fragmento' +
        's, b.ebl_laminas'
      
        'from exames e, examestop p, topografias t, exameshist h, examest' +
        'ipohist o,examesblocos b'
      'where e.exa_id = p.exa_id'
      'and p.top_id = t.top_id'
      'and e.exa_id = h.exa_id'
      'and h.eth_id = o.eth_id'
      'and e.exa_id = h.exa_id'
      'and b.etg_id = p.etg_id'
      'and p.etg_id = b.etg_id'
      'and e.exa_etapa = 3'
      'and e.etp_id = 2'
      'order by e.exa_id')
    Left = 360
    Top = 360
    object qyRelCorteexa_id: TStringField
      DisplayLabel = 'Exame'
      FieldName = 'exa_id'
      Size = 10
    end
    object qyRelCorteexa_data: TDateField
      DisplayLabel = 'Data'
      FieldName = 'exa_data'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object qyRelCorteexa_prioridade: TIntegerField
      DisplayLabel = 'Prioridade'
      FieldName = 'exa_prioridade'
    end
    object qyRelCortetop_id: TIntegerField
      DisplayLabel = 'ID Top.'
      FieldName = 'top_id'
    end
    object qyRelCortetop_descricao: TStringField
      DisplayLabel = 'Topografia'
      FieldName = 'top_descricao'
      Size = 50
    end
    object qyRelCorteeth_id: TIntegerField
      DisplayLabel = 'ID. exame'
      FieldName = 'eth_id'
    end
    object qyRelCorteeth_descricao: TStringField
      DisplayLabel = 'Exame'
      FieldName = 'eth_descricao'
      Size = 50
    end
    object qyRelCorteetg_seq: TIntegerField
      DisplayLabel = 'Top.'
      FieldName = 'etg_seq'
    end
    object qyRelCorteebl_seq: TIntegerField
      DisplayLabel = 'Seq.'
      FieldName = 'ebl_seq'
    end
    object qyRelCorteebl_fragmentos: TIntegerField
      DisplayLabel = 'Frag.'
      FieldName = 'ebl_fragmentos'
    end
    object qyRelCorteebl_laminas: TIntegerField
      DisplayLabel = 'Lam.'
      FieldName = 'ebl_laminas'
    end
  end
  object qyConsEtapaHist: TSDQuery
    DatabaseName = 'consultas'
    Options = []
    SessionName = 'SessaoConsultas'
    Left = 464
    Top = 288
  end
  object qyRelExames: TSDQuery
    DatabaseName = 'consultas'
    Options = []
    SessionName = 'SessaoConsultas'
    SQL.Strings = (
      
        'select e.exa_id, e.exa_data, t.etp_tipo, c.cov_descricao, m.med_' +
        'nome,'
      'p.pac_nome, v.eem_concluido'
      
        'from exames e, convenios c, medicos m, pacientes p, examestp t, ' +
        'examesenvmail v'
      'where e.exa_id = v.exa_id'
      'and v.eem_concluido = true'
      'and e.cov_codigo = c.cov_codigo'
      'and e.med_codigo = m.med_codigo'
      'and e.pac_codigo = p.pac_codigo'
      'and e.etp_id = t.etp_id'
      'and e.exa_id = '#39'0'#39)
    Left = 32
    Top = 448
    object qyRelExamesexa_id: TStringField
      DisplayLabel = 'ID'
      FieldName = 'exa_id'
      Size = 10
    end
    object qyRelExamesexa_data: TDateField
      DisplayLabel = 'Data'
      FieldName = 'exa_data'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object qyRelExamesetp_tipo: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'etp_tipo'
    end
    object qyRelExamescov_descricao: TStringField
      DisplayLabel = 'Conv'#234'nio'
      FieldName = 'cov_descricao'
    end
    object qyRelExamesmed_nome: TStringField
      DisplayLabel = 'M'#233'dico'
      FieldName = 'med_nome'
      Size = 50
    end
    object qyRelExamespac_nome: TStringField
      DisplayLabel = 'Paciente'
      FieldName = 'pac_nome'
      Size = 80
    end
    object qyRelExameseem_concluido: TBooleanField
      DisplayLabel = 'Conclu'#237'do'
      FieldName = 'eem_concluido'
    end
  end
  object qyRelExamesOrig: TSDQuery
    DatabaseName = 'consultas'
    Options = []
    SessionName = 'SessaoConsultas'
    SQL.Strings = (
      
        'select e.exa_id, e.exa_data, t.etp_tipo, c.cov_descricao, m.med_' +
        'nome,'
      'p.pac_nome, l.exl_descricao, v.eem_concluido'
      
        'from exames e, convenios c, medicos m, pacientes p, examestp t, ' +
        'examesenvmail v,'
      'exameslocais l'
      'where e.exa_id = v.exa_id'
      'and v.eem_concluido = true'
      'and e.cov_codigo = c.cov_codigo'
      'and e.med_codigo = m.med_codigo'
      'and e.pac_codigo = p.pac_codigo'
      'and e.exa_origem = l.exl_id'
      'and e.etp_id = t.etp_id')
    Left = 128
    Top = 448
    object StringField1: TStringField
      DisplayLabel = 'ID'
      FieldName = 'exa_id'
      Size = 10
    end
    object DateField1: TDateField
      DisplayLabel = 'Data'
      FieldName = 'exa_data'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object StringField2: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'etp_tipo'
    end
    object StringField3: TStringField
      DisplayLabel = 'Conv'#234'nio'
      FieldName = 'cov_descricao'
    end
    object StringField4: TStringField
      DisplayLabel = 'M'#233'dico'
      FieldName = 'med_nome'
      Size = 50
    end
    object StringField5: TStringField
      DisplayLabel = 'Paciente'
      FieldName = 'pac_nome'
      Size = 80
    end
    object BooleanField1: TBooleanField
      DisplayLabel = 'Conclu'#237'do'
      FieldName = 'eem_concluido'
    end
    object qyRelExamesOrigexl_descricao: TStringField
      DisplayLabel = 'Origem'
      FieldName = 'exl_descricao'
      Size = 35
    end
  end
  object qyRelListagem: TSDQuery
    DatabaseName = 'consultas'
    Options = []
    SessionName = 'SessaoConsultas'
    SQL.Strings = (
      'select E.exa_id, P.pac_nome, C.cov_descricao, E.exa_data'
      'from exames E, pacientes P, convenios C'
      'where E.pac_codigo = P.pac_codigo'
      'and E.cov_codigo = C.cov_codigo'
      'and E.etp_id = 1'
      'and E.exa_data between '#39'01/01/01'#39' and '#39'01/01/01'#39
      'order by E.exa_id')
    Left = 224
    Top = 448
    object qyRelListagemexa_id: TStringField
      DisplayLabel = 'ID'
      FieldName = 'exa_id'
      Size = 10
    end
    object qyRelListagempac_nome: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'pac_nome'
      Size = 80
    end
    object qyRelListagemcov_descricao: TStringField
      DisplayLabel = 'Conv'#234'nio'
      FieldName = 'cov_descricao'
      Size = 30
    end
    object qyRelListagemexa_data: TDateField
      DisplayLabel = 'Data'
      FieldName = 'exa_data'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
  end
  object qyRelExProced: TSDQuery
    DatabaseName = 'consultas'
    Options = []
    SessionName = 'SessaoConsultas'
    SQL.Strings = (
      
        'select e.exa_data, x.exa_id, x.exp_quant, x.prc_tuss, p.prc_desc' +
        'ricao, x.exp_unitario, x.exp_total'
      'from exames e, examesproced x, procedimentos p'
      'where e.exa_id = x.exa_id'
      'and x.prc_tuss = p.prc_tuss'
      'and e.exa_data >= '#39'01/01/01'#39
      'and e.exa_data <= '#39'01/01/11'#39
      'order by e.exa_data, e.exa_id')
    Left = 536
    Top = 360
    object qyRelExProcedexa_data: TDateField
      DisplayLabel = 'Data'
      FieldName = 'exa_data'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object qyRelExProcedexa_id: TStringField
      DisplayLabel = 'ID Exame'
      FieldName = 'exa_id'
      Size = 10
    end
    object qyRelExProcedexp_quant: TIntegerField
      DisplayLabel = 'Quant.'
      DisplayWidth = 8
      FieldName = 'exp_quant'
      DisplayFormat = '#00'
    end
    object qyRelExProcedprc_tuss: TIntegerField
      DisplayLabel = 'TUSS'
      FieldName = 'prc_tuss'
    end
    object qyRelExProcedprc_descricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'prc_descricao'
      Size = 80
    end
    object qyRelExProcedexp_unitario: TFloatField
      DisplayLabel = 'Unit'#225'rio'
      FieldName = 'exp_unitario'
      DisplayFormat = '#,###,###,##0.00'
    end
    object qyRelExProcedexp_total: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'exp_total'
      DisplayFormat = '#,###,###,##0.00'
    end
  end
  object qyConsSaldoCaixa: TSDQuery
    DatabaseName = 'consultas'
    Options = []
    SessionName = 'SessaoConsultas'
    Left = 40
    Top = 520
  end
  object qyCaixaAgrup: TSDQuery
    DatabaseName = 'consultas'
    Options = []
    SessionName = 'SessaoConsultas'
    SQL.Strings = (
      'select c.mov_codigo, m.mov_descricao, sum(c.cai_valor)'
      'from caixa c, movimentos m'
      'where c.mov_codigo = m.mov_codigo'
      'and c.cai_data  >= '#39'2010/01/01'#39
      'and c.cai_data <= '#39'2015/01/01'#39
      '--and con_codigo = 0'
      'group by c.mov_codigo, m.mov_descricao'
      'order by c.mov_codigo, m.mov_descricao')
    Left = 40
    Top = 152
    object qyCaixaAgrupmov_codigo: TIntegerField
      DisplayLabel = 'C'#243'd. Mov.'
      FieldName = 'mov_codigo'
      DisplayFormat = '00'
    end
    object qyCaixaAgrupmov_descricao: TStringField
      DisplayLabel = 'Plano de contas'
      FieldName = 'mov_descricao'
    end
    object qyCaixaAgrupsum: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'sum'
      DisplayFormat = '#,###,###,##0.00'
    end
  end
  object qySaldos: TSDQuery
    DatabaseName = 'Consultas'
    Options = []
    SessionName = 'SessaoConsultas'
    SQL.Strings = (
      'select '
      'm.con_descricao, c.con_codigo, sum(c.cai_valor)'
      'from caixa c, contas m'
      'where c.con_codigo = m.con_codigo'
      'group by m.con_descricao, c.con_codigo   '
      'order by m.con_descricao, c.con_codigo')
    Left = 256
    Top = 72
    object qySaldoscon_descricao: TStringField
      DisplayLabel = 'Conta'
      FieldName = 'con_descricao'
      Size = 15
    end
    object qySaldoscon_codigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'con_codigo'
    end
    object qySaldossum: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'sum'
      DisplayFormat = '#,###,###,##0.00'
    end
  end
  object qyRelLotesTISS: TSDQuery
    DatabaseName = 'consultas'
    Options = []
    SessionName = 'SessaoConsultas'
    SQL.Strings = (
      
        'select t.rti_id, t.rec_codigo, t.rti_gerado, t.rti_lote, t.rti_n' +
        'guias,'
      'r.rec_vencimento , r.rec_nome, r.rec_valor, r.rec_status'
      'from rectiss t, receber r'
      'where t.rec_codigo = r.rec_codigo'
      'order by t.rti_lote desc')
    Left = 336
    Top = 448
    object qyRelLotesTISSrti_id: TIntegerField
      DisplayLabel = 'ID'
      FieldName = 'rti_id'
      Visible = False
    end
    object qyRelLotesTISSrec_codigo: TIntegerField
      DisplayLabel = 'ID Cobran'#231'a'
      FieldName = 'rec_codigo'
      DisplayFormat = '000000'
    end
    object qyRelLotesTISSrti_gerado: TBooleanField
      DisplayLabel = 'Gerado'
      FieldName = 'rti_gerado'
    end
    object qyRelLotesTISSrti_lote: TIntegerField
      DisplayLabel = 'Lote'
      FieldName = 'rti_lote'
    end
    object qyRelLotesTISSrti_nguias: TIntegerField
      DisplayLabel = 'Guias'
      FieldName = 'rti_nguias'
    end
    object qyRelLotesTISSrec_vencimento: TDateField
      DisplayLabel = 'Vencimento'
      FieldName = 'rec_vencimento'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object qyRelLotesTISSrec_nome: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'rec_nome'
      Size = 80
    end
    object qyRelLotesTISSrec_valor: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'rec_valor'
      DisplayFormat = '#,###,###,##0.00'
      EditFormat = '#,###,###,##0.00'
    end
    object qyRelLotesTISSrec_status: TStringField
      DisplayLabel = 'Status'
      FieldName = 'rec_status'
      Size = 1
    end
  end
  object qyConsExamesConv: TSDQuery
    DatabaseName = 'consultas'
    Options = []
    SessionName = 'SessaoConsultas'
    SQL.Strings = (
      
        'select X.exa_id, C.pac_nome, X.exp_quant, P.prc_descricao, X.exp' +
        '_unitario, X.exp_total'
      'from Exames E, examesproced X, procedimentos P, pacientes C'
      'where E.exa_id = X.exa_id'
      'and E.pac_codigo = C.pac_codigo'
      'and X.prc_tuss = P.prc_tuss'
      'order by exa_id ')
    Left = 256
    Top = 224
    object qyConsExamesConvexa_id: TStringField
      DisplayLabel = 'Exame'
      FieldName = 'exa_id'
      Size = 10
    end
    object qyConsExamesConvpac_nome: TStringField
      DisplayLabel = 'Paciente'
      FieldName = 'pac_nome'
      Size = 80
    end
    object qyConsExamesConvexp_quant: TIntegerField
      DisplayLabel = 'Quantidade'
      FieldName = 'exp_quant'
    end
    object qyConsExamesConvprc_descricao: TStringField
      DisplayLabel = 'Procedimento'
      FieldName = 'prc_descricao'
      Size = 80
    end
    object qyConsExamesConvexp_unitario: TFloatField
      DisplayLabel = 'Unit'#225'rio'
      FieldName = 'exp_unitario'
      DisplayFormat = '#,###,###,##0.00'
      EditFormat = '#,###,###,##0.00'
    end
    object qyConsExamesConvexp_total: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'exp_total'
      DisplayFormat = '#,###,###,##0.00'
      EditFormat = '#,###,###,##0.00'
    end
  end
  object qyConsRecProced: TSDQuery
    DatabaseName = 'consultas'
    Options = []
    SessionName = 'SessaoConsultas'
    SQL.Strings = (
      
        'select X.exa_id, C.pac_nome, X.exp_quant, P.prc_descricao, X.exp' +
        '_unitario, X.exp_total'
      
        'from Exames E, receber R, histrec H, examesproced X, procediment' +
        'os P, pacientes C'
      'where E.exa_id = X.exa_id'
      'and E.pac_codigo = C.pac_codigo'
      'and R.his_id = H.his_id'
      'and H.exa_id = E.exa_id'
      'and R.rec_codigo = 2'
      'and X.prc_tuss = P.prc_tuss'
      'order by exa_id'
      ' ')
    Left = 592
    Top = 224
    object qyConsRecProcedexa_id: TStringField
      FieldName = 'exa_id'
      Size = 10
    end
    object qyConsRecProcedpac_nome: TStringField
      FieldName = 'pac_nome'
      Size = 80
    end
    object qyConsRecProcedexp_quant: TIntegerField
      FieldName = 'exp_quant'
    end
    object qyConsRecProcedprc_descricao: TStringField
      FieldName = 'prc_descricao'
      Size = 80
    end
    object qyConsRecProcedexp_unitario: TFloatField
      FieldName = 'exp_unitario'
    end
    object qyConsRecProcedexp_total: TFloatField
      FieldName = 'exp_total'
    end
  end
  object qyConsCitoEtapas: TSDQuery
    DatabaseName = 'consultas'
    Options = []
    SessionName = 'SessaoConsultas'
    SQL.Strings = (
      'select e.exa_id, e.exa_data, e.etp_id, e.med_codigo, m.med_nome,'
      
        'e.pac_codigo, p.pac_nome, e.cov_codigo, c.cov_descricao, e.exa_e' +
        'tapa,'
      't.cet_descricao'
      'from exames e, convenios c, medicos m, pacientes p, citoetapas t'
      'where e.exa_etapa < 6'
      'and ((e.etp_id = 0) or (e.etp_id = 1) or (e.etp_id = 5))'
      'and c.cov_codigo = e.cov_codigo'
      'and m.med_codigo = e.med_codigo'
      'and p.pac_codigo = e.pac_codigo'
      'and t.cet_id = e.exa_etapa'
      'and e.exa_data <= now'
      'order by e.exa_data, exa_id')
    Left = 120
    Top = 152
    object qyConsCitoEtapasexa_id: TStringField
      DisplayLabel = 'ID'
      DisplayWidth = 11
      FieldName = 'exa_id'
      Size = 10
    end
    object qyConsCitoEtapasexa_data: TDateField
      DisplayLabel = 'Data'
      DisplayWidth = 10
      FieldName = 'exa_data'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/00;1;_'
    end
    object qyConsCitoEtapasmed_nome: TStringField
      DisplayLabel = 'Medico'
      DisplayWidth = 32
      FieldName = 'med_nome'
      Size = 50
    end
    object qyConsCitoEtapaspac_nome: TStringField
      DisplayLabel = 'Paciente'
      DisplayWidth = 30
      FieldName = 'pac_nome'
      Size = 80
    end
    object qyConsCitoEtapascov_descricao: TStringField
      DisplayLabel = 'Convenio'
      DisplayWidth = 18
      FieldName = 'cov_descricao'
    end
    object qyConsCitoEtapasexa_etapa: TIntegerField
      DisplayLabel = 'Etapa'
      DisplayWidth = 5
      FieldName = 'exa_etapa'
    end
    object qyConsCitoEtapascet_descricao: TStringField
      DisplayLabel = 'Etapa'
      DisplayWidth = 18
      FieldName = 'cet_descricao'
    end
    object qyConsCitoEtapasetp_id: TIntegerField
      FieldName = 'etp_id'
      Visible = False
    end
    object qyConsCitoEtapasmed_codigo: TIntegerField
      DisplayLabel = 'ID Medico'
      FieldName = 'med_codigo'
      Visible = False
    end
    object qyConsCitoEtapaspac_codigo: TIntegerField
      DisplayLabel = 'ID Paciente'
      FieldName = 'pac_codigo'
      Visible = False
    end
    object qyConsCitoEtapascov_codigo: TIntegerField
      DisplayLabel = 'ID Convenio'
      FieldName = 'cov_codigo'
      Visible = False
    end
  end
  object qyConsHistoEtapas: TSDQuery
    DatabaseName = 'consultas'
    Options = []
    SessionName = 'SessaoConsultas'
    SQL.Strings = (
      'select e.exa_id, e.exa_data, e.etp_id, e.med_codigo, m.med_nome,'
      
        'e.pac_codigo, p.pac_nome, e.cov_codigo, c.cov_descricao, e.exa_e' +
        'tapa,'
      't.het_descricao'
      
        'from exames e, convenios c, medicos m, pacientes p, histoetapas ' +
        't'
      'where e.exa_etapa < 8'
      'and ((e.etp_id = 2) or (e.etp_id = 3))'
      'and c.cov_codigo = e.cov_codigo'
      'and m.med_codigo = e.med_codigo'
      'and p.pac_codigo = e.pac_codigo'
      'and t.het_id = e.exa_etapa'
      'and e.exa_data <= now'
      'order by e.exa_data, exa_id')
    Left = 376
    Top = 152
    object qyConsHistoEtapasexa_id: TStringField
      DisplayLabel = 'ID Exame'
      DisplayWidth = 11
      FieldName = 'exa_id'
      Size = 10
    end
    object qyConsHistoEtapasexa_data: TDateField
      DisplayLabel = 'Data'
      DisplayWidth = 10
      FieldName = 'exa_data'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object qyConsHistoEtapasmed_nome: TStringField
      DisplayLabel = 'Medico'
      DisplayWidth = 32
      FieldName = 'med_nome'
      Size = 50
    end
    object qyConsHistoEtapaspac_nome: TStringField
      DisplayLabel = 'Paciente'
      DisplayWidth = 30
      FieldName = 'pac_nome'
      Size = 80
    end
    object qyConsHistoEtapascov_descricao: TStringField
      DisplayLabel = 'Convenio'
      DisplayWidth = 18
      FieldName = 'cov_descricao'
    end
    object qyConsHistoEtapasexa_etapa: TIntegerField
      DisplayLabel = 'Etapa'
      DisplayWidth = 5
      FieldName = 'exa_etapa'
    end
    object qyConsHistoEtapashet_descricao: TStringField
      DisplayLabel = 'Etapa'
      DisplayWidth = 18
      FieldName = 'het_descricao'
    end
    object qyConsHistoEtapasetp_id: TIntegerField
      DisplayLabel = 'ID Tipo'
      FieldName = 'etp_id'
      Visible = False
    end
    object qyConsHistoEtapasmed_codigo: TIntegerField
      DisplayLabel = 'ID Medico'
      FieldName = 'med_codigo'
      Visible = False
    end
    object qyConsHistoEtapaspac_codigo: TIntegerField
      DisplayLabel = 'ID Paciente'
      FieldName = 'pac_codigo'
      Visible = False
    end
    object qyConsHistoEtapascov_codigo: TIntegerField
      DisplayLabel = 'ID Convenio'
      FieldName = 'cov_codigo'
      Visible = False
    end
  end
  object qyConsImunoEtapas: TSDQuery
    DatabaseName = 'consultas'
    Options = []
    SessionName = 'SessaoConsultas'
    SQL.Strings = (
      'select e.exa_id, e.exa_data, e.etp_id, e.med_codigo, m.med_nome,'
      
        'e.pac_codigo, p.pac_nome, e.cov_codigo, c.cov_descricao, e.exa_e' +
        'tapa,'
      't.imu_descricao'
      
        'from exames e, convenios c, medicos m, pacientes p, imunoetapas ' +
        't'
      'where e.exa_etapa < 4'
      'and ((e.etp_id = 4) or (e.etp_id = 6))'
      'and c.cov_codigo = e.cov_codigo'
      'and m.med_codigo = e.med_codigo'
      'and p.pac_codigo = e.pac_codigo'
      'and t.imu_id = e.exa_etapa'
      'and e.exa_data <= now'
      'order by e.exa_data, exa_id ')
    Left = 488
    Top = 152
    object qyConsImunoEtapasexa_id: TStringField
      DisplayLabel = 'ID'
      DisplayWidth = 11
      FieldName = 'exa_id'
      Size = 10
    end
    object qyConsImunoEtapasexa_data: TDateField
      DisplayLabel = 'Data'
      DisplayWidth = 10
      FieldName = 'exa_data'
      DisplayFormat = 'dd/MM/yyyy'
    end
    object qyConsImunoEtapasmed_nome: TStringField
      DisplayLabel = 'Medico'
      DisplayWidth = 32
      FieldName = 'med_nome'
      Size = 50
    end
    object qyConsImunoEtapaspac_nome: TStringField
      DisplayLabel = 'Paciente'
      DisplayWidth = 30
      FieldName = 'pac_nome'
      Size = 80
    end
    object qyConsImunoEtapascov_descricao: TStringField
      DisplayLabel = 'Convenio'
      DisplayWidth = 18
      FieldName = 'cov_descricao'
      Size = 30
    end
    object qyConsImunoEtapasexa_etapa: TIntegerField
      DisplayLabel = 'Etapa'
      DisplayWidth = 5
      FieldName = 'exa_etapa'
    end
    object qyConsImunoEtapasimu_descricao: TStringField
      DisplayLabel = 'Etapa'
      DisplayWidth = 18
      FieldName = 'imu_descricao'
    end
    object qyConsImunoEtapasetp_id: TIntegerField
      FieldName = 'etp_id'
      Visible = False
    end
    object qyConsImunoEtapasmed_codigo: TIntegerField
      FieldName = 'med_codigo'
      Visible = False
    end
    object qyConsImunoEtapaspac_codigo: TIntegerField
      FieldName = 'pac_codigo'
      Visible = False
    end
    object qyConsImunoEtapascov_codigo: TIntegerField
      FieldName = 'cov_codigo'
      Visible = False
    end
  end
  object qyConsDivExames: TSDQuery
    AutoRefresh = True
    DatabaseName = 'consultas'
    Options = []
    SessionName = 'SessaoConsultas'
    OnUpdateError = qyConsDivExamesUpdateError
    BeforePost = qyConsDivExamesBeforePost
    AfterPost = qyConsDivExamesAfterPost
    OnPostError = qyConsDivExamesPostError
    CachedUpdates = False
    SQL.Strings = (
      
        'select e.exa_id, e.exa_data, e.pac_codigo, p.pac_nome, p.pac_dtn' +
        'asc,'
      
        'e.pac_idade, e.pac_meses, e.cov_codigo, c.cov_descricao, e.exa_m' +
        'atricula, e.exa_guia,'
      
        'e.med_codigo, m.med_nome, e.exa_etapa, e.exa_prioridade, e.exa_d' +
        'ataprior, e.exa_obs,'
      
        'e.exa_origem, O.exl_descricao, e.exa_destino, e.etp_id, e.res_co' +
        'digo'
      
        'from exames E, pacientes P, medicos M, convenios C, exameslocais' +
        ' O'
      'where E.pac_codigo = P.pac_codigo'
      'and E.med_codigo = M.med_codigo'
      'and E.cov_codigo = C.cov_codigo'
      'and E.exa_origem = O.exl_id'
      'limit 1')
    UpdateObject = updConsDivExames
    Left = 424
    Top = 72
    object qyConsDivExamesexa_id: TStringField
      DisplayLabel = 'ID'
      DisplayWidth = 12
      FieldName = 'exa_id'
      FixedChar = True
      Size = 10
    end
    object qyConsDivExamesexa_data: TDateField
      DisplayLabel = 'Data'
      DisplayWidth = 10
      FieldName = 'exa_data'
    end
    object qyConsDivExamespac_nome: TStringField
      DisplayLabel = 'Paciente'
      DisplayWidth = 50
      FieldName = 'pac_nome'
      Size = 80
    end
    object qyConsDivExamespac_codigo: TIntegerField
      DisplayLabel = 'C'#243'd.'
      DisplayWidth = 6
      FieldName = 'pac_codigo'
    end
    object qyConsDivExamespac_dtnasc: TDateField
      DisplayLabel = 'Dt. Nasc.'
      DisplayWidth = 10
      FieldName = 'pac_dtnasc'
    end
    object qyConsDivExamescov_descricao: TStringField
      DisplayLabel = 'Conv'#234'nio'
      DisplayWidth = 30
      FieldName = 'cov_descricao'
      Size = 30
    end
    object qyConsDivExamespac_idade: TSmallintField
      DisplayLabel = 'Idade'
      DisplayWidth = 8
      FieldName = 'pac_idade'
    end
    object qyConsDivExamesmed_nome: TStringField
      DisplayLabel = 'M'#233'dico'
      DisplayWidth = 50
      FieldName = 'med_nome'
      Size = 50
    end
    object qyConsDivExamesexa_matricula: TStringField
      DisplayLabel = 'Matr'#237'cula'
      DisplayWidth = 20
      FieldName = 'exa_matricula'
    end
    object qyConsDivExamesexa_guia: TStringField
      DisplayLabel = 'Guia'
      DisplayWidth = 10
      FieldName = 'exa_guia'
    end
    object qyConsDivExamesexl_descricao: TStringField
      DisplayLabel = 'Origem'
      DisplayWidth = 35
      FieldName = 'exl_descricao'
      Size = 35
    end
    object qyConsDivExamesexa_origem: TIntegerField
      DisplayLabel = 'C'#243'd. Origem'
      DisplayWidth = 8
      FieldName = 'exa_origem'
    end
    object qyConsDivExamesexa_destino: TIntegerField
      DisplayLabel = 'C'#243'd. Destino'
      DisplayWidth = 8
      FieldName = 'exa_destino'
    end
    object qyConsDivExamesetp_id: TIntegerField
      DisplayLabel = 'C'#243'd. Tipo'
      DisplayWidth = 10
      FieldName = 'etp_id'
    end
    object qyConsDivExamesexa_prioridade: TIntegerField
      DisplayLabel = 'Prioridade'
      DisplayWidth = 8
      FieldName = 'exa_prioridade'
    end
    object qyConsDivExamesexa_dataprior: TDateField
      DisplayLabel = 'Data prioridade'
      DisplayWidth = 10
      FieldName = 'exa_dataprior'
    end
    object qyConsDivExamesexa_etapa: TIntegerField
      DisplayLabel = 'Etapa'
      DisplayWidth = 5
      FieldName = 'exa_etapa'
    end
    object qyConsDivExamespac_meses: TStringField
      DisplayLabel = 'Idade/Meses'
      DisplayWidth = 30
      FieldName = 'pac_meses'
      Visible = False
      Size = 30
    end
    object qyConsDivExamescov_codigo: TIntegerField
      FieldName = 'cov_codigo'
      Visible = False
    end
    object qyConsDivExamesmed_codigo: TIntegerField
      FieldName = 'med_codigo'
      Visible = False
    end
    object qyConsDivExamesexa_obs: TStringField
      FieldName = 'exa_obs'
      Visible = False
      Size = 256
    end
    object qyConsDivExamesres_codigo: TIntegerField
      DisplayLabel = 'C'#243'd. Resp.'
      FieldName = 'res_codigo'
      Visible = False
    end
  end
  object qyConsLogs: TSDQuery
    DatabaseName = 'consultas'
    Options = []
    SessionName = 'SessaoConsultas'
    Left = 504
    Top = 72
  end
  object qyConsEtapaExame: TSDQuery
    DatabaseName = 'consultas'
    Options = []
    SessionName = 'SessaoConsultas'
    Left = 592
    Top = 72
  end
  object qyConsUltAlt: TSDQuery
    DatabaseName = 'consultas'
    Options = []
    SessionName = 'SessaoConsultas'
    Left = 680
    Top = 72
  end
  object qyIntegridade: TSDQuery
    DatabaseName = 'consultas'
    Options = []
    SessionName = 'SessaoConsultas'
    SQL.Strings = (
      'select exa_id, exa_data from exames')
    Left = 680
    Top = 152
    object qyIntegridadeexa_id: TStringField
      FieldName = 'exa_id'
      Size = 10
    end
    object qyIntegridadeexa_data: TDateField
      FieldName = 'exa_data'
    end
  end
  object qyExamesSolic: TSDQuery
    DatabaseName = 'consultas'
    Options = []
    SessionName = 'SessaoConsultas'
    Left = 456
    Top = 360
  end
  object qyConsQuantEx: TSDQuery
    DatabaseName = 'consultas'
    Options = []
    SessionName = 'SessaoConsultas'
    SQL.Strings = (
      'select exa_data, count(exa_id)'
      'from exames'
      'group by exa_data'
      'order by exa_data'
      ' '
      ' ')
    Left = 592
    Top = 152
    object qyConsQuantExexa_data: TDateField
      DisplayLabel = 'Data'
      DisplayWidth = 10
      FieldName = 'exa_data'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object qyConsQuantExcount: TLargeintField
      DisplayLabel = 'Quant.'
      DisplayWidth = 10
      FieldName = 'count'
    end
  end
  object qyConsPagar: TSDQuery
    DatabaseName = 'consultas'
    Options = []
    SessionName = 'SessaoConsultas'
    SQL.Strings = (
      
        'select pag_nf, pag_parcela, for_codigo, pag_emissao, pag_vencime' +
        'nto, pag_valor,'
      
        'pag_acrescimo, pag_desconto, pag_pago, pag_saldo, pag_status fro' +
        'm pagar')
    Left = 264
    Top = 368
    object qyConsPagarpag_vencimento: TDateField
      DisplayLabel = 'Vencimento'
      DisplayWidth = 10
      FieldName = 'pag_vencimento'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object qyConsPagarpag_nf: TIntegerField
      DisplayLabel = 'NF'
      DisplayWidth = 8
      FieldName = 'pag_nf'
      DisplayFormat = '000000'
    end
    object qyConsPagarpag_parcela: TIntegerField
      DisplayLabel = 'Parc.'
      DisplayWidth = 6
      FieldName = 'pag_parcela'
      DisplayFormat = '00'
    end
    object qyConsPagarpag_fornecedor: TStringField
      DisplayLabel = 'Fornecedor'
      DisplayWidth = 36
      FieldKind = fkLookup
      FieldName = 'pag_fornecedor'
      LookupDataSet = dmLookups.lkProcFornecedores
      LookupKeyFields = 'for_codigo'
      LookupResultField = 'for_razao'
      KeyFields = 'for_codigo'
      Size = 50
      Lookup = True
    end
    object qyConsPagarpag_valor: TFloatField
      DisplayLabel = 'Valor'
      DisplayWidth = 10
      FieldName = 'pag_valor'
      DisplayFormat = '#,###,###,##0.00'
    end
    object qyConsPagarpag_acrescimo: TFloatField
      DisplayLabel = 'Acr'#233'scimo'
      DisplayWidth = 10
      FieldName = 'pag_acrescimo'
      DisplayFormat = '#,###,###,##0.00'
    end
    object qyConsPagarpag_desconto: TFloatField
      DisplayLabel = 'Desconto'
      DisplayWidth = 10
      FieldName = 'pag_desconto'
      DisplayFormat = '#,###,###,##0.00'
    end
    object qyConsPagarpag_pago: TFloatField
      DisplayLabel = 'Pago'
      DisplayWidth = 10
      FieldName = 'pag_pago'
      DisplayFormat = '#,###,###,##0.00'
    end
    object qyConsPagarpag_saldo: TFloatField
      DisplayLabel = 'Saldo'
      DisplayWidth = 10
      FieldName = 'pag_saldo'
      DisplayFormat = '#,###,###,##0.00'
    end
    object qyConsPagarpag_emissao: TDateField
      DisplayLabel = 'Emiss'#227'o'
      DisplayWidth = 10
      FieldName = 'pag_emissao'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object qyConsPagarfor_codigo: TIntegerField
      DisplayLabel = 'C'#243'd. Fornecedor'
      FieldName = 'for_codigo'
      Visible = False
    end
    object qyConsPagarpag_status: TStringField
      DisplayLabel = 'Status'
      FieldName = 'pag_status'
      Visible = False
      Size = 1
    end
  end
  object qyConsPendTISS: TSDQuery
    DatabaseName = 'consultas'
    Options = []
    SessionName = 'SessaoConsultas'
    SQL.Strings = (
      
        'select T.exa_id, E.exa_data, P.pac_nome, M.med_nome, C.cov_descr' +
        'icao, T.tpd_descricao, E.etp_id'
      'from tisspend T, exames E, pacientes P, medicos M, convenios C'
      'where T.exa_id = E.exa_id'
      'and E.pac_codigo = P.pac_codigo'
      'and E.med_codigo = M.med_codigo'
      'and E.cov_codigo = C.cov_codigo'
      'order by E.exa_id, P.pac_nome'
      ' ')
    Left = 456
    Top = 440
    object qyConsPendTISSexa_id: TStringField
      DisplayLabel = 'Exame'
      DisplayWidth = 11
      FieldName = 'exa_id'
      Size = 10
    end
    object qyConsPendTISSexa_data: TDateField
      DisplayLabel = 'Data'
      DisplayWidth = 10
      FieldName = 'exa_data'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object qyConsPendTISStpd_descricao: TStringField
      DisplayLabel = 'Pend'#234'ncia'
      DisplayWidth = 80
      FieldName = 'tpd_descricao'
      Size = 80
    end
    object qyConsPendTISSpac_nome: TStringField
      DisplayLabel = 'Paciente'
      DisplayWidth = 30
      FieldName = 'pac_nome'
      Size = 80
    end
    object qyConsPendTISSmed_nome: TStringField
      DisplayLabel = 'M'#233'dico'
      DisplayWidth = 30
      FieldName = 'med_nome'
      Size = 50
    end
    object qyConsPendTISScov_descricao: TStringField
      DisplayLabel = 'Conv'#234'nio'
      DisplayWidth = 30
      FieldName = 'cov_descricao'
      Size = 30
    end
    object qyConsPendTISSetp_id: TIntegerField
      DisplayLabel = 'ID Tipo'
      FieldName = 'etp_id'
      Visible = False
    end
  end
  object qyConsGeraCob: TSDQuery
    AutoRefresh = True
    DatabaseName = 'consultas'
    Options = []
    SessionName = 'SessaoConsultas'
    SQL.Strings = (
      
        'select c.exa_id, e.cov_codigo, e.pac_codigo, e.med_codigo, e.exa' +
        '_guia,'
      
        'e.etp_id, c.eco_valor,  e.exa_etapa, c.eco_status, c.eco_gerarco' +
        'b, c.eco_vlrpago'
      'from examescob c, exames e'
      'where e.exa_id = c.exa_id'
      'and c.eco_status = FALSE')
    UpdateObject = updConsGeraCob
    Left = 616
    Top = 448
    object qyConsGeraCobexa_id: TStringField
      DisplayLabel = 'ID Exame'
      DisplayWidth = 12
      FieldName = 'exa_id'
      ReadOnly = True
      Size = 10
    end
    object qyConsGeraCobexa_paciente: TStringField
      DisplayLabel = 'Paciente'
      DisplayWidth = 43
      FieldKind = fkLookup
      FieldName = 'exa_paciente'
      LookupDataSet = dmLookups.lkProcPacientes
      LookupKeyFields = 'pac_codigo'
      LookupResultField = 'pac_nome'
      KeyFields = 'pac_codigo'
      ReadOnly = True
      Size = 50
      Lookup = True
    end
    object qyConsGeraCobexa_medico: TStringField
      DisplayLabel = 'M'#233'dico'
      DisplayWidth = 42
      FieldKind = fkLookup
      FieldName = 'exa_medico'
      LookupDataSet = dmLookups.lkProcMedicos
      LookupKeyFields = 'med_codigo'
      LookupResultField = 'med_nome'
      KeyFields = 'med_codigo'
      ReadOnly = True
      Size = 50
      Lookup = True
    end
    object qyConsGeraCobeco_valor: TFloatField
      DisplayLabel = 'Valor'
      DisplayWidth = 9
      FieldName = 'eco_valor'
      ReadOnly = True
      DisplayFormat = '#,###,###,##0.00'
      EditFormat = '#,###,###,##0.00'
    end
    object qyConsGeraCobexa_guia: TStringField
      DisplayLabel = 'Guia'
      DisplayWidth = 12
      FieldName = 'exa_guia'
    end
    object qyConsGeraCobexa_convenio: TStringField
      DisplayLabel = 'Conv'#234'nio'
      DisplayWidth = 25
      FieldKind = fkLookup
      FieldName = 'exa_convenio'
      LookupDataSet = dmLookups.lkProcConvenios
      LookupKeyFields = 'cov_codigo'
      LookupResultField = 'cov_descricao'
      KeyFields = 'cov_codigo'
      ReadOnly = True
      Size = 50
      Lookup = True
    end
    object qyConsGeraCobeco_gerarcob: TBooleanField
      DisplayLabel = 'Cobrar'
      DisplayWidth = 6
      FieldName = 'eco_gerarcob'
      Visible = False
    end
    object qyConsGeraCobeco_vlrpago: TFloatField
      FieldName = 'eco_vlrpago'
      Visible = False
    end
    object qyConsGeraCobeco_status: TBooleanField
      DisplayLabel = 'Gerar'
      DisplayWidth = 6
      FieldName = 'eco_status'
      ReadOnly = True
      Visible = False
    end
    object qyConsGeraCobpac_codigo: TIntegerField
      FieldName = 'pac_codigo'
      ReadOnly = True
      Visible = False
    end
    object qyConsGeraCobmed_codigo: TIntegerField
      FieldName = 'med_codigo'
      ReadOnly = True
      Visible = False
    end
    object qyConsGeraCobcov_codigo: TIntegerField
      FieldName = 'cov_codigo'
      ReadOnly = True
      Visible = False
    end
    object qyConsGeraCobetp_id: TIntegerField
      FieldName = 'etp_id'
      ReadOnly = True
      Visible = False
    end
    object qyConsGeraCobexa_etapa: TIntegerField
      DisplayLabel = 'Etapa'
      FieldName = 'exa_etapa'
      ReadOnly = True
      Visible = False
    end
  end
  object qyConsReceber: TSDQuery
    DatabaseName = 'consultas'
    Options = []
    SessionName = 'SessaoConsultas'
    SQL.Strings = (
      'select'
      
        'rec_codigo, rec_emissao, rec_vencimento, cov_codigo, rec_codclie' +
        'nte, rec_nome,'
      
        'rec_valor, rec_acrescimo, rec_desconto, rec_pago, rec_saldo, rec' +
        '_status, his_id, cob_codigo'
      'from receber'
      ' ')
    Left = 136
    Top = 520
    object qyConsReceberrec_emissao: TDateField
      DisplayLabel = 'Emiss'#227'o'
      DisplayWidth = 10
      FieldName = 'rec_emissao'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object qyConsReceberrec_vencimento: TDateField
      DisplayLabel = 'Vencimento'
      DisplayWidth = 10
      FieldName = 'rec_vencimento'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object qyConsReceberrec_nome: TStringField
      DisplayLabel = 'Cliente'
      DisplayWidth = 30
      FieldName = 'rec_nome'
      Size = 80
    end
    object qyConsReceberrec_codigo: TIntegerField
      DisplayLabel = 'ID'
      DisplayWidth = 6
      FieldName = 'rec_codigo'
      DisplayFormat = '000000'
    end
    object qyConsReceberhis_id: TIntegerField
      DisplayLabel = 'Hist'#243'rico'
      DisplayWidth = 6
      FieldName = 'his_id'
      DisplayFormat = '000000'
    end
    object qyConsReceberrec_valor: TFloatField
      DisplayLabel = 'Valor'
      DisplayWidth = 8
      FieldName = 'rec_valor'
      DisplayFormat = '#,###,###,##0.00'
      EditFormat = '#,###,###,##0.00'
    end
    object qyConsReceberrec_acrescimo: TFloatField
      DisplayLabel = 'Acr'#233'scimo'
      DisplayWidth = 8
      FieldName = 'rec_acrescimo'
      DisplayFormat = '#,###,###,##0.00'
      EditFormat = '#,###,###,##0.00'
    end
    object qyConsReceberrec_desconto: TFloatField
      DisplayLabel = 'Desconto'
      DisplayWidth = 8
      FieldName = 'rec_desconto'
      DisplayFormat = '#,###,###,##0.00'
      EditFormat = '#,###,###,##0.00'
    end
    object qyConsReceberrec_pago: TFloatField
      DisplayLabel = 'Pago'
      DisplayWidth = 8
      FieldName = 'rec_pago'
      DisplayFormat = '#,###,###,##0.00'
      EditFormat = '#,###,###,##0.00'
    end
    object qyConsReceberrec_saldo: TFloatField
      DisplayLabel = 'Saldo'
      DisplayWidth = 8
      FieldName = 'rec_saldo'
      DisplayFormat = '#,###,###,##0.00'
      EditFormat = '#,###,###,##0.00'
    end
    object qyConsReceberrec_status: TStringField
      DisplayLabel = 'Status'
      DisplayWidth = 1
      FieldName = 'rec_status'
      Size = 1
    end
    object qyConsRecebercov_codigo: TIntegerField
      DisplayLabel = 'ID Conv'#234'nio'
      FieldName = 'cov_codigo'
      Visible = False
    end
    object qyConsReceberrec_codcliente: TIntegerField
      DisplayLabel = 'ID Cliente'
      FieldName = 'rec_codcliente'
      Visible = False
    end
    object qyConsRecebercob_codigo: TIntegerField
      DisplayLabel = 'C'#243'd. Cobran'#231'a'
      FieldName = 'cob_codigo'
      Visible = False
    end
  end
  object qyConsRecExames: TSDQuery
    DatabaseName = 'consultas'
    Options = []
    SessionName = 'SessaoConsultas'
    SQL.Strings = (
      'select'
      
        'his_id, his_item, his_data, exa_id, cov_codigo, pac_codigo, his_' +
        'valor, '
      'his_gercob, med_codigo, his_status'
      'from histrec')
    Left = 232
    Top = 520
    object qyConsRecExameshis_item: TIntegerField
      DisplayLabel = 'Item'
      DisplayWidth = 4
      FieldName = 'his_item'
      DisplayFormat = '000'
      EditFormat = '000'
    end
    object qyConsRecExamesexa_id: TStringField
      DisplayLabel = 'Exame'
      DisplayWidth = 11
      FieldName = 'exa_id'
      Size = 10
    end
    object qyConsRecExameshis_paciente: TStringField
      DisplayLabel = 'Paciente'
      DisplayWidth = 30
      FieldKind = fkLookup
      FieldName = 'his_paciente'
      LookupDataSet = dmLookups.lkProcPacientes
      LookupKeyFields = 'pac_codigo'
      LookupResultField = 'pac_nome'
      KeyFields = 'pac_codigo'
      Size = 50
      Lookup = True
    end
    object qyConsRecExameshis_valor: TFloatField
      DisplayLabel = 'Valor'
      DisplayWidth = 8
      FieldName = 'his_valor'
      DisplayFormat = '#,###,###,##0.00'
      EditFormat = '#,###,###,##0.00'
    end
    object qyConsRecExameshis_status: TStringField
      DisplayLabel = 'Status'
      DisplayWidth = 1
      FieldName = 'his_status'
      Size = 1
    end
    object qyConsRecExameshis_medico: TStringField
      DisplayLabel = 'M'#233'dico'
      DisplayWidth = 30
      FieldKind = fkLookup
      FieldName = 'his_medico'
      LookupDataSet = dmLookups.lkProcMedicos
      LookupKeyFields = 'med_codigo'
      LookupResultField = 'med_nome'
      KeyFields = 'med_codigo'
      Size = 50
      Lookup = True
    end
    object qyConsRecExameshis_id: TIntegerField
      DisplayLabel = 'ID Hist'#243'rico'
      FieldName = 'his_id'
      Visible = False
    end
    object qyConsRecExameshis_data: TDateField
      DisplayLabel = 'Data'
      FieldName = 'his_data'
      Visible = False
    end
    object qyConsRecExamescov_codigo: TIntegerField
      DisplayLabel = 'ID Conv'#234'nio'
      FieldName = 'cov_codigo'
      Visible = False
    end
    object qyConsRecExamespac_codigo: TIntegerField
      DisplayLabel = 'ID Paciente'
      FieldName = 'pac_codigo'
      Visible = False
    end
    object qyConsRecExameshis_gercob: TStringField
      DisplayLabel = 'Cobran'#231'a'
      FieldName = 'his_gercob'
      Visible = False
      Size = 1
    end
    object qyConsRecExamesmed_codigo: TIntegerField
      DisplayLabel = 'ID M'#233'dico'
      FieldName = 'med_codigo'
      Visible = False
    end
  end
  object TempGeraCob: TJvMemoryData
    FieldDefs = <
      item
        Name = 'exa_id'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'exa_paciente'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'exa_valor'
        DataType = ftFloat
      end>
    Left = 336
    Top = 72
    object TempGeraCobexa_id: TStringField
      DisplayLabel = 'ID. Exame'
      DisplayWidth = 10
      FieldName = 'exa_id'
      Size = 10
    end
    object TempGeraCobexa_paciente: TStringField
      DisplayLabel = 'Paciente'
      DisplayWidth = 26
      FieldName = 'exa_paciente'
      Size = 50
    end
    object TempGeraCobexa_valor: TFloatField
      DisplayLabel = 'Valor'
      DisplayWidth = 8
      FieldName = 'exa_valor'
      DisplayFormat = '#,###,###,##0.00'
    end
  end
  object updConsGeraCob: TSDUpdateSQL
    RefreshSQL.Strings = (
      
        'select eco_id, exa_id, eco_status, eco_valor, his_id, eco_gerarc' +
        'ob, eco_vlrpago'#13#10'from examescob'
      'where'
      '  eco_id = :OLD_eco_id')
    ModifySQL.Strings = (
      'update examescob'
      'set'
      '  eco_id = :eco_id,'
      '  exa_id = :exa_id,'
      '  eco_status = :eco_status,'
      '  eco_valor = :eco_valor,'
      '  his_id = :his_id,'
      '  eco_gerarcob = :eco_gerarcob,'
      '  eco_vlrpago = :eco_vlrpago'
      'where'
      '  eco_id = :OLD_eco_id')
    InsertSQL.Strings = (
      'insert into examescob'
      
        '  (eco_id, exa_id, eco_status, eco_valor, his_id, eco_gerarcob, ' +
        'eco_vlrpago)'
      'values'
      
        '  (:eco_id, :exa_id, :eco_status, :eco_valor, :his_id, :eco_gera' +
        'rcob, :eco_vlrpago)')
    DeleteSQL.Strings = (
      'delete from examescob'
      'where'
      '  eco_id = :OLD_eco_id')
    Left = 712
    Top = 448
  end
  object qyConsRecObs: TSDQuery
    DatabaseName = 'consultas'
    Options = []
    SessionName = 'SessaoConsultas'
    SQL.Strings = (
      'select'
      'rob_id, rob_data, rec_codigo, rob_obs'
      'from recobs')
    Left = 344
    Top = 520
    object qyConsRecObsrob_data: TDateField
      DisplayLabel = 'Data'
      DisplayWidth = 10
      FieldName = 'rob_data'
      EditMask = '!99/99/0000;1;_'
    end
    object qyConsRecObsrob_obs: TStringField
      DisplayLabel = 'Obs'
      DisplayWidth = 50
      FieldName = 'rob_obs'
      Size = 50
    end
    object qyConsRecObsrob_id: TIntegerField
      DisplayLabel = 'ID'
      FieldName = 'rob_id'
      Visible = False
    end
    object qyConsRecObsrec_codigo: TIntegerField
      DisplayLabel = 'ID Recebimento'
      FieldName = 'rec_codigo'
      Visible = False
    end
  end
  object qyExportaCob: TSDQuery
    DatabaseName = 'consultas'
    Options = []
    SessionName = 'SessaoConsultas'
    SQL.Strings = (
      'select P.pac_nome, E.pac_idade, H.exa_id, E.exa_data,  '
      'M.med_nome, M.med_numconselho, C.cov_descricao,'
      'E.exa_guia, E.exa_matricula, X.exp_quant, X.prc_tuss, '
      'R.prc_descricao, X.exp_unitario, X.exp_total'
      'from histrec H, pacientes P, medicos M, convenios C, '
      'exames E, examesproced X, procedimentos R'
      'where H.pac_codigo = P.pac_codigo'
      'and H.med_codigo = M.med_codigo'
      'and H.cov_codigo = C.cov_codigo'
      'and H.exa_id = E.exa_id'
      'and E.exa_id = X.exa_id'
      'and X.prc_tuss = R.prc_tuss'
      'and H.his_id = 120'
      'order by P.pac_nome')
    Left = 624
    Top = 360
    object qyExportaCobpac_nome: TStringField
      DisplayLabel = 'Paciente'
      DisplayWidth = 50
      FieldName = 'pac_nome'
      Size = 80
    end
    object qyExportaCobpac_idade: TSmallintField
      DisplayLabel = 'Idade'
      DisplayWidth = 6
      FieldName = 'pac_idade'
    end
    object qyExportaCobexa_id: TStringField
      DisplayLabel = 'Exame'
      DisplayWidth = 11
      FieldName = 'exa_id'
      Size = 10
    end
    object qyExportaCobexa_data: TDateField
      DisplayLabel = 'Data'
      DisplayWidth = 10
      FieldName = 'exa_data'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object qyExportaCobmed_nome: TStringField
      DisplayLabel = 'M'#233'dico'
      DisplayWidth = 40
      FieldName = 'med_nome'
      Size = 50
    end
    object qyExportaCobmed_numconselho: TStringField
      DisplayLabel = 'CRM'
      DisplayWidth = 5
      FieldName = 'med_numconselho'
      Size = 10
    end
    object qyExportaCobcov_descricao: TStringField
      DisplayLabel = 'Conv'#234'nio'
      DisplayWidth = 30
      FieldName = 'cov_descricao'
      Size = 30
    end
    object qyExportaCobexa_guia: TStringField
      DisplayLabel = 'Guia'
      DisplayWidth = 20
      FieldName = 'exa_guia'
    end
    object qyExportaCobexa_matricula: TStringField
      DisplayLabel = 'Matr'#237'cula'
      DisplayWidth = 20
      FieldName = 'exa_matricula'
      FixedChar = True
    end
    object qyExportaCobexp_quant: TIntegerField
      DisplayLabel = 'Quantidade'
      DisplayWidth = 10
      FieldName = 'exp_quant'
    end
    object qyExportaCobprc_tuss: TIntegerField
      DisplayLabel = 'C'#243'd. TUSS'
      DisplayWidth = 10
      FieldName = 'prc_tuss'
    end
    object qyExportaCobprc_descricao: TStringField
      DisplayLabel = 'TUSS'
      DisplayWidth = 50
      FieldName = 'prc_descricao'
      Size = 80
    end
    object qyExportaCobexp_unitario: TFloatField
      DisplayLabel = 'Vlr. Unit'#225'rio'
      DisplayWidth = 10
      FieldName = 'exp_unitario'
      DisplayFormat = '#######0.00'
    end
    object qyExportaCobexp_total: TFloatField
      DisplayLabel = 'Vlr. Total'
      DisplayWidth = 10
      FieldName = 'exp_total'
      DisplayFormat = '#######0.00'
    end
  end
  object updConsDivExames: TSDUpdateSQL
    RefreshSQL.Strings = (
      
        'select exa_id, exa_data, pac_codigo, pac_idade, pac_meses, cov_c' +
        'odigo, exa_matricula, exa_guia, med_codigo, exa_etapa, exa_prior' +
        'idade, exa_dataprior, exa_obs, exa_origem, exa_destino, etp_id, ' +
        'res_codigo'#13#10'from exames'
      'where'
      '  exa_id = :OLD_exa_id')
    ModifySQL.Strings = (
      'update exames'
      'set'
      '  exa_id = :exa_id,'
      '  exa_data = :exa_data,'
      '  pac_codigo = :pac_codigo,'
      '  pac_idade = :pac_idade,'
      '  pac_meses = :pac_meses,'
      '  cov_codigo = :cov_codigo,'
      '  exa_matricula = :exa_matricula,'
      '  exa_guia = :exa_guia,'
      '  med_codigo = :med_codigo,'
      '  exa_etapa = :exa_etapa,'
      '  exa_prioridade = :exa_prioridade,'
      '  exa_dataprior = :exa_dataprior,'
      '  exa_obs = :exa_obs,'
      '  exa_origem = :exa_origem,'
      '  exa_destino = :exa_destino,'
      '  etp_id = :etp_id,'
      '  res_codigo = :res_codigo'
      'where'
      '  exa_id = :OLD_exa_id')
    InsertSQL.Strings = (
      'insert into exames'
      
        '  (exa_id, exa_data, pac_codigo, pac_idade, pac_meses, cov_codig' +
        'o, exa_matricula, exa_guia, med_codigo, exa_etapa, exa_prioridad' +
        'e, exa_dataprior, exa_obs, exa_origem, exa_destino, etp_id, res_' +
        'codigo)'
      'values'
      
        '  (:exa_id, :exa_data, :pac_codigo, :pac_idade, :pac_meses, :cov' +
        '_codigo, :exa_matricula, :exa_guia, :med_codigo, :exa_etapa, :ex' +
        'a_prioridade, :exa_dataprior, :exa_obs, :exa_origem, :exa_destin' +
        'o, :etp_id, :res_codigo)')
    DeleteSQL.Strings = (
      'delete from exames'
      'where'
      '  exa_id = :OLD_exa_id')
    Left = 712
    Top = 8
  end
  object qyConsTopografias: TSDQuery
    DatabaseName = 'consultas'
    Options = []
    SessionName = 'SessaoConsultas'
    SQL.Strings = (
      'select H.exa_id, M.mat_descricao, T.top_descricao, H.ehi_quant, '
      
        'P.eio_descricao, S.eth_descricao, sum(B.ebl_laminas), sum(B.ebl_' +
        'fragmentos)'
      
        'from examestop E left join examesblocos B on E.etg_id = B.etg_id' +
        ', topografias T, '
      
        'exameshist H, materiais M, examestipo P, examestipohist S, exame' +
        's X'
      'where E.top_id = T.top_id'
      'and E.ehi_id = H.ehi_id'
      'and H.mat_id = M.mat_id'
      'and H.eio_id = P.eio_id'
      'and H.eth_id = S.eth_id'
      'and H.exa_id = X.exa_id'
      'and H.ehi_id != 0'
      'and X.exa_data between '#39'2000-01-01'#39' and '#39'2017-12-31'#39' '
      
        'group by H.exa_id, M.mat_descricao, T.top_descricao, H.ehi_quant' +
        ', '
      'P.eio_descricao, S.eth_descricao '
      'order by H.exa_id')
    Left = 440
    Top = 520
    object qyConsTopografiasexa_id: TStringField
      DisplayLabel = 'ID Exame'
      FieldName = 'exa_id'
      FixedChar = True
      Size = 10
    end
    object qyConsTopografiasmat_descricao: TStringField
      DisplayLabel = 'Material'
      FieldName = 'mat_descricao'
      Size = 50
    end
    object qyConsTopografiastop_descricao: TStringField
      DisplayLabel = 'Topografia'
      FieldName = 'top_descricao'
      Size = 50
    end
    object qyConsTopografiasehi_quant: TIntegerField
      DisplayLabel = 'Quantidade'
      FieldName = 'ehi_quant'
    end
    object qyConsTopografiaseio_descricao: TStringField
      DisplayLabel = 'Tp. Exame'
      FieldName = 'eio_descricao'
      Size = 30
    end
    object qyConsTopografiaseth_descricao: TStringField
      DisplayLabel = 'Exame'
      FieldName = 'eth_descricao'
      Size = 50
    end
    object qyConsTopografiassum: TLargeintField
      DisplayLabel = 'L'#226'minas'
      FieldName = 'sum'
    end
    object qyConsTopografiassum_1: TLargeintField
      DisplayLabel = 'Fragmentos'
      FieldName = 'sum_1'
    end
  end
  object qyRelAuditoriaH: TSDQuery
    DatabaseName = 'consultas'
    Options = []
    SessionName = 'SessaoConsultas'
    SQL.Strings = (
      
        'select M.mat_descricao, H.ehi_quant, P.eio_descricao, S.eth_desc' +
        'ricao, sum(B.ebl_laminas)'
      
        'from examestop E left join examesblocos B on E.etg_id = B.etg_id' +
        ', topografias T,'
      
        'exameshist H, materiais M, examestipo P, examestipohist S, exame' +
        's X'
      'where E.top_id = T.top_id'
      'and E.ehi_id = H.ehi_id and H.mat_id = M.mat_id'
      'and H.eio_id = P.eio_id and H.eth_id = S.eth_id'
      'and H.exa_id = X.exa_id and H.ehi_id != 0'
      'and X.exa_data between '#39'2000/01/01'#39' and '#39'2017/12/31'#39
      
        'group by H.exa_id, M.mat_descricao, T.top_descricao, H.ehi_quant' +
        ','
      'P.eio_descricao, S.eth_descricao order by H.exa_id')
    Left = 560
    Top = 520
    object qyRelAuditoriaHmat_descricao: TStringField
      DisplayLabel = 'Material'
      FieldName = 'mat_descricao'
      Size = 50
    end
    object qyRelAuditoriaHehi_quant: TIntegerField
      DisplayLabel = 'Quantidade'
      FieldName = 'ehi_quant'
    end
    object qyRelAuditoriaHeio_descricao: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'eio_descricao'
      Size = 30
    end
    object qyRelAuditoriaHeth_descricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'eth_descricao'
      Size = 50
    end
    object qyRelAuditoriaHsum: TLargeintField
      DisplayLabel = 'L'#226'minas'
      FieldName = 'sum'
    end
  end
end
