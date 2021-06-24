inherited frmSelCIT: TfrmSelCIT
  Caption = 'Seleciona captura (Citologia)'
  ClientHeight = 529
  ClientWidth = 983
  OnClose = FormClose
  ExplicitWidth = 989
  ExplicitHeight = 561
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 8
    Top = 8
    Width = 32
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Exame'
  end
  object Label2: TLabel [1]
    Left = 860
    Top = 29
    Width = 98
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Imagens carregadas'
  end
  inherited btFechar: TBitBtn
    TabOrder = 7
  end
  object edCitologia: TMaskEdit [3]
    Left = 8
    Top = 24
    Width = 81
    Height = 21
    Hint = 'Digite o n'#250'mero da Citologia'#13#10'(Formato: 10C0000000)'
    CustomHint = BalloonHint1
    CharCase = ecUpperCase
    EditMask = '00C0000000;1;_'
    MaxLength = 10
    ParentShowHint = False
    ShowHint = False
    TabOrder = 0
    Text = '          '
    OnKeyDown = edCitologiaKeyDown
    OnKeyPress = edCitologiaKeyPress
  end
  object btFiltrar: TBitBtn [4]
    Left = 96
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
    TabOrder = 1
    OnClick = btFiltrarClick
  end
  object btLimpar: TBitBtn [5]
    Left = 207
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
    TabOrder = 2
    OnClick = btLimparClick
  end
  object DBGrid1: TwwDBGrid [6]
    Left = 8
    Top = 55
    Width = 848
    Height = 433
    Hint = 'Registros gravados'
    CustomHint = BalloonHint1
    TabStop = False
    Selected.Strings = (
      'exa_id'#9'11'#9'ID'#9#9
      'exa_data'#9'10'#9'Data'#9#9
      'pac_nome'#9'45'#9'Paciente'#9'F'#9
      'med_nome'#9'35'#9'M'#233'dico'#9'F'#9
      'cov_descricao'#9'25'#9'Conv'#234'nio'#9'F'#9
      'pac_idade'#9'8'#9'Idade'#9#9
      'pac_dtnasc'#9'10'#9'Dt. Nasc.'#9#9
      'pac_sexo'#9'1'#9'Sexo'#9'F'#9
      'exa_matricula'#9'20'#9'Matr'#237'cula'#9#9
      'exa_guia'#9'20'#9'Guia'#9#9
      'exl_descricao'#9'35'#9'Origem'#9'F'#9
      'exl_descricao_1'#9'35'#9'Destino'#9'F'#9
      'res_nome'#9'80'#9'Respons'#225'vel'#9'F'#9)
    IniAttributes.FileName = 'genesis'
    IniAttributes.SectionName = 'telasgrid'
    IniAttributes.Delimiter = '#'
    IniAttributes.CheckNewFields = True
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = dsConsulta
    KeyOptions = []
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ParentShowHint = False
    ReadOnly = True
    ShowHint = False
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
    OnTitleButtonClick = DBGrid1TitleButtonClick
    OnDrawDataCell = DBGrid1DrawDataCell
    OnDblClick = DBGrid1DblClick
    object DBGrid1IButton: TwwIButton
      Left = 0
      Top = 0
      Width = 13
      Height = 22
      CustomHint = BalloonHint1
      AllowAllUp = True
      Enabled = False
    end
  end
  object memLog: TMemo [7]
    Left = 860
    Top = 55
    Width = 115
    Height = 433
    Hint = 'Exames com imagens carregadas'
    CustomHint = BalloonHint1
    TabStop = False
    ParentShowHint = False
    ReadOnly = True
    ScrollBars = ssVertical
    ShowHint = False
    TabOrder = 9
  end
  object btUpload: TBitBtn [8]
    Left = 8
    Top = 496
    Width = 105
    Height = 25
    Hint = 'Selecione a pasta para a busca das imagens'
    CustomHint = BalloonHint1
    Caption = '&Upload'
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
      FF00FFFF00FFFF00FF313131313131313131313131FF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF31313172696BA09C9CB1
      B1B1848484313131313131313131FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FF313131726E72837B80545454898989CBCBCBF7F7F7E5E5E5A5A4A43131
      31313131313131FF00FFFF00FFFF00FF3131316F6C6F7470748C878B4D4D4D4D
      4D4D7272727878788989899D9E9EDDDDDD919191C2C2C26C666BFF00FF313131
      CCCACEC9C4C9999398807B80A3A0A38081804D4D4D4D4D4D4D4D4D4D4D4D7979
      79838284545454505250313131929193D7D5D9D7D4D7E6E6E95A5A5B5B5B5B7B
      797AA7A7A9B5B7B7ADADAD8F8F8F4D4D4D4D4D4D555455525252313131EFEEF2
      E5E5E7F4F6F7E6E5E9E5E2E6C2C1C4575657666466544E4F5E5E5E878787A5A5
      A5C1C1C18B8B8B333333313131FCFCFCFAFCFCF2F2F4F0EFF2B67E65984405AF
      755D7F7B7FB6B0B6938C93666265524F4F575656565656FF00FF313131FFFFFF
      FCFCFCFFFFFFFCFBFEC05103E1CC90811E00C9C5C9BDB7BDB2ABB1978F953131
      31302F2FFF00FFFF00FF414141414141414141E2E2E1D9D9DAC05103E1CC9081
      1E00D5D1D5B2ADB2747073313131FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FF4141411F1F1FC05103E1CC90811E008E8C8F313131FF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF004B82004B82004B8200
      4B82004B82FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF811E00811E00
      811E00811E00004B8266DDFF1ECAFF00BDFF004B82811E00811E00811E00811E
      00811E00811E00811E00E1CC90E1CC90E1CC90E1CC90004B82BDF2FF66DDFF1E
      CAFF004B82E1CC90E1CC90E1CC90E1CC90E1CC90E1CC90E1CC90C05103C05103
      C05103C05103004B82FFFFFFBCF2FF65DEFF004B82C05103C05103C05103C051
      03C05103C05103C05103FF00FFFF00FFFF00FFFF00FF004B82004B82004B8200
      4B82004B82FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    ParentShowHint = False
    ShowHint = False
    TabOrder = 3
    OnClick = btUploadClick
  end
  object btAlterar: TBitBtn [9]
    Left = 119
    Top = 496
    Width = 105
    Height = 25
    Hint = 'Altera os dados do Registro'#13#10'selecionado'
    CustomHint = BalloonHint1
    Caption = '&Capturar'
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
    TabOrder = 4
    OnClick = btAlterarClick
  end
  object btEtapa: TBitBtn [10]
    Left = 230
    Top = 496
    Width = 105
    Height = 25
    Hint = 
      'Ignora a captura, '#13#10'e pula direto para o '#13#10'preenchimento do exam' +
      'e!'
    CustomHint = BalloonHint1
    Caption = '&Ignorar'
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FF0104A20104A20104A20104A20104A20104A20104A20104A20104A20104
      A2FF00FFFF00FFFF00FFFF00FFFF00FF0104A25983FF0026FF0030FF0030FB00
      2FF2002FE9002EE10030D80031D00034CB0104A2FF00FFFF00FFFF00FFFF00FF
      0104A2ABC2FF6480FF6688FF6688FF6687FA6787F56787F05779E94D70E44D74
      E20104A2FF00FFFF00FFFF00FFFF00FFFF00FF0104A20104A20104A20104A201
      04A20104A20104A20104A20104A20104A2FF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    ParentShowHint = False
    ShowHint = False
    TabOrder = 5
    OnClick = btEtapaClick
  end
  object BitBtn1: TBitBtn [11]
    Left = 870
    Top = 496
    Width = 105
    Height = 25
    Hint = 'Fecha a janela'
    CustomHint = BalloonHint1
    Caption = '&Fechar'
    Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      2000000000000004000000000000000000000000000000000000FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF000000700000008F000000800000008000000080000000
      800000003F00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF0000008F0000008F0000008F00000090000000900000008F000000
      800000007F0000008000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF000000900000009000000090000000A0000000A0000000A00000009F000000
      900000008F000000800000008F00FF00FF00FF00FF00FF00FF00FF00FF000000
      9F000000A0002020AF00FFFFFF000000A0000000AF000000B0000000AF004F4F
      BF00FFFFFF0000008F0000008F0000008000FF00FF00FF00FF002F2FBF000000
      A0000000B000CFCFA000FFFFFF00FFFFFF000000AF000000B0004F4FBF00FFFF
      FF00FFFFFF008080AF0000009F000000900000000F00FF00FF000000A0000000
      B0000000C0000000BF00C0C0A000FFFFFF00FFFFFF005050DF00FFFFF000FFFF
      FF006F6F90000000BF000000AF0000009F0000006F00FF00FF000F0FB0000000
      C0000000CF000000CF000000BF00D0D0BF00FFFFFF00FFFFFF00FFFFFF008080
      AF000000C0000000C0000000BF000000A00000009F00FF00FF000F0FC0000F0F
      D0000F0FDF000000D0000000D000404FC000FFFFFF00FFFFFF00FFFFF0000000
      C0000000CF000000CF000000C0000000B0000000BF00FF00FF001010CF001010
      E0001010EF000000E0004040CF00FFFFF000FFFFFF00FFFFF000FFFFFF00FFFF
      FF000000CF000000D0000F0FCF000000BF000000B000FF00FF001F1FD0001F1F
      F0001F1FFF004F4FE000FFFFF000FFFFFF0070709F000000D000CFCFAF00FFFF
      FF00FFFFFF000000E0000F0FDF000F0FC00000009000FF00FF003030E0002F2F
      FF002F2FFF00D0D0BF00FFFFFF006F6F90000000EF000000E0000000D000BFBF
      9F00FFFFFF007070BF001010E0001010CF005F5F6F00FF00FF00FF00FF002F2F
      FF004F4FFF004F4FFF006F6F80001010FF000000FF000000F0000F0FFF001F1F
      F0004F4F90002020FF002020EF001010D000FF00FF00FF00FF00FF00FF00FF00
      FF004040FF006F6FFF008080FF007070FF005050FF004040FF004F4FFF005050
      FF004F4FFF003F3FFF002020F000FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF004F4FFF007F7FFF00A0A0FF00A0A0FF009F9FFF008080FF006F6F
      FF004F4FFF002020FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF003F3FFF006060FF008080FF007F7FFF006060FF003F3F
      FF006F6FF000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
    ParentShowHint = False
    ShowHint = False
    TabOrder = 6
    OnClick = btFecharClick
  end
  object dsConsulta: TDataSource
    DataSet = dmExames.qyExames
    Left = 24
    Top = 96
  end
  object dsLog: TDataSource
    DataSet = dmExames.qyExamesLogs
    Left = 104
    Top = 96
  end
  object SDScript1: TSDScript
    DatabaseName = 'exames'
    SessionName = 'SessaoExames'
    Transaction = True
    Left = 208
    Top = 96
  end
  object JvSelectDirectory1: TJvSelectDirectory
    Title = 'Carrega local de busca das imagens'
    Left = 128
    Top = 200
  end
end
