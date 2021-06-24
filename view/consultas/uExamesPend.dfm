inherited frmExamesPend: TfrmExamesPend
  Caption = 'Exames Pendentes'
  ClientHeight = 554
  ClientWidth = 823
  ExplicitTop = -131
  ExplicitWidth = 829
  ExplicitHeight = 586
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 8
    Top = 521
    Width = 52
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'At'#233' 7 dias.'
  end
  object Label2: TLabel [1]
    Left = 66
    Top = 521
    Width = 71
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Mais de 7 dias.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel [2]
    Left = 296
    Top = 521
    Width = 81
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Filtrar at'#233' a data'
  end
  inherited btFechar: TBitBtn
    Left = 710
    Top = 521
    ExplicitLeft = 710
    ExplicitTop = 448
  end
  object pgExames: TPageControl [4]
    Left = -3
    Top = 0
    Width = 818
    Height = 515
    CustomHint = BalloonHint1
    ActivePage = tsCitologia
    Images = frmPrincipal.Imagens
    TabOrder = 1
    OnChange = pgExamesChange
    object tsCitologia: TTabSheet
      CustomHint = BalloonHint1
      Caption = 'Citologia'
      ImageIndex = 173
      ExplicitHeight = 412
      object DBGrid1: TwwDBGrid
        Left = 0
        Top = 0
        Width = 808
        Height = 483
        Hint = 'Registros gravados'
        CustomHint = BalloonHint1
        TabStop = False
        Selected.Strings = (
          'exa_id'#9'11'#9'ID'#9#9
          'exa_data'#9'10'#9'Data'#9#9
          'med_nome'#9'32'#9'Medico'#9#9
          'pac_nome'#9'30'#9'Paciente'#9#9
          'cov_descricao'#9'18'#9'Convenio'#9#9
          'exa_etapa'#9'5'#9'Etapa'#9#9
          'cet_descricao'#9'18'#9'Etapa'#9#9)
        IniAttributes.FileName = 'genesis'
        IniAttributes.SectionName = 'telasgrid'
        IniAttributes.Delimiter = '#'
        IniAttributes.CheckNewFields = True
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        BorderStyle = bsNone
        Color = clBtnFace
        DataSource = dsConsCito
        KeyOptions = []
        ParentShowHint = False
        PopupMenu = popLogs
        ReadOnly = True
        ShowHint = True
        TabOrder = 0
        TitleAlignment = taLeftJustify
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        TitleLines = 1
        TitleButtons = True
        OnCalcCellColors = DBGrid1CalcCellColors
      end
    end
    object tsHistologia: TTabSheet
      CustomHint = BalloonHint1
      Caption = 'Histologia'
      ImageIndex = 174
      ExplicitHeight = 412
      object wwDBGrid1: TwwDBGrid
        Left = 0
        Top = 0
        Width = 808
        Height = 483
        Hint = 'Registros gravados'
        CustomHint = BalloonHint1
        TabStop = False
        Selected.Strings = (
          'exa_id'#9'11'#9'ID Exame'#9#9
          'exa_data'#9'10'#9'Data'#9#9
          'med_nome'#9'32'#9'Medico'#9#9
          'pac_nome'#9'30'#9'Paciente'#9#9
          'cov_descricao'#9'18'#9'Convenio'#9#9
          'exa_etapa'#9'5'#9'Etapa'#9#9
          'het_descricao'#9'18'#9'Etapa'#9'F'#9)
        IniAttributes.FileName = 'genesis'
        IniAttributes.SectionName = 'telasgrid'
        IniAttributes.Delimiter = '#'
        IniAttributes.CheckNewFields = True
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        BorderStyle = bsNone
        Color = clInfoBk
        DataSource = dsConsHisto
        KeyOptions = []
        ParentShowHint = False
        PopupMenu = popLogs
        ReadOnly = True
        ShowHint = True
        TabOrder = 0
        TitleAlignment = taLeftJustify
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        TitleLines = 1
        TitleButtons = True
        OnCalcCellColors = wwDBGrid1CalcCellColors
      end
    end
    object tsImuno: TTabSheet
      CustomHint = BalloonHint1
      Caption = 'Imuno / Captura h'#237'brida'
      ImageIndex = 187
      ExplicitHeight = 412
      object wwDBGrid2: TwwDBGrid
        Left = 0
        Top = 0
        Width = 808
        Height = 483
        Hint = 'Registros gravados'
        CustomHint = BalloonHint1
        TabStop = False
        Selected.Strings = (
          'exa_id'#9'11'#9'ID'
          'exa_data'#9'10'#9'Data'
          'med_nome'#9'32'#9'Medico'
          'pac_nome'#9'30'#9'Paciente'
          'cov_descricao'#9'18'#9'Convenio'
          'exa_etapa'#9'5'#9'Etapa'
          'imu_descricao'#9'18'#9'Etapa'#9'F')
        IniAttributes.FileName = 'genesis'
        IniAttributes.SectionName = 'telasgrid'
        IniAttributes.Delimiter = '#'
        IniAttributes.CheckNewFields = True
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        BorderStyle = bsNone
        Color = clInactiveCaptionText
        DataSource = dsConsImuno
        KeyOptions = []
        ParentShowHint = False
        PopupMenu = popLogs
        ReadOnly = True
        ShowHint = True
        TabOrder = 0
        TitleAlignment = taLeftJustify
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        TitleLines = 1
        TitleButtons = True
      end
    end
  end
  object dtpDataFil: TDateTimePicker [5]
    Left = 383
    Top = 521
    Width = 186
    Height = 21
    Hint = 'Selecione a data para o filtro'
    CustomHint = BalloonHint1
    Date = 42400.777541956020000000
    Time = 42400.777541956020000000
    TabOrder = 2
    TabStop = False
  end
  object btFiltrar: TBitBtn [6]
    Left = 575
    Top = 521
    Width = 105
    Height = 25
    Hint = 'Clique para executar o filtro'
    CustomHint = BalloonHint1
    Caption = 'Fil&trar'
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000120B0000120B00000000000000000000FF00FFB78183
      B78183B78183B78183B78183B78183B78183B78183B78183B78183B78183B781
      83B78183FF00FFFF00FFFF00FFB78183FEEED4F7E3C5C7895DBB6221D9A878F3
      D3A2F1CF9AF0CF97F0CF98F0CF98F5D49AB78183FF00FFFF00FFFF00FFB78183
      FDEFD99FCBD03AA9CC677771BA5F1A7B70599DA795EECC99EECC97EECC97F3D1
      99B78183FF00FFFF00FFFF00FFB48176FEF3E337ADD393DCF572D1F066969FBC
      601AA67B52CC9062E3B887EECC97F3D199B78183FF00FFFF00FFFF00FFB48176
      FFF7EB37ADD3C1EFFE98DDF662CFF163A5B5BB6321D6B492C06A2BCD9365F3D1
      98B78183FF00FFFF00FFFF00FFBA8E85FFFCF437ADD3D8F8FFBCEBFD7CDDF863
      D5F54C95ABBF6A2BF6EDE4BE611CBD601AB78183FF00FFFF00FFFF00FFBA8E85
      FFFFFD37ADD3DDF9FFCDF4FF8FE8FE76E2FB37ADD3EAC8A6C27139EDD2BDEABF
      90BD601ABD601AFF00FFFF00FFCB9A82FFFFFF37ADD3DBF9FFCDF3FF94ECFE86
      EBFF3AA9CCE8C6A8C98252BD611CE4AF76DE9852BD601ABD601AFF00FFCB9A82
      FFFFFF37ADD3DCF9FFCFF4FF95EDFE8AEFFF3EA3C2BF6B32D59F77E1A261D789
      39BD601AFF00FFFF00FFFF00FFDCA887FFFFFF37ADD3E1FBFFD1F4FF95EDFF8C
      F0FF37ADD3E3BEA4C3733BBD601BDA8B39CA6504BD601AFF00FFFF00FFDCA887
      FFFFFF37ADD337ADD337ADD337ADD337ADD337ADD3FAEDDCFAEAD4CA9B81BD61
      1BBD601ABD601ABD601AFF00FFE3B18EFFFFFF37ADD398E1F494E4F982E2F871
      DBF337ADD3F1E1D5B8857AB8857AB8857AB78183FF00FFFF00FFFF00FFE3B18E
      FFFFFF99D7EB37ADD337ADD337ADD337ADD39BD7E8E3CFC9B8857AE8B270ECA5
      4AC58768FF00FFFF00FFFF00FFEDBD92FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFE4D4D2B8857AFAC577CD9377FF00FFFF00FFFF00FFFF00FFEDBD92
      FCF7F4FCF7F3FBF6F3FBF6F3FAF5F3F9F5F3F9F5F3E1D0CEB8857ACF9B86FF00
      FFFF00FFFF00FFFF00FFFF00FFEDBD92DCA887DCA887DCA887DCA887DCA887DC
      A887DCA887DCA887B8857AFF00FFFF00FFFF00FFFF00FFFF00FF}
    ParentShowHint = False
    ShowHint = False
    TabOrder = 3
    TabStop = False
    OnClick = btFiltrarClick
  end
  inherited BalloonHint1: TBalloonHint
    Left = 40
    Top = 80
  end
  object popLogs: TPopupMenu
    Images = frmPrincipal.Imagens
    OwnerDraw = True
    Left = 220
    Top = 145
    object VisualizaLOGS1: TMenuItem
      Caption = 'Visualiza LOGS do Exame'
      Hint = 'Visualiza logs do exame solicitado'
      ImageIndex = 16
      OnClick = VisualizaLOGS1Click
    end
  end
  object dsConsCito: TDataSource
    DataSet = dmConsultas.qyConsCitoEtapas
    Left = 76
    Top = 264
  end
  object dsConsHisto: TDataSource
    DataSet = dmConsultas.qyConsHistoEtapas
    Left = 140
    Top = 264
  end
  object dsConsImuno: TDataSource
    DataSet = dmConsultas.qyConsImunoEtapas
    Left = 212
    Top = 265
  end
end
