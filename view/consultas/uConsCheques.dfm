inherited frmConsCheques: TfrmConsCheques
  Caption = 'Consulta cheques'
  ClientWidth = 988
  ExplicitLeft = -136
  ExplicitWidth = 994
  PixelsPerInch = 96
  TextHeight = 13
  inherited lbParametro: TLabel
    Width = 30
    Caption = 'Titular'
    ExplicitWidth = 30
  end
  object Label2: TLabel [1]
    Left = 369
    Top = 8
    Width = 45
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Dt. Inicial'
  end
  object Label3: TLabel [2]
    Left = 465
    Top = 8
    Width = 40
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Dt. Final'
  end
  object Label4: TLabel [3]
    Left = 561
    Top = 8
    Width = 33
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Estado'
  end
  object Label5: TLabel [4]
    Left = 8
    Top = 386
    Width = 111
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Cheques compensados'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel [5]
    Left = 8
    Top = 402
    Width = 92
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Cheques em aberto'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  inherited btFechar: TBitBtn
    Left = 875
    TabOrder = 8
    ExplicitLeft = 875
  end
  inherited btFiltrar: TBitBtn
    Left = 664
    TabOrder = 4
    OnClick = btFiltrarClick
    ExplicitLeft = 664
  end
  inherited btLimpar: TBitBtn
    Left = 775
    TabOrder = 5
    OnClick = btLimparClick
    ExplicitLeft = 775
  end
  inherited edParametro: TEdit
    Width = 355
    ExplicitWidth = 355
  end
  inherited GridConsulta: TDBGrid
    Width = 972
    TabOrder = 6
    Columns = <
      item
        Expanded = False
        FieldName = 'chq_lancamento'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'chq_vencimento'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'chq_titular'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'chq_valor'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ban_codigo'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'ban_descricao'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'chq_conta'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'chq_numcheque'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'chq_emissao'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'chq_referente'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'chq_endosso'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'chq_telefone'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'chq_doc'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'chq_repasse'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'chq_estado'
        Visible = False
      end>
  end
  inherited btSelecionar: TBitBtn
    Left = 764
    TabOrder = 7
    Visible = False
    ExplicitLeft = 764
  end
  object edInicio: TwwDBDateTimePicker [12]
    Left = 369
    Top = 24
    Width = 89
    Height = 19
    Hint = 'Selecione ou digite a a data'
    CustomHint = BalloonHint1
    BorderStyle = bsNone
    CalendarAttributes.Font.Charset = DEFAULT_CHARSET
    CalendarAttributes.Font.Color = clWindowText
    CalendarAttributes.Font.Height = -11
    CalendarAttributes.Font.Name = 'MS Sans Serif'
    CalendarAttributes.Font.Style = []
    Epoch = 1950
    ButtonEffects.Transparent = True
    ButtonEffects.Flat = True
    ParentShowHint = False
    ShowHint = False
    ShowButton = True
    TabOrder = 1
    DisplayFormat = 'dd/mm/yyyy'
  end
  object edFinal: TwwDBDateTimePicker [13]
    Left = 465
    Top = 24
    Width = 89
    Height = 19
    Hint = 'Selecione ou digite a a data'
    CustomHint = BalloonHint1
    BorderStyle = bsNone
    CalendarAttributes.Font.Charset = DEFAULT_CHARSET
    CalendarAttributes.Font.Color = clWindowText
    CalendarAttributes.Font.Height = -11
    CalendarAttributes.Font.Name = 'MS Sans Serif'
    CalendarAttributes.Font.Style = []
    Epoch = 1950
    ButtonEffects.Transparent = True
    ButtonEffects.Flat = True
    ParentShowHint = False
    ShowHint = False
    ShowButton = True
    TabOrder = 2
    DisplayFormat = 'dd/mm/yyyy'
  end
  object cbEstado: TwwDBComboBox [14]
    Left = 561
    Top = 24
    Width = 97
    Height = 19
    Hint = 'Selecione o estado do Cheque'
    CustomHint = BalloonHint1
    ShowButton = True
    Style = csDropDown
    MapList = True
    AllowClearKey = False
    BorderStyle = bsNone
    DropDownCount = 8
    ButtonEffects.Transparent = True
    ButtonEffects.Flat = True
    ItemHeight = 0
    Items.Strings = (
      'Aberto'#9'A'
      'Compensado'#9'C'
      'Todos'#9'T')
    ItemIndex = 0
    ParentShowHint = False
    ShowHint = False
    Sorted = False
    TabOrder = 3
    UnboundDataType = wwDefault
  end
  inherited BalloonHint1: TBalloonHint
    Left = 88
    Top = 152
  end
  inherited dsConsulta: TDataSource
    DataSet = dmFinanceiro.qyCheques
  end
end
