inherited frmAgendamento: TfrmAgendamento
  Caption = 'Agendamento'
  ClientHeight = 256
  ClientWidth = 250
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  ExplicitWidth = 256
  ExplicitHeight = 288
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 8
    Top = 8
    Width = 23
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Data'
  end
  object Label2: TLabel [1]
    Left = 128
    Top = 8
    Width = 23
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Hora'
  end
  object Label4: TLabel [2]
    Left = 8
    Top = 48
    Width = 63
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Compromisso'
  end
  object Label3: TLabel [3]
    Left = 8
    Top = 88
    Width = 19
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Obs'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  inherited btFechar: TBitBtn
    Left = 137
    Top = 223
    TabOrder = 6
  end
  object dbData: TwwDBDateTimePicker [5]
    Left = 8
    Top = 24
    Width = 113
    Height = 21
    Hint = 'Data do compromisso'
    CustomHint = BalloonHint1
    CalendarAttributes.Font.Charset = DEFAULT_CHARSET
    CalendarAttributes.Font.Color = clWindowText
    CalendarAttributes.Font.Height = -11
    CalendarAttributes.Font.Name = 'MS Sans Serif'
    CalendarAttributes.Font.Style = []
    DataField = 'agd_data'
    DateFormat = dfLong
    DataSource = dsAgendaDia
    Epoch = 1950
    ButtonEffects.Transparent = True
    ButtonEffects.Flat = True
    ParentShowHint = False
    ShowHint = True
    ShowButton = True
    TabOrder = 0
    DisplayFormat = 'dd/mm/yyyy'
  end
  object dbHora: TDBEdit [6]
    Left = 128
    Top = 24
    Width = 57
    Height = 21
    Hint = 'Hor'#225'rio do compromisso'
    CustomHint = BalloonHint1
    DataField = 'agd_hora'
    DataSource = dsAgendaDia
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
  end
  object dbObs: TDBEdit [7]
    Left = 8
    Top = 64
    Width = 233
    Height = 21
    Hint = 'Compromisso'
    CustomHint = BalloonHint1
    DataField = 'agd_descricao'
    DataSource = dsAgendaDia
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
  end
  object memObs: TDBMemo [8]
    Left = 8
    Top = 104
    Width = 233
    Height = 89
    Hint = 'Observa'#231#245'es'#13#10'(Opcional)'
    CustomHint = BalloonHint1
    DataField = 'agd_obs'
    DataSource = dsAgendaDia
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
  end
  object cbAlerta: TDBCheckBox [9]
    Left = 8
    Top = 200
    Width = 113
    Height = 17
    Hint = 'Selecione caso queira ser avisado no hor'#225'rio.'
    CustomHint = BalloonHint1
    Caption = 'Alertar no hor'#225'rio'
    DataField = 'agd_alerta'
    DataSource = dsAgendaDia
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
    ValueChecked = 'S'
    ValueUnchecked = 'N'
  end
  object btAgendar: TBitBtn [10]
    Left = 26
    Top = 223
    Width = 105
    Height = 25
    Hint = 'Clique para gravar o compromisso'
    CustomHint = BalloonHint1
    Caption = '&Agendar'
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FF93460F93460F93460F93460FFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF93460FEEBF82
      E98E3593460FFF00FF0000000000000000000000000000000000000000000000
      00000000000000FF00FF93460F5DD270F7DAB793460FFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF93460F93460F
      93460F93460FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF93460F93460F
      93460F93460FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FF93460FEEBF82E98E3593460FFF00FF00000000000000
      0000000000000000000000000000000000000000000000FF00FF93460F5DD270
      F7DAB793460FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FF93460F93460F93460F93460FFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FF93460F93460F93460F93460FFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF93460FEEBF82
      E98E3593460FFF00FF0000000000000000000000000000000000000000000000
      00000000000000FF00FF93460F5DD270F7DAB793460FFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF93460F93460F
      93460F93460FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    ParentShowHint = False
    ShowHint = True
    TabOrder = 5
    OnClick = btAgendarClick
  end
  inherited BalloonHint1: TBalloonHint
    Left = 112
    Top = 112
  end
  object dsAgendaDia: TDataSource
    DataSet = dmGestao.qyAgendaDia
    Left = 32
    Top = 112
  end
end
