inherited frmRelProcedXConv: TfrmRelProcedXConv
  Caption = 'Relat'#243'rio Procedimentos X Cobran'#231'a'
  ClientHeight = 166
  ExplicitWidth = 369
  ExplicitHeight = 191
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [2]
    Left = 8
    Top = 40
    Width = 45
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Conv'#234'nio'
  end
  object Label2: TLabel [3]
    Left = 8
    Top = 80
    Width = 46
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Cobran'#231'a'
  end
  object Label3: TLabel [4]
    Left = 96
    Top = 80
    Width = 46
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Cobran'#231'a'
  end
  object Label4: TLabel [5]
    Left = 160
    Top = 80
    Width = 24
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Valor'
  end
  inherited btFechar: TBitBtn
    Top = 133
    TabOrder = 6
  end
  inherited btVisualizar: TBitBtn
    Top = 133
    TabOrder = 4
  end
  inherited btImprimir: TBitBtn
    Top = 133
    TabOrder = 5
  end
  object cbConvenio: TwwDBLookupCombo [9]
    Left = 8
    Top = 56
    Width = 347
    Height = 21
    Hint = 'Selecione o conv'#234'nio'
    CustomHint = BalloonHint1
    CharCase = ecUpperCase
    DropDownAlignment = taLeftJustify
    LookupTable = dmLookups.lkProcConvenios
    LookupField = 'cov_descricao'
    Options = [loColLines, loRowLines, loTitles]
    ButtonEffects.Transparent = True
    ButtonEffects.Flat = True
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    AutoDropDown = True
    ShowButton = True
    PreciseEditRegion = False
    AllowClearKey = False
    ShowMatchText = True
    OnExit = cbConvenioExit
    OnKeyPress = cbConvenioKeyPress
  end
  object cbCobranca: TwwDBLookupCombo [10]
    Left = 8
    Top = 96
    Width = 81
    Height = 21
    Hint = 'Selecione a cobran'#231'a'
    CustomHint = BalloonHint1
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'rec_emissao'#9'10'#9'Emiss'#227'o'#9'F'#9
      'rec_codigo'#9'8'#9'ID'#9'F'#9
      'his_id'#9'10'#9'ID Hist.'#9'F'#9
      'rec_vencimento'#9'10'#9'Vencimento'#9'F'#9
      'rec_nome'#9'30'#9'Nome'#9'F'#9
      'rec_valor'#9'8'#9'Valor'#9'F'#9)
    LookupTable = dmLookups.lkProcReceber
    LookupField = 'rec_emissao'
    Options = [loColLines, loRowLines, loTitles]
    ButtonEffects.Transparent = True
    ButtonEffects.Flat = True
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    AutoDropDown = False
    ShowButton = True
    PreciseEditRegion = False
    AllowClearKey = False
    ShowMatchText = True
  end
  object dbCodigo: TDBEdit [11]
    Left = 96
    Top = 96
    Width = 57
    Height = 21
    Hint = 'ID da cobran'#231'a'
    CustomHint = BalloonHint1
    TabStop = False
    DataField = 'rec_codigo'
    DataSource = dsLkReceber
    ParentShowHint = False
    ReadOnly = True
    ShowHint = True
    TabOrder = 2
  end
  object dbValor: TDBEdit [12]
    Left = 160
    Top = 96
    Width = 129
    Height = 21
    Hint = 'Valor da cobran'#231'a'
    CustomHint = BalloonHint1
    TabStop = False
    DataField = 'rec_valor'
    DataSource = dsLkReceber
    ParentShowHint = False
    ReadOnly = True
    ShowHint = True
    TabOrder = 3
  end
  inherited Relatorio: TppReport
    PrinterSetup.DocumentName = 'Relat'#243'rio Procedimentos X Cobran'#231'a'
    DataPipelineName = 'dbDados'
    inherited ppTitleBand1: TppTitleBand
      inherited ppNomeRel: TppSystemVariable
        SaveOrder = -1
        LayerName = Foreground
      end
    end
    inherited ppHeaderBand1: TppHeaderBand
      mmHeight = 16404
      inherited ppLinha1: TppLine
        LayerName = Foreground
      end
      inherited ppLinha2: TppLine
        mmHeight = 265
        mmTop = 14288
        LayerName = Foreground
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'Conv'#234'nio:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 2646
        mmWidth = 17198
        BandType = 0
        LayerName = Foreground
      end
      object ppLbConvenio: TppLabel
        UserName = 'LbConvenio'
        Caption = 'LbConvenio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 19050
        mmTop = 2646
        mmWidth = 20373
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'Exame'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 0
        mmTop = 9260
        mmWidth = 10319
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'Paciente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 17992
        mmTop = 9260
        mmWidth = 13229
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = 'Quant.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 62971
        mmTop = 9260
        mmWidth = 10054
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = 'Procedimento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 74083
        mmTop = 9260
        mmWidth = 21167
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Caption = 'Vlr. Unit.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 153988
        mmTop = 9260
        mmWidth = 12965
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Caption = 'Vlr. Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 172244
        mmTop = 9260
        mmWidth = 13758
        BandType = 0
        LayerName = Foreground
      end
    end
    inherited ppDetailBand1: TppDetailBand
      inherited ppLinha3: TppLine
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
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
        mmTop = 265
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'pac_nome'
        DataPipeline = dbDados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbDados'
        mmHeight = 3175
        mmLeft = 17992
        mmTop = 265
        mmWidth = 43921
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'exp_quant'
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
        mmLeft = 63500
        mmTop = 265
        mmWidth = 7144
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
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
        mmLeft = 73554
        mmTop = 265
        mmWidth = 79375
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
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
        mmLeft = 153988
        mmTop = 265
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
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
        mmLeft = 172244
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
      mmHeight = 23283
      mmPrintPosition = 0
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Caption = 'Resumo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 1852
        mmWidth = 13758
        BandType = 7
        LayerName = Foreground
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 0
        mmTop = 794
        mmWidth = 189971
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Caption = 'Total: R$'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 17992
        mmWidth = 15081
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
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbDados'
        mmHeight = 3969
        mmLeft = 16933
        mmTop = 17992
        mmWidth = 21960
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Caption = 'Procedimentos:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 12700
        mmWidth = 26458
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
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'dbDados'
        mmHeight = 3969
        mmLeft = 19315
        mmTop = 7408
        mmWidth = 17198
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc3: TppDBCalc
        UserName = 'DBCalc3'
        DataField = 'exp_quant'
        DataPipeline = dbDados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbDados'
        mmHeight = 3969
        mmLeft = 28310
        mmTop = 12700
        mmWidth = 17198
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel11: TppLabel
        UserName = 'Label101'
        Caption = 'Registros:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 7408
        mmWidth = 17463
        BandType = 7
        LayerName = Foreground
      end
    end
  end
  inherited dsDados: TDataSource
    DataSet = dmConsultas.qyConsRecProced
  end
  object dsLkReceber: TDataSource
    DataSet = dmLookups.lkProcReceber
    Left = 128
    Top = 56
  end
end
