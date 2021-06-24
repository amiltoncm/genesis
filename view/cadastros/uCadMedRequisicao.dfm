inherited frmCadMedRequisicao: TfrmCadMedRequisicao
  Caption = 'Cadastro de M'#233'dicos (resumido)'
  ClientHeight = 374
  ClientWidth = 661
  ExplicitWidth = 667
  ExplicitHeight = 399
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 8
    Top = 8
    Width = 33
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'C'#243'digo'
  end
  object Label2: TLabel [1]
    Left = 64
    Top = 8
    Width = 27
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Nome'
  end
  object Label6: TLabel [2]
    Left = 553
    Top = 8
    Width = 26
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'T'#237'tulo'
  end
  object Label4: TLabel [3]
    Left = 8
    Top = 48
    Width = 44
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Conselho'
  end
  object Label5: TLabel [4]
    Left = 64
    Top = 48
    Width = 59
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'N.'#186' Registro'
  end
  object Label18: TLabel [5]
    Left = 136
    Top = 48
    Width = 42
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Uf Cons.'
  end
  object Label3: TLabel [6]
    Left = 192
    Top = 48
    Width = 42
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Telefone'
  end
  object Label8: TLabel [7]
    Left = 288
    Top = 48
    Width = 107
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'CPF (Obrigat'#243'rio TISS)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel [8]
    Left = 8
    Top = 96
    Width = 106
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Resultados parecidos:'
  end
  object lbFormaBusca: TLabel [9]
    Left = 120
    Top = 96
    Width = 66
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'lbFormaBusca'
  end
  inherited btFechar: TBitBtn
    Left = 547
    Top = 64
    TabOrder = 9
    ExplicitLeft = 547
    ExplicitTop = 64
  end
  object dbCodigo: TDBEdit [11]
    Left = 8
    Top = 24
    Width = 49
    Height = 21
    Hint = 'C'#243'digo do m'#233'dioc'
    CustomHint = BalloonHint1
    TabStop = False
    Color = clBtnFace
    DataField = 'med_codigo'
    DataSource = dsMedicos
    ParentShowHint = False
    ReadOnly = True
    ShowHint = True
    TabOrder = 0
  end
  object dbDescricao: TDBEdit [12]
    Left = 64
    Top = 24
    Width = 483
    Height = 21
    Hint = 'Nome do m'#233'dico'
    CustomHint = BalloonHint1
    CharCase = ecUpperCase
    DataField = 'med_nome'
    DataSource = dsMedicos
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    OnExit = dbDescricaoExit
  end
  object cbTitulo: TwwDBComboBox [13]
    Left = 553
    Top = 27
    Width = 97
    Height = 21
    Hint = 'Selecione o t'#237'tulo'
    CustomHint = BalloonHint1
    ShowButton = True
    Style = csDropDown
    MapList = True
    AllowClearKey = False
    AutoDropDown = True
    ShowMatchText = True
    DataField = 'med_titulo'
    DataSource = dsMedicos
    DropDownCount = 8
    ButtonEffects.Transparent = True
    ButtonEffects.Flat = True
    ItemHeight = 0
    Items.Strings = (
      'Dr.'#9'Dr.'
      'Dra.'#9'Dra.'
      'Enf.'#9'Enf.')
    ItemIndex = 0
    ParentShowHint = False
    ShowHint = True
    Sorted = False
    TabOrder = 2
    UnboundDataType = wwDefault
  end
  object dbConselho: TDBEdit [14]
    Left = 8
    Top = 64
    Width = 49
    Height = 21
    Hint = 'Conselho a qual pertence'
    CustomHint = BalloonHint1
    TabStop = False
    Color = clBtnFace
    DataField = 'cos_tipo'
    DataSource = dsMedicos
    ParentShowHint = False
    ReadOnly = True
    ShowHint = True
    TabOrder = 3
  end
  object dbNumRegistro: TDBEdit [15]
    Left = 64
    Top = 64
    Width = 65
    Height = 21
    Hint = 'N.'#186' do registro no conselho'
    CustomHint = BalloonHint1
    DataField = 'med_numconselho'
    DataSource = dsMedicos
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
    OnExit = dbNumRegistroExit
  end
  object cbUfCons: TwwDBComboBox [16]
    Left = 136
    Top = 64
    Width = 49
    Height = 21
    Hint = 'Uf do conselho de registro'
    CustomHint = BalloonHint1
    ShowButton = True
    Style = csDropDown
    MapList = True
    AllowClearKey = False
    ShowMatchText = True
    DataField = 'cos_uf'
    DataSource = dsMedicos
    DropDownCount = 8
    ButtonEffects.Transparent = True
    ButtonEffects.Flat = True
    ItemHeight = 0
    Items.Strings = (
      'AC'#9'AC'
      'AL'#9'AL'
      'AM'#9'AM'
      'AP'#9'AP'
      'BA'#9'BA'
      'CE'#9'CE'
      'DF'#9'DF'
      'ES'#9'ES'
      'GO'#9'GO'
      'MA'#9'MA'
      'MG'#9'MG'
      'MS'#9'MS'
      'MT'#9'MT'
      'PA'#9'PA'
      'PB'#9'PB'
      'PE'#9'PE'
      'PI'#9'PI'
      'PR'#9'PR'
      'RJ'#9'RJ'
      'RN'#9'RN'
      'RO'#9'RO'
      'RR'#9'RR'
      'RS'#9'RS'
      'SC'#9'SC'
      'SE'#9'SE'
      'SP'#9'SP'
      'TO'#9'TO')
    ParentShowHint = False
    ShowHint = True
    Sorted = False
    TabOrder = 5
    UnboundDataType = wwDefault
  end
  object dbFone: TDBEdit [17]
    Left = 192
    Top = 64
    Width = 89
    Height = 21
    Hint = 'Telefone do Consult'#243'rio'
    CustomHint = BalloonHint1
    DataField = 'med_fone'
    DataSource = dsMedicos
    MaxLength = 14
    ParentShowHint = False
    ShowHint = True
    TabOrder = 6
  end
  object dbCpf: TDBEdit [18]
    Left = 288
    Top = 64
    Width = 137
    Height = 21
    Hint = 'CPF do m'#233'dico (Opcional)'
    CustomHint = BalloonHint1
    DataField = 'med_cpf'
    DataSource = dsMedicos
    ParentShowHint = False
    ShowHint = True
    TabOrder = 7
  end
  object btGravar: TBitBtn [19]
    Left = 434
    Top = 64
    Width = 105
    Height = 25
    CustomHint = BalloonHint1
    Caption = '&Gravar'
    Glyph.Data = {
      36060000424D3606000000000000360000002800000020000000100000000100
      18000000000000060000C40E0000C40E00000000000000000000FF00FFFF00FF
      FF00FFFF00FFFF00FF0955A10857A60557AA0655A70954A00954A0FF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFF6AA5EF7A859FA
      A855F9AA58F6AB5FF6AB5FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FF0872DD0362C3006CDB0877E7117DEA0877E70069DD005DC70654A50654
      A5FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFF78D22FC9D3CFF9324F78818EE
      8215F78818FF9622FFA238F9AB5AF9AB5AFF00FFFF00FFFF00FFFF00FFFF00FF
      0F6BC90872DD3E99F591C4F9D6E9FDEEF7FFE4F1FFB0D4FB59A5F50570E5035A
      B70B5095FF00FFFF00FFFF00FFFF00FFF09436F78D22C1660A6E3B0629160211
      08001B0E004F2B04A65A0AFA8F1AFCA548F4AF6AFF00FFFF00FFFF00FF1278E0
      127CE870B4F9F6FAFEFFFFFFEEF6FDD3E6FBE2EEFDFFFFFFFFFFFFAED2FA0E78
      ED025AB60653A2FF00FFFF00FFED871FED83178F4B060905010000001109022C
      19041D1102000000000000512D05F18712FDA549F9AC5DFF00FFFF00FF1278E0
      6DB2F9FEFEFFF4F9FE77B6F63391F0B5D5F91B7FEA4693EEC9E0FAFFFFFFB0D5
      FA0970E60653A2FF00FFFF00FFED871F924D060101000B0601884909CC6E0F4A
      2A06E48015B96C11361F050000004F2A05F68F19F9AC5DFF00FF0B70D53695F4
      E8F3FEFFFFFF4FA3F61F88F2D4E7FCFFFFFF489BEF0065E60E74E8C9E1FAFFFF
      FF58A5F5005EC70858ABF48F2AC96A0B170C01000000B05C09E0770D2B180300
      0000B76410FF9A19F18B17361E05000000A75A0AFFA138F7A754137AE371B5FB
      FFFFFFB2D7FC469FF7DEEEFDFDFEFEE0EEFDA1CCF80173E9006AE74294EDFFFF
      FFB3D7FB016BDE0858ABEC851C8E4A040000004D2803B960082111020201011F
      11025E3307FE8C16FF9518BD6B120000004C2804FE9421F7A7541F85ECA2CFFD
      FFFFFF71B7FDACD4FDFAFCFF66AFF83F9AF5E2EFFD2D8EF00075EB0575E9E2EE
      FCE6F3FF0E7BE9065AB0E07A135D30020000008E4802532B02050300995007C0
      650A1D1002D2710FFF8A14FA8A161D1103190C00F18416F9A54F2F8FF1B7DAFD
      FFFFFF6BB4FF3C9DFE4FA5FB1D8AF81484F5A0CDFB84BDF8067AEF0374EBD4E8
      FBF0F8FF1A82EC055CB5D0700E482502000000944B00C36201B05A04E27507EB
      7B0A5F32047B4207F98510FC8B142B17040F0700E57D13FAA34A3693F0B8DAFE
      FFFFFF8EC6FF2391FF2E95FE2B93FC218CF92D92F79ACAFB1D86F21D86F0F3F8
      FED9EBFE117DE9095CB2C96C0F472501000000713900DC6E00D16A01D46C03DE
      7306D26D08653504E2790DE2790F0C0701261401EE8216F6A34D2689EDAFD6FD
      FFFFFFE1F0FF3499FF2F96FF3399FF2E94FD218CF950A4F9419BF77DBBF8FFFF
      FF99C9FA0773E10958ABD976125029020000001E0F00CB6600D06900CC6600D1
      6B02DE7306AF5B06BE6408824407000000663605F88C1EF6A754FF00FF3994F0
      F1F8FFFFFFFFADD6FF3499FF2592FF2893FF238FFC1788FA6FB4FAF4FAFFF5FA
      FE49A0F7076ACEFF00FFFF00FFC66B0F0E0700000000522900CB6600DA6D00D7
      6C00DC7003E87705904B050B05000A0501B65F08F89531FF00FFFF00FF3994F0
      CDE6FFF6FAFFFFFFFFE0EFFF8DC6FF6EB6FE79BBFFB6DAFEFFFFFFFFFFFF78B9
      F9137BE6076ACEFF00FFFF00FFC66B0F3219000905000000001F100072390091
      4901864400492501000000000000874606EC8419F89531FF00FFFF00FFFF00FF
      64ACF6D4EAFFF9FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7F3FE77B8FA1D85
      ED0D6DD0FF00FFFF00FFFF00FFFF00FF9B53092B150006030000000000000000
      0000000000000000180C01884705E27A12F2922FFF00FFFF00FFFF00FFFF00FF
      FF00FF459AF0A7D2FCD8ECFFE2F1FFE4F1FED1E7FE9DCDFD4DA2F7177FE8177F
      E8FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFBA650F582D032713001D0E001B
      0E012E1801623202B25D08E88017E88017FF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FF3B94F061ABF665ADF7489EF42286EC127AE4FF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC46B0F9E54099A
      5208B7610BDD7913ED851BFF00FFFF00FFFF00FFFF00FFFF00FF}
    NumGlyphs = 2
    ParentShowHint = False
    ShowHint = True
    TabOrder = 8
    OnClick = btGravarClick
  end
  object GridRes: TDBGrid [20]
    Left = 8
    Top = 115
    Width = 642
    Height = 251
    CustomHint = BalloonHint1
    DataSource = dsProcMedicos
    TabOrder = 10
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDrawColumnCell = GridResDrawColumnCell
    Columns = <
      item
        Expanded = False
        FieldName = 'med_nome'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'med_codigo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'med_titulo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cos_id'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'med_numconselho'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'med_fone'
        Visible = True
      end>
  end
  inherited BalloonHint1: TBalloonHint
    Left = 8
    Top = 336
  end
  object dsMedicos: TDataSource
    DataSet = dmCadastros.qyMedicos
    Left = 248
    Top = 8
  end
  object dsProcMedicos: TDataSource
    DataSet = dmLookups.lkProcMedicos
    Left = 318
    Top = 4
  end
end
