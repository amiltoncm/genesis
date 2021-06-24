inherited frmCadUf: TfrmCadUf
  Caption = 'Cadastro de Uf'
  ClientWidth = 494
  ExplicitWidth = 500
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
    Left = 108
    Top = 56
    Width = 46
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Descri'#231#227'o'
    FocusControl = dbDescricao
  end
  object Label1: TLabel [2]
    Left = 71
    Top = 56
    Width = 22
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Sigla'
  end
  inherited btFechar: TBitBtn
    Left = 381
    TabOrder = 3
    ExplicitLeft = 381
  end
  inherited btNovo: TBitBtn
    Left = 381
    TabOrder = 4
    ExplicitLeft = 381
  end
  inherited btAlterar: TBitBtn
    Left = 381
    TabOrder = 5
    ExplicitLeft = 381
  end
  inherited btExcluir: TBitBtn
    Left = 381
    TabOrder = 6
    ExplicitLeft = 381
  end
  inherited btGravar: TBitBtn
    Left = 381
    TabOrder = 7
    ExplicitLeft = 381
  end
  inherited btCancelar: TBitBtn
    Left = 381
    TabOrder = 8
    ExplicitLeft = 381
  end
  inherited btAtualizar: TBitBtn
    Left = 381
    TabOrder = 9
    ExplicitLeft = 381
  end
  inherited btLimpar: TBitBtn
    Left = 381
    TabOrder = 10
    ExplicitLeft = 381
  end
  inherited btProcurar: TBitBtn
    Left = 381
    TabOrder = 11
    ExplicitLeft = 381
  end
  inherited ToolBar1: TToolBar
    Width = 494
    TabOrder = 12
    ExplicitWidth = 494
  end
  inherited panCaption: TPanel
    Width = 494
    TabOrder = 13
    ExplicitWidth = 494
  end
  inherited sbPrincipal: TStatusBar
    Width = 494
    ExplicitWidth = 494
  end
  object dbCodigo: TDBEdit [15]
    Left = 8
    Top = 72
    Width = 57
    Height = 21
    Hint = 'C'#243'digo '
    CustomHint = BalloonHint1
    TabStop = False
    DataField = 'uf_codigo'
    DataSource = dsCadastro
    ParentShowHint = False
    ReadOnly = True
    ShowHint = True
    TabOrder = 0
  end
  object dbDescricao: TDBEdit [16]
    Left = 108
    Top = 72
    Width = 264
    Height = 21
    Hint = 'Descri'#231#227'o '
    CustomHint = BalloonHint1
    DataField = 'uf_estado'
    DataSource = dsCadastro
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
  end
  object DBEdit1: TDBEdit [17]
    Left = 71
    Top = 72
    Width = 31
    Height = 21
    CustomHint = BalloonHint1
    DataField = 'uf_sigla'
    DataSource = dsCadastro
    TabOrder = 1
  end
  inherited dsCadastro: TDataSource
    DataSet = dmCadastros.qyUf
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
