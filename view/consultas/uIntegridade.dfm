inherited frmIntegridade: TfrmIntegridade
  Caption = 'Integridade dos exames'
  ClientHeight = 559
  ClientWidth = 615
  OnClose = FormClose
  ExplicitTop = -143
  ExplicitWidth = 621
  ExplicitHeight = 591
  PixelsPerInch = 96
  TextHeight = 13
  inherited btFechar: TBitBtn
    Left = 502
    Top = 526
    ExplicitLeft = 504
    ExplicitTop = 526
  end
  object DBGrid1: TwwDBGrid [1]
    Left = 8
    Top = 8
    Width = 595
    Height = 505
    Hint = 'Registros gravados'
    CustomHint = BalloonHint1
    TabStop = False
    Selected.Strings = (
      'exa_id'#9'10'#9'ID Exame'
      'exa_data'#9'10'#9'Data'
      'exa_tipo'#9'10'#9'Tipo'
      'exa_erro'#9'60'#9'Erro')
    IniAttributes.FileName = 'genesis'
    IniAttributes.SectionName = 'telasgrid'
    IniAttributes.Delimiter = '#'
    IniAttributes.CheckNewFields = True
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    BorderStyle = bsNone
    DataSource = dsMemory
    KeyOptions = []
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ParentShowHint = False
    ReadOnly = True
    ShowHint = False
    TabOrder = 1
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = True
  end
  object dbMemIntegridade: TJvMemoryData
    FieldDefs = <>
    Left = 384
    Top = 40
    object dbMemIntegridadeexa_id: TStringField
      DisplayLabel = 'ID Exame'
      DisplayWidth = 10
      FieldName = 'exa_id'
      Size = 10
    end
    object dbMemIntegridadeexa_data: TDateField
      DisplayLabel = 'Data'
      DisplayWidth = 10
      FieldName = 'exa_data'
      DisplayFormat = 'dd/MM/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object dbMemIntegridadeexa_tipo: TStringField
      DisplayLabel = 'Tipo'
      DisplayWidth = 10
      FieldName = 'exa_tipo'
      Size = 10
    end
    object dbMemIntegridadeexa_erro: TStringField
      DisplayLabel = 'Erro'
      DisplayWidth = 60
      FieldName = 'exa_erro'
      Size = 60
    end
  end
  object dsMemory: TDataSource
    DataSet = dbMemIntegridade
    Left = 272
    Top = 40
  end
end
