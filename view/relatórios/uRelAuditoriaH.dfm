inherited frmRelAuditoriaH: TfrmRelAuditoriaH
  Caption = 'Relat'#243'rio Auditoria (Histologia)'
  ClientHeight = 123
  ClientWidth = 394
  ExplicitWidth = 400
  ExplicitHeight = 148
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbExportar: TSpeedButton
    Left = 353
    ExplicitLeft = 353
  end
  object Label1: TLabel [2]
    Left = 8
    Top = 30
    Width = 51
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Data inicial'
  end
  object Label2: TLabel [3]
    Left = 200
    Top = 30
    Width = 46
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Data final'
  end
  inherited btFechar: TBitBtn
    Left = 281
    Top = 90
    TabOrder = 4
    ExplicitLeft = 281
    ExplicitTop = 90
  end
  inherited btVisualizar: TBitBtn
    Left = 59
    Top = 90
    TabOrder = 2
    ExplicitLeft = 59
    ExplicitTop = 90
  end
  inherited btImprimir: TBitBtn
    Left = 170
    Top = 90
    TabOrder = 3
    ExplicitLeft = 170
    ExplicitTop = 90
  end
  object dtpInicial: TDateTimePicker [7]
    Left = 8
    Top = 49
    Width = 186
    Height = 21
    CustomHint = BalloonHint1
    Date = 42869.838853622690000000
    Time = 42869.838853622690000000
    TabOrder = 0
  end
  object dtpFinal: TDateTimePicker [8]
    Left = 200
    Top = 49
    Width = 186
    Height = 21
    CustomHint = BalloonHint1
    Date = 42869.839123981480000000
    Time = 42869.839123981480000000
    TabOrder = 1
  end
  inherited Relatorio: TppReport
    PrinterSetup.DocumentName = 'Relat'#243'rio de Auditoria (Histologia)'
    DataPipelineName = 'dbDados'
    object ppTitleBand1: TppTitleBand [0]
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 15346
      mmPrintPosition = 0
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        VarType = vtDocumentName
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 5556
        mmWidth = 56886
        BandType = 1
        LayerName = Foreground
      end
      object lbDatas: TppLabel
        UserName = 'lbDatas'
        Caption = 'lbDatas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 0
        mmTop = 10848
        mmWidth = 10837
        BandType = 1
        LayerName = Foreground
      end
    end
    inherited ppHeaderBand1: TppHeaderBand
      mmHeight = 5556
      inherited ppLinha1: TppLine
        LayerName = Foreground
      end
      inherited ppLinha2: TppLine
        mmHeight = 265
        mmTop = 5027
        LayerName = Foreground
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        AutoSize = False
        Caption = 'Pe'#231'a'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 0
        mmTop = 794
        mmWidth = 28575
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        AutoSize = False
        Caption = 'Quant.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 67733
        mmTop = 794
        mmWidth = 11113
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        AutoSize = False
        Caption = 'Tipo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 80169
        mmTop = 794
        mmWidth = 27517
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        AutoSize = False
        Caption = 'Descri'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 110861
        mmTop = 794
        mmWidth = 27252
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        AutoSize = False
        Caption = 'L'#226'minas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 173302
        mmTop = 794
        mmWidth = 12700
        BandType = 0
        LayerName = Foreground
      end
    end
    inherited ppDetailBand1: TppDetailBand
      mmHeight = 4233
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'mat_descricao'
        DataPipeline = dbDados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbDados'
        mmHeight = 3704
        mmLeft = 1323
        mmTop = 0
        mmWidth = 64823
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'ehi_quant'
        DataPipeline = dbDados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbDados'
        mmHeight = 3598
        mmLeft = 67733
        mmTop = 0
        mmWidth = 11113
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'eio_descricao'
        DataPipeline = dbDados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbDados'
        mmHeight = 3704
        mmLeft = 80169
        mmTop = 0
        mmWidth = 29104
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'eth_descricao'
        DataPipeline = dbDados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbDados'
        mmHeight = 3704
        mmLeft = 110861
        mmTop = 0
        mmWidth = 60325
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
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbDados'
        mmHeight = 3704
        mmLeft = 173302
        mmTop = 0
        mmWidth = 16140
        BandType = 4
        LayerName = Foreground
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 3968
        mmWidth = 189707
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppFooterBand1: TppFooterBand [3]
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 10054
      mmPrintPosition = 0
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtPrintDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 0
        mmTop = 794
        mmWidth = 30607
        BandType = 8
        LayerName = Foreground
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable3'
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4191
        mmLeft = 170900
        mmTop = 794
        mmWidth = 18542
        BandType = 8
        LayerName = Foreground
      end
    end
    object ppSummaryBand1: TppSummaryBand [4]
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 10054
      mmPrintPosition = 0
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Caption = 'Registros:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 0
        mmTop = 265
        mmWidth = 14393
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        DataField = 'mat_descricao'
        DataPipeline = dbDados
        DisplayFormat = '000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'dbDados'
        mmHeight = 3704
        mmLeft = 15610
        mmTop = 265
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
      FieldAlias = 'mat_descricao'
      FieldName = 'mat_descricao'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object dbDadosppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'ehi_quant'
      FieldName = 'ehi_quant'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 1
    end
    object dbDadosppField3: TppField
      FieldAlias = 'eio_descricao'
      FieldName = 'eio_descricao'
      FieldLength = 30
      DisplayWidth = 30
      Position = 2
    end
    object dbDadosppField4: TppField
      FieldAlias = 'eth_descricao'
      FieldName = 'eth_descricao'
      FieldLength = 50
      DisplayWidth = 50
      Position = 3
    end
    object dbDadosppField5: TppField
      FieldAlias = 'sum'
      FieldName = 'sum'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 4
    end
  end
  inherited dsDados: TDataSource
    DataSet = dmConsultas.qyRelAuditoriaH
  end
end
