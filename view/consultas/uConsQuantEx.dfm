inherited frmConsQuantEx: TfrmConsQuantEx
  Caption = 'Entrada de exames por data'
  ClientHeight = 498
  ClientWidth = 873
  ExplicitTop = -82
  ExplicitWidth = 879
  ExplicitHeight = 530
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 8
    Top = 8
    Width = 156
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Selecione as datas (inicial e final)'
  end
  object sb2d: TSpeedButton [1]
    Left = 8
    Top = 468
    Width = 23
    Height = 22
    Hint = 'exibe gr'#225'fico em 2D'
    CustomHint = BalloonHint1
    AllowAllUp = True
    GroupIndex = 1
    Caption = '2D'
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    OnClick = sb2dClick
  end
  object sb3d: TSpeedButton [2]
    Left = 32
    Top = 468
    Width = 23
    Height = 22
    Hint = 'exibe gr'#225'fico em 3D'
    CustomHint = BalloonHint1
    AllowAllUp = True
    GroupIndex = 1
    Down = True
    Caption = '3D'
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    OnClick = sb3dClick
  end
  object DBChart1: TDBChart [3]
    Left = 2
    Top = 35
    Width = 695
    Height = 424
    CustomHint = BalloonHint1
    BackWall.Brush.Color = clWhite
    Title.Text.Strings = (
      'Quantidade de exames por data')
    Legend.Visible = False
    View3DOptions.Elevation = 315
    View3DOptions.Orthogonal = False
    View3DOptions.Perspective = 0
    View3DOptions.Rotation = 360
    BevelOuter = bvNone
    TabOrder = 6
    ColorPaletteIndex = 13
    object Series1: TLineSeries
      Marks.Arrow.Visible = True
      Marks.Callout.Brush.Color = clBlack
      Marks.Callout.Arrow.Visible = True
      Marks.Callout.Length = 20
      Marks.Visible = True
      DataSource = mdExames
      SeriesColor = clRed
      Pointer.Brush.Gradient.EndColor = clRed
      Pointer.Gradient.EndColor = clRed
      Pointer.HorizSize = 2
      Pointer.InflateMargins = True
      Pointer.Pen.Color = clNavy
      Pointer.Style = psCircle
      Pointer.VertSize = 2
      Pointer.Visible = True
      XValues.DateTime = True
      XValues.Name = 'X'
      XValues.Order = loAscending
      XValues.ValueSource = 'Data'
      YValues.Name = 'Y'
      YValues.Order = loNone
      YValues.ValueSource = 'Quantidade'
    end
  end
  inherited btFechar: TBitBtn
    Left = 760
    Top = 465
    TabOrder = 5
  end
  object cbDtIni: TwwDBDateTimePicker [5]
    Left = 176
    Top = 8
    Width = 121
    Height = 19
    Hint = 'Selecione a data inicial'
    CustomHint = BalloonHint1
    BorderStyle = bsNone
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
    DisplayFormat = 'dd/MM/yyyy'
  end
  object cbDtfin: TwwDBDateTimePicker [6]
    Left = 304
    Top = 8
    Width = 121
    Height = 19
    Hint = 'Selecione a data final'
    CustomHint = BalloonHint1
    BorderStyle = bsNone
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
    DisplayFormat = 'dd/MM/yyyy'
  end
  object btFiltrar: TBitBtn [7]
    Left = 431
    Top = 8
    Width = 105
    Height = 25
    Hint = 'Clique para executar o filtro'
    CustomHint = BalloonHint1
    Caption = 'Fil&trar'
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000120B0000120B00000000000000000000FF00FFB78183
      B78183B78183B78183B78183B78183B78183B78183B78183B78183B78183B781
      83B78183FF00FFFF00FFFF00FFB78183FEEED4F7E3C5C7895DBB6221D9A878F3
      D3A2F1CF9AF0CF97F0CF98F0CF98F5D49AB78183FF00FFFF00FFFF00FFB78183
      FDEFD99FCBD03AA9CC677771BA5F1A7B70599DA795EECC99EECC97EECC97F3D1
      99B78183FF00FFFF00FFFF00FFB48176FEF3E337ADD393DCF572D1F066969FBC
      601AA67B52CC9062E3B887EECC97F3D199B78183FF00FFFF00FFFF00FFB48176
      FFF7EB37ADD3C1EFFE98DDF662CFF163A5B5BB6321D6B492C06A2BCD9365F3D1
      98B78183FF00FFFF00FFFF00FFBA8E85FFFCF437ADD3D8F8FFBCEBFD7CDDF863
      D5F54C95ABBF6A2BF6EDE4BE611CBD601AB78183FF00FFFF00FFFF00FFBA8E85
      FFFFFD37ADD3DDF9FFCDF4FF8FE8FE76E2FB37ADD3EAC8A6C27139EDD2BDEABF
      90BD601ABD601AFF00FFFF00FFCB9A82FFFFFF37ADD3DBF9FFCDF3FF94ECFE86
      EBFF3AA9CCE8C6A8C98252BD611CE4AF76DE9852BD601ABD601AFF00FFCB9A82
      FFFFFF37ADD3DCF9FFCFF4FF95EDFE8AEFFF3EA3C2BF6B32D59F77E1A261D789
      39BD601AFF00FFFF00FFFF00FFDCA887FFFFFF37ADD3E1FBFFD1F4FF95EDFF8C
      F0FF37ADD3E3BEA4C3733BBD601BDA8B39CA6504BD601AFF00FFFF00FFDCA887
      FFFFFF37ADD337ADD337ADD337ADD337ADD337ADD3FAEDDCFAEAD4CA9B81BD61
      1BBD601ABD601ABD601AFF00FFE3B18EFFFFFF37ADD398E1F494E4F982E2F871
      DBF337ADD3F1E1D5B8857AB8857AB8857AB78183FF00FFFF00FFFF00FFE3B18E
      FFFFFF99D7EB37ADD337ADD337ADD337ADD39BD7E8E3CFC9B8857AE8B270ECA5
      4AC58768FF00FFFF00FFFF00FFEDBD92FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFE4D4D2B8857AFAC577CD9377FF00FFFF00FFFF00FFFF00FFEDBD92
      FCF7F4FCF7F3FBF6F3FBF6F3FAF5F3F9F5F3F9F5F3E1D0CEB8857ACF9B86FF00
      FFFF00FFFF00FFFF00FFFF00FFEDBD92DCA887DCA887DCA887DCA887DCA887DC
      A887DCA887DCA887B8857AFF00FFFF00FFFF00FFFF00FFFF00FF}
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    OnClick = btFiltrarClick
  end
  object btLimpar: TBitBtn [8]
    Left = 542
    Top = 8
    Width = 105
    Height = 25
    Hint = 'Clique para limpar o filtro'
    CustomHint = BalloonHint1
    Caption = '&Limpar'
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
      B78183B78183B78183B78183B78183B78183B78183B78183B78183B78183B781
      83B78183B78183FF00FFFF00FFFF00FFB78183FEEED4D3D8A9DFD9ABF5DBB4ED
      D6A7EED29FF1CF9AF0CF97F0CF98F0CF98F5D49AB78183FF00FFFF00FFFF00FF
      B78183FDEFD9AECE9046AD3889BE6936A72937A7287AB553D6C78AEECC97EECC
      97F3D199B78183FF00FFFF00FFFF00FFB48176FEF3E3CDD9AE20A31C029A0302
      9A03029A03029A0341A82EE6CA95EECC97F3D199B78183FF00FFFF00FFFF00FF
      B48176FFF7EBCCDCB324A51F029A032FA726BBCC8E8CBD680C9C0A90BB63EFCD
      99F3D198B78183FF00FFFF00FFFF00FFBA8E85FFFCF4CBDFBA17A116029A030C
      9D0C9AC57AF4DBBBB8C78887BF69F0D0A1F3D29BB78183FF00FFFF00FFFF00FF
      BA8E85FFFFFDE8EDDBB7D8A6AED399A9CF90AECE90F2DEC0F4DBBAB3D092F0D4
      A9F5D5A3B78183FF00FFFF00FFFF00FFCB9A82FFFFFFBAE2B7FBF3ECF7EEDFB1
      D39CAACF90ACCD8EB3CC8EEFDAB6F2D8B2F6D9ACB78183FF00FFFF00FFFF00FF
      CB9A82FFFFFF8DD28EC1E1BBFBF3EC9CCF8F0D9D0C029A0317A014F6DEC1F4DB
      B9F8DDB4B78183FF00FFFF00FFFF00FFDCA887FFFFFF99D69A0D9D0E93D18EC0
      DEB430AA2C029A0324A41FF6E2C8F7E1C2F0DAB7B78183FF00FFFF00FFFF00FF
      DCA887FFFFFFF6FBF645B546029A03029A03029A03029A0321A41EFCEFD9E6D9
      C4C6BCA9B78183FF00FFFF00FFFF00FFE3B18EFFFFFFFFFFFFE5F5E581CD813B
      B03B38AE378ECD8545AE3DAA8771B8857AB8857AB78183FF00FFFF00FFFF00FF
      E3B18EFFFFFFFFFFFFFFFFFFFFFFFFE8F6E8E7F5E5FFFEF9BEC6A8A2886CE8B2
      70ECA54AC58768FF00FFFF00FFFF00FFEDBD92FFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFE4D4D2B8857AFAC577CD9377FF00FFFF00FFFF00FFFF00FF
      EDBD92FCF7F4FCF7F3FBF6F3FBF6F3FAF5F3F9F5F3F9F5F3E1D0CEB8857ACF9B
      86FF00FFFF00FFFF00FFFF00FFFF00FFEDBD92DCA887DCA887DCA887DCA887DC
      A887DCA887DCA887DCA887B8857AFF00FFFF00FFFF00FFFF00FF}
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    OnClick = btLimparClick
  end
  object btImprimir: TBitBtn [9]
    Left = 649
    Top = 465
    Width = 105
    Height = 25
    Hint = 'Imprime relat'#243'rio'
    CustomHint = BalloonHint1
    Caption = '&Imprimir'
    Glyph.Data = {
      12020000424D1202000000000000120100002800000010000000100000000100
      08000000000000010000120B0000120B0000370000003700000000000000FFFF
      FF00FF00FF00F4F4E900EEEDDA00E9E8D000E6E5C900E4E3C500D6D4A700C1BF
      7A00A29F3D009C99380069660D005E5B0500706D1300716E15007B781D00827F
      23009D992B00858225008E8B2D008B882F00A4A13B00A09C3A009F9C3A00A09D
      3B008784320094913700A6A3400089863500ABA84A00B1AF6100BAB76A00BDBB
      7200BDBB7300BFBD7700C1BF7B00C2C07D00C4C28200C7C58700C3C18700C9C7
      8D00CBC99000DFDEBA00DEDDBA00E0DFBD00E2E1C1005F5D050068660D00B2B0
      5A00D1D0A200EDEDD900F9F9F300FCFCF900FFFFFF0002020202020202020202
      02020202020202020202020202020202020202020202020C0C0C0C0C0C0E0E0E
      0C0D0D0D2F0202110808080808222222112121211A30020B0B0B0B0B0B181818
      0B242323230F0202102B20201D1D1D1D1D082525251002021507070707070707
      072E2626261302021B0505050505050505052A27271402021928040404040404
      04042D291F170202341C0A0A0A0A0A0A0A0A0A0A1C3402020202120106060606
      06060112020202020202160133333232323201160202020202021E0103030303
      0303011E020202020202310135352C2C2C2C0131020202020202200101010101
      01010120020202020202090909090909090909090202}
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
    OnClick = btImprimirClick
  end
  object DBGrid1: TDBGrid [10]
    Left = 703
    Top = 35
    Width = 162
    Height = 424
    CustomHint = BalloonHint1
    TabStop = False
    DataSource = dsConsulta
    ReadOnly = True
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object dsConsulta: TDataSource
    DataSet = mdExames
    Left = 48
    Top = 448
  end
  object dsQuant: TDataSource
    DataSet = dmConsultas.qyConsQuantEx
    Left = 120
    Top = 448
  end
  object mdExames: TJvMemoryData
    FieldDefs = <>
    Left = 192
    Top = 448
    object mdExamesData: TDateField
      FieldName = 'Data'
      DisplayFormat = 'dd/MM/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object mdExamesQuantidade: TIntegerField
      FieldName = 'Quantidade'
    end
  end
end
