object dmImagens: TdmImagens
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 575
  Width = 828
  object database: TZConnection
    ControlsCodePage = cCP_UTF16
    ClientCodepage = 'LATIN1'
    Properties.Strings = (
      'codepage=LATIN1')
    HostName = 'localhost'
    Port = 0
    Database = 'imagens'
    User = 'postgres'
    Password = 'a28c03m74'
    Protocol = 'postgresql-8'
    Left = 32
    Top = 24
  end
  object qyImagensArq: TZQuery
    Connection = database
    UpdateObject = updImagensArq
    BeforePost = qyImagensArqBeforePost
    AfterPost = qyImagensArqAfterPost
    BeforeDelete = qyImagensArqBeforeDelete
    AfterDelete = qyImagensArqAfterDelete
    OnEditError = qyImagensArqEditError
    OnPostError = qyImagensArqPostError
    SQL.Strings = (
      'select'
      'img_exame, ima_imagem'
      'from imagensarq'
      'where img_exame = '#39'0'#39)
    Params = <>
    Left = 40
    Top = 112
    object qyImagensArqimg_exame: TWideStringField
      FieldName = 'img_exame'
      Required = True
      Size = 10
    end
    object qyImagensArqima_imagem: TBlobField
      FieldName = 'ima_imagem'
      Required = True
    end
  end
  object QTemp: TZQuery
    Connection = database
    Params = <>
    Left = 192
    Top = 24
  end
  object qyMax: TZQuery
    Connection = database
    SQL.Strings = (
      'select max(img_exame) from imagensarq')
    Params = <>
    Left = 272
    Top = 24
    object qyMaxmax: TWideMemoField
      FieldName = 'max'
      ReadOnly = True
      BlobType = ftWideMemo
    end
  end
  object updImagensArq: TZUpdateSQL
    UseSequenceFieldForRefreshSQL = False
    Left = 136
    Top = 112
  end
end
