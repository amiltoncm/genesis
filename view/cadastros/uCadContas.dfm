inherited frmCadContas: TfrmCadContas
  Caption = 'Cadastro de Contas'
  ClientWidth = 468
  ExplicitWidth = 474
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
    Width = 46
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Descri'#231#227'o'
    FocusControl = dbDescricao
  end
  object Label5: TLabel [2]
    Left = 8
    Top = 98
    Width = 29
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Banco'
  end
  object Label4: TLabel [3]
    Left = 8
    Top = 138
    Width = 19
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Obs'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel [4]
    Left = 8
    Top = 186
    Width = 56
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Conta ativa'
  end
  inherited btFechar: TBitBtn
    Left = 355
    TabOrder = 6
    ExplicitLeft = 355
  end
  inherited btNovo: TBitBtn
    Left = 355
    TabOrder = 7
    ExplicitLeft = 355
  end
  inherited btAlterar: TBitBtn
    Left = 355
    TabOrder = 8
    ExplicitLeft = 355
  end
  inherited btExcluir: TBitBtn
    Left = 355
    TabOrder = 9
    ExplicitLeft = 355
  end
  inherited btGravar: TBitBtn
    Left = 355
    TabOrder = 10
    ExplicitLeft = 355
  end
  inherited btCancelar: TBitBtn
    Left = 355
    TabOrder = 11
    ExplicitLeft = 355
  end
  inherited btAtualizar: TBitBtn
    Left = 355
    TabOrder = 12
    ExplicitLeft = 355
  end
  inherited btLimpar: TBitBtn
    Left = 355
    TabOrder = 13
    ExplicitLeft = 355
  end
  inherited btProcurar: TBitBtn
    Left = 355
    TabOrder = 14
    ExplicitLeft = 355
  end
  inherited ToolBar1: TToolBar
    Width = 468
    TabOrder = 15
    ExplicitWidth = 468
  end
  inherited panCaption: TPanel
    Width = 468
    TabOrder = 16
    ExplicitWidth = 468
  end
  inherited sbPrincipal: TStatusBar
    Width = 468
    ExplicitWidth = 468
  end
  object dbCodigo: TDBEdit [17]
    Left = 8
    Top = 72
    Width = 69
    Height = 21
    Hint = 'C'#243'digo '
    CustomHint = BalloonHint1
    TabStop = False
    Color = clBtnFace
    DataField = 'con_codigo'
    DataSource = dsCadastro
    ParentShowHint = False
    ReadOnly = True
    ShowHint = True
    TabOrder = 0
  end
  object dbDescricao: TDBEdit [18]
    Left = 83
    Top = 72
    Width = 264
    Height = 21
    Hint = 'Descri'#231#227'o '
    CustomHint = BalloonHint1
    DataField = 'con_descricao'
    DataSource = dsCadastro
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
  end
  object cbBanco: TwwDBLookupCombo [19]
    Left = 8
    Top = 114
    Width = 76
    Height = 21
    Hint = 'Digite ou selecione o c'#243'digo do banco'
    CustomHint = BalloonHint1
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'ban_codigo'#9'8'#9'C'#243'digo'#9'F'
      'ban_descricao'#9'50'#9'Banco'#9'F')
    DataField = 'ban_codigo'
    DataSource = dsCadastro
    LookupTable = dmLookups.lkProcBancos
    LookupField = 'ban_codigo'
    Options = [loColLines, loRowLines, loTitles]
    Style = csDropDownList
    ButtonEffects.Transparent = True
    ButtonEffects.Flat = True
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    AutoDropDown = True
    ShowButton = True
    PreciseEditRegion = False
    AllowClearKey = False
    ShowMatchText = True
  end
  object dbBanco: TDBEdit [20]
    Left = 83
    Top = 114
    Width = 264
    Height = 21
    Hint = 'Banco selecionado'
    CustomHint = BalloonHint1
    TabStop = False
    Color = clBtnFace
    DataField = 'ban_descricao'
    DataSource = dsCadastro
    ParentShowHint = False
    ReadOnly = True
    ShowHint = True
    TabOrder = 3
  end
  object dbObs: TDBEdit [21]
    Left = 8
    Top = 154
    Width = 339
    Height = 21
    CustomHint = BalloonHint1
    DataField = 'con_obs'
    DataSource = dsCadastro
    TabOrder = 4
  end
  object wwDBComboBox1: TwwDBComboBox [22]
    Left = 8
    Top = 202
    Width = 73
    Height = 21
    Hint = 'A conta esta ativa?'
    CustomHint = BalloonHint1
    ShowButton = True
    Style = csDropDown
    MapList = True
    AllowClearKey = False
    DataField = 'con_ativa'
    DataSource = dsCadastro
    DropDownCount = 8
    ButtonEffects.Transparent = True
    ButtonEffects.Flat = True
    ItemHeight = 0
    Items.Strings = (
      'Sim'#9'S'
      'N'#227'o'#9'N')
    ItemIndex = 0
    ParentShowHint = False
    ShowHint = True
    Sorted = False
    TabOrder = 5
    UnboundDataType = wwDefault
  end
  inherited dsCadastro: TDataSource
    DataSet = dmCadastros.qyContas
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
