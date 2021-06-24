inherited frmRelExMed: TfrmRelExMed
  Caption = 'Relat'#243'rio Exames X M'#233'dicos'
  ClientHeight = 129
  ExplicitHeight = 154
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [2]
    Left = 8
    Top = 31
    Width = 43
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Dt. In'#237'cio'
  end
  object Label3: TLabel [3]
    Left = 104
    Top = 31
    Width = 33
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'M'#233'dico'
  end
  inherited btFechar: TBitBtn
    Top = 96
    TabOrder = 5
    ExplicitTop = 96
  end
  inherited btVisualizar: TBitBtn
    Top = 96
    TabOrder = 3
    ExplicitTop = 96
  end
  inherited btImprimir: TBitBtn
    Top = 96
    TabOrder = 4
    ExplicitTop = 96
  end
  object edInicio: TwwDBDateTimePicker [7]
    Left = 8
    Top = 47
    Width = 89
    Height = 21
    Hint = 'Selecione ou digite a a data'
    CustomHint = BalloonHint1
    CalendarAttributes.Font.Charset = DEFAULT_CHARSET
    CalendarAttributes.Font.Color = clWindowText
    CalendarAttributes.Font.Height = -11
    CalendarAttributes.Font.Name = 'MS Sans Serif'
    CalendarAttributes.Font.Style = []
    Epoch = 1950
    ButtonEffects.Transparent = True
    ButtonEffects.Flat = True
    ParentShowHint = False
    ShowHint = True
    ShowButton = True
    TabOrder = 0
    DisplayFormat = 'dd/mm/yyyy'
  end
  object cbMedico: TwwDBLookupCombo [8]
    Left = 104
    Top = 47
    Width = 251
    Height = 21
    Hint = 'Selecione o M'#233'dico'
    CustomHint = BalloonHint1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    CharCase = ecUpperCase
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'med_nome'#9'50'#9'M'#233'dico'#9'F'
      'med_titulo'#9'5'#9'med_titulo'#9'F'
      'med_numconselho'#9'10'#9'Registro'#9'F'
      'med_codigo'#9'8'#9'C'#243'digo'#9'F')
    LookupTable = dmLookups.lkProcMedicos
    LookupField = 'med_nome'
    Options = [loColLines, loRowLines]
    ButtonEffects.Transparent = True
    ButtonEffects.Flat = True
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    AutoDropDown = False
    ShowButton = True
    SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
    PreciseEditRegion = False
    AllowClearKey = False
    ShowMatchText = True
  end
  object cbConcluidos: TCheckBox [9]
    Left = 8
    Top = 79
    Width = 81
    Height = 17
    Hint = 'Somente exames conclu'#237'dos'
    CustomHint = BalloonHint1
    Caption = 'Concluidos'
    Checked = True
    ParentShowHint = False
    ShowHint = True
    State = cbChecked
    TabOrder = 2
  end
  inherited Relatorio: TppReport
    PrinterSetup.DocumentName = 'Relat'#243'rio Exames X M'#233'dicos'
    DataPipelineName = 'dbDados'
    inherited ppTitleBand1: TppTitleBand
      inherited ppNomeRel: TppSystemVariable
        SaveOrder = -1
        LayerName = Foreground
      end
    end
    inherited ppHeaderBand1: TppHeaderBand
      mmHeight = 6350
      inherited ppLinha1: TppLine
        LayerName = Foreground
      end
      inherited ppLinha2: TppLine
        mmTop = 4762
        LayerName = Foreground
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 0
        mmTop = 794
        mmWidth = 6085
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'ID Exame'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 16669
        mmTop = 794
        mmWidth = 12700
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'Tipo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 35454
        mmTop = 794
        mmWidth = 6085
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = 'Paciente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 52917
        mmTop = 794
        mmWidth = 11642
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = 'M'#233'dico'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 98954
        mmTop = 794
        mmWidth = 9790
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Caption = 'Conv'#234'nio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 156369
        mmTop = 794
        mmWidth = 12965
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Caption = 'Conclu'#237'do'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 185209
        mmTop = 794
        mmWidth = 13758
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
        DataField = 'exa_data'
        DataPipeline = dbDados
        DisplayFormat = 'dd/mm/yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbDados'
        mmHeight = 3175
        mmLeft = 0
        mmTop = 529
        mmWidth = 15875
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'exa_id'
        DataPipeline = dbDados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbDados'
        mmHeight = 3175
        mmLeft = 16669
        mmTop = 529
        mmWidth = 17992
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'etp_tipo'
        DataPipeline = dbDados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbDados'
        mmHeight = 3175
        mmLeft = 35454
        mmTop = 529
        mmWidth = 15610
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'pac_nome'
        DataPipeline = dbDados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbDados'
        mmHeight = 3175
        mmLeft = 52917
        mmTop = 529
        mmWidth = 44715
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Caption = 'Dr(a).'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 98954
        mmTop = 529
        mmWidth = 7144
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'med_nome'
        DataPipeline = dbDados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbDados'
        mmHeight = 3175
        mmLeft = 107156
        mmTop = 529
        mmWidth = 47890
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        DataField = 'cov_descricao'
        DataPipeline = dbDados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbDados'
        mmHeight = 3175
        mmLeft = 156369
        mmTop = 529
        mmWidth = 38100
        BandType = 4
        LayerName = Foreground
      end
      object myDBCheckBox1: TmyDBCheckBox
        UserName = 'DBCheckBox1'
        CheckBoxColor = clBlack
        BooleanFalse = 'False'
        BooleanTrue = 'True'
        DataPipeline = dbDados
        DataField = 'eem_concluido'
        DataPipelineName = 'dbDados'
        mmHeight = 4498
        mmLeft = 195263
        mmTop = 0
        mmWidth = 6350
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
    object ppGroup1: TppGroup [4]
      BreakName = 'med_nome'
      DataPipeline = dbDados
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'dbDados'
      NewFile = False
      object ppGroupHeaderBand1: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        mmBottomOffset = 0
        mmHeight = 4498
        mmPrintPosition = 0
        object ppLabel9: TppLabel
          UserName = 'Label9'
          Caption = 'M'#233'dico: Dr(a).'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 0
          mmTop = 265
          mmWidth = 23548
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBText7: TppDBText
          UserName = 'DBText7'
          DataField = 'med_nome'
          DataPipeline = dbDados
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'dbDados'
          mmHeight = 4233
          mmLeft = 25135
          mmTop = 265
          mmWidth = 84931
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 4763
        mmPrintPosition = 0
        object ppLabel10: TppLabel
          UserName = 'Label10'
          Caption = 'Exames:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 0
          mmTop = 529
          mmWidth = 14552
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBCalc1: TppDBCalc
          UserName = 'DBCalc1'
          DataField = 'med_nome'
          DataPipeline = dbDados
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          ResetGroup = ppGroup1
          Transparent = True
          DBCalcType = dcCount
          DataPipelineName = 'dbDados'
          mmHeight = 3969
          mmLeft = 15610
          mmTop = 529
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
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
      FieldAlias = 'exa_data'
      FieldName = 'exa_data'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 1
    end
    object dbDadosppField3: TppField
      FieldAlias = 'etp_tipo'
      FieldName = 'etp_tipo'
      FieldLength = 20
      DisplayWidth = 20
      Position = 2
    end
    object dbDadosppField4: TppField
      FieldAlias = 'cov_descricao'
      FieldName = 'cov_descricao'
      FieldLength = 20
      DisplayWidth = 20
      Position = 3
    end
    object dbDadosppField5: TppField
      FieldAlias = 'med_nome'
      FieldName = 'med_nome'
      FieldLength = 50
      DisplayWidth = 50
      Position = 4
    end
    object dbDadosppField6: TppField
      FieldAlias = 'pac_nome'
      FieldName = 'pac_nome'
      FieldLength = 80
      DisplayWidth = 80
      Position = 5
    end
    object dbDadosppField7: TppField
      FieldAlias = 'eem_concluido'
      FieldName = 'eem_concluido'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 6
    end
  end
  inherited dsDados: TDataSource
    DataSet = dmConsultas.qyRelExames
  end
end
