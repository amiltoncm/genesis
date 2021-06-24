inherited frmRelListagem: TfrmRelListagem
  Caption = 'Relat'#243'rio - Listagem de Exames'
  ClientHeight = 210
  ExplicitWidth = 369
  ExplicitHeight = 235
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel [2]
    Left = 8
    Top = 40
    Width = 281
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Selecione o tipo de exame, ou deixe em branco para todos'
  end
  object Label1: TLabel [3]
    Left = 8
    Top = 117
    Width = 51
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Data inicial'
  end
  object Label2: TLabel [4]
    Left = 112
    Top = 117
    Width = 48
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Data Final'
  end
  inherited btFechar: TBitBtn
    Top = 177
    TabOrder = 6
  end
  inherited btVisualizar: TBitBtn
    Top = 177
    TabOrder = 4
  end
  inherited btImprimir: TBitBtn
    Top = 177
    TabOrder = 5
  end
  object cbExamesTp: TwwDBLookupCombo [8]
    Left = 8
    Top = 56
    Width = 347
    Height = 21
    Hint = 'Selecione o tipo'
    CustomHint = BalloonHint1
    DropDownAlignment = taLeftJustify
    LookupTable = dmLookups.lkProcExamesTp
    LookupField = 'etp_tipo'
    Options = [loColLines, loRowLines, loTitles]
    ButtonEffects.Transparent = True
    ButtonEffects.Flat = True
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    AutoDropDown = False
    ShowButton = True
    PreciseEditRegion = False
    AllowClearKey = False
    ShowMatchText = True
  end
  object cbCitologias: TCheckBox [9]
    Left = 8
    Top = 88
    Width = 169
    Height = 17
    CustomHint = BalloonHint1
    Caption = 'Todos os tipos de Citologias'
    TabOrder = 1
    OnClick = cbCitologiasClick
  end
  object edDtInicial: TwwDBDateTimePicker [10]
    Left = 8
    Top = 133
    Width = 97
    Height = 21
    Hint = 'Data de requisi'#231#227'o do exame (inicial)'
    CustomHint = BalloonHint1
    CalendarAttributes.Font.Charset = DEFAULT_CHARSET
    CalendarAttributes.Font.Color = clWindowText
    CalendarAttributes.Font.Height = -11
    CalendarAttributes.Font.Name = 'MS Sans Serif'
    CalendarAttributes.Font.Style = []
    DateFormat = dfLong
    Epoch = 1950
    ButtonEffects.Transparent = True
    ButtonEffects.Flat = True
    ShowButton = True
    TabOrder = 2
    UnboundDataType = wwDTEdtDate
    DisplayFormat = 'dd/mm/yyyy'
  end
  object edDtFinal: TwwDBDateTimePicker [11]
    Left = 112
    Top = 133
    Width = 97
    Height = 21
    Hint = 'Data de requisi'#231#227'o do exame (final)'
    CustomHint = BalloonHint1
    CalendarAttributes.Font.Charset = DEFAULT_CHARSET
    CalendarAttributes.Font.Color = clWindowText
    CalendarAttributes.Font.Height = -11
    CalendarAttributes.Font.Name = 'MS Sans Serif'
    CalendarAttributes.Font.Style = []
    DateFormat = dfLong
    Epoch = 1950
    ButtonEffects.Transparent = True
    ButtonEffects.Flat = True
    ShowButton = True
    TabOrder = 3
    UnboundDataType = wwDTEdtDate
    DisplayFormat = 'dd/mm/yyyy'
  end
  inherited Relatorio: TppReport
    PrinterSetup.DocumentName = 'Relat'#243'rio - Listagem de Exames'
    DataPipelineName = 'dbDados'
    inherited ppTitleBand1: TppTitleBand
      inherited ppNomeRel: TppSystemVariable
        SaveOrder = -1
        LayerName = Foreground
      end
    end
    inherited ppHeaderBand1: TppHeaderBand
      inherited ppLinha1: TppLine
        LayerName = Foreground
      end
      inherited ppLinha2: TppLine
        LayerName = Foreground
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'ID Exame'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 1058
        mmWidth = 15875
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'Paciente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 23548
        mmTop = 1058
        mmWidth = 14552
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'Conv'#234'nio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 111125
        mmTop = 1058
        mmWidth = 16140
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = 'Dt. entrada'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 164042
        mmTop = 1058
        mmWidth = 18256
        BandType = 0
        LayerName = Foreground
      end
    end
    inherited ppDetailBand1: TppDetailBand
      inherited ppLinha3: TppLine
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'exa_id'
        DataPipeline = dbDados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbDados'
        mmHeight = 3969
        mmLeft = 0
        mmTop = 265
        mmWidth = 22490
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'pac_nome'
        DataPipeline = dbDados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbDados'
        mmHeight = 3969
        mmLeft = 23548
        mmTop = 265
        mmWidth = 86254
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'cov_descricao'
        DataPipeline = dbDados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbDados'
        mmHeight = 3969
        mmLeft = 111125
        mmTop = 265
        mmWidth = 51065
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'exa_data'
        DataPipeline = dbDados
        DisplayFormat = 'dd/mm/yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbDados'
        mmHeight = 3969
        mmLeft = 164042
        mmTop = 265
        mmWidth = 23813
        BandType = 4
        LayerName = Foreground
      end
    end
    inherited ppFooterBand1: TppFooterBand
      inherited ppNomeSoftware: TppDBText
        SaveOrder = -1
        DataPipelineName = 'dbConfig'
        LayerName = Foreground
      end
      inherited ppNomeEmpresa: TppDBText
        SaveOrder = -1
        DataPipelineName = 'dbEmpresa'
        LayerName = Foreground
      end
      inherited ppCNPJ: TppDBText
        SaveOrder = -1
        DataPipelineName = 'dbEmpresa'
        LayerName = Foreground
      end
      inherited ppDataImpressao: TppSystemVariable
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited ppPagina: TppSystemVariable
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited ppVersao: TppLabel
        SaveOrder = -1
        LayerName = Foreground
      end
      inherited ppDBText1: TppDBText
        SaveOrder = -1
        DataPipelineName = 'dbConfig'
        LayerName = Foreground
      end
    end
    object ppSummaryBand1: TppSummaryBand [4]
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 10054
      mmPrintPosition = 0
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = 'N'#250'mero de exames:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 0
        mmTop = 2381
        mmWidth = 31750
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        DataField = 'exa_id'
        DataPipeline = dbDados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'dbDados'
        mmHeight = 3969
        mmLeft = 33073
        mmTop = 2381
        mmWidth = 17198
        BandType = 7
        LayerName = Foreground
      end
    end
  end
  inherited dbDados: TppDBPipeline
    object dbDadosppField1: TppField
      FieldAlias = 'exa_id'
      FieldName = 'exa_id'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object dbDadosppField2: TppField
      FieldAlias = 'pac_nome'
      FieldName = 'pac_nome'
      FieldLength = 80
      DisplayWidth = 80
      Position = 1
    end
    object dbDadosppField3: TppField
      FieldAlias = 'cov_descricao'
      FieldName = 'cov_descricao'
      FieldLength = 30
      DisplayWidth = 30
      Position = 2
    end
    object dbDadosppField4: TppField
      FieldAlias = 'exa_data'
      FieldName = 'exa_data'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 3
    end
  end
  inherited dsDados: TDataSource
    DataSet = dmConsultas.qyRelListagem
  end
end
