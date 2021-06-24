inherited frmLancPagar: TfrmLancPagar
  Caption = 'Lan'#231'amento de Duplicatas (PAGAR)'
  ClientHeight = 132
  ClientWidth = 503
  OnCloseQuery = FormCloseQuery
  ExplicitWidth = 509
  ExplicitHeight = 164
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 8
    Top = 8
    Width = 55
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Vencimento'
  end
  object Label5: TLabel [1]
    Left = 95
    Top = 8
    Width = 38
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Emiss'#227'o'
  end
  object Label2: TLabel [2]
    Left = 182
    Top = 8
    Width = 55
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Fornecedor'
  end
  object Label3: TLabel [3]
    Left = 8
    Top = 56
    Width = 32
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'N.'#186' NF'
  end
  object Label6: TLabel [4]
    Left = 120
    Top = 56
    Width = 35
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Parcela'
  end
  object Label8: TLabel [5]
    Left = 180
    Top = 56
    Width = 24
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Valor'
  end
  inherited btFechar: TBitBtn
    Left = 390
    Top = 99
    TabOrder = 7
    ExplicitLeft = 390
    ExplicitTop = 99
  end
  object dbVencimento: TwwDBDateTimePicker [7]
    Left = 8
    Top = 24
    Width = 81
    Height = 21
    Hint = 'Vencimento da duplicata'
    CustomHint = BalloonHint1
    CalendarAttributes.Font.Charset = DEFAULT_CHARSET
    CalendarAttributes.Font.Color = clWindowText
    CalendarAttributes.Font.Height = -11
    CalendarAttributes.Font.Name = 'MS Sans Serif'
    CalendarAttributes.Font.Style = []
    DataField = 'pag_vencimento'
    DateFormat = dfLong
    DataSource = dsPagar
    Epoch = 1950
    ButtonEffects.Transparent = True
    ButtonEffects.Flat = True
    ParentShowHint = False
    ShowHint = False
    ShowButton = True
    TabOrder = 0
    UnboundDataType = wwDTEdtDate
    DisplayFormat = 'dd/mm/yyyy'
  end
  object dbDtEmissao: TwwDBDateTimePicker [8]
    Left = 95
    Top = 24
    Width = 81
    Height = 21
    Hint = 'Emiss'#227'o da duplicata'
    CustomHint = BalloonHint1
    CalendarAttributes.Font.Charset = DEFAULT_CHARSET
    CalendarAttributes.Font.Color = clWindowText
    CalendarAttributes.Font.Height = -11
    CalendarAttributes.Font.Name = 'MS Sans Serif'
    CalendarAttributes.Font.Style = []
    DataField = 'pag_emissao'
    DateFormat = dfLong
    DataSource = dsPagar
    Epoch = 1950
    ButtonEffects.Transparent = True
    ButtonEffects.Flat = True
    ParentShowHint = False
    ShowHint = False
    ShowButton = True
    TabOrder = 1
    UnboundDataType = wwDTEdtDate
    DisplayFormat = 'dd/mm/yyyy'
  end
  object cbProcFornecedor: TwwDBLookupCombo [9]
    Left = 182
    Top = 24
    Width = 313
    Height = 21
    Hint = 'Fornecedor selecionado'
    CustomHint = BalloonHint1
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'for_razao'#9'60'#9'Raz'#227'o Social'#9'F'
      'for_fantasia'#9'50'#9'Nome Fantasia'#9'F'
      'for_codigo'#9'8'#9'C'#243'digo'#9'F')
    LookupTable = dmLookups.lkProcFornecedores
    LookupField = 'for_razao'
    Options = [loColLines, loRowLines, loTitles]
    ButtonEffects.Transparent = True
    ButtonEffects.Flat = True
    ParentShowHint = False
    ShowHint = False
    TabOrder = 2
    AutoDropDown = True
    ShowButton = True
    PreciseEditRegion = False
    AllowClearKey = False
    ShowMatchText = True
    OnExit = cbProcFornecedorExit
  end
  object dbNF: TDBEdit [10]
    Left = 8
    Top = 72
    Width = 105
    Height = 21
    Hint = 'Digite o n.'#186' da Nota Fiscal'
    CustomHint = BalloonHint1
    DataField = 'pag_nf'
    DataSource = dsPagar
    ParentShowHint = False
    ShowHint = False
    TabOrder = 3
  end
  object dbParcela: TwwDBComboBox [11]
    Left = 119
    Top = 72
    Width = 57
    Height = 21
    Hint = 'Selecione a parcela'
    CustomHint = BalloonHint1
    ShowButton = True
    Style = csDropDown
    MapList = True
    AllowClearKey = False
    ShowMatchText = True
    DataField = 'pag_parcela'
    DataSource = dsPagar
    DropDownCount = 8
    ButtonEffects.Transparent = True
    ButtonEffects.Flat = True
    ItemHeight = 0
    Items.Strings = (
      '01'#9'1'
      '02'#9'2'
      '03'#9'3'
      '04'#9'4'
      '05'#9'5'
      '06'#9'6'
      '07'#9'7'
      '08'#9'8'
      '09'#9'9'
      '10'#9'10'
      '11'#9'11'
      '12'#9'12'
      '13'#9'13'
      '14'#9'14'
      '15'#9'15')
    ItemIndex = 0
    ParentShowHint = False
    ShowHint = False
    Sorted = False
    TabOrder = 4
    UnboundDataType = wwDefault
  end
  object dbValor: TDBEdit [12]
    Left = 182
    Top = 72
    Width = 91
    Height = 21
    Hint = 'Digite o valor da Parcela'
    CustomHint = BalloonHint1
    BiDiMode = bdRightToLeft
    DataField = 'pag_valor'
    DataSource = dsPagar
    ParentBiDiMode = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 5
  end
  object btGravar: TBitBtn [13]
    Left = 279
    Top = 99
    Width = 105
    Height = 25
    Hint = 'Grava lan'#231'amento da duplicata'
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
    ShowHint = False
    TabOrder = 6
    OnClick = btGravarClick
  end
  inherited BalloonHint1: TBalloonHint
    Left = 368
    Top = 48
  end
  object dsPagar: TDataSource
    DataSet = dmFinanceiro.qyPagar
    Left = 304
    Top = 48
  end
end
