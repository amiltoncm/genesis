inherited frmExportaCob: TfrmExportaCob
  Caption = 'Exporta cobran'#231'a'
  ClientHeight = 508
  ClientWidth = 961
  OnClose = FormClose
  ExplicitLeft = -49
  ExplicitTop = -92
  ExplicitWidth = 967
  ExplicitHeight = 540
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 8
    Top = 472
    Width = 203
    Height = 13
    CustomHint = BalloonHint1
    Caption = ' Clique na coluna para ordenar a consulta! '
    Color = clGreen
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = False
  end
  inherited btFechar: TBitBtn
    Left = 848
    Top = 475
    TabOrder = 2
    ExplicitLeft = 848
    ExplicitTop = 475
  end
  object btVisualizar: TBitBtn [2]
    Left = 626
    Top = 475
    Width = 105
    Height = 25
    Hint = 'Visualiza impress'#227'o'
    CustomHint = BalloonHint1
    Caption = '&Visualizar'
    Glyph.Data = {
      B6010000424DB601000000000000B60000002800000010000000100000000100
      08000000000000010000120B0000120B0000200000002000000000000000FFFF
      FF00FF00FF00FBFAF600F5F4E900EFEEDC00E9E8CF00E6E5C900E3E2C300C2C0
      7C008C880600F2F1E300908C0F0095901800999421009D992A00A19D3400A5A2
      3D00A9A64600ADAA4F00B6B36100BAB76A00BEBC7300D0CEA000DAD9B300DFDE
      BD00ECEBD600B1AF5800D5D4AA00F7F7EF00FDFDFC00FFFFFF00020202020202
      020202020202020202020202020202020202020202020202020202020A0A0A0A
      0A0A0A0A0A0A0A0A020202020C010101010101010101010C020202020D010808
      080808080808010D020202020E010707070707070707010E020202020F010606
      060606060606010F0202020210011A1A1A171717171701100202020211010505
      05050505050501110202020212010B0B0B1C1C1C1C1C01120202020213010404
      0404040404040113020202021B011D1D1D1818181818011B0202020214010303
      03030303030301140202020215011E1E1E191919191901150202020216010101
      0101010101010116020202020909090909090909090909090202}
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    OnClick = btVisualizarClick
  end
  object btExportar: TBitBtn [3]
    Left = 737
    Top = 475
    Width = 105
    Height = 25
    Hint = 
      'Exportar dados da cobran'#231'a para excel ou outro formato seleciona' +
      'do'
    CustomHint = BalloonHint1
    Caption = '&Salvar'
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB98385B98385B98385B983
      85B98385B98385B98385FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFB98385F6DDB7F4D7ACF3D3A1F1CF98F0CA8FB98385FF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFBA8E85F8E5C98A94D91E47
      F6888ECDF2D19CB98385FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFCB9A82FAEDD91E49F90033FF1E48F6F4D8ABB98385FF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFDCA887FCF5E98D9DED1E49
      FA8B97E0F6E0BDB98385FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFE3B18EFEFBF6FCF7EDFBF2E4FAEDDAF8E8CEB98385FF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFEDBD92FFFFFFFEFCFAFDF9
      F2B98384B98384BE8675B78183B78183B78183B78183B78183B78183B78183B7
      8183FF00FFEDBD92FFFFFFFFFFFFFEFDFCB98384D39769FF00FFB78183EED1B1
      E1B894E1B68CDFB180DCAB75EFC686B78183FF00FFEDBD92DCA887DCA887428A
      3EB98384FF00FFFF00FFB78183CA8F6B952B009A3401993401993300E4B57CB7
      8183FF00FFFF00FFFF00FF03750F44D27330AB4AFF00FFFF00FFBA8E85F8EEE5
      A14213972E00942900BD7649FDE5B3B78183FF00FFFF00FF01780949CC725CE7
      8E38C658138E21FF00FFCB9A82FFFFFFD5A992922600A04112ECCCAEFFEFC5B7
      8183FF00FF45812C1097262EA8483ECA6026AF3D199F290A7D12DCA887FFFFFF
      FCF7F5AE5B33CD9574FBF1DEDECBB4B78183FF00FFFF00FFFF00FF03700827B8
      400D8A18FF00FFFF00FFE3B18EFFFFFFFFFFFFEDDBD1F9F2EAB78183B78183B7
      8475FF00FFFF00FFFF00FF097B1114AB25098611FF00FFFF00FFEDBD92FFFFFF
      FFFFFFFFFFFFFDFFFFB78183DC9D64FF00FFFF00FFFF00FF0A88120C91160EA3
      1B077B0DFF00FFFF00FFEDBD92DCA887DCA887DCA887DCA887B78183FF00FFFF
      00FF07800F07800F0490120D9C1907800FFF00FFFF00FFFF00FF}
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    OnClick = btExportarClick
  end
  object GridExportacao: TwwDBGrid [4]
    Left = 8
    Top = 8
    Width = 945
    Height = 457
    Hint = 'Registros gravados'
    CustomHint = BalloonHint1
    TabStop = False
    PictureMasks.Strings = (
      'exp_total'#9'#,###,###,##0.00'#9'T'#9'T'
      'exp_unitario'#9'#,###,###,##0.00'#9'T'#9'T')
    Selected.Strings = (
      'pac_nome'#9'50'#9'Paciente'#9'F'
      'pac_idade'#9'6'#9'Idade'#9'F'
      'exa_id'#9'11'#9'Exame'#9'F'
      'exa_data'#9'10'#9'Data'#9'F'
      'med_nome'#9'40'#9'M'#233'dico'#9'F'
      'med_numconselho'#9'5'#9'CRM'#9'F'
      'cov_descricao'#9'30'#9'Conv'#234'nio'#9'F'
      'exa_guia'#9'20'#9'Guia'#9'F'
      'exa_matricula'#9'20'#9'Matr'#237'cula'#9'F'
      'exp_quant'#9'10'#9'Quantidade'#9'F'
      'prc_tuss'#9'10'#9'C'#243'd. TUSS'#9'F'
      'prc_descricao'#9'50'#9'TUSS'#9'F'
      'exp_unitario'#9'10'#9'Vlr. Unit'#225'rio'#9'F'
      'exp_total'#9'10'#9'Vlr. Total'#9'F')
    IniAttributes.FileName = 'genesis'
    IniAttributes.SectionName = 'telasgrid'
    IniAttributes.Delimiter = '#'
    IniAttributes.CheckNewFields = True
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = dsExportacao
    KeyOptions = []
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ParentShowHint = False
    ReadOnly = True
    ShowHint = False
    TabOrder = 3
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = True
    OnTitleButtonClick = GridExportacaoTitleButtonClick
  end
  inherited BalloonHint1: TBalloonHint
    Left = 72
    Top = 56
  end
  object dsExportacao: TDataSource
    DataSet = dmConsultas.qyExportaCob
    Left = 184
    Top = 192
  end
  object dbExportacao: TppDBPipeline
    DataSource = dsExportacao
    OpenDataSource = False
    SkipWhenNoRecords = False
    UserName = 'dbExportacao'
    Left = 272
    Top = 192
    object dbExportacaoppField1: TppField
      FieldAlias = 'pac_nome'
      FieldName = 'pac_nome'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object dbExportacaoppField2: TppField
      FieldAlias = 'pac_idade'
      FieldName = 'pac_idade'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object dbExportacaoppField3: TppField
      FieldAlias = 'exa_id'
      FieldName = 'exa_id'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object dbExportacaoppField4: TppField
      FieldAlias = 'exa_data'
      FieldName = 'exa_data'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object dbExportacaoppField5: TppField
      FieldAlias = 'med_nome'
      FieldName = 'med_nome'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object dbExportacaoppField6: TppField
      FieldAlias = 'med_numconselho'
      FieldName = 'med_numconselho'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object dbExportacaoppField7: TppField
      FieldAlias = 'cov_descricao'
      FieldName = 'cov_descricao'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object dbExportacaoppField8: TppField
      FieldAlias = 'exa_guia'
      FieldName = 'exa_guia'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object dbExportacaoppField9: TppField
      FieldAlias = 'exa_matricula'
      FieldName = 'exa_matricula'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object dbExportacaoppField10: TppField
      FieldAlias = 'exp_quant'
      FieldName = 'exp_quant'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object dbExportacaoppField11: TppField
      FieldAlias = 'prc_tuss'
      FieldName = 'prc_tuss'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object dbExportacaoppField12: TppField
      FieldAlias = 'prc_descricao'
      FieldName = 'prc_descricao'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object dbExportacaoppField13: TppField
      FieldAlias = 'exp_unitario'
      FieldName = 'exp_unitario'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object dbExportacaoppField14: TppField
      FieldAlias = 'exp_total'
      FieldName = 'exp_total'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
  end
  object Relatorio: TppReport
    AutoStop = False
    DataPipeline = dbExportacao
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 210000
    PrinterSetup.mmPaperWidth = 297000
    PrinterSetup.PaperSize = 9
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OutlineSettings.CreateNode = False
    OutlineSettings.CreatePageNodes = False
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.SinglePageOnly = True
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<Texto a localizar>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 352
    Top = 192
    Version = '14.04'
    mmColumnWidth = 0
    DataPipelineName = 'dbExportacao'
    object ppTitleBand2: TppTitleBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 4498
      mmPrintPosition = 0
      object ppLabel14: TppLabel
        UserName = 'Label14'
        Caption = 'Paciente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 0
        mmTop = 794
        mmWidth = 11642
        BandType = 1
        LayerName = Foreground1
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        Caption = 'Idade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3175
        mmLeft = 47361
        mmTop = 794
        mmWidth = 7144
        BandType = 1
        LayerName = Foreground1
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        Caption = 'Exame'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 56621
        mmTop = 794
        mmWidth = 9260
        BandType = 1
        LayerName = Foreground1
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        Caption = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3175
        mmLeft = 76994
        mmTop = 794
        mmWidth = 5821
        BandType = 1
        LayerName = Foreground1
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        Caption = 'M'#233'dico'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 93927
        mmTop = 794
        mmWidth = 9790
        BandType = 1
        LayerName = Foreground1
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        Caption = 'Guia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3175
        mmLeft = 137584
        mmTop = 794
        mmWidth = 6085
        BandType = 1
        LayerName = Foreground1
      end
      object ppLabel20: TppLabel
        UserName = 'Label20'
        Caption = 'Matr'#237'cula'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3175
        mmLeft = 155575
        mmTop = 794
        mmWidth = 12171
        BandType = 1
        LayerName = Foreground1
      end
      object ppLabel21: TppLabel
        UserName = 'Label21'
        Caption = 'Quant.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3175
        mmLeft = 184150
        mmTop = 794
        mmWidth = 8731
        BandType = 1
        LayerName = Foreground1
      end
      object ppLabel22: TppLabel
        UserName = 'Label102'
        Caption = 'C'#243'd.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3175
        mmLeft = 194469
        mmTop = 794
        mmWidth = 6085
        BandType = 1
        LayerName = Foreground1
      end
      object ppLabel23: TppLabel
        UserName = 'Label23'
        Caption = 'TUSS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3175
        mmLeft = 209286
        mmTop = 794
        mmWidth = 7408
        BandType = 1
        LayerName = Foreground1
      end
      object ppLabel24: TppLabel
        UserName = 'Label24'
        Caption = 'Vlr. Unit'#225'rio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3175
        mmLeft = 253471
        mmTop = 794
        mmWidth = 15610
        BandType = 1
        LayerName = Foreground1
      end
    end
    object ppDetailBand2: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'pac_nome'
        DataPipeline = dbExportacao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbExportacao'
        mmHeight = 3175
        mmLeft = 0
        mmTop = 265
        mmWidth = 46302
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText14: TppDBText
        UserName = 'DBText14'
        DataField = 'pac_idade'
        DataPipeline = dbExportacao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbExportacao'
        mmHeight = 3175
        mmLeft = 47361
        mmTop = 265
        mmWidth = 6615
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText15: TppDBText
        UserName = 'DBText15'
        DataField = 'exa_id'
        DataPipeline = dbExportacao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbExportacao'
        mmHeight = 3175
        mmLeft = 56356
        mmTop = 265
        mmWidth = 19050
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText16: TppDBText
        UserName = 'DBText16'
        DataField = 'exa_data'
        DataPipeline = dbExportacao
        DisplayFormat = 'dd/mm/yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbExportacao'
        mmHeight = 3175
        mmLeft = 76994
        mmTop = 265
        mmWidth = 15346
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText17: TppDBText
        UserName = 'DBText17'
        DataField = 'med_nome'
        DataPipeline = dbExportacao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbExportacao'
        mmHeight = 3175
        mmLeft = 93927
        mmTop = 265
        mmWidth = 41804
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText18: TppDBText
        UserName = 'DBText18'
        DataField = 'exa_guia'
        DataPipeline = dbExportacao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbExportacao'
        mmHeight = 3175
        mmLeft = 137584
        mmTop = 265
        mmWidth = 16404
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText19: TppDBText
        UserName = 'DBText19'
        DataField = 'exa_matricula'
        DataPipeline = dbExportacao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbExportacao'
        mmHeight = 3175
        mmLeft = 155575
        mmTop = 265
        mmWidth = 26723
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText20: TppDBText
        UserName = 'DBText20'
        DataField = 'exp_quant'
        DataPipeline = dbExportacao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbExportacao'
        mmHeight = 3175
        mmLeft = 185738
        mmTop = 265
        mmWidth = 5556
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText21: TppDBText
        UserName = 'DBText21'
        DataField = 'prc_tuss'
        DataPipeline = dbExportacao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbExportacao'
        mmHeight = 3175
        mmLeft = 194469
        mmTop = 265
        mmWidth = 13758
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText22: TppDBText
        UserName = 'DBText101'
        DataField = 'prc_descricao'
        DataPipeline = dbExportacao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbExportacao'
        mmHeight = 3175
        mmLeft = 209286
        mmTop = 265
        mmWidth = 42863
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText23: TppDBText
        UserName = 'DBText23'
        DataField = 'exp_unitario'
        DataPipeline = dbExportacao
        DisplayFormat = '######0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbExportacao'
        mmHeight = 3175
        mmLeft = 253471
        mmTop = 265
        mmWidth = 15610
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText24: TppDBText
        UserName = 'DBText24'
        DataField = 'exp_total'
        DataPipeline = dbExportacao
        DisplayFormat = '######0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbExportacao'
        mmHeight = 3175
        mmLeft = 269082
        mmTop = 265
        mmWidth = 15610
        BandType = 4
        LayerName = Foreground1
      end
    end
    object ppSummaryBand2: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 5027
      mmPrintPosition = 0
      object ppLabel25: TppLabel
        UserName = 'Label25'
        Caption = 'Total geral:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 231511
        mmTop = 529
        mmWidth = 17198
        BandType = 7
        LayerName = Foreground1
      end
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc2'
        DataField = 'exp_total'
        DataPipeline = dbExportacao
        DisplayFormat = '######0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbExportacao'
        mmHeight = 3704
        mmLeft = 259292
        mmTop = 529
        mmWidth = 25400
        BandType = 7
        LayerName = Foreground1
      end
    end
    object ppDesignLayers2: TppDesignLayers
      object ppDesignLayer2: TppDesignLayer
        UserName = 'Foreground1'
        LayerType = ltBanded
      end
    end
    object ppParameterList2: TppParameterList
    end
  end
end
