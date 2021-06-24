inherited frmCadUsuarios: TfrmCadUsuarios
  Caption = 'Cadastro de usu'#225'rios'
  ClientWidth = 493
  ExplicitWidth = 499
  ExplicitHeight = 383
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 8
    Top = 58
    Width = 33
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'C'#243'digo'
    FocusControl = dbCodigo
  end
  object Label2: TLabel [1]
    Left = 71
    Top = 58
    Width = 36
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Usu'#225'rio'
    FocusControl = dbUsuario
  end
  object Label3: TLabel [2]
    Left = 8
    Top = 148
    Width = 30
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Senha'
    FocusControl = dbSenha
  end
  object Label5: TLabel [3]
    Left = 7
    Top = 193
    Width = 25
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Ativo'
  end
  object Label9: TLabel [4]
    Left = 135
    Top = 193
    Width = 67
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Exporta laudo'
  end
  object Label4: TLabel [5]
    Left = 158
    Top = 148
    Width = 81
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Grupo de Acesso'
  end
  object Label6: TLabel [6]
    Left = 8
    Top = 103
    Width = 73
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Nome completo'
  end
  object Label7: TLabel [7]
    Left = 262
    Top = 193
    Width = 59
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Altera datas'
  end
  inherited btFechar: TBitBtn
    Left = 374
    ExplicitLeft = 374
  end
  inherited btNovo: TBitBtn
    Left = 374
    TabOrder = 9
    ExplicitLeft = 374
  end
  inherited btAlterar: TBitBtn
    Left = 374
    TabOrder = 10
    ExplicitLeft = 374
  end
  inherited btExcluir: TBitBtn
    Left = 374
    TabOrder = 11
    ExplicitLeft = 374
  end
  inherited btGravar: TBitBtn
    Left = 374
    TabOrder = 12
    ExplicitLeft = 374
  end
  inherited btCancelar: TBitBtn
    Left = 374
    TabOrder = 13
    ExplicitLeft = 374
  end
  inherited btAtualizar: TBitBtn
    Left = 374
    TabOrder = 14
    ExplicitLeft = 374
  end
  inherited btLimpar: TBitBtn
    Left = 374
    TabOrder = 15
    ExplicitLeft = 374
  end
  inherited btProcurar: TBitBtn
    Left = 374
    TabOrder = 16
    ExplicitLeft = 374
  end
  inherited ToolBar1: TToolBar
    Width = 493
    TabOrder = 17
    ExplicitWidth = 493
  end
  inherited panCaption: TPanel
    Width = 493
    TabOrder = 18
    ExplicitWidth = 493
  end
  inherited sbPrincipal: TStatusBar
    Width = 493
    ExplicitWidth = 493
  end
  object dbCodigo: TDBEdit [20]
    Left = 8
    Top = 76
    Width = 57
    Height = 21
    Hint = 'C'#243'digo do usu'#225'rio'
    CustomHint = BalloonHint1
    TabStop = False
    Color = clBtnFace
    DataField = 'usu_codigo'
    DataSource = dsCadastro
    ReadOnly = True
    TabOrder = 0
  end
  object dbUsuario: TDBEdit [21]
    Left = 71
    Top = 76
    Width = 288
    Height = 21
    Hint = 'Nome do usu'#225'rio'
    CustomHint = BalloonHint1
    CharCase = ecUpperCase
    DataField = 'usu_nome'
    DataSource = dsCadastro
    TabOrder = 1
    OnExit = dbUsuarioExit
  end
  object dbSenha: TDBEdit [22]
    Left = 8
    Top = 164
    Width = 146
    Height = 21
    Hint = 'Senha de acesso'
    CustomHint = BalloonHint1
    DataField = 'usu_senha'
    DataSource = dsCadastro
    PasswordChar = '*'
    TabOrder = 3
  end
  object cbAcesso: TwwDBLookupCombo [23]
    Left = 160
    Top = 164
    Width = 199
    Height = 21
    Hint = 'Tipo de acesso'
    CustomHint = BalloonHint1
    DropDownAlignment = taLeftJustify
    LookupTable = dmLookups.lkProcAcesso
    LookupField = 'ace_descricao'
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
    OnExit = cbAcessoExit
  end
  object cbAtivo: TwwDBComboBox [24]
    Left = 8
    Top = 211
    Width = 121
    Height = 21
    Hint = 'Status do usu'#225'rio!'
    CustomHint = BalloonHint1
    ShowButton = True
    Style = csDropDown
    MapList = True
    AllowClearKey = False
    DataField = 'usu_ativo'
    DataSource = dsCadastro
    DropDownCount = 8
    ButtonEffects.Transparent = True
    ButtonEffects.Flat = True
    ItemHeight = 0
    Items.Strings = (
      'Ativo'#9'S'
      'Inativo'#9'N')
    ParentShowHint = False
    ShowHint = True
    Sorted = False
    TabOrder = 5
    UnboundDataType = wwDefault
  end
  object cbExpPdf: TwwDBComboBox [25]
    Left = 135
    Top = 211
    Width = 121
    Height = 21
    Hint = 'Usu'#225'rio pode exportar laudo?'
    CustomHint = BalloonHint1
    ShowButton = True
    Style = csDropDown
    MapList = True
    AllowClearKey = False
    DataField = 'usu_exppdf'
    DataSource = dsCadastro
    DropDownCount = 8
    ButtonEffects.Transparent = True
    ButtonEffects.Flat = True
    ItemHeight = 0
    Items.Strings = (
      'Sim'#9'S'
      'N'#227'o'#9'N')
    ParentShowHint = False
    ShowHint = True
    Sorted = False
    TabOrder = 6
    UnboundDataType = wwDefault
  end
  object dbGrpAcesso: TDBEdit [26]
    Left = 262
    Top = 238
    Width = 81
    Height = 21
    CustomHint = BalloonHint1
    TabStop = False
    DataField = 'ace_descricao'
    DataSource = dsCadastro
    ReadOnly = True
    TabOrder = 20
    Visible = False
    OnChange = dbGrpAcessoChange
  end
  object dbNomeComp: TDBEdit [27]
    Left = 8
    Top = 121
    Width = 351
    Height = 21
    Hint = 'Nome do usu'#225'rio completo'
    CustomHint = BalloonHint1
    CharCase = ecUpperCase
    DataField = 'usu_nomecomp'
    DataSource = dsCadastro
    TabOrder = 2
  end
  object btEmails: TBitBtn [28]
    Left = 8
    Top = 308
    Width = 105
    Height = 25
    Hint = 'Cadastra e configura e-mail do usu'#225'rio'
    CustomHint = BalloonHint1
    Caption = 'e-&mail'
    Glyph.Data = {
      D6030000424DD603000000000000D60200002800000010000000100000000100
      08000000000000010000120B0000120B0000A8000000A8000000FF00FF00DFBF
      BF00E1C3C300E4C9C900E6CECE00E9D2D200ECD7D700EEDDDD00F0E1E100F3E7
      E700F5EBEB00F8F0F000F7F0F000FBF5F500FAF4F400FDF9F900FCF8F800FDFB
      FB00EEC4AA00964E1D00AE570F00A8541200C0600600B75C0A00FCDFC500CC66
      0000C8640200D06E0C00D3751700D9802600DE8A3500E1914100E69B5100ECA5
      5F00F0AE6C00F3B57700EBB17900F9BF8600EFB98500FECA9500F3C29100FFCC
      9900F6C89900FBD0A500FFDDBB00FFDEBD00FFDFBF00DAA26600FFDCB700CFB4
      9400BFA99000FFF4E700FFF9F200FFF0DD00FFF9F100FFFCF800CFB99900BFB8
      9F00A7FFFF008DFBFF0085F9FF0084EEF5008AFAFF0078F4FF007AF5FF007BF5
      FF007DF4FF0068EFFF0072F2FF00709A9F005CEBFF0062EDFF005DDCEF00ADF1
      FB003FE1FF004DDFF90050E7FF0054E8FF005BE4F90024D8FF0028D9FF002BDB
      FF0034DDFF0043D1ED0047C4DF006DD0E40086ECFF00ADE7F30000C9FC000FD1
      FF001AD5FF0024BDE4002DC8EC0000C7FA0000C4F70000C2F50000BFF20000BD
      F00000B7EA0000B0E30007C0F10007B1E1000AB4E3000CB6E5002BBCE1002BAE
      D30036A9CA008AD3E60000A9DC000099CC0003ACDE0005AEE00010A6D400109C
      C90012A7D40091D3E8000097CA000094C7000090C300008DC000008ABD000A8A
      BA00128EBA001189B500159BC9001795C0001B91BB001B8CB4001E92B90030A5
      CE0060BADA000086B9000085B8000083B6000082B500007FB200007EB100007A
      AD001B86B000707F85000078AB000072A400006DA0000379AB00307A9A000067
      9A000065980013709C00005F9200005B8E0000598C0000558800005487000C5C
      8B00115B8800004F8200004C7F0000487B0000467900004275000B457100305C
      7C0000417400003D7000003B6E00FFFFFF00FFFFFF0000000000007476788488
      8C8D8E919295979C9F0089636D73564C4646464D4A50709685A387614E728249
      42403F474B7D8F646CA2866044436881573A3E487B715A596E9E835F41444353
      7C6B55795B514F5A6F9C785E3C41445493807F9A6952514F659B775D3B3C6A90
      38292931A18A5251669876583D7E4529292D2C29298B995C679675627A39292E
      34A53733302932A0839474762F1834A5A5A5A53736351213A49D0074240BA5A5
      A5A5A5A5373601159F000000260EA5A5A5A5A5A5A5370214000000002810A5A5
      A5A5A5A5A5A50317000000002A11A5A5A5A5A5A5A5A50416000000002BA50F0D
      0C0A09080706051A000000002725232221201F1E1D1C1B190000}
    TabOrder = 21
    TabStop = False
    OnClick = btEmailsClick
  end
  object wwDBComboBox1: TwwDBComboBox [29]
    Left = 262
    Top = 211
    Width = 97
    Height = 21
    CustomHint = BalloonHint1
    ShowButton = True
    Style = csDropDown
    MapList = True
    AllowClearKey = False
    ShowMatchText = True
    DataField = 'usu_altdata'
    DataSource = dsCadastro
    DropDownCount = 8
    ItemHeight = 0
    Items.Strings = (
      'Sim'#9'S'
      'N'#227'o'#9'N')
    Sorted = False
    TabOrder = 7
    UnboundDataType = wwDefault
  end
  inherited dsCadastro: TDataSource
    DataSet = dmCadastros.qyUsuarios
  end
  inherited ActionList: TActionList
    inherited actProcurar: TAction
      OnExecute = actProcurarExecute
    end
    inherited actFechar: TAction
      OnExecute = actFecharExecute
    end
  end
end
