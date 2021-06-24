inherited frmConsReceber: TfrmConsReceber
  Caption = 'Consulta contas '#224' receber'
  ClientHeight = 622
  ClientWidth = 1014
  ExplicitLeft = -217
  ExplicitWidth = 1020
  ExplicitHeight = 647
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 8
    Top = 8
    Width = 176
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Cliente ou Conv'#234'nio (In'#237'cio do nome)'
  end
  object Label2: TLabel [1]
    Left = 312
    Top = 8
    Width = 31
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Status'
  end
  object Label8: TLabel [2]
    Left = 752
    Top = 56
    Width = 45
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Legenda:'
  end
  object Label9: TLabel [3]
    Left = 752
    Top = 72
    Width = 82
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'T'#237'tulo em aberto.'
  end
  object Label5: TLabel [4]
    Left = 752
    Top = 88
    Width = 118
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'T'#237'tulo baixado (recebido)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label10: TLabel [5]
    Left = 752
    Top = 104
    Width = 164
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'T'#237'tulo exclu'#237'do (exames exclu'#237'do).'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsStrikeOut]
    ParentFont = False
  end
  object Bevel1: TBevel [6]
    Left = 752
    Top = 278
    Width = 161
    Height = 76
    Hint = 'Busca por exame espec'#237'fico'
    CustomHint = BalloonHint1
  end
  object Label6: TLabel [7]
    Left = 760
    Top = 281
    Width = 146
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Pesquisa por exame espec'#237'fico'
  end
  object Label3: TLabel [8]
    Left = 8
    Top = 354
    Width = 100
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Exames relacionados'
  end
  object Label4: TLabel [9]
    Left = 603
    Top = 354
    Width = 125
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Observa'#231#245'es da cobran'#231'a'
  end
  object Label7: TLabel [10]
    Left = 603
    Top = 560
    Width = 96
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Nome do M'#233'dico -->'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGray
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsUnderline]
    ParentFont = False
    Transparent = True
  end
  object DBText1: TDBText [11]
    Left = 714
    Top = 560
    Width = 289
    Height = 17
    CustomHint = BalloonHint1
    DataField = 'his_medico'
    DataSource = dsExames
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGray
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsUnderline]
    ParentFont = False
    Transparent = True
  end
  inherited btFechar: TBitBtn
    Left = 901
    Top = 589
    TabOrder = 6
    ExplicitLeft = 901
    ExplicitTop = 589
  end
  object edDescricao: TEdit [13]
    Left = 8
    Top = 24
    Width = 297
    Height = 21
    Hint = 'Cliente selecionado'
    CustomHint = BalloonHint1
    CharCase = ecUpperCase
    ParentShowHint = False
    ShowHint = False
    TabOrder = 0
    Text = 'EDDESCRICAO'
  end
  object cbStatus: TwwDBComboBox [14]
    Left = 311
    Top = 24
    Width = 89
    Height = 21
    Hint = 'Status do t'#237'tulo'
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
      'Em aberto'#9'A'
      'Pagas'#9'P'
      'Todas'#9'T')
    ParentShowHint = False
    ShowHint = False
    Sorted = False
    TabOrder = 1
    UnboundDataType = wwDefault
  end
  object btFiltrar: TBitBtn [15]
    Left = 406
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
    TabOrder = 2
    OnClick = btFiltrarClick
  end
  object btLimpar: TBitBtn [16]
    Left = 517
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
    TabOrder = 3
    OnClick = btLimparClick
  end
  object btEditar: TBitBtn [17]
    Left = 628
    Top = 24
    Width = 105
    Height = 25
    Hint = 'Alterar valores da cobran'#231'a'
    CustomHint = BalloonHint1
    Caption = '&Alterar'
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
      FF00FFFF00FFFF00FF00007200007200006B000066000065000065FF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0001B70001B7050DAC393EB058
      5AB25657AB2E2F9000006F000069000069FF00FFFF00FFFF00FFFF00FFFF00FF
      0016CE0915C66C74D9CED1F2FFFFFFFFFFFFFFFFFFFFFFFFC1C2DF5A5A9F0101
      6900007DFF00FFFF00FFFF00FF0018DF0A1DD3A8B0EDFFFFFFFFFFFFBDBEE98C
      8CD18D8DD0CACAEAFFFFFFFFFFFF8C8CBD010169000072FF00FFFF00FF0018DF
      919DEFFFFFFFE6E8F95054CE0B0DAF242AC21C1EB20000975F5FBEF0F0FAFFFF
      FF6565A6000072FF00FF001EF12743E7FBFBFFF7F8FD3C4BD91617C43438C312
      14B0171BB1090B9F2323A15E5EBEFFFFFFD9D9E90B0B7F00007A001EF17287F6
      FFFFFF91A1F40A15D70E12B9191DB61114AE2C30BB1D20B210119A2323A3ADAD
      DDFFFFFF5353AF00007A0023F8A8B8FCFFFFFF4060F68794F2FDFDFEF3F4FBF2
      F2FAF2F3FAFFFFFFFFFFFF1214A76061C2FFFFFF8487D60000790E3EFEC5CFFE
      FFFFFF3259FE294AF8A7B0F7FFFFFFFFFFFFFFFFFFFFFFFF262DD51320CB8186
      D6FFFFFF9094D90000A23C63FFC4D0FFFFFFFF5979FF052EFF173DFDC3C9F8FF
      FFFFFFFFFF1D2DDC0B1ED9303CD68C92DEFEFEFF797DD50000A8103EFFB6C5FF
      FFFFFFC7D2FF032CFF0020FF2C48FEC4CBFA374AE71A2CDE1D29D9222ED1D3D6
      F4FDFDFE313CC80000A8FF00FF8DA4FFFFFFFFFFFFFF8AA0FF0027FF012CFF04
      24FF1C3EFB001DE9061CDF9EA9F1FFFFFFB4BAED0007BBFF00FFFF00FF718DFF
      DAE1FFFFFFFFFFFFFFB1C0FF3B5DFF1538FF1739FE4966F8C0CAFAFFFFFFEDEF
      FC3041D30007BBFF00FFFF00FFFF00FF88A0FFE6EBFFFFFFFFFFFFFFFDFDFFE2
      E9FFE4EBFFFFFFFFFFFFFFDBE0FA3D50E0000BCCFF00FFFF00FFFF00FFFF00FF
      FF00FF8AA1FFBAC7FEE8ECFFFFFFFFFFFFFFFFFFFFE4E9FE889BF61738E6000B
      CCFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF8AA0FF8AA3FF90
      A6FF7993FE4A6BF91A40EFFF00FFFF00FFFF00FFFF00FFFF00FF}
    ParentShowHint = False
    ShowHint = False
    TabOrder = 4
    OnClick = btEditarClick
  end
  object DBGrid1: TwwDBGrid [18]
    Left = 8
    Top = 56
    Width = 736
    Height = 297
    Hint = 'Cobran'#231'as filtradas'
    CustomHint = BalloonHint1
    TabStop = False
    ControlType.Strings = (
      'rec_status;CheckBox;P;A')
    Selected.Strings = (
      'rec_emissao'#9'10'#9'Emiss'#227'o'
      'rec_vencimento'#9'10'#9'Vencimento'
      'rec_nome'#9'30'#9'Cliente'
      'rec_codigo'#9'6'#9'ID'
      'his_id'#9'6'#9'Hist'#243'rico'
      'rec_valor'#9'8'#9'Valor'
      'rec_acrescimo'#9'8'#9'Acr'#233'scimo'
      'rec_desconto'#9'8'#9'Desconto'
      'rec_pago'#9'8'#9'Pago'
      'rec_saldo'#9'8'#9'Saldo'
      'rec_status'#9'1'#9'Status')
    IniAttributes.FileName = 'genesis'
    IniAttributes.SectionName = 'telasgrid'
    IniAttributes.Delimiter = '#'
    IniAttributes.CheckNewFields = True
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = dsConsulta
    KeyOptions = []
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ParentShowHint = False
    ReadOnly = True
    ShowHint = False
    TabOrder = 5
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = True
    OnCalcCellColors = DBGrid1CalcCellColors
  end
  object edCodigo: TEdit [19]
    Left = 792
    Top = 128
    Width = 49
    Height = 21
    Hint = 'Cliente selecionado'#13#10'(Tecle F4 para procurar)'
    CustomHint = BalloonHint1
    Color = clInfoBk
    ParentShowHint = False
    ReadOnly = True
    ShowHint = True
    TabOrder = 15
    Text = 'edCodigo'
    Visible = False
  end
  object btExportar: TBitBtn [20]
    Left = 752
    Top = 161
    Width = 105
    Height = 25
    Hint = 'Exportar dados da cobran'#231'a para excel'
    CustomHint = BalloonHint1
    Caption = 'Exportar'
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB98385B98385B98385B983
      85B98385B98385B98385FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFB98385F6DDB7F4D7ACF3D3A1F1CF98F0CA8FB98385FF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFBA8E85F8E5C98A94D91E47
      F6888ECDF2D19CB98385FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFCB9A82FAEDD91E49F90033FF1E48F6F4D8ABB98385FF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFDCA887FCF5E98D9DED1E49
      FA8B97E0F6E0BDB98385FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFE3B18EFEFBF6FCF7EDFBF2E4FAEDDAF8E8CEB98385FF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFEDBD92FFFFFFFEFCFAFDF9
      F2B98384B98384BE8675B78183B78183B78183B78183B78183B78183B78183B7
      8183FF00FFEDBD92FFFFFFFFFFFFFEFDFCB98384D39769FF00FFB78183EED1B1
      E1B894E1B68CDFB180DCAB75EFC686B78183FF00FFEDBD92DCA887DCA887428A
      3EB98384FF00FFFF00FFB78183CA8F6B952B009A3401993401993300E4B57CB7
      8183FF00FFFF00FFFF00FF03750F44D27330AB4AFF00FFFF00FFBA8E85F8EEE5
      A14213972E00942900BD7649FDE5B3B78183FF00FFFF00FF01780949CC725CE7
      8E38C658138E21FF00FFCB9A82FFFFFFD5A992922600A04112ECCCAEFFEFC5B7
      8183FF00FF45812C1097262EA8483ECA6026AF3D199F290A7D12DCA887FFFFFF
      FCF7F5AE5B33CD9574FBF1DEDECBB4B78183FF00FFFF00FFFF00FF03700827B8
      400D8A18FF00FFFF00FFE3B18EFFFFFFFFFFFFEDDBD1F9F2EAB78183B78183B7
      8475FF00FFFF00FFFF00FF097B1114AB25098611FF00FFFF00FFEDBD92FFFFFF
      FFFFFFFFFFFFFDFFFFB78183DC9D64FF00FFFF00FFFF00FF0A88120C91160EA3
      1B077B0DFF00FFFF00FFEDBD92DCA887DCA887DCA887DCA887B78183FF00FFFF
      00FF07800F07800F0490120D9C1907800FFF00FFFF00FFFF00FF}
    ParentShowHint = False
    ShowHint = False
    TabOrder = 7
    OnClick = btExportarClick
  end
  object btVoltar: TBitBtn [21]
    Left = 752
    Top = 209
    Width = 105
    Height = 25
    Hint = 'Volta a gera'#231#227'o da cobran'#231'a'#13#10'(Exclui cobran'#231'a e volta exames!)'
    CustomHint = BalloonHint1
    Caption = '&Voltar'
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FF0005B70005B7FF00FF0005B70005B7FF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FF0005B70005B7FF00FFFF00FF0005B7
      0005B70005B7FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0005
      B70005B7FF00FFFF00FFFF00FF0005B70005B60005B70005B7FF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FF0005B70005B7FF00FFFF00FFFF00FFFF00FFFF00FF
      0006D70005BA0005B70005B7FF00FFFF00FFFF00FFFF00FF0005B70005B7FF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0005B70005B70005B6FF
      00FF0005B60005B70005B7FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FF0005B60006C70006C70006CE0005B4FF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0006C100
      05C10006DAFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FF0005B60006D70006CE0006DA0006E9FF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0006E50006DA0006D3FF
      00FFFF00FF0006E50006EFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FF0006F80006DA0006EFFF00FFFF00FFFF00FFFF00FF0006F80006F6FF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FF0006F60006F60006F8FF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FF0006F60006F6FF00FFFF00FFFF00FFFF00FF0006F6
      0006F60006F6FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FF0006F6FF00FFFF00FF0006F60006F60006F6FF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0006F60006F6
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    ParentShowHint = False
    ShowHint = False
    TabOrder = 8
    OnClick = btVoltarClick
  end
  object edNumExame: TEdit [22]
    Left = 760
    Top = 297
    Width = 105
    Height = 21
    Hint = 'Digite o n'#250'mero do exame '#13#10'(Formato: 00X0000000)'
    CustomHint = BalloonHint1
    CharCase = ecUpperCase
    MaxLength = 10
    ParentShowHint = False
    ShowHint = False
    TabOrder = 9
    Text = 'EDNUMEXAME'
  end
  object btAlterar: TBitBtn [23]
    Left = 760
    Top = 324
    Width = 105
    Height = 25
    Hint = 'Localizar por exame'
    CustomHint = BalloonHint1
    Caption = '&Localizar'
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
    TabOrder = 10
    OnClick = btAlterarClick
  end
  object GridExames: TwwDBGrid [24]
    Left = 8
    Top = 370
    Width = 592
    Height = 244
    Hint = 'Exames relacionados'
    CustomHint = BalloonHint1
    TabStop = False
    ControlType.Strings = (
      'his_status;CheckBox;S;N')
    IniAttributes.FileName = 'genesis'
    IniAttributes.SectionName = 'telasgrid'
    IniAttributes.Delimiter = '#'
    IniAttributes.CheckNewFields = True
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Color = clInfoBk
    DataSource = dsExames
    KeyOptions = []
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ParentShowHint = False
    ReadOnly = True
    ShowHint = False
    TabOrder = 11
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = True
    OnCalcCellColors = GridExamesCalcCellColors
  end
  object wwDBGrid1: TwwDBGrid [25]
    Left = 603
    Top = 372
    Width = 403
    Height = 173
    Hint = 'Observa'#231#245'es inclu'#237'das'
    CustomHint = BalloonHint1
    TabStop = False
    Selected.Strings = (
      'rob_data'#9'10'#9'Data'#9#9
      'rob_obs'#9'50'#9'Obs'#9#9)
    IniAttributes.FileName = 'genesis'
    IniAttributes.SectionName = 'telasgrid'
    IniAttributes.Delimiter = '#'
    IniAttributes.CheckNewFields = True
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Color = clBtnFace
    DataSource = dsObs
    KeyOptions = []
    ParentShowHint = False
    ReadOnly = True
    ShowHint = False
    TabOrder = 12
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = True
  end
  object btExcluir: TBitBtn [26]
    Left = 603
    Top = 589
    Width = 105
    Height = 25
    Hint = 'Excluir exame da cobran'#231'a'
    CustomHint = BalloonHint1
    Caption = 'Excluir exame'
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FF0732DE0732DEFF00FF0732DE0732DEFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FF0732DE0732DEFF00FFFF00FF0732DE
      0732DE0732DEFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0732
      DE0732DEFF00FFFF00FFFF00FF0732DE0732DD0732DE0732DEFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FF0732DE0732DEFF00FFFF00FFFF00FFFF00FFFF00FF
      0534ED0732DF0732DE0732DEFF00FFFF00FFFF00FFFF00FF0732DE0732DEFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0732DE0732DE0732DDFF
      00FF0732DD0732DE0732DEFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FF0732DD0633E60633E60633E90732DCFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0633E307
      32E30534EFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FF0732DD0534ED0533E90434EF0434F5FF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0434F40534EF0533EBFF
      00FFFF00FF0434F40335F8FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FF0335FC0534EF0434F8FF00FFFF00FFFF00FFFF00FF0335FC0335FBFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FF0335FB0335FB0335FCFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FF0335FB0335FBFF00FFFF00FFFF00FFFF00FF0335FB
      0335FB0335FBFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FF0335FBFF00FFFF00FF0335FB0335FB0335FBFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0335FB0335FB
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    ParentShowHint = False
    ShowHint = False
    TabOrder = 13
    OnClick = btExcluirClick
  end
  object btMatGuia: TBitBtn [27]
    Left = 714
    Top = 589
    Width = 105
    Height = 25
    Hint = 'Alterar guia e matr'#237'cula do exame'
    CustomHint = BalloonHint1
    Caption = '&Editar exame'
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
      FF00FFFF00FFFF00FF00007200007200006B000066000065000065FF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0001B70001B7050DAC393EB058
      5AB25657AB2E2F9000006F000069000069FF00FFFF00FFFF00FFFF00FFFF00FF
      0016CE0915C66C74D9CED1F2FFFFFFFFFFFFFFFFFFFFFFFFC1C2DF5A5A9F0101
      6900007DFF00FFFF00FFFF00FF0018DF0A1DD3A8B0EDFFFFFFFFFFFFBDBEE98C
      8CD18D8DD0CACAEAFFFFFFFFFFFF8C8CBD010169000072FF00FFFF00FF0018DF
      919DEFFFFFFFE6E8F95054CE0B0DAF242AC21C1EB20000975F5FBEF0F0FAFFFF
      FF6565A6000072FF00FF001EF12743E7FBFBFFF7F8FD3C4BD91617C43438C312
      14B0171BB1090B9F2323A15E5EBEFFFFFFD9D9E90B0B7F00007A001EF17287F6
      FFFFFF91A1F40A15D70E12B9191DB61114AE2C30BB1D20B210119A2323A3ADAD
      DDFFFFFF5353AF00007A0023F8A8B8FCFFFFFF4060F68794F2FDFDFEF3F4FBF2
      F2FAF2F3FAFFFFFFFFFFFF1214A76061C2FFFFFF8487D60000790E3EFEC5CFFE
      FFFFFF3259FE294AF8A7B0F7FFFFFFFFFFFFFFFFFFFFFFFF262DD51320CB8186
      D6FFFFFF9094D90000A23C63FFC4D0FFFFFFFF5979FF052EFF173DFDC3C9F8FF
      FFFFFFFFFF1D2DDC0B1ED9303CD68C92DEFEFEFF797DD50000A8103EFFB6C5FF
      FFFFFFC7D2FF032CFF0020FF2C48FEC4CBFA374AE71A2CDE1D29D9222ED1D3D6
      F4FDFDFE313CC80000A8FF00FF8DA4FFFFFFFFFFFFFF8AA0FF0027FF012CFF04
      24FF1C3EFB001DE9061CDF9EA9F1FFFFFFB4BAED0007BBFF00FFFF00FF718DFF
      DAE1FFFFFFFFFFFFFFB1C0FF3B5DFF1538FF1739FE4966F8C0CAFAFFFFFFEDEF
      FC3041D30007BBFF00FFFF00FFFF00FF88A0FFE6EBFFFFFFFFFFFFFFFDFDFFE2
      E9FFE4EBFFFFFFFFFFFFFFDBE0FA3D50E0000BCCFF00FFFF00FFFF00FFFF00FF
      FF00FF8AA1FFBAC7FEE8ECFFFFFFFFFFFFFFFFFFFFE4E9FE889BF61738E6000B
      CCFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF8AA0FF8AA3FF90
      A6FF7993FE4A6BF91A40EFFF00FFFF00FFFF00FFFF00FFFF00FF}
    ParentShowHint = False
    ShowHint = False
    TabOrder = 14
    OnClick = btMatGuiaClick
  end
  inherited BalloonHint1: TBalloonHint
    Left = 232
    Top = 88
  end
  object dsConsulta: TDataSource
    DataSet = dmConsultas.qyConsReceber
    OnDataChange = dsConsultaDataChange
    Left = 72
    Top = 88
  end
  object dsExames: TDataSource
    DataSet = dmConsultas.qyConsRecExames
    Left = 128
    Top = 88
  end
  object dsObs: TDataSource
    DataSet = dmConsultas.qyConsRecObs
    Left = 176
    Top = 88
  end
end
