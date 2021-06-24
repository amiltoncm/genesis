inherited frmCorreio: TfrmCorreio
  Caption = 'Enviar exame por e-mail'
  ClientHeight = 487
  ClientWidth = 763
  Color = clMoneyGreen
  ExplicitLeft = -189
  ExplicitTop = -71
  ExplicitWidth = 769
  ExplicitHeight = 519
  PixelsPerInch = 96
  TextHeight = 13
  inherited btFechar: TBitBtn
    Left = 650
    Top = 454
    TabOrder = 1
    ExplicitLeft = 650
    ExplicitTop = 454
  end
  object Panel1: TPanel [1]
    Left = 0
    Top = 0
    Width = 763
    Height = 121
    CustomHint = BalloonHint1
    Align = alTop
    BevelInner = bvRaised
    Color = clMoneyGreen
    ParentBackground = False
    TabOrder = 2
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 17
      Height = 13
      CustomHint = BalloonHint1
      Caption = 'De:'
    end
    object Label2: TLabel
      Left = 8
      Top = 35
      Width = 26
      Height = 13
      CustomHint = BalloonHint1
      Caption = 'Para:'
    end
    object Label3: TLabel
      Left = 8
      Top = 62
      Width = 43
      Height = 13
      CustomHint = BalloonHint1
      Caption = 'Assunto:'
    end
    object Label4: TLabel
      Left = 8
      Top = 88
      Width = 35
      Height = 13
      CustomHint = BalloonHint1
      Caption = 'Anexo:'
    end
    object Image1: TImage
      Left = 543
      Top = 88
      Width = 26
      Height = 21
      CustomHint = BalloonHint1
      Center = True
      Picture.Data = {
        07544269746D617036030000424D360300000000000036000000280000001000
        000010000000010018000000000000030000C40E0000C40E0000000000000000
        0000FFFFFFFFFFFF3333997373EC6C6BAD6C6BAD6C6BAD6C6BAD6C6BAD6C6BAD
        6C6BAD6C6BAD6C6BAD333399FFFFFFFFFFFFFFFFFFFFFFFF3333999999CC7373
        ECE7E6E0E7E6E0E7E6E0E7E6E0E7E6E0E7E6E0E7E6E0E7E6E0333399FFFFFFFF
        FFFFFFFFFFFFFFFF3333999999CC2C2CE07373ECE7E6E0FFFFFFE7E6E0DCDDDA
        DCDDDAE7E6E0DCDDDA333399FFFFFFFFFFFFFFFFFFFFFFFF333399E7E6E0DCDD
        DA2C2CE07373ECE7E6E0FFFFFFFFFFFFDCDDDADCDDDADCDDDA333399FFFFFFFF
        FFFFFFFFFFFFFFFF333399E7E6E0E7E6E09999CC2C2CE07373EC7373EC7373EC
        7373EC7373EC9999CC333399FFFFFFFFFFFFFFFFFFFFFFFF333399E7E6E0E7E6
        E0FFFFFF7373ECDCDDDA7373EC2C2CE09999CC9999CCDCDDDA333399FFFFFFFF
        FFFFFFFFFFFFFFFF333399E7E6E0DCDDDAFFFFFF9999CC2C2CE09999CCFFFFFF
        E7E6E0E7E6E0DCDDDA333399FFFFFFFFFFFFFFFFFFFFFFFF333399E7E6E0DCDD
        DAE7E6E09999CC2C2CE0DCDDDAE7E6E0DCDDDADCDDDADCDDDA333399FFFFFFFF
        FFFFFFFFFFFFFFFF333399E7E6E0DCDDDAE7E6E09999CC7373ECDCDDDADCDDDA
        DCDDDADCDDDADCDDDA333399FFFFFFFFFFFF2C2CE02C2CE02C2CE02C2CE02C2C
        E02C2CE02C2CE02C2CE02C2CE02C2CE02C2CE02C2CE02C2CE02C2CE02C2CE02C
        2CE02C2CE0FFFFFF2C2CE02C2CE02C2CE02C2CE0FFFFFFFFFFFFE7E6E02C2CE0
        2C2CE0E7E6E02C2CE02C2CE02C2CE02C2CE02C2CE0FFFFFF2C2CE02C2CE02C2C
        E02C2CE0E7E6E02C2CE02C2CE0FFFFFF2C2CE0FFFFFF2C2CE02C2CE02C2CE02C
        2CE02C2CE0E7E6E0FFFFFFFFFFFF2C2CE02C2CE0FFFFFF2C2CE02C2CE0FFFFFF
        2C2CE0FFFFFFFFFFFFFFFFFF2C2CE02C2CE02C2CE0FFFFFF2C2CE02C2CE0E7E6
        E02C2CE0FFFFFF2C2CE02C2CE0E7E6E02C2CE0FFFFFF2C2CE02C2CE02C2CE02C
        2CE02C2CE0FFFFFFFFFFFFFFFFFF2C2CE02C2CE0FFFFFFFFFFFFFFFFFF2C2CE0
        2C2CE0FFFFFFFFFFFFFFFFFFFFFFFF2C2CE02C2CE02C2CE02C2CE02C2CE02C2C
        E02C2CE02C2CE02C2CE02C2CE02C2CE02C2CE02C2CE02C2CE02C2CE02C2CE02C
        2CE0}
      Transparent = True
    end
    object edMail: TEdit
      Left = 57
      Top = 8
      Width = 512
      Height = 21
      Hint = 'Conta de envio do e-mail'
      CustomHint = BalloonHint1
      TabStop = False
      Color = clBtnFace
      ParentShowHint = False
      ReadOnly = True
      ShowHint = False
      TabOrder = 0
      Text = 'edMail'
    end
    object cbEndereco: TwwDBLookupCombo
      Left = 57
      Top = 35
      Width = 512
      Height = 21
      Hint = 'digite o endere'#231'o de e-mail'
      CustomHint = BalloonHint1
      CharCase = ecLowerCase
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'ema_endereco'#9'50'#9'endere'#231'o de e-mail'#9'F'
        'ema_id'#9'8'#9'ID'#9'F')
      LookupTable = dmGestao.lkMail
      LookupField = 'ema_endereco'
      Options = [loColLines, loRowLines, loTitles]
      ButtonEffects.Transparent = True
      ButtonEffects.Flat = True
      ParentShowHint = False
      ShowHint = False
      TabOrder = 1
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      ShowMatchText = True
    end
    object edAssunto: TEdit
      Left = 57
      Top = 62
      Width = 512
      Height = 21
      Hint = 'Assunto do e-mail'
      CustomHint = BalloonHint1
      ParentShowHint = False
      ShowHint = False
      TabOrder = 2
      Text = 'edAssunto'
    end
    object edAnexo: TEdit
      Left = 57
      Top = 88
      Width = 486
      Height = 21
      Hint = 'Arquivo anexo (exame em pdf)'
      CustomHint = BalloonHint1
      TabStop = False
      Color = clBtnFace
      ParentShowHint = False
      ReadOnly = True
      ShowHint = False
      TabOrder = 3
      Text = 'edAnexo'
    end
  end
  object Panel2: TPanel [2]
    Left = 0
    Top = 120
    Width = 763
    Height = 327
    CustomHint = BalloonHint1
    BevelInner = bvLowered
    TabOrder = 3
    object memMsg: TwwDBRichEdit
      Left = 1
      Top = 1
      Width = 761
      Height = 324
      CustomHint = BalloonHint1
      ScrollBars = ssVertical
      AutoURLDetect = False
      Ctl3D = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      GutterWidth = 3
      HideSelection = False
      HideScrollBars = False
      ParentCtl3D = False
      ParentFont = False
      PrintJobName = 'Genesis - Embarcadero RAD Studio XE2 - uCorreio [Built]'
      TabOrder = 0
      WantReturns = False
      EditorOptions = [reoShowPrint, reoShowPrintPreview, reoShowPageSetup, reoShowFormatBar, reoShowToolBar, reoShowStatusBar, reoShowHints, reoShowRuler, reoShowInsertObject, reoCloseOnEscape, reoFlatButtons, reoShowSpellCheck, reoShowMainMenuIcons, reoShowJustifyButton, reoShowZoomCombo, reoShowHorzScroll]
      EditorCaption = 'e-mail'
      EditorPosition.Left = 0
      EditorPosition.Top = 0
      EditorPosition.Width = 0
      EditorPosition.Height = 0
      MeasurementUnits = muCentimeters
      PrintMargins.Top = 1.000000000000000000
      PrintMargins.Bottom = 1.000000000000000000
      PrintMargins.Left = 1.000000000000000000
      PrintMargins.Right = 1.000000000000000000
      PrintHeader.VertMargin = 0.500000000000000000
      PrintHeader.Font.Charset = DEFAULT_CHARSET
      PrintHeader.Font.Color = clWindowText
      PrintHeader.Font.Height = -11
      PrintHeader.Font.Name = 'Tahoma'
      PrintHeader.Font.Style = []
      PrintFooter.VertMargin = 0.500000000000000000
      PrintFooter.Font.Charset = DEFAULT_CHARSET
      PrintFooter.Font.Color = clWindowText
      PrintFooter.Font.Height = -11
      PrintFooter.Font.Name = 'Tahoma'
      PrintFooter.Font.Style = []
      RichEditVersion = 2
      Data = {
        7D0000007B5C727466315C616E73695C616E7369637067313235325C64656666
        305C6465666C616E67313034367B5C666F6E7474626C7B5C66305C666E696C5C
        666368617273657430205461686F6D613B7D7D0D0A5C766965776B696E64345C
        7563315C706172645C66305C66733136206D656D4D73675C7061720D0A7D0D0A
        00}
    end
    object pnMensagem: TPanel
      Left = 49
      Top = 80
      Width = 664
      Height = 81
      Cursor = crHourGlass
      CustomHint = BalloonHint1
      BevelInner = bvLowered
      Caption = 'Por favor aguarde o envio do e-mail...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Visible = False
    end
  end
  object btEnviar: TBitBtn [3]
    Left = 539
    Top = 453
    Width = 105
    Height = 25
    Hint = 'Clique para enviar o email'
    CustomHint = BalloonHint1
    Caption = '&Enviar'
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
      015603FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FF015603015503FF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF025904
      035D06FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FF046208096F11FF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF06690D
      18932D015603FF00FFFF00FFFF00FFFF00FFFF00FF015403FF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FF06680D2CB84F096B10FF00FFFF00FFFF00FFFF
      00FFFF00FF015403015403FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF035A06
      2BB44C25AB43015202FF00FFFF00FFFF00FFFF00FF01540307840F015403FF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FF168A2842E2761C9C3301540301540301
      5302015202015403099813047D0B015403FF00FFFF00FFFF00FFFF00FFFF00FF
      02560429B1493FE06F28B74816982A139825169C280E911C099313058F0D0582
      0D015403FF00FFFF00FFFF00FFFF00FFFF00FF03580524A94136D3622ECC5424
      BD421BAF3213A3250C9818068F0F06920E078110015403FF00FFFF00FFFF00FF
      FF00FFFF00FF0156030D77181FA53923B43F1EB13718AA2D0F9D1F0A98150A7F
      14015403FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF02570403
      5B06035D0701540315AB29097811015403FF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF015403097611015403FF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FF015403015403FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF015403FF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    ParentShowHint = False
    ShowHint = False
    TabOrder = 0
    OnClick = btEnviarClick
  end
  inherited BalloonHint1: TBalloonHint
    Left = 208
    Top = 24
  end
end
