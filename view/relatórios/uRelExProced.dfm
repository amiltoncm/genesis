inherited frmRelExProced: TfrmRelExProced
  Caption = 'Relat'#243'rio de Procedimentos X Exames'
  ClientHeight = 125
  ExplicitWidth = 369
  ExplicitHeight = 150
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [2]
    Left = 16
    Top = 32
    Width = 43
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Dt. In'#237'cio'
  end
  object Label2: TLabel [3]
    Left = 139
    Top = 32
    Width = 40
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Dt. Final'
  end
  inherited btFechar: TBitBtn
    Top = 92
    TabOrder = 4
    ExplicitTop = 92
  end
  inherited btVisualizar: TBitBtn
    Top = 92
    TabOrder = 2
    ExplicitTop = 92
  end
  inherited btImprimir: TBitBtn
    Top = 92
    TabOrder = 3
    ExplicitTop = 92
  end
  object edInicio: TwwDBDateTimePicker [7]
    Left = 16
    Top = 48
    Width = 117
    Height = 21
    Hint = 'Selecione ou digite a a data'
    CustomHint = BalloonHint1
    CalendarAttributes.Font.Charset = DEFAULT_CHARSET
    CalendarAttributes.Font.Color = clWindowText
    CalendarAttributes.Font.Height = -11
    CalendarAttributes.Font.Name = 'MS Sans Serif'
    CalendarAttributes.Font.Style = []
    Epoch = 1950
    ButtonEffects.Transparent = True
    ButtonEffects.Flat = True
    ParentShowHint = False
    ShowHint = True
    ShowButton = True
    TabOrder = 0
    DisplayFormat = 'dd/mm/yyyy'
  end
  object edFinal: TwwDBDateTimePicker [8]
    Left = 139
    Top = 48
    Width = 117
    Height = 21
    Hint = 'Selecione ou digite a a data'
    CustomHint = BalloonHint1
    CalendarAttributes.Font.Charset = DEFAULT_CHARSET
    CalendarAttributes.Font.Color = clWindowText
    CalendarAttributes.Font.Height = -11
    CalendarAttributes.Font.Name = 'MS Sans Serif'
    CalendarAttributes.Font.Style = []
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
    Left = 168
  end
  inherited Relatorio: TppReport
    PrinterSetup.DocumentName = 'Relat'#243'rio de Procedimentos X Exames'
    Left = 136
    DataPipelineName = 'dbDados'
    inherited ppTitleBand1: TppTitleBand
      mmHeight = 16404
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
        mmTop = 11642
        mmWidth = 12435
        BandType = 1
        LayerName = Foreground
      end
    end
    inherited ppHeaderBand1: TppHeaderBand
      mmHeight = 5292
      inherited ppLinha1: TppLine
        mmWidth = 189971
        LayerName = Foreground
      end
      inherited ppLinha2: TppLine
        mmHeight = 265
        mmTop = 5292
        mmWidth = 189971
        LayerName = Foreground
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 1058
        mmTop = 1323
        mmWidth = 6085
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'Exame'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 17463
        mmTop = 1323
        mmWidth = 9260
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'Quant.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 37306
        mmTop = 1323
        mmWidth = 8996
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = 'Procedimento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 47625
        mmTop = 1323
        mmWidth = 19050
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = 'Unit'#225'rio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 155840
        mmTop = 1323
        mmWidth = 10583
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Caption = 'Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 170657
        mmTop = 1323
        mmWidth = 6615
        BandType = 0
        LayerName = Foreground
      end
    end
    inherited ppDetailBand1: TppDetailBand
      mmHeight = 4498
      inherited ppLinha3: TppLine
        Pen.Style = psSolid
        mmHeight = 529
        mmLeft = 265
        mmTop = 4233
        mmWidth = 189707
        LayerName = Foreground
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4498
        mmLeft = 0
        mmTop = 0
        mmWidth = 265
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'exa_data'
        DataPipeline = dbDados
        DisplayFormat = 'dd/mm/yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbDados'
        mmHeight = 3175
        mmLeft = 794
        mmTop = 265
        mmWidth = 16404
        BandType = 4
        LayerName = Foreground
      end
      object ppLine5: TppLine
        UserName = 'Line5'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4498
        mmLeft = 17463
        mmTop = 0
        mmWidth = 265
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'exa_id'
        DataPipeline = dbDados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbDados'
        mmHeight = 3175
        mmLeft = 18256
        mmTop = 265
        mmWidth = 18256
        BandType = 4
        LayerName = Foreground
      end
      object ppLine6: TppLine
        UserName = 'Line6'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4498
        mmLeft = 37042
        mmTop = 0
        mmWidth = 265
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'exp_quant'
        DataPipeline = dbDados
        DisplayFormat = '#00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbDados'
        mmHeight = 3175
        mmLeft = 37835
        mmTop = 265
        mmWidth = 8202
        BandType = 4
        LayerName = Foreground
      end
      object ppLine7: TppLine
        UserName = 'Line7'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4233
        mmLeft = 46831
        mmTop = 0
        mmWidth = 265
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        DataField = 'prc_tuss'
        DataPipeline = dbDados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbDados'
        mmHeight = 3175
        mmLeft = 48154
        mmTop = 265
        mmWidth = 15875
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'exp_unitario'
        DataPipeline = dbDados
        DisplayFormat = '#,###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbDados'
        mmHeight = 3175
        mmLeft = 155840
        mmTop = 265
        mmWidth = 13758
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'exp_total'
        DataPipeline = dbDados
        DisplayFormat = '#,###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbDados'
        mmHeight = 3175
        mmLeft = 170657
        mmTop = 265
        mmWidth = 18256
        BandType = 4
        LayerName = Foreground
      end
      object ppLine9: TppLine
        UserName = 'Line9'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4498
        mmLeft = 170127
        mmTop = 0
        mmWidth = 265
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        DataField = 'prc_descricao'
        DataPipeline = dbDados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbDados'
        mmHeight = 3175
        mmLeft = 64558
        mmTop = 265
        mmWidth = 90488
        BandType = 4
        LayerName = Foreground
      end
      object ppLine8: TppLine
        UserName = 'Line8'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4498
        mmLeft = 155311
        mmTop = 0
        mmWidth = 265
        BandType = 4
        LayerName = Foreground
      end
      object ppLine10: TppLine
        UserName = 'Line10'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 4233
        mmLeft = 188913
        mmTop = 0
        mmWidth = 1058
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
      mmHeight = 8731
      mmPrintPosition = 0
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Caption = 'Quantidade de exames:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 0
        mmTop = 1588
        mmWidth = 37306
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc2'
        DataField = 'exa_id'
        DataPipeline = dbDados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'dbDados'
        mmHeight = 3969
        mmLeft = 38365
        mmTop = 1588
        mmWidth = 17198
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Caption = 'Total Geral:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 133086
        mmTop = 1588
        mmWidth = 17727
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        DataField = 'exp_total'
        DataPipeline = dbDados
        DisplayFormat = '#,###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbDados'
        mmHeight = 3704
        mmLeft = 163777
        mmTop = 1588
        mmWidth = 24871
        BandType = 7
        LayerName = Foreground
      end
    end
  end
  inherited dbDados: TppDBPipeline
    object dbDadosppField1: TppField
      FieldAlias = 'exa_data'
      FieldName = 'exa_data'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 0
      Position = 0
    end
    object dbDadosppField2: TppField
      FieldAlias = 'exa_id'
      FieldName = 'exa_id'
      FieldLength = 10
      DisplayWidth = 10
      Position = 1
    end
    object dbDadosppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'exp_quant'
      FieldName = 'exp_quant'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 8
      Position = 2
    end
    object dbDadosppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'prc_tuss'
      FieldName = 'prc_tuss'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 3
    end
    object dbDadosppField5: TppField
      FieldAlias = 'prc_descricao'
      FieldName = 'prc_descricao'
      FieldLength = 80
      DisplayWidth = 80
      Position = 4
    end
    object dbDadosppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'exp_unitario'
      FieldName = 'exp_unitario'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 5
    end
    object dbDadosppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'exp_total'
      FieldName = 'exp_total'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 6
    end
  end
  inherited dsDados: TDataSource
    DataSet = dmConsultas.qyRelExProced
  end
  inherited dsConfig: TDataSource
    Left = 96
  end
end
