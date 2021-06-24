inherited frmDetExame: TfrmDetExame
  Caption = 'Detalhes do exame'
  ClientHeight = 220
  ClientWidth = 804
  ExplicitTop = 8
  ExplicitWidth = 810
  ExplicitHeight = 252
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 8
    Top = 8
    Width = 51
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Requisi'#231#227'o'
  end
  object Label2: TLabel [1]
    Left = 112
    Top = 8
    Width = 77
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Data Requisi'#231#227'o'
  end
  object Label3: TLabel [2]
    Left = 200
    Top = 8
    Width = 70
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Tipo de Exame'
  end
  object Label4: TLabel [3]
    Left = 480
    Top = 8
    Width = 45
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Conv'#234'nio'
  end
  object Label5: TLabel [4]
    Left = 8
    Top = 48
    Width = 41
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Paciente'
  end
  object Label8: TLabel [5]
    Left = 8
    Top = 88
    Width = 33
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'M'#233'dico'
  end
  object Label11: TLabel [6]
    Left = 8
    Top = 128
    Width = 34
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Origem'
  end
  object Label12: TLabel [7]
    Left = 264
    Top = 128
    Width = 36
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Destino'
  end
  object Label7: TLabel [8]
    Left = 624
    Top = 48
    Width = 28
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Idade'
  end
  object Label9: TLabel [9]
    Left = 440
    Top = 88
    Width = 43
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Matr'#237'cula'
  end
  object Label10: TLabel [10]
    Left = 624
    Top = 88
    Width = 21
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Guia'
  end
  object Label13: TLabel [11]
    Left = 520
    Top = 128
    Width = 48
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Prioridade'
  end
  object lbDtEntrega: TLabel [12]
    Left = 712
    Top = 128
    Width = 56
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Dt. Entrega'
  end
  inherited btFechar: TBitBtn
    Left = 690
    Top = 187
    ExplicitLeft = 690
    ExplicitTop = 187
  end
  object dbExame: TDBEdit [14]
    Left = 8
    Top = 24
    Width = 95
    Height = 21
    Hint = 'N'#250'mero da Requisi'#231#227'o do Exame'
    CustomHint = BalloonHint1
    TabStop = False
    Color = clBtnFace
    DataField = 'exa_id'
    DataSource = dsConsExames
    ParentShowHint = False
    ReadOnly = True
    ShowHint = True
    TabOrder = 1
  end
  object dbIdade: TDBEdit [15]
    Left = 624
    Top = 64
    Width = 33
    Height = 21
    Hint = 'Idade do Paciente'
    CustomHint = BalloonHint1
    TabStop = False
    Color = clBtnFace
    DataField = 'pac_idade'
    DataSource = dsConsExames
    ParentShowHint = False
    ReadOnly = True
    ShowHint = True
    TabOrder = 2
  end
  object dbMeses: TDBEdit [16]
    Left = 656
    Top = 64
    Width = 137
    Height = 21
    Hint = 'Idade por extenso'
    CustomHint = BalloonHint1
    TabStop = False
    Color = clBtnFace
    DataField = 'pac_meses'
    DataSource = dsConsExames
    ParentShowHint = False
    ReadOnly = True
    ShowHint = True
    TabOrder = 3
  end
  object dbMatricula: TDBEdit [17]
    Left = 440
    Top = 104
    Width = 177
    Height = 21
    Hint = 'Matr'#237'cula do exame'
    CustomHint = BalloonHint1
    TabStop = False
    Color = clBtnFace
    DataField = 'exa_matricula'
    DataSource = dsConsExames
    ParentShowHint = False
    ReadOnly = True
    ShowHint = True
    TabOrder = 4
  end
  object dbGuia: TDBEdit [18]
    Left = 624
    Top = 104
    Width = 169
    Height = 21
    Hint = 'Guia do exame'
    CustomHint = BalloonHint1
    TabStop = False
    Color = clBtnFace
    DataField = 'exa_guia'
    DataSource = dsConsExames
    ParentShowHint = False
    ReadOnly = True
    ShowHint = True
    TabOrder = 5
  end
  object cbPrioridade: TwwDBComboBox [19]
    Left = 520
    Top = 144
    Width = 185
    Height = 21
    Hint = 'Prioridade do exame'
    CustomHint = BalloonHint1
    TabStop = False
    ShowButton = True
    Style = csDropDown
    MapList = True
    AllowClearKey = False
    ShowMatchText = True
    Color = clBtnFace
    DataField = 'exa_prioridade'
    DataSource = dsConsExames
    DropDownCount = 8
    ButtonEffects.Transparent = True
    ButtonEffects.Flat = True
    ItemHeight = 0
    Items.Strings = (
      'Normal'#9'0'
      'Alta'#9'1')
    ItemIndex = 0
    ParentShowHint = False
    ReadOnly = True
    ShowHint = True
    Sorted = False
    TabOrder = 6
    UnboundDataType = wwDefault
  end
  object dbData: TDBEdit [20]
    Left = 113
    Top = 24
    Width = 81
    Height = 21
    Hint = 'Data da requisi'#231#227'o'
    CustomHint = BalloonHint1
    TabStop = False
    Color = clBtnFace
    DataField = 'exa_data'
    DataSource = dsConsExames
    ReadOnly = True
    TabOrder = 7
  end
  object cbTpExame: TwwDBLookupCombo [21]
    Left = 200
    Top = 24
    Width = 273
    Height = 21
    Hint = 'Tipo de exame solicitado'
    CustomHint = BalloonHint1
    TabStop = False
    BiDiMode = bdLeftToRight
    ParentBiDiMode = False
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'etp_tipo'#9'20'#9'Exame'#9'F'
      'etp_id'#9'8'#9'C'#243'd. Exame'#9'F')
    DataField = 'etp_tipo'
    DataSource = dsConsExames
    LookupTable = dmLookups.lkProcExamesTp
    LookupField = 'etp_tipo'
    Options = [loColLines, loRowLines, loTitles]
    Color = clBtnFace
    ButtonEffects.Transparent = True
    ButtonEffects.Flat = True
    ParentShowHint = False
    ReadOnly = True
    ShowHint = True
    TabOrder = 8
    AutoDropDown = False
    ShowButton = True
    PreciseEditRegion = False
    AllowClearKey = False
    ShowMatchText = True
  end
  object dbConvenio: TDBEdit [22]
    Left = 479
    Top = 24
    Width = 314
    Height = 21
    Hint = 'Conv'#234'nio do paciente'
    CustomHint = BalloonHint1
    TabStop = False
    Color = clBtnFace
    DataField = 'cov_descricao'
    DataSource = dsConsExames
    ReadOnly = True
    TabOrder = 9
  end
  object dbPaciente: TDBEdit [23]
    Left = 8
    Top = 64
    Width = 609
    Height = 21
    Hint = 'Nome do paciente'
    CustomHint = BalloonHint1
    TabStop = False
    Color = clBtnFace
    DataField = 'pac_nome'
    DataSource = dsConsExames
    ReadOnly = True
    TabOrder = 10
  end
  object dbMedico: TDBEdit [24]
    Left = 8
    Top = 104
    Width = 426
    Height = 21
    Hint = 'Nome do m'#233'dico'
    CustomHint = BalloonHint1
    TabStop = False
    Color = clBtnFace
    DataField = 'med_nome'
    DataSource = dsConsExames
    ReadOnly = True
    TabOrder = 11
  end
  object dbOrigem: TDBEdit [25]
    Left = 8
    Top = 144
    Width = 250
    Height = 21
    Hint = 'Origem do exame'
    CustomHint = BalloonHint1
    TabStop = False
    Color = clBtnFace
    DataField = 'exl_descricao'
    DataSource = dsConsExames
    ReadOnly = True
    TabOrder = 12
  end
  object dbDestino: TDBEdit [26]
    Left = 264
    Top = 144
    Width = 250
    Height = 21
    Hint = 'Destino do exame'
    CustomHint = BalloonHint1
    TabStop = False
    Color = clBtnFace
    DataField = 'exl_descricao_1'
    DataSource = dsConsExames
    ReadOnly = True
    TabOrder = 13
  end
  object dbDtEntrega: TDBEdit [27]
    Left = 712
    Top = 144
    Width = 81
    Height = 21
    Hint = 'Data de entrega (prioridade)'
    CustomHint = BalloonHint1
    TabStop = False
    Color = clBtnFace
    DataField = 'exa_dataprior'
    DataSource = dsConsExames
    ReadOnly = True
    TabOrder = 14
  end
  inherited BalloonHint1: TBalloonHint
    Left = 8
    Top = 176
  end
  object dsConsExames: TDataSource
    DataSet = dmConsultas.qyConsExames
    Left = 65
    Top = 178
  end
end
