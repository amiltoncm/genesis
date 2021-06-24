inherited dmExames: TdmExames
  OldCreateOrder = True
  Height = 633
  Width = 997
  inherited database: TSDDatabase
    DatabaseName = 'Exames'
    Params.Strings = (
      'USER NAME=postgres'
      'PASSWORD=postgres')
    RemoteDatabase = 'localhost:genesis'
    ServerType = stPostgreSQL
    SessionName = 'SessaoExames'
  end
  inherited QGeraCodigo: TSDQuery
    DatabaseName = 'exames'
    SessionName = 'SessaoExames'
  end
  inherited QTemp: TSDQuery
    DatabaseName = 'exames'
    SessionName = 'SessaoExames'
  end
  object SessaoExames: TSDSession
    Active = True
    SessionName = 'SessaoExames'
    Left = 96
    Top = 16
  end
  object qyExames: TSDQuery
    DatabaseName = 'exames'
    Options = []
    SessionName = 'SessaoExames'
    OnUpdateError = qyExamesUpdateError
    AfterInsert = qyExamesAfterInsert
    BeforePost = qyExamesBeforePost
    AfterPost = qyExamesAfterPost
    BeforeDelete = qyExamesBeforeDelete
    AfterDelete = qyExamesAfterDelete
    OnPostError = qyExamesPostError
    SQL.Strings = (
      
        'select e.exa_id, e.exa_data, e.pac_codigo, p.pac_nome, e.pac_ida' +
        'de, p.pac_dtnasc,'
      
        'e.pac_meses, e.cov_codigo, c.cov_descricao, e.exa_matricula, e.e' +
        'xa_guia,'
      
        'e.med_codigo, m.med_nome, e.exa_etapa, e.exa_prioridade, e.exa_d' +
        'ataprior,'
      
        'e.exa_obs, e.exa_origem, o.exl_descricao, e.exa_destino, d.exl_d' +
        'escricao, '
      
        'e.etp_id, t.etp_tipo, e.res_codigo, r.res_titulo, r.res_nome, s.' +
        'cos_tipo, '
      'r.res_numconselho, r.cos_uf, r.res_rqe, p.pac_sexo'
      'from exames e, pacientes p, convenios c, medicos m, examestp t, '
      'responsaveis r, exameslocais o, exameslocais d, conselhos s'
      'where e.pac_codigo = p.pac_codigo'
      'and e.cov_codigo = c.cov_codigo'
      'and e.med_codigo = m.med_codigo'
      'and e.etp_id = t.etp_id'
      'and e.res_codigo = r.res_codigo'
      'and e.exa_origem = o.exl_id'
      'and e.exa_destino = d.exl_id'
      'and r.cos_id = s.cos_codigo'
      'limit 1')
    UpdateObject = updExames
    Left = 24
    Top = 112
    object qyExamesexa_id: TStringField
      DisplayLabel = 'ID'
      DisplayWidth = 11
      FieldName = 'exa_id'
      FixedChar = True
      Size = 10
    end
    object qyExamesexa_data: TDateField
      DisplayLabel = 'Data'
      DisplayWidth = 10
      FieldName = 'exa_data'
      DisplayFormat = 'dd/MM/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object qyExamespac_nome: TStringField
      DisplayLabel = 'Paciente'
      DisplayWidth = 45
      FieldName = 'pac_nome'
      Size = 80
    end
    object qyExamesmed_nome: TStringField
      DisplayLabel = 'M'#233'dico'
      DisplayWidth = 35
      FieldName = 'med_nome'
      Size = 50
    end
    object qyExamescov_descricao: TStringField
      DisplayLabel = 'Conv'#234'nio'
      DisplayWidth = 25
      FieldName = 'cov_descricao'
      Size = 30
    end
    object qyExamespac_idade: TSmallintField
      DisplayLabel = 'Idade'
      DisplayWidth = 8
      FieldName = 'pac_idade'
    end
    object qyExamespac_dtnasc: TDateField
      DisplayLabel = 'Dt. Nasc.'
      DisplayWidth = 10
      FieldName = 'pac_dtnasc'
      DisplayFormat = 'dd/MM/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object qyExamespac_sexo: TStringField
      DisplayLabel = 'Sexo'
      DisplayWidth = 1
      FieldName = 'pac_sexo'
      FixedChar = True
      Size = 1
    end
    object qyExamesexa_matricula: TStringField
      DisplayLabel = 'Matr'#237'cula'
      DisplayWidth = 20
      FieldName = 'exa_matricula'
    end
    object qyExamesexa_guia: TStringField
      DisplayLabel = 'Guia'
      DisplayWidth = 20
      FieldName = 'exa_guia'
    end
    object qyExamesexl_descricao: TStringField
      DisplayLabel = 'Origem'
      DisplayWidth = 35
      FieldName = 'exl_descricao'
      Size = 35
    end
    object qyExamesexl_descricao_1: TStringField
      DisplayLabel = 'Destino'
      DisplayWidth = 35
      FieldName = 'exl_descricao_1'
      Size = 35
    end
    object qyExamesres_nome: TStringField
      DisplayLabel = 'Respons'#225'vel'
      DisplayWidth = 80
      FieldName = 'res_nome'
      Size = 80
    end
    object qyExamesres_titulo: TStringField
      DisplayLabel = 'T'#237'tulo'
      DisplayWidth = 5
      FieldName = 'res_titulo'
      Visible = False
      Size = 5
    end
    object qyExamescos_tipo: TStringField
      DisplayLabel = 'Cons.'
      DisplayWidth = 5
      FieldName = 'cos_tipo'
      Visible = False
      Size = 5
    end
    object qyExamesres_numconselho: TStringField
      DisplayLabel = 'Num. Cons.'
      DisplayWidth = 10
      FieldName = 'res_numconselho'
      Visible = False
      Size = 10
    end
    object qyExamescos_uf: TStringField
      DisplayLabel = 'UF Cons.'
      DisplayWidth = 2
      FieldName = 'cos_uf'
      Visible = False
      FixedChar = True
      Size = 2
    end
    object qyExamesres_rqe: TStringField
      DisplayLabel = 'RQE'
      FieldName = 'res_rqe'
      Size = 15
    end
    object qyExamespac_meses: TStringField
      DisplayLabel = 'Idade/Meses'
      DisplayWidth = 30
      FieldName = 'pac_meses'
      Visible = False
      Size = 30
    end
    object qyExamespac_codigo: TIntegerField
      DisplayLabel = 'C'#243'd. Paciente'
      DisplayWidth = 8
      FieldName = 'pac_codigo'
      Visible = False
    end
    object qyExamescov_codigo: TIntegerField
      DisplayLabel = 'C'#243'd. Conv'#234'nio'
      DisplayWidth = 10
      FieldName = 'cov_codigo'
      Visible = False
    end
    object qyExamesmed_codigo: TIntegerField
      DisplayLabel = 'C'#243'd. M'#233'dico'
      DisplayWidth = 10
      FieldName = 'med_codigo'
      Visible = False
    end
    object qyExamesexa_origem: TIntegerField
      DisplayLabel = 'C'#243'd. Origem'
      DisplayWidth = 8
      FieldName = 'exa_origem'
      Visible = False
    end
    object qyExamesexa_destino: TIntegerField
      DisplayLabel = 'C'#243'd. Destino'
      DisplayWidth = 8
      FieldName = 'exa_destino'
      Visible = False
    end
    object qyExamesetp_id: TIntegerField
      DisplayLabel = 'C'#243'd. Tipo'
      DisplayWidth = 10
      FieldName = 'etp_id'
      Visible = False
      DisplayFormat = '000'
    end
    object qyExamesexa_prioridade: TIntegerField
      DisplayLabel = 'Prioridade'
      DisplayWidth = 8
      FieldName = 'exa_prioridade'
      Visible = False
    end
    object qyExamesexa_dataprior: TDateField
      DisplayLabel = 'Data prioridade'
      DisplayWidth = 10
      FieldName = 'exa_dataprior'
      Visible = False
      DisplayFormat = 'dd/MM/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object qyExamesexa_etapa: TIntegerField
      DisplayLabel = 'Etapa'
      DisplayWidth = 8
      FieldName = 'exa_etapa'
      Visible = False
      DisplayFormat = '00'
    end
    object qyExamesetp_tipo: TStringField
      DisplayLabel = 'Tipo'
      DisplayWidth = 20
      FieldName = 'etp_tipo'
      Visible = False
    end
    object qyExamesres_codigo: TIntegerField
      DisplayLabel = 'C'#243'd. Resp.'
      DisplayWidth = 10
      FieldName = 'res_codigo'
      Visible = False
    end
    object qyExamesexa_obs: TStringField
      DisplayLabel = 'Obs'
      FieldName = 'exa_obs'
      Visible = False
      Size = 512
    end
  end
  object updExames: TSDUpdateSQL
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
    Left = 96
    Top = 112
  end
  object qyExamesLogs: TSDQuery
    DatabaseName = 'exames'
    Options = []
    SessionName = 'SessaoExames'
    OnUpdateError = qyExamesLogsUpdateError
    AfterInsert = qyExamesLogsAfterInsert
    BeforePost = qyExamesLogsBeforePost
    AfterPost = qyExamesLogsAfterPost
    BeforeDelete = qyExamesLogsBeforeDelete
    AfterDelete = qyExamesLogsAfterDelete
    OnPostError = qyExamesLogsPostError
    SQL.Strings = (
      
        'select l.exa_id, l.eta_id, l.log_data, l.log_hora, l.usu_codigo,' +
        ' u.usu_nome'
      'from exameslog l, usuarios u'
      'where l.usu_codigo = u.usu_codigo'
      'limit 1')
    UpdateObject = updExamesLogs
    Left = 368
    Top = 360
    object qyExamesLogsexa_id: TStringField
      DisplayLabel = 'ID Exame'
      FieldName = 'exa_id'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object qyExamesLogseta_id: TIntegerField
      DisplayLabel = 'Etapa'
      FieldName = 'eta_id'
    end
    object qyExamesLogslog_data: TDateField
      DisplayLabel = 'Data'
      FieldName = 'log_data'
      DisplayFormat = 'dd/MM/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object qyExamesLogslog_hora: TTimeField
      DisplayLabel = 'Hora'
      FieldName = 'log_hora'
      DisplayFormat = 'hh:mm'
      EditMask = '!90:00;1;_'
    end
    object qyExamesLogsusu_codigo: TIntegerField
      DisplayLabel = 'C'#243'd. Usu'#225'rio'
      FieldName = 'usu_codigo'
      Visible = False
    end
    object qyExamesLogsusu_nome: TStringField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'usu_nome'
    end
  end
  object updExamesLogs: TSDUpdateSQL
    RefreshSQL.Strings = (
      'select exa_id, eta_id, log_data, log_hora, usu_codigo'
      'from exameslog'
      'where'
      '  exa_id = :OLD_exa_id and'
      '  eta_id = :OLD_eta_id and'
      '  log_data = :OLD_log_data and'
      '  log_hora = :OLD_log_hora')
    ModifySQL.Strings = (
      'update exameslog'
      'set'
      '  exa_id = :exa_id,'
      '  eta_id = :eta_id,'
      '  log_data = :log_data,'
      '  log_hora = :log_hora,'
      '  usu_codigo = :usu_codigo'
      'where'
      '  exa_id = :OLD_exa_id and'
      '  eta_id = :OLD_eta_id and'
      '  log_data = :OLD_log_data and'
      '  log_hora = :OLD_log_hora')
    InsertSQL.Strings = (
      'insert into exameslog'
      '  (exa_id, eta_id, log_data, log_hora, usu_codigo)'
      'values'
      '  (:exa_id, :eta_id, :log_data, :log_hora, :usu_codigo)')
    DeleteSQL.Strings = (
      'delete from exameslog'
      'where'
      '  exa_id = :OLD_exa_id and'
      '  eta_id = :OLD_eta_id and'
      '  log_data = :OLD_log_data and'
      '  log_hora = :OLD_log_hora')
    Left = 456
    Top = 360
  end
  object qyExamesRespAd: TSDQuery
    DatabaseName = 'exames'
    Options = []
    SessionName = 'SessaoExames'
    OnUpdateError = qyExamesRespAdUpdateError
    AfterInsert = qyExamesRespAdAfterInsert
    BeforePost = qyExamesRespAdBeforePost
    AfterPost = qyExamesRespAdAfterPost
    BeforeDelete = qyExamesRespAdBeforeDelete
    AfterDelete = qyExamesRespAdAfterDelete
    OnPostError = qyExamesRespAdPostError
    SQL.Strings = (
      
        'select e.exa_id, e.med_codigo, m.med_titulo, m.med_nome, c.cos_t' +
        'ipo,'
      'm.med_numconselho, m.cos_uf'
      'from examesrespad e, medicos m, conselhos c'
      'where e.med_codigo = m.med_codigo'
      'and e.exa_id = '#39'0'#39
      'limit 1')
    UpdateObject = updExamesRespAd
    Left = 288
    Top = 432
    object qyExamesRespAdexa_id: TStringField
      DisplayLabel = 'ID Exame'
      FieldName = 'exa_id'
      FixedChar = True
      Size = 10
    end
    object qyExamesRespAdmed_codigo: TIntegerField
      DisplayLabel = 'C'#243'd. M'#233'd.'
      FieldName = 'med_codigo'
    end
    object qyExamesRespAdmed_titulo: TStringField
      DisplayLabel = 'T'#237'tulo'
      FieldName = 'med_titulo'
      Size = 5
    end
    object qyExamesRespAdmed_nome: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'med_nome'
      Size = 50
    end
    object qyExamesRespAdcos_tipo: TStringField
      DisplayLabel = 'tp. Cons.'
      FieldName = 'cos_tipo'
      Size = 5
    end
    object qyExamesRespAdmed_numconselho: TStringField
      DisplayLabel = 'Num. Cons.'
      FieldName = 'med_numconselho'
      Size = 10
    end
    object qyExamesRespAdcos_uf: TStringField
      DisplayLabel = 'UF'
      FieldName = 'cos_uf'
      FixedChar = True
      Size = 2
    end
  end
  object updExamesRespAd: TSDUpdateSQL
    RefreshSQL.Strings = (
      'select exa_id, med_codigo'#13#10'from examesrespad'
      'where'
      '  exa_id = :OLD_exa_id')
    ModifySQL.Strings = (
      'update examesrespad'
      'set'
      '  exa_id = :exa_id,'
      '  med_codigo = :med_codigo'
      'where'
      '  exa_id = :OLD_exa_id')
    InsertSQL.Strings = (
      'insert into examesrespad'
      '  (exa_id, med_codigo)'
      'values'
      '  (:exa_id, :med_codigo)')
    DeleteSQL.Strings = (
      'delete from examesrespad'
      'where'
      '  exa_id = :OLD_exa_id')
    Left = 384
    Top = 432
  end
  object qyExamesEnvMail: TSDQuery
    DatabaseName = 'exames'
    Options = []
    SessionName = 'SessaoExames'
    OnUpdateError = qyExamesEnvMailUpdateError
    AfterInsert = qyExamesEnvMailAfterInsert
    BeforePost = qyExamesEnvMailBeforePost
    AfterPost = qyExamesEnvMailAfterPost
    BeforeDelete = qyExamesEnvMailBeforeDelete
    AfterDelete = qyExamesEnvMailAfterDelete
    OnPostError = qyExamesEnvMailPostError
    SQL.Strings = (
      'select eem_id, exa_id, eem_enviado, eem_enviar, eem_concluido'
      'from examesenvmail where exa_id = '#39'0'#39
      'limit 1')
    UpdateObject = updExamesEnvMail
    Left = 560
    Top = 360
    object qyExamesEnvMaileem_id: TIntegerField
      DisplayLabel = 'ID envio'
      FieldName = 'eem_id'
      Visible = False
    end
    object qyExamesEnvMailexa_id: TStringField
      DisplayLabel = 'ID Exame'
      FieldName = 'exa_id'
      FixedChar = True
      Size = 10
    end
    object qyExamesEnvMaileem_enviado: TBooleanField
      DisplayLabel = 'Enviado'
      FieldName = 'eem_enviado'
    end
    object qyExamesEnvMaileem_enviar: TBooleanField
      DisplayLabel = 'A enviar'
      FieldName = 'eem_enviar'
    end
    object qyExamesEnvMaileem_concluido: TBooleanField
      DisplayLabel = 'Conclu'#237'do'
      FieldName = 'eem_concluido'
    end
  end
  object updExamesEnvMail: TSDUpdateSQL
    RefreshSQL.Strings = (
      
        'select eem_id, exa_id, eem_enviado, eem_enviar, eem_concluido'#13#10'f' +
        'rom examesenvmail'
      'where'
      '  eem_id = :OLD_eem_id')
    ModifySQL.Strings = (
      'update examesenvmail'
      'set'
      '  eem_id = :eem_id,'
      '  exa_id = :exa_id,'
      '  eem_enviado = :eem_enviado,'
      '  eem_enviar = :eem_enviar,'
      '  eem_concluido = :eem_concluido'
      'where'
      '  eem_id = :OLD_eem_id')
    InsertSQL.Strings = (
      'insert into examesenvmail'
      '  (eem_id, exa_id, eem_enviado, eem_enviar, eem_concluido)'
      'values'
      '  (:eem_id, :exa_id, :eem_enviado, :eem_enviar, :eem_concluido)')
    DeleteSQL.Strings = (
      'delete from examesenvmail'
      'where'
      '  eem_id = :OLD_eem_id')
    Left = 664
    Top = 360
  end
  object qyExamesProced: TSDQuery
    DatabaseName = 'exames'
    Options = []
    SessionName = 'SessaoExames'
    OnUpdateError = qyExamesProcedUpdateError
    AfterInsert = qyExamesProcedAfterInsert
    BeforePost = qyExamesProcedBeforePost
    AfterPost = qyExamesProcedAfterPost
    BeforeDelete = qyExamesProcedBeforeDelete
    AfterDelete = qyExamesProcedAfterDelete
    OnPostError = qyExamesProcedPostError
    SQL.Strings = (
      
        'select e.exp_id, e.exa_id, e.prc_tuss, p.prc_descricao, e.exp_qu' +
        'ant,'
      'e.exp_unitario, e.exp_total'
      'from examesproced e, procedimentos p'
      'where e.prc_tuss = p.prc_tuss'
      'limit 1')
    UpdateObject = updExamesProced
    Left = 520
    Top = 112
    object qyExamesProcedprc_tuss: TIntegerField
      DisplayLabel = 'TUSS'
      DisplayWidth = 10
      FieldName = 'prc_tuss'
    end
    object qyExamesProcedexp_quant: TIntegerField
      DisplayLabel = 'Quantidade'
      DisplayWidth = 10
      FieldName = 'exp_quant'
    end
    object qyExamesProcedprc_descricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 80
      FieldName = 'prc_descricao'
      Size = 80
    end
    object qyExamesProcedexp_unitario: TFloatField
      DisplayLabel = 'Vlr. Unit.'
      DisplayWidth = 10
      FieldName = 'exp_unitario'
      DisplayFormat = '#,###,###,##0.00'
    end
    object qyExamesProcedexp_total: TFloatField
      DisplayLabel = 'Total'
      DisplayWidth = 10
      FieldName = 'exp_total'
      DisplayFormat = '#,###,###,##0.00'
    end
    object qyExamesProcedexa_id: TStringField
      DisplayWidth = 10
      FieldName = 'exa_id'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object qyExamesProcedexp_id: TIntegerField
      DisplayWidth = 10
      FieldName = 'exp_id'
      Visible = False
    end
  end
  object updExamesProced: TSDUpdateSQL
    RefreshSQL.Strings = (
      
        'select exp_id, exa_id, prc_tuss, exp_quant, exp_unitario, exp_to' +
        'tal'#13#10'from examesproced'
      'where'
      '  exp_id = :OLD_exp_id')
    ModifySQL.Strings = (
      'update examesproced'
      'set'
      '  exp_id = :exp_id,'
      '  exa_id = :exa_id,'
      '  prc_tuss = :prc_tuss,'
      '  exp_quant = :exp_quant,'
      '  exp_unitario = :exp_unitario,'
      '  exp_total = :exp_total'
      'where'
      '  exp_id = :OLD_exp_id')
    InsertSQL.Strings = (
      'insert into examesproced'
      '  (exp_id, exa_id, prc_tuss, exp_quant, exp_unitario, exp_total)'
      'values'
      
        '  (:exp_id, :exa_id, :prc_tuss, :exp_quant, :exp_unitario, :exp_' +
        'total)')
    DeleteSQL.Strings = (
      'delete from examesproced'
      'where'
      '  exp_id = :OLD_exp_id')
    Left = 616
    Top = 112
  end
  object qyExamesCito: TSDQuery
    DatabaseName = 'exames'
    Options = []
    SessionName = 'SessaoExames'
    OnUpdateError = qyExamesCitoUpdateError
    AfterInsert = qyExamesCitoAfterInsert
    BeforePost = qyExamesCitoBeforePost
    AfterPost = qyExamesCitoAfterPost
    BeforeDelete = qyExamesCitoBeforeDelete
    AfterDelete = qyExamesCitoAfterDelete
    OnPostError = qyExamesCitoPostError
    SQL.Strings = (
      
        'select t.eto_local, t.eto_descricao, c.eci_id, c.exa_id, c.eto_i' +
        'd, c.eci_quant'
      'from examescito c, examestipocito t'
      'where c.eto_id = t.eto_id'
      'limit 100')
    UpdateObject = updExamesCito
    Left = 272
    Top = 192
    object qyExamesCitoeci_quant: TIntegerField
      DisplayLabel = 'Quant.'
      DisplayWidth = 10
      FieldName = 'eci_quant'
    end
    object qyExamesCitoeto_descricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 65
      FieldName = 'eto_descricao'
      Size = 120
    end
    object qyExamesCitoeto_local: TStringField
      DisplayLabel = 'Local'
      DisplayWidth = 38
      FieldName = 'eto_local'
      Size = 40
    end
    object qyExamesCitoeto_id: TIntegerField
      DisplayLabel = 'ID Local'
      DisplayWidth = 10
      FieldName = 'eto_id'
      Visible = False
    end
    object qyExamesCitoeci_id: TIntegerField
      DisplayLabel = 'ID'
      FieldName = 'eci_id'
      Visible = False
    end
    object qyExamesCitoexa_id: TStringField
      DisplayLabel = 'ID Exame'
      FieldName = 'exa_id'
      Visible = False
      FixedChar = True
      Size = 10
    end
  end
  object updExamesCito: TSDUpdateSQL
    RefreshSQL.Strings = (
      'select eci_id, exa_id, eto_id, eci_quant'#13#10'from examescito'
      'where'
      '  eci_id = :OLD_eci_id')
    ModifySQL.Strings = (
      'update examescito'
      'set'
      '  eci_id = :eci_id,'
      '  exa_id = :exa_id,'
      '  eto_id = :eto_id,'
      '  eci_quant = :eci_quant'
      'where'
      '  eci_id = :OLD_eci_id')
    InsertSQL.Strings = (
      'insert into examescito'
      '  (eci_id, exa_id, eto_id, eci_quant)'
      'values'
      '  (:eci_id, :exa_id, :eto_id, :eci_quant)')
    DeleteSQL.Strings = (
      'delete from examescito'
      'where'
      '  eci_id = :OLD_eci_id')
    Left = 360
    Top = 192
  end
  object qyExamesHist: TSDQuery
    DatabaseName = 'exames'
    Options = []
    SessionName = 'SessaoExames'
    OnUpdateError = qyExamesHistUpdateError
    AfterInsert = qyExamesHistAfterInsert
    BeforePost = qyExamesHistBeforePost
    AfterPost = qyExamesHistAfterPost
    BeforeDelete = qyExamesHistBeforeDelete
    AfterDelete = qyExamesHistAfterDelete
    OnPostError = qyExamesHistPostError
    SQL.Strings = (
      'select h.ehi_id, h.exa_id, h.mat_id, m.mat_descricao, h.eio_id, '
      't.eio_descricao, h.eth_id, p.eth_descricao, h.ehi_quant'
      'from exameshist h, materiais m, examestipo t, examestipohist p'
      'where h.mat_id = m.mat_id'
      'and h.eio_id = t.eio_id'
      'and h.eth_id = p.eth_id'
      'limit 100')
    UpdateObject = updExamesHist
    Left = 568
    Top = 280
    object qyExamesHistmat_descricao: TStringField
      DisplayLabel = 'Material'
      DisplayWidth = 33
      FieldName = 'mat_descricao'
      Size = 50
    end
    object qyExamesHisteio_descricao: TStringField
      DisplayLabel = 'Tp. Exame'
      DisplayWidth = 32
      FieldName = 'eio_descricao'
      Size = 30
    end
    object qyExamesHisteth_descricao: TStringField
      DisplayLabel = 'Exame'
      DisplayWidth = 40
      FieldName = 'eth_descricao'
      Size = 50
    end
    object qyExamesHistehi_quant: TIntegerField
      DisplayLabel = 'Quantidade'
      DisplayWidth = 10
      FieldName = 'ehi_quant'
    end
    object qyExamesHistehi_id: TIntegerField
      DisplayLabel = 'ID'
      DisplayWidth = 7
      FieldName = 'ehi_id'
      Visible = False
      DisplayFormat = '000000'
    end
    object qyExamesHistexa_id: TStringField
      DisplayLabel = 'ID Exame'
      FieldName = 'exa_id'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object qyExamesHistmat_id: TIntegerField
      DisplayLabel = 'ID Material'
      FieldName = 'mat_id'
      Visible = False
    end
    object qyExamesHisteio_id: TIntegerField
      DisplayLabel = 'ID Tp. Exame'
      FieldName = 'eio_id'
      Visible = False
    end
    object qyExamesHisteth_id: TIntegerField
      DisplayLabel = 'ID Exame'
      FieldName = 'eth_id'
      Visible = False
    end
  end
  object updExamesHist: TSDUpdateSQL
    RefreshSQL.Strings = (
      
        'select ehi_id, exa_id, mat_id, eio_id, eth_id, ehi_quant'#13#10'from e' +
        'xameshist'
      'where'
      '  ehi_id = :OLD_ehi_id')
    ModifySQL.Strings = (
      'update exameshist'
      'set'
      '  ehi_id = :ehi_id,'
      '  exa_id = :exa_id,'
      '  mat_id = :mat_id,'
      '  eio_id = :eio_id,'
      '  eth_id = :eth_id,'
      '  ehi_quant = :ehi_quant'
      'where'
      '  ehi_id = :OLD_ehi_id')
    InsertSQL.Strings = (
      'insert into exameshist'
      '  (ehi_id, exa_id, mat_id, eio_id, eth_id, ehi_quant)'
      'values'
      '  (:ehi_id, :exa_id, :mat_id, :eio_id, :eth_id, :ehi_quant)')
    DeleteSQL.Strings = (
      'delete from exameshist'
      'where'
      '  ehi_id = :OLD_ehi_id')
    Left = 648
    Top = 280
  end
  object qyExamesHistMacro: TSDQuery
    DatabaseName = 'exames'
    Options = []
    SessionName = 'SessaoExames'
    OnUpdateError = qyExamesHistMacroUpdateError
    AfterInsert = qyExamesHistMacroAfterInsert
    BeforePost = qyExamesHistMacroBeforePost
    AfterPost = qyExamesHistMacroAfterPost
    BeforeDelete = qyExamesHistMacroBeforeDelete
    AfterDelete = qyExamesHistMacroAfterDelete
    OnPostError = qyExamesHistMacroPostError
    SQL.Strings = (
      'select * from'
      'exameshistmacro'
      'limit 1')
    UpdateObject = updExamesHistMacro
    Left = 24
    Top = 360
    object qyExamesHistMacroehm_id: TIntegerField
      DisplayLabel = 'ID Macro'
      FieldName = 'ehm_id'
      Visible = False
    end
    object qyExamesHistMacroexa_id: TStringField
      DisplayLabel = 'ID Exame'
      FieldName = 'exa_id'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object qyExamesHistMacroehm_macroscopia: TBlobField
      DisplayLabel = 'Macroscopia'
      FieldName = 'ehm_macroscopia'
    end
  end
  object updExamesHistMacro: TSDUpdateSQL
    RefreshSQL.Strings = (
      'select ehm_id, exa_id, ehm_macroscopia'#13#10'from exameshistmacro'
      'where'
      '  ehm_id = :OLD_ehm_id')
    ModifySQL.Strings = (
      'update exameshistmacro'
      'set'
      '  ehm_id = :ehm_id,'
      '  exa_id = :exa_id,'
      '  ehm_macroscopia = :ehm_macroscopia'
      'where'
      '  ehm_id = :OLD_ehm_id')
    InsertSQL.Strings = (
      'insert into exameshistmacro'
      '  (ehm_id, exa_id, ehm_macroscopia)'
      'values'
      '  (:ehm_id, :exa_id, :ehm_macroscopia)')
    DeleteSQL.Strings = (
      'delete from exameshistmacro'
      'where'
      '  ehm_id = :OLD_ehm_id')
    Left = 120
    Top = 360
  end
  object qyImagens: TSDQuery
    DatabaseName = 'exames'
    Options = []
    SessionName = 'SessaoExames'
    OnUpdateError = qyImagensUpdateError
    AfterInsert = qyImagensAfterInsert
    BeforePost = qyImagensBeforePost
    AfterPost = qyImagensAfterPost
    BeforeDelete = qyImagensBeforeDelete
    AfterDelete = qyImagensAfterDelete
    OnPostError = qyImagensPostError
    SQL.Strings = (
      'select img_id, img_exame, img_imagem'
      'from imagens'
      'where img_id = 0')
    UpdateObject = updImagens
    Left = 40
    Top = 520
    object qyImagensimg_id: TIntegerField
      DisplayLabel = 'ID'
      FieldName = 'img_id'
      Visible = False
    end
    object qyImagensimg_exame: TStringField
      DisplayLabel = 'ID Exame'
      FieldName = 'img_exame'
      Visible = False
      Size = 10
    end
    object qyImagensimg_imagem: TBlobField
      DisplayLabel = 'Imagem'
      FieldName = 'img_imagem'
      Visible = False
      GraphicHeader = False
    end
  end
  object updImagens: TSDUpdateSQL
    RefreshSQL.Strings = (
      'select img_id, img_exame, img_imagem'
      'from imagens'
      'where'
      '  img_id = :OLD_img_id')
    ModifySQL.Strings = (
      'update imagens'
      'set'
      '  img_id = :img_id,'
      '  img_exame = :img_exame,'
      '  img_imagem = :img_imagem'
      'where'
      '  img_id = :OLD_img_id')
    InsertSQL.Strings = (
      'insert into imagens'
      '  (img_id, img_exame, img_imagem)'
      'values'
      '  (:img_id, :img_exame, :img_imagem)')
    DeleteSQL.Strings = (
      'delete from imagens'
      'where'
      '  img_id = :OLD_img_id')
    Left = 152
    Top = 520
  end
  object qyExamesCitoNotas: TSDQuery
    DatabaseName = 'exames'
    Options = []
    SessionName = 'SessaoExames'
    OnUpdateError = qyExamesCitoNotasUpdateError
    AfterInsert = qyExamesCitoNotasAfterInsert
    BeforePost = qyExamesCitoNotasBeforePost
    AfterPost = qyExamesCitoNotasAfterPost
    BeforeDelete = qyExamesCitoNotasBeforeDelete
    AfterDelete = qyExamesCitoNotasAfterDelete
    OnPostError = qyExamesCitoNotasPostError
    SQL.Strings = (
      'select * from examescitonotas'
      'where exa_id = '#39'0'#39)
    UpdateObject = updExamesCitoNotas
    Left = 480
    Top = 192
    object qyExamesCitoNotasecn_id: TIntegerField
      DisplayLabel = 'ID'
      FieldName = 'ecn_id'
      Visible = False
    end
    object qyExamesCitoNotasexa_id: TStringField
      DisplayLabel = 'ID Exames'
      FieldName = 'exa_id'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object qyExamesCitoNotasecn_obs: TBlobField
      DisplayLabel = 'Notas'
      FieldName = 'ecn_obs'
    end
  end
  object updExamesCitoNotas: TSDUpdateSQL
    RefreshSQL.Strings = (
      'select ecn_id, exa_id, ecn_obs'#13#10'from examescitonotas'
      'where'
      '  ecn_id = :OLD_ecn_id')
    ModifySQL.Strings = (
      'update examescitonotas'
      'set'
      '  ecn_id = :ecn_id,'
      '  exa_id = :exa_id,'
      '  ecn_obs = :ecn_obs'
      'where'
      '  ecn_id = :OLD_ecn_id')
    InsertSQL.Strings = (
      'insert into examescitonotas'
      '  (ecn_id, exa_id, ecn_obs)'
      'values'
      '  (:ecn_id, :exa_id, :ecn_obs)')
    DeleteSQL.Strings = (
      'delete from examescitonotas'
      'where'
      '  ecn_id = :OLD_ecn_id')
    Left = 576
    Top = 192
  end
  object qyExamesResp: TSDQuery
    DatabaseName = 'exames'
    Options = []
    SessionName = 'SessaoExames'
    OnUpdateError = qyExamesRespUpdateError
    AfterInsert = qyExamesRespAfterInsert
    BeforePost = qyExamesRespBeforePost
    AfterPost = qyExamesRespAfterPost
    BeforeDelete = qyExamesRespBeforeDelete
    AfterDelete = qyExamesRespAfterDelete
    OnPostError = qyExamesRespPostError
    SQL.Strings = (
      'select'
      'e.exa_id, e.res_codigo, r.res_nome, r.res_iniciais'
      'from examesresp e, responsaveis r'
      'where e.res_codigo = r.res_codigo '
      'and exa_id = '#39'0'#39)
    UpdateObject = updExamesResp
    Left = 40
    Top = 432
    object qyExamesRespexa_id: TStringField
      DisplayLabel = 'ID Exame'
      FieldName = 'exa_id'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object qyExamesRespres_codigo: TIntegerField
      DisplayLabel = 'C'#243'd. Respons'#225'vel'
      FieldName = 'res_codigo'
      Visible = False
    end
    object qyExamesRespres_nome: TStringField
      DisplayLabel = 'Respons'#225'vel'
      DisplayWidth = 50
      FieldName = 'res_nome'
      Size = 80
    end
    object qyExamesRespres_iniciais: TStringField
      DisplayLabel = 'Iniciais'
      FieldName = 'res_iniciais'
      Size = 10
    end
  end
  object updExamesResp: TSDUpdateSQL
    RefreshSQL.Strings = (
      'select exa_id, res_codigo'
      'from examesresp'
      'where'
      '  exa_id = :OLD_exa_id')
    ModifySQL.Strings = (
      'update examesresp'
      'set'
      '  exa_id = :exa_id,'
      '  res_codigo = :res_codigo'
      'where'
      '  exa_id = :OLD_exa_id')
    InsertSQL.Strings = (
      'insert into examesresp'
      '  (exa_id, res_codigo)'
      'values'
      '  (:exa_id, :res_codigo)')
    DeleteSQL.Strings = (
      'delete from examesresp'
      'where'
      '  exa_id = :OLD_exa_id')
    Left = 152
    Top = 432
  end
  object qyExamesLaudo: TSDQuery
    DatabaseName = 'exames'
    Options = []
    SessionName = 'SessaoExames'
    OnUpdateError = qyExamesLaudoUpdateError
    AfterInsert = qyExamesLaudoAfterInsert
    BeforePost = qyExamesLaudoBeforePost
    AfterPost = qyExamesLaudoAfterPost
    BeforeDelete = qyExamesLaudoBeforeDelete
    AfterDelete = qyExamesLaudoAfterDelete
    OnPostError = qyExamesLaudoPostError
    SQL.Strings = (
      'select * from exameslaudo'
      'where exa_id = '#39'0'#39)
    UpdateObject = updExamesLaudo
    Left = 208
    Top = 360
    object qyExamesLaudoexa_id: TStringField
      DisplayLabel = 'ID Exame'
      FieldName = 'exa_id'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object qyExamesLaudoexa_laudo: TBlobField
      DisplayLabel = 'Laudo'
      FieldName = 'exa_laudo'
    end
    object qyExamesLaudoexa_diagnostico: TBlobField
      DisplayLabel = 'Diagn'#243'stico'
      FieldName = 'exa_diagnostico'
    end
  end
  object updExamesLaudo: TSDUpdateSQL
    RefreshSQL.Strings = (
      'select exa_id, exa_laudo, exa_diagnostico'#13#10'from exameslaudo'
      'where'
      '  exa_id = :OLD_exa_id')
    ModifySQL.Strings = (
      'update exameslaudo'
      'set'
      '  exa_id = :exa_id,'
      '  exa_laudo = :exa_laudo,'
      '  exa_diagnostico = :exa_diagnostico'
      'where'
      '  exa_id = :OLD_exa_id')
    InsertSQL.Strings = (
      'insert into exameslaudo'
      '  (exa_id, exa_laudo, exa_diagnostico)'
      'values'
      '  (:exa_id, :exa_laudo, :exa_diagnostico)')
    DeleteSQL.Strings = (
      'delete from exameslaudo'
      'where'
      '  exa_id = :OLD_exa_id')
    Left = 280
    Top = 360
  end
  object qyExamesCitoMacro: TSDQuery
    DatabaseName = 'exames'
    Options = []
    SessionName = 'SessaoExames'
    OnUpdateError = qyExamesCitoMacroUpdateError
    AfterInsert = qyExamesCitoMacroAfterInsert
    BeforePost = qyExamesCitoMacroBeforePost
    AfterPost = qyExamesCitoMacroAfterPost
    BeforeDelete = qyExamesCitoMacroBeforeDelete
    AfterDelete = qyExamesCitoMacroAfterDelete
    OnPostError = qyExamesCitoMacroPostError
    SQL.Strings = (
      'select * from examescitomacro'
      'where exa_id = '#39'0'#39)
    UpdateObject = updExamesCitoMacro
    Left = 48
    Top = 200
    object qyExamesCitoMacroecm_id: TIntegerField
      DisplayLabel = 'ID Macro'
      FieldName = 'ecm_id'
      Visible = False
    end
    object qyExamesCitoMacroexa_id: TStringField
      DisplayLabel = 'ID Exame'
      FieldName = 'exa_id'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object qyExamesCitoMacroecm_macro: TBlobField
      DisplayLabel = 'Macro'
      FieldName = 'ecm_macro'
      Visible = False
    end
  end
  object updExamesCitoMacro: TSDUpdateSQL
    RefreshSQL.Strings = (
      'select ecm_id, exa_id, ecm_macro'#13#10'from examescitomacro'
      'where'
      '  ecm_id = :OLD_ecm_id')
    ModifySQL.Strings = (
      'update examescitomacro'
      'set'
      '  ecm_id = :ecm_id,'
      '  exa_id = :exa_id,'
      '  ecm_macro = :ecm_macro'
      'where'
      '  ecm_id = :OLD_ecm_id')
    InsertSQL.Strings = (
      'insert into examescitomacro'
      '  (ecm_id, exa_id, ecm_macro)'
      'values'
      '  (:ecm_id, :exa_id, :ecm_macro)')
    DeleteSQL.Strings = (
      'delete from examescitomacro'
      'where'
      '  ecm_id = :OLD_ecm_id')
    Left = 144
    Top = 200
  end
  object qyExamesDoencas: TSDQuery
    DatabaseName = 'exames'
    Options = []
    SessionName = 'SessaoExames'
    OnUpdateError = qyExamesDoencasUpdateError
    AfterInsert = qyExamesDoencasAfterInsert
    BeforePost = qyExamesDoencasBeforePost
    AfterPost = qyExamesDoencasAfterPost
    BeforeDelete = qyExamesDoencasBeforeDelete
    AfterDelete = qyExamesDoencasAfterDelete
    OnPostError = qyExamesDoencasPostError
    SQL.Strings = (
      
        'select d.edo_id, d.exa_id, d.sct_subcat, d.mat_id, s.sct_descabr' +
        'ev'
      'from examesdoencas d, cid10subcategorias s'
      'where d.sct_subcat = s.sct_subcat'
      'and d.exa_id = '#39'0'#39)
    UpdateObject = updExamesDoencas
    Left = 40
    Top = 280
    object qyExamesDoencasedo_id: TIntegerField
      DisplayLabel = 'ID doen'#231'a'
      FieldName = 'edo_id'
      Visible = False
    end
    object qyExamesDoencasexa_id: TStringField
      DisplayLabel = 'ID Exame'
      FieldName = 'exa_id'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object qyExamesDoencassct_subcat: TStringField
      DisplayLabel = 'C'#243'd. Subc.'
      DisplayWidth = 10
      FieldName = 'sct_subcat'
      Size = 10
    end
    object qyExamesDoencassct_descabrev: TStringField
      DisplayLabel = 'Desc. abrev.'
      FieldName = 'sct_descabrev'
      Size = 80
    end
    object qyExamesDoencasmat_id: TIntegerField
      DisplayLabel = 'ID Material'
      FieldName = 'mat_id'
      Visible = False
    end
  end
  object updExamesDoencas: TSDUpdateSQL
    RefreshSQL.Strings = (
      'select edo_id, exa_id, sct_subcat, mat_id'#13#10'from examesdoencas'
      'where'
      '  edo_id = :OLD_edo_id')
    ModifySQL.Strings = (
      'update examesdoencas'
      'set'
      '  edo_id = :edo_id,'
      '  exa_id = :exa_id,'
      '  sct_subcat = :sct_subcat,'
      '  mat_id = :mat_id'
      'where'
      '  edo_id = :OLD_edo_id')
    InsertSQL.Strings = (
      'insert into examesdoencas'
      '  (edo_id, exa_id, sct_subcat, mat_id)'
      'values'
      '  (:edo_id, :exa_id, :sct_subcat, :mat_id)')
    DeleteSQL.Strings = (
      'delete from examesdoencas'
      'where'
      '  edo_id = :OLD_edo_id')
    Left = 112
    Top = 280
  end
  object qyExamesFinal: TSDQuery
    DatabaseName = 'exames'
    Options = []
    SessionName = 'SessaoExames'
    OnUpdateError = qyExamesFinalUpdateError
    AfterInsert = qyExamesFinalAfterInsert
    BeforePost = qyExamesFinalBeforePost
    AfterPost = qyExamesFinalAfterPost
    BeforeDelete = qyExamesFinalBeforeDelete
    AfterDelete = qyExamesFinalAfterDelete
    OnPostError = qyExamesFinalPostError
    SQL.Strings = (
      'select exa_id, exa_data, usu_id from examesfinal')
    UpdateObject = updExamesFinal
    Left = 224
    Top = 280
    object qyExamesFinalexa_id: TStringField
      FieldName = 'exa_id'
      Size = 10
    end
    object qyExamesFinalexa_data: TDateField
      FieldName = 'exa_data'
    end
    object qyExamesFinalusu_id: TIntegerField
      FieldName = 'usu_id'
    end
  end
  object updExamesFinal: TSDUpdateSQL
    RefreshSQL.Strings = (
      'select exa_id, exa_data, usu_id'#13#10'from examesfinal'
      'where'
      '  exa_id = :OLD_exa_id')
    ModifySQL.Strings = (
      'update examesfinal'
      'set'
      '  exa_id = :exa_id,'
      '  exa_data = :exa_data,'
      '  usu_id = :usu_id'
      'where'
      '  exa_id = :OLD_exa_id')
    InsertSQL.Strings = (
      'insert into examesfinal'
      '  (exa_id, exa_data, usu_id)'
      'values'
      '  (:exa_id, :exa_data, :usu_id)')
    DeleteSQL.Strings = (
      'delete from examesfinal'
      'where'
      '  exa_id = :OLD_exa_id')
    Left = 304
    Top = 280
  end
  object qyExamesHistMicro: TSDQuery
    DatabaseName = 'exames'
    Options = []
    SessionName = 'SessaoExames'
    OnUpdateError = qyExamesHistMicroUpdateError
    AfterInsert = qyExamesHistMicroAfterInsert
    BeforePost = qyExamesHistMicroBeforePost
    AfterPost = qyExamesHistMicroAfterPost
    BeforeDelete = qyExamesHistMicroBeforeDelete
    AfterDelete = qyExamesHistMicroAfterDelete
    OnPostError = qyExamesHistMicroPostError
    SQL.Strings = (
      
        'select ehr_id, exa_id, ehr_microscopia, ehr_diagnostico, ehr_com' +
        'plemento from exameshistmicro')
    UpdateObject = updExamesHistMicro
    Left = 728
    Top = 112
    object qyExamesHistMicroehr_id: TIntegerField
      DisplayLabel = 'ID'
      DisplayWidth = 8
      FieldName = 'ehr_id'
      Visible = False
    end
    object qyExamesHistMicroexa_id: TStringField
      DisplayLabel = 'ID Exame'
      DisplayWidth = 8
      FieldName = 'exa_id'
      Visible = False
      Size = 10
    end
    object qyExamesHistMicroehr_microscopia: TBlobField
      DisplayLabel = 'Microscopia'
      FieldName = 'ehr_microscopia'
      Visible = False
    end
    object qyExamesHistMicroehr_diagnostico: TBlobField
      DisplayLabel = 'Diagn'#243'stico'
      FieldName = 'ehr_diagnostico'
      Visible = False
    end
    object qyExamesHistMicroehr_complemento: TBlobField
      DisplayLabel = 'Complemento'
      FieldName = 'ehr_complemento'
      Visible = False
    end
  end
  object updExamesHistMicro: TSDUpdateSQL
    RefreshSQL.Strings = (
      
        'select ehr_id, exa_id, ehr_microscopia, ehr_diagnostico, ehr_com' +
        'plemento'#13#10'from exameshistmicro'
      'where'
      '  ehr_id = :OLD_ehr_id')
    ModifySQL.Strings = (
      'update exameshistmicro'
      'set'
      '  ehr_id = :ehr_id,'
      '  exa_id = :exa_id,'
      '  ehr_microscopia = :ehr_microscopia,'
      '  ehr_diagnostico = :ehr_diagnostico,'
      '  ehr_complemento = :ehr_complemento'
      'where'
      '  ehr_id = :OLD_ehr_id')
    InsertSQL.Strings = (
      'insert into exameshistmicro'
      
        '  (ehr_id, exa_id, ehr_microscopia, ehr_diagnostico, ehr_complem' +
        'ento)'
      'values'
      
        '  (:ehr_id, :exa_id, :ehr_microscopia, :ehr_diagnostico, :ehr_co' +
        'mplemento)')
    DeleteSQL.Strings = (
      'delete from exameshistmicro'
      'where'
      '  ehr_id = :OLD_ehr_id')
    Left = 808
    Top = 112
  end
  object qyModelosLaudo: TSDQuery
    DatabaseName = 'exames'
    Options = []
    SessionName = 'SessaoExames'
    OnUpdateError = qyModelosLaudoUpdateError
    AfterInsert = qyModelosLaudoAfterInsert
    BeforePost = qyModelosLaudoBeforePost
    AfterPost = qyModelosLaudoAfterPost
    BeforeDelete = qyModelosLaudoBeforeDelete
    AfterDelete = qyModelosLaudoAfterDelete
    OnPostError = qyModelosLaudoPostError
    SQL.Strings = (
      
        'select mod_id, mod_descricao, mod_modelo, mod_diagnostico from l' +
        'audosmod'
      'order by mod_descricao')
    UpdateObject = updModelosLaudo
    Left = 280
    Top = 512
    object qyModelosLaudomod_descricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 30
      FieldName = 'mod_descricao'
      Size = 30
    end
    object qyModelosLaudomod_id: TIntegerField
      DisplayLabel = 'ID'
      DisplayWidth = 8
      FieldName = 'mod_id'
      DisplayFormat = '000000'
    end
    object qyModelosLaudomod_modelo: TBlobField
      DisplayLabel = 'Modelo'
      FieldName = 'mod_modelo'
      Visible = False
    end
    object qyModelosLaudomod_diagnostico: TBlobField
      DisplayLabel = 'Diagn'#243'stico'
      FieldName = 'mod_diagnostico'
      Visible = False
    end
  end
  object updModelosLaudo: TSDUpdateSQL
    RefreshSQL.Strings = (
      
        'select mod_id, mod_descricao, mod_modelo, mod_diagnostico'#13#10'from ' +
        'laudosmod'
      'where'
      '  mod_id = :OLD_mod_id')
    ModifySQL.Strings = (
      'update laudosmod'
      'set'
      '  mod_id = :mod_id,'
      '  mod_descricao = :mod_descricao,'
      '  mod_modelo = :mod_modelo,'
      '  mod_diagnostico = :mod_diagnostico'
      'where'
      '  mod_id = :OLD_mod_id')
    InsertSQL.Strings = (
      'insert into laudosmod'
      '  (mod_id, mod_descricao, mod_modelo, mod_diagnostico)'
      'values'
      '  (:mod_id, :mod_descricao, :mod_modelo, :mod_diagnostico)')
    DeleteSQL.Strings = (
      'delete from laudosmod'
      'where'
      '  mod_id = :OLD_mod_id')
    Left = 352
    Top = 512
  end
  object qyExamesTipoCito: TSDQuery
    DatabaseName = 'exames'
    Options = []
    SessionName = 'SessaoExames'
    OnUpdateError = qyExamesTipoCitoUpdateError
    AfterInsert = qyExamesTipoCitoAfterInsert
    BeforePost = qyExamesTipoCitoBeforePost
    AfterPost = qyExamesTipoCitoAfterPost
    BeforeDelete = qyExamesTipoCitoBeforeDelete
    AfterDelete = qyExamesTipoCitoAfterDelete
    OnPostError = qyExamesTipoCitoPostError
    SQL.Strings = (
      'select eto_id, eto_local, eto_descricao from examestipocito'
      'order by eto_local')
    UpdateObject = updExamesTipoCito
    Left = 640
    Top = 32
    object qyExamesTipoCitoeto_id: TIntegerField
      DisplayLabel = 'ID'
      DisplayWidth = 8
      FieldName = 'eto_id'
      DisplayFormat = '000'
    end
    object qyExamesTipoCitoeto_local: TStringField
      DisplayLabel = 'Local'
      DisplayWidth = 40
      FieldName = 'eto_local'
      Size = 40
    end
    object qyExamesTipoCitoeto_descricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 120
      FieldName = 'eto_descricao'
      Size = 120
    end
  end
  object updExamesTipoCito: TSDUpdateSQL
    RefreshSQL.Strings = (
      'select eto_id, eto_local, eto_descricao'#13#10'from examestipocito'
      'where'
      '  eto_id = :OLD_eto_id')
    ModifySQL.Strings = (
      'update examestipocito'
      'set'
      '  eto_id = :eto_id,'
      '  eto_local = :eto_local,'
      '  eto_descricao = :eto_descricao'
      'where'
      '  eto_id = :OLD_eto_id')
    InsertSQL.Strings = (
      'insert into examestipocito'
      '  (eto_id, eto_local, eto_descricao)'
      'values'
      '  (:eto_id, :eto_local, :eto_descricao)')
    DeleteSQL.Strings = (
      'delete from examestipocito'
      'where'
      '  eto_id = :OLD_eto_id')
    Left = 728
    Top = 32
  end
  object qyExamesObs: TSDQuery
    DatabaseName = 'exames'
    Options = []
    SessionName = 'SessaoExames'
    OnUpdateError = qyExamesObsUpdateError
    BeforePost = qyExamesObsBeforePost
    AfterPost = qyExamesObsAfterPost
    BeforeDelete = qyExamesObsBeforeDelete
    AfterDelete = qyExamesObsAfterDelete
    OnPostError = qyExamesObsPostError
    SQL.Strings = (
      'select exa_id, exa_obs from examesobs')
    UpdateObject = updExamesObs
    Left = 400
    Top = 16
    object qyExamesObsexa_id: TStringField
      DisplayLabel = 'ID do exame'
      FieldName = 'exa_id'
      Size = 10
    end
    object qyExamesObsexa_obs: TBlobField
      DisplayLabel = 'Obs.'
      FieldName = 'exa_obs'
    end
  end
  object updExamesObs: TSDUpdateSQL
    RefreshSQL.Strings = (
      'select exa_id, exa_obs'#13#10'from examesobs'
      'where'
      '  exa_id = :OLD_exa_id')
    ModifySQL.Strings = (
      'update examesobs'
      'set'
      '  exa_id = :exa_id,'
      '  exa_obs = :exa_obs'
      'where'
      '  exa_id = :OLD_exa_id')
    InsertSQL.Strings = (
      'insert into examesobs'
      '  (exa_id, exa_obs)'
      'values'
      '  (:exa_id, :exa_obs)')
    DeleteSQL.Strings = (
      'delete from examesobs'
      'where'
      '  exa_id = :OLD_exa_id')
    Left = 480
    Top = 16
  end
  object qyExamesTop: TSDQuery
    DatabaseName = 'exames'
    Options = []
    SessionName = 'SessaoExames'
    OnUpdateError = qyExamesTopUpdateError
    AfterInsert = qyExamesTopAfterInsert
    BeforePost = qyExamesTopBeforePost
    AfterPost = qyExamesTopAfterPost
    BeforeDelete = qyExamesTopBeforeDelete
    AfterDelete = qyExamesTopAfterDelete
    OnPostError = qyExamesTopPostError
    SQL.Strings = (
      'select e.etg_id, e.exa_id, e.etg_seq, e.top_id, t.top_descricao,'
      'e.etg_top, e.etg_reserva, e.ehi_id'
      'from examestop e, topografias t'
      'where e.top_id = t.top_id')
    UpdateObject = updExamesTop
    Left = 528
    Top = 432
    object qyExamesTopetg_seq: TIntegerField
      DisplayLabel = 'Seq.'
      DisplayWidth = 4
      FieldName = 'etg_seq'
    end
    object qyExamesToptop_descricao: TStringField
      DisplayLabel = 'Topografia'
      DisplayWidth = 39
      FieldName = 'top_descricao'
      Size = 50
    end
    object qyExamesTopetg_top: TStringField
      DisplayLabel = 'Topografia'
      DisplayWidth = 10
      FieldName = 'etg_top'
      Size = 10
    end
    object qyExamesTopetg_reserva: TBooleanField
      DisplayLabel = 'Reserva'
      DisplayWidth = 5
      FieldName = 'etg_reserva'
    end
    object qyExamesTopehi_id: TIntegerField
      DisplayLabel = 'ID'
      DisplayWidth = 7
      FieldName = 'ehi_id'
      DisplayFormat = '000000'
    end
    object qyExamesToptop_id: TIntegerField
      DisplayLabel = 'ID Topografia'
      DisplayWidth = 10
      FieldName = 'top_id'
      Visible = False
    end
    object qyExamesTopetg_id: TIntegerField
      DisplayLabel = 'ID'
      DisplayWidth = 10
      FieldName = 'etg_id'
      Visible = False
    end
    object qyExamesTopexa_id: TStringField
      DisplayLabel = 'ID Exame'
      DisplayWidth = 10
      FieldName = 'exa_id'
      Visible = False
      Size = 10
    end
  end
  object updExamesTop: TSDUpdateSQL
    RefreshSQL.Strings = (
      
        'select etg_id, exa_id, etg_seq, top_id, etg_top, etg_reserva, eh' +
        'i_id'#13#10'from examestop'
      'where'
      '  etg_id = :OLD_etg_id')
    ModifySQL.Strings = (
      'update examestop'
      'set'
      '  etg_id = :etg_id,'
      '  exa_id = :exa_id,'
      '  etg_seq = :etg_seq,'
      '  top_id = :top_id,'
      '  etg_top = :etg_top,'
      '  etg_reserva = :etg_reserva,'
      '  ehi_id = :ehi_id'
      'where'
      '  etg_id = :OLD_etg_id')
    InsertSQL.Strings = (
      'insert into examestop'
      
        '  (etg_id, exa_id, etg_seq, top_id, etg_top, etg_reserva, ehi_id' +
        ')'
      'values'
      
        '  (:etg_id, :exa_id, :etg_seq, :top_id, :etg_top, :etg_reserva, ' +
        ':ehi_id)')
    DeleteSQL.Strings = (
      'delete from examestop'
      'where'
      '  etg_id = :OLD_etg_id')
    Left = 624
    Top = 432
  end
  object qyExamesBlocos: TSDQuery
    DatabaseName = 'exames'
    Options = []
    SessionName = 'SessaoExames'
    OnUpdateError = qyExamesBlocosUpdateError
    AfterInsert = qyExamesBlocosAfterInsert
    BeforePost = qyExamesBlocosBeforePost
    AfterPost = qyExamesBlocosAfterPost
    BeforeDelete = qyExamesBlocosBeforeDelete
    AfterDelete = qyExamesBlocosAfterDelete
    OnPostError = qyExamesBlocosPostError
    SQL.Strings = (
      
        'select t.etg_seq, e.ebl_id, e.exa_id, e.etg_id, e.ebl_seq, e.ebl' +
        '_laminas,'
      'e.ebl_fragmentos'
      'from examesblocos e, examestop t'
      'where e.etg_id = t.etg_id')
    UpdateObject = updExamesBlocos
    Left = 176
    Top = 112
    object qyExamesBlocosetg_seq: TIntegerField
      DisplayLabel = 'Top.'
      DisplayWidth = 4
      FieldName = 'etg_seq'
    end
    object qyExamesBlocosebl_seq: TIntegerField
      DisplayLabel = 'Sequ'#234'ncia'
      DisplayWidth = 10
      FieldName = 'ebl_seq'
    end
    object qyExamesBlocosebl_fragmentos: TIntegerField
      DisplayLabel = 'Fragmentos'
      DisplayWidth = 10
      FieldName = 'ebl_fragmentos'
    end
    object qyExamesBlocosebl_laminas: TIntegerField
      DisplayLabel = 'L'#226'minas'
      DisplayWidth = 9
      FieldName = 'ebl_laminas'
    end
    object qyExamesBlocosetg_id: TIntegerField
      DisplayLabel = 'Top. ID'
      DisplayWidth = 4
      FieldName = 'etg_id'
      Visible = False
    end
    object qyExamesBlocosebl_id: TIntegerField
      DisplayLabel = 'ID'
      FieldName = 'ebl_id'
      Visible = False
    end
    object qyExamesBlocosexa_id: TStringField
      DisplayLabel = 'ID Exame'
      FieldName = 'exa_id'
      Visible = False
      Size = 10
    end
  end
  object updExamesBlocos: TSDUpdateSQL
    RefreshSQL.Strings = (
      
        'select ebl_id, exa_id, etg_id, ebl_seq, ebl_laminas, ebl_fragmen' +
        'tos'#13#10'from examesblocos'
      'where'
      '  ebl_id = :OLD_ebl_id')
    ModifySQL.Strings = (
      'update examesblocos'
      'set'
      '  ebl_id = :ebl_id,'
      '  exa_id = :exa_id,'
      '  etg_id = :etg_id,'
      '  ebl_seq = :ebl_seq,'
      '  ebl_laminas = :ebl_laminas,'
      '  ebl_fragmentos = :ebl_fragmentos'
      'where'
      '  ebl_id = :OLD_ebl_id')
    InsertSQL.Strings = (
      'insert into examesblocos'
      '  (ebl_id, exa_id, etg_id, ebl_seq, ebl_laminas, ebl_fragmentos)'
      'values'
      
        '  (:ebl_id, :exa_id, :etg_id, :ebl_seq, :ebl_laminas, :ebl_fragm' +
        'entos)')
    DeleteSQL.Strings = (
      'delete from examesblocos'
      'where'
      '  ebl_id = :OLD_ebl_id')
    Left = 248
    Top = 112
  end
  object qyModLaudoHist: TSDQuery
    DatabaseName = 'exames'
    Options = []
    SessionName = 'SessaoExames'
    OnUpdateError = qyModLaudoHistUpdateError
    AfterInsert = qyModLaudoHistAfterInsert
    BeforePost = qyModLaudoHistBeforePost
    AfterPost = qyModLaudoHistAfterPost
    BeforeDelete = qyModLaudoHistBeforeDelete
    AfterDelete = qyModLaudoHistAfterDelete
    OnPostError = qyModLaudoHistPostError
    SQL.Strings = (
      
        'select lmh_id, lmh_descricao, lmh_microscopia, lmh_diagnostico f' +
        'rom laudosmodhist'
      'order by lmh_descricao')
    UpdateObject = updModLaudoHist
    Left = 512
    Top = 512
    object qyModLaudoHistlmh_descricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 30
      FieldName = 'lmh_descricao'
      Size = 30
    end
    object qyModLaudoHistlmh_id: TIntegerField
      DisplayLabel = 'ID'
      DisplayWidth = 8
      FieldName = 'lmh_id'
      DisplayFormat = '000'
      EditFormat = '000'
    end
    object qyModLaudoHistlmh_microscopia: TBlobField
      DisplayLabel = 'Microscopia'
      FieldName = 'lmh_microscopia'
      Visible = False
    end
    object qyModLaudoHistlmh_diagnostico: TBlobField
      DisplayLabel = 'Diagn'#243'stico'
      FieldName = 'lmh_diagnostico'
      Visible = False
    end
  end
  object updModLaudoHist: TSDUpdateSQL
    RefreshSQL.Strings = (
      
        'select lmh_id, lmh_descricao, lmh_microscopia, lmh_diagnostico'#13#10 +
        'from laudosmodhist'
      'where'
      '  lmh_id = :OLD_lmh_id')
    ModifySQL.Strings = (
      'update laudosmodhist'
      'set'
      '  lmh_id = :lmh_id,'
      '  lmh_descricao = :lmh_descricao,'
      '  lmh_microscopia = :lmh_microscopia,'
      '  lmh_diagnostico = :lmh_diagnostico'
      'where'
      '  lmh_id = :OLD_lmh_id')
    InsertSQL.Strings = (
      'insert into laudosmodhist'
      '  (lmh_id, lmh_descricao, lmh_microscopia, lmh_diagnostico)'
      'values'
      '  (:lmh_id, :lmh_descricao, :lmh_microscopia, :lmh_diagnostico)')
    DeleteSQL.Strings = (
      'delete from laudosmodhist'
      'where'
      '  lmh_id = :OLD_lmh_id')
    Left = 600
    Top = 512
  end
  object qyMin: TSDQuery
    DatabaseName = 'exames'
    Options = []
    SessionName = 'SessaoExames'
    SQL.Strings = (
      'select min(img_exame) from imagens')
    Left = 328
    Top = 16
    object qyMinmin: TMemoField
      FieldName = 'min'
      BlobType = ftMemo
    end
  end
  object qyExamesTISS: TSDQuery
    DatabaseName = 'exames'
    Options = []
    SessionName = 'SessaoExames'
    OnUpdateError = qyExamesTISSUpdateError
    AfterInsert = qyExamesTISSAfterInsert
    BeforePost = qyExamesTISSBeforePost
    AfterPost = qyExamesTISSAfterPost
    BeforeDelete = qyExamesTISSBeforeDelete
    AfterDelete = qyExamesTISSAfterDelete
    OnPostError = qyExamesTISSPostError
    SQL.Strings = (
      'select * from examestiss')
    UpdateObject = updExamesTISS
    Left = 392
    Top = 280
    object qyExamesTISSexa_id: TStringField
      FieldName = 'exa_id'
      FixedChar = True
      Size = 10
    end
    object qyExamesTISStis_tipoatend: TIntegerField
      FieldName = 'tis_tipoatend'
    end
  end
  object updExamesTISS: TSDUpdateSQL
    RefreshSQL.Strings = (
      'select exa_id, tis_tipoatend'#13#10'from examestiss'
      'where'
      '  exa_id = :OLD_exa_id')
    ModifySQL.Strings = (
      'update examestiss'
      'set'
      '  exa_id = :exa_id,'
      '  tis_tipoatend = :tis_tipoatend'
      'where'
      '  exa_id = :OLD_exa_id')
    InsertSQL.Strings = (
      'insert into examestiss'
      '  (exa_id, tis_tipoatend)'
      'values'
      '  (:exa_id, :tis_tipoatend)')
    DeleteSQL.Strings = (
      'delete from examestiss'
      'where'
      '  exa_id = :OLD_exa_id')
    Left = 464
    Top = 280
  end
  object qyExamesAut: TSDQuery
    DatabaseName = 'exames'
    Options = []
    SessionName = 'SessaoExames'
    OnUpdateError = qyExamesAutUpdateError
    AfterInsert = qyExamesAutAfterInsert
    BeforePost = qyExamesAutBeforePost
    AfterPost = qyExamesAutAfterPost
    BeforeDelete = qyExamesAutBeforeDelete
    AfterDelete = qyExamesAutAfterDelete
    OnPostError = qyExamesAutPostError
    SQL.Strings = (
      'select * from examesaut')
    UpdateObject = updExamesAut
    Left = 680
    Top = 192
    object qyExamesAutexa_id: TStringField
      DisplayLabel = 'ID Exame'
      FieldName = 'exa_id'
      Size = 10
    end
    object qyExamesAutaut_senha: TStringField
      DisplayLabel = 'Senha'
      FieldName = 'aut_senha'
    end
    object qyExamesAutaut_data: TDateField
      DisplayLabel = 'Data'
      FieldName = 'aut_data'
      DisplayFormat = 'dd/MM/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
  end
  object updExamesAut: TSDUpdateSQL
    RefreshSQL.Strings = (
      'select exa_id, aut_senha, aut_data'
      'from examesaut'
      'where'
      '  exa_id = :OLD_exa_id')
    ModifySQL.Strings = (
      'update examesaut'
      'set'
      '  exa_id = :exa_id,'
      '  aut_senha = :aut_senha,'
      '  aut_data = :aut_data'
      'where'
      '  exa_id = :OLD_exa_id')
    InsertSQL.Strings = (
      'insert into examesaut'
      '  (exa_id, aut_senha, aut_data)'
      'values'
      '  (:exa_id, :aut_senha, :aut_data)')
    DeleteSQL.Strings = (
      'delete from examesaut'
      'where'
      '  exa_id = :OLD_exa_id')
    Left = 738
    Top = 192
  end
  object qyExamesFrases: TSDQuery
    DatabaseName = 'exames'
    Options = []
    SessionName = 'SessaoExames'
    OnUpdateError = qyExamesFrasesUpdateError
    BeforePost = qyExamesFrasesBeforePost
    AfterPost = qyExamesFrasesAfterPost
    BeforeDelete = qyExamesFrasesBeforeDelete
    AfterDelete = qyExamesFrasesAfterDelete
    OnPostError = qyExamesFrasesPostError
    SQL.Strings = (
      'select f.exa_id, f.ctf_id, c.ctf_frase'
      'from examesfrases f, citofrases c'
      'where f.ctf_id = c.ctf_id')
    UpdateObject = updExamesFrases
    Left = 736
    Top = 280
    object qyExamesFrasesexa_id: TStringField
      DisplayLabel = 'ID Exame'
      FieldName = 'exa_id'
      FixedChar = True
      Size = 10
    end
    object qyExamesFrasesctf_id: TIntegerField
      DisplayLabel = 'ID Frase'
      FieldName = 'ctf_id'
    end
    object qyExamesFrasesctf_frase: TStringField
      DisplayLabel = 'Frase'
      FieldName = 'ctf_frase'
      Size = 100
    end
  end
  object updExamesFrases: TSDUpdateSQL
    RefreshSQL.Strings = (
      'select exa_id, ctf_id'#13#10'from examesfrases'
      'where'
      '  exa_id = :OLD_exa_id and'
      '  ctf_id = :OLD_ctf_id')
    ModifySQL.Strings = (
      'update examesfrases'
      'set'
      '  exa_id = :exa_id,'
      '  ctf_id = :ctf_id'
      'where'
      '  exa_id = :OLD_exa_id and'
      '  ctf_id = :OLD_ctf_id')
    InsertSQL.Strings = (
      'insert into examesfrases'
      '  (exa_id, ctf_id)'
      'values'
      '  (:exa_id, :ctf_id)')
    DeleteSQL.Strings = (
      'delete from examesfrases'
      'where'
      '  exa_id = :OLD_exa_id and'
      '  ctf_id = :OLD_ctf_id')
    Left = 808
    Top = 280
  end
  object qyExamesColeta: TSDQuery
    DatabaseName = 'exames'
    Options = []
    SessionName = 'SessaoExames'
    OnUpdateError = qyExamesColetaUpdateError
    BeforePost = qyExamesColetaBeforePost
    AfterPost = qyExamesColetaAfterPost
    BeforeDelete = qyExamesColetaBeforeDelete
    AfterDelete = qyExamesColetaAfterDelete
    OnPostError = qyExamesColetaPostError
    SQL.Strings = (
      'select exa_id, exc_data, exc_nomemae'
      'from examescoleta'
      'where exa_id = '#39'0'#39)
    UpdateObject = updExamesColeta
    Left = 336
    Top = 112
    object qyExamesColetaexa_id: TStringField
      DisplayLabel = 'ID Exame'
      FieldName = 'exa_id'
      FixedChar = True
      Size = 10
    end
    object qyExamesColetaexc_data: TDateField
      DisplayLabel = 'Data Coleta'
      FieldName = 'exc_data'
      DisplayFormat = 'dd/MM/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object qyExamesColetaexc_nomemae: TStringField
      DisplayLabel = 'Nome da m'#227'e'
      FieldName = 'exc_nomemae'
      Size = 70
    end
  end
  object updExamesColeta: TSDUpdateSQL
    RefreshSQL.Strings = (
      'select exa_id, exc_data, exc_nomemae'
      'from examescoleta'
      'where'
      '  exa_id = :OLD_exa_id')
    ModifySQL.Strings = (
      'update examescoleta'
      'set'
      '  exa_id = :exa_id,'
      '  exc_data = :exc_data,'
      '  exc_nomemae = :exc_nomemae'
      'where'
      '  exa_id = :OLD_exa_id')
    InsertSQL.Strings = (
      'insert into examescoleta'
      '  (exa_id, exc_data, exc_nomemae)'
      'values'
      '  (:exa_id, :exc_data, :exc_nomemae)')
    DeleteSQL.Strings = (
      'delete from examescoleta'
      'where'
      '  exa_id = :OLD_exa_id')
    Left = 416
    Top = 112
  end
end
