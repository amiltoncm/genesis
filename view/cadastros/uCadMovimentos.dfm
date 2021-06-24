inherited frmCadMovimentos: TfrmCadMovimentos
  Caption = 'Cadastro de Tipos de Movimentos (Plano de contas)'
  ClientWidth = 466
  ExplicitWidth = 472
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
  object Label3: TLabel [2]
    Left = 8
    Top = 99
    Width = 70
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'D'#233'bito/Cr'#233'dito'
  end
  inherited btFechar: TBitBtn
    Left = 353
    ExplicitLeft = 353
  end
  inherited btNovo: TBitBtn
    Left = 353
    ExplicitLeft = 353
  end
  inherited btAlterar: TBitBtn
    Left = 353
    ExplicitLeft = 353
  end
  inherited btExcluir: TBitBtn
    Left = 353
    ExplicitLeft = 353
  end
  inherited btGravar: TBitBtn
    Left = 353
    ExplicitLeft = 353
  end
  inherited btCancelar: TBitBtn
    Left = 353
    ExplicitLeft = 353
  end
  inherited btAtualizar: TBitBtn
    Left = 353
    ExplicitLeft = 353
  end
  inherited btLimpar: TBitBtn
    Left = 353
    ExplicitLeft = 353
  end
  inherited btProcurar: TBitBtn
    Left = 353
    ExplicitLeft = 353
  end
  inherited ToolBar1: TToolBar
    Width = 466
    ExplicitWidth = 466
  end
  inherited panCaption: TPanel
    Width = 466
    ExplicitWidth = 466
  end
  inherited sbPrincipal: TStatusBar
    Width = 466
    ExplicitWidth = 466
  end
  object dbCodigo: TDBEdit [15]
    Left = 8
    Top = 72
    Width = 69
    Height = 21
    Hint = 'C'#243'digo '
    CustomHint = BalloonHint1
    TabStop = False
    Color = clBtnFace
    DataField = 'mov_codigo'
    DataSource = dsCadastro
    ParentShowHint = False
    ReadOnly = True
    ShowHint = True
    TabOrder = 12
  end
  object dbDescricao: TDBEdit [16]
    Left = 83
    Top = 72
    Width = 264
    Height = 21
    Hint = 'Descri'#231#227'o '
    CustomHint = BalloonHint1
    DataField = 'mov_descricao'
    DataSource = dsCadastro
    ParentShowHint = False
    ShowHint = True
    TabOrder = 13
  end
  object wwDBComboBox1: TwwDBComboBox [17]
    Left = 8
    Top = 115
    Width = 113
    Height = 21
    Hint = 'Tipo de Plano de Contas'
    CustomHint = BalloonHint1
    ShowButton = True
    Style = csDropDown
    MapList = True
    AllowClearKey = False
    DataField = 'mov_tipo'
    DataSource = dsCadastro
    DropDownCount = 8
    ButtonEffects.Transparent = True
    ButtonEffects.Flat = True
    ItemHeight = 0
    Items.Strings = (
      'D'#233'bito'#9'D'
      'Cr'#233'dito'#9'C')
    ItemIndex = 0
    ParentShowHint = False
    ShowHint = True
    Sorted = False
    TabOrder = 14
    UnboundDataType = wwDefault
  end
  inherited dsCadastro: TDataSource
    DataSet = dmCadastros.qyMovimentos
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
