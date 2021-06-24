inherited frmRelCaixa: TfrmRelCaixa
  Caption = 'Relat'#243'rio de Caixa'
  ClientHeight = 140
  ClientWidth = 443
  ExplicitWidth = 449
  ExplicitHeight = 165
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbExportar: TSpeedButton
    Left = 402
    ExplicitLeft = 402
  end
  object Label1: TLabel [2]
    Left = 8
    Top = 31
    Width = 43
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Dt. In'#237'cio'
  end
  object Label2: TLabel [3]
    Left = 104
    Top = 31
    Width = 40
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Dt. Final'
  end
  object lbConta: TLabel [4]
    Left = 200
    Top = 31
    Width = 29
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Conta'
  end
  inherited btFechar: TBitBtn
    Left = 330
    Top = 107
    TabOrder = 6
    ExplicitLeft = 330
    ExplicitTop = 107
  end
  inherited btVisualizar: TBitBtn
    Left = 108
    Top = 107
    TabOrder = 4
    ExplicitLeft = 108
    ExplicitTop = 107
  end
  inherited btImprimir: TBitBtn
    Left = 219
    Top = 107
    TabOrder = 5
    ExplicitLeft = 219
    ExplicitTop = 107
  end
  object edInicio: TwwDBDateTimePicker [8]
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
  object cbTodas: TCheckBox [9]
    Left = 8
    Top = 84
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
  object edFinal: TwwDBDateTimePicker [10]
    Left = 104
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
    TabOrder = 1
    DisplayFormat = 'dd/mm/yyyy'
  end
  object cbConta: TwwDBLookupCombo [11]
    Left = 200
    Top = 47
    Width = 235
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
      'con_obs'#9'20'#9'Obs'#9'F')
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
  inherited Relatorio: TppReport
    PrinterSetup.DocumentName = 'Relat'#243'rio de Caixa'
    DataPipelineName = 'dbDados'
    inherited ppTitleBand1: TppTitleBand
      mmHeight = 16404
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
        mmTop = 10848
        mmWidth = 12435
        BandType = 1
        LayerName = Foreground
      end
    end
    inherited ppHeaderBand1: TppHeaderBand
      mmHeight = 6879
      inherited ppLinha1: TppLine
        LayerName = Foreground
      end
      inherited ppLinha2: TppLine
        mmTop = 5291
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
        mmLeft = 16933
        mmTop = 794
        mmWidth = 7408
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'Plano de Contas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3302
        mmLeft = 56621
        mmTop = 794
        mmWidth = 19981
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
        mmLeft = 89959
        mmTop = 1058
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
        mmLeft = 159809
        mmTop = 1058
        mmWidth = 6615
        BandType = 0
        LayerName = Foreground
      end
    end
    inherited ppDetailBand1: TppDetailBand
      inherited ppLinha3: TppLine
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
        mmWidth = 15081
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        DataField = 'con_codigo'
        DataPipeline = dbDados
        DisplayFormat = '000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbDados'
        mmHeight = 3175
        mmLeft = 16933
        mmTop = 265
        mmWidth = 6615
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Caption = '-'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 24342
        mmTop = 265
        mmWidth = 1058
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
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
        mmLeft = 25929
        mmTop = 265
        mmWidth = 29104
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'mov_descricao'
        DataPipeline = dbDados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbDados'
        mmHeight = 3175
        mmLeft = 56621
        mmTop = 265
        mmWidth = 32015
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
        mmLeft = 89959
        mmTop = 265
        mmWidth = 66675
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
        mmLeft = 159809
        mmTop = 265
        mmWidth = 28575
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
      mmHeight = 17198
      mmPrintPosition = 0
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Caption = 'Total do(s) dia(s)...:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 125942
        mmTop = 794
        mmWidth = 29369
        BandType = 7
        LayerName = Foreground
      end
      object ppTotal: TppDBCalc
        UserName = 'Total'
        DataField = 'CAI_VALOR'
        DataPipeline = dbDados
        DisplayFormat = '#,###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        OnCalc = ppTotalCalc
        DataPipelineName = 'dbDados'
        mmHeight = 3704
        mmLeft = 159809
        mmTop = 794
        mmWidth = 28575
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Caption = 'Totaliza'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 3969
        mmLeft = 0
        mmTop = 794
        mmWidth = 17463
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Caption = 'Saldo anterior:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 125942
        mmTop = 5292
        mmWidth = 22490
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Caption = 'Total geral:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 125942
        mmTop = 10319
        mmWidth = 17198
        BandType = 7
        LayerName = Foreground
      end
      object lbGeral: TppLabel
        UserName = 'lbGeral'
        Caption = 'lbGeral'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 177536
        mmTop = 10319
        mmWidth = 10848
        BandType = 7
        LayerName = Foreground
      end
      object lbSaldoAnt: TppLabel
        UserName = 'lbSaldoAnt'
        Caption = 'lbSaldoAnt'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 171715
        mmTop = 5292
        mmWidth = 16669
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        Caption = 'R$'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 143934
        mmTop = 10319
        mmWidth = 4498
        BandType = 7
        LayerName = Foreground
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
      DisplayWidth = 0
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
