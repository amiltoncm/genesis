inherited frmRelPagas: TfrmRelPagas
  Caption = 'Relat'#243'rio de Contas Pagas'
  ClientHeight = 131
  ExplicitWidth = 369
  ExplicitHeight = 156
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [2]
    Left = 8
    Top = 40
    Width = 13
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'De'
  end
  object Label2: TLabel [3]
    Left = 120
    Top = 40
    Width = 16
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'at'#233
  end
  inherited btFechar: TBitBtn
    Top = 98
    TabOrder = 4
  end
  inherited btVisualizar: TBitBtn
    Top = 98
    TabOrder = 2
  end
  inherited btImprimir: TBitBtn
    Top = 98
    TabOrder = 3
  end
  object cbInicio: TwwDBDateTimePicker [7]
    Left = 8
    Top = 56
    Width = 106
    Height = 21
    Hint = 'Data de in'#237'cio do relat'#243'rio'
    CustomHint = BalloonHint1
    CalendarAttributes.Font.Charset = DEFAULT_CHARSET
    CalendarAttributes.Font.Color = clWindowText
    CalendarAttributes.Font.Height = -11
    CalendarAttributes.Font.Name = 'MS Sans Serif'
    CalendarAttributes.Font.Style = []
    DateFormat = dfLong
    Epoch = 1950
    ButtonEffects.Transparent = True
    ButtonEffects.Flat = True
    ParentShowHint = False
    ShowHint = True
    ShowButton = True
    TabOrder = 0
    DisplayFormat = 'dd/mm/yyyy'
  end
  object cbFinal: TwwDBDateTimePicker [8]
    Left = 120
    Top = 56
    Width = 106
    Height = 21
    Hint = 'Data de t'#233'rmino do filtro do relat'#243'rio'
    CustomHint = BalloonHint1
    CalendarAttributes.Font.Charset = DEFAULT_CHARSET
    CalendarAttributes.Font.Color = clWindowText
    CalendarAttributes.Font.Height = -11
    CalendarAttributes.Font.Name = 'MS Sans Serif'
    CalendarAttributes.Font.Style = []
    DateFormat = dfLong
    Epoch = 1950
    ButtonEffects.Transparent = True
    ButtonEffects.Flat = True
    ParentShowHint = False
    ShowHint = True
    ShowButton = True
    TabOrder = 1
    DisplayFormat = 'dd/mm/yyyy'
  end
  inherited Relatorio: TppReport
    PrinterSetup.DocumentName = 'Relat'#243'rio de Contas Pagas'
    DataPipelineName = 'dbDados'
    inherited ppTitleBand1: TppTitleBand
      mmHeight = 14817
      inherited ppNomeRel: TppSystemVariable
        SaveOrder = -1
        LayerName = Foreground
      end
      object ppDataSel: TppLabel
        UserName = 'DataSel'
        Caption = 'DataSel'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 0
        mmTop = 10848
        mmWidth = 12435
        BandType = 1
        LayerName = Foreground
      end
    end
    inherited ppHeaderBand1: TppHeaderBand
      mmHeight = 6085
      inherited ppLinha1: TppLine
        LayerName = Foreground
      end
      inherited ppLinha2: TppLine
        mmHeight = 265
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'Vencto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 0
        mmTop = 794
        mmWidth = 10583
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = 'Fornecedor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3895
        mmLeft = 16404
        mmTop = 794
        mmWidth = 17611
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = 'NF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 80698
        mmTop = 794
        mmWidth = 4233
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Caption = 'Parc.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 94456
        mmTop = 794
        mmWidth = 7938
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Caption = 'Valor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 104246
        mmTop = 794
        mmWidth = 7938
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Caption = 'Acr'#233'scim.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3895
        mmLeft = 123031
        mmTop = 794
        mmWidth = 15494
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Caption = 'Desconto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3895
        mmLeft = 143140
        mmTop = 794
        mmWidth = 14563
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Caption = 'Pago'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3895
        mmLeft = 162454
        mmTop = 794
        mmWidth = 7789
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        Caption = 'Saldo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3895
        mmLeft = 181769
        mmTop = 794
        mmWidth = 8721
        BandType = 0
        LayerName = Foreground
      end
    end
    inherited ppDetailBand1: TppDetailBand
      inherited ppLinha3: TppLine
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'pag_vencimento'
        DataPipeline = dbDados
        DisplayFormat = 'dd/mm/yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbDados'
        mmHeight = 3704
        mmLeft = 0
        mmTop = 265
        mmWidth = 17727
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'for_codigo'
        DataPipeline = dbDados
        DisplayFormat = '0000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbDados'
        mmHeight = 3704
        mmLeft = 18785
        mmTop = 265
        mmWidth = 8731
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = '-'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3725
        mmLeft = 28046
        mmTop = 265
        mmWidth = 1101
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        DataField = 'pag_fornecedor'
        DataPipeline = dbDados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbDados'
        mmHeight = 3704
        mmLeft = 29898
        mmTop = 265
        mmWidth = 49213
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        DataField = 'pag_nf'
        DataPipeline = dbDados
        DisplayFormat = '000000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbDados'
        mmHeight = 3704
        mmLeft = 80698
        mmTop = 265
        mmWidth = 13229
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        DataField = 'pag_valor'
        DataPipeline = dbDados
        DisplayFormat = '#,###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbDados'
        mmHeight = 3704
        mmLeft = 104246
        mmTop = 265
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        DataField = 'pag_acrescimo'
        DataPipeline = dbDados
        DisplayFormat = '#,###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbDados'
        mmHeight = 3704
        mmLeft = 123031
        mmTop = 265
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        DataField = 'pag_desconto'
        DataPipeline = dbDados
        DisplayFormat = '#,###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbDados'
        mmHeight = 3704
        mmLeft = 143140
        mmTop = 265
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText13: TppDBText
        UserName = 'DBText13'
        DataField = 'pag_pago'
        DataPipeline = dbDados
        DisplayFormat = '#,###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbDados'
        mmHeight = 3704
        mmLeft = 162454
        mmTop = 265
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText14: TppDBText
        UserName = 'DBText14'
        DataField = 'pag_saldo'
        DataPipeline = dbDados
        DisplayFormat = '#,###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbDados'
        mmHeight = 3598
        mmLeft = 181769
        mmTop = 265
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground
      end
    end
    inherited ppFooterBand1: TppFooterBand
      inherited ppNomeSoftware: TppDBText
        SaveOrder = -1
        DataPipelineName = 'dbConfig'
        LayerName = Foreground
      end
      inherited ppNomeEmpresa: TppDBText
        SaveOrder = -1
        DataPipelineName = 'dbEmpresa'
        LayerName = Foreground
      end
      inherited ppCNPJ: TppDBText
        SaveOrder = -1
        DataPipelineName = 'dbEmpresa'
        LayerName = Foreground
      end
      inherited ppDataImpressao: TppSystemVariable
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited ppPagina: TppSystemVariable
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited ppVersao: TppLabel
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited ppDBText1: TppDBText
        SaveOrder = -1
        DataPipelineName = 'dbConfig'
        LayerName = Foreground
      end
    end
    object ppSummaryBand1: TppSummaryBand [4]
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
      object ppLabel32: TppLabel
        UserName = 'Label32'
        Caption = 'Valor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 104246
        mmTop = 529
        mmWidth = 7938
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel33: TppLabel
        UserName = 'Label33'
        Caption = 'Acr'#233'scim.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 123031
        mmTop = 529
        mmWidth = 15610
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel34: TppLabel
        UserName = 'Label34'
        Caption = 'Desconto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 143140
        mmTop = 529
        mmWidth = 14552
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel35: TppLabel
        UserName = 'Label35'
        Caption = 'Pago'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 163777
        mmTop = 529
        mmWidth = 7673
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel36: TppLabel
        UserName = 'Label36'
        Caption = 'Saldo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 181769
        mmTop = 529
        mmWidth = 8467
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc8: TppDBCalc
        UserName = 'DBCalc8'
        DataField = 'pag_saldo'
        DataPipeline = dbDados
        DisplayFormat = '#,###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbDados'
        mmHeight = 3725
        mmLeft = 181769
        mmTop = 5027
        mmWidth = 17198
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc9: TppDBCalc
        UserName = 'DBCalc9'
        DataField = 'pag_pago'
        DataPipeline = dbDados
        DisplayFormat = '#,###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbDados'
        mmHeight = 3725
        mmLeft = 163248
        mmTop = 5027
        mmWidth = 17198
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc10: TppDBCalc
        UserName = 'DBCalc10'
        DataField = 'pag_desconto'
        DataPipeline = dbDados
        DisplayFormat = '#,###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbDados'
        mmHeight = 3725
        mmLeft = 143140
        mmTop = 5027
        mmWidth = 17198
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc11: TppDBCalc
        UserName = 'DBCalc11'
        DataField = 'pag_acrescimo'
        DataPipeline = dbDados
        DisplayFormat = '#,###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbDados'
        mmHeight = 3725
        mmLeft = 123031
        mmTop = 5027
        mmWidth = 17198
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc12: TppDBCalc
        UserName = 'DBCalc12'
        DataField = 'pag_valor'
        DataPipeline = dbDados
        DisplayFormat = '#,###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbDados'
        mmHeight = 3704
        mmLeft = 104246
        mmTop = 5027
        mmWidth = 17198
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel37: TppLabel
        UserName = 'Label37'
        Caption = 'Totaliza'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 0
        mmTop = 794
        mmWidth = 17463
        BandType = 7
        LayerName = Foreground
      end
    end
    object ppGroup1: TppGroup [5]
      BreakName = 'pag_vencimento'
      DataPipeline = dbDados
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'dbDados'
      NewFile = False
      object ppGroupHeaderBand1: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 5292
        mmPrintPosition = 0
        object ppLabel31: TppLabel
          UserName = 'Label31'
          Caption = 'Total do dia:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold, fsItalic]
          Transparent = True
          mmHeight = 4106
          mmLeft = 0
          mmTop = 265
          mmWidth = 20955
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBCalc7: TppDBCalc
          UserName = 'DBCalc7'
          DataField = 'pag_saldo'
          DataPipeline = dbDados
          DisplayFormat = '#,###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold, fsItalic]
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'dbDados'
          mmHeight = 4233
          mmLeft = 181769
          mmTop = 265
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
      end
    end
  end
  inherited dbDados: TppDBPipeline
    object dbDadosppField1: TppField
      FieldAlias = 'pag_vencimento'
      FieldName = 'pag_vencimento'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 0
    end
    object dbDadosppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'for_codigo'
      FieldName = 'for_codigo'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 1
    end
    object dbDadosppField3: TppField
      FieldAlias = 'for_razao'
      FieldName = 'for_razao'
      FieldLength = 60
      DisplayWidth = 60
      Position = 2
    end
    object dbDadosppField4: TppField
      FieldAlias = 'for_fone'
      FieldName = 'for_fone'
      FieldLength = 15
      DisplayWidth = 15
      Position = 3
    end
    object dbDadosppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'pag_nf'
      FieldName = 'pag_nf'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 4
    end
    object dbDadosppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'pag_parcela'
      FieldName = 'pag_parcela'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 5
    end
    object dbDadosppField7: TppField
      FieldAlias = 'pag_emissao'
      FieldName = 'pag_emissao'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 6
    end
    object dbDadosppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'pag_valor'
      FieldName = 'pag_valor'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 7
    end
    object dbDadosppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'pag_acrescimo'
      FieldName = 'pag_acrescimo'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 8
    end
    object dbDadosppField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'pag_desconto'
      FieldName = 'pag_desconto'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 9
    end
    object dbDadosppField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'pag_pago'
      FieldName = 'pag_pago'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 10
    end
    object dbDadosppField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'pag_saldo'
      FieldName = 'pag_saldo'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 11
    end
    object dbDadosppField13: TppField
      FieldAlias = 'pag_status'
      FieldName = 'pag_status'
      FieldLength = 1
      DisplayWidth = 1
      Position = 12
    end
  end
  inherited dsDados: TDataSource
    DataSet = dmFinanceiro.qyPagar
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = dbDados
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Relat'#243'rio de Contas '#224' Pagar'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6000
    PrinterSetup.mmMarginLeft = 5000
    PrinterSetup.mmMarginRight = 5000
    PrinterSetup.mmMarginTop = 10000
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Units = utMillimeters
    AllowPrintToArchive = True
    AllowPrintToFile = True
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    Icon.Data = {
      0000010001002020100000000000E80200001600000028000000200000004000
      0000010004000000000080020000000000000000000000000000000000000000
      000000008000008000000080800080000000800080008080000080808000C0C0
      C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF000000
      0000000000000000000000000000000009900000000000000000000000000000
      0999000000000000000000000000000009990000000000000000000000000000
      0999900000000000000000000000000000999000000000000000000000000000
      0099990000000000000000000000000000099990000000119900000000000000
      0009999000000119999000000000000000009999000001199199000000000000
      0000099990000199110990000000000000000099990001990001900000000000
      0000000999900199000000000000000000000000999901900000000000000000
      0000000009999990000000000000000000000000000999900000000000000000
      0000000000009990000000000000000000000000000099990000000000000000
      0000000000009999900000000000000000000000010099199900000000000000
      0000000001099911999000000000000000000000011990001999000000000000
      0000009010199000019990000000000000000019999990000019990000000000
      0000000199990000000199900000000000000000011100000001999000000000
      0000000007000000000799000000000000000000000000000007990000000000
      0000000000000000000999000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FFFFE1FFFFFFE0FFFFFFE0FFFFFFE07FFFFFF07FFFFFF03FFFFFF81FC3FFFC1F
      81FFFC0F80FFFE07807FFF038C7FFF818E7FFFC08FFFFFE01FFFFFF01FFFFFFC
      1FFFFFFC0FFFFFFC07FFFFF803FFFFF801FFFFB000FFFF10207FFF00303FFF80
      781FFFC07C1FFFE0FC1FFFFFFE1FFFFFFC1FFFFFFE3FFFFFFFFFFFFFFFFF}
    LanguageID = 'Portuguese (Brazil)'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PDFSettings.Author = 'Next Sistemas - Genesis'
    PDFSettings.Creator = 'Genesis'
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PDFSettings.OpenPDFFile = True
    PDFSettings.PDFA = True
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zsPageWidth
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    RTFSettings.OpenRTFFile = True
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<Texto a localizar>'
    TextSearchSettings.Enabled = False
    XLSSettings.AppName = 'Next Sistemas - Genesis'
    XLSSettings.Author = 'Genesis'
    XLSSettings.OpenXLSFile = True
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 160
    Top = 8
    Version = '14.04'
    mmColumnWidth = 0
    DataPipelineName = 'dbDados'
    object ppTitleBand2: TppTitleBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 15081
      mmPrintPosition = 0
      object ppSystemVariable1: TppSystemVariable
        UserName = 'NomeRel'
        VarType = vtDocumentName
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5165
        mmLeft = 0
        mmTop = 4763
        mmWidth = 18457
        BandType = 1
        LayerName = Foreground1
      end
      object ppLabel2: TppLabel
        UserName = 'DataSel'
        Caption = 'DataSel'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 0
        mmTop = 10848
        mmWidth = 12435
        BandType = 1
        LayerName = Foreground1
      end
    end
    object ppHeaderBand2: TppHeaderBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 6085
      mmPrintPosition = 0
      object ppLine1: TppLine
        UserName = 'Linha1'
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 0
        mmTop = 0
        mmWidth = 198967
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine2: TppLine
        UserName = 'Linha2'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 5820
        mmWidth = 198967
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel12: TppLabel
        UserName = 'Label3'
        Caption = 'Vencto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 0
        mmTop = 794
        mmWidth = 10583
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel13: TppLabel
        UserName = 'Label4'
        Caption = 'Fornecedor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3895
        mmLeft = 16404
        mmTop = 794
        mmWidth = 17611
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel14: TppLabel
        UserName = 'Label5'
        Caption = 'NF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 80698
        mmTop = 794
        mmWidth = 4233
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel15: TppLabel
        UserName = 'Label6'
        Caption = 'Parc.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 94456
        mmTop = 794
        mmWidth = 7938
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel16: TppLabel
        UserName = 'Label7'
        Caption = 'Valor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 104246
        mmTop = 794
        mmWidth = 7938
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel17: TppLabel
        UserName = 'Label8'
        Caption = 'Acr'#233'scim.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3895
        mmLeft = 123031
        mmTop = 794
        mmWidth = 15494
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel18: TppLabel
        UserName = 'Label9'
        Caption = 'Desconto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3895
        mmLeft = 143140
        mmTop = 794
        mmWidth = 14563
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel19: TppLabel
        UserName = 'Label10'
        Caption = 'Pago'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3895
        mmLeft = 162454
        mmTop = 794
        mmWidth = 7789
        BandType = 0
        LayerName = Foreground1
      end
    end
    object ppDetailBand2: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 5556
      mmPrintPosition = 0
      object ppLine3: TppLine
        UserName = 'Linha3'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 0
        mmTop = 4498
        mmWidth = 198967
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText2: TppDBText
        UserName = 'DBText5'
        DataField = 'pag_vencimento'
        DataPipeline = dbDados
        DisplayFormat = 'dd/mm/yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbDados'
        mmHeight = 3704
        mmLeft = 0
        mmTop = 265
        mmWidth = 17727
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText3: TppDBText
        UserName = 'DBText6'
        DataField = 'for_codigo'
        DataPipeline = dbDados
        DisplayFormat = '0000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbDados'
        mmHeight = 3704
        mmLeft = 18785
        mmTop = 265
        mmWidth = 8731
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel21: TppLabel
        UserName = 'Label1'
        Caption = '-'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3725
        mmLeft = 28046
        mmTop = 265
        mmWidth = 1101
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText4: TppDBText
        UserName = 'DBText7'
        DataField = 'for_razao'
        DataPipeline = dbDados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbDados'
        mmHeight = 3704
        mmLeft = 29898
        mmTop = 265
        mmWidth = 49213
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText9: TppDBText
        UserName = 'DBText8'
        DataField = 'pag_nf'
        DataPipeline = dbDados
        DisplayFormat = '000000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbDados'
        mmHeight = 3704
        mmLeft = 80698
        mmTop = 265
        mmWidth = 13229
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel22: TppLabel
        UserName = 'Label2'
        Caption = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 94456
        mmTop = 265
        mmWidth = 1058
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText15: TppDBText
        UserName = 'DBText9'
        DataField = 'pag_parcela'
        DataPipeline = dbDados
        DisplayFormat = '00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbDados'
        mmHeight = 3704
        mmLeft = 96309
        mmTop = 265
        mmWidth = 4763
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText16: TppDBText
        UserName = 'DBText10'
        DataField = 'pag_valor'
        DataPipeline = dbDados
        DisplayFormat = '#,###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbDados'
        mmHeight = 3704
        mmLeft = 104246
        mmTop = 265
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText17: TppDBText
        UserName = 'DBText11'
        DataField = 'pag_acrescimo'
        DataPipeline = dbDados
        DisplayFormat = '#,###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbDados'
        mmHeight = 3704
        mmLeft = 123031
        mmTop = 265
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText18: TppDBText
        UserName = 'DBText12'
        DataField = 'pag_desconto'
        DataPipeline = dbDados
        DisplayFormat = '#,###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbDados'
        mmHeight = 3704
        mmLeft = 143140
        mmTop = 265
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText19: TppDBText
        UserName = 'DBText13'
        DataField = 'pag_pago'
        DataPipeline = dbDados
        DisplayFormat = '#,###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbDados'
        mmHeight = 3704
        mmLeft = 162454
        mmTop = 265
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground1
      end
    end
    object ppFooterBand2: TppFooterBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 17992
      mmPrintPosition = 0
      object ppDBText21: TppDBText
        UserName = 'NomeSoftware'
        DataField = 'CFG_SOFTWARE'
        DataPipeline = dbConfig
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsItalic]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbConfig'
        mmHeight = 4233
        mmLeft = 0
        mmTop = 5292
        mmWidth = 70908
        BandType = 8
        LayerName = Foreground1
      end
      object ppDBText22: TppDBText
        UserName = 'NomeEmpresa'
        DataField = 'emp_razao'
        DataPipeline = dbEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbEmpresa'
        mmHeight = 4233
        mmLeft = 0
        mmTop = 529
        mmWidth = 89959
        BandType = 8
        LayerName = Foreground1
      end
      object ppDBText23: TppDBText
        UserName = 'CNPJ'
        DataField = 'emp_cnpj'
        DataPipeline = dbEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbEmpresa'
        mmHeight = 4233
        mmLeft = 164836
        mmTop = 529
        mmWidth = 34131
        BandType = 8
        LayerName = Foreground1
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'DataImpressao'
        VarType = vtPrintDateTime
        DisplayFormat = 'dd/mm/yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 0
        mmTop = 10848
        mmWidth = 37835
        BandType = 8
        LayerName = Foreground1
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'Pagina'
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 175948
        mmTop = 10054
        mmWidth = 21960
        BandType = 8
        LayerName = Foreground1
      end
      object ppLabel23: TppLabel
        UserName = 'Versao'
        Caption = 'Vers'#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsItalic]
        Transparent = True
        mmHeight = 3969
        mmLeft = 75406
        mmTop = 5292
        mmWidth = 12171
        BandType = 8
        LayerName = Foreground1
      end
      object ppDBText24: TppDBText
        UserName = 'DBText1'
        DataField = 'cfg_versao'
        DataPipeline = dbConfig
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsItalic]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbConfig'
        mmHeight = 3969
        mmLeft = 90752
        mmTop = 5292
        mmWidth = 17198
        BandType = 8
        LayerName = Foreground1
      end
    end
    object ppSummaryBand2: TppSummaryBand
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
      object ppLabel24: TppLabel
        UserName = 'Label13'
        Caption = 'Totaliza'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 0
        mmTop = 794
        mmWidth = 17463
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel25: TppLabel
        UserName = 'Label14'
        Caption = 'Valor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 104246
        mmTop = 529
        mmWidth = 7938
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel26: TppLabel
        UserName = 'Label15'
        Caption = 'Acr'#233'scim.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 123031
        mmTop = 529
        mmWidth = 15610
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel27: TppLabel
        UserName = 'Label16'
        Caption = 'Desconto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 143140
        mmTop = 529
        mmWidth = 14552
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel28: TppLabel
        UserName = 'Label101'
        Caption = 'Pago'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 163777
        mmTop = 529
        mmWidth = 7673
        BandType = 7
        LayerName = Foreground1
      end
      object ppDBCalc4: TppDBCalc
        UserName = 'DBCalc4'
        DataField = 'pag_pago'
        DataPipeline = dbDados
        DisplayFormat = '#,###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbDados'
        mmHeight = 3725
        mmLeft = 163248
        mmTop = 5027
        mmWidth = 17198
        BandType = 7
        LayerName = Foreground1
      end
      object ppDBCalc3: TppDBCalc
        UserName = 'DBCalc3'
        DataField = 'pag_desconto'
        DataPipeline = dbDados
        DisplayFormat = '#,###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbDados'
        mmHeight = 3725
        mmLeft = 143140
        mmTop = 5027
        mmWidth = 17198
        BandType = 7
        LayerName = Foreground1
      end
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc2'
        DataField = 'pag_acrescimo'
        DataPipeline = dbDados
        DisplayFormat = '#,###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbDados'
        mmHeight = 3725
        mmLeft = 123031
        mmTop = 5027
        mmWidth = 17198
        BandType = 7
        LayerName = Foreground1
      end
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        DataField = 'pag_valor'
        DataPipeline = dbDados
        DisplayFormat = '#,###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbDados'
        mmHeight = 3704
        mmLeft = 104246
        mmTop = 5027
        mmWidth = 17198
        BandType = 7
        LayerName = Foreground1
      end
    end
    object ppGroup2: TppGroup
      BreakName = 'pag_vencimento'
      DataPipeline = dbDados
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'dbDados'
      NewFile = False
      object ppGroupHeaderBand2: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 4763
        mmPrintPosition = 0
        object ppLabel30: TppLabel
          UserName = 'Label17'
          Caption = 'Total do dia:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold, fsItalic]
          Transparent = True
          mmHeight = 4106
          mmLeft = 0
          mmTop = 265
          mmWidth = 20955
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBCalc6: TppDBCalc
          UserName = 'DBCalc6'
          DataField = 'pag_pago'
          DataPipeline = dbDados
          DisplayFormat = '#,###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold, fsItalic]
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'dbDados'
          mmHeight = 4233
          mmLeft = 162454
          mmTop = 265
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
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
