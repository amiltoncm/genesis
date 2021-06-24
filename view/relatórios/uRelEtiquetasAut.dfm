object frmRelEtiquetasAut: TfrmRelEtiquetasAut
  Left = 0
  Top = 0
  CustomHint = BalloonHint1
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Etiquetas'
  ClientHeight = 112
  ClientWidth = 416
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 5
    Width = 70
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Tipo de exame'
  end
  object Label2: TLabel
    Left = 231
    Top = 8
    Width = 64
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Qtde Exames'
  end
  object Label3: TLabel
    Left = 111
    Top = 8
    Width = 60
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Exame inicial'
  end
  object Label4: TLabel
    Left = 319
    Top = 8
    Width = 72
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Qtde Etiquetas'
  end
  object Label5: TLabel
    Left = 8
    Top = 52
    Width = 28
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Texto'
  end
  object btImprimir: TBitBtn
    Left = 221
    Top = 71
    Width = 85
    Height = 25
    Hint = 'Imprime o c'#243'digo de barras'
    CustomHint = BalloonHint1
    Caption = '&Imprimir'
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFB3B1B2FF00FFFF00FFFF00FF9A99999A9999A4A1
      A2FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB3B1B2B3B1B2DEDCDCAB
      A9A95553546F6D6EAEACACD2D0D1E0DFDF9A9999FF00FFFF00FFFF00FFFF00FF
      B3B1B2B3B1B2FBFBFBFFFFFFE0DEDFB2B0B05F5E603131333131344F4D4F8180
      819A9999A4A1A2FF00FFA7A4A5B3B1B2F4F2F3FFFFFFF2F0F0D6D5D5B3B1B2A4
      A1A1ACA9AA9E9D9D7E7D7D5655573536383635378D8B8CFF00FFB0ADAEEEEDED
      EBEBEBCCCACAB9B7B7C4C2C2D0CFCFB7B5B5ABA8A9A8A6A6ACA9AAAFADADA4A1
      A28584849A9999FF00FFAAA7A8BFBDBEB7B5B5C1C0C0D5D5D5DCDDDDF1F1F0F4
      F2F4E4E3E3D2D1D1BFBDBDAFADAEA9A6A6ACA9AAA4A1A2FF00FFA7A4A5C0BFC0
      D5D4D4D9D9D9D5D5D5E9E9E9DCDADAB5BDB5CCCBCBD7D9DADFDFDFDDDDDDD3D2
      D2C6C6C6ADACACFF00FFFF00FFB0AEAFDBDCDCDADADAE4E4E4D5D3D3C5C1C4B8
      DCBAC9D1CBD2BAB5BFB7B6BBB9BAC4C2C3D0CFCFBBB9BAFF00FFFF00FFFF00FF
      B0AEAFCFCDCDC0BFBFC2C1C1EAEAEAF8F6F6F2F1F2F1E8E6E4E1E1D8D8D8C4C4
      C4A9A6A7FF00FFFF00FFFF00FFFF00FFFF00FFB0AEAFE1E3E3D6D6D7B1B3B4CA
      CDCFDDDFE0DEE2E2DFDFDFD3D2D3C0BFBFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFCEBE8FAE7DEEED5CCEAD4CCE9D8D4E6DDD9DBD9D8AAA8AAFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFD9B3B1FFE6D9FFDACCFF
      D1C0FFC9B6FFC2AEFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFD9B3B1FFE5D9FFD8CBFED0C1FFCAB7F9BBA8FF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFD9B3B1FFE5D9FFD8CBFE
      D0C1FEC8B6FBC1AEFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFD9B3B1FBE7DFFFE3D8FFD9CCFFD3C2FDC8B6FABFAEFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFD9B3B1D9B3B1D9B3B1D9B3B1F6
      BFB1F6BFB1FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    ParentShowHint = False
    ShowHint = True
    TabOrder = 5
    OnClick = btImprimirClick
  end
  object btFechar: TBitBtn
    Left = 316
    Top = 71
    Width = 85
    Height = 25
    Hint = 'Fecha a janela'
    CustomHint = BalloonHint1
    Caption = '&Fechar'
    Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      2000000000000004000000000000000000000000000000000000FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF000000700000008F000000800000008000000080000000
      800000003F00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF0000008F0000008F0000008F00000090000000900000008F000000
      800000007F0000008000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF000000900000009000000090000000A0000000A0000000A00000009F000000
      900000008F000000800000008F00FF00FF00FF00FF00FF00FF00FF00FF000000
      9F000000A0002020AF00FFFFFF000000A0000000AF000000B0000000AF004F4F
      BF00FFFFFF0000008F0000008F0000008000FF00FF00FF00FF002F2FBF000000
      A0000000B000CFCFA000FFFFFF00FFFFFF000000AF000000B0004F4FBF00FFFF
      FF00FFFFFF008080AF0000009F000000900000000F00FF00FF000000A0000000
      B0000000C0000000BF00C0C0A000FFFFFF00FFFFFF005050DF00FFFFF000FFFF
      FF006F6F90000000BF000000AF0000009F0000006F00FF00FF000F0FB0000000
      C0000000CF000000CF000000BF00D0D0BF00FFFFFF00FFFFFF00FFFFFF008080
      AF000000C0000000C0000000BF000000A00000009F00FF00FF000F0FC0000F0F
      D0000F0FDF000000D0000000D000404FC000FFFFFF00FFFFFF00FFFFF0000000
      C0000000CF000000CF000000C0000000B0000000BF00FF00FF001010CF001010
      E0001010EF000000E0004040CF00FFFFF000FFFFFF00FFFFF000FFFFFF00FFFF
      FF000000CF000000D0000F0FCF000000BF000000B000FF00FF001F1FD0001F1F
      F0001F1FFF004F4FE000FFFFF000FFFFFF0070709F000000D000CFCFAF00FFFF
      FF00FFFFFF000000E0000F0FDF000F0FC00000009000FF00FF003030E0002F2F
      FF002F2FFF00D0D0BF00FFFFFF006F6F90000000EF000000E0000000D000BFBF
      9F00FFFFFF007070BF001010E0001010CF005F5F6F00FF00FF00FF00FF002F2F
      FF004F4FFF004F4FFF006F6F80001010FF000000FF000000F0000F0FFF001F1F
      F0004F4F90002020FF002020EF001010D000FF00FF00FF00FF00FF00FF00FF00
      FF004040FF006F6FFF008080FF007070FF005050FF004040FF004F4FFF005050
      FF004F4FFF003F3FFF002020F000FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF004F4FFF007F7FFF00A0A0FF00A0A0FF009F9FFF008080FF006F6F
      FF004F4FFF002020FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF003F3FFF006060FF008080FF007F7FFF006060FF003F3F
      FF006F6FF000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
    ParentShowHint = False
    ShowHint = True
    TabOrder = 6
    OnClick = btFecharClick
  end
  object cbTpExame: TComboBox
    Left = 8
    Top = 24
    Width = 97
    Height = 21
    CustomHint = BalloonHint1
    TabOrder = 0
    Text = 'cbTpExame'
    Items.Strings = (
      'Citologia'
      'Histologia')
  end
  object seQtdeEx: TSpinEdit
    Left = 231
    Top = 24
    Width = 82
    Height = 22
    CustomHint = BalloonHint1
    MaxValue = 99
    MinValue = 1
    TabOrder = 2
    Value = 1
  end
  object edInicial: TEdit
    Left = 111
    Top = 24
    Width = 114
    Height = 21
    CustomHint = BalloonHint1
    NumbersOnly = True
    TabOrder = 1
    Text = 'edInicial'
  end
  object seQtdeEt: TSpinEdit
    Left = 319
    Top = 24
    Width = 82
    Height = 22
    CustomHint = BalloonHint1
    MaxValue = 99
    MinValue = 1
    TabOrder = 3
    Value = 1
  end
  object edTexto: TEdit
    Left = 8
    Top = 71
    Width = 121
    Height = 21
    Hint = 'Digite o texto'
    CustomHint = BalloonHint1
    MaxLength = 10
    TabOrder = 4
    Text = 'edTexto'
  end
  object Relatorio: TppReport
    PrinterSetup.BinName = 'Rolagem cont'#237'nua'
    PrinterSetup.DocumentName = 'Relat'#243'rio'
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Argox OS-214 plus series PPLA'
    PrinterSetup.SaveDeviceSettings = True
    PrinterSetup.mmMarginBottom = 0
    PrinterSetup.mmMarginLeft = 2000
    PrinterSetup.mmMarginRight = 0
    PrinterSetup.mmMarginTop = 0
    PrinterSetup.mmPaperHeight = 15000
    PrinterSetup.mmPaperWidth = 25000
    PrinterSetup.PaperSize = 256
    PrinterSetup.DevMode = {00000000}
    Units = utMillimeters
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Printer'
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
    LanguageID = 'Default'
    ModalCancelDialog = False
    ModalPreview = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    ShowCancelDialog = False
    ShowPrintDialog = False
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<Texto a localizar>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    Left = 192
    Top = 16
    Version = '14.04'
    mmColumnWidth = 0
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 15000
      mmPrintPosition = 0
      object CodBar: TppBarCode
        UserName = 'CodBar'
        Anchors = []
        AlignBarCode = ahLeft
        AutoEncode = True
        AutoSizeFont = False
        BarCodeType = bcCode128
        BarColor = clBlack
        Data = '12H0000000'
        PrintHumanReadable = False
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 7144
        mmLeft = 4498
        mmTop = 1323
        mmWidth = 19844
        BandType = 4
        LayerName = Foreground
        mmBarWidth = 145
        mmWideBarRatio = 76200
      end
      object lbExame: TppLabel
        UserName = 'lbExame'
        Caption = 'lbExame'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 3704
        mmTop = 7938
        mmWidth = 13229
        BandType = 4
        LayerName = Foreground
      end
      object lbID: TppLabel
        UserName = 'lbID'
        Caption = 'lbID'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3128
        mmLeft = 3969
        mmTop = 11377
        mmWidth = 7144
        BandType = 4
        LayerName = Foreground
      end
      object lbMsg: TppLabel
        UserName = 'lbMsg'
        Caption = 'lbMsg'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3128
        mmLeft = 13879
        mmTop = 11377
        mmWidth = 8759
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppDesignLayers1: TppDesignLayers
      object ppDesignLayer1: TppDesignLayer
        UserName = 'Foreground'
        LayerType = ltBanded
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object BalloonHint1: TBalloonHint
    Left = 184
    Top = 72
  end
end
