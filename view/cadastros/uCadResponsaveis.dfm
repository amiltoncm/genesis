inherited frmCadResponsaveis: TfrmCadResponsaveis
  Caption = 'Cadastro de Respons'#225'veis'
  ClientWidth = 789
  ExplicitWidth = 795
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
    Left = 60
    Top = 58
    Width = 26
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'T'#237'tulo'
  end
  object Label3: TLabel [2]
    Left = 143
    Top = 58
    Width = 27
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Nome'
    FocusControl = dbNome
  end
  object Label4: TLabel [3]
    Left = 8
    Top = 104
    Width = 44
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Conselho'
  end
  object Label5: TLabel [4]
    Left = 83
    Top = 104
    Width = 70
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Num. conselho'
    FocusControl = dbNumConselho
  end
  object Label6: TLabel [5]
    Left = 160
    Top = 104
    Width = 13
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'UF'
    FocusControl = dbUfConselho
  end
  object Label7: TLabel [6]
    Left = 623
    Top = 58
    Width = 32
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Iniciais'
    FocusControl = dbIniciais
  end
  object Label8: TLabel [7]
    Left = 8
    Top = 150
    Width = 21
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'CBO'
  end
  object Label9: TLabel [8]
    Left = 295
    Top = 104
    Width = 58
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Participa'#231#227'o'
  end
  object Label10: TLabel [9]
    Left = 191
    Top = 104
    Width = 19
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'CPF'
  end
  object Label11: TLabel [10]
    Left = 8
    Top = 196
    Width = 21
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'RQE'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  inherited btFechar: TBitBtn
    Left = 676
    TabOrder = 10
    ExplicitLeft = 676
  end
  inherited btNovo: TBitBtn
    Left = 676
    TabOrder = 11
    ExplicitLeft = 676
  end
  inherited btAlterar: TBitBtn
    Left = 676
    TabOrder = 12
    ExplicitLeft = 676
  end
  inherited btExcluir: TBitBtn
    Left = 676
    TabOrder = 13
    ExplicitLeft = 676
  end
  inherited btGravar: TBitBtn
    Left = 676
    TabOrder = 14
    ExplicitLeft = 676
  end
  inherited btCancelar: TBitBtn
    Left = 676
    TabOrder = 15
    ExplicitLeft = 676
  end
  inherited btAtualizar: TBitBtn
    Left = 676
    TabOrder = 16
    ExplicitLeft = 676
  end
  inherited btLimpar: TBitBtn
    Left = 676
    TabOrder = 17
    ExplicitLeft = 676
  end
  inherited btProcurar: TBitBtn
    Left = 676
    TabOrder = 18
    ExplicitLeft = 676
  end
  inherited ToolBar1: TToolBar
    Width = 789
    TabOrder = 19
    ExplicitWidth = 789
  end
  inherited panCaption: TPanel
    Width = 789
    TabOrder = 20
    ExplicitWidth = 789
  end
  inherited sbPrincipal: TStatusBar
    Width = 789
    ExplicitWidth = 789
  end
  object dbCodigo: TDBEdit [23]
    Left = 8
    Top = 77
    Width = 46
    Height = 21
    Hint = 'ID do respons'#225'vel'
    CustomHint = BalloonHint1
    TabStop = False
    Color = clBtnFace
    DataField = 'res_codigo'
    DataSource = dsCadastro
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
  end
  object cbTitulo: TwwDBComboBox [24]
    Left = 60
    Top = 77
    Width = 77
    Height = 21
    Hint = 'T'#237'tulo do respons'#225'vel'
    CustomHint = BalloonHint1
    ShowButton = True
    Style = csDropDown
    MapList = True
    AllowClearKey = False
    ShowMatchText = True
    DataField = 'res_titulo'
    DataSource = dsCadastro
    DropDownCount = 8
    ItemHeight = 0
    Items.Strings = (
      'Dr.'#9'Dr.'
      'Dra.'#9'Dra.'
      'Sr.'#9'Sr.'
      'Sra.'#9'Sra.')
    ParentShowHint = False
    ShowHint = True
    Sorted = False
    TabOrder = 1
    UnboundDataType = wwDefault
  end
  object dbNome: TDBEdit [25]
    Left = 143
    Top = 77
    Width = 474
    Height = 21
    Hint = 'Nome do respons'#225'vel'
    CustomHint = BalloonHint1
    DataField = 'res_nome'
    DataSource = dsCadastro
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
  end
  object cbConselho: TwwDBLookupCombo [26]
    Left = 8
    Top = 123
    Width = 69
    Height = 21
    Hint = 'Conselho do respons'#225'vel'
    CustomHint = BalloonHint1
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'cos_tipo'#9'7'#9'Tipo'#9#9
      'cos_descricao'#9'60'#9'Descri'#231#227'o'#9'T'
      'cos_codigo'#9'10'#9'ID. Conselho'#9'T')
    DataField = 'cos_tipo'
    DataSource = dsCadastro
    LookupTable = dmLookups.lkProcConselhos
    LookupField = 'cos_tipo'
    Options = [loColLines, loRowLines, loTitles]
    ButtonEffects.Transparent = True
    ButtonEffects.Flat = True
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
    AutoDropDown = False
    ShowButton = True
    PreciseEditRegion = False
    AllowClearKey = False
    OnExit = cbConselhoExit
  end
  object dbNumConselho: TDBEdit [27]
    Left = 83
    Top = 123
    Width = 71
    Height = 21
    Hint = 'N'#250'mero do conselho'
    CustomHint = BalloonHint1
    DataField = 'res_numconselho'
    DataSource = dsCadastro
    ParentShowHint = False
    ShowHint = True
    TabOrder = 5
  end
  object dbUfConselho: TDBEdit [28]
    Left = 160
    Top = 123
    Width = 25
    Height = 21
    Hint = 'UF do conselho'
    CustomHint = BalloonHint1
    DataField = 'cos_uf'
    DataSource = dsCadastro
    ParentShowHint = False
    ShowHint = True
    TabOrder = 6
  end
  object dbIniciais: TDBEdit [29]
    Left = 623
    Top = 77
    Width = 47
    Height = 21
    Hint = 'Iniciais do respons'#225'vel'
    CustomHint = BalloonHint1
    DataField = 'res_iniciais'
    DataSource = dsCadastro
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
  end
  object cbCBO: TwwDBLookupCombo [30]
    Left = 8
    Top = 169
    Width = 662
    Height = 21
    Hint = 'Ocupa'#231#227'o do respons'#225'vel'
    CustomHint = BalloonHint1
    DropDownAlignment = taLeftJustify
    LookupTable = dmLookups.lkProcCBO
    LookupField = 'cbo_descricao'
    Options = [loColLines, loRowLines, loTitles]
    ButtonEffects.Transparent = True
    ButtonEffects.Flat = True
    ParentShowHint = False
    ShowHint = True
    TabOrder = 9
    AutoDropDown = False
    ShowButton = True
    PreciseEditRegion = False
    AllowClearKey = False
    OnExit = cbCBOExit
  end
  object cbParticipacao: TwwDBLookupCombo [31]
    Left = 295
    Top = 123
    Width = 375
    Height = 21
    Hint = 'Participa'#231#227'o do respons'#225'vel'
    CustomHint = BalloonHint1
    DropDownAlignment = taLeftJustify
    LookupTable = dmLookups.lkProcParticipacao
    LookupField = 'prt_termo'
    Options = [loColLines, loRowLines, loTitles]
    ButtonEffects.Transparent = True
    ButtonEffects.Flat = True
    ParentShowHint = False
    ShowHint = True
    TabOrder = 8
    AutoDropDown = False
    ShowButton = True
    PreciseEditRegion = False
    AllowClearKey = False
    OnExit = cbParticipacaoExit
  end
  object dbCPF: TDBEdit [32]
    Left = 191
    Top = 123
    Width = 98
    Height = 21
    Hint = 'CPF do respons'#225'vel'
    CustomHint = BalloonHint1
    DataField = 'res_cpf'
    DataSource = dsCadastro
    TabOrder = 7
  end
  object dbRQE: TDBEdit [33]
    Left = 8
    Top = 215
    Width = 121
    Height = 21
    CustomHint = BalloonHint1
    DataField = 'res_rqe'
    DataSource = dsCadastro
    TabOrder = 22
  end
  inherited dsCadastro: TDataSource
    DataSet = dmCadastros.qyResponsaveis
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
