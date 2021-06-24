inherited frmRelPagar: TfrmRelPagar
  Caption = 'Relat'#243'rio de Contas '#224' Pagar'
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
    ExplicitTop = 98
  end
  inherited btVisualizar: TBitBtn
    Top = 98
    TabOrder = 2
    ExplicitTop = 98
  end
  inherited btImprimir: TBitBtn
    Top = 98
    TabOrder = 3
    ExplicitTop = 98
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
  inherited BalloonHint1: TBalloonHint
    Left = 184
    Top = 65528
  end
  inherited Relatorio: TppReport
    PrinterSetup.DocumentName = 'Relat'#243'rio de Contas '#224' Pagar'
    DataPipelineName = 'dbDados'
    inherited ppTitleBand1: TppTitleBand
      mmHeight = 15081
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
      object ppLabel2: TppLabel
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
        LayerName = Foreground
      end
      object ppDBText9: TppDBText
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
      mmHeight = 19315
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
      object ppLabel13: TppLabel
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
        LayerName = Foreground
      end
      object ppLabel14: TppLabel
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
        LayerName = Foreground
      end
      object ppLabel15: TppLabel
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
        LayerName = Foreground
      end
      object ppLabel16: TppLabel
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
        LayerName = Foreground
      end
      object ppLabel17: TppLabel
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
        LayerName = Foreground
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
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
      object ppDBCalc5: TppDBCalc
        UserName = 'DBCalc5'
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
        LayerName = Foreground
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
        LayerName = Foreground
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
        LayerName = Foreground
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
        mmHeight = 4763
        mmPrintPosition = 0
        object ppLabel19: TppLabel
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
          LayerName = Foreground
        end
        object ppDBCalc6: TppDBCalc
          UserName = 'DBCalc6'
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
      DisplayWidth = 0
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
  inherited dbConfig: TppDBPipeline
    Left = 16
    Top = 0
  end
end
