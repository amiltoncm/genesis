inherited frmCadLaudosModHist: TfrmCadLaudosModHist
  Caption = 'Cadastro de Modelos de Microscopia / Diagn'#243'stico'
  ClientHeight = 424
  ClientWidth = 693
  ExplicitWidth = 699
  ExplicitHeight = 449
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
  inherited btFechar: TBitBtn
    Left = 580
    Top = 379
    ExplicitLeft = 580
    ExplicitTop = 379
  end
  inherited btNovo: TBitBtn
    Left = 580
    ExplicitLeft = 580
  end
  inherited btAlterar: TBitBtn
    Left = 580
    ExplicitLeft = 580
  end
  inherited btExcluir: TBitBtn
    Left = 580
    ExplicitLeft = 580
  end
  inherited btGravar: TBitBtn
    Left = 580
    ExplicitLeft = 580
  end
  inherited btCancelar: TBitBtn
    Left = 580
    ExplicitLeft = 580
  end
  inherited btAtualizar: TBitBtn
    Left = 580
    ExplicitLeft = 580
  end
  inherited btLimpar: TBitBtn
    Left = 580
    ExplicitLeft = 580
  end
  inherited btProcurar: TBitBtn
    Left = 580
    ExplicitLeft = 580
  end
  inherited ToolBar1: TToolBar
    Width = 693
    ExplicitWidth = 693
  end
  inherited panCaption: TPanel
    Width = 693
    ExplicitWidth = 693
  end
  inherited sbPrincipal: TStatusBar
    Top = 405
    Width = 693
    ExplicitTop = 405
    ExplicitWidth = 693
  end
  object dbCodigo: TDBEdit [14]
    Left = 8
    Top = 72
    Width = 69
    Height = 21
    Hint = 'C'#243'digo '
    CustomHint = BalloonHint1
    TabStop = False
    Color = clBtnFace
    DataField = 'lmh_id'
    DataSource = dsCadastro
    ParentShowHint = False
    ReadOnly = True
    ShowHint = True
    TabOrder = 12
  end
  object dbDescricao: TDBEdit [15]
    Left = 83
    Top = 72
    Width = 371
    Height = 21
    Hint = 'Descri'#231#227'o '
    CustomHint = BalloonHint1
    DataField = 'lmh_descricao'
    DataSource = dsCadastro
    ParentShowHint = False
    ShowHint = True
    TabOrder = 13
  end
  object pgModelos: TPageControl [16]
    Left = 8
    Top = 99
    Width = 561
    Height = 305
    CustomHint = BalloonHint1
    ActivePage = tsMicro
    Images = frmPrincipal.Imagens
    TabOrder = 14
    OnChange = pgModelosChange
    object tsMicro: TTabSheet
      Hint = 'Microscopia'
      CustomHint = BalloonHint1
      Caption = 'Microscopia'
      ImageIndex = 168
      ParentShowHint = False
      ShowHint = True
      object SpeedButton2: TSpeedButton
        Left = 384
        Top = 0
        Width = 23
        Height = 22
        Hint = 'Abre editor de texto'
        CustomHint = BalloonHint1
        Flat = True
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          1800000000000003000000000000000000000000000000000000E28964D97748
          D97748CC7449CC7449CC7449C46E42BD6C3FB8693AB8693AAE6138AB5D32AB5D
          32AB5D32A45A2C471D01E08C69A46D5580564380564380564380564378533C74
          4F3D744F3D744F3D6A47376A47376A47376A4737A45A2C471D01E69E80AB755D
          FDFAF9FDF8F7FDF8F7FCF7F5FAF2F0FAF2F0F9EFECF8EEEAF7E8E4F5E6E1F5E6
          E1F5E6E1AB5D32522201E9A589AB755D9B644D8D5539875132875132FBF6F48A
          4C276B45216B4521F7ECE8F7E9E6F7E8E4F5E6E1AE6138522201E6AB93AB755D
          A46D55D8977CCC7449CC7449FDF8F7985A3AAB552EA95127E2D2C9F8EEEAF7EC
          E8F7E9E6B8693A5B2601EDB199B37E67A46D55DA9C83CE7B55CC7449FDF9F89B
          644DB65B32AB552E9C8A77F9EFECF8EEEAF7ECE8BD6C3F5B2601EDB199B37E67
          AB755DDDA48BD58360CE7B55D0BAADA76A4DB65B32B65B32563C16E2D2C9F9EF
          ECF8EEEAC46E42682B01F0B7A0B37E67AB755DE6AB93D58A67CD81608D5539A4
          6D55BF643EC261356F3D179C8A77F8F0EEF9EFECC46E42682B01F1BEAABA8670
          C7836BEABCA9D8977C9B644DD28B72CD8160CA7752BF643ECC74499F53295744
          21E2D2C9CE7B55783201F1BEAABA8670C7836BEABCA9DA9C839B644DDDA48BCF
          8568D17E58B96A44A46D55C46E42784926B5A392D17E58783201F1BEAABA8670
          D28B72EABCA9DDA48B9B644DDA9C83DA9C83D58360C16F4B9B644DCD8160AB5D
          32574421D7815A783201F4C8B7BA8670D28B72EABCA9E6AB93A46D55BA8670E6
          AB93D58A67C16F4BB5A392B57358CB7C5D784926D7815A783201F4C8B7BF917C
          EDB199EABCA9EABCA9E6AB93FFFFFFBA8670DDA48BDA9C83C67452D59177D591
          77D8977CDD8560823605F4C8B7BF917CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFEFFFFFFFFFEFDFEFCFBFEFCFBFEFBFAFEFBFADD8560823605F4C8B7BF917C
          BF917CBF917CBF917CBA8670BA8670B37E67B37E67B37E67AB755DAB755DAB75
          5DAB755DE28964883C08F4C8B7F4C8B7F4C8B7F4C8B7F4C8B7F4C8B7F1BEAAF0
          B7A0EDB199EDB199E9A589E69E80E99675E99675E28964883C08}
        ParentShowHint = False
        ShowHint = True
        OnClick = SpeedButton2Click
      end
      object dbMicro: TwwDBRichEditMSWord
        Left = 1
        Top = 28
        Width = 551
        Height = 246
        Hint = 'Digite o modelo do Laudo'
        CustomHint = BalloonHint1
        ScrollBars = ssVertical
        AutoURLDetect = True
        DataField = 'lmh_microscopia'
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
        TabOrder = 0
        WantTabs = True
        PopupOptions = [rpoPopupEdit, rpoPopupCut, rpoPopupCopy, rpoPopupPaste, rpoPopupBold, rpoPopupItalic, rpoPopupUnderline, rpoPopupFont, rpoPopupBullet, rpoPopupParagraph, rpoPopupTabs, rpoPopupFind, rpoPopupReplace, rpoPopupInsertObject, rpoPopupMSWordSpellCheck]
        EditorOptions = [reoShowLoad, reoShowSaveAs, reoShowSaveExit, reoShowPrint, reoShowPageSetup, reoShowFormatBar, reoShowToolBar, reoShowStatusBar, reoShowHints, reoShowRuler, reoShowInsertObject, reoCloseOnEscape, reoFlatButtons, reoShowSpellCheck, reoShowMainMenuIcons]
        EditorCaption = 'Modelos de Microscopia'
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
    end
    object tsDiagnostico: TTabSheet
      Hint = 'Diagn'#243'stico'
      CustomHint = BalloonHint1
      Caption = 'Diagn'#243'stico'
      ImageIndex = 13
      ParentShowHint = False
      ShowHint = True
      object SpeedButton1: TSpeedButton
        Left = 384
        Top = 0
        Width = 23
        Height = 22
        Hint = 'Abre editor de texto'
        CustomHint = BalloonHint1
        Flat = True
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          1800000000000003000000000000000000000000000000000000E28964D97748
          D97748CC7449CC7449CC7449C46E42BD6C3FB8693AB8693AAE6138AB5D32AB5D
          32AB5D32A45A2C471D01E08C69A46D5580564380564380564380564378533C74
          4F3D744F3D744F3D6A47376A47376A47376A4737A45A2C471D01E69E80AB755D
          FDFAF9FDF8F7FDF8F7FCF7F5FAF2F0FAF2F0F9EFECF8EEEAF7E8E4F5E6E1F5E6
          E1F5E6E1AB5D32522201E9A589AB755D9B644D8D5539875132875132FBF6F48A
          4C276B45216B4521F7ECE8F7E9E6F7E8E4F5E6E1AE6138522201E6AB93AB755D
          A46D55D8977CCC7449CC7449FDF8F7985A3AAB552EA95127E2D2C9F8EEEAF7EC
          E8F7E9E6B8693A5B2601EDB199B37E67A46D55DA9C83CE7B55CC7449FDF9F89B
          644DB65B32AB552E9C8A77F9EFECF8EEEAF7ECE8BD6C3F5B2601EDB199B37E67
          AB755DDDA48BD58360CE7B55D0BAADA76A4DB65B32B65B32563C16E2D2C9F9EF
          ECF8EEEAC46E42682B01F0B7A0B37E67AB755DE6AB93D58A67CD81608D5539A4
          6D55BF643EC261356F3D179C8A77F8F0EEF9EFECC46E42682B01F1BEAABA8670
          C7836BEABCA9D8977C9B644DD28B72CD8160CA7752BF643ECC74499F53295744
          21E2D2C9CE7B55783201F1BEAABA8670C7836BEABCA9DA9C839B644DDDA48BCF
          8568D17E58B96A44A46D55C46E42784926B5A392D17E58783201F1BEAABA8670
          D28B72EABCA9DDA48B9B644DDA9C83DA9C83D58360C16F4B9B644DCD8160AB5D
          32574421D7815A783201F4C8B7BA8670D28B72EABCA9E6AB93A46D55BA8670E6
          AB93D58A67C16F4BB5A392B57358CB7C5D784926D7815A783201F4C8B7BF917C
          EDB199EABCA9EABCA9E6AB93FFFFFFBA8670DDA48BDA9C83C67452D59177D591
          77D8977CDD8560823605F4C8B7BF917CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFEFFFFFFFFFEFDFEFCFBFEFCFBFEFBFAFEFBFADD8560823605F4C8B7BF917C
          BF917CBF917CBF917CBA8670BA8670B37E67B37E67B37E67AB755DAB755DAB75
          5DAB755DE28964883C08F4C8B7F4C8B7F4C8B7F4C8B7F4C8B7F4C8B7F1BEAAF0
          B7A0EDB199EDB199E9A589E69E80E99675E99675E28964883C08}
        ParentShowHint = False
        ShowHint = True
        OnClick = SpeedButton1Click
      end
      object dbDiagnostico: TwwDBRichEditMSWord
        Left = 1
        Top = 28
        Width = 551
        Height = 246
        Hint = 'Digite o modelo do Laudo'
        CustomHint = BalloonHint1
        ScrollBars = ssVertical
        AutoURLDetect = True
        DataField = 'lmh_diagnostico'
        DataSource = dsCadastro
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        GutterWidth = 3
        HideSelection = False
        ParentFont = False
        ParentShowHint = False
        PrintJobName = 'Next Sistemas'
        ShowHint = True
        TabOrder = 0
        WantTabs = True
        PopupOptions = [rpoPopupEdit, rpoPopupCut, rpoPopupCopy, rpoPopupPaste, rpoPopupBold, rpoPopupItalic, rpoPopupUnderline, rpoPopupFont, rpoPopupBullet, rpoPopupParagraph, rpoPopupTabs, rpoPopupFind, rpoPopupReplace, rpoPopupInsertObject, rpoPopupMSWordSpellCheck]
        EditorOptions = [reoShowLoad, reoShowSaveAs, reoShowSaveExit, reoShowPrint, reoShowPageSetup, reoShowFormatBar, reoShowToolBar, reoShowStatusBar, reoShowHints, reoShowRuler, reoShowInsertObject, reoCloseOnEscape, reoFlatButtons, reoShowSpellCheck, reoShowMainMenuIcons]
        EditorCaption = 'Modelos de diagn'#243'stico.'
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
          640000007B5C727466315C616E73695C64656666307B5C666F6E7474626C7B5C
          66305C666E696C204D532053616E732053657269663B7D7D0D0A5C766965776B
          696E64345C7563315C706172645C6C616E67313034365C66305C667331365C70
          61720D0A7D0D0A00}
      end
    end
  end
  object cbCorretor: TCheckBox [17]
    Left = 432
    Top = 129
    Width = 121
    Height = 17
    Hint = 'Selecione para executar o corretor ortogr'#225'fico ao gravar!'
    CustomHint = BalloonHint1
    Caption = 'Corretor ortogr'#225'fico'
    Checked = True
    State = cbChecked
    TabOrder = 15
  end
  inherited dsCadastro: TDataSource
    DataSet = dmCadastros.qyLaudosModHist
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
