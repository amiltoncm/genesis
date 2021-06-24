inherited frmCadExamesTipoHist: TfrmCadExamesTipoHist
  Caption = 'Cadastro de Sub Tipos de Exame (Histologia)'
  ClientWidth = 737
  ExplicitWidth = 743
  ExplicitHeight = 383
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
    Left = 8
    Top = 104
    Width = 46
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Descri'#231#227'o'
    FocusControl = dbDescricao
  end
  object Label3: TLabel [2]
    Left = 83
    Top = 56
    Width = 70
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Tipo de Exame'
  end
  inherited btFechar: TBitBtn
    Left = 624
    TabOrder = 3
    ExplicitLeft = 624
  end
  inherited btNovo: TBitBtn
    Left = 624
    TabOrder = 4
    ExplicitLeft = 624
  end
  inherited btAlterar: TBitBtn
    Left = 624
    TabOrder = 5
    ExplicitLeft = 624
  end
  inherited btExcluir: TBitBtn
    Left = 624
    TabOrder = 6
    ExplicitLeft = 624
  end
  inherited btGravar: TBitBtn
    Left = 624
    TabOrder = 7
    ExplicitLeft = 624
  end
  inherited btCancelar: TBitBtn
    Left = 624
    TabOrder = 8
    ExplicitLeft = 624
  end
  inherited btAtualizar: TBitBtn
    Left = 624
    TabOrder = 9
    ExplicitLeft = 624
  end
  inherited btLimpar: TBitBtn
    Left = 624
    TabOrder = 10
    ExplicitLeft = 624
  end
  inherited btProcurar: TBitBtn
    Left = 624
    TabOrder = 11
    ExplicitLeft = 624
  end
  inherited ToolBar1: TToolBar
    Width = 737
    TabOrder = 12
    ExplicitWidth = 737
  end
  inherited panCaption: TPanel
    Width = 737
    TabOrder = 13
    ExplicitWidth = 737
  end
  inherited sbPrincipal: TStatusBar
    Width = 737
    ExplicitWidth = 737
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
    DataField = 'eth_id'
    DataSource = dsCadastro
    ParentShowHint = False
    ReadOnly = True
    ShowHint = True
    TabOrder = 0
  end
  object dbDescricao: TDBEdit [16]
    Left = 8
    Top = 120
    Width = 604
    Height = 21
    Hint = 'Descri'#231#227'o '
    CustomHint = BalloonHint1
    DataField = 'eth_descricao'
    DataSource = dsCadastro
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
  end
  object cbTpExame: TwwDBLookupCombo [17]
    Left = 83
    Top = 72
    Width = 529
    Height = 21
    Hint = 'Tipo de Exame'
    CustomHint = BalloonHint1
    TabStop = False
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'eio_descricao'#9'30'#9'Tipo de Exame'#9'F'
      'eio_id'#9'8'#9'ID'#9'F')
    LookupTable = dmLookups.lkProcExamesTipo
    LookupField = 'eio_descricao'
    Options = [loColLines, loRowLines, loTitles]
    Color = clWhite
    ButtonEffects.Transparent = True
    ButtonEffects.Flat = True
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    AutoDropDown = True
    ShowButton = True
    PreciseEditRegion = False
    AllowClearKey = False
    ShowMatchText = True
    OnExit = cbTpExameExit
  end
  inherited dsCadastro: TDataSource
    DataSet = dmCadastros.qyExamesTipoHist
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
