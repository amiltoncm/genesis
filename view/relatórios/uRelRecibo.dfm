inherited frmRelRecibo: TfrmRelRecibo
  Caption = 'Recibo'
  ClientHeight = 158
  ExplicitHeight = 186
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [2]
    Left = 8
    Top = 32
    Width = 33
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Cliente'
  end
  object Label2: TLabel [3]
    Left = 8
    Top = 72
    Width = 24
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Valor'
  end
  object Label3: TLabel [4]
    Left = 112
    Top = 72
    Width = 45
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Exame(s)'
  end
  object spProcurar: TSpeedButton [5]
    Left = 257
    Top = 48
    Width = 23
    Height = 22
    Hint = 'Procurar Paciente cadastrado'
    CustomHint = BalloonHint1
    Flat = True
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
      FF00FFFF00FFFF00FF4C2600602F00723800723800623000502800FF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF643100643100984B00B85B00BC
      5D00BC5D00BA5C009C4D006C35006C3500FF00FFFF00FFFF00FFFF00FFFF00FF
      743900884300C05F00C26000BC5D00B85B00BC5D00BC5D00C05F00C260008A44
      00502800FF00FFFF00FFFF00FF743900944900D26800C86300BC5D00B85B00ED
      D6C0FFFFFFCE8B4ABA5C00BC5D00C260008A44006C3500FF00FFFF00FF743900
      DE6E00D86B00CA6400BC5D00BA5C00EDD5BEFFFFFFCE8C4BBA5C00BA5C00BC5D
      00C260006C3500FF00FF7A3C00B45900F07700D86B00C26000BE5E00BA5C00ED
      D5BDFFFFFFCE8B4ABA5C00BA5C00BA5C00C05F009C4D00602F007A3C00E06F00
      F07700DE6E00CA7420BE6208BE5E00EED5BDFFFFFFCE8B4ABA5C00C37222BE65
      0EBE5E00B25800602F00904700F87B00FA7C00FA7C00FCEDDEF3C496EA7400F9
      D9B9FFFFFFC9823CCE8B49FCF9F5E8C9AABC5D00BC5D006A3400A04F00FF9125
      FF840BFC7D00FFF6EDFFFFFFFFC389FFDDBCFFFFFFDFAF80F7EDE3FFFFFFE2BA
      93BE5E00BC5D00723800A04F00FF9F41FF9833F47900FDAC5DFFFBF7FFFEFDFF
      FBF8FFFEFDFEFCFAFFFFFFE9B98AD16A05C86300B85B00663200A04F00FF9833
      FFBF81FF7E00F27800FDA854FFFAF6FFFFFFFFFFFFFFFFFFEFC092DA6D02D268
      00CA6400AA5400663200FF00FFEC7500FFD3A9FFAD5DE87300F07700FDA752FF
      F8F2FFFFFFF6CCA3DA6D02D66A00CE6600D469008E4600FF00FFFF00FFEC7500
      FFA043FFE3C7FFAC5BFA7C00EE7600FCB26AFEDCBAEC8118E27000DE6E00E06F
      00C461008E4600FF00FFFF00FFFF00FFD26800FFAD5DFFE9D3FFCA97FF9E3FFF
      8E1FFF850DFF8813FF8813FF8105D66A008A4400FF00FFFF00FFFF00FFFF00FF
      FF00FFFF9833FF9833FFC995FFDFBFFFD2A7FFC58DFFB873FF9B39E06F00E06F
      00FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFE87300FF8A17FF
      952DFF9125FC7D00C66200FF00FFFF00FFFF00FFFF00FFFF00FF}
    ParentShowHint = False
    ShowHint = True
    Transparent = False
    OnClick = spProcurarClick
  end
  inherited btFechar: TBitBtn
    Top = 121
    TabOrder = 5
    ExplicitTop = 121
  end
  inherited btVisualizar: TBitBtn
    Top = 121
    TabOrder = 3
    ExplicitTop = 121
  end
  inherited btImprimir: TBitBtn
    Top = 121
    TabOrder = 4
    ExplicitTop = 121
  end
  object edCliente: TEdit [9]
    Left = 8
    Top = 48
    Width = 249
    Height = 21
    CustomHint = BalloonHint1
    CharCase = ecUpperCase
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    Text = 'EDCLIENTE'
  end
  object edValor: TEdit [10]
    Left = 8
    Top = 88
    Width = 97
    Height = 21
    CustomHint = BalloonHint1
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    Text = 'edValor'
    OnExit = edValorExit
    OnKeyPress = edValorKeyPress
  end
  object edExames: TEdit [11]
    Left = 112
    Top = 88
    Width = 169
    Height = 21
    CustomHint = BalloonHint1
    CharCase = ecUpperCase
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    Text = 'EDEXAMES'
  end
  inherited Relatorio: TppReport
    DataPipelineName = 'dbDados'
    inherited ppHeaderBand1: TppHeaderBand
      mmHeight = 32015
      inherited ppLinha1: TppLine
        LayerName = Foreground
      end
      inherited ppLinha2: TppLine
        mmTop = 7673
        LayerName = Foreground
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'Recibo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5821
        mmLeft = 0
        mmTop = 1058
        mmWidth = 16404
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = 'R$ '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5821
        mmLeft = 132821
        mmTop = 1058
        mmWidth = 7673
        BandType = 0
        LayerName = Foreground
      end
      object ppShape1: TppShape
        UserName = 'Shape1'
        Brush.Color = clSilver
        Pen.Color = clSilver
        mmHeight = 6350
        mmLeft = 141817
        mmTop = 1058
        mmWidth = 43921
        BandType = 0
        LayerName = Foreground
      end
      object ppValor: TppLabel
        UserName = 'Valor'
        Caption = 'Valor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5821
        mmLeft = 145521
        mmTop = 1058
        mmWidth = 14023
        BandType = 0
        LayerName = Foreground
      end
      object ppShape2: TppShape
        UserName = 'Shape2'
        Brush.Color = clSilver
        Pen.Color = clSilver
        mmHeight = 5556
        mmLeft = 23548
        mmTop = 16933
        mmWidth = 164042
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'Recebemos de: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4763
        mmLeft = 1588
        mmTop = 10319
        mmWidth = 30692
        BandType = 0
        LayerName = Foreground
      end
      object ppCliente: TppLabel
        UserName = 'Cliente'
        AutoSize = False
        Caption = 'Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4763
        mmLeft = 33338
        mmTop = 10319
        mmWidth = 153988
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'o valor de: '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 5027
        mmLeft = 1852
        mmTop = 17198
        mmWidth = 21167
        BandType = 0
        LayerName = Foreground
      end
      object ppValorExt: TppLabel
        UserName = 'ValorExt'
        Caption = 'ValorExt'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 5027
        mmLeft = 24077
        mmTop = 17198
        mmWidth = 15875
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = 'referente pagamento dos exame(s) :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 5027
        mmLeft = 1852
        mmTop = 23548
        mmWidth = 68527
        BandType = 0
        LayerName = Foreground
      end
      object ppExames: TppLabel
        UserName = 'Exames'
        Caption = 'Exames'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 5027
        mmLeft = 71702
        mmTop = 23548
        mmWidth = 15081
        BandType = 0
        LayerName = Foreground
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 0
        mmTop = 30427
        mmWidth = 189707
        BandType = 0
        LayerName = Foreground
      end
    end
    inherited ppDetailBand1: TppDetailBand
      mmHeight = 6615
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'emp_razao'
        DataPipeline = dbDados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'dbDados'
        mmHeight = 4233
        mmLeft = 0
        mmTop = 794
        mmWidth = 59531
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppSummaryBand1: TppSummaryBand [2]
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 42863
      mmPrintPosition = 0
      object ppData: TppLabel
        UserName = 'Data'
        Caption = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5027
        mmLeft = 794
        mmTop = 34660
        mmWidth = 9260
        BandType = 7
        LayerName = Foreground
      end
      object ppEmpresa: TppLabel
        UserName = 'Empresa'
        Caption = 'Empresa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5292
        mmLeft = 118798
        mmTop = 25135
        mmWidth = 17992
        BandType = 7
        LayerName = Foreground
      end
      object ppUsuario: TppLabel
        UserName = 'Usuario'
        Caption = 'Usuario'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5292
        mmLeft = 119856
        mmTop = 31485
        mmWidth = 15875
        BandType = 7
        LayerName = Foreground
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 71173
        mmTop = 23813
        mmWidth = 114565
        BandType = 7
        LayerName = Foreground
      end
    end
    object ppDesignLayers1: TppDesignLayers [3]
      object ppDesignLayer1: TppDesignLayer
        UserName = 'Foreground'
        LayerType = ltBanded
      end
    end
  end
  inherited dsDados: TDataSource
    DataSet = dmConfig.qyEmpresa
  end
end
