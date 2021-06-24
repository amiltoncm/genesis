inherited frmConsPagar: TfrmConsPagar
  Caption = 'Consulta contas '#224' pagar / pagas'
  ClientHeight = 441
  ClientWidth = 856
  ExplicitTop = -8
  ExplicitWidth = 862
  ExplicitHeight = 473
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 8
    Top = 8
    Width = 55
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Fornecedor'
  end
  object Label2: TLabel [1]
    Left = 320
    Top = 8
    Width = 31
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Status'
  end
  inherited btFechar: TBitBtn
    Left = 743
    Top = 408
    TabOrder = 4
  end
  object cbFornecedor: TwwDBLookupCombo [3]
    Left = 8
    Top = 22
    Width = 305
    Height = 19
    Hint = 'Conv'#234'nio do paciente'
    CustomHint = BalloonHint1
    BorderStyle = bsNone
    DropDownAlignment = taLeftJustify
    LookupTable = dmLookups.lkProcFornecedores
    LookupField = 'for_razao'
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
  object cbStatus: TwwDBComboBox [4]
    Left = 320
    Top = 22
    Width = 89
    Height = 19
    Hint = 'Status do t'#237'tulo'
    CustomHint = BalloonHint1
    ShowButton = True
    Style = csDropDown
    MapList = True
    AllowClearKey = False
    ShowMatchText = True
    BorderStyle = bsNone
    DropDownCount = 8
    ButtonEffects.Transparent = True
    ButtonEffects.Flat = True
    ItemHeight = 0
    Items.Strings = (
      'Em aberto'#9'A'
      'Pagas'#9'P'
      'Todas'#9'T')
    ParentShowHint = False
    ShowHint = True
    Sorted = False
    TabOrder = 1
    UnboundDataType = wwDefault
  end
  object btFiltrar: TBitBtn [5]
    Left = 415
    Top = 22
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
    TabOrder = 2
    OnClick = btFiltrarClick
  end
  object btLimpar: TBitBtn [6]
    Left = 526
    Top = 22
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
    TabOrder = 3
    OnClick = btLimparClick
  end
  object DBGrid1: TDBGrid [7]
    Left = 8
    Top = 53
    Width = 840
    Height = 349
    CustomHint = BalloonHint1
    TabStop = False
    DataSource = dsConsulta
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDrawColumnCell = DBGrid1DrawColumnCell
    Columns = <
      item
        Expanded = False
        FieldName = 'pag_vencimento'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'pag_nf'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'pag_parcela'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'pag_fornecedor'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'pag_valor'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'pag_acrescimo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'pag_desconto'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'pag_pago'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'pag_saldo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'pag_emissao'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'pag_status'
        Visible = True
      end>
  end
  object dsConsulta: TDataSource
    DataSet = dmConsultas.qyConsPagar
    Left = 24
    Top = 96
  end
end
