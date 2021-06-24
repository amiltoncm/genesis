inherited frmCadFuncoes: TfrmCadFuncoes
  Caption = 'Cadastro de Fun'#231#245'es'
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
  inherited btFechar: TBitBtn
    Left = 355
    ExplicitLeft = 355
  end
  inherited btNovo: TBitBtn
    Left = 355
    ExplicitLeft = 355
  end
  inherited btAlterar: TBitBtn
    Left = 355
    ExplicitLeft = 355
  end
  inherited btExcluir: TBitBtn
    Left = 355
    ExplicitLeft = 355
  end
  inherited btGravar: TBitBtn
    Left = 355
    ExplicitLeft = 355
  end
  inherited btCancelar: TBitBtn
    Left = 355
    ExplicitLeft = 355
  end
  inherited btAtualizar: TBitBtn
    Left = 355
    ExplicitLeft = 355
  end
  inherited btLimpar: TBitBtn
    Left = 355
    ExplicitLeft = 355
  end
  inherited btProcurar: TBitBtn
    Left = 355
    ExplicitLeft = 355
  end
  inherited ToolBar1: TToolBar
    Width = 468
    ExplicitWidth = 468
  end
  inherited panCaption: TPanel
    Width = 468
    ExplicitWidth = 468
  end
  inherited sbPrincipal: TStatusBar
    Width = 468
    ExplicitWidth = 468
  end
  object dbCodigo: TDBEdit [14]
    Left = 8
    Top = 72
    Width = 69
    Height = 21
    Hint = 'C'#243'digo '
    CustomHint = BalloonHint1
    TabStop = False
    Color = clBtnFace
    DataField = 'fnc_id'
    DataSource = dsCadastro
    ParentShowHint = False
    ReadOnly = True
    ShowHint = True
    TabOrder = 12
  end
  object dbDescricao: TDBEdit [15]
    Left = 83
    Top = 72
    Width = 264
    Height = 21
    Hint = 'Descri'#231#227'o '
    CustomHint = BalloonHint1
    DataField = 'fnc_descricao'
    DataSource = dsCadastro
    ParentShowHint = False
    ShowHint = True
    TabOrder = 13
  end
  inherited dsCadastro: TDataSource
    DataSet = dmCadastros.qyFuncoes
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
