inherited frmCadFornecedores: TfrmCadFornecedores
  Caption = 'Cadastro de Fornecedores'
  ClientHeight = 420
  ClientWidth = 593
  ExplicitWidth = 599
  ExplicitHeight = 445
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
    Width = 59
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Raz'#227'o social'
    FocusControl = dbDescricao
  end
  object Label3: TLabel [2]
    Left = 8
    Top = 99
    Width = 116
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Nome Fantasia / Apelido'
  end
  object Label15: TLabel [3]
    Left = 8
    Top = 139
    Width = 61
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Tipo (PF, PJ)'
  end
  object Label12: TLabel [4]
    Left = 162
    Top = 141
    Width = 25
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'CNPJ'
  end
  object Label13: TLabel [5]
    Left = 345
    Top = 139
    Width = 46
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Insc. Est.'
  end
  object Label18: TLabel [6]
    Left = 8
    Top = 179
    Width = 54
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Logradouro'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel [7]
    Left = 152
    Top = 179
    Width = 45
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Endere'#231'o'
  end
  object Label19: TLabel [8]
    Left = 417
    Top = 179
    Width = 37
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'N'#250'mero'
  end
  object Label5: TLabel [9]
    Left = 8
    Top = 219
    Width = 28
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Bairro'
  end
  object Label6: TLabel [10]
    Left = 176
    Top = 219
    Width = 33
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Cidade'
  end
  object Label7: TLabel [11]
    Left = 441
    Top = 219
    Width = 13
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'UF'
  end
  object Label8: TLabel [12]
    Left = 8
    Top = 259
    Width = 19
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'CEP'
  end
  object Label9: TLabel [13]
    Left = 106
    Top = 259
    Width = 42
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Telefone'
  end
  object Label10: TLabel [14]
    Left = 226
    Top = 259
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
  object Label11: TLabel [15]
    Left = 353
    Top = 259
    Width = 17
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Fax'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label14: TLabel [16]
    Left = 8
    Top = 299
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
  object Label17: TLabel [17]
    Left = 8
    Top = 339
    Width = 59
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Dt. Cadastro'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label16: TLabel [18]
    Left = 257
    Top = 299
    Width = 56
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Home Page'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  inherited btFechar: TBitBtn
    Left = 480
    Top = 370
    TabOrder = 19
    ExplicitLeft = 480
    ExplicitTop = 370
  end
  inherited btNovo: TBitBtn
    Left = 480
    TabOrder = 20
    ExplicitLeft = 480
  end
  inherited btAlterar: TBitBtn
    Left = 480
    TabOrder = 21
    ExplicitLeft = 480
  end
  inherited btExcluir: TBitBtn
    Left = 480
    TabOrder = 22
    ExplicitLeft = 480
  end
  inherited btGravar: TBitBtn
    Left = 480
    TabOrder = 23
    ExplicitLeft = 480
  end
  inherited btCancelar: TBitBtn
    Left = 480
    TabOrder = 24
    ExplicitLeft = 480
  end
  inherited btAtualizar: TBitBtn
    Left = 480
    TabOrder = 25
    ExplicitLeft = 480
  end
  inherited btLimpar: TBitBtn
    Left = 480
    TabOrder = 26
    ExplicitLeft = 480
  end
  inherited btProcurar: TBitBtn
    Left = 480
    TabOrder = 27
    ExplicitLeft = 480
  end
  inherited ToolBar1: TToolBar
    Width = 593
    TabOrder = 28
    ExplicitWidth = 593
  end
  inherited panCaption: TPanel
    Width = 593
    TabOrder = 29
    ExplicitWidth = 593
  end
  inherited sbPrincipal: TStatusBar
    Top = 401
    Width = 593
    ExplicitTop = 401
    ExplicitWidth = 593
  end
  object dbCodigo: TDBEdit [31]
    Left = 8
    Top = 72
    Width = 69
    Height = 21
    Hint = 'C'#243'digo '
    CustomHint = BalloonHint1
    TabStop = False
    Color = clBtnFace
    DataField = 'for_codigo'
    DataSource = dsCadastro
    ParentShowHint = False
    ReadOnly = True
    ShowHint = True
    TabOrder = 0
  end
  object dbDescricao: TDBEdit [32]
    Left = 83
    Top = 72
    Width = 391
    Height = 21
    Hint = 'Descri'#231#227'o '
    CustomHint = BalloonHint1
    DataField = 'for_razao'
    DataSource = dsCadastro
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
  end
  object dbNomeFan: TDBEdit [33]
    Left = 8
    Top = 115
    Width = 466
    Height = 21
    Hint = 'Digite o apelido do fornecedor'
    CustomHint = BalloonHint1
    DataField = 'for_fantasia'
    DataSource = dsCadastro
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
  end
  object dbTipo: TwwDBComboBox [34]
    Left = 8
    Top = 154
    Width = 145
    Height = 21
    Hint = 'Selecione o tipo de Cliente'
    CustomHint = BalloonHint1
    ShowButton = True
    Style = csDropDown
    MapList = True
    AllowClearKey = False
    DataField = 'for_tipo'
    DataSource = dsCadastro
    DropDownCount = 8
    ButtonEffects.Transparent = True
    ButtonEffects.Flat = True
    ItemHeight = 0
    Items.Strings = (
      'P. Jur'#237'dica'#9'J'
      'P. F'#237'sica'#9'F')
    ParentShowHint = False
    ShowHint = True
    Sorted = False
    TabOrder = 3
    UnboundDataType = wwDefault
  end
  object dbCNPJ: TDBEdit [35]
    Left = 161
    Top = 154
    Width = 177
    Height = 21
    Hint = 'CNPJ / CPF do fornecedor'
    CustomHint = BalloonHint1
    DataField = 'for_cnpj'
    DataSource = dsCadastro
    TabOrder = 4
  end
  object dbIE: TDBEdit [36]
    Left = 345
    Top = 154
    Width = 129
    Height = 21
    Hint = 'Insc. Est. / RG do fornecedor'
    CustomHint = BalloonHint1
    DataField = 'for_ie'
    DataSource = dsCadastro
    TabOrder = 5
  end
  object cbTpEndereco: TwwDBLookupCombo [37]
    Left = 8
    Top = 195
    Width = 137
    Height = 21
    Hint = 'Selecione o tipo de endere'#231'o'
    CustomHint = BalloonHint1
    DropDownAlignment = taLeftJustify
    LookupTable = dmLookups.lkProcTpLogradouro
    LookupField = 'tpl_tipo'
    Options = [loColLines, loRowLines, loTitles]
    ButtonEffects.Transparent = True
    ButtonEffects.Flat = True
    ParentShowHint = False
    ShowHint = True
    TabOrder = 6
    AutoDropDown = True
    ShowButton = True
    PreciseEditRegion = False
    AllowClearKey = False
    ShowMatchText = True
    OnExit = cbTpEnderecoExit
  end
  object dbEndereco: TDBEdit [38]
    Left = 152
    Top = 195
    Width = 259
    Height = 21
    Hint = 'Digite o endere'#231'o do fornecedor'
    CustomHint = BalloonHint1
    DataField = 'for_logradouro'
    DataSource = dsCadastro
    ParentShowHint = False
    ShowHint = True
    TabOrder = 7
  end
  object dbNumero: TDBEdit [39]
    Left = 417
    Top = 195
    Width = 57
    Height = 21
    Hint = 'N'#250'mero do endere'#231'o'
    CustomHint = BalloonHint1
    DataField = 'for_numero'
    DataSource = dsCadastro
    ParentShowHint = False
    ShowHint = True
    TabOrder = 8
  end
  object dbBairro: TDBEdit [40]
    Left = 8
    Top = 235
    Width = 161
    Height = 21
    Hint = 'digite o bairro do fornecedor'
    CustomHint = BalloonHint1
    DataField = 'for_bairro'
    DataSource = dsCadastro
    ParentShowHint = False
    ShowHint = True
    TabOrder = 9
  end
  object cbCidade: TwwDBLookupCombo [41]
    Left = 176
    Top = 235
    Width = 266
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
    TabOrder = 10
    AutoDropDown = True
    ShowButton = True
    PreciseEditRegion = False
    AllowClearKey = False
    ShowMatchText = True
    OnExit = cbCidadeExit
  end
  object dbUf: TDBEdit [42]
    Left = 441
    Top = 235
    Width = 33
    Height = 21
    Hint = 'UF da cidade'
    CustomHint = BalloonHint1
    TabStop = False
    Color = clBtnFace
    DataField = 'uf_sigla'
    DataSource = dsCadastro
    ParentShowHint = False
    ReadOnly = True
    ShowHint = True
    TabOrder = 11
  end
  object dbCep: TDBEdit [43]
    Left = 8
    Top = 275
    Width = 87
    Height = 21
    Hint = 'digite o CEP do fornecedor'
    CustomHint = BalloonHint1
    DataField = 'for_cep'
    DataSource = dsCadastro
    ParentShowHint = False
    ShowHint = True
    TabOrder = 12
  end
  object dbTelefone: TDBEdit [44]
    Left = 106
    Top = 275
    Width = 113
    Height = 21
    Hint = 'digite o telefone do fornecedor'
    CustomHint = BalloonHint1
    DataField = 'for_fone'
    DataSource = dsCadastro
    MaxLength = 14
    ParentShowHint = False
    ShowHint = True
    TabOrder = 13
  end
  object dbCelular: TDBEdit [45]
    Left = 226
    Top = 275
    Width = 121
    Height = 21
    Hint = 'digite o celular do fornecedor'
    CustomHint = BalloonHint1
    DataField = 'for_celular'
    DataSource = dsCadastro
    MaxLength = 14
    ParentShowHint = False
    ShowHint = True
    TabOrder = 14
  end
  object dbFax: TDBEdit [46]
    Left = 353
    Top = 275
    Width = 121
    Height = 21
    Hint = 'digite o fax do fornecedor'
    CustomHint = BalloonHint1
    DataField = 'for_fax'
    DataSource = dsCadastro
    ParentShowHint = False
    ShowHint = True
    TabOrder = 15
  end
  object dbEmail: TDBEdit [47]
    Left = 8
    Top = 315
    Width = 241
    Height = 21
    Hint = 'digite o e-mail do fornecedor'
    CustomHint = BalloonHint1
    CharCase = ecLowerCase
    DataField = 'for_email'
    DataSource = dsCadastro
    ParentShowHint = False
    ShowHint = True
    TabOrder = 16
  end
  object wwDBDateTimePicker1: TwwDBDateTimePicker [48]
    Left = 8
    Top = 355
    Width = 105
    Height = 21
    Hint = 'Digite ou selecione a data'#13#10'de Cadastro'
    CustomHint = BalloonHint1
    CalendarAttributes.Font.Charset = DEFAULT_CHARSET
    CalendarAttributes.Font.Color = clWindowText
    CalendarAttributes.Font.Height = -11
    CalendarAttributes.Font.Name = 'MS Sans Serif'
    CalendarAttributes.Font.Style = []
    DataField = 'for_dtcadastro'
    DateFormat = dfLong
    DataSource = dsCadastro
    Epoch = 1950
    ButtonEffects.Transparent = True
    ButtonEffects.Flat = True
    ParentShowHint = False
    ShowHint = True
    ShowButton = True
    TabOrder = 18
    DisplayFormat = 'dd/mm/yyyy'
  end
  object dbHomePage: TDBEdit [49]
    Left = 257
    Top = 315
    Width = 217
    Height = 21
    CustomHint = BalloonHint1
    CharCase = ecLowerCase
    DataField = 'for_homepage'
    DataSource = dsCadastro
    TabOrder = 17
  end
  inherited dsCadastro: TDataSource
    DataSet = dmCadastros.qyFornecedores
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
