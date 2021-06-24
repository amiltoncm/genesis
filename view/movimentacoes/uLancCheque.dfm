inherited frmLancCheque: TfrmLancCheque
  Caption = 'Cadastro de cheques'
  ClientHeight = 338
  ClientWidth = 647
  OnCreate = FormCreate
  ExplicitWidth = 653
  ExplicitHeight = 366
  PixelsPerInch = 96
  TextHeight = 13
  object ImgCheque: TImage [0]
    Left = 0
    Top = 0
    Width = 646
    Height = 276
    CustomHint = BalloonHint1
    Stretch = True
  end
  object Label3: TLabel [1]
    Left = 16
    Top = 24
    Width = 18
    Height = 13
    CustomHint = BalloonHint1
    Caption = '016'
    Transparent = True
  end
  object Label4: TLabel [2]
    Left = 112
    Top = 24
    Width = 51
    Height = 13
    CustomHint = BalloonHint1
    Caption = '0000       0'
    Transparent = True
  end
  object Label5: TLabel [3]
    Left = 272
    Top = 24
    Width = 42
    Height = 13
    CustomHint = BalloonHint1
    Caption = '0     AAA'
    Transparent = True
  end
  object Label6: TLabel [4]
    Left = 459
    Top = 24
    Width = 6
    Height = 13
    CustomHint = BalloonHint1
    Caption = '0'
    Transparent = True
  end
  object lbValorExtenso: TLabel [5]
    Left = 132
    Top = 63
    Width = 71
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'lbValorExtenso'
    Transparent = True
  end
  object dbEmpresa: TDBText [6]
    Left = 24
    Top = 127
    Width = 617
    Height = 17
    CustomHint = BalloonHint1
    DataField = 'CFG_EMPRESA'
    Transparent = True
  end
  object lbDataExtenso: TLabel [7]
    Left = 375
    Top = 159
    Width = 70
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'lbDataExtenso'
    Transparent = True
  end
  object Label8: TLabel [8]
    Left = 240
    Top = 232
    Width = 48
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'CPF/CNPJ'
    Transparent = True
  end
  object Label9: TLabel [9]
    Left = 376
    Top = 232
    Width = 30
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Titular'
    Transparent = True
  end
  object Label7: TLabel [10]
    Left = 8
    Top = 288
    Width = 33
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Bom p/'
    Transparent = True
  end
  object Label1: TLabel [11]
    Left = 104
    Top = 288
    Width = 40
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Endosso'
  end
  object Label2: TLabel [12]
    Left = 335
    Top = 288
    Width = 42
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Telefone'
  end
  inherited btFechar: TBitBtn
    Left = 534
    Top = 305
    TabOrder = 12
    ExplicitLeft = 534
    ExplicitTop = 305
  end
  object edNBanco: TEdit [14]
    Left = 54
    Top = 19
    Width = 47
    Height = 24
    Hint = 'N.'#186' do Banco'
    CustomHint = BalloonHint1
    CharCase = ecUpperCase
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    MaxLength = 4
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    OnExit = edNBancoExit
    OnKeyPress = edNBancoKeyPress
  end
  object edConta: TEdit [15]
    Left = 194
    Top = 19
    Width = 68
    Height = 24
    Hint = 'N.'#186' da Conta'
    CustomHint = BalloonHint1
    CharCase = ecUpperCase
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
  end
  object edCheque: TEdit [16]
    Left = 354
    Top = 19
    Width = 92
    Height = 24
    Hint = 'N.'#186' do Cheque'
    CustomHint = BalloonHint1
    CharCase = ecUpperCase
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
  end
  object edOrc: TEdit [17]
    Left = 472
    Top = 19
    Width = 25
    Height = 21
    CustomHint = BalloonHint1
    TabOrder = 3
    Text = '0'
    Visible = False
  end
  object edValor: TEdit [18]
    Left = 514
    Top = 19
    Width = 121
    Height = 24
    Hint = 'Valor'
    CustomHint = BalloonHint1
    CharCase = ecUpperCase
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
    OnExit = edValorExit
    OnKeyPress = edValorKeyPress
  end
  object edBanco: TEdit [19]
    Left = 8
    Top = 152
    Width = 305
    Height = 24
    Hint = 'Banco'
    CustomHint = BalloonHint1
    TabStop = False
    CharCase = ecUpperCase
    Color = clInactiveCaption
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ReadOnly = True
    ShowHint = True
    TabOrder = 13
  end
  object cbTipo: TComboBox [20]
    Left = 88
    Top = 248
    Width = 145
    Height = 24
    Hint = 'Tipo de pessoa'
    CustomHint = BalloonHint1
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 5
    Text = 'PESSOA F'#205'SICA'
    OnChange = cbTipoChange
    Items.Strings = (
      'PESSOA F'#205'SICA'
      'PESSOA JUR'#205'DICA')
  end
  object edCpf: TMaskEdit [21]
    Left = 240
    Top = 248
    Width = 129
    Height = 24
    Hint = 'CPF/CNPJ'
    CustomHint = BalloonHint1
    CharCase = ecUpperCase
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 6
    OnExit = edCpfExit
  end
  object edTitular: TEdit [22]
    Left = 376
    Top = 248
    Width = 265
    Height = 24
    Hint = 'Cliente'
    CustomHint = BalloonHint1
    CharCase = ecUpperCase
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 7
    OnChange = edTitularChange
  end
  object edBomPara: TwwDBDateTimePicker [23]
    Left = 8
    Top = 305
    Width = 87
    Height = 21
    Hint = 'Selecione ou digite a a data'
    CustomHint = BalloonHint1
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
    TabOrder = 8
    DisplayFormat = 'dd/mm/yyyy'
  end
  object edEndosso: TEdit [24]
    Left = 101
    Top = 305
    Width = 228
    Height = 24
    Hint = 'Endosso'
    CustomHint = BalloonHint1
    CharCase = ecUpperCase
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 9
  end
  object edTelefone: TMaskEdit [25]
    Left = 335
    Top = 305
    Width = 83
    Height = 21
    CustomHint = BalloonHint1
    EditMask = '(99) 9999-9999;1;_'
    MaxLength = 14
    TabOrder = 10
    Text = '(  )     -    '
  end
  object btGravar: TBitBtn [26]
    Left = 424
    Top = 305
    Width = 105
    Height = 25
    CustomHint = BalloonHint1
    Caption = '&Gravar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
      FF00FFFF00FFFF00FF0955A10857A60557AA0655A70954A00954A0FF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0872DD0362C3006CDB0877E711
      7DEA0877E70069DD005DC70654A50654A5FF00FFFF00FFFF00FFFF00FFFF00FF
      0F6BC90872DD3E99F591C4F9D6E9FDEEF7FFE4F1FFB0D4FB59A5F50570E5035A
      B70B5095FF00FFFF00FFFF00FF1278E0127CE870B4F9F6FAFEFFFFFFEEF6FDD3
      E6FBE2EEFDFFFFFFFFFFFFAED2FA0E78ED025AB60653A2FF00FFFF00FF1278E0
      6DB2F9FEFEFFF4F9FE77B6F63391F0B5D5F91B7FEA4693EEC9E0FAFFFFFFB0D5
      FA0970E60653A2FF00FF0B70D53695F4E8F3FEFFFFFF4FA3F61F88F2D4E7FCFF
      FFFF489BEF0065E60E74E8C9E1FAFFFFFF58A5F5005EC70858AB137AE371B5FB
      FFFFFFB2D7FC469FF7DEEEFDFDFEFEE0EEFDA1CCF80173E9006AE74294EDFFFF
      FFB3D7FB016BDE0858AB1F85ECA2CFFDFFFFFF71B7FDACD4FDFAFCFF66AFF83F
      9AF5E2EFFD2D8EF00075EB0575E9E2EEFCE6F3FF0E7BE9065AB02F8FF1B7DAFD
      FFFFFF6BB4FF3C9DFE4FA5FB1D8AF81484F5A0CDFB84BDF8067AEF0374EBD4E8
      FBF0F8FF1A82EC055CB53693F0B8DAFEFFFFFF8EC6FF2391FF2E95FE2B93FC21
      8CF92D92F79ACAFB1D86F21D86F0F3F8FED9EBFE117DE9095CB22689EDAFD6FD
      FFFFFFE1F0FF3499FF2F96FF3399FF2E94FD218CF950A4F9419BF77DBBF8FFFF
      FF99C9FA0773E10958ABFF00FF3994F0F1F8FFFFFFFFADD6FF3499FF2592FF28
      93FF238FFC1788FA6FB4FAF4FAFFF5FAFE49A0F7076ACEFF00FFFF00FF3994F0
      CDE6FFF6FAFFFFFFFFE0EFFF8DC6FF6EB6FE79BBFFB6DAFEFFFFFFFFFFFF78B9
      F9137BE6076ACEFF00FFFF00FFFF00FF64ACF6D4EAFFF9FCFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFE7F3FE77B8FA1D85ED0D6DD0FF00FFFF00FFFF00FFFF00FF
      FF00FF459AF0A7D2FCD8ECFFE2F1FFE4F1FED1E7FE9DCDFD4DA2F7177FE8177F
      E8FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF3B94F061ABF665
      ADF7489EF42286EC127AE4FF00FFFF00FFFF00FFFF00FFFF00FF}
    ParentFont = False
    TabOrder = 11
    OnClick = btGravarClick
  end
  object dsCaixa: TDataSource
    DataSet = dmFinanceiro.qyCaixa
    Left = 40
    Top = 88
  end
  object dsBanco: TDataSource
    DataSet = dmCadastros.qyBancos
    Left = 88
    Top = 88
  end
  object dsCheques: TDataSource
    DataSet = dmFinanceiro.qyCheques
    Left = 144
    Top = 88
  end
end
