inherited frmExpedicao: TfrmExpedicao
  Caption = 'Expedi'#231#227'o de exames'
  ClientHeight = 467
  ClientWidth = 987
  OnClose = FormClose
  ExplicitWidth = 993
  ExplicitHeight = 492
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 8
    Top = 8
    Width = 50
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Conv'#234'nios'
  end
  object Label2: TLabel [1]
    Left = 224
    Top = 8
    Width = 24
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Filtro'
  end
  object Label3: TLabel [2]
    Left = 328
    Top = 8
    Width = 51
    Height = 13
    CustomHint = BalloonHint1
    Caption = #192' partir de'
  end
  object Label9: TLabel [3]
    Left = 424
    Top = 8
    Width = 17
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'At'#233
  end
  object Label7: TLabel [4]
    Left = 519
    Top = 8
    Width = 55
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Tipo exame'
  end
  object Label6: TLabel [5]
    Left = 8
    Top = 416
    Width = 91
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Endere'#231'o de e-mail'
  end
  object Label8: TLabel [6]
    Left = 744
    Top = 416
    Width = 50
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Legenda'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel [7]
    Left = 800
    Top = 416
    Width = 65
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'N'#227'o Enviados'
  end
  object Label5: TLabel [8]
    Left = 800
    Top = 432
    Width = 44
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Enviados'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  inherited btFechar: TBitBtn
    Left = 873
    Top = 434
    TabOrder = 11
    ExplicitLeft = 873
    ExplicitTop = 434
  end
  object cbConvenio: TwwDBLookupCombo [10]
    Left = 8
    Top = 24
    Width = 209
    Height = 21
    Hint = 'Conv'#234'nio do paciente'
    CustomHint = BalloonHint1
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'cov_descricao'#9'20'#9'Conv'#234'nio'#9'F'
      'cov_codigo'#9'8'#9'C'#243'digo'#9'F')
    LookupTable = dmLookups.lkProcConvenios
    LookupField = 'cov_descricao'
    Options = [loColLines, loRowLines, loTitles]
    ButtonEffects.Transparent = True
    ButtonEffects.Flat = True
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    AutoDropDown = True
    ShowButton = True
    PreciseEditRegion = False
    AllowClearKey = False
    ShowMatchText = True
  end
  object cbFiltro: TwwDBComboBox [11]
    Left = 225
    Top = 24
    Width = 97
    Height = 21
    Hint = 'Selecione o tipo de filtro'
    CustomHint = BalloonHint1
    ShowButton = True
    Style = csDropDown
    MapList = True
    AllowClearKey = False
    ShowMatchText = True
    DropDownCount = 8
    ButtonEffects.Transparent = True
    ButtonEffects.Flat = True
    ItemHeight = 0
    Items.Strings = (
      'N'#227'o Enviados'#9'N'
      'Enviados'#9'E'
      'Todos'#9'T')
    ParentShowHint = False
    ShowHint = True
    Sorted = False
    TabOrder = 1
    UnboundDataType = wwDefault
  end
  object edInicio: TwwDBDateTimePicker [12]
    Left = 328
    Top = 24
    Width = 89
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
    TabOrder = 2
    DisplayFormat = 'dd/mm/yyyy'
  end
  object edFinal: TwwDBDateTimePicker [13]
    Left = 424
    Top = 24
    Width = 89
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
    TabOrder = 3
    DisplayFormat = 'dd/mm/yyyy'
  end
  object cbExamesTp: TwwDBLookupCombo [14]
    Left = 519
    Top = 24
    Width = 121
    Height = 21
    Hint = 'Selecione o tipo de exame'#13#10'(ou deixe em branco para todos)'
    CustomHint = BalloonHint1
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'etp_tipo'#9'20'#9'Exame'#9'F'
      'etp_id'#9'8'#9'C'#243'd. Exame'#9'F')
    LookupTable = dmLookups.lkProcExamesTp
    LookupField = 'etp_tipo'
    Options = [loColLines, loRowLines, loTitles]
    ButtonEffects.Transparent = True
    ButtonEffects.Flat = True
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
    AutoDropDown = True
    ShowButton = True
    PreciseEditRegion = False
    AllowClearKey = False
    ShowMatchText = True
  end
  object cbGerCob: TCheckBox [15]
    Left = 648
    Top = 24
    Width = 113
    Height = 17
    Hint = 'Selecione caso queira somente os exames '#13#10'j'#225' gerados cobran'#231'a!'
    CustomHint = BalloonHint1
    Caption = 'Gerado cobran'#231'a'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 5
  end
  object btFiltrar: TBitBtn [16]
    Left = 763
    Top = 24
    Width = 105
    Height = 25
    Hint = 'Clique para executar o filtro'
    CustomHint = BalloonHint1
    Caption = 'Fil&trar'
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000120B0000120B00000000000000000000FF00FFB78183
      B78183B78183B78183B78183B78183B78183B78183B78183B78183B78183B781
      83B78183FF00FFFF00FFFF00FFB78183FEEED4F7E3C5C7895DBB6221D9A878F3
      D3A2F1CF9AF0CF97F0CF98F0CF98F5D49AB78183FF00FFFF00FFFF00FFB78183
      FDEFD99FCBD03AA9CC677771BA5F1A7B70599DA795EECC99EECC97EECC97F3D1
      99B78183FF00FFFF00FFFF00FFB48176FEF3E337ADD393DCF572D1F066969FBC
      601AA67B52CC9062E3B887EECC97F3D199B78183FF00FFFF00FFFF00FFB48176
      FFF7EB37ADD3C1EFFE98DDF662CFF163A5B5BB6321D6B492C06A2BCD9365F3D1
      98B78183FF00FFFF00FFFF00FFBA8E85FFFCF437ADD3D8F8FFBCEBFD7CDDF863
      D5F54C95ABBF6A2BF6EDE4BE611CBD601AB78183FF00FFFF00FFFF00FFBA8E85
      FFFFFD37ADD3DDF9FFCDF4FF8FE8FE76E2FB37ADD3EAC8A6C27139EDD2BDEABF
      90BD601ABD601AFF00FFFF00FFCB9A82FFFFFF37ADD3DBF9FFCDF3FF94ECFE86
      EBFF3AA9CCE8C6A8C98252BD611CE4AF76DE9852BD601ABD601AFF00FFCB9A82
      FFFFFF37ADD3DCF9FFCFF4FF95EDFE8AEFFF3EA3C2BF6B32D59F77E1A261D789
      39BD601AFF00FFFF00FFFF00FFDCA887FFFFFF37ADD3E1FBFFD1F4FF95EDFF8C
      F0FF37ADD3E3BEA4C3733BBD601BDA8B39CA6504BD601AFF00FFFF00FFDCA887
      FFFFFF37ADD337ADD337ADD337ADD337ADD337ADD3FAEDDCFAEAD4CA9B81BD61
      1BBD601ABD601ABD601AFF00FFE3B18EFFFFFF37ADD398E1F494E4F982E2F871
      DBF337ADD3F1E1D5B8857AB8857AB8857AB78183FF00FFFF00FFFF00FFE3B18E
      FFFFFF99D7EB37ADD337ADD337ADD337ADD39BD7E8E3CFC9B8857AE8B270ECA5
      4AC58768FF00FFFF00FFFF00FFEDBD92FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFE4D4D2B8857AFAC577CD9377FF00FFFF00FFFF00FFFF00FFEDBD92
      FCF7F4FCF7F3FBF6F3FBF6F3FAF5F3F9F5F3F9F5F3E1D0CEB8857ACF9B86FF00
      FFFF00FFFF00FFFF00FFFF00FFEDBD92DCA887DCA887DCA887DCA887DCA887DC
      A887DCA887DCA887B8857AFF00FFFF00FFFF00FFFF00FFFF00FF}
    ParentShowHint = False
    ShowHint = True
    TabOrder = 6
    OnClick = btFiltrarClick
  end
  object btLimpar: TBitBtn [17]
    Left = 873
    Top = 24
    Width = 105
    Height = 25
    Hint = 'Clique para limpar o filtro'
    CustomHint = BalloonHint1
    Caption = '&Limpar'
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
      B78183B78183B78183B78183B78183B78183B78183B78183B78183B78183B781
      83B78183B78183FF00FFFF00FFFF00FFB78183FEEED4D3D8A9DFD9ABF5DBB4ED
      D6A7EED29FF1CF9AF0CF97F0CF98F0CF98F5D49AB78183FF00FFFF00FFFF00FF
      B78183FDEFD9AECE9046AD3889BE6936A72937A7287AB553D6C78AEECC97EECC
      97F3D199B78183FF00FFFF00FFFF00FFB48176FEF3E3CDD9AE20A31C029A0302
      9A03029A03029A0341A82EE6CA95EECC97F3D199B78183FF00FFFF00FFFF00FF
      B48176FFF7EBCCDCB324A51F029A032FA726BBCC8E8CBD680C9C0A90BB63EFCD
      99F3D198B78183FF00FFFF00FFFF00FFBA8E85FFFCF4CBDFBA17A116029A030C
      9D0C9AC57AF4DBBBB8C78887BF69F0D0A1F3D29BB78183FF00FFFF00FFFF00FF
      BA8E85FFFFFDE8EDDBB7D8A6AED399A9CF90AECE90F2DEC0F4DBBAB3D092F0D4
      A9F5D5A3B78183FF00FFFF00FFFF00FFCB9A82FFFFFFBAE2B7FBF3ECF7EEDFB1
      D39CAACF90ACCD8EB3CC8EEFDAB6F2D8B2F6D9ACB78183FF00FFFF00FFFF00FF
      CB9A82FFFFFF8DD28EC1E1BBFBF3EC9CCF8F0D9D0C029A0317A014F6DEC1F4DB
      B9F8DDB4B78183FF00FFFF00FFFF00FFDCA887FFFFFF99D69A0D9D0E93D18EC0
      DEB430AA2C029A0324A41FF6E2C8F7E1C2F0DAB7B78183FF00FFFF00FFFF00FF
      DCA887FFFFFFF6FBF645B546029A03029A03029A03029A0321A41EFCEFD9E6D9
      C4C6BCA9B78183FF00FFFF00FFFF00FFE3B18EFFFFFFFFFFFFE5F5E581CD813B
      B03B38AE378ECD8545AE3DAA8771B8857AB8857AB78183FF00FFFF00FFFF00FF
      E3B18EFFFFFFFFFFFFFFFFFFFFFFFFE8F6E8E7F5E5FFFEF9BEC6A8A2886CE8B2
      70ECA54AC58768FF00FFFF00FFFF00FFEDBD92FFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFE4D4D2B8857AFAC577CD9377FF00FFFF00FFFF00FFFF00FF
      EDBD92FCF7F4FCF7F3FBF6F3FBF6F3FAF5F3F9F5F3F9F5F3E1D0CEB8857ACF9B
      86FF00FFFF00FFFF00FFFF00FFFF00FFEDBD92DCA887DCA887DCA887DCA887DC
      A887DCA887DCA887DCA887B8857AFF00FFFF00FFFF00FFFF00FF}
    ParentShowHint = False
    ShowHint = True
    TabOrder = 7
    OnClick = btLimparClick
  end
  object cbEndereco: TwwDBLookupCombo [18]
    Left = 8
    Top = 434
    Width = 280
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
    ShowHint = True
    TabOrder = 9
    AutoDropDown = True
    ShowButton = True
    PreciseEditRegion = False
    AllowClearKey = False
    ShowMatchText = True
  end
  object btAlterar: TBitBtn [19]
    Left = 294
    Top = 434
    Width = 105
    Height = 25
    Hint = 'Gera expedi'#231#227'o de exames'
    CustomHint = BalloonHint1
    Caption = '&Gerar'
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF902B03B14301952E02FF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FF8A2703B64701B849008F2A02FF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FF8A2702AF4101B849008F2A02FF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF8A2702
      AB4103C45101912C02FF00FFFF00FF8E2903973002973002973002973002972F
      02972F029730028C2802FF00FF983305D7690E9F3703FF00FFFF00FFFF00FFA4
      3901C14F00BF4C00BF4D00BD4C00BD4C00BF4D00B646008C2802872301C76016
      CA6213872302FF00FFFF00FFFF00FF902B02993102983102962F029F3502C04E
      00C14F00B546008C28028F2A03ED8E2CAB470DFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FF882603B44401BA4900AB3E01B747008B2802932E05F09530
      A13E0BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF8A2703AF4101C25000962E
      02A03601BA49008B2802902C04F09630B75213801E00FF00FFFF00FFFF00FFFF
      00FF8A2702B14201C551009E3502842303A33801BA49008B2802862201D47320
      F2952F953005832001832001832001963004C05407C45301A03501FF00FFFF00
      FFA33801BA49008B2802FF00FF952F05EE912DF79C33BB5514B04B10CA671AEF
      8A23D06711953003FF00FFFF00FFFF00FFA43801BA49008B2802FF00FFFF00FF
      932E04C15F18ED8C2CF69631E98A2BB852128E2903FF00FFFF00FFFF00FFFF00
      FFA13701B848008B2802FF00FFFF00FFFF00FF882502922D049A3607912D0486
      2301FF00FFFF00FFFF00FFFF00FFFF00FF8F2A03952E028B2802FF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    ParentShowHint = False
    ShowHint = True
    TabOrder = 10
    OnClick = btAlterarClick
  end
  object DBGrid1: TwwDBGrid [20]
    Left = 5
    Top = 56
    Width = 972
    Height = 350
    Hint = 'Registros gravados'
    CustomHint = BalloonHint1
    ControlType.Strings = (
      'eco_status;CheckBox;Yes;No'
      'eco_gerarcob;CheckBox;true;false'
      'eem_enviado;CheckBox;true;false'
      'eem_enviar;CheckBox;true;false')
    Selected.Strings = (
      'eem_enviar'#9'5'#9'Enviar'#9'F'#9
      'exa_id'#9'11'#9'ID Exame'#9'T'#9
      'exa_data'#9'10'#9'Data'#9'T'#9
      'cov_descricao'#9'20'#9'Conv'#234'nio'#9'T'#9
      'med_nome'#9'50'#9'M'#233'dico'#9'T'#9
      'pac_nome'#9'80'#9'Paciente'#9'T'#9
      'eem_enviado'#9'5'#9'Enviado'#9'T'#9)
    IniAttributes.FileName = 'genesis'
    IniAttributes.SectionName = 'telasgrid'
    IniAttributes.Delimiter = '#'
    IniAttributes.CheckNewFields = True
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    BorderStyle = bsNone
    DataSource = dsExpedicao
    KeyOptions = []
    MultiSelectOptions = [msoAutoUnselect, msoShiftSelect]
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ParentShowHint = False
    PopupMenu = PopupMenu
    ShowHint = True
    TabOrder = 8
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = True
    OnCalcCellColors = DBGrid1CalcCellColors
    OnDrawDataCell = DBGrid1DrawDataCell
    OnExit = DBGrid1Exit
  end
  inherited BalloonHint1: TBalloonHint
    Left = 40
    Top = 344
  end
  object dsExpedicao: TDataSource
    DataSet = dmConsultas.qyConsEnvMail
    Left = 32
    Top = 80
  end
  object dsConvenios: TDataSource
    DataSet = dmLookups.lkProcConvenios
    Left = 112
    Top = 80
  end
  object dsEndereco: TDataSource
    DataSet = dmGestao.qyEmail
    Left = 208
    Top = 80
  end
  object PopupMenu: TPopupMenu
    OwnerDraw = True
    Left = 224
    Top = 160
    object Selecionartodos1: TMenuItem
      Caption = 'Selecionar todos'
      Hint = 'Marca todos os registros filtrados'
      ImageIndex = 13
      OnClick = Selecionartodos1Click
    end
    object Desmarcartodos1: TMenuItem
      Caption = 'Desmarcar todos'
      Hint = 'Desmarcar todos os registros filtrados'
      ImageIndex = 47
      OnClick = Desmarcartodos1Click
    end
  end
end
