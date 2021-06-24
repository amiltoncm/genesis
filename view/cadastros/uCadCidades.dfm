inherited frmCadCidades: TfrmCadCidades
  Caption = 'Cadastro de Cidades'
  ClientWidth = 469
  ExplicitWidth = 475
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
  object Label3: TLabel [2]
    Left = 8
    Top = 100
    Width = 33
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Estado'
  end
  object Label4: TLabel [3]
    Left = 8
    Top = 144
    Width = 58
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'CEP Padr'#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  inherited btFechar: TBitBtn
    Left = 356
    TabOrder = 5
    ExplicitLeft = 356
  end
  inherited btNovo: TBitBtn
    Left = 356
    TabOrder = 6
    ExplicitLeft = 356
  end
  inherited btAlterar: TBitBtn
    Left = 356
    TabOrder = 7
    ExplicitLeft = 356
  end
  inherited btExcluir: TBitBtn
    Left = 356
    TabOrder = 8
    ExplicitLeft = 356
  end
  inherited btGravar: TBitBtn
    Left = 356
    TabOrder = 9
    ExplicitLeft = 356
  end
  inherited btCancelar: TBitBtn
    Left = 356
    TabOrder = 10
    ExplicitLeft = 356
  end
  inherited btAtualizar: TBitBtn
    Left = 356
    TabOrder = 11
    ExplicitLeft = 356
  end
  inherited btLimpar: TBitBtn
    Left = 356
    TabOrder = 12
    ExplicitLeft = 356
  end
  inherited btProcurar: TBitBtn
    Left = 356
    TabOrder = 13
    ExplicitLeft = 356
  end
  inherited ToolBar1: TToolBar
    Width = 469
    TabOrder = 14
    ExplicitWidth = 469
  end
  inherited panCaption: TPanel
    Width = 469
    TabOrder = 15
    ExplicitWidth = 469
  end
  inherited sbPrincipal: TStatusBar
    Width = 469
    ExplicitWidth = 469
  end
  object dbCodigo: TDBEdit [16]
    Left = 8
    Top = 72
    Width = 69
    Height = 21
    Hint = 'C'#243'digo '
    CustomHint = BalloonHint1
    DataField = 'cid_codigo'
    DataSource = dsCadastro
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
  end
  object dbDescricao: TDBEdit [17]
    Left = 83
    Top = 72
    Width = 264
    Height = 21
    Hint = 'Descri'#231#227'o '
    CustomHint = BalloonHint1
    DataField = 'cid_cidade'
    DataSource = dsCadastro
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
  end
  object cbSigla: TwwDBLookupCombo [18]
    Left = 8
    Top = 116
    Width = 65
    Height = 21
    Hint = 'Selecione ou digite a sigla do estado'
    CustomHint = BalloonHint1
    Ctl3D = True
    CharCase = ecUpperCase
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'uf_sigla'#9'2'#9'Sigla'#9'F'
      'uf_estado'#9'25'#9'Estado'#9'F')
    DataField = 'uf_sigla'
    DataSource = dsCadastro
    LookupField = 'uf_sigla'
    Options = [loColLines, loRowLines, loTitles]
    Color = clInfoBk
    ButtonEffects.Transparent = True
    ButtonEffects.Flat = True
    ParentCtl3D = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    AutoDropDown = False
    ShowButton = True
    SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
    PreciseEditRegion = False
    AllowClearKey = False
    ShowMatchText = True
  end
  object dbEstado: TDBEdit [19]
    Left = 72
    Top = 116
    Width = 275
    Height = 21
    Hint = 'estado selecionado'
    CustomHint = BalloonHint1
    TabStop = False
    Color = clBtnFace
    DataField = 'uf_estado'
    DataSource = dsCadastro
    ParentShowHint = False
    ReadOnly = True
    ShowHint = True
    TabOrder = 3
  end
  object dbCepPadrao: TDBEdit [20]
    Left = 8
    Top = 163
    Width = 89
    Height = 21
    Hint = 'Digite o CEP padr'#227'o da cidade (opcional)'
    CustomHint = BalloonHint1
    DataField = 'cid_ceppadrao'
    DataSource = dsCadastro
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
  end
  inherited dsCadastro: TDataSource
    DataSet = dmCadastros.qyCidades
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
