inherited frmMovEntCaixa: TfrmMovEntCaixa
  Caption = 'Entradas Diversas no Caixa'
  ClientHeight = 131
  ClientWidth = 482
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  ExplicitWidth = 488
  ExplicitHeight = 163
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel [0]
    Left = 8
    Top = 7
    Width = 27
    Height = 16
    CustomHint = BalloonHint1
    Caption = 'Data'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel [1]
    Left = 112
    Top = 8
    Width = 34
    Height = 16
    CustomHint = BalloonHint1
    Caption = 'Conta'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel [2]
    Left = 289
    Top = 8
    Width = 78
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Plano de Contas'
  end
  object Label4: TLabel [3]
    Left = 8
    Top = 50
    Width = 58
    Height = 16
    CustomHint = BalloonHint1
    Caption = 'Descri'#231#227'o'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel [4]
    Left = 359
    Top = 50
    Width = 30
    Height = 16
    CustomHint = BalloonHint1
    Caption = 'Valor'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  inherited btFechar: TBitBtn
    Left = 369
    Top = 98
    Caption = '&Cancelar'
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
      FF00FFFF00FFFF00FF0955A10857A60557AA0655A70954A00954A0FF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0872DD0362C3006CDB0877E711
      7DEA0877E70069DD005DC70654A50654A5FF00FFFF00FFFF00FFFF00FFFF00FF
      0F6BC90872DD3E99F591C4F9D6E9FDEEF7FFE4F1FFB0D4FB59A5F50570E5035A
      B70B5095FF00FFFF00FFFF00FF1278E0127CE870B4F9F6FAFEFFFFFFEEF6FDD3
      E6FBE2EEFDFFFFFFFFFFFFAED2FA0E78ED025AB60653A2FF00FFFF00FF1278E0
      6DB2F9FEFEFFE9F3FD1E7FF00D73ED1474EB066BE90C6FE889B9F4E6F0FDB0D5
      FA0970E60653A2FF00FF0B70D53695F4E8F3FEFFFFFF89BAF48FC0F92A86F110
      75EE1275EC1E79EC84B5F489BAF4FFFFFF58A5F5005EC70858AB137AE371B5FB
      FFFFFFB2D7FC278CF992C4FBDAEAFD318BF3388DF2D7E8FC87B8F50D71EAE6F0
      FDB3D7FB016BDE0858AB1F85ECA2CFFDFFFFFF419EFD3495FB298DF992C5FBE6
      F1FEE5F1FD88BCF71075EE0B70EBB4D2F8E6F3FF0E7BE9065AB02F8FF1B7DAFD
      FFFFFF419FFF3196FE3094FC469EFCF1F8FEF1F8FE3892F5187DF11378EF9FC9
      F7F0F8FF1A82EC055CB53693F0B8DAFEFFFFFF59ACFF3499FF55A9FEE8F3FF85
      BFFD83BDFCE7F2FE4498F61A7FF2D3E6FCD9EBFE117DE9095CB22689EDAFD6FD
      FFFFFFC3E1FF4AA4FFEDF6FF81C0FF3296FE2E93FC7BBAFDEBF5FE59A5F8E9F3
      FE99C9FA0773E10958ABFF00FF3994F0F1F8FFFBFDFF78BBFF61AFFF3499FF34
      99FF3398FF3095FD68B0FCF4FAFFF5FAFE49A0F7076ACEFF00FFFF00FF3994F0
      CDE6FFF6FAFFFBFDFFC1DFFF58ABFF43A0FF49A3FF84C1FEFBFDFFFFFFFF78B9
      F9137BE6076ACEFF00FFFF00FFFF00FF64ACF6D4EAFFF9FCFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFE7F3FE77B8FA1D85ED0D6DD0FF00FFFF00FFFF00FFFF00FF
      FF00FF459AF0A7D2FCD8ECFFE2F1FFE4F1FED1E7FE9DCDFD4DA2F7177FE8177F
      E8FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF3B94F061ABF665
      ADF7489EF42286EC127AE4FF00FFFF00FFFF00FFFF00FFFF00FF}
    TabOrder = 6
    ExplicitLeft = 369
    ExplicitTop = 98
  end
  object edData: TwwDBDateTimePicker [6]
    Left = 9
    Top = 24
    Width = 98
    Height = 21
    Hint = 'Digite ou selecione a data'
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
    ParentShowHint = False
    ShowHint = True
    ShowButton = True
    TabOrder = 0
    DisplayFormat = 'dd/mm/yyyy'
  end
  object cbConta: TwwDBLookupCombo [7]
    Left = 113
    Top = 24
    Width = 169
    Height = 21
    Hint = 'Digite a conta movimentada'
    CustomHint = BalloonHint1
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'CON_DESCRICAO'#9'15'#9'Descri'#231#227'o'#9'F'
      'CON_CODIGO'#9'8'#9'C'#243'digo'#9'F')
    LookupTable = dmLookups.lkProcContas
    LookupField = 'con_descricao'
    Options = [loColLines, loRowLines, loTitles]
    ButtonEffects.Transparent = True
    ButtonEffects.Flat = True
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    AutoDropDown = True
    ShowButton = True
    PreciseEditRegion = False
    AllowClearKey = False
    ShowMatchText = True
  end
  object cbMovimento: TwwDBLookupCombo [8]
    Left = 289
    Top = 24
    Width = 185
    Height = 21
    Hint = 'Digite o plano de contas'
    CustomHint = BalloonHint1
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'MOV_DESCRICAO'#9'15'#9'Movimenta'#231#227'o'#9'F'
      'MOV_CODIGO'#9'10'#9'C'#243'digo'#9'F'
      'MOV_TIPO'#9'1'#9'Tipo'#9'F')
    LookupTable = dmLookups.lkProcMovimentos
    LookupField = 'mov_descricao'
    Options = [loColLines, loRowLines, loTitles]
    ButtonEffects.Transparent = True
    ButtonEffects.Flat = True
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    AutoDropDown = True
    ShowButton = True
    PreciseEditRegion = False
    AllowClearKey = False
    ShowMatchText = True
  end
  object btOk: TBitBtn [9]
    Left = 248
    Top = 98
    Width = 105
    Height = 25
    Hint = 'Confirma lan'#231'amento'
    CustomHint = BalloonHint1
    Caption = '&Ok'
    Enabled = False
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
    TabOrder = 5
    OnClick = btOkClick
  end
  object edDescricao: TEdit [10]
    Left = 8
    Top = 66
    Width = 345
    Height = 21
    CustomHint = BalloonHint1
    TabOrder = 3
    Text = 'edDescricao'
  end
  object edValor: TEdit [11]
    Left = 359
    Top = 66
    Width = 115
    Height = 21
    CustomHint = BalloonHint1
    TabOrder = 4
    Text = 'edValor'
    OnEnter = edValorEnter
    OnExit = edValorExit
    OnKeyPress = edValorKeyPress
  end
  object dsCaixa: TDataSource
    DataSet = dmFinanceiro.qyCaixa
    Left = 40
    Top = 96
  end
end
