inherited frmObsPacientes: TfrmObsPacientes
  Caption = 'Obs. Pacientes'
  ClientHeight = 328
  ClientWidth = 467
  OnCloseQuery = FormCloseQuery
  ExplicitTop = 8
  ExplicitWidth = 473
  ExplicitHeight = 360
  PixelsPerInch = 96
  TextHeight = 13
  object SpeedButton2: TSpeedButton [0]
    Left = 4
    Top = 296
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
  inherited btFechar: TBitBtn
    Left = 354
    Top = 295
    ExplicitLeft = 354
  end
  object dbObs: TwwDBRichEditMSWord [2]
    Left = 0
    Top = 0
    Width = 459
    Height = 289
    Hint = 'Digite as observa'#231#245'es do paciente'
    CustomHint = BalloonHint1
    ScrollBars = ssVertical
    AutoURLDetect = False
    DataField = 'pac_obs'
    DataSource = frmCadPacientes.dsCadastro
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    GutterWidth = 3
    HideSelection = False
    ParentFont = False
    ParentShowHint = False
    PrintJobName = 'Delphi 5'
    ShowHint = True
    TabOrder = 1
    EditorOptions = [reoShowSaveExit, reoShowPrint, reoShowPrintPreview, reoShowPageSetup, reoShowFormatBar, reoShowToolBar, reoShowStatusBar, reoShowHints, reoShowRuler, reoShowInsertObject, reoCloseOnEscape, reoFlatButtons, reoShowSpellCheck, reoShowMainMenuIcons, reoShowZoomCombo]
    EditorCaption = 'Edit Rich Text'
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
      790000007B5C727466315C616E73695C616E7369637067313235325C64656666
      305C6465666C616E67313034367B5C666F6E7474626C7B5C66305C666E696C20
      4D532053616E732053657269663B7D7D0D0A5C766965776B696E64345C756331
      5C706172645C66305C667331362064624F62735C7061720D0A7D0D0A00}
  end
  object btGravar: TBitBtn [3]
    Left = 243
    Top = 295
    Width = 105
    Height = 25
    CustomHint = BalloonHint1
    Caption = '&Gravar'
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
      AD5A59AA5454A24D4EAA9595C1C8C7CCCBCACECBCACAC8C7C6CAC9B79E9E9840
      41994444A65151FF00FFFF00FFBC7871CF6666D26868B95A5B9B8080BEA1A0E2
      D0CEFEF9F5FFFDFAF2F6F4D2B3B3962D2C993232C25B5BB05859FF00FFBB7871
      CB6565CE6767B85D5D9E7B7C9D4343B77675E7DFDDFDFBF9FEFFFDD9BAB9962E
      2E993333C05A5AAF5859FF00FFBB7871CB6565CE6667B85D5DA884839939399B
      3636CDBCBBF2F0EEFFFFFFE2C3C1962D2D983333C05A5AAF5859FF00FFBB7871
      CB6565CE6666B75C5CB28F8E9F4848943232A69A9AD5DBD8FAFFFEE6C9C8932B
      2B963030BF5959AF5859FF00FFBB7871CB6565CF6666BB5C5CC3908FC29695B3
      8686AA8D8EBAA2A1E1CAC8DCA9A9A33A3AA43E3EC35D5DAE5758FF00FFBB7871
      CC6566CB6464CB6464CB6364CC6767CD6767CC6464C85B5BC95E5ECA6161CC65
      65CD6666CF6868AC5657FF00FFBC7972B75351B25B57C68684D2A4A2D5ABAAD5
      AAA9D5ABAAD5A5A4D5A8A7D5AAA9D6AEACD39C9CCD6666AC5556FF00FFBC7871
      B14F4CE4CDCBFAF7F7F8F4F3F9F5F4F9F5F4F9F5F4F9F6F5F9F5F4F9F5F4FBFB
      FADEBEBDC45C5DAD5657FF00FFBC7871B3514EEBD7D6FCFBFAF7F0EFF7F1F0F7
      F1F0F7F1F0F7F1F0F7F1F0F6F1F0FBF9F8DEBCBBC35B5BAD5657FF00FFBC7871
      B3514EEBD7D4F0EFEFD8D5D4DAD7D7DAD7D7DAD7D7DAD7D7DAD7D7D8D5D5ECEC
      EBE0BDBCC25B5BAD5657FF00FFBC7871B3514EEBD7D5F3F1F1DEDAD9DFDBDBDF
      DBDBDFDBDBDFDBDBDFDBDBDDDAD9EEEEEEE0BDBCC35B5BAD5657FF00FFBC7871
      B3514EEAD7D5F5F4F3E4DFDEE5E1E0E5E1E0E5E1E0E5E1E0E5E1E0E4DFDFF2F1
      F0DFBDBBC35B5BAD5657FF00FFBC7871B3514EEBD7D6F1F0EFD9D5D5DAD8D7DA
      D8D7DAD8D7DAD8D7DAD8D7D8D5D5EDECEBE1BEBDC35B5BAD5657FF00FFBC7870
      B3514EE9D6D4FEFBFBFAF3F2FAF3F2FAF3F2FAF3F2FAF3F2FAF3F2FAF3F2FDFA
      F9DEBCBBC35C5CAD5657FF00FFFF00FFA8504CC9B6B5D3D5D4D1CECED1CECED1
      CECED1CECED1CECED1CECED1CECED3D4D4CBAEADA34D4EFF00FF}
    TabOrder = 2
    OnClick = btGravarClick
  end
  inherited BalloonHint1: TBalloonHint
    Left = 232
    Top = 184
  end
end
