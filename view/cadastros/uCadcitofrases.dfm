inherited frmCadcitofrases: TfrmCadcitofrases
  Caption = 'Cadastro de citofrases'
  ClientWidth = 794
  ExplicitLeft = -46
  ExplicitWidth = 800
  ExplicitHeight = 383
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 8
    Top = 58
    Width = 11
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'ID'
    FocusControl = dbID
  end
  object Label2: TLabel [1]
    Left = 8
    Top = 104
    Width = 27
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Frase'
    FocusControl = dbFrase
  end
  inherited btFechar: TBitBtn
    Left = 681
  end
  inherited btNovo: TBitBtn
    Left = 681
  end
  inherited btAlterar: TBitBtn
    Left = 681
  end
  inherited btExcluir: TBitBtn
    Left = 681
  end
  inherited btGravar: TBitBtn
    Left = 681
  end
  inherited btCancelar: TBitBtn
    Left = 681
  end
  inherited btAtualizar: TBitBtn
    Left = 681
  end
  inherited btLimpar: TBitBtn
    Left = 681
  end
  inherited btProcurar: TBitBtn
    Left = 681
    Caption = 'Procurar'
  end
  inherited ToolBar1: TToolBar
    Width = 794
  end
  inherited panCaption: TPanel
    Width = 794
  end
  inherited sbPrincipal: TStatusBar
    Width = 794
  end
  object dbID: TDBEdit [14]
    Left = 8
    Top = 77
    Width = 92
    Height = 21
    Hint = 'ID da frase de Citologia'
    CustomHint = BalloonHint1
    TabStop = False
    Color = clBtnFace
    DataField = 'ctf_id'
    DataSource = dsCadastro
    ParentShowHint = False
    ReadOnly = True
    ShowHint = True
    TabOrder = 12
  end
  object dbFrase: TDBEdit [15]
    Left = 8
    Top = 123
    Width = 667
    Height = 21
    Hint = 'Frase da Citologia'
    CustomHint = BalloonHint1
    DataField = 'ctf_frase'
    DataSource = dsCadastro
    ParentShowHint = False
    ShowHint = True
    TabOrder = 13
  end
  inherited dsCadastro: TDataSource
    DataSet = dmCadastros.qyCitofrases
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
