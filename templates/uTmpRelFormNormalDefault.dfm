inherited frmTmpRelFormNormalDefault: TfrmTmpRelFormNormalDefault
  Caption = 'frmTmpRelFormNormalDefault'
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbExportar: TSpeedButton
    Anchors = [akTop, akRight]
    ShowHint = False
  end
  inherited btVisualizar: TBitBtn
    ShowHint = False
  end
  inherited btImprimir: TBitBtn
    ShowHint = False
  end
  inherited Relatorio: TppReport
    PrinterSetup.mmMarginBottom = 6000
    PrinterSetup.mmMarginLeft = 5000
    PrinterSetup.mmMarginRight = 5000
    DataPipelineName = 'dbDados'
    object ppTitleBand1: TppTitleBand [0]
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 10583
      mmPrintPosition = 0
      object ppNomeRel: TppSystemVariable
        UserName = 'NomeRel'
        VarType = vtDocumentName
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5165
        mmLeft = 0
        mmTop = 4763
        mmWidth = 18457
        BandType = 1
        LayerName = Foreground
      end
    end
    inherited ppHeaderBand1: TppHeaderBand
      inherited ppLinha1: TppLine
        mmWidth = 198967
        LayerName = Foreground
      end
      inherited ppLinha2: TppLine
        mmWidth = 198967
        LayerName = Foreground
      end
    end
    inherited ppDetailBand1: TppDetailBand
      mmHeight = 5556
      object ppLinha3: TppLine
        UserName = 'Linha3'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 0
        mmTop = 4498
        mmWidth = 198967
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppFooterBand1: TppFooterBand [3]
      Background.Brush.Style = bsClear
      mmBottomOffset = 0
      mmHeight = 17992
      mmPrintPosition = 0
      object ppNomeSoftware: TppDBText
        UserName = 'NomeSoftware'
        DataField = 'CFG_SOFTWARE'
        DataPipeline = dbConfig
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsItalic]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbConfig'
        mmHeight = 4233
        mmLeft = 0
        mmTop = 5292
        mmWidth = 70908
        BandType = 8
        LayerName = Foreground
      end
      object ppNomeEmpresa: TppDBText
        UserName = 'NomeEmpresa'
        DataField = 'emp_razao'
        DataPipeline = dbEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbEmpresa'
        mmHeight = 4233
        mmLeft = 0
        mmTop = 529
        mmWidth = 89959
        BandType = 8
        LayerName = Foreground
      end
      object ppCNPJ: TppDBText
        UserName = 'CNPJ'
        DataField = 'emp_cnpj'
        DataPipeline = dbEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbEmpresa'
        mmHeight = 4233
        mmLeft = 164836
        mmTop = 529
        mmWidth = 34131
        BandType = 8
        LayerName = Foreground
      end
      object ppDataImpressao: TppSystemVariable
        UserName = 'DataImpressao'
        VarType = vtPrintDateTime
        DisplayFormat = 'dd/mm/yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 0
        mmTop = 10848
        mmWidth = 37835
        BandType = 8
        LayerName = Foreground
      end
      object ppPagina: TppSystemVariable
        UserName = 'Pagina'
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 175948
        mmTop = 10054
        mmWidth = 21960
        BandType = 8
        LayerName = Foreground
      end
      object ppVersao: TppLabel
        UserName = 'Versao'
        Caption = 'Vers'#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsItalic]
        Transparent = True
        mmHeight = 3969
        mmLeft = 75406
        mmTop = 5292
        mmWidth = 12171
        BandType = 8
        LayerName = Foreground
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'cfg_versao'
        DataPipeline = dbConfig
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsItalic]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbConfig'
        mmHeight = 3969
        mmLeft = 90752
        mmTop = 5292
        mmWidth = 17198
        BandType = 8
        LayerName = Foreground
      end
    end
    object ppDesignLayers1: TppDesignLayers [4]
      object ppDesignLayer1: TppDesignLayer
        UserName = 'Foreground'
        LayerType = ltBanded
      end
    end
  end
  object dsConfig: TDataSource
    DataSet = dmConfig.qyConfig
    Left = 56
    Top = 8
  end
  object dsEmpresa: TDataSource
    DataSet = dmConfig.qyEmpresa
    Left = 56
    Top = 56
  end
  object dbConfig: TppDBPipeline
    DataSource = dsConfig
    RefreshAfterPost = True
    UserName = 'dbConfig'
    Left = 8
    Top = 8
    object dbConfigppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'cfg_id'
      FieldName = 'cfg_id'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 0
      Position = 0
    end
    object dbConfigppField2: TppField
      FieldAlias = 'cfg_software'
      FieldName = 'cfg_software'
      FieldLength = 50
      DisplayWidth = 50
      Position = 1
    end
    object dbConfigppField3: TppField
      FieldAlias = 'cfg_versao'
      FieldName = 'cfg_versao'
      FieldLength = 10
      DisplayWidth = 10
      Position = 2
    end
    object dbConfigppField4: TppField
      FieldAlias = 'cfg_enderecoweb'
      FieldName = 'cfg_enderecoweb'
      FieldLength = 60
      DisplayWidth = 60
      Position = 3
    end
    object dbConfigppField5: TppField
      FieldAlias = 'cfg_try'
      FieldName = 'cfg_try'
      FieldLength = 1
      DisplayWidth = 1
      Position = 4
    end
  end
  object dbEmpresa: TppDBPipeline
    DataSource = dsEmpresa
    RefreshAfterPost = True
    UserName = 'dbEmpresa'
    Left = 8
    Top = 56
    object dbEmpresappField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'emp_id'
      FieldName = 'emp_id'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 0
      Position = 0
    end
    object dbEmpresappField2: TppField
      FieldAlias = 'emp_razao'
      FieldName = 'emp_razao'
      FieldLength = 80
      DisplayWidth = 80
      Position = 1
    end
    object dbEmpresappField3: TppField
      FieldAlias = 'emp_cnpj'
      FieldName = 'emp_cnpj'
      FieldLength = 18
      DisplayWidth = 18
      Position = 2
    end
    object dbEmpresappField4: TppField
      FieldAlias = 'emp_ie'
      FieldName = 'emp_ie'
      FieldLength = 15
      DisplayWidth = 15
      Position = 3
    end
    object dbEmpresappField5: TppField
      FieldAlias = 'emp_inscmun'
      FieldName = 'emp_inscmun'
      FieldLength = 15
      DisplayWidth = 15
      Position = 4
    end
    object dbEmpresappField6: TppField
      FieldAlias = 'emp_logradouro'
      FieldName = 'emp_logradouro'
      FieldLength = 50
      DisplayWidth = 50
      Position = 5
    end
    object dbEmpresappField7: TppField
      FieldAlias = 'emp_bairro'
      FieldName = 'emp_bairro'
      FieldLength = 30
      DisplayWidth = 30
      Position = 6
    end
    object dbEmpresappField8: TppField
      FieldAlias = 'emp_cidade'
      FieldName = 'emp_cidade'
      FieldLength = 30
      DisplayWidth = 30
      Position = 7
    end
    object dbEmpresappField9: TppField
      FieldAlias = 'emp_uf'
      FieldName = 'emp_uf'
      FieldLength = 2
      DisplayWidth = 2
      Position = 8
    end
    object dbEmpresappField10: TppField
      FieldAlias = 'emp_cep'
      FieldName = 'emp_cep'
      FieldLength = 9
      DisplayWidth = 9
      Position = 9
    end
    object dbEmpresappField11: TppField
      FieldAlias = 'emp_telefone'
      FieldName = 'emp_telefone'
      FieldLength = 15
      DisplayWidth = 15
      Position = 10
    end
    object dbEmpresappField12: TppField
      FieldAlias = 'emp_email'
      FieldName = 'emp_email'
      FieldLength = 50
      DisplayWidth = 50
      Position = 11
    end
    object dbEmpresappField13: TppField
      FieldAlias = 'emp_homepage'
      FieldName = 'emp_homepage'
      FieldLength = 50
      DisplayWidth = 50
      Position = 12
    end
    object dbEmpresappField14: TppField
      FieldAlias = 'emp_cnes'
      FieldName = 'emp_cnes'
      FieldLength = 7
      DisplayWidth = 7
      Position = 13
    end
  end
end
