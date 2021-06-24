inherited frmCadMedicos: TfrmCadMedicos
  Caption = 'Cadastro de Medicos'
  ClientWidth = 753
  ExplicitWidth = 759
  ExplicitHeight = 390
  PixelsPerInch = 96
  TextHeight = 13
  object lbCodigo: TLabel [0]
    Left = 8
    Top = 56
    Width = 33
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'C'#243'digo'
    FocusControl = dbCodigo
  end
  object lbDescricao: TLabel [1]
    Left = 83
    Top = 56
    Width = 27
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Nome'
    FocusControl = dbDescricao
  end
  object Label6: TLabel [2]
    Left = 537
    Top = 56
    Width = 26
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'T'#237'tulo'
  end
  object Label4: TLabel [3]
    Left = 8
    Top = 100
    Width = 44
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Conselho'
  end
  object Label5: TLabel [4]
    Left = 93
    Top = 100
    Width = 59
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'N.'#186' Registro'
  end
  object Label18: TLabel [5]
    Left = 166
    Top = 100
    Width = 42
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Uf Cons.'
  end
  object Label3: TLabel [6]
    Left = 221
    Top = 99
    Width = 42
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Telefone'
  end
  object Label7: TLabel [7]
    Left = 316
    Top = 99
    Width = 32
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Celular'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel [8]
    Left = 411
    Top = 99
    Width = 62
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'CPF / CNPJ*'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label9: TLabel [9]
    Left = 530
    Top = 100
    Width = 77
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'R.G. / Insc. Est.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label10: TLabel [10]
    Left = 8
    Top = 140
    Width = 46
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Endere'#231'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label11: TLabel [11]
    Left = 192
    Top = 140
    Width = 54
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Logradouro'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label12: TLabel [12]
    Left = 577
    Top = 140
    Width = 37
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'N'#250'mero'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label13: TLabel [13]
    Left = 8
    Top = 180
    Width = 27
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Bairro'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label14: TLabel [14]
    Left = 168
    Top = 180
    Width = 33
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Cidade'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label15: TLabel [15]
    Left = 512
    Top = 180
    Width = 14
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'UF'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label16: TLabel [16]
    Left = 552
    Top = 180
    Width = 21
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'CEP'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label17: TLabel [17]
    Left = 8
    Top = 220
    Width = 30
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'e-mail:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label20: TLabel [18]
    Left = 256
    Top = 220
    Width = 22
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'CBO'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label19: TLabel [19]
    Left = 8
    Top = 320
    Width = 408
    Height = 13
    CustomHint = BalloonHint1
    Caption = 
      'CPF / CNPJ* - Necess'#225'rio quando o m'#233'dico trabalha com conv'#234'nios ' +
      'que gerem TISS.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  inherited btFechar: TBitBtn
    Left = 640
    TabOrder = 20
    ExplicitLeft = 640
  end
  inherited btNovo: TBitBtn
    Left = 640
    TabOrder = 21
    ExplicitLeft = 640
  end
  inherited btAlterar: TBitBtn
    Left = 640
    TabOrder = 22
    ExplicitLeft = 640
  end
  inherited btExcluir: TBitBtn
    Left = 640
    TabOrder = 23
    ExplicitLeft = 640
  end
  inherited btGravar: TBitBtn
    Left = 640
    TabOrder = 24
    ExplicitLeft = 640
  end
  inherited btCancelar: TBitBtn
    Left = 640
    TabOrder = 25
    ExplicitLeft = 640
  end
  inherited btAtualizar: TBitBtn
    Left = 640
    TabOrder = 26
    ExplicitLeft = 640
  end
  inherited btLimpar: TBitBtn
    Left = 640
    TabOrder = 27
    ExplicitLeft = 640
  end
  inherited btProcurar: TBitBtn
    Left = 640
    TabOrder = 28
    ExplicitLeft = 640
  end
  inherited ToolBar1: TToolBar
    Width = 753
    TabOrder = 29
    ExplicitWidth = 753
  end
  inherited panCaption: TPanel
    Width = 753
    TabOrder = 30
    ExplicitWidth = 753
  end
  inherited sbPrincipal: TStatusBar
    Width = 753
    ExplicitWidth = 753
  end
  object dbCodigo: TDBEdit [32]
    Left = 8
    Top = 72
    Width = 69
    Height = 21
    Hint = 'C'#243'digo '
    CustomHint = BalloonHint1
    TabStop = False
    Color = clBtnFace
    DataField = 'med_codigo'
    DataSource = dsCadastro
    ParentShowHint = False
    ReadOnly = True
    ShowHint = True
    TabOrder = 0
  end
  object dbDescricao: TDBEdit [33]
    Left = 83
    Top = 72
    Width = 448
    Height = 21
    Hint = 'Descri'#231#227'o '
    CustomHint = BalloonHint1
    DataField = 'med_nome'
    DataSource = dsCadastro
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
  end
  object cbTitulo: TwwDBComboBox [34]
    Left = 537
    Top = 72
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
    DataSource = dsCadastro
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
  object dbNumRegistro: TDBEdit [35]
    Left = 93
    Top = 116
    Width = 67
    Height = 21
    Hint = 'N.'#186' do registro no conselho'
    CustomHint = BalloonHint1
    DataField = 'med_numconselho'
    DataSource = dsCadastro
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
  end
  object cbUfCons: TwwDBComboBox [36]
    Left = 166
    Top = 116
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
    DataSource = dsCadastro
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
  object dbFone: TDBEdit [37]
    Left = 221
    Top = 116
    Width = 89
    Height = 21
    Hint = 'Telefone do Consult'#243'rio'
    CustomHint = BalloonHint1
    DataField = 'med_fone'
    DataSource = dsCadastro
    MaxLength = 14
    ParentShowHint = False
    ShowHint = True
    TabOrder = 6
  end
  object dbCelular: TDBEdit [38]
    Left = 316
    Top = 116
    Width = 89
    Height = 21
    Hint = 'Celular do m'#233'dico'
    CustomHint = BalloonHint1
    DataField = 'med_celular'
    DataSource = dsCadastro
    ParentShowHint = False
    ShowHint = True
    TabOrder = 7
  end
  object dbCpf: TDBEdit [39]
    Left = 411
    Top = 116
    Width = 113
    Height = 21
    Hint = 'CPF ou CNPJ do m'#233'dico'
    CustomHint = BalloonHint1
    DataField = 'med_cpf'
    DataSource = dsCadastro
    ParentShowHint = False
    ShowHint = True
    TabOrder = 8
  end
  object dbRg: TDBEdit [40]
    Left = 530
    Top = 116
    Width = 104
    Height = 21
    Hint = 'R.G. ou Inscri'#231#227'o Estadual do M'#233'dico'
    CustomHint = BalloonHint1
    DataField = 'med_rg'
    DataSource = dsCadastro
    ParentShowHint = False
    ShowHint = True
    TabOrder = 9
  end
  object cbTpEndereco: TwwDBLookupCombo [41]
    Left = 8
    Top = 156
    Width = 177
    Height = 21
    Hint = 'Selecione o tipo de endere'#231'o'
    CustomHint = BalloonHint1
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'tpl_tipo'#9'20'#9'Tp. Logradouro'#9'F'
      'tpl_id'#9'4'#9'ID'#9'F')
    LookupTable = dmLookups.lkProcTpLogradouro
    LookupField = 'tpl_tipo'
    Options = [loColLines, loRowLines, loTitles]
    ButtonEffects.Transparent = True
    ButtonEffects.Flat = True
    ParentShowHint = False
    ShowHint = True
    TabOrder = 10
    AutoDropDown = True
    ShowButton = True
    PreciseEditRegion = False
    AllowClearKey = False
    ShowMatchText = True
    OnExit = cbTpEnderecoExit
  end
  object dbLogradouro: TDBEdit [42]
    Left = 192
    Top = 156
    Width = 379
    Height = 21
    Hint = 'Endere'#231'o do m'#233'dico ou consult'#243'rio'
    CustomHint = BalloonHint1
    DataField = 'med_logradouro'
    DataSource = dsCadastro
    ParentShowHint = False
    ShowHint = True
    TabOrder = 11
  end
  object dbNumero: TDBEdit [43]
    Left = 577
    Top = 156
    Width = 57
    Height = 21
    Hint = 'N'#250'mero do local'
    CustomHint = BalloonHint1
    DataField = 'med_numero'
    DataSource = dsCadastro
    ParentShowHint = False
    ShowHint = True
    TabOrder = 12
  end
  object dbBairro: TDBEdit [44]
    Left = 8
    Top = 196
    Width = 153
    Height = 21
    Hint = 'bairro do m'#233'dico ou consult'#243'rio'
    CustomHint = BalloonHint1
    DataField = 'med_bairro'
    DataSource = dsCadastro
    ParentShowHint = False
    ShowHint = True
    TabOrder = 13
  end
  object cbCidade: TwwDBLookupCombo [45]
    Left = 168
    Top = 196
    Width = 346
    Height = 21
    Hint = 'C'#243'd. Cidade do m'#233'dico ou consult'#243'rio'
    CustomHint = BalloonHint1
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'cid_cidade'#9'50'#9'Cidade'#9'F'
      'uf_sigla'#9'2'#9'UF'#9'F'
      'cid_codigo'#9'8'#9'C'#243'digo'#9'F'
      'cid_ceppadrao'#9'9'#9'CEP padr'#227'o'#9'F')
    DataSource = dsCadastro
    LookupTable = dmLookups.lkProcCidades
    LookupField = 'cid_cidade'
    Options = [loColLines, loRowLines, loTitles]
    ButtonEffects.Transparent = True
    ButtonEffects.Flat = True
    ParentShowHint = False
    ShowHint = True
    TabOrder = 14
    AutoDropDown = True
    ShowButton = True
    PreciseEditRegion = False
    AllowClearKey = False
    ShowMatchText = True
    OnExit = cbCidadeExit
  end
  object dbUf: TDBEdit [46]
    Left = 512
    Top = 196
    Width = 33
    Height = 21
    Hint = 'UF do munic'#237'pio'
    CustomHint = BalloonHint1
    TabStop = False
    Color = clBtnFace
    DataField = 'uf_sigla'
    DataSource = dsCadastro
    ParentShowHint = False
    ReadOnly = True
    ShowHint = True
    TabOrder = 15
  end
  object dbCEP: TDBEdit [47]
    Left = 552
    Top = 196
    Width = 82
    Height = 21
    Hint = 'CEP do endere'#231'o'
    CustomHint = BalloonHint1
    DataField = 'med_cep'
    DataSource = dsCadastro
    ParentShowHint = False
    ShowHint = True
    TabOrder = 16
  end
  object dbEmail: TDBEdit [48]
    Left = 8
    Top = 236
    Width = 241
    Height = 21
    Hint = 'e-mail do m'#233'dico'
    CustomHint = BalloonHint1
    DataField = 'med_email'
    DataSource = dsCadastro
    ParentShowHint = False
    ShowHint = True
    TabOrder = 17
  end
  object wwDBLookupCombo1: TwwDBLookupCombo [49]
    Left = 256
    Top = 236
    Width = 89
    Height = 21
    Hint = 'Selecione o CBO do m'#233'dico'
    CustomHint = BalloonHint1
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'cbo_codigo'#9'10'#9'C'#243'digo'#9'F'
      'cbo_descricao'#9'150'#9'Ocupa'#231#227'o'#9'F')
    DataField = 'cbo_codigo'
    DataSource = dsCadastro
    LookupTable = dmLookups.lkProcCBO
    LookupField = 'cbo_codigo'
    Options = [loColLines, loRowLines, loTitles]
    ButtonEffects.Transparent = True
    ButtonEffects.Flat = True
    ParentShowHint = False
    ShowHint = True
    TabOrder = 18
    AutoDropDown = False
    ShowButton = True
    PreciseEditRegion = False
    AllowClearKey = False
    ShowMatchText = True
  end
  object dbCBO: TDBEdit [50]
    Left = 344
    Top = 236
    Width = 290
    Height = 21
    Hint = 'Classifica'#231#227'o Brasileira de Ocupa'#231#245'es - CBO'
    CustomHint = BalloonHint1
    TabStop = False
    DataField = 'cbo_descricao'
    DataSource = dsCadastro
    ParentShowHint = False
    ReadOnly = True
    ShowHint = True
    TabOrder = 19
  end
  object cbConselho: TwwDBLookupCombo [51]
    Left = 8
    Top = 116
    Width = 79
    Height = 21
    Hint = 'Codigo do tipo de conselho'
    CustomHint = BalloonHint1
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'cos_tipo'#9'7'#9'Tipo'#9#9
      'cos_codigo'#9'10'#9'ID. Conselho'#9#9
      'cos_descricao'#9'60'#9'Descri'#231#227'o'#9#9)
    DataField = 'cos_id'
    DataSource = dsCadastro
    LookupTable = dmLookups.lkProcConselhos
    LookupField = 'cos_codigo'
    Options = [loColLines, loRowLines, loTitles]
    TabOrder = 3
    AutoDropDown = False
    ShowButton = True
    PreciseEditRegion = False
    AllowClearKey = False
  end
  inherited dsCadastro: TDataSource
    DataSet = dmCadastros.qyMedicos
  end
  inherited ActionList: TActionList
    inherited actAtualizar: TAction
      OnExecute = actAtualizarExecute
    end
    inherited actProcurar: TAction
      OnExecute = actProcurarExecute
    end
  end
end
