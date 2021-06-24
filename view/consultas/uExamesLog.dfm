inherited frmExamesLog: TfrmExamesLog
  Caption = 'frmExamesLog'
  ClientHeight = 513
  ClientWidth = 488
  ExplicitWidth = 494
  ExplicitHeight = 545
  PixelsPerInch = 96
  TextHeight = 13
  inherited btFechar: TBitBtn
    Left = 375
    Top = 480
    ExplicitLeft = 375
    ExplicitTop = 480
  end
  object Panel5: TPanel [1]
    Left = 5
    Top = 8
    Width = 476
    Height = 57
    CustomHint = BalloonHint1
    BevelInner = bvLowered
    Color = clInfoBk
    TabOrder = 1
    object Label29: TLabel
      Left = 8
      Top = 8
      Width = 128
      Height = 13
      CustomHint = BalloonHint1
      Caption = 'Etapa atual do exame:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbEtapaAtual: TLabel
      Left = 144
      Top = 8
      Width = 61
      Height = 13
      CustomHint = BalloonHint1
      Caption = 'lbEtapaAtual'
    end
    object Label30: TLabel
      Left = 8
      Top = 32
      Width = 97
      Height = 13
      CustomHint = BalloonHint1
      Caption = #218'ltima altera'#231#227'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbUltAlt: TLabel
      Left = 144
      Top = 32
      Width = 34
      Height = 13
      CustomHint = BalloonHint1
      Caption = 'lbUltAlt'
    end
  end
  object wwDBGrid1: TwwDBGrid [2]
    Left = 5
    Top = 70
    Width = 474
    Height = 401
    Hint = 'Resultado da pesquisa'
    CustomHint = BalloonHint1
    TabStop = False
    IniAttributes.FileName = 'genesis'
    IniAttributes.SectionName = 'telasgrid'
    IniAttributes.Delimiter = '#'
    IniAttributes.CheckNewFields = True
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    BorderStyle = bsNone
    DataSource = dsExamesLog
    KeyOptions = []
    ParentShowHint = False
    ReadOnly = True
    ShowHint = False
    TabOrder = 2
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = True
  end
  inherited BalloonHint1: TBalloonHint
    Left = 336
    Top = 328
  end
  object dsExamesLog: TDataSource
    DataSet = dmConsultas.qyConsLogs
    Left = 285
    Top = 24
  end
end
