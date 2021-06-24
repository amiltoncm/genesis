object dmTmpConexaoZeos: TdmTmpConexaoZeos
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 385
  Width = 705
  object database: TZConnection
    ControlsCodePage = cCP_UTF16
    SQLHourGlass = True
    HostName = 'localhost'
    Port = 5432
    Database = 'genesis'
    User = 'next'
    Password = 'postgres'
    Protocol = 'postgresql-8'
    Left = 48
    Top = 24
  end
end
