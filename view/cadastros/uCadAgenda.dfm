inherited frmCadAgenda: TfrmCadAgenda
  Caption = 'Cadastro de Agenda'
  ClientWidth = 442
  ExplicitWidth = 448
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
    Width = 27
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Nome'
    FocusControl = dbDescricao
  end
  object Label1: TLabel [2]
    Left = 8
    Top = 99
    Width = 42
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Telefone'
    FocusControl = dbTelefone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel [3]
    Left = 114
    Top = 99
    Width = 79
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Fax / Telefone 2'
    FocusControl = dbFax
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel [4]
    Left = 220
    Top = 99
    Width = 33
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Celular'
    FocusControl = dbCelular
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel [5]
    Left = 8
    Top = 141
    Width = 28
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'e-mail'
    FocusControl = dbEmail
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel [6]
    Left = 8
    Top = 185
    Width = 54
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Home page'
    FocusControl = dbHomePage
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel [7]
    Left = 8
    Top = 227
    Width = 19
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'msn'
    FocusControl = dbMSN
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel [8]
    Left = 8
    Top = 270
    Width = 29
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Skype'
    FocusControl = dbSkype
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  inherited btFechar: TBitBtn
    Left = 329
    TabOrder = 9
    ExplicitLeft = 329
  end
  inherited btNovo: TBitBtn
    Left = 329
    TabOrder = 10
    ExplicitLeft = 329
  end
  inherited btAlterar: TBitBtn
    Left = 329
    TabOrder = 11
    ExplicitLeft = 329
  end
  inherited btExcluir: TBitBtn
    Left = 329
    TabOrder = 12
    ExplicitLeft = 329
  end
  inherited btGravar: TBitBtn
    Left = 329
    TabOrder = 13
    ExplicitLeft = 329
  end
  inherited btCancelar: TBitBtn
    Left = 329
    TabOrder = 14
    ExplicitLeft = 329
  end
  inherited btAtualizar: TBitBtn
    Left = 329
    TabOrder = 15
    ExplicitLeft = 329
  end
  inherited btLimpar: TBitBtn
    Left = 329
    TabOrder = 16
    ExplicitLeft = 329
  end
  inherited btProcurar: TBitBtn
    Left = 329
    TabOrder = 17
    ExplicitLeft = 329
  end
  inherited ToolBar1: TToolBar
    Width = 442
    TabOrder = 18
    ExplicitWidth = 442
  end
  inherited panCaption: TPanel
    Width = 442
    TabOrder = 19
    ExplicitWidth = 442
  end
  inherited sbPrincipal: TStatusBar
    Width = 442
    ExplicitWidth = 442
  end
  object dbCodigo: TDBEdit [21]
    Left = 8
    Top = 72
    Width = 69
    Height = 21
    Hint = 'C'#243'digo '
    CustomHint = BalloonHint1
    TabStop = False
    Color = clBtnFace
    DataField = 'age_codigo'
    DataSource = dsCadastro
    ParentShowHint = False
    ReadOnly = True
    ShowHint = True
    TabOrder = 0
  end
  object dbDescricao: TDBEdit [22]
    Left = 83
    Top = 72
    Width = 237
    Height = 21
    Hint = 'Nome do contato'
    CustomHint = BalloonHint1
    DataField = 'age_nome'
    DataSource = dsCadastro
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
  end
  object dbTelefone: TDBEdit [23]
    Left = 8
    Top = 114
    Width = 100
    Height = 21
    Hint = 'Telefone do contato'
    CustomHint = BalloonHint1
    DataField = 'age_telefone'
    DataSource = dsCadastro
    TabOrder = 2
  end
  object dbFax: TDBEdit [24]
    Left = 114
    Top = 114
    Width = 100
    Height = 21
    Hint = 'Fax do contato'
    CustomHint = BalloonHint1
    DataField = 'age_fax'
    DataSource = dsCadastro
    TabOrder = 3
  end
  object dbCelular: TDBEdit [25]
    Left = 220
    Top = 114
    Width = 100
    Height = 21
    Hint = 'Celular do contato'
    CustomHint = BalloonHint1
    DataField = 'age_celular'
    DataSource = dsCadastro
    TabOrder = 4
  end
  object dbEmail: TDBEdit [26]
    Left = 8
    Top = 160
    Width = 312
    Height = 21
    Hint = 'e-mail do contato'
    CustomHint = BalloonHint1
    DataField = 'age_email'
    DataSource = dsCadastro
    TabOrder = 5
  end
  object dbHomePage: TDBEdit [27]
    Left = 8
    Top = 200
    Width = 312
    Height = 21
    Hint = 'Home page do contato'
    CustomHint = BalloonHint1
    DataField = 'age_homepage'
    DataSource = dsCadastro
    TabOrder = 6
  end
  object dbMSN: TDBEdit [28]
    Left = 8
    Top = 243
    Width = 312
    Height = 21
    Hint = 'msn do contato'
    CustomHint = BalloonHint1
    DataField = 'age_msn'
    DataSource = dsCadastro
    TabOrder = 7
  end
  object dbSkype: TDBEdit [29]
    Left = 8
    Top = 287
    Width = 312
    Height = 21
    Hint = 'Skype do contato'
    CustomHint = BalloonHint1
    DataField = 'age_skype'
    DataSource = dsCadastro
    TabOrder = 8
  end
  inherited dsCadastro: TDataSource
    DataSet = dmCadastros.qyAgenda
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
