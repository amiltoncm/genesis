inherited frmCadFuncionarios: TfrmCadFuncionarios
  Caption = 'Cadastro de Funcionarios'
  ClientWidth = 600
  ExplicitWidth = 606
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
  object Label20: TLabel [2]
    Left = 8
    Top = 96
    Width = 25
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Ativo'
  end
  object Label3: TLabel [3]
    Left = 96
    Top = 96
    Width = 35
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Fun'#231#227'o'
  end
  object Label6: TLabel [4]
    Left = 8
    Top = 136
    Width = 46
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Endere'#231'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel [5]
    Left = 284
    Top = 136
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
  object Label8: TLabel [6]
    Left = 8
    Top = 176
    Width = 58
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Cidade / UF'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label9: TLabel [7]
    Left = 395
    Top = 176
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
  object Label10: TLabel [8]
    Left = 8
    Top = 216
    Width = 42
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Telefone'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label11: TLabel [9]
    Left = 128
    Top = 216
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
  object Label12: TLabel [10]
    Left = 240
    Top = 216
    Width = 67
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Cart. Trabalho'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label13: TLabel [11]
    Left = 372
    Top = 216
    Width = 16
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'RG'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label17: TLabel [12]
    Left = 370
    Top = 256
    Width = 54
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Data Nasc.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label16: TLabel [13]
    Left = 268
    Top = 256
    Width = 32
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Sal'#225'rio'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label15: TLabel [14]
    Left = 135
    Top = 256
    Width = 57
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Data Admis.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label14: TLabel [15]
    Left = 8
    Top = 256
    Width = 20
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'CPF'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label18: TLabel [16]
    Left = 8
    Top = 296
    Width = 27
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'e-mail'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  inherited btFechar: TBitBtn
    Left = 487
    ExplicitLeft = 487
  end
  inherited btNovo: TBitBtn
    Left = 487
    ExplicitLeft = 487
  end
  inherited btAlterar: TBitBtn
    Left = 487
    ExplicitLeft = 487
  end
  inherited btExcluir: TBitBtn
    Left = 487
    ExplicitLeft = 487
  end
  inherited btGravar: TBitBtn
    Left = 487
    ExplicitLeft = 487
  end
  inherited btCancelar: TBitBtn
    Left = 487
    ExplicitLeft = 487
  end
  inherited btAtualizar: TBitBtn
    Left = 487
    ExplicitLeft = 487
  end
  inherited btLimpar: TBitBtn
    Left = 487
    ExplicitLeft = 487
  end
  inherited btProcurar: TBitBtn
    Left = 487
    ExplicitLeft = 487
  end
  inherited ToolBar1: TToolBar
    Width = 600
    ExplicitWidth = 600
  end
  inherited panCaption: TPanel
    Width = 600
    ExplicitWidth = 600
  end
  inherited sbPrincipal: TStatusBar
    Width = 600
    ExplicitWidth = 600
  end
  object dbCodigo: TDBEdit [29]
    Left = 8
    Top = 72
    Width = 69
    Height = 21
    Hint = 'C'#243'digo '
    CustomHint = BalloonHint1
    TabStop = False
    Color = clBtnFace
    DataField = 'fun_codigo'
    DataSource = dsCadastro
    ParentShowHint = False
    ReadOnly = True
    ShowHint = True
    TabOrder = 12
  end
  object dbDescricao: TDBEdit [30]
    Left = 83
    Top = 72
    Width = 394
    Height = 21
    Hint = 'Descri'#231#227'o '
    CustomHint = BalloonHint1
    DataField = 'fun_nome'
    DataSource = dsCadastro
    ParentShowHint = False
    ShowHint = True
    TabOrder = 13
  end
  object cbAtivo: TwwDBComboBox [31]
    Left = 8
    Top = 112
    Width = 81
    Height = 21
    Hint = 
      'Selecione N'#227'o para colocar'#13#10'como funcion'#225'rio que n'#227'o possui'#13#10'mai' +
      's v'#237'nculos com a empresa!'
    CustomHint = BalloonHint1
    ShowButton = True
    Style = csDropDown
    MapList = True
    AllowClearKey = False
    ShowMatchText = True
    DataField = 'fun_ativo'
    DataSource = dsCadastro
    DropDownCount = 8
    ButtonEffects.Transparent = True
    ButtonEffects.Flat = True
    ItemHeight = 0
    Items.Strings = (
      'Ativo'#9'True'
      'Inativo'#9'False')
    ParentShowHint = False
    ShowHint = True
    Sorted = False
    TabOrder = 14
    UnboundDataType = wwDefault
  end
  object cbFuncao: TwwDBLookupCombo [32]
    Left = 96
    Top = 112
    Width = 381
    Height = 21
    Hint = 'Paciente'
    CustomHint = BalloonHint1
    CharCase = ecUpperCase
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'fnc_descricao'#9'30'#9'Descri'#231#227'o'#9'F'
      'fnc_id'#9'10'#9'ID'#9'F')
    LookupTable = dmLookups.lkProcFuncoes
    LookupField = 'fnc_descricao'
    Options = [loColLines, loRowLines, loTitles]
    DropDownCount = 10
    ButtonEffects.Transparent = True
    ButtonEffects.Flat = True
    MaxLength = 80
    ParentShowHint = False
    ShowHint = True
    TabOrder = 15
    AutoDropDown = True
    ShowButton = True
    PreciseEditRegion = False
    AllowClearKey = True
    ShowMatchText = True
    OnExit = cbFuncaoExit
  end
  object dbEndereco: TDBEdit [33]
    Left = 8
    Top = 152
    Width = 269
    Height = 21
    Hint = 'Digite o endere'#231'o'
    CustomHint = BalloonHint1
    DataField = 'fun_endereco'
    DataSource = dsCadastro
    ParentShowHint = False
    ShowHint = True
    TabOrder = 16
  end
  object dbBairro: TDBEdit [34]
    Left = 283
    Top = 152
    Width = 194
    Height = 21
    Hint = 'Digite o Bairro'
    CustomHint = BalloonHint1
    DataField = 'fun_bairro'
    DataSource = dsCadastro
    ParentShowHint = False
    ShowHint = True
    TabOrder = 17
  end
  object cbCidade: TwwDBLookupCombo [35]
    Left = 8
    Top = 192
    Width = 349
    Height = 21
    Hint = 'C'#243'd. Cidade do m'#233'dico ou consult'#243'rio'
    CustomHint = BalloonHint1
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'cid_cidade'#9'50'#9'Cidade'#9'F'
      'uf_sigla'#9'2'#9'UF'#9'F'
      'cid_codigo'#9'8'#9'C'#243'digo'#9'F'
      'cid_ceppadrao'#9'9'#9'CEP padr'#227'o'#9'F')
    LookupTable = dmLookups.lkProcCidades
    LookupField = 'cid_cidade'
    Options = [loColLines, loRowLines, loTitles]
    ButtonEffects.Transparent = True
    ButtonEffects.Flat = True
    ParentShowHint = False
    ShowHint = True
    TabOrder = 18
    AutoDropDown = True
    ShowButton = True
    PreciseEditRegion = False
    AllowClearKey = False
    ShowMatchText = True
    OnExit = cbCidadeExit
  end
  object dbUf: TDBEdit [36]
    Left = 357
    Top = 192
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
    TabOrder = 19
  end
  object dbCep: TDBEdit [37]
    Left = 396
    Top = 192
    Width = 81
    Height = 21
    Hint = 'Digite o CEP'
    CustomHint = BalloonHint1
    DataField = 'fun_cep'
    DataSource = dsCadastro
    ParentShowHint = False
    ShowHint = True
    TabOrder = 20
  end
  object dbFone: TDBEdit [38]
    Left = 8
    Top = 232
    Width = 113
    Height = 21
    Hint = 'Digite o telefone'
    CustomHint = BalloonHint1
    DataField = 'fun_telefone'
    DataSource = dsCadastro
    ParentShowHint = False
    ShowHint = True
    TabOrder = 21
  end
  object dbCelular: TDBEdit [39]
    Left = 128
    Top = 232
    Width = 105
    Height = 21
    Hint = 'Digite o Celular'
    CustomHint = BalloonHint1
    DataField = 'fun_celular'
    DataSource = dsCadastro
    ParentShowHint = False
    ShowHint = True
    TabOrder = 22
  end
  object dbCartTrab: TDBEdit [40]
    Left = 240
    Top = 232
    Width = 126
    Height = 21
    Hint = 'N.'#186' da Carteira de Trabalho'
    CustomHint = BalloonHint1
    DataField = 'fun_carttrab'
    DataSource = dsCadastro
    ParentShowHint = False
    ShowHint = True
    TabOrder = 23
  end
  object dbRG: TDBEdit [41]
    Left = 372
    Top = 232
    Width = 105
    Height = 21
    Hint = 'N.'#186' do RG'
    CustomHint = BalloonHint1
    DataField = 'fun_rg'
    DataSource = dsCadastro
    ParentShowHint = False
    ShowHint = True
    TabOrder = 24
  end
  object dbDtNasc: TwwDBDateTimePicker [42]
    Left = 372
    Top = 272
    Width = 105
    Height = 21
    Hint = 'Data de Nascimento'
    CustomHint = BalloonHint1
    CalendarAttributes.Font.Charset = DEFAULT_CHARSET
    CalendarAttributes.Font.Color = clWindowText
    CalendarAttributes.Font.Height = -11
    CalendarAttributes.Font.Name = 'MS Sans Serif'
    CalendarAttributes.Font.Style = []
    DataField = 'fun_datanasc'
    DataSource = dsCadastro
    Epoch = 1950
    ButtonEffects.Transparent = True
    ButtonEffects.Flat = True
    ParentShowHint = False
    ShowHint = True
    ShowButton = True
    TabOrder = 28
    UnboundDataType = wwDTEdtDate
  end
  object dbSalario: TDBEdit [43]
    Left = 268
    Top = 272
    Width = 98
    Height = 21
    Hint = 'Sal'#225'rio'
    CustomHint = BalloonHint1
    DataField = 'fun_salario'
    DataSource = dsCadastro
    ParentShowHint = False
    ShowHint = True
    TabOrder = 27
  end
  object wwDBDateTimePicker1: TwwDBDateTimePicker [44]
    Left = 136
    Top = 272
    Width = 126
    Height = 21
    Hint = 'Data de admiss'#227'o'
    CustomHint = BalloonHint1
    CalendarAttributes.Font.Charset = DEFAULT_CHARSET
    CalendarAttributes.Font.Color = clWindowText
    CalendarAttributes.Font.Height = -11
    CalendarAttributes.Font.Name = 'MS Sans Serif'
    CalendarAttributes.Font.Style = []
    DataField = 'fun_dataadmis'
    DataSource = dsCadastro
    Epoch = 1950
    ButtonEffects.Transparent = True
    ButtonEffects.Flat = True
    ParentShowHint = False
    ShowHint = True
    ShowButton = True
    TabOrder = 26
  end
  object dbCPF: TDBEdit [45]
    Left = 8
    Top = 272
    Width = 121
    Height = 21
    Hint = 'N.'#186' do CPF'
    CustomHint = BalloonHint1
    DataField = 'fun_cpf'
    DataSource = dsCadastro
    ParentShowHint = False
    ShowHint = True
    TabOrder = 25
  end
  object dbemail: TDBEdit [46]
    Left = 8
    Top = 312
    Width = 468
    Height = 21
    Hint = 'e-mail'
    CustomHint = BalloonHint1
    DataField = 'FUN_EMAIL'
    DataSource = dsCadastro
    ParentShowHint = False
    ShowHint = True
    TabOrder = 29
  end
  inherited dsCadastro: TDataSource
    DataSet = dmCadastros.qyFuncionarios
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
