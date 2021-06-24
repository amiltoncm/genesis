inherited frmRelExamesDoencas: TfrmRelExamesDoencas
  Caption = 'Relat'#243'rios de Exames X Doen'#231'as'
  ClientHeight = 254
  ClientWidth = 393
  ExplicitWidth = 399
  ExplicitHeight = 279
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbExportar: TSpeedButton
    Left = 352
    Anchors = [akTop, akRight]
    ExplicitLeft = 411
  end
  object Label1: TLabel [2]
    Left = 8
    Top = 30
    Width = 28
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Datas'
  end
  object Label2: TLabel [3]
    Left = 8
    Top = 76
    Width = 92
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'CID (Subcategoria)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel [4]
    Left = 8
    Top = 122
    Width = 33
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'M'#233'dico'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel [5]
    Left = 8
    Top = 168
    Width = 70
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Tipo de exame'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  inherited btFechar: TBitBtn
    Left = 280
    Top = 221
    TabOrder = 7
    ExplicitLeft = 280
    ExplicitTop = 221
  end
  inherited btVisualizar: TBitBtn
    Left = 58
    Top = 221
    TabOrder = 5
    ExplicitLeft = 58
    ExplicitTop = 221
  end
  inherited btImprimir: TBitBtn
    Left = 169
    Top = 221
    TabOrder = 6
    ExplicitLeft = 169
    ExplicitTop = 221
  end
  object dtpDataIni: TDateTimePicker [9]
    Left = 8
    Top = 49
    Width = 186
    Height = 21
    CustomHint = BalloonHint1
    Date = 43184.544629490740000000
    Time = 43184.544629490740000000
    TabOrder = 0
  end
  object dtpDataFinal: TDateTimePicker [10]
    Left = 200
    Top = 49
    Width = 186
    Height = 21
    CustomHint = BalloonHint1
    Date = 43184.544807627320000000
    Time = 43184.544807627320000000
    TabOrder = 1
  end
  object cbProcCid: TwwDBLookupCombo [11]
    Left = 8
    Top = 95
    Width = 377
    Height = 21
    CustomHint = BalloonHint1
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'sct_descricao'#9'100'#9'Descri'#231#227'o'#9'F'
      'sct_subcat'#9'10'#9'ID'#9'F')
    LookupTable = dmLookups.lkProcCIDSubCat
    LookupField = 'sct_descricao'
    Options = [loColLines, loRowLines, loTitles]
    TabOrder = 2
    AutoDropDown = True
    ShowButton = True
    PreciseEditRegion = False
    AllowClearKey = False
    ShowMatchText = True
  end
  object cbProcMedico: TwwDBLookupCombo [12]
    Left = 8
    Top = 141
    Width = 377
    Height = 21
    CustomHint = BalloonHint1
    DropDownAlignment = taLeftJustify
    LookupTable = dmLookups.lkProcMedicos
    LookupField = 'med_nome'
    Options = [loColLines, loRowLines, loTitles]
    TabOrder = 3
    AutoDropDown = True
    ShowButton = True
    PreciseEditRegion = False
    AllowClearKey = False
    ShowMatchText = True
  end
  object cbProcExameTp: TwwDBLookupCombo [13]
    Left = 8
    Top = 187
    Width = 377
    Height = 21
    CustomHint = BalloonHint1
    DropDownAlignment = taLeftJustify
    LookupTable = dmLookups.lkProcExamesTp
    LookupField = 'etp_tipo'
    Options = [loColLines, loRowLines, loTitles]
    TabOrder = 4
    AutoDropDown = True
    ShowButton = True
    PreciseEditRegion = False
    AllowClearKey = False
    ShowMatchText = True
  end
  inherited Relatorio: TppReport
    PrinterSetup.DocumentName = 'Relat'#243'rio Exames X Doen'#231'as'
    DataPipelineName = 'dbDados'
    object ppTitleBand1: TppTitleBand [0]
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 10319
      mmPrintPosition = 0
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        VarType = vtDocumentName
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 11
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4784
        mmLeft = 0
        mmTop = 4498
        mmWidth = 19897
        BandType = 1
        LayerName = Foreground
      end
    end
    inherited ppHeaderBand1: TppHeaderBand
      mmHeight = 5556
      inherited ppLinha1: TppLine
        LayerName = Foreground
      end
      inherited ppLinha2: TppLine
        mmHeight = 265
        mmTop = 5291
        LayerName = Foreground
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 0
        mmTop = 529
        mmWidth = 7620
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'M'#233'dico'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 21696
        mmTop = 529
        mmWidth = 12192
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'Tp. Exame'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 98954
        mmTop = 529
        mmWidth = 17611
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = 'ID Exame'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 133350
        mmTop = 529
        mmWidth = 15790
        BandType = 0
        LayerName = Foreground
      end
    end
    inherited ppDetailBand1: TppDetailBand
      mmHeight = 5292
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'exa_data'
        DataPipeline = dbDados
        DisplayFormat = 'dd/MM/yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbDados'
        mmHeight = 3704
        mmLeft = 0
        mmTop = 794
        mmWidth = 19579
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'med_nome'
        DataPipeline = dbDados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbDados'
        mmHeight = 3704
        mmLeft = 21696
        mmTop = 794
        mmWidth = 74083
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'etp_tipo'
        DataPipeline = dbDados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbDados'
        mmHeight = 3704
        mmLeft = 98954
        mmTop = 794
        mmWidth = 32279
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'exa_id'
        DataPipeline = dbDados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbDados'
        mmHeight = 3704
        mmLeft = 133350
        mmTop = 794
        mmWidth = 24342
        BandType = 4
        LayerName = Foreground
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 4763
        mmWidth = 189442
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppFooterBand1: TppFooterBand [3]
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 10054
      mmPrintPosition = 0
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtPrintDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 11
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4784
        mmLeft = 0
        mmTop = 1058
        mmWidth = 45551
        BandType = 8
        LayerName = Foreground
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable3'
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Verdana'
        Font.Size = 11
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4784
        mmLeft = 164973
        mmTop = 1058
        mmWidth = 24469
        BandType = 8
        LayerName = Foreground
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 189442
        BandType = 8
        LayerName = Foreground
      end
    end
    object ppSummaryBand1: TppSummaryBand [4]
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 7408
      mmPrintPosition = 0
      object ppLine1: TppLine
        UserName = 'Line1'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 189442
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Caption = 'Exames:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 0
        mmTop = 1852
        mmWidth = 13081
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc2'
        DataField = 'exa_id'
        DataPipeline = dbDados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'dbDados'
        mmHeight = 3704
        mmLeft = 14552
        mmTop = 1852
        mmWidth = 17198
        BandType = 7
        LayerName = Foreground
      end
    end
    object ppGroup1: TppGroup [5]
      BreakName = 'sct_subcat'
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
        mmHeight = 6350
        mmPrintPosition = 0
        object ppDBText5: TppDBText
          UserName = 'DBText5'
          DataField = 'sct_subcat'
          DataPipeline = dbDados
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'dbDados'
          mmHeight = 3704
          mmLeft = 8202
          mmTop = 265
          mmWidth = 17198
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBText6: TppDBText
          UserName = 'DBText6'
          DataField = 'sct_descricao'
          DataPipeline = dbDados
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'dbDados'
          mmHeight = 3704
          mmLeft = 28310
          mmTop = 265
          mmWidth = 137584
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLine4: TppLine
          UserName = 'Line4'
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 4498
          mmWidth = 189442
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel7: TppLabel
          UserName = 'Label7'
          Caption = 'CID:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3810
          mmLeft = 0
          mmTop = 265
          mmWidth = 6477
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        Background.Brush.Style = bsClear
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 7144
        mmPrintPosition = 0
        object ppLine5: TppLine
          UserName = 'Line5'
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 0
          mmWidth = 189442
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel5: TppLabel
          UserName = 'Label5'
          Caption = 'Exames:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3810
          mmLeft = 0
          mmTop = 1058
          mmWidth = 13081
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBCalc1: TppDBCalc
          UserName = 'DBCalc1'
          DataField = 'exa_id'
          DataPipeline = dbDados
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          Transparent = True
          DBCalcType = dcCount
          DataPipelineName = 'dbDados'
          mmHeight = 3704
          mmLeft = 14552
          mmTop = 1058
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
      end
    end
    object ppDesignLayers1: TppDesignLayers [6]
      object ppDesignLayer1: TppDesignLayer
        UserName = 'Foreground'
        LayerType = ltBanded
      end
    end
  end
  inherited dsDados: TDataSource
    DataSet = dmCid10.qyRelExamesDoencas
  end
end
