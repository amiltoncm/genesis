inherited frmRelTopografiasEx: TfrmRelTopografiasEx
  Caption = 'Relat'#243'rio de Topografias executadas'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Relatorio: TppReport
    PrinterSetup.DocumentName = 'Relat'#243'rio de Topografias executadas'
    PrinterSetup.mmMarginLeft = 6000
    PrinterSetup.mmMarginRight = 6000
    DataPipelineName = 'dbDados'
    object ppTitleBand1: TppTitleBand [0]
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        VarType = vtDocumentName
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4763
        mmLeft = 0
        mmTop = 7408
        mmWidth = 67998
        BandType = 1
        LayerName = Foreground
      end
    end
    inherited ppHeaderBand1: TppHeaderBand
      mmHeight = 5821
      inherited ppLinha1: TppLine
        mmWidth = 196850
        LayerName = Foreground
      end
      inherited ppLinha2: TppLine
        mmHeight = 265
        mmTop = 4763
        mmWidth = 196850
        LayerName = Foreground
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'Topografia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 19050
        mmTop = 529
        mmWidth = 17463
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'Tp. exames'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 83873
        mmTop = 529
        mmWidth = 15409
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
        mmHeight = 3387
        mmLeft = 69056
        mmTop = 529
        mmWidth = 8975
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = 'Exame'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 119856
        mmTop = 529
        mmWidth = 9144
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = 'L'#226'minas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 162454
        mmTop = 529
        mmWidth = 11515
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Caption = 'Fragmentos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 180711
        mmTop = 529
        mmWidth = 16214
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Caption = 'ID'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 0
        mmTop = 529
        mmWidth = 2836
        BandType = 0
        LayerName = Foreground
      end
    end
    inherited ppDetailBand1: TppDetailBand
      mmHeight = 5292
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'top_descricao'
        DataPipeline = dbDados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbDados'
        mmHeight = 3175
        mmLeft = 19050
        mmTop = 794
        mmWidth = 48419
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'eio_descricao'
        DataPipeline = dbDados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbDados'
        mmHeight = 3175
        mmLeft = 83873
        mmTop = 794
        mmWidth = 33073
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'eth_descricao'
        DataPipeline = dbDados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbDados'
        mmHeight = 3175
        mmLeft = 119856
        mmTop = 794
        mmWidth = 40217
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'ehi_quant'
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
        mmLeft = 69056
        mmTop = 794
        mmWidth = 11906
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'sum'
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
        mmLeft = 162454
        mmTop = 794
        mmWidth = 16140
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'sum_1'
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
        mmLeft = 180711
        mmTop = 794
        mmWidth = 16140
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
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
        mmLeft = 0
        mmTop = 794
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 4498
        mmWidth = 196850
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppFooterBand1: TppFooterBand [3]
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 12171
      mmPrintPosition = 0
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 0
        mmTop = 794
        mmWidth = 23283
        BandType = 8
        LayerName = Foreground
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable3'
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3387
        mmLeft = 181865
        mmTop = 794
        mmWidth = 14986
        BandType = 8
        LayerName = Foreground
      end
    end
    object ppSummaryBand1: TppSummaryBand [4]
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 10054
      mmPrintPosition = 0
      object ppLine2: TppLine
        UserName = 'Line2'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 529
        mmWidth = 196850
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Caption = 'Topografias relacionadas:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3387
        mmLeft = 169
        mmTop = 2381
        mmWidth = 35264
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        DataField = 'exa_id'
        DataPipeline = dbDados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'dbDados'
        mmHeight = 3440
        mmLeft = 37042
        mmTop = 2381
        mmWidth = 17198
        BandType = 7
        LayerName = Foreground
      end
    end
    object ppDesignLayers1: TppDesignLayers [5]
      object ppDesignLayer1: TppDesignLayer
        UserName = 'Foreground'
        LayerType = ltBanded
      end
    end
  end
  inherited dbDados: TppDBPipeline
    object dbDadosppField1: TppField
      FieldAlias = 'exa_id'
      FieldName = 'exa_id'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object dbDadosppField2: TppField
      FieldAlias = 'mat_descricao'
      FieldName = 'mat_descricao'
      FieldLength = 50
      DisplayWidth = 50
      Position = 1
    end
    object dbDadosppField3: TppField
      FieldAlias = 'top_descricao'
      FieldName = 'top_descricao'
      FieldLength = 50
      DisplayWidth = 50
      Position = 2
    end
    object dbDadosppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'ehi_quant'
      FieldName = 'ehi_quant'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 3
    end
    object dbDadosppField5: TppField
      FieldAlias = 'eio_descricao'
      FieldName = 'eio_descricao'
      FieldLength = 30
      DisplayWidth = 30
      Position = 4
    end
    object dbDadosppField6: TppField
      FieldAlias = 'eth_descricao'
      FieldName = 'eth_descricao'
      FieldLength = 50
      DisplayWidth = 50
      Position = 5
    end
    object dbDadosppField7: TppField
      FieldAlias = 'sum'
      FieldName = 'sum'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 6
    end
    object dbDadosppField8: TppField
      FieldAlias = 'sum_1'
      FieldName = 'sum_1'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 7
    end
  end
  inherited dsDados: TDataSource
    DataSet = dmConsultas.qyConsTopografias
  end
end
