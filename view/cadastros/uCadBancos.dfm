inherited frmCadBancos: TfrmCadBancos
  Caption = 'Cadastro de Bancos'
  ClientWidth = 761
  ExplicitWidth = 767
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
    Left = 648
    ExplicitLeft = 648
  end
  inherited btNovo: TBitBtn
    Left = 648
    ExplicitLeft = 648
  end
  inherited btAlterar: TBitBtn
    Left = 648
    ExplicitLeft = 648
  end
  inherited btExcluir: TBitBtn
    Left = 648
    ExplicitLeft = 648
  end
  inherited btGravar: TBitBtn
    Left = 648
    ExplicitLeft = 648
  end
  inherited btCancelar: TBitBtn
    Left = 648
    ExplicitLeft = 648
  end
  inherited btAtualizar: TBitBtn
    Left = 648
    ExplicitLeft = 648
  end
  inherited btLimpar: TBitBtn
    Left = 648
    ExplicitLeft = 648
  end
  inherited btProcurar: TBitBtn
    Left = 648
    ExplicitLeft = 648
  end
  inherited ToolBar1: TToolBar
    Width = 761
    ExplicitWidth = 761
  end
  inherited panCaption: TPanel
    Width = 761
    ExplicitWidth = 761
  end
  inherited sbPrincipal: TStatusBar
    Width = 761
    ExplicitWidth = 761
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
    DataField = 'ban_codigo'
    DataSource = dsCadastro
    ParentShowHint = False
    ShowHint = True
    TabOrder = 12
  end
  object dbDescricao: TDBEdit [15]
    Left = 83
    Top = 72
    Width = 559
    Height = 21
    Hint = 'Descri'#231#227'o '
    CustomHint = BalloonHint1
    DataField = 'ban_descricao'
    DataSource = dsCadastro
    ParentShowHint = False
    ShowHint = True
    TabOrder = 13
  end
  inherited dsCadastro: TDataSource
    DataSet = dmCadastros.qyBancos
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
