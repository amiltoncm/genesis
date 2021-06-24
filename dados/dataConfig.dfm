inherited dmConfig: TdmConfig
  OldCreateOrder = True
  inherited database: TSDDatabase
    DatabaseName = 'Config'
    Params.Strings = (
      'USER NAME=postgres'
      'PASSWORD=postgres')
    RemoteDatabase = 'localhost:genesis'
    ServerType = stPostgreSQL
    SessionName = 'SessaoConfig'
  end
  inherited QGeraCodigo: TSDQuery
    DatabaseName = 'config'
    SessionName = 'SessaoConfig'
  end
  inherited QTemp: TSDQuery
    DatabaseName = 'config'
    SessionName = 'SessaoConfig'
  end
  object qyEmpresa: TSDQuery
    DatabaseName = 'config'
    Options = []
    SessionName = 'SessaoConfig'
    OnUpdateError = qyEmpresaUpdateError
    BeforePost = qyEmpresaBeforePost
    AfterPost = qyEmpresaAfterPost
    BeforeDelete = qyEmpresaBeforeDelete
    AfterDelete = qyEmpresaAfterDelete
    OnPostError = qyEmpresaPostError
    SQL.Strings = (
      'select * from empresa'
      'limit 1'
      ' ')
    UpdateObject = updEmpresa
    Left = 344
    Top = 16
    object qyEmpresaemp_id: TIntegerField
      FieldName = 'emp_id'
    end
    object qyEmpresaemp_razao: TStringField
      FieldName = 'emp_razao'
      Size = 80
    end
    object qyEmpresaemp_cnpj: TStringField
      FieldName = 'emp_cnpj'
      FixedChar = True
      Size = 18
    end
    object qyEmpresaemp_ie: TStringField
      FieldName = 'emp_ie'
      Size = 15
    end
    object qyEmpresaemp_inscmun: TStringField
      FieldName = 'emp_inscmun'
      Size = 15
    end
    object qyEmpresaemp_logradouro: TStringField
      FieldName = 'emp_logradouro'
      Size = 50
    end
    object qyEmpresaemp_bairro: TStringField
      FieldName = 'emp_bairro'
      Size = 30
    end
    object qyEmpresaemp_cidade: TStringField
      FieldName = 'emp_cidade'
      Size = 30
    end
    object qyEmpresaemp_uf: TStringField
      FieldName = 'emp_uf'
      FixedChar = True
      Size = 2
    end
    object qyEmpresaemp_cep: TStringField
      FieldName = 'emp_cep'
      Size = 9
    end
    object qyEmpresaemp_telefone: TStringField
      FieldName = 'emp_telefone'
      Size = 15
    end
    object qyEmpresaemp_email: TStringField
      FieldName = 'emp_email'
      Size = 50
    end
    object qyEmpresaemp_homepage: TStringField
      FieldName = 'emp_homepage'
      Size = 50
    end
    object qyEmpresaemp_cnes: TStringField
      FieldName = 'emp_cnes'
      Size = 7
    end
  end
  object updEmpresa: TSDUpdateSQL
    RefreshSQL.Strings = (
      
        'select emp_id, emp_razao, emp_cnpj, emp_ie, emp_inscmun, emp_log' +
        'radouro, emp_bairro, emp_cidade, emp_uf, emp_cep, emp_telefone, ' +
        'emp_email, emp_homepage, emp_cnes'#13#10'from empresa'
      'where'
      '  emp_id = :OLD_emp_id')
    ModifySQL.Strings = (
      'update empresa'
      'set'
      '  emp_id = :emp_id,'
      '  emp_razao = :emp_razao,'
      '  emp_cnpj = :emp_cnpj,'
      '  emp_ie = :emp_ie,'
      '  emp_inscmun = :emp_inscmun,'
      '  emp_logradouro = :emp_logradouro,'
      '  emp_bairro = :emp_bairro,'
      '  emp_cidade = :emp_cidade,'
      '  emp_uf = :emp_uf,'
      '  emp_cep = :emp_cep,'
      '  emp_telefone = :emp_telefone,'
      '  emp_email = :emp_email,'
      '  emp_homepage = :emp_homepage,'
      '  emp_cnes = :emp_cnes'
      'where'
      '  emp_id = :OLD_emp_id')
    InsertSQL.Strings = (
      'insert into empresa'
      
        '  (emp_id, emp_razao, emp_cnpj, emp_ie, emp_inscmun, emp_logrado' +
        'uro, emp_bairro, emp_cidade, emp_uf, emp_cep, emp_telefone, emp_' +
        'email, emp_homepage, emp_cnes)'
      'values'
      
        '  (:emp_id, :emp_razao, :emp_cnpj, :emp_ie, :emp_inscmun, :emp_l' +
        'ogradouro, :emp_bairro, :emp_cidade, :emp_uf, :emp_cep, :emp_tel' +
        'efone, :emp_email, :emp_homepage, :emp_cnes)')
    DeleteSQL.Strings = (
      'delete from empresa'
      'where'
      '  emp_id = :OLD_emp_id')
    Left = 416
    Top = 16
  end
  object qyConfig: TSDQuery
    DatabaseName = 'config'
    Options = []
    SessionName = 'SessaoConfig'
    OnUpdateError = qyConfigUpdateError
    AfterInsert = qyConfigAfterInsert
    BeforePost = qyConfigBeforePost
    AfterPost = qyConfigAfterPost
    BeforeDelete = qyConfigBeforeDelete
    AfterDelete = qyConfigAfterDelete
    OnPostError = qyConfigPostError
    SQL.Strings = (
      'select'
      '*'
      'from'
      'config')
    UpdateObject = updConfig
    Left = 56
    Top = 96
    object qyConfigcfg_id: TIntegerField
      FieldName = 'cfg_id'
    end
    object qyConfigcfg_software: TStringField
      FieldName = 'cfg_software'
      Size = 50
    end
    object qyConfigcfg_versao: TStringField
      FieldName = 'cfg_versao'
      Size = 10
    end
    object qyConfigcfg_enderecoweb: TStringField
      FieldName = 'cfg_enderecoweb'
      Size = 60
    end
    object qyConfigcfg_try: TStringField
      FieldName = 'cfg_try'
      FixedChar = True
      Size = 1
    end
  end
  object updConfig: TSDUpdateSQL
    RefreshSQL.Strings = (
      
        'select cfg_id, cfg_software, cfg_versao, cfg_enderecoweb, cfg_tr' +
        'y'#13#10'from config'
      'where'
      '  cfg_id = :OLD_cfg_id')
    ModifySQL.Strings = (
      'update config'
      'set'
      '  cfg_id = :cfg_id,'
      '  cfg_software = :cfg_software,'
      '  cfg_versao = :cfg_versao,'
      '  cfg_enderecoweb = :cfg_enderecoweb,'
      '  cfg_try = :cfg_try'
      'where'
      '  cfg_id = :OLD_cfg_id')
    InsertSQL.Strings = (
      'insert into config'
      '  (cfg_id, cfg_software, cfg_versao, cfg_enderecoweb, cfg_try)'
      'values'
      
        '  (:cfg_id, :cfg_software, :cfg_versao, :cfg_enderecoweb, :cfg_t' +
        'ry)')
    DeleteSQL.Strings = (
      'delete from config'
      'where'
      '  cfg_id = :OLD_cfg_id')
    Left = 128
    Top = 96
  end
  object SessaoConfig: TSDSession
    Active = True
    SessionName = 'SessaoConfig'
    Left = 104
    Top = 16
  end
  object qyTISS: TSDQuery
    DatabaseName = 'config'
    Options = []
    SessionName = 'SessaoConfig'
    OnUpdateError = qyTISSUpdateError
    AfterInsert = qyTISSAfterInsert
    BeforePost = qyTISSBeforePost
    AfterPost = qyTISSAfterPost
    BeforeDelete = qyTISSBeforeDelete
    AfterDelete = qyTISSAfterDelete
    OnPostError = qyTISSPostError
    SQL.Strings = (
      'select T.tiss_cfg, T.tiss_sequencial, T.tiss_versaopadrao,'
      'T.tiss_lote, T.tab_id, B.tab_descricao'
      'from tiss T, tipotabela B'
      'where T.tab_id = B.tab_id')
    UpdateObject = updTISS
    Left = 240
    Top = 96
    object qyTISStiss_cfg: TIntegerField
      DisplayLabel = 'CFG'
      FieldName = 'tiss_cfg'
    end
    object qyTISStiss_sequencial: TIntegerField
      DisplayLabel = 'Sequencial'
      FieldName = 'tiss_sequencial'
    end
    object qyTISStiss_versaopadrao: TStringField
      DisplayLabel = 'Vers'#227'o padr'#227'o'
      FieldName = 'tiss_versaopadrao'
      Size = 10
    end
    object qyTISStiss_lote: TIntegerField
      DisplayLabel = 'Lote'
      FieldName = 'tiss_lote'
    end
    object qyTISStab_id: TIntegerField
      DisplayLabel = 'ID Tabela'
      FieldName = 'tab_id'
      Visible = False
      DisplayFormat = '00'
      EditFormat = '00'
    end
    object qyTISStab_descricao: TStringField
      DisplayLabel = 'Tabela'
      FieldName = 'tab_descricao'
      Size = 80
    end
  end
  object updTISS: TSDUpdateSQL
    RefreshSQL.Strings = (
      
        'select tiss_cfg, tiss_sequencial, tiss_versaopadrao, tiss_lote, ' +
        'tab_id'#13#10'from tiss'
      'where'
      '  tiss_cfg = :OLD_tiss_cfg')
    ModifySQL.Strings = (
      'update tiss'
      'set'
      '  tiss_cfg = :tiss_cfg,'
      '  tiss_sequencial = :tiss_sequencial,'
      '  tiss_versaopadrao = :tiss_versaopadrao,'
      '  tiss_lote = :tiss_lote,'
      '  tab_id = :tab_id'
      'where'
      '  tiss_cfg = :OLD_tiss_cfg')
    InsertSQL.Strings = (
      'insert into tiss'
      
        '  (tiss_cfg, tiss_sequencial, tiss_versaopadrao, tiss_lote, tab_' +
        'id)'
      'values'
      
        '  (:tiss_cfg, :tiss_sequencial, :tiss_versaopadrao, :tiss_lote, ' +
        ':tab_id)')
    DeleteSQL.Strings = (
      'delete from tiss'
      'where'
      '  tiss_cfg = :OLD_tiss_cfg')
    Left = 296
    Top = 96
  end
  object qyModulos: TSDQuery
    DatabaseName = 'config'
    Options = []
    SessionName = 'SessaoConfig'
    OnUpdateError = qyModulosUpdateError
    AfterInsert = qyModulosAfterInsert
    BeforePost = qyModulosBeforePost
    AfterPost = qyModulosAfterPost
    BeforeDelete = qyModulosBeforeDelete
    AfterDelete = qyModulosAfterDelete
    OnPostError = qyModulosPostError
    SQL.Strings = (
      'select * from modulos')
    UpdateObject = updModulos
    Left = 56
    Top = 192
    object qyModulosmod_codigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'mod_codigo'
      DisplayFormat = '000'
    end
    object qyModulosmod_executavel: TStringField
      DisplayLabel = 'Execut'#225'vel'
      FieldName = 'mod_executavel'
      Visible = False
      Size = 15
    end
    object qyModulosmod_nome: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'mod_nome'
      Size = 15
    end
    object qyModulosmod_descricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'mod_descricao'
      Size = 50
    end
    object qyModulosmod_versaoinst: TStringField
      DisplayLabel = 'Vers'#227'o'
      FieldName = 'mod_versaoinst'
      Size = 10
    end
    object qyModulosmod_local: TStringField
      DisplayLabel = 'Local'
      FieldName = 'mod_local'
      Visible = False
      Size = 254
    end
  end
  object updModulos: TSDUpdateSQL
    RefreshSQL.Strings = (
      
        'select mod_codigo, mod_executavel, mod_nome, mod_descricao, mod_' +
        'versaoinst, mod_local'#13#10'from modulos'
      'where'
      '  mod_codigo = :OLD_mod_codigo')
    ModifySQL.Strings = (
      'update modulos'
      'set'
      '  mod_codigo = :mod_codigo,'
      '  mod_executavel = :mod_executavel,'
      '  mod_nome = :mod_nome,'
      '  mod_descricao = :mod_descricao,'
      '  mod_versaoinst = :mod_versaoinst,'
      '  mod_local = :mod_local'
      'where'
      '  mod_codigo = :OLD_mod_codigo')
    InsertSQL.Strings = (
      'insert into modulos'
      
        '  (mod_codigo, mod_executavel, mod_nome, mod_descricao, mod_vers' +
        'aoinst, mod_local)'
      'values'
      
        '  (:mod_codigo, :mod_executavel, :mod_nome, :mod_descricao, :mod' +
        '_versaoinst, :mod_local)')
    DeleteSQL.Strings = (
      'delete from modulos'
      'where'
      '  mod_codigo = :OLD_mod_codigo')
    Left = 128
    Top = 192
  end
  object qyVersao: TSDQuery
    DatabaseName = 'config'
    Options = []
    SessionName = 'SessaoConfig'
    OnUpdateError = qyVersaoUpdateError
    BeforePost = qyVersaoBeforePost
    AfterPost = qyVersaoAfterPost
    BeforeDelete = qyVersaoBeforeDelete
    AfterDelete = qyVersaoAfterDelete
    OnPostError = qyVersaoPostError
    SQL.Strings = (
      'select ver_id, ver_obs from versao'
      'order by ver_id')
    UpdateObject = updVersao
    Left = 256
    Top = 192
    object qyVersaover_id: TStringField
      DisplayLabel = 'Vers'#227'o'
      FieldName = 'ver_id'
      Size = 10
    end
    object qyVersaover_obs: TBlobField
      DisplayLabel = 'Notas da vers'#227'o'
      FieldName = 'ver_obs'
    end
  end
  object updVersao: TSDUpdateSQL
    RefreshSQL.Strings = (
      'select ver_id, ver_obs'#13#10'from versao'
      'where'
      '  ver_id = :OLD_ver_id')
    ModifySQL.Strings = (
      'update versao'
      'set'
      '  ver_id = :ver_id,'
      '  ver_obs = :ver_obs'
      'where'
      '  ver_id = :OLD_ver_id')
    InsertSQL.Strings = (
      'insert into versao'
      '  (ver_id, ver_obs)'
      'values'
      '  (:ver_id, :ver_obs)')
    DeleteSQL.Strings = (
      'delete from versao'
      'where'
      '  ver_id = :OLD_ver_id')
    Left = 312
    Top = 192
  end
end
