inherited frmCadExamesTipoCito: TfrmCadExamesTipoCito
  Caption = 'Cadastro de Tipos de exame (Citologia)'
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
    Width = 24
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Local'
    FocusControl = dbDescricao
  end
  object Label1: TLabel [2]
    Left = 8
    Top = 99
    Width = 46
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Descri'#231#227'o'
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
    DataField = 'eto_id'
    DataSource = dsCadastro
    ParentShowHint = False
    ReadOnly = True
    ShowHint = True
    TabOrder = 12
  end
  object dbDescricao: TDBEdit [16]
    Left = 83
    Top = 72
    Width = 371
    Height = 21
    Hint = 'Descri'#231#227'o '
    CustomHint = BalloonHint1
    DataField = 'eto_local'
    DataSource = dsCadastro
    ParentShowHint = False
    ShowHint = True
    TabOrder = 13
  end
  object dbEtoDescricao: TDBEdit [17]
    Left = 8
    Top = 113
    Width = 446
    Height = 21
    CustomHint = BalloonHint1
    DataField = 'eto_descricao'
    DataSource = dsCadastro
    TabOrder = 14
  end
  inherited dsCadastro: TDataSource
    DataSet = dmCadastros.qyExamesTipoCito
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
