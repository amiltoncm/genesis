inherited frmMovTransfContas: TfrmMovTransfContas
  Caption = 'Transfer'#234'ncia entre contas'
  ClientHeight = 208
  ClientWidth = 402
  OnClose = FormClose
  ExplicitWidth = 408
  ExplicitHeight = 237
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 8
    Top = 127
    Width = 23
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Data'
  end
  object Label2: TLabel [1]
    Left = 112
    Top = 127
    Width = 24
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Valor'
  end
  object Label3: TLabel [2]
    Left = 198
    Top = 127
    Width = 46
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Descri'#231#227'o'
  end
  inherited btFechar: TBitBtn
    Left = 289
    Top = 175
    TabOrder = 5
    ExplicitLeft = 289
    ExplicitTop = 166
  end
  object GroupBox1: TGroupBox [4]
    Left = 0
    Top = 5
    Width = 393
    Height = 57
    CustomHint = BalloonHint1
    Caption = ' Conta debitada '
    Color = clRed
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 0
    TabStop = True
    object cbContaDeb: TwwDBLookupCombo
      Left = 9
      Top = 24
      Width = 249
      Height = 21
      Hint = 'Digite a conta movimentada'
      CustomHint = BalloonHint1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'con_descricao'#9'15'#9'Conta'#9'F'
        'con_codigo'#9'8'#9'ID'#9'F'
        'con_obs'#9'20'#9'Obs'#9'F')
      LookupTable = dmLookups.lkProcContas
      LookupField = 'con_descricao'
      Options = [loColLines, loRowLines, loTitles]
      Style = csDropDownList
      ButtonEffects.Transparent = True
      ButtonEffects.Flat = True
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      ShowMatchText = True
    end
  end
  object PnContaCred: TGroupBox [5]
    Left = 0
    Top = 65
    Width = 393
    Height = 57
    CustomHint = BalloonHint1
    Caption = ' Conta creditada '
    Color = clGreen
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 6
    TabStop = True
    object cbContaCred: TwwDBLookupCombo
      Left = 8
      Top = 24
      Width = 249
      Height = 21
      Hint = 'Digite a conta movimentada'
      CustomHint = BalloonHint1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'con_descricao'#9'15'#9'Descri'#231#227'o'#9'F'
        'con_codigo'#9'8'#9'ID'#9'F'
        'con_obs'#9'20'#9'Obs'#9'F')
      LookupTable = dmCadastros.qyContas
      LookupField = 'con_descricao'
      Options = [loColLines, loRowLines, loTitles]
      ButtonEffects.Transparent = True
      ButtonEffects.Flat = True
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      ShowMatchText = True
    end
  end
  object edData: TwwDBDateTimePicker [6]
    Left = 8
    Top = 143
    Width = 97
    Height = 21
    CustomHint = BalloonHint1
    CalendarAttributes.Font.Charset = DEFAULT_CHARSET
    CalendarAttributes.Font.Color = clWindowText
    CalendarAttributes.Font.Height = -11
    CalendarAttributes.Font.Name = 'MS Sans Serif'
    CalendarAttributes.Font.Style = []
    DataField = 'cai_data'
    DataSource = dsCaixa
    Epoch = 1950
    ButtonEffects.Transparent = True
    ButtonEffects.Flat = True
    ShowButton = True
    TabOrder = 1
    DisplayFormat = 'dd/mm/yy'
  end
  object edValor: TEdit [7]
    Left = 112
    Top = 143
    Width = 81
    Height = 21
    Hint = 'Digite o valor da transfer'#234'ncia'
    CustomHint = BalloonHint1
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    Text = 'edValor'
    OnExit = edValorExit
    OnKeyPress = edValorKeyPress
  end
  object edDescricao: TEdit [8]
    Left = 198
    Top = 143
    Width = 195
    Height = 21
    Hint = 'Digite a descri'#231#227'o da transfer'#234'ncia'
    CustomHint = BalloonHint1
    TabStop = False
    Color = clBtnFace
    MaxLength = 15
    ParentShowHint = False
    ReadOnly = True
    ShowHint = True
    TabOrder = 3
    Text = 'edDescricao'
  end
  object btGravar: TBitBtn [9]
    Left = 178
    Top = 175
    Width = 105
    Height = 25
    Hint = 'Clique para confirmar a transfer'#234'ncia'
    CustomHint = BalloonHint1
    Caption = '&Gravar'
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
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
    OnClick = btGravarClick
  end
  inherited BalloonHint1: TBalloonHint
    Left = 112
    Top = 8
  end
  object dsCaixa: TDataSource
    DataSet = dmFinanceiro.qyCaixa
    Left = 48
    Top = 113
  end
end
