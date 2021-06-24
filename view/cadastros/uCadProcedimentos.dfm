inherited frmCadProcedimentos: TfrmCadProcedimentos
  Caption = 'Cadastro de Procedimentos (Tabela de pre'#231'os)'
  ClientWidth = 552
  ExplicitWidth = 558
  ExplicitHeight = 383
  PixelsPerInch = 96
  TextHeight = 13
  object lbCodigo: TLabel [0]
    Left = 8
    Top = 56
    Width = 25
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'TUSS'
    FocusControl = dbCodigo
  end
  object lbDescricao: TLabel [1]
    Left = 106
    Top = 56
    Width = 46
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Descri'#231#227'o'
    FocusControl = dbDescricao
  end
  object Label3: TLabel [2]
    Left = 8
    Top = 100
    Width = 22
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'AMR'
  end
  object Label4: TLabel [3]
    Left = 96
    Top = 100
    Width = 71
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Descri'#231#227'o AMR'
  end
  object Label5: TLabel [4]
    Left = 8
    Top = 140
    Width = 42
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Vlr. Hora'
  end
  object Label6: TLabel [5]
    Left = 112
    Top = 140
    Width = 66
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Vlr. Opera'#231#227'o'
  end
  object Label7: TLabel [6]
    Left = 216
    Top = 140
    Width = 43
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Vlr. Filme'
  end
  object Label8: TLabel [7]
    Left = 328
    Top = 140
    Width = 43
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Vlr. Total'
  end
  inherited btFechar: TBitBtn
    Left = 439
    ExplicitLeft = 439
  end
  inherited btNovo: TBitBtn
    Left = 439
    ExplicitLeft = 439
  end
  inherited btAlterar: TBitBtn
    Left = 439
    ExplicitLeft = 439
  end
  inherited btExcluir: TBitBtn
    Left = 439
    ExplicitLeft = 439
  end
  inherited btGravar: TBitBtn
    Left = 439
    ExplicitLeft = 439
  end
  inherited btCancelar: TBitBtn
    Left = 439
    ExplicitLeft = 439
  end
  inherited btAtualizar: TBitBtn
    Left = 439
    ExplicitLeft = 439
  end
  inherited btLimpar: TBitBtn
    Left = 439
    ExplicitLeft = 439
  end
  inherited btProcurar: TBitBtn
    Left = 439
    ExplicitLeft = 439
  end
  inherited ToolBar1: TToolBar
    Width = 552
    ExplicitWidth = 552
  end
  inherited panCaption: TPanel
    Width = 552
    ExplicitWidth = 552
  end
  inherited sbPrincipal: TStatusBar
    Width = 552
    ExplicitWidth = 552
  end
  object dbCodigo: TDBEdit [20]
    Left = 8
    Top = 72
    Width = 92
    Height = 21
    Hint = 'C'#243'digo '
    CustomHint = BalloonHint1
    TabStop = False
    DataField = 'prc_tuss'
    DataSource = dsCadastro
    ParentShowHint = False
    ShowHint = True
    TabOrder = 12
    OnExit = dbCodigoExit
  end
  object dbDescricao: TDBEdit [21]
    Left = 106
    Top = 72
    Width = 327
    Height = 21
    Hint = 'Descri'#231#227'o '
    CustomHint = BalloonHint1
    DataField = 'prc_descricao'
    DataSource = dsCadastro
    ParentShowHint = False
    ShowHint = True
    TabOrder = 13
    OnExit = dbDescricaoExit
  end
  object dbAMR: TDBEdit [22]
    Left = 8
    Top = 116
    Width = 81
    Height = 21
    Hint = 'C'#243'digo AMR'
    CustomHint = BalloonHint1
    DataField = 'prc_amr'
    DataSource = dsCadastro
    ParentShowHint = False
    ShowHint = True
    TabOrder = 14
  end
  object dbDescAnt: TDBEdit [23]
    Left = 96
    Top = 116
    Width = 337
    Height = 21
    Hint = 'Descri'#231#227'o antiga'
    CustomHint = BalloonHint1
    DataField = 'prc_descant'
    DataSource = dsCadastro
    ParentShowHint = False
    ShowHint = True
    TabOrder = 15
  end
  object dbVlrHora: TDBEdit [24]
    Left = 8
    Top = 156
    Width = 97
    Height = 21
    Hint = 'Valor hora'
    CustomHint = BalloonHint1
    DataField = 'prc_vlrhora'
    DataSource = dsCadastro
    ParentShowHint = False
    ShowHint = True
    TabOrder = 16
    OnExit = dbVlrHoraExit
  end
  object dbVlrOper: TDBEdit [25]
    Left = 112
    Top = 156
    Width = 97
    Height = 21
    Hint = 'Valor opera'#231#227'o'
    CustomHint = BalloonHint1
    DataField = 'prc_vlroper'
    DataSource = dsCadastro
    ParentShowHint = False
    ShowHint = True
    TabOrder = 17
    OnExit = dbVlrOperExit
  end
  object dbVlrFilme: TDBEdit [26]
    Left = 216
    Top = 156
    Width = 106
    Height = 21
    Hint = 'Valor filme'
    CustomHint = BalloonHint1
    DataField = 'prc_vlrfilme'
    DataSource = dsCadastro
    ParentShowHint = False
    ShowHint = True
    TabOrder = 18
    OnExit = dbVlrFilmeExit
  end
  object dbVlrTotal: TDBEdit [27]
    Left = 328
    Top = 156
    Width = 105
    Height = 21
    Hint = 'Valor total'
    CustomHint = BalloonHint1
    TabStop = False
    Color = clBtnFace
    DataField = 'prc_vlrtotal'
    DataSource = dsCadastro
    ParentShowHint = False
    ReadOnly = True
    ShowHint = True
    TabOrder = 19
  end
  inherited dsCadastro: TDataSource
    DataSet = dmCadastros.qyProcedimentos
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
