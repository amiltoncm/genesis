inherited frmRelCaixaMov: TfrmRelCaixaMov
  Caption = 'Relat'#243'rio de Caixa (Plano de Contas Detalhado)'
  ClientHeight = 147
  ClientWidth = 416
  ExplicitWidth = 422
  ExplicitHeight = 172
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbExportar: TSpeedButton
    Left = 375
    ExplicitLeft = 375
  end
  object Label1: TLabel [2]
    Left = 8
    Top = 32
    Width = 43
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Dt. In'#237'cio'
  end
  object Label2: TLabel [3]
    Left = 104
    Top = 32
    Width = 40
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Dt. Final'
  end
  object lbConta: TLabel [4]
    Left = 200
    Top = 32
    Width = 29
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Conta'
  end
  inherited btFechar: TBitBtn
    Left = 303
    Top = 114
    TabOrder = 6
    ExplicitLeft = 303
    ExplicitTop = 114
  end
  inherited btVisualizar: TBitBtn
    Left = 81
    Top = 114
    TabOrder = 4
    ExplicitLeft = 81
    ExplicitTop = 114
  end
  inherited btImprimir: TBitBtn
    Left = 192
    Top = 114
    TabOrder = 5
    ExplicitLeft = 192
    ExplicitTop = 114
  end
  object edInicio: TwwDBDateTimePicker [8]
    Left = 8
    Top = 48
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
  object edFinal: TwwDBDateTimePicker [9]
    Left = 104
    Top = 48
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
    TabOrder = 1
    DisplayFormat = 'dd/mm/yyyy'
  end
  object cbConta: TwwDBLookupCombo [10]
    Left = 199
    Top = 48
    Width = 209
    Height = 21
    Hint = 'Selecione a Conta de Origem'
    CustomHint = BalloonHint1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'con_descricao'#9'15'#9'Conta'#9'F'
      'con_codigo'#9'8'#9'ID'#9'F'
      'con_obs'#9'20'#9'Obs'#9'F'
      'ban_codigo'#9'8'#9'Banco'#9'F')
    LookupTable = dmLookups.lkProcContas
    LookupField = 'con_descricao'
    Options = [loColLines, loRowLines]
    ButtonEffects.Transparent = True
    ButtonEffects.Flat = True
    ParentFont = False
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
  object cbTodas: TCheckBox [11]
    Left = 8
    Top = 88
    Width = 97
    Height = 17
    Hint = 'Gera o relat'#243'rio com todas as contas cadastradas'
    CustomHint = BalloonHint1
    Caption = 'Todas as contas'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    OnClick = cbTodasClick
  end
  inherited Relatorio: TppReport
    PrinterSetup.DocumentName = 'Relat'#243'rio de Caixa (Plano de Contas Detalhado)'
    DataPipelineName = 'dbDados'
    inherited ppTitleBand1: TppTitleBand
      mmHeight = 16140
      inherited ppNomeRel: TppSystemVariable
        SaveOrder = -1
        LayerName = Foreground
      end
      object ppDataSel: TppLabel
        UserName = 'DataSel'
        Caption = 'DataSel'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 0
        mmTop = 11377
        mmWidth = 12435
        BandType = 1
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
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 0
        mmTop = 794
        mmWidth = 6085
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'Conta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 19844
        mmTop = 794
        mmWidth = 7408
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = 'Descri'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 56092
        mmTop = 794
        mmWidth = 12700
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = 'Valor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 170392
        mmTop = 794
        mmWidth = 6615
        BandType = 0
        LayerName = Foreground
      end
    end
    inherited ppDetailBand1: TppDetailBand
      mmHeight = 3969
      inherited ppLinha3: TppLine
        mmHeight = 265
        mmTop = 3704
        LayerName = Foreground
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        DataField = 'cai_data'
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
        mmTop = 265
        mmWidth = 16669
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        DataField = 'con_descricao'
        DataPipeline = dbDados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbDados'
        mmHeight = 3175
        mmLeft = 19844
        mmTop = 265
        mmWidth = 34660
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'cai_descricao'
        DataPipeline = dbDados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbDados'
        mmHeight = 3175
        mmLeft = 56092
        mmTop = 265
        mmWidth = 111125
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        DataField = 'cai_valor'
        DataPipeline = dbDados
        DisplayFormat = '#,###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbDados'
        mmHeight = 3175
        mmLeft = 170392
        mmTop = 265
        mmWidth = 24077
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
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Caption = 'Totaliza'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 3704
        mmLeft = 0
        mmTop = 794
        mmWidth = 17463
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Caption = 'Valor total: R$'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 137848
        mmTop = 794
        mmWidth = 21960
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        DataField = 'cai_valor'
        DataPipeline = dbDados
        DisplayFormat = '#,###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbDados'
        mmHeight = 3704
        mmLeft = 165894
        mmTop = 794
        mmWidth = 28575
        BandType = 7
        LayerName = Foreground
      end
    end
    object ppGroup1: TppGroup [5]
      BreakName = 'mov_descricao'
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
        mmHeight = 5027
        mmPrintPosition = 0
        object ppLine5: TppLine
          UserName = 'Line5'
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 4762
          mmWidth = 198967
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBText8: TppDBText
          UserName = 'DBText8'
          DataField = 'mov_descricao'
          DataPipeline = dbDados
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'dbDados'
          mmHeight = 4233
          mmLeft = 0
          mmTop = 265
          mmWidth = 50006
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLine1: TppLine
          UserName = 'Line1'
          Weight = 0.750000000000000000
          mmHeight = 794
          mmLeft = 0
          mmTop = 0
          mmWidth = 198967
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBText2: TppDBText
          UserName = 'DBText2'
          DataField = 'mov_codigo'
          DataPipeline = dbDados
          DisplayFormat = '000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'dbDados'
          mmHeight = 4191
          mmLeft = 56092
          mmTop = 265
          mmWidth = 17198
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 5292
        mmPrintPosition = 0
        object ppLabel8: TppLabel
          UserName = 'Label8'
          Caption = 'Total do grupo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3704
          mmLeft = 0
          mmTop = 265
          mmWidth = 22225
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel9: TppLabel
          UserName = 'Label9'
          Caption = 'Valor total: R$'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3969
          mmLeft = 137848
          mmTop = 265
          mmWidth = 21960
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBCalc2: TppDBCalc
          UserName = 'DBCalc2'
          DataField = 'cai_valor'
          DataPipeline = dbDados
          DisplayFormat = '#,###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'dbDados'
          mmHeight = 3969
          mmLeft = 165894
          mmTop = 265
          mmWidth = 28575
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
      end
    end
  end
  inherited dbDados: TppDBPipeline
    object dbDadosppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'cai_codigo'
      FieldName = 'cai_codigo'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 0
    end
    object dbDadosppField2: TppField
      FieldAlias = 'cai_data'
      FieldName = 'cai_data'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 1
    end
    object dbDadosppField3: TppField
      FieldAlias = 'cai_descricao'
      FieldName = 'cai_descricao'
      FieldLength = 50
      DisplayWidth = 50
      Position = 2
    end
    object dbDadosppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'cai_valor'
      FieldName = 'cai_valor'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 3
    end
    object dbDadosppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'mov_codigo'
      FieldName = 'mov_codigo'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 4
    end
    object dbDadosppField6: TppField
      FieldAlias = 'mov_descricao'
      FieldName = 'mov_descricao'
      FieldLength = 20
      DisplayWidth = 20
      Position = 5
    end
    object dbDadosppField7: TppField
      FieldAlias = 'mov_tipo'
      FieldName = 'mov_tipo'
      FieldLength = 1
      DisplayWidth = 1
      Position = 6
    end
    object dbDadosppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'con_codigo'
      FieldName = 'con_codigo'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 7
    end
    object dbDadosppField9: TppField
      FieldAlias = 'con_descricao'
      FieldName = 'con_descricao'
      FieldLength = 15
      DisplayWidth = 15
      Position = 8
    end
    object dbDadosppField10: TppField
      FieldAlias = 'cai_referencia'
      FieldName = 'cai_referencia'
      FieldLength = 10
      DisplayWidth = 10
      Position = 9
    end
  end
  inherited dsDados: TDataSource
    DataSet = dmFinanceiro.qyCaixa
  end
end
