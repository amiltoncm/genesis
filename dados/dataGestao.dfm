inherited dmGestao: TdmGestao
  OldCreateOrder = True
  inherited database: TSDDatabase
    DatabaseName = 'Gestao'
    Params.Strings = (
      'USER NAME=postgres'
      'PASSWORD=postgres')
    RemoteDatabase = 'localhost:genesis'
    ServerType = stPostgreSQL
    SessionName = 'SessaoGestao'
  end
  inherited QGeraCodigo: TSDQuery
    DatabaseName = 'gestao'
    SessionName = 'SessaoGestao'
  end
  inherited QTemp: TSDQuery
    DatabaseName = 'gestao'
    SessionName = 'SessaoGestao'
  end
  object SessaoGestao: TSDSession
    Active = True
    SessionName = 'SessaoGestao'
    Left = 104
    Top = 16
  end
  object qyExamesFiles: TSDQuery
    DatabaseName = 'gestao'
    Options = []
    SessionName = 'SessaoGestao'
    OnUpdateError = qyExamesFilesUpdateError
    AfterInsert = qyExamesFilesAfterInsert
    BeforePost = qyExamesFilesBeforePost
    AfterPost = qyExamesFilesAfterPost
    BeforeDelete = qyExamesFilesBeforeDelete
    AfterDelete = qyExamesFilesAfterDelete
    OnPostError = qyExamesFilesPostError
    SQL.Strings = (
      
        'select efi_codigo, exa_id, efi_sequencia, efi_arquivo, efi_descr' +
        'icao, efi_extensao'
      'from examesfiles'
      'order by efi_sequencia')
    UpdateObject = updExamesFiles
    Left = 208
    Top = 88
    object qyExamesFilesefi_codigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'efi_codigo'
      Visible = False
    end
    object qyExamesFilesexa_id: TStringField
      DisplayLabel = 'Exame'
      FieldName = 'exa_id'
      Visible = False
      Size = 10
    end
    object qyExamesFilesefi_sequencia: TIntegerField
      DisplayLabel = 'ID Arq.'
      DisplayWidth = 10
      FieldName = 'efi_sequencia'
      DisplayFormat = '000'
    end
    object qyExamesFilesefi_arquivo: TBlobField
      DisplayLabel = 'Arquivo'
      FieldName = 'efi_arquivo'
      Visible = False
    end
    object qyExamesFilesefi_descricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 30
      FieldName = 'efi_descricao'
      Size = 30
    end
    object qyExamesFilesefi_extensao: TStringField
      DisplayLabel = 'Extens'#227'o'
      FieldName = 'efi_extensao'
      Visible = False
      Size = 5
    end
  end
  object updExamesFiles: TSDUpdateSQL
    RefreshSQL.Strings = (
      
        'select efi_codigo, exa_id, efi_sequencia, efi_arquivo, efi_descr' +
        'icao, efi_extensao'#13#10'from examesfiles'
      'where'
      '  efi_codigo = :OLD_efi_codigo')
    ModifySQL.Strings = (
      'update examesfiles'
      'set'
      '  efi_codigo = :efi_codigo,'
      '  exa_id = :exa_id,'
      '  efi_sequencia = :efi_sequencia,'
      '  efi_arquivo = :efi_arquivo,'
      '  efi_descricao = :efi_descricao,'
      '  efi_extensao = :efi_extensao'
      'where'
      '  efi_codigo = :OLD_efi_codigo')
    InsertSQL.Strings = (
      'insert into examesfiles'
      
        '  (efi_codigo, exa_id, efi_sequencia, efi_arquivo, efi_descricao' +
        ', efi_extensao)'
      'values'
      
        '  (:efi_codigo, :exa_id, :efi_sequencia, :efi_arquivo, :efi_desc' +
        'ricao, :efi_extensao)')
    DeleteSQL.Strings = (
      'delete from examesfiles'
      'where'
      '  efi_codigo = :OLD_efi_codigo')
    Left = 288
    Top = 88
  end
  object qyEmail: TSDQuery
    DatabaseName = 'gestao'
    Options = []
    SessionName = 'SessaoGestao'
    OnUpdateError = qyEmailUpdateError
    AfterInsert = qyEmailAfterInsert
    BeforePost = qyEmailBeforePost
    AfterPost = qyEmailAfterPost
    BeforeDelete = qyEmailBeforeDelete
    AfterDelete = qyEmailAfterDelete
    OnPostError = qyEmailPostError
    SQL.Strings = (
      'select ema_id, ema_endereco from emails'
      'where ema_id = 1'
      'order by ema_endereco')
    UpdateObject = updEmail
    Left = 40
    Top = 88
    object qyEmailema_endereco: TStringField
      DisplayLabel = 'endere'#231'o de e-mail'
      DisplayWidth = 50
      FieldName = 'ema_endereco'
      Size = 50
    end
    object qyEmailema_id: TIntegerField
      DisplayLabel = 'ID'
      DisplayWidth = 8
      FieldName = 'ema_id'
      DisplayFormat = '0000'
      EditFormat = '0000'
    end
  end
  object updEmail: TSDUpdateSQL
    RefreshSQL.Strings = (
      'select ema_id, ema_endereco'#13#10'from emails'
      'where'
      '  ema_id = :OLD_ema_id')
    ModifySQL.Strings = (
      'update emails'
      'set'
      '  ema_id = :ema_id,'
      '  ema_endereco = :ema_endereco'
      'where'
      '  ema_id = :OLD_ema_id')
    InsertSQL.Strings = (
      'insert into emails'
      '  (ema_id, ema_endereco)'
      'values'
      '  (:ema_id, :ema_endereco)')
    DeleteSQL.Strings = (
      'delete from emails'
      'where'
      '  ema_id = :OLD_ema_id')
    Left = 112
    Top = 88
  end
  object qyRespAss: TSDQuery
    DatabaseName = 'gestao'
    Options = []
    SessionName = 'SessaoGestao'
    OnUpdateError = qyRespAssUpdateError
    AfterInsert = qyRespAssAfterInsert
    BeforePost = qyRespAssBeforePost
    AfterPost = qyRespAssAfterPost
    BeforeDelete = qyRespAssBeforeDelete
    AfterDelete = qyRespAssAfterDelete
    OnPostError = qyRespAssPostError
    SQL.Strings = (
      'select'
      'res_codigo, res_ass, res_passw'
      'from respass')
    UpdateObject = updRespAss
    Left = 40
    Top = 168
    object qyRespAssres_codigo: TIntegerField
      DisplayLabel = 'ID'
      FieldName = 'res_codigo'
      Visible = False
    end
    object qyRespAssres_ass: TBlobField
      DisplayLabel = 'Imagem'
      FieldName = 'res_ass'
      Visible = False
    end
    object qyRespAssres_passw: TStringField
      DisplayLabel = 'Senha'
      FieldName = 'res_passw'
      Visible = False
      Size = 10
    end
  end
  object updRespAss: TSDUpdateSQL
    RefreshSQL.Strings = (
      'select res_codigo, res_ass, res_passw'#13#10'from respass'
      'where'
      '  res_codigo = :OLD_res_codigo')
    ModifySQL.Strings = (
      'update respass'
      'set'
      '  res_codigo = :res_codigo,'
      '  res_ass = :res_ass,'
      '  res_passw = :res_passw'
      'where'
      '  res_codigo = :OLD_res_codigo')
    InsertSQL.Strings = (
      'insert into respass'
      '  (res_codigo, res_ass, res_passw)'
      'values'
      '  (:res_codigo, :res_ass, :res_passw)')
    DeleteSQL.Strings = (
      'delete from respass'
      'where'
      '  res_codigo = :OLD_res_codigo')
    Left = 120
    Top = 168
  end
  object lkMail: TSDQuery
    DatabaseName = 'gestao'
    Options = []
    SessionName = 'SessaoGestao'
    SQL.Strings = (
      'select ema_id, ema_endereco from emails'
      'order by ema_endereco')
    Left = 368
    Top = 16
    object lkMailema_endereco: TStringField
      DisplayLabel = 'endereco de e-mail'
      DisplayWidth = 50
      FieldName = 'ema_endereco'
      Size = 50
    end
    object lkMailema_id: TIntegerField
      DisplayLabel = 'ID'
      DisplayWidth = 8
      FieldName = 'ema_id'
      DisplayFormat = '0000'
      EditFormat = '0000'
    end
  end
  object qyAgendaDia: TSDQuery
    DatabaseName = 'gestao'
    Options = []
    SessionName = 'SessaoGestao'
    OnUpdateError = qyAgendaDiaUpdateError
    AfterInsert = qyAgendaDiaAfterInsert
    BeforePost = qyAgendaDiaBeforePost
    AfterPost = qyAgendaDiaAfterPost
    BeforeDelete = qyAgendaDiaBeforeDelete
    AfterDelete = qyAgendaDiaAfterDelete
    OnPostError = qyAgendaDiaPostError
    SQL.Strings = (
      'select * from agendadia'
      'where usu_codigo = 0')
    UpdateObject = updAgendaDia
    Left = 216
    Top = 168
    object qyAgendaDiaagd_data: TDateField
      DisplayLabel = 'Data'
      DisplayWidth = 10
      FieldName = 'agd_data'
      DisplayFormat = 'dd/MM/yyyy'
    end
    object qyAgendaDiaagd_hora: TTimeField
      DisplayLabel = 'Hora'
      DisplayWidth = 10
      FieldName = 'agd_hora'
      DisplayFormat = 'hh:mm'
    end
    object qyAgendaDiaagd_descricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 50
      FieldName = 'agd_descricao'
      Size = 50
    end
    object qyAgendaDiaagd_obs: TStringField
      DisplayLabel = 'Obs'
      DisplayWidth = 255
      FieldName = 'agd_obs'
      Size = 255
    end
    object qyAgendaDiausu_codigo: TIntegerField
      DisplayLabel = 'C'#243'd. usu'#225'rio'
      FieldName = 'usu_codigo'
      Visible = False
    end
    object qyAgendaDiaagd_confirma: TStringField
      DisplayLabel = 'Confirma'
      FieldName = 'agd_confirma'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object qyAgendaDiaagd_alerta: TStringField
      DisplayLabel = 'Alerta'
      FieldName = 'agd_alerta'
      Visible = False
      FixedChar = True
      Size = 1
    end
  end
  object updAgendaDia: TSDUpdateSQL
    RefreshSQL.Strings = (
      
        'select agd_data, agd_hora, usu_codigo, agd_descricao, agd_obs, a' +
        'gd_confirma, agd_alerta'#13#10'from agendadia'
      'where'
      '  agd_data = :OLD_agd_data and'
      '  agd_hora = :OLD_agd_hora and'
      '  usu_codigo = :OLD_usu_codigo')
    ModifySQL.Strings = (
      'update agendadia'
      'set'
      '  agd_data = :agd_data,'
      '  agd_hora = :agd_hora,'
      '  usu_codigo = :usu_codigo,'
      '  agd_descricao = :agd_descricao,'
      '  agd_obs = :agd_obs,'
      '  agd_confirma = :agd_confirma,'
      '  agd_alerta = :agd_alerta'
      'where'
      '  agd_data = :OLD_agd_data and'
      '  agd_hora = :OLD_agd_hora and'
      '  usu_codigo = :OLD_usu_codigo')
    InsertSQL.Strings = (
      'insert into agendadia'
      
        '  (agd_data, agd_hora, usu_codigo, agd_descricao, agd_obs, agd_c' +
        'onfirma, agd_alerta)'
      'values'
      
        '  (:agd_data, :agd_hora, :usu_codigo, :agd_descricao, :agd_obs, ' +
        ':agd_confirma, :agd_alerta)')
    DeleteSQL.Strings = (
      'delete from agendadia'
      'where'
      '  agd_data = :OLD_agd_data and'
      '  agd_hora = :OLD_agd_hora and'
      '  usu_codigo = :OLD_usu_codigo')
    Left = 296
    Top = 168
  end
end
