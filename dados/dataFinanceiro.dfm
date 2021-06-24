inherited dmFinanceiro: TdmFinanceiro
  OldCreateOrder = True
  Width = 980
  inherited database: TSDDatabase
    DatabaseName = 'Financeiro'
    Params.Strings = (
      'USER NAME=postgres'
      'PASSWORD=postgres')
    RemoteDatabase = 'localhost:genesis'
    ServerType = stPostgreSQL
    SessionName = 'SessaoFinanceiro'
    Left = 48
  end
  inherited QGeraCodigo: TSDQuery
    DatabaseName = 'financeiro'
    SessionName = 'SessaoFinanceiro'
    Left = 208
  end
  inherited QTemp: TSDQuery
    DatabaseName = 'financeiro'
    SessionName = 'SessaoFinanceiro'
    Left = 272
  end
  object SessaoFinanceiro: TSDSession
    Active = True
    SessionName = 'SessaoFinanceiro'
    Left = 120
    Top = 16
  end
  object qyExamesCob: TSDQuery
    DatabaseName = 'financeiro'
    Options = []
    SessionName = 'SessaoFinanceiro'
    OnUpdateError = qyExamesCobUpdateError
    AfterInsert = qyExamesCobAfterInsert
    BeforePost = qyExamesCobBeforePost
    AfterPost = qyExamesCobAfterPost
    BeforeDelete = qyExamesCobBeforeDelete
    AfterDelete = qyExamesCobAfterDelete
    OnPostError = qyExamesCobPostError
    SQL.Strings = (
      'select * from examescob'
      'limit 1')
    UpdateObject = updExamesCob
    Left = 224
    Top = 160
    object qyExamesCobeco_id: TIntegerField
      DisplayLabel = 'Id. Cob.'
      FieldName = 'eco_id'
      Visible = False
    end
    object qyExamesCobexa_id: TStringField
      DisplayLabel = 'ID Exame'
      FieldName = 'exa_id'
      Visible = False
      FixedChar = True
      Size = 10
    end
    object qyExamesCobeco_status: TBooleanField
      DisplayLabel = 'Status'
      FieldName = 'eco_status'
    end
    object qyExamesCobeco_valor: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'eco_valor'
      DisplayFormat = '#,###,###,##0.00'
    end
    object qyExamesCobhis_id: TIntegerField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'his_id'
    end
    object qyExamesCobeco_gerarcob: TBooleanField
      DisplayLabel = 'Gerar cob.'
      FieldName = 'eco_gerarcob'
      Visible = False
    end
    object qyExamesCobeco_vlrpago: TFloatField
      DisplayLabel = 'Vlr. Pago'
      FieldName = 'eco_vlrpago'
      DisplayFormat = '#,###,###,##0.00'
    end
  end
  object updExamesCob: TSDUpdateSQL
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
    Left = 304
    Top = 160
  end
  object qyTissPend: TSDQuery
    DatabaseName = 'financeiro'
    Options = []
    SessionName = 'SessaoFinanceiro'
    OnUpdateError = qyTissPendUpdateError
    AfterInsert = qyTissPendAfterInsert
    BeforePost = qyTissPendBeforePost
    AfterPost = qyTissPendAfterPost
    BeforeDelete = qyTissPendBeforeDelete
    AfterDelete = qyTissPendAfterDelete
    OnPostError = qyTissPendPostError
    SQL.Strings = (
      'select tpd_id, exa_id, tpd_descricao from tisspend')
    UpdateObject = updTissPend
    Left = 416
    Top = 160
    object qyTissPendtpd_id: TIntegerField
      DisplayLabel = 'ID'
      FieldName = 'tpd_id'
    end
    object qyTissPendexa_id: TStringField
      DisplayLabel = 'Exame'
      FieldName = 'exa_id'
      Size = 10
    end
    object qyTissPendtpd_descricao: TStringField
      DisplayLabel = 'Pend'#234'ncia'
      DisplayWidth = 80
      FieldName = 'tpd_descricao'
      Size = 80
    end
  end
  object updTissPend: TSDUpdateSQL
    RefreshSQL.Strings = (
      'select tpd_id, exa_id, tpd_descricao'#13#10'from tisspend'
      'where'
      '  tpd_id = :OLD_tpd_id')
    ModifySQL.Strings = (
      'update tisspend'
      'set'
      '  tpd_id = :tpd_id,'
      '  exa_id = :exa_id,'
      '  tpd_descricao = :tpd_descricao'
      'where'
      '  tpd_id = :OLD_tpd_id')
    InsertSQL.Strings = (
      'insert into tisspend'
      '  (tpd_id, exa_id, tpd_descricao)'
      'values'
      '  (:tpd_id, :exa_id, :tpd_descricao)')
    DeleteSQL.Strings = (
      'delete from tisspend'
      'where'
      '  tpd_id = :OLD_tpd_id')
    Left = 496
    Top = 160
  end
  object scLimparPendAnt: TSDScript
    DatabaseName = 'financeiro'
    SessionName = 'SessaoFinanceiro'
    SQL.Strings = (
      'delete from tisspend where exa_id = '#39'0'#39)
    Transaction = True
    Left = 384
    Top = 16
  end
  object qyConvProc: TSDQuery
    DatabaseName = 'financeiro'
    Options = []
    SessionName = 'SessaoFinanceiro'
    OnUpdateError = qyConvProcUpdateError
    AfterInsert = qyConvProcAfterInsert
    BeforePost = qyConvProcBeforePost
    AfterPost = qyConvProcAfterPost
    BeforeDelete = qyConvProcBeforeDelete
    AfterDelete = qyConvProcAfterDelete
    OnPostError = qyConvProcPostError
    SQL.Strings = (
      'select '
      
        'c.cov_id, c.prc_tuss, p.prc_descricao, c.cpr_vlrhora, c.cpr_vlro' +
        'per, '
      'c.cpr_vlrfilme, c.cpr_vlrtotal'
      'from convproc c, procedimentos p'
      'where c.prc_tuss = p.prc_tuss'
      'limit 1')
    UpdateObject = updConvProc
    Left = 40
    Top = 160
    object qyConvProcprc_tuss: TIntegerField
      DisplayLabel = 'C'#243'd. TUSS'
      DisplayWidth = 10
      FieldName = 'prc_tuss'
    end
    object qyConvProcprc_descricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 80
      FieldName = 'prc_descricao'
      Size = 80
    end
    object qyConvProccpr_vlrhora: TFloatField
      DisplayLabel = 'Vlr. Hora'
      DisplayWidth = 10
      FieldName = 'cpr_vlrhora'
      DisplayFormat = '#,###,###,##0.00'
    end
    object qyConvProccpr_vlrfilme: TFloatField
      DisplayLabel = 'Vlr. Filme'
      DisplayWidth = 10
      FieldName = 'cpr_vlrfilme'
      DisplayFormat = '#,###,###,##0.00'
    end
    object qyConvProccpr_vlroper: TFloatField
      DisplayLabel = 'Vlr. Oper.'
      DisplayWidth = 10
      FieldName = 'cpr_vlroper'
      DisplayFormat = '#,###,###,##0.00'
    end
    object qyConvProccpr_vlrtotal: TFloatField
      DisplayLabel = 'Vlr. Total'
      DisplayWidth = 10
      FieldName = 'cpr_vlrtotal'
      DisplayFormat = '#,###,###,##0.00'
    end
    object qyConvProccov_id: TIntegerField
      DisplayLabel = 'ID Conv'#234'nio'
      FieldName = 'cov_id'
      Visible = False
    end
  end
  object updConvProc: TSDUpdateSQL
    RefreshSQL.Strings = (
      
        'select cov_id, prc_tuss, cpr_vlrhora, cpr_vlroper, cpr_vlrfilme,' +
        ' cpr_vlrtotal'#13#10'from convproc'
      'where'
      '  cov_id = :OLD_cov_id and'
      '  prc_tuss = :OLD_prc_tuss')
    ModifySQL.Strings = (
      'update convproc'
      'set'
      '  cov_id = :cov_id,'
      '  prc_tuss = :prc_tuss,'
      '  cpr_vlrhora = :cpr_vlrhora,'
      '  cpr_vlroper = :cpr_vlroper,'
      '  cpr_vlrfilme = :cpr_vlrfilme,'
      '  cpr_vlrtotal = :cpr_vlrtotal'
      'where'
      '  cov_id = :OLD_cov_id and'
      '  prc_tuss = :OLD_prc_tuss')
    InsertSQL.Strings = (
      'insert into convproc'
      
        '  (cov_id, prc_tuss, cpr_vlrhora, cpr_vlroper, cpr_vlrfilme, cpr' +
        '_vlrtotal)'
      'values'
      
        '  (:cov_id, :prc_tuss, :cpr_vlrhora, :cpr_vlroper, :cpr_vlrfilme' +
        ', :cpr_vlrtotal)')
    DeleteSQL.Strings = (
      'delete from convproc'
      'where'
      '  cov_id = :OLD_cov_id and'
      '  prc_tuss = :OLD_prc_tuss')
    Left = 128
    Top = 160
  end
  object scDeleteConvProc: TSDScript
    DatabaseName = 'financeiro'
    SessionName = 'SessaoFinanceiro'
    Transaction = False
    Left = 488
    Top = 16
  end
  object qyCaixa: TSDQuery
    DatabaseName = 'financeiro'
    Options = []
    SessionName = 'SessaoFinanceiro'
    OnUpdateError = qyCaixaUpdateError
    AfterInsert = qyCaixaAfterInsert
    BeforePost = qyCaixaBeforePost
    AfterPost = qyCaixaAfterPost
    BeforeDelete = qyCaixaBeforeDelete
    AfterDelete = qyCaixaAfterDelete
    OnPostError = qyCaixaPostError
    SQL.Strings = (
      'select '
      'c.cai_codigo, c.cai_data, c.cai_descricao, c.cai_valor,'
      'c.mov_codigo, m.mov_descricao, m.mov_tipo,  c.con_codigo, '
      't.con_descricao, c.cai_referencia'
      'from caixa c, movimentos m, contas t'
      'where c.mov_codigo = m.mov_codigo '
      'and c.con_codigo = t.con_codigo'
      'and c.con_codigo = -1')
    UpdateObject = updCaixa
    Left = 40
    Top = 88
    object qyCaixacai_codigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cai_codigo'
      Visible = False
    end
    object qyCaixacai_data: TDateField
      DisplayLabel = 'Data'
      FieldName = 'cai_data'
      DisplayFormat = 'dd/MM/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object qyCaixacai_descricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'cai_descricao'
      Size = 50
    end
    object qyCaixacai_valor: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'cai_valor'
      DisplayFormat = '#,###,###,##0.00'
    end
    object qyCaixamov_codigo: TIntegerField
      DisplayLabel = 'C'#243'd. Mov.'
      FieldName = 'mov_codigo'
      Visible = False
    end
    object qyCaixamov_descricao: TStringField
      DisplayLabel = 'Tp. Mov.'
      FieldName = 'mov_descricao'
    end
    object qyCaixamov_tipo: TStringField
      DisplayLabel = 'Mov. Tipo'
      FieldName = 'mov_tipo'
      FixedChar = True
      Size = 1
    end
    object qyCaixacon_codigo: TIntegerField
      DisplayLabel = 'C'#243'd. Conta'
      FieldName = 'con_codigo'
    end
    object qyCaixacon_descricao: TStringField
      DisplayLabel = 'Conta'
      FieldName = 'con_descricao'
      Size = 15
    end
    object qyCaixacai_referencia: TStringField
      DisplayLabel = 'Refer'#234'ncia'
      FieldName = 'cai_referencia'
      Size = 10
    end
  end
  object updCaixa: TSDUpdateSQL
    RefreshSQL.Strings = (
      
        'select cai_codigo, cai_data, cai_descricao, cai_valor, mov_codig' +
        'o, con_codigo, cai_referencia'
      'from caixa'
      'where'
      '  cai_codigo = :OLD_cai_codigo')
    ModifySQL.Strings = (
      'update caixa'
      'set'
      '  cai_codigo = :cai_codigo,'
      '  cai_data = :cai_data,'
      '  cai_descricao = :cai_descricao,'
      '  cai_valor = :cai_valor,'
      '  mov_codigo = :mov_codigo,'
      '  con_codigo = :con_codigo,'
      '  cai_referencia = :cai_referencia'
      'where'
      '  cai_codigo = :OLD_cai_codigo')
    InsertSQL.Strings = (
      'insert into caixa'
      
        '  (cai_codigo, cai_data, cai_descricao, cai_valor, mov_codigo, c' +
        'on_codigo, cai_referencia)'
      'values'
      
        '  (:cai_codigo, :cai_data, :cai_descricao, :cai_valor, :mov_codi' +
        'go, :con_codigo, :cai_referencia)')
    DeleteSQL.Strings = (
      'delete from caixa'
      'where'
      '  cai_codigo = :OLD_cai_codigo')
    Left = 128
    Top = 88
  end
  object qyPagar: TSDQuery
    DatabaseName = 'financeiro'
    Options = []
    SessionName = 'SessaoFinanceiro'
    OnUpdateError = qyPagarUpdateError
    AfterInsert = qyPagarAfterInsert
    BeforePost = qyPagarBeforePost
    AfterPost = qyPagarAfterPost
    BeforeDelete = qyPagarBeforeDelete
    AfterDelete = qyPagarAfterDelete
    OnPostError = qyPagarPostError
    SQL.Strings = (
      'select'
      'p.pag_vencimento, p.for_codigo, f.for_razao, f.for_fone,'
      
        'p.pag_nf, p.pag_parcela, p.pag_emissao, p.pag_valor, p.pag_acres' +
        'cimo,'
      'p.pag_desconto, p.pag_pago, p.pag_saldo, p.pag_status '
      'from pagar p, fornecedores f'
      'where p.for_codigo = f.for_codigo')
    UpdateObject = updPagar
    Left = 40
    Top = 240
    object qyPagarpag_vencimento: TDateField
      DisplayLabel = 'Vencimento'
      DisplayWidth = 10
      FieldName = 'pag_vencimento'
      DisplayFormat = 'dd/MM/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object qyPagarfor_razao: TStringField
      DisplayLabel = 'Fornecedor'
      DisplayWidth = 45
      FieldName = 'for_razao'
      Size = 60
    end
    object qyPagarfor_fone: TStringField
      DisplayLabel = 'Fone'
      DisplayWidth = 15
      FieldName = 'for_fone'
      Size = 15
    end
    object qyPagarpag_nf: TIntegerField
      DisplayLabel = 'NF'
      DisplayWidth = 10
      FieldName = 'pag_nf'
    end
    object qyPagarpag_parcela: TIntegerField
      DisplayLabel = 'Parc.'
      DisplayWidth = 7
      FieldName = 'pag_parcela'
    end
    object qyPagarpag_valor: TFloatField
      DisplayLabel = 'Valor'
      DisplayWidth = 10
      FieldName = 'pag_valor'
      DisplayFormat = '#,###,###,##0.00'
    end
    object qyPagarpag_acrescimo: TFloatField
      DisplayLabel = 'Acr'#233'scimo'
      DisplayWidth = 10
      FieldName = 'pag_acrescimo'
      DisplayFormat = '#,###,###,##0.00'
    end
    object qyPagarpag_desconto: TFloatField
      DisplayLabel = 'Desconto'
      DisplayWidth = 10
      FieldName = 'pag_desconto'
      DisplayFormat = '#,###,###,##0.00'
    end
    object qyPagarpag_pago: TFloatField
      DisplayLabel = 'Pago'
      DisplayWidth = 10
      FieldName = 'pag_pago'
      DisplayFormat = '#,###,###,##0.00'
    end
    object qyPagarpag_saldo: TFloatField
      DisplayLabel = 'Saldo'
      DisplayWidth = 10
      FieldName = 'pag_saldo'
      DisplayFormat = '#,###,###,##0.00'
    end
    object qyPagarpag_emissao: TDateField
      DisplayLabel = 'Emiss'#227'o'
      DisplayWidth = 10
      FieldName = 'pag_emissao'
      DisplayFormat = 'dd/MM/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object qyPagarfor_codigo: TIntegerField
      DisplayLabel = 'C'#243'd. Forn.'
      DisplayWidth = 10
      FieldName = 'for_codigo'
      Visible = False
      DisplayFormat = '000'
    end
    object qyPagarpag_status: TStringField
      DisplayLabel = 'Status'
      FieldName = 'pag_status'
      Visible = False
      FixedChar = True
      Size = 1
    end
  end
  object updPagar: TSDUpdateSQL
    RefreshSQL.Strings = (
      
        'select pag_nf, pag_parcela, for_codigo, pag_emissao, pag_vencime' +
        'nto, pag_valor, pag_acrescimo, pag_desconto, pag_pago, pag_saldo' +
        ', pag_status'
      'from pagar'
      'where'
      '  pag_nf = :OLD_pag_nf and'
      '  pag_parcela = :OLD_pag_parcela and'
      '  for_codigo = :OLD_for_codigo')
    ModifySQL.Strings = (
      'update pagar'
      'set'
      '  pag_nf = :pag_nf,'
      '  pag_parcela = :pag_parcela,'
      '  for_codigo = :for_codigo,'
      '  pag_emissao = :pag_emissao,'
      '  pag_vencimento = :pag_vencimento,'
      '  pag_valor = :pag_valor,'
      '  pag_acrescimo = :pag_acrescimo,'
      '  pag_desconto = :pag_desconto,'
      '  pag_pago = :pag_pago,'
      '  pag_saldo = :pag_saldo,'
      '  pag_status = :pag_status'
      'where'
      '  pag_nf = :OLD_pag_nf and'
      '  pag_parcela = :OLD_pag_parcela and'
      '  for_codigo = :OLD_for_codigo')
    InsertSQL.Strings = (
      'insert into pagar'
      
        '  (pag_nf, pag_parcela, for_codigo, pag_emissao, pag_vencimento,' +
        ' pag_valor, pag_acrescimo, pag_desconto, pag_pago, pag_saldo, pa' +
        'g_status)'
      'values'
      
        '  (:pag_nf, :pag_parcela, :for_codigo, :pag_emissao, :pag_vencim' +
        'ento, :pag_valor, :pag_acrescimo, :pag_desconto, :pag_pago, :pag' +
        '_saldo, :pag_status)')
    DeleteSQL.Strings = (
      'delete from pagar'
      'where'
      '  pag_nf = :OLD_pag_nf and'
      '  pag_parcela = :OLD_pag_parcela and'
      '  for_codigo = :OLD_for_codigo')
    Left = 120
    Top = 240
  end
  object qyReceber: TSDQuery
    DatabaseName = 'financeiro'
    Options = []
    SessionName = 'SessaoFinanceiro'
    OnUpdateError = qyReceberUpdateError
    AfterInsert = qyReceberAfterInsert
    BeforePost = qyReceberBeforePost
    AfterPost = qyReceberAfterPost
    BeforeDelete = qyReceberBeforeDelete
    AfterDelete = qyReceberAfterDelete
    OnPostError = qyReceberPostError
    SQL.Strings = (
      'select'
      
        'r.rec_codigo, r.rec_emissao, r.rec_vencimento, r.cov_codigo, c.c' +
        'ov_descricao,'
      
        'r.rec_codcliente, r.rec_nome, r.rec_valor, r.rec_acrescimo, r.re' +
        'c_desconto,'
      'r.rec_pago, r.rec_saldo, r.rec_status, r.his_id, r.cob_codigo '
      'from receber r, convenios c'
      'where'
      'r.cov_codigo = c.cov_codigo'
      'and r.cob_codigo = -1')
    UpdateObject = updReceber
    Left = 232
    Top = 240
    object qyReceberrec_emissao: TDateField
      DisplayLabel = 'Emiss'#227'o'
      DisplayWidth = 10
      FieldName = 'rec_emissao'
      DisplayFormat = 'dd/MM/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object qyReceberrec_vencimento: TDateField
      DisplayLabel = 'Vencimento'
      DisplayWidth = 10
      FieldName = 'rec_vencimento'
      DisplayFormat = 'dd/MM/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object qyRecebercov_descricao: TStringField
      DisplayLabel = 'Conv'#234'nio'
      DisplayWidth = 37
      FieldName = 'cov_descricao'
      Size = 30
    end
    object qyReceberrec_nome: TStringField
      DisplayLabel = 'Cliente'
      DisplayWidth = 44
      FieldName = 'rec_nome'
      Size = 80
    end
    object qyReceberrec_valor: TFloatField
      DisplayLabel = 'Valor'
      DisplayWidth = 10
      FieldName = 'rec_valor'
      DisplayFormat = '#,###,###,##0.00'
    end
    object qyReceberrec_acrescimo: TFloatField
      DisplayLabel = 'Acr'#233'scimo'
      DisplayWidth = 9
      FieldName = 'rec_acrescimo'
      DisplayFormat = '#,###,###,##0.00'
    end
    object qyReceberrec_desconto: TFloatField
      DisplayLabel = 'Desconto'
      DisplayWidth = 9
      FieldName = 'rec_desconto'
      DisplayFormat = '#,###,###,##0.00'
    end
    object qyReceberrec_pago: TFloatField
      DisplayLabel = 'Pago'
      DisplayWidth = 10
      FieldName = 'rec_pago'
      DisplayFormat = '#,###,###,##0.00'
    end
    object qyReceberrec_saldo: TFloatField
      DisplayLabel = 'Saldo'
      DisplayWidth = 10
      FieldName = 'rec_saldo'
      DisplayFormat = '#,###,###,##0.00'
    end
    object qyReceberrec_codigo: TIntegerField
      DisplayLabel = 'C'#243'd. Cob.'
      FieldName = 'rec_codigo'
      Visible = False
      DisplayFormat = '000000'
    end
    object qyRecebercov_codigo: TIntegerField
      DisplayLabel = 'C'#243'd. Conv.'
      FieldName = 'cov_codigo'
      Visible = False
    end
    object qyReceberrec_codcliente: TIntegerField
      DisplayLabel = 'C'#243'd. Cliente'
      FieldName = 'rec_codcliente'
      Visible = False
    end
    object qyReceberrec_status: TStringField
      DisplayLabel = 'Status'
      FieldName = 'rec_status'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object qyReceberhis_id: TIntegerField
      DisplayLabel = 'ID Hist.'
      FieldName = 'his_id'
      Visible = False
      DisplayFormat = '000000'
    end
    object qyRecebercob_codigo: TIntegerField
      DisplayLabel = 'Tp. Cob.'
      FieldName = 'cob_codigo'
      Visible = False
    end
  end
  object updReceber: TSDUpdateSQL
    RefreshSQL.Strings = (
      
        'select rec_codigo, rec_emissao, rec_vencimento, cov_codigo, rec_' +
        'codcliente, rec_nome, rec_valor, rec_acrescimo, rec_desconto, re' +
        'c_pago, rec_saldo, rec_status, his_id, cob_codigo'
      'from receber'
      'where'
      '  rec_codigo = :OLD_rec_codigo')
    ModifySQL.Strings = (
      'update receber'
      'set'
      '  rec_codigo = :rec_codigo,'
      '  rec_emissao = :rec_emissao,'
      '  rec_vencimento = :rec_vencimento,'
      '  cov_codigo = :cov_codigo,'
      '  rec_codcliente = :rec_codcliente,'
      '  rec_nome = :rec_nome,'
      '  rec_valor = :rec_valor,'
      '  rec_acrescimo = :rec_acrescimo,'
      '  rec_desconto = :rec_desconto,'
      '  rec_pago = :rec_pago,'
      '  rec_saldo = :rec_saldo,'
      '  rec_status = :rec_status,'
      '  his_id = :his_id,'
      '  cob_codigo = :cob_codigo'
      'where'
      '  rec_codigo = :OLD_rec_codigo')
    InsertSQL.Strings = (
      'insert into receber'
      
        '  (rec_codigo, rec_emissao, rec_vencimento, cov_codigo, rec_codc' +
        'liente, rec_nome, rec_valor, rec_acrescimo, rec_desconto, rec_pa' +
        'go, rec_saldo, rec_status, his_id, cob_codigo)'
      'values'
      
        '  (:rec_codigo, :rec_emissao, :rec_vencimento, :cov_codigo, :rec' +
        '_codcliente, :rec_nome, :rec_valor, :rec_acrescimo, :rec_descont' +
        'o, :rec_pago, :rec_saldo, :rec_status, :his_id, :cob_codigo)')
    DeleteSQL.Strings = (
      'delete from receber'
      'where'
      '  rec_codigo = :OLD_rec_codigo')
    Left = 312
    Top = 240
  end
  object qyCheques: TSDQuery
    DatabaseName = 'financeiro'
    Options = []
    SessionName = 'SessaoFinanceiro'
    OnUpdateError = qyChequesUpdateError
    AfterInsert = qyChequesAfterInsert
    BeforePost = qyChequesBeforePost
    AfterPost = qyChequesAfterPost
    BeforeDelete = qyChequesBeforeDelete
    AfterDelete = qyChequesAfterDelete
    OnPostError = qyChequesPostError
    SQL.Strings = (
      'select '
      'c.chq_lancamento, c.ban_codigo, b.ban_descricao, c.chq_conta, '
      
        'c.chq_numcheque, c.chq_emissao, c.chq_vencimento, c.chq_titular,' +
        ' '
      'c.chq_endosso, c.chq_valor, c.chq_referente, c.chq_telefone, '
      'c.chq_doc, c.chq_repasse, c.chq_estado'
      'from '
      'cheques c, bancos b'
      'where'
      'c.ban_codigo = b.ban_codigo')
    UpdateObject = updCheques
    Left = 224
    Top = 88
    object qyChequeschq_titular: TStringField
      DisplayLabel = 'Titular'
      DisplayWidth = 50
      FieldName = 'chq_titular'
      Size = 50
    end
    object qyChequeschq_vencimento: TDateField
      DisplayLabel = 'Vencimento'
      DisplayWidth = 10
      FieldName = 'chq_vencimento'
      DisplayFormat = 'dd/MM/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object qyChequeschq_valor: TFloatField
      DisplayLabel = 'Valor'
      DisplayWidth = 10
      FieldName = 'chq_valor'
      DisplayFormat = '#,###,###,##0.00'
    end
    object qyChequesban_descricao: TStringField
      DisplayLabel = 'Banco'
      DisplayWidth = 50
      FieldName = 'ban_descricao'
      Size = 50
    end
    object qyChequeschq_conta: TStringField
      DisplayLabel = 'Conta'
      DisplayWidth = 10
      FieldName = 'chq_conta'
      Size = 10
    end
    object qyChequeschq_numcheque: TStringField
      DisplayLabel = 'N'#250'mero'
      DisplayWidth = 10
      FieldName = 'chq_numcheque'
      Size = 10
    end
    object qyChequeschq_emissao: TDateField
      DisplayLabel = 'Emiss'#227'o'
      DisplayWidth = 10
      FieldName = 'chq_emissao'
      DisplayFormat = 'dd/MM/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object qyChequeschq_telefone: TStringField
      DisplayLabel = 'Telefone'
      DisplayWidth = 15
      FieldName = 'chq_telefone'
      Size = 15
    end
    object qyChequeschq_endosso: TStringField
      DisplayLabel = 'Endosso'
      DisplayWidth = 50
      FieldName = 'chq_endosso'
      Size = 50
    end
    object qyChequeschq_referente: TStringField
      DisplayLabel = 'Referente'
      DisplayWidth = 10
      FieldName = 'chq_referente'
      Size = 10
    end
    object qyChequeschq_doc: TStringField
      DisplayLabel = 'Doc.'
      DisplayWidth = 18
      FieldName = 'chq_doc'
      Size = 18
    end
    object qyChequeschq_repasse: TStringField
      DisplayLabel = 'Repasse'
      DisplayWidth = 50
      FieldName = 'chq_repasse'
      Size = 50
    end
    object qyChequeschq_estado: TStringField
      DisplayLabel = 'Status'
      DisplayWidth = 1
      FieldName = 'chq_estado'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object qyChequeschq_lancamento: TIntegerField
      DisplayLabel = 'Lanc.'
      FieldName = 'chq_lancamento'
      Visible = False
    end
    object qyChequesban_codigo: TIntegerField
      DisplayLabel = 'C'#243'd. Banco'
      FieldName = 'ban_codigo'
      Visible = False
    end
  end
  object updCheques: TSDUpdateSQL
    RefreshSQL.Strings = (
      
        'select chq_lancamento, ban_codigo, chq_conta, chq_numcheque, chq' +
        '_emissao, chq_vencimento, chq_titular, chq_endosso, chq_valor, c' +
        'hq_referente, chq_telefone, chq_doc, chq_repasse, chq_estado'#13#10'fr' +
        'om cheques'
      'where'
      '  chq_lancamento = :OLD_chq_lancamento')
    ModifySQL.Strings = (
      'update cheques'
      'set'
      '  chq_lancamento = :chq_lancamento,'
      '  ban_codigo = :ban_codigo,'
      '  chq_conta = :chq_conta,'
      '  chq_numcheque = :chq_numcheque,'
      '  chq_emissao = :chq_emissao,'
      '  chq_vencimento = :chq_vencimento,'
      '  chq_titular = :chq_titular,'
      '  chq_endosso = :chq_endosso,'
      '  chq_valor = :chq_valor,'
      '  chq_referente = :chq_referente,'
      '  chq_telefone = :chq_telefone,'
      '  chq_doc = :chq_doc,'
      '  chq_repasse = :chq_repasse,'
      '  chq_estado = :chq_estado'
      'where'
      '  chq_lancamento = :OLD_chq_lancamento')
    InsertSQL.Strings = (
      'insert into cheques'
      
        '  (chq_lancamento, ban_codigo, chq_conta, chq_numcheque, chq_emi' +
        'ssao, chq_vencimento, chq_titular, chq_endosso, chq_valor, chq_r' +
        'eferente, chq_telefone, chq_doc, chq_repasse, chq_estado)'
      'values'
      
        '  (:chq_lancamento, :ban_codigo, :chq_conta, :chq_numcheque, :ch' +
        'q_emissao, :chq_vencimento, :chq_titular, :chq_endosso, :chq_val' +
        'or, :chq_referente, :chq_telefone, :chq_doc, :chq_repasse, :chq_' +
        'estado)')
    DeleteSQL.Strings = (
      'delete from cheques'
      'where'
      '  chq_lancamento = :OLD_chq_lancamento')
    Left = 304
    Top = 88
  end
  object SQL_Upd_his_status: TSDScript
    DatabaseName = 'financeiro'
    SessionName = 'SessaoFinanceiro'
    Transaction = True
    Left = 608
    Top = 16
  end
  object qyHistRec: TSDQuery
    DatabaseName = 'financeiro'
    Options = []
    SessionName = 'SessaoFinanceiro'
    OnUpdateError = qyHistRecUpdateError
    AfterInsert = qyHistRecAfterInsert
    BeforePost = qyHistRecBeforePost
    AfterPost = qyHistRecAfterPost
    BeforeDelete = qyHistRecBeforeDelete
    AfterDelete = qyHistRecAfterDelete
    OnPostError = qyHistRecPostError
    SQL.Strings = (
      'select'
      
        'h.his_id, h.his_item, h.his_data, h.exa_id, h.cov_codigo, c.cov_' +
        'descricao,'
      
        'h.pac_codigo, p.pac_nome, h.his_valor, h.his_gercob, h.med_codig' +
        'o, m.med_nome,'
      'h.his_status, h.his_baixar'
      'from histrec h, convenios c, pacientes p, medicos m'
      'where h.cov_codigo = c.cov_codigo'
      'and h.pac_codigo = p.pac_codigo'
      'and h.med_codigo = m.med_codigo')
    UpdateObject = updHistRec
    Left = 424
    Top = 240
    object qyHistRechis_item: TIntegerField
      DisplayLabel = 'Item'
      DisplayWidth = 5
      FieldName = 'his_item'
      DisplayFormat = '00'
    end
    object qyHistRecexa_id: TStringField
      DisplayLabel = 'ID Exame'
      DisplayWidth = 10
      FieldName = 'exa_id'
      FixedChar = True
      Size = 10
    end
    object qyHistRecpac_nome: TStringField
      DisplayLabel = 'Paciente'
      DisplayWidth = 45
      FieldName = 'pac_nome'
      Size = 80
    end
    object qyHistRechis_valor: TFloatField
      DisplayLabel = 'Valor'
      DisplayWidth = 10
      FieldName = 'his_valor'
      DisplayFormat = '#,###,###,##0.00'
    end
    object qyHistRecmed_nome: TStringField
      DisplayLabel = 'M'#233'dico'
      DisplayWidth = 45
      FieldName = 'med_nome'
      Size = 50
    end
    object qyHistRechis_status: TStringField
      DisplayLabel = 'Status'
      DisplayWidth = 1
      FieldName = 'his_status'
      FixedChar = True
      Size = 1
    end
    object qyHistRechis_id: TIntegerField
      DisplayLabel = 'Id. Hist.'
      DisplayWidth = 9
      FieldName = 'his_id'
      Visible = False
      DisplayFormat = '000000'
    end
    object qyHistRechis_data: TDateField
      DisplayLabel = 'Data'
      DisplayWidth = 10
      FieldName = 'his_data'
      Visible = False
      DisplayFormat = 'dd/MM/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object qyHistRechis_baixar: TStringField
      DisplayLabel = 'Baixar'
      DisplayWidth = 1
      FieldName = 'his_baixar'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object qyHistReccov_codigo: TIntegerField
      FieldName = 'cov_codigo'
      Visible = False
    end
    object qyHistReccov_descricao: TStringField
      FieldName = 'cov_descricao'
      Visible = False
      Size = 30
    end
    object qyHistRecpac_codigo: TIntegerField
      FieldName = 'pac_codigo'
      Visible = False
    end
    object qyHistRechis_gercob: TStringField
      DisplayLabel = 'Cob.'
      FieldName = 'his_gercob'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object qyHistRecmed_codigo: TIntegerField
      DisplayLabel = 'C'#243'd. M'#233'dico'
      FieldName = 'med_codigo'
      Visible = False
    end
  end
  object updHistRec: TSDUpdateSQL
    RefreshSQL.Strings = (
      
        'select his_id, his_item, his_data, exa_id, cov_codigo, pac_codig' +
        'o, his_valor, his_gercob, med_codigo, his_status, his_baixar'#13#10'fr' +
        'om histrec'
      'where'
      '  his_id = :OLD_his_id and'
      '  his_item = :OLD_his_item')
    ModifySQL.Strings = (
      'update histrec'
      'set'
      '  his_id = :his_id,'
      '  his_item = :his_item,'
      '  his_data = :his_data,'
      '  exa_id = :exa_id,'
      '  cov_codigo = :cov_codigo,'
      '  pac_codigo = :pac_codigo,'
      '  his_valor = :his_valor,'
      '  his_gercob = :his_gercob,'
      '  med_codigo = :med_codigo,'
      '  his_status = :his_status,'
      '  his_baixar = :his_baixar'
      'where'
      '  his_id = :OLD_his_id and'
      '  his_item = :OLD_his_item')
    InsertSQL.Strings = (
      'insert into histrec'
      
        '  (his_id, his_item, his_data, exa_id, cov_codigo, pac_codigo, h' +
        'is_valor, his_gercob, med_codigo, his_status, his_baixar)'
      'values'
      
        '  (:his_id, :his_item, :his_data, :exa_id, :cov_codigo, :pac_cod' +
        'igo, :his_valor, :his_gercob, :med_codigo, :his_status, :his_bai' +
        'xar)')
    DeleteSQL.Strings = (
      'delete from histrec'
      'where'
      '  his_id = :OLD_his_id and'
      '  his_item = :OLD_his_item')
    Left = 496
    Top = 240
  end
  object qyRecTiss: TSDQuery
    DatabaseName = 'financeiro'
    Options = []
    SessionName = 'SessaoFinanceiro'
    OnUpdateError = qyRecTissUpdateError
    AfterInsert = qyRecTissAfterInsert
    BeforePost = qyRecTissBeforePost
    AfterPost = qyRecTissAfterPost
    BeforeDelete = qyRecTissBeforeDelete
    AfterDelete = qyRecTissAfterDelete
    OnPostError = qyRecTissPostError
    SQL.Strings = (
      'select '
      'rti_id, rec_codigo, rti_gerado, rti_lote, rti_nguias '
      'from rectiss')
    UpdateObject = updRecTiss
    Left = 424
    Top = 328
    object qyRecTissrti_id: TIntegerField
      DisplayLabel = 'ID'
      FieldName = 'rti_id'
      Visible = False
    end
    object qyRecTissrec_codigo: TIntegerField
      DisplayLabel = 'ID recebimento'
      FieldName = 'rec_codigo'
      Visible = False
    end
    object qyRecTissrti_gerado: TBooleanField
      DisplayLabel = 'Controle'
      FieldName = 'rti_gerado'
      Visible = False
    end
    object qyRecTissrti_lote: TIntegerField
      DisplayLabel = 'Lote'
      FieldName = 'rti_lote'
    end
    object qyRecTissrti_nguias: TIntegerField
      FieldName = 'rti_nguias'
    end
  end
  object updRecTiss: TSDUpdateSQL
    RefreshSQL.Strings = (
      
        'select rti_id, rec_codigo, rti_gerado, rti_lote, rti_nguias'#13#10'fro' +
        'm rectiss'
      'where'
      '  rti_id = :OLD_rti_id')
    ModifySQL.Strings = (
      'update rectiss'
      'set'
      '  rti_id = :rti_id,'
      '  rec_codigo = :rec_codigo,'
      '  rti_gerado = :rti_gerado,'
      '  rti_lote = :rti_lote,'
      '  rti_nguias = :rti_nguias'
      'where'
      '  rti_id = :OLD_rti_id')
    InsertSQL.Strings = (
      'insert into rectiss'
      '  (rti_id, rec_codigo, rti_gerado, rti_lote, rti_nguias)'
      'values'
      '  (:rti_id, :rec_codigo, :rti_gerado, :rti_lote, :rti_nguias)')
    DeleteSQL.Strings = (
      'delete from rectiss'
      'where'
      '  rti_id = :OLD_rti_id')
    Left = 504
    Top = 328
  end
  object qyRecObs: TSDQuery
    DatabaseName = 'financeiro'
    Options = []
    SessionName = 'SessaoFinanceiro'
    OnUpdateError = qyRecObsUpdateError
    AfterInsert = qyRecObsAfterInsert
    BeforePost = qyRecObsBeforePost
    AfterPost = qyRecObsAfterPost
    BeforeDelete = qyRecObsBeforeDelete
    AfterDelete = qyRecObsAfterDelete
    OnPostError = qyRecObsPostError
    SQL.Strings = (
      'select'
      'rob_id, rob_data, rec_codigo, rob_obs'
      'from recobs')
    UpdateObject = updRecObs
    Left = 232
    Top = 344
    object qyRecObsrob_id: TIntegerField
      DisplayLabel = 'ID'
      FieldName = 'rob_id'
      Visible = False
    end
    object qyRecObsrob_data: TDateField
      DisplayLabel = 'Data'
      FieldName = 'rob_data'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object qyRecObsrec_codigo: TIntegerField
      DisplayLabel = 'ID Cobran'#231'a'
      FieldName = 'rec_codigo'
      Visible = False
    end
    object qyRecObsrob_obs: TStringField
      DisplayLabel = 'Obs'
      FieldName = 'rob_obs'
      Size = 50
    end
  end
  object updRecObs: TSDUpdateSQL
    RefreshSQL.Strings = (
      'select rob_id, rob_data, rec_codigo, rob_obs'#13#10'from recobs'
      'where'
      '  rob_id = :OLD_rob_id')
    ModifySQL.Strings = (
      'update recobs'
      'set'
      '  rob_id = :rob_id,'
      '  rob_data = :rob_data,'
      '  rec_codigo = :rec_codigo,'
      '  rob_obs = :rob_obs'
      'where'
      '  rob_id = :OLD_rob_id')
    InsertSQL.Strings = (
      'insert into recobs'
      '  (rob_id, rob_data, rec_codigo, rob_obs)'
      'values'
      '  (:rob_id, :rob_data, :rec_codigo, :rob_obs)')
    DeleteSQL.Strings = (
      'delete from recobs'
      'where'
      '  rob_id = :OLD_rob_id')
    Left = 312
    Top = 336
  end
  object ScriptCob: TSDScript
    DatabaseName = 'financeiro'
    SessionName = 'SessaoFinanceiro'
    Transaction = False
    Left = 496
    Top = 80
  end
end
