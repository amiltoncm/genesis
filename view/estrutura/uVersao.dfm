inherited frmVersao: TfrmVersao
  Caption = 'Notas da vers'#227'o - '
  ExplicitTop = -17
  ExplicitHeight = 496
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 8
    Top = 56
    Width = 38
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Vers'#245'es'
  end
  object pnVersao: TPanel [2]
    Left = 0
    Top = 0
    Width = 577
    Height = 41
    CustomHint = BalloonHint1
    Align = alTop
    BevelInner = bvRaised
    Caption = 'pnVersao'
    Color = clLime
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 1
    ExplicitLeft = 168
    ExplicitTop = 32
    ExplicitWidth = 185
  end
  object DBGrid1: TDBGrid [3]
    Left = 8
    Top = 75
    Width = 96
    Height = 357
    CustomHint = BalloonHint1
    TabStop = False
    Ctl3D = True
    DataSource = dsVersao
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ver_id'
        Visible = True
      end>
  end
  object wwDBRichEditMSWord1: TwwDBRichEditMSWord [4]
    Left = 111
    Top = 75
    Width = 450
    Height = 357
    CustomHint = BalloonHint1
    TabStop = False
    ScrollBars = ssVertical
    BevelInner = bvNone
    BevelOuter = bvNone
    AutoURLDetect = False
    DataField = 'ver_obs'
    DataSource = dsVersao
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    GutterWidth = 3
    HideSelection = False
    ParentFont = False
    Title = 'Notas da vers'#227'o'
    PrintJobName = 'Genesis - Embarcadero RAD Studio XE2 - uVersao [Built]'
    ReadOnly = True
    TabOrder = 3
    EditorOptions = [reoShowSaveExit, reoShowPrint, reoShowPrintPreview, reoShowPageSetup, reoShowFormatBar, reoShowToolBar, reoShowStatusBar, reoShowHints, reoShowRuler, reoShowInsertObject, reoCloseOnEscape, reoFlatButtons, reoShowSpellCheck, reoShowMainMenuIcons, reoShowZoomCombo]
    EditorCaption = 'Edit Rich Text'
    EditorPosition.Left = 0
    EditorPosition.Top = 0
    EditorPosition.Width = 0
    EditorPosition.Height = 0
    MeasurementUnits = muInches
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
      8A0000007B5C727466315C616E73695C616E7369637067313235325C64656666
      305C6465666C616E67313034367B5C666F6E7474626C7B5C66305C666E696C5C
      666368617273657430205461686F6D613B7D7D0D0A5C766965776B696E64345C
      7563315C706172645C66305C66733136207777444252696368456469744D5357
      6F7264315C7061720D0A7D0D0A00}
  end
  object dsVersao: TDataSource
    DataSet = dmConfig.qyVersao
    Left = 480
    Top = 8
  end
end
