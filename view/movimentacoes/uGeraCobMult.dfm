inherited frmGeraCobMult: TfrmGeraCobMult
  Caption = 'Gera Cobran'#231'a (M'#250'ltipla)'
  ClientHeight = 509
  ClientWidth = 1030
  OnClose = FormClose
  ExplicitLeft = -24
  ExplicitWidth = 1036
  ExplicitHeight = 534
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 6
    Top = 8
    Width = 45
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Conv'#234'nio'
  end
  object Label2: TLabel [1]
    Left = 326
    Top = 8
    Width = 97
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Paciente (contenha)'
  end
  object Label3: TLabel [2]
    Left = 6
    Top = 48
    Width = 346
    Height = 20
    CustomHint = BalloonHint1
    Caption = '  Clique duplo ou enter para selecionar o exame.  '
    Color = clGreen
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = False
  end
  inherited btFechar: TBitBtn
    Left = 917
    Top = 476
    ExplicitLeft = 917
    ExplicitTop = 476
  end
  object cbConvenio: TwwDBLookupCombo [4]
    Left = 6
    Top = 24
    Width = 313
    Height = 21
    Hint = 'Conv'#234'nio do paciente'
    CustomHint = BalloonHint1
    DropDownAlignment = taLeftJustify
    LookupTable = dmLookups.lkProcConvenios
    LookupField = 'cov_descricao'
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
  object edNomePaciente: TEdit [5]
    Left = 325
    Top = 24
    Width = 289
    Height = 21
    Hint = 
      'Digite a parte inicial do nome do Paciente ou deixe em'#13#10'branco p' +
      'ara todos!'
    CustomHint = BalloonHint1
    CharCase = ecUpperCase
    ParentShowHint = False
    ShowHint = False
    TabOrder = 2
    Text = 'EDNOMEPACIENTE'
    OnKeyPress = edNomePacienteKeyPress
  end
  object btFiltrar: TBitBtn [6]
    Left = 620
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
    ShowHint = False
    TabOrder = 3
    OnClick = btFiltrarClick
  end
  object btLimpar: TBitBtn [7]
    Left = 731
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
    ShowHint = False
    TabOrder = 4
    OnClick = btLimparClick
  end
  object btProcedimentos: TBitBtn [8]
    Left = 917
    Top = 24
    Width = 105
    Height = 25
    Hint = 'Verifica procedimentos selecionados.'
    CustomHint = BalloonHint1
    Caption = '&Procedimentos'
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF93460F93460F
      93460F93460FFF00FFFF00FFFF00FFFF00FF93460F93460F93460F93460FFF00
      FFFF00FFFF00FFFF00FF93460FB2CFB1BEA46993460FFF00FF000000000000FF
      00FF93460FB2CFB1BEA46993460FFF00FF000000000000FF00FF93460F92C163
      EDB17293460FFF00FFFF00FFFF00FFFF00FF93460F92C163EDB17293460FFF00
      FFFF00FFFF00FFFF00FF93460F93460F93460F93460FFF00FFFF00FFFF00FFFF
      00FF93460F93460F93460F93460FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF93460F93460F
      93460F93460FFF00FFFF00FFFF00FFFF00FF93460F93460F93460F93460FFF00
      FFFF00FFFF00FFFF00FF93460FB2CFB1BEA46993460FFF00FF000000000000FF
      00FF93460FB2CFB1BEA46993460FFF00FF000000000000FF00FF93460F92C163
      EDB17293460FFF00FFFF00FFFF00FFFF00FF93460F92C163EDB17293460FFF00
      FFFF00FFFF00FFFF00FF93460F93460F93460F93460FFF00FFFF00FFFF00FFFF
      00FF93460F93460F93460F93460FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    ParentShowHint = False
    ShowHint = False
    TabOrder = 5
    OnClick = btProcedimentosClick
  end
  object DBGrid1: TwwDBGrid [9]
    Left = 4
    Top = 72
    Width = 690
    Height = 353
    Hint = 'Registros gravados'
    CustomHint = BalloonHint1
    Selected.Strings = (
      'exa_id'#9'12'#9'ID Exame'#9#9
      'exa_paciente'#9'43'#9'Paciente'#9'F'#9
      'exa_medico'#9'42'#9'M'#233'dico'#9'F'#9
      'eco_valor'#9'9'#9'Valor'#9'F'
      'exa_guia'#9'12'#9'Guia'#9#9
      'exa_convenio'#9'25'#9'Conv'#234'nio'#9'F'#9)
    IniAttributes.FileName = 'genesis'
    IniAttributes.SectionName = 'telasgrid'
    IniAttributes.Delimiter = '#'
    IniAttributes.CheckNewFields = True
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = dsConsulta
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    KeyOptions = []
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ParentFont = False
    ParentShowHint = False
    ReadOnly = True
    ShowHint = False
    TabOrder = 6
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = True
    OnDrawDataCell = DBGrid1DrawDataCell
    OnDblClick = DBGrid1DblClick
    OnKeyPress = DBGrid1KeyPress
  end
  object wwDBGrid1: TwwDBGrid [10]
    Left = 700
    Top = 72
    Width = 312
    Height = 353
    Hint = 'Exames selicionados'
    CustomHint = BalloonHint1
    TabStop = False
    Selected.Strings = (
      'exa_id'#9'10'#9'ID. Exame'#9'F'#9
      'exa_paciente'#9'26'#9'Paciente'#9'F'#9
      'exa_valor'#9'8'#9'Valor'#9'F')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = dsTemp
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    PopupMenu = popTemp
    ReadOnly = True
    ShowHint = False
    TabOrder = 7
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
  end
  object Panel1: TPanel [11]
    Left = 5
    Top = 432
    Width = 689
    Height = 69
    CustomHint = BalloonHint1
    BevelInner = bvLowered
    Color = clInfoBk
    ParentBackground = False
    TabOrder = 8
    object Label4: TLabel
      Left = 8
      Top = 2
      Width = 143
      Height = 13
      CustomHint = BalloonHint1
      Caption = 'Dados do exame selecionado:'
    end
    object DBText1: TDBText
      Left = 8
      Top = 23
      Width = 67
      Height = 17
      CustomHint = BalloonHint1
      DataField = 'exa_id'
      DataSource = dsConsulta
    end
    object DBText2: TDBText
      Left = 80
      Top = 23
      Width = 177
      Height = 17
      CustomHint = BalloonHint1
      DataField = 'exa_paciente'
      DataSource = dsConsulta
    end
    object DBText3: TDBText
      Left = 264
      Top = 23
      Width = 185
      Height = 17
      CustomHint = BalloonHint1
      DataField = 'exa_medico'
      DataSource = dsConsulta
    end
    object DBText4: TDBText
      Left = 456
      Top = 23
      Width = 65
      Height = 17
      CustomHint = BalloonHint1
      DataField = 'eco_valor'
      DataSource = dsConsulta
    end
    object DBText5: TDBText
      Left = 8
      Top = 43
      Width = 97
      Height = 17
      CustomHint = BalloonHint1
      DataField = 'exa_guia'
      DataSource = dsConsulta
    end
    object DBText6: TDBText
      Left = 115
      Top = 43
      Width = 150
      Height = 17
      CustomHint = BalloonHint1
      DataField = 'exa_convenio'
      DataSource = dsConsulta
    end
  end
  object btAlterar: TBitBtn [12]
    Left = 700
    Top = 476
    Width = 105
    Height = 25
    Hint = 'Altera os dados do Registro'#13#10'selecionado'
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
    ShowHint = False
    TabOrder = 9
    OnClick = btAlterarClick
  end
  object btTiss: TBitBtn [13]
    Left = 700
    Top = 431
    Width = 105
    Height = 25
    Hint = 'Informa'#231#245'es adicionais (TISS)'
    CustomHint = BalloonHint1
    Caption = '&Tiss'
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
      CC6701FF00FFFF00FFFF00FF9C3B0D9C3B0D9C3B0D9C3B0D9C3B0DFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFCC6701CC6701CC6701D06A009C3B0DFF
      CF92EBA45ADD882E9C3B0DFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      CC6701FF00FFFF00FFFF00FF9B390B9C3B0D9C3A0D9B3A0C9C3B0DFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFCC6701FF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      CC6701FF00FFFF00FFFF00FF9C3B0D9C3B0D9C3B0D9C3B0D9C3B0DFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFCC6701CC6701CC6701CC67019C3B0DFF
      CF92EBA45ADD882E9C3B0DFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      CC6701FF00FFFF00FFFF00FF9B390B9C3B0D9C3A0D9B3A0C9C3B0DFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFCC6701FF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      CC6701FF00FFFF00FFFF00FF9C3B0D9C3B0D9C3B0D9C3B0D9C3B0DFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFCC6701CC6701CC6701CC67019C3B0DFF
      CF92EBA45ADD882E9C3B0DFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      CC6701FF00FFFF00FFFF00FF9B390B9C3B0D9C3A0D9B3A0C9C3B0DFF00FFFF00
      FFFF00FFFF00FFFF00FF9C3B0D9C3B0D9C3B0D9C3B0D9C3B0DFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FF000000000000000000000000FF00FF9C3B0DFFCF92
      EBA45ADD882E9C3B0DFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000FF00
      FF033DFF000000FF00FF9B390B9C3B0D9C3A0D9B3A0C9C3B0DFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FF000000033DFFFF00FF033DFFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000000000
      00000000000000033DFFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF033DFF}
    TabOrder = 10
    OnClick = btTissClick
  end
  inherited BalloonHint1: TBalloonHint
    Left = 408
    Top = 128
  end
  object dsConsulta: TDataSource
    DataSet = dmConsultas.qyConsGeraCob
    Left = 40
    Top = 104
  end
  object dsHistRec: TDataSource
    DataSet = dmFinanceiro.qyHistRec
    Left = 80
    Top = 104
  end
  object dsReceber: TDataSource
    DataSet = dmFinanceiro.qyReceber
    Left = 120
    Top = 104
  end
  object dsRecTiss: TDataSource
    DataSet = dmFinanceiro.qyRecTiss
    Left = 160
    Top = 104
  end
  object dsTemp: TDataSource
    DataSet = dmConsultas.TempGeraCob
    Left = 216
    Top = 104
  end
  object popTemp: TPopupMenu
    Images = frmPrincipal.Imagens
    OwnerDraw = True
    Left = 856
    Top = 128
    object Excluir1: TMenuItem
      Caption = 'Excluir'
      Hint = 'Excluir cobran'#231'a selecionada'
      ImageIndex = 47
      OnClick = Excluir1Click
    end
  end
end
