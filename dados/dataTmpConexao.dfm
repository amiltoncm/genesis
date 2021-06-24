object dmTmpConexao: TdmTmpConexao
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 479
  Width = 741
  object database: TSDDatabase
    LoginPrompt = False
    DatabaseName = 'Template'
    Params.Strings = (
      'USER NAME=SYSDBA'
      'PASSWORD=acm'
      'SQL DIALECT=3')
    RemoteDatabase = 'C:\Phoenix\db\firebird\dados.fdb'
    ServerType = stFirebird
    SessionName = 'Default'
    BeforeDisconnect = databaseBeforeDisconnect
    Left = 40
    Top = 16
  end
  object QGeraCodigo: TSDQuery
    DatabaseName = 'template'
    Options = []
    SessionName = 'Default'
    Left = 176
    Top = 16
  end
  object QTemp: TSDQuery
    DatabaseName = 'template'
    Options = []
    SessionName = 'Default'
    Left = 256
    Top = 16
  end
end
