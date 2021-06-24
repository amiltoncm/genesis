inherited frmTransfCito: TfrmTransfCito
  Caption = 'Transfere Citologia para Captura'
  ClientHeight = 225
  ClientWidth = 425
  ExplicitWidth = 431
  ExplicitHeight = 254
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 8
    Top = 8
    Width = 41
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Citologia'
  end
  object Label9: TLabel [1]
    Left = 8
    Top = 176
    Width = 112
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Transferir para a etapa'
  end
  inherited btFechar: TBitBtn
    Left = 312
    Top = 192
    ExplicitLeft = 312
    ExplicitTop = 192
  end
  object edCitologia: TMaskEdit [3]
    Left = 8
    Top = 24
    Width = 81
    Height = 21
    Hint = 'Digite o c'#243'digo da Histologia'
    CustomHint = BalloonHint1
    CharCase = ecUpperCase
    EditMask = '00C0000000;1'
    MaxLength = 10
    ParentShowHint = False
    ShowHint = False
    TabOrder = 1
    Text = '          '
    OnKeyPress = edCitologiaKeyPress
  end
  object btFiltrar: TBitBtn [4]
    Left = 95
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
  object Panel1: TPanel [5]
    Left = 8
    Top = 55
    Width = 409
    Height = 113
    CustomHint = BalloonHint1
    BevelInner = bvLowered
    TabOrder = 3
    object Label2: TLabel
      Left = 8
      Top = 8
      Width = 36
      Height = 13
      CustomHint = BalloonHint1
      Caption = 'Exame:'
    end
    object Label3: TLabel
      Left = 8
      Top = 40
      Width = 45
      Height = 13
      CustomHint = BalloonHint1
      Caption = 'Paciente:'
    end
    object Label4: TLabel
      Left = 8
      Top = 56
      Width = 37
      Height = 13
      CustomHint = BalloonHint1
      Caption = 'M'#233'dico:'
    end
    object Label5: TLabel
      Left = 8
      Top = 24
      Width = 27
      Height = 13
      CustomHint = BalloonHint1
      Caption = 'Data:'
    end
    object Label6: TLabel
      Left = 8
      Top = 72
      Width = 35
      Height = 13
      CustomHint = BalloonHint1
      Caption = 'Status:'
    end
    object Label7: TLabel
      Left = 8
      Top = 88
      Width = 65
      Height = 13
      CustomHint = BalloonHint1
      Caption = 'Respons'#225'vel:'
    end
    object DBText1: TDBText
      Left = 48
      Top = 8
      Width = 105
      Height = 17
      CustomHint = BalloonHint1
      DataField = 'exa_id'
      DataSource = dsExames
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText2: TDBText
      Left = 40
      Top = 24
      Width = 81
      Height = 17
      CustomHint = BalloonHint1
      DataField = 'exa_data'
      DataSource = dsExames
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText3: TDBText
      Left = 56
      Top = 40
      Width = 337
      Height = 17
      CustomHint = BalloonHint1
      DataField = 'pac_nome'
      DataSource = dsExames
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText4: TDBText
      Left = 56
      Top = 56
      Width = 337
      Height = 17
      CustomHint = BalloonHint1
      DataField = 'med_nome'
      DataSource = dsExames
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText6: TDBText
      Left = 80
      Top = 88
      Width = 313
      Height = 17
      CustomHint = BalloonHint1
      DataField = 'res_nome'
      DataSource = dsExames
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText5: TDBText
      Left = 48
      Top = 72
      Width = 25
      Height = 17
      CustomHint = BalloonHint1
      DataField = 'exa_etapa'
      DataSource = dsExames
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 72
      Top = 72
      Width = 5
      Height = 13
      CustomHint = BalloonHint1
      Caption = '-'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbEtapa: TLabel
      Left = 80
      Top = 72
      Width = 44
      Height = 13
      CustomHint = BalloonHint1
      Caption = 'lbEtapa'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object cbEtapa: TwwDBComboBox [6]
    Left = 8
    Top = 192
    Width = 129
    Height = 19
    Hint = 'Etapa a transferir'
    CustomHint = BalloonHint1
    ShowButton = True
    Style = csDropDown
    MapList = True
    AllowClearKey = False
    BorderStyle = bsNone
    DropDownCount = 8
    ButtonEffects.Transparent = True
    ButtonEffects.Flat = True
    ItemHeight = 0
    Items.Strings = (
      'Captura'#9'2'
      'Preenchimento do laudo'#9'4')
    ParentShowHint = False
    ShowHint = False
    Sorted = False
    TabOrder = 4
    UnboundDataType = wwDefault
  end
  object btAlterar: TBitBtn [7]
    Left = 194
    Top = 192
    Width = 105
    Height = 25
    Hint = 'Altera os dados do Registro'#13#10'selecionado'
    CustomHint = BalloonHint1
    Caption = '&Confirmar'
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
    TabOrder = 5
    OnClick = btAlterarClick
  end
  inherited BalloonHint1: TBalloonHint
    Left = 368
    Top = 16
  end
  object dsExames: TDataSource
    DataSet = dmExames.qyExames
    Left = 232
    Top = 16
  end
  object dsLog: TDataSource
    DataSet = dmExames.qyExamesLogs
    Left = 296
    Top = 16
  end
end
