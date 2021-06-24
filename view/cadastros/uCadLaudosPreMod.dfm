inherited frmCadLaudosPreMod: TfrmCadLaudosPreMod
  Caption = 'Cadastro Pr'#233' Modelos (Laudo)'
  ClientHeight = 484
  ClientWidth = 518
  ExplicitTop = -58
  ExplicitWidth = 524
  ExplicitHeight = 509
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 8
    Top = 58
    Width = 33
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'C'#243'digo'
  end
  object Label2: TLabel [1]
    Left = 60
    Top = 58
    Width = 46
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Descri'#231#227'o'
  end
  object Label3: TLabel [2]
    Left = 8
    Top = 104
    Width = 54
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Pr'#233'-modelo'
  end
  object Label4: TLabel [3]
    Left = 8
    Top = 287
    Width = 55
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Diagn'#243'stico'
  end
  object Label5: TLabel [4]
    Left = 68
    Top = 104
    Width = 204
    Height = 13
    CustomHint = BalloonHint1
    Caption = '(Clique duplo para abrir o editor de texto).'
    Enabled = False
  end
  object Label6: TLabel [5]
    Left = 69
    Top = 287
    Width = 204
    Height = 13
    CustomHint = BalloonHint1
    Caption = '(Clique duplo para abrir o editor de texto).'
    Enabled = False
  end
  inherited btFechar: TBitBtn
    Left = 405
    Top = 434
    ExplicitLeft = 408
    ExplicitTop = 434
  end
  inherited btNovo: TBitBtn
    Left = 405
    ExplicitLeft = 408
  end
  inherited btAlterar: TBitBtn
    Left = 405
    ExplicitLeft = 408
  end
  inherited btExcluir: TBitBtn
    Left = 405
    ExplicitLeft = 408
  end
  inherited btGravar: TBitBtn
    Left = 405
    ExplicitLeft = 408
  end
  inherited btCancelar: TBitBtn
    Left = 405
    ExplicitLeft = 408
  end
  inherited btAtualizar: TBitBtn
    Left = 405
    ExplicitLeft = 408
  end
  inherited btLimpar: TBitBtn
    Left = 405
    ExplicitLeft = 408
  end
  inherited btProcurar: TBitBtn
    Left = 405
    ExplicitLeft = 408
  end
  inherited ToolBar1: TToolBar
    Width = 518
    ExplicitWidth = 518
  end
  inherited panCaption: TPanel
    Width = 518
    ExplicitWidth = 521
  end
  inherited sbPrincipal: TStatusBar
    Top = 465
    Width = 518
    ExplicitTop = 465
    ExplicitWidth = 521
  end
  object dbCodigo: TDBEdit [18]
    Left = 8
    Top = 77
    Width = 46
    Height = 21
    CustomHint = BalloonHint1
    TabStop = False
    DataField = 'lpm_codigo'
    DataSource = dsCadastro
    ReadOnly = True
    TabOrder = 12
  end
  object dbDescricao: TDBEdit [19]
    Left = 60
    Top = 77
    Width = 339
    Height = 21
    CustomHint = BalloonHint1
    DataField = 'lpm_descricao'
    DataSource = dsCadastro
    TabOrder = 13
  end
  object dbMemModelo: TDBMemo [20]
    Left = 8
    Top = 123
    Width = 391
    Height = 158
    CustomHint = BalloonHint1
    DataField = 'lpm_modelo'
    DataSource = dsCadastro
    TabOrder = 14
  end
  object dbMemDiag: TDBMemo [21]
    Left = 8
    Top = 306
    Width = 391
    Height = 153
    CustomHint = BalloonHint1
    DataField = 'lpm_diagnostico'
    DataSource = dsCadastro
    TabOrder = 15
  end
  inherited dsCadastro: TDataSource
    DataSet = dmCadastros.qyLaudosPreMod
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
