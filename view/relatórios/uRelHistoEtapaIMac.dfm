inherited frmRelHistoEtapaIMac: TfrmRelHistoEtapaIMac
  Caption = 'Exame - Etapa I (Macro)'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Relatorio: TppReport
    PrinterSetup.DocumentName = 'Histologia - Etapa I'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A5'
    PrinterSetup.mmMarginBottom = 5000
    PrinterSetup.mmMarginLeft = 28000
    PrinterSetup.mmMarginRight = 12000
    PrinterSetup.mmMarginTop = 2000
    PrinterSetup.mmPaperHeight = 148000
    PrinterSetup.PaperSize = 11
    DataPipelineName = 'dbDados'
    inherited ppHeaderBand1: TppHeaderBand
      mmHeight = 10319
      inherited ppLinha1: TppLine
        mmTop = 2646
        LayerName = Foreground
      end
      inherited ppLinha2: TppLine
        mmTop = 10054
        LayerName = Foreground
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'Exame:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5027
        mmLeft = 0
        mmTop = 3440
        mmWidth = 15081
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'exa_id'
        DataPipeline = dbDados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'dbDados'
        mmHeight = 5027
        mmLeft = 16404
        mmTop = 3440
        mmWidth = 27517
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText13: TppDBText
        UserName = 'DBText13'
        DataField = 'etp_tipo'
        DataPipeline = dbDados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbDados'
        mmHeight = 4763
        mmLeft = 45244
        mmTop = 3440
        mmWidth = 34660
        BandType = 0
        LayerName = Foreground
      end
      object lbUrgente: TppLabel
        UserName = 'lbUrgente'
        Caption = 'lbUrgente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5027
        mmLeft = 81756
        mmTop = 3440
        mmWidth = 19844
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Caption = 'Data:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5027
        mmLeft = 133615
        mmTop = 3440
        mmWidth = 10583
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        DataField = 'exa_data'
        DataPipeline = dbDados
        DisplayFormat = 'dd/mm/yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbDados'
        mmHeight = 4763
        mmLeft = 145257
        mmTop = 3440
        mmWidth = 23548
        BandType = 0
        LayerName = Foreground
      end
    end
    inherited ppDetailBand1: TppDetailBand
      PrintHeight = phDynamic
      mmHeight = 32808
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'Paciente:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 0
        mmTop = 0
        mmWidth = 12435
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'M'#233'dico:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 0
        mmTop = 3704
        mmWidth = 10848
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'pac_codigo'
        DataPipeline = dbDados
        DisplayFormat = '0000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbDados'
        mmHeight = 3175
        mmLeft = 14023
        mmTop = 0
        mmWidth = 10054
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = '-'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 24871
        mmTop = 0
        mmWidth = 1058
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
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbDados'
        mmHeight = 3175
        mmLeft = 26988
        mmTop = 0
        mmWidth = 60854
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = 'Dt. Nasc.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 91811
        mmTop = 0
        mmWidth = 12965
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'pac_dtnasc'
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
        mmLeft = 106892
        mmTop = 0
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Caption = 'Idade:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 130175
        mmTop = 0
        mmWidth = 8467
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'pac_idade'
        DataPipeline = dbDados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbDados'
        mmHeight = 3175
        mmLeft = 140494
        mmTop = 0
        mmWidth = 7673
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Caption = 'anos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 150548
        mmTop = 0
        mmWidth = 6085
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'med_codigo'
        DataPipeline = dbDados
        DisplayFormat = '0000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbDados'
        mmHeight = 3175
        mmLeft = 14023
        mmTop = 3704
        mmWidth = 9790
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
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 24871
        mmTop = 3704
        mmWidth = 1058
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
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
        mmLeft = 26988
        mmTop = 3704
        mmWidth = 60854
        BandType = 4
        LayerName = Foreground
      end
      object ppMedAdicional: TppLabel
        UserName = 'MedAdicional'
        Caption = 'MedAdicional'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 88371
        mmTop = 3704
        mmWidth = 16933
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Caption = 'Conv'#234'nio:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 0
        mmTop = 7408
        mmWidth = 13758
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        DataField = 'cov_codigo'
        DataPipeline = dbDados
        DisplayFormat = '0000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbDados'
        mmHeight = 3175
        mmLeft = 15081
        mmTop = 7408
        mmWidth = 8996
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        Caption = '-'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 25135
        mmTop = 7408
        mmWidth = 1058
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText12: TppDBText
        UserName = 'DBText12'
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
        mmLeft = 27252
        mmTop = 7408
        mmWidth = 87313
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        Caption = 'Matr'#237'cula:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 117211
        mmTop = 7408
        mmWidth = 13494
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        DataField = 'exa_matricula'
        DataPipeline = dbDados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbDados'
        mmHeight = 3175
        mmLeft = 132557
        mmTop = 7408
        mmWidth = 36513
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        Caption = 'Guia do Conv'#234'nio:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 0
        mmTop = 11906
        mmWidth = 25400
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        DataField = 'exa_guia'
        DataPipeline = dbDados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbDados'
        mmHeight = 3175
        mmLeft = 26458
        mmTop = 11906
        mmWidth = 35983
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        Caption = 'Origem:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 64294
        mmTop = 11906
        mmWidth = 10848
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText14: TppDBText
        UserName = 'DBText14'
        DataField = 'exl_descricao'
        DataPipeline = dbDados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbDados'
        mmHeight = 3175
        mmLeft = 76200
        mmTop = 11906
        mmWidth = 92604
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        Caption = 'Obs.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 0
        mmTop = 16140
        mmWidth = 7408
        BandType = 4
        LayerName = Foreground
      end
      object dbObs: TppDBRichText
        UserName = 'dbObs'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = []
        DataField = 'exa_obs'
        DataPipeline = dbDados
        DataPipelineName = 'dbDados'
        mmHeight = 8467
        mmLeft = 8202
        mmTop = 16140
        mmWidth = 160867
        BandType = 4
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
      end
      object subMacro: TppSubReport
        UserName = 'subMacro'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        DataPipelineName = 'dbMacro'
        mmHeight = 3969
        mmLeft = 0
        mmTop = 26988
        mmWidth = 170000
        BandType = 4
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = dbMacro
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Histologia - Etapa I'
          PrinterSetup.Orientation = poLandscape
          PrinterSetup.PaperName = 'A5'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.SaveDeviceSettings = False
          PrinterSetup.mmMarginBottom = 5000
          PrinterSetup.mmMarginLeft = 28000
          PrinterSetup.mmMarginRight = 12000
          PrinterSetup.mmMarginTop = 2000
          PrinterSetup.mmPaperHeight = 148000
          PrinterSetup.mmPaperWidth = 210000
          PrinterSetup.PaperSize = 11
          Units = utMillimeters
          Left = 176
          Top = 72
          Version = '14.04'
          mmColumnWidth = 0
          DataPipelineName = 'dbMacro'
          object ppDetailBand2: TppDetailBand
            Background1.Brush.Style = bsClear
            Background2.Brush.Style = bsClear
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 15610
            mmPrintPosition = 0
            object dbMacroscopia: TppDBRichText
              UserName = 'dbMacroscopia'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Tahoma'
              Font.Size = 8
              Font.Style = []
              DataField = 'ehm_macroscopia'
              DataPipeline = dbMacro
              ParentDataPipeline = False
              Stretch = True
              DataPipelineName = 'dbMacro'
              mmHeight = 4498
              mmLeft = 0
              mmTop = 10054
              mmWidth = 166688
              BandType = 4
              LayerName = Foreground1
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              mmMinHeight = 0
              mmLeftMargin = 794
            end
            object ppLabel16: TppLabel
              UserName = 'Label11'
              Caption = 'Macroscopia:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = [fsBold, fsItalic, fsUnderline]
              Transparent = True
              mmHeight = 4233
              mmLeft = 0
              mmTop = 3175
              mmWidth = 22490
              BandType = 4
              LayerName = Foreground1
            end
          end
          object ppDesignLayers2: TppDesignLayers
            object ppDesignLayer2: TppDesignLayer
              UserName = 'Foreground1'
              LayerType = ltBanded
            end
          end
        end
      end
    end
    object ppDesignLayers1: TppDesignLayers [2]
      object ppDesignLayer1: TppDesignLayer
        UserName = 'Foreground'
        LayerType = ltBanded
      end
    end
  end
  inherited dbDados: TppDBPipeline
    object dbDadosppField1: TppField
      FieldAlias = 'exa_id'
      FieldName = 'exa_id'
      FieldLength = 10
      DisplayWidth = 10
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
      Alignment = taRightJustify
      FieldAlias = 'pac_codigo'
      FieldName = 'pac_codigo'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 2
    end
    object dbDadosppField4: TppField
      FieldAlias = 'pac_nome'
      FieldName = 'pac_nome'
      FieldLength = 80
      DisplayWidth = 80
      Position = 3
    end
    object dbDadosppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'pac_idade'
      FieldName = 'pac_idade'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 4
    end
    object dbDadosppField6: TppField
      FieldAlias = 'pac_meses'
      FieldName = 'pac_meses'
      FieldLength = 30
      DisplayWidth = 30
      Position = 5
    end
    object dbDadosppField7: TppField
      FieldAlias = 'pac_sexo'
      FieldName = 'pac_sexo'
      FieldLength = 1
      DisplayWidth = 1
      Position = 6
    end
    object dbDadosppField8: TppField
      FieldAlias = 'pac_dtnasc'
      FieldName = 'pac_dtnasc'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 7
    end
    object dbDadosppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'cov_codigo'
      FieldName = 'cov_codigo'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 8
    end
    object dbDadosppField10: TppField
      FieldAlias = 'cov_descricao'
      FieldName = 'cov_descricao'
      FieldLength = 30
      DisplayWidth = 30
      Position = 9
    end
    object dbDadosppField11: TppField
      FieldAlias = 'exa_matricula'
      FieldName = 'exa_matricula'
      FieldLength = 20
      DisplayWidth = 20
      Position = 10
    end
    object dbDadosppField12: TppField
      FieldAlias = 'exa_guia'
      FieldName = 'exa_guia'
      FieldLength = 20
      DisplayWidth = 20
      Position = 11
    end
    object dbDadosppField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'med_codigo'
      FieldName = 'med_codigo'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 12
    end
    object dbDadosppField14: TppField
      FieldAlias = 'med_nome'
      FieldName = 'med_nome'
      FieldLength = 50
      DisplayWidth = 50
      Position = 13
    end
    object dbDadosppField15: TppField
      Alignment = taRightJustify
      FieldAlias = 'exa_etapa'
      FieldName = 'exa_etapa'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 14
    end
    object dbDadosppField16: TppField
      Alignment = taRightJustify
      FieldAlias = 'exa_prioridade'
      FieldName = 'exa_prioridade'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 15
    end
    object dbDadosppField17: TppField
      FieldAlias = 'exa_dataprior'
      FieldName = 'exa_dataprior'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 16
    end
    object dbDadosppField18: TppField
      FieldAlias = 'exa_obs'
      FieldName = 'exa_obs'
      FieldLength = 256
      DisplayWidth = 256
      Position = 17
    end
    object dbDadosppField19: TppField
      Alignment = taRightJustify
      FieldAlias = 'exa_origem'
      FieldName = 'exa_origem'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 18
    end
    object dbDadosppField20: TppField
      FieldAlias = 'exl_descricao'
      FieldName = 'exl_descricao'
      FieldLength = 35
      DisplayWidth = 35
      Position = 19
    end
    object dbDadosppField21: TppField
      Alignment = taRightJustify
      FieldAlias = 'exa_destino'
      FieldName = 'exa_destino'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 20
    end
    object dbDadosppField22: TppField
      FieldAlias = 'exl_descricao_1'
      FieldName = 'exl_descricao_1'
      FieldLength = 35
      DisplayWidth = 35
      Position = 21
    end
    object dbDadosppField23: TppField
      Alignment = taRightJustify
      FieldAlias = 'etp_id'
      FieldName = 'etp_id'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 22
    end
    object dbDadosppField24: TppField
      FieldAlias = 'etp_tipo'
      FieldName = 'etp_tipo'
      FieldLength = 20
      DisplayWidth = 20
      Position = 23
    end
    object dbDadosppField25: TppField
      Alignment = taRightJustify
      FieldAlias = 'res_codigo'
      FieldName = 'res_codigo'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 24
    end
    object dbDadosppField26: TppField
      FieldAlias = 'res_nome'
      FieldName = 'res_nome'
      FieldLength = 80
      DisplayWidth = 80
      Position = 25
    end
  end
  inherited dsDados: TDataSource
    DataSet = dmExames.qyExames
  end
  object dsMacro: TDataSource
    DataSet = dmExames.qyExamesHistMacro
    Left = 24
    Top = 24
  end
  object dbMacro: TppDBPipeline
    DataSource = dsMacro
    UserName = 'dbMacro'
    Left = 56
    Top = 24
    object dbMacroppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'ehm_id'
      FieldName = 'ehm_id'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 0
      Position = 0
    end
    object dbMacroppField2: TppField
      FieldAlias = 'exa_id'
      FieldName = 'exa_id'
      FieldLength = 10
      DisplayWidth = 10
      Position = 1
    end
    object dbMacroppField3: TppField
      FieldAlias = 'ehm_macroscopia'
      FieldName = 'ehm_macroscopia'
      FieldLength = 0
      DataType = dtBLOB
      DisplayWidth = 10
      Position = 2
      Searchable = False
      Sortable = False
    end
  end
end
