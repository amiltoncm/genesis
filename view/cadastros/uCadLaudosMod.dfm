inherited frmCadLaudosMod: TfrmCadLaudosMod
  Caption = 'Cadastro de Modelos de Laudos (Citologia)'
  ClientHeight = 557
  ClientWidth = 704
  ExplicitWidth = 710
  ExplicitHeight = 582
  PixelsPerInch = 96
  TextHeight = 13
  object lbCodigo: TLabel [0]
    Left = 8
    Top = 56
    Width = 33
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'C'#243'digo'
    FocusControl = dbCodigo
  end
  object lbDescricao: TLabel [1]
    Left = 83
    Top = 56
    Width = 46
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Descri'#231#227'o'
    FocusControl = dbDescricao
  end
  object Label1: TLabel [2]
    Left = 8
    Top = 99
    Width = 29
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Laudo'
  end
  object Label2: TLabel [3]
    Left = 8
    Top = 319
    Width = 55
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Diagn'#243'stico'
  end
  inherited btFechar: TBitBtn
    Left = 591
    Top = 507
    TabOrder = 4
    ExplicitLeft = 591
    ExplicitTop = 392
  end
  inherited btNovo: TBitBtn
    Left = 591
    TabOrder = 5
    ExplicitLeft = 591
  end
  inherited btAlterar: TBitBtn
    Left = 591
    TabOrder = 6
    ExplicitLeft = 591
  end
  inherited btExcluir: TBitBtn
    Left = 591
    TabOrder = 7
    ExplicitLeft = 591
  end
  inherited btGravar: TBitBtn
    Left = 591
    TabOrder = 8
    ExplicitLeft = 591
  end
  inherited btCancelar: TBitBtn
    Left = 591
    TabOrder = 9
    ExplicitLeft = 591
  end
  inherited btAtualizar: TBitBtn
    Left = 591
    TabOrder = 10
    ExplicitLeft = 591
  end
  inherited btLimpar: TBitBtn
    Left = 591
    TabOrder = 11
    ExplicitLeft = 591
  end
  inherited btProcurar: TBitBtn
    Left = 591
    TabOrder = 12
    ExplicitLeft = 591
  end
  inherited ToolBar1: TToolBar
    Width = 704
    TabOrder = 13
    ExplicitWidth = 704
  end
  inherited panCaption: TPanel
    Width = 704
    TabOrder = 14
    ExplicitWidth = 704
  end
  inherited sbPrincipal: TStatusBar
    Top = 538
    Width = 704
    ExplicitTop = 423
    ExplicitWidth = 704
  end
  object dbCodigo: TDBEdit [16]
    Left = 8
    Top = 72
    Width = 69
    Height = 21
    Hint = 'C'#243'digo '
    CustomHint = BalloonHint1
    TabStop = False
    Color = clBtnFace
    DataField = 'mod_id'
    DataSource = dsCadastro
    ParentShowHint = False
    ReadOnly = True
    ShowHint = True
    TabOrder = 0
  end
  object dbDescricao: TDBEdit [17]
    Left = 83
    Top = 72
    Width = 371
    Height = 21
    Hint = 'Descri'#231#227'o '
    CustomHint = BalloonHint1
    DataField = 'mod_descricao'
    DataSource = dsCadastro
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
  end
  object dbModelo: TwwDBRichEditMSWord [18]
    Left = 8
    Top = 118
    Width = 577
    Height = 195
    Hint = 'Digite o modelo do Laudo'
    CustomHint = BalloonHint1
    ScrollBars = ssVertical
    AutoURLDetect = True
    DataField = 'mod_modelo'
    DataSource = dsCadastro
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Verdana'
    Font.Style = []
    GutterWidth = 3
    HideSelection = False
    ParentFont = False
    ParentShowHint = False
    PrintJobName = 'Next Sistemas'
    ShowHint = True
    TabOrder = 2
    WantTabs = True
    PopupOptions = [rpoPopupEdit, rpoPopupCut, rpoPopupCopy, rpoPopupPaste, rpoPopupBold, rpoPopupItalic, rpoPopupUnderline, rpoPopupFont, rpoPopupBullet, rpoPopupParagraph, rpoPopupTabs, rpoPopupFind, rpoPopupReplace, rpoPopupInsertObject, rpoPopupMSWordSpellCheck]
    EditorOptions = [reoShowLoad, reoShowSaveAs, reoShowSaveExit, reoShowPrint, reoShowPageSetup, reoShowFormatBar, reoShowToolBar, reoShowStatusBar, reoShowHints, reoShowRuler, reoShowInsertObject, reoCloseOnEscape, reoFlatButtons, reoShowSpellCheck, reoShowMainMenuIcons]
    EditorCaption = 'Cadastro de Modelos de Laudos Padr'#227'o (Histologia)'
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
      740000007B5C727466315C616E73695C616E7369637067313235325C64656666
      307B5C666F6E7474626C7B5C66305C666E696C5C666368617273657430205665
      7264616E613B7D7D0D0A5C766965776B696E64345C7563315C706172645C6C61
      6E67313034365C66305C667332325C7061720D0A7D0D0A00}
  end
  object wwDBRichEditMSWord1: TwwDBRichEditMSWord [19]
    Left = 8
    Top = 338
    Width = 577
    Height = 194
    Hint = 'Digite o diagn'#243'stico do Laudo'
    CustomHint = BalloonHint1
    ScrollBars = ssVertical
    AutoURLDetect = True
    DataField = 'mod_diagnostico'
    DataSource = dsCadastro
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Verdana'
    Font.Style = []
    GutterWidth = 3
    HideSelection = False
    ParentFont = False
    ParentShowHint = False
    PrintJobName = 'Next Sistemas'
    ShowHint = True
    TabOrder = 3
    WantTabs = True
    PopupOptions = [rpoPopupEdit, rpoPopupCut, rpoPopupCopy, rpoPopupPaste, rpoPopupBold, rpoPopupItalic, rpoPopupUnderline, rpoPopupFont, rpoPopupBullet, rpoPopupParagraph, rpoPopupTabs, rpoPopupFind, rpoPopupReplace, rpoPopupInsertObject, rpoPopupMSWordSpellCheck]
    EditorOptions = [reoShowLoad, reoShowSaveAs, reoShowSaveExit, reoShowPrint, reoShowPageSetup, reoShowFormatBar, reoShowToolBar, reoShowStatusBar, reoShowHints, reoShowRuler, reoShowInsertObject, reoCloseOnEscape, reoFlatButtons, reoShowSpellCheck, reoShowMainMenuIcons]
    EditorCaption = 'Cadastro de Modelos de Laudos Padr'#227'o (Histologia)'
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
      740000007B5C727466315C616E73695C616E7369637067313235325C64656666
      307B5C666F6E7474626C7B5C66305C666E696C5C666368617273657430205665
      7264616E613B7D7D0D0A5C766965776B696E64345C7563315C706172645C6C61
      6E67313034365C66305C667332325C7061720D0A7D0D0A00}
  end
  inherited dsCadastro: TDataSource
    DataSet = dmCadastros.qyLaudosMod
  end
  inherited ActionList: TActionList
    inherited actAtualizar: TAction
      OnExecute = actAtualizarExecute
    end
    inherited actProcurar: TAction
      OnExecute = actProcurarExecute
    end
  end
end
