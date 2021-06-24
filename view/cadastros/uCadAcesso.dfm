inherited frmCadAcesso: TfrmCadAcesso
  Caption = 'Cadastro de Acesso'
  ClientWidth = 470
  ExplicitWidth = 476
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 8
    Top = 56
    Width = 33
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'C'#243'digo'
    FocusControl = dbCodigo
  end
  object Label2: TLabel [1]
    Left = 83
    Top = 56
    Width = 46
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Descri'#231#227'o'
    FocusControl = dbDescricao
  end
  inherited btFechar: TBitBtn
    Left = 357
    ExplicitLeft = 357
  end
  inherited btNovo: TBitBtn
    Left = 357
    ExplicitLeft = 357
  end
  inherited btAlterar: TBitBtn
    Left = 357
    ExplicitLeft = 357
  end
  inherited btExcluir: TBitBtn
    Left = 357
    ExplicitLeft = 357
  end
  inherited btGravar: TBitBtn
    Left = 357
    ExplicitLeft = 357
  end
  inherited btCancelar: TBitBtn
    Left = 357
    ExplicitLeft = 357
  end
  inherited btAtualizar: TBitBtn
    Left = 357
    ExplicitLeft = 357
  end
  inherited btLimpar: TBitBtn
    Left = 357
    ExplicitLeft = 357
  end
  inherited btProcurar: TBitBtn
    Left = 357
    ExplicitLeft = 357
  end
  inherited ToolBar1: TToolBar
    Width = 470
    ExplicitWidth = 470
  end
  inherited panCaption: TPanel
    Width = 470
    ExplicitWidth = 470
  end
  inherited sbPrincipal: TStatusBar
    Width = 470
    ExplicitWidth = 470
  end
  object dbCodigo: TDBEdit [14]
    Left = 8
    Top = 72
    Width = 69
    Height = 21
    Hint = 'C'#243'digo do tipo de acesso'
    CustomHint = BalloonHint1
    TabStop = False
    Color = clBtnFace
    DataField = 'ace_codigo'
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
    Hint = 'Descri'#231#227'o do tipo de acesso'
    CustomHint = BalloonHint1
    DataField = 'ace_descricao'
    DataSource = dsCadastro
    ParentShowHint = False
    ShowHint = True
    TabOrder = 13
  end
  inherited dsCadastro: TDataSource
    DataSet = dmCadastros.qyAcesso
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
