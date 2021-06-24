inherited frmSelHistCorte: TfrmSelHistCorte
  Caption = 'Seleciona Histologia'
  ClientHeight = 546
  ClientWidth = 1007
  ExplicitLeft = -224
  ExplicitWidth = 1013
  ExplicitHeight = 571
  PixelsPerInch = 96
  TextHeight = 13
  inherited lbParametro: TLabel
    Width = 60
    Caption = 'ID Histologia'
    ExplicitWidth = 60
  end
  object Label13: TLabel [1]
    Left = 584
    Top = 36
    Width = 19
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Obs'
  end
  object Label11: TLabel [2]
    Left = 8
    Top = 358
    Width = 57
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Topografias'
  end
  object Label12: TLabel [3]
    Left = 486
    Top = 358
    Width = 30
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Blocos'
  end
  object Label2: TLabel [4]
    Left = 8
    Top = 525
    Width = 32
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Etapa:'
  end
  object Label3: TLabel [5]
    Left = 48
    Top = 525
    Width = 51
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Requisi'#231#227'o'
  end
  object Label5: TLabel [6]
    Left = 120
    Top = 525
    Width = 25
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Corte'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel [7]
    Left = 168
    Top = 525
    Width = 39
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Revis'#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clPurple
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label9: TLabel [8]
    Left = 224
    Top = 525
    Width = 74
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Laudo impresso'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGray
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel [9]
    Left = 312
    Top = 525
    Width = 61
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Macroscopia'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel [10]
    Left = 392
    Top = 525
    Width = 57
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Microscopia'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel [11]
    Left = 464
    Top = 525
    Width = 108
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Aguardando impress'#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label10: TLabel [12]
    Left = 584
    Top = 525
    Width = 87
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Enviado por e-mail'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clAqua
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  inherited btFechar: TBitBtn
    Left = 894
    Top = 513
    ExplicitLeft = 894
    ExplicitTop = 513
  end
  inherited btFiltrar: TBitBtn
    Left = 95
    OnClick = btFiltrarClick
    ExplicitLeft = 95
  end
  inherited btLimpar: TBitBtn
    Left = 206
    OnClick = btLimparClick
    ExplicitLeft = 206
  end
  inherited edParametro: TEdit
    Left = 520
    Top = 8
    Visible = False
    ExplicitLeft = 520
    ExplicitTop = 8
  end
  inherited GridConsulta: TDBGrid
    Width = 570
    Height = 233
    OnDblClick = GridConsultaDblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'exa_id'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'exa_data'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'pac_nome'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'med_nome'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cov_descricao'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'pac_idade'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'pac_dtnasc'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'pac_sexo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'exa_matricula'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'exa_guia'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'exl_descricao'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'exl_descricao_1'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'res_titulo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'res_nome'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cos_tipo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'res_numconselho'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cos_uf'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'pac_meses'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'pac_codigo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cov_codigo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'med_codigo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'exa_origem'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'exa_destino'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'etp_id'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'exa_prioridade'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'exa_dataprior'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'exa_etapa'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'etp_tipo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'exa_obs'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'res_codigo'
        Visible = True
      end>
  end
  inherited btSelecionar: TBitBtn
    Left = 894
    Top = 480
    Caption = '&Confirmar'
    OnClick = btSelecionarClick
    ExplicitLeft = 894
    ExplicitTop = 480
  end
  object edHistologia: TMaskEdit [19]
    Left = 8
    Top = 24
    Width = 81
    Height = 21
    Hint = 'Digite o c'#243'digo da Histologia'
    CustomHint = BalloonHint1
    CharCase = ecUpperCase
    EditMask = '00C0000000;1;_'
    MaxLength = 10
    ParentShowHint = False
    ShowHint = False
    TabOrder = 6
    Text = '          '
    OnKeyDown = edHistologiaKeyDown
  end
  object dbObservacoes: TwwDBRichEditMSWord [20]
    Left = 584
    Top = 55
    Width = 415
    Height = 233
    Hint = 'Observa'#231#245'es gerais'
    CustomHint = BalloonHint1
    TabStop = False
    ScrollBars = ssVertical
    AutoURLDetect = False
    DataField = 'exa_obs'
    DataSource = dsObs
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    GutterWidth = 3
    HideSelection = False
    ParentFont = False
    ParentShowHint = False
    PrintJobName = 'Next Sistemas'
    ReadOnly = True
    ShowHint = False
    TabOrder = 7
    EditorOptions = [reoShowSaveExit, reoShowPrint, reoShowPrintPreview, reoShowPageSetup, reoShowFormatBar, reoShowToolBar, reoShowStatusBar, reoShowHints, reoShowRuler, reoShowInsertObject, reoCloseOnEscape, reoFlatButtons, reoShowSpellCheck, reoShowMainMenuIcons, reoShowZoomCombo]
    EditorCaption = 'Observa'#231#245'es'
    EditorPosition.Left = 0
    EditorPosition.Top = 0
    EditorPosition.Width = 0
    EditorPosition.Height = 0
    MeasurementUnits = muCentimeters
    PrintMargins.Top = 1.000000000000000000
    PrintMargins.Bottom = 1.000000000000000000
    PrintMargins.Left = 1.000000000000000000
    PrintMargins.Right = 1.000000000000000000
    PrintHeader.VertMargin = 0.500000000000000000
    PrintHeader.Font.Charset = DEFAULT_CHARSET
    PrintHeader.Font.Color = clWindowText
    PrintHeader.Font.Height = -11
    PrintHeader.Font.Name = 'Tahoma'
    PrintHeader.Font.Style = []
    PrintFooter.VertMargin = 0.500000000000000000
    PrintFooter.Font.Charset = DEFAULT_CHARSET
    PrintFooter.Font.Color = clWindowText
    PrintFooter.Font.Height = -11
    PrintFooter.Font.Name = 'Tahoma'
    PrintFooter.Font.Style = []
    RichEditVersion = 2
    Data = {
      810000007B5C727466315C616E73695C616E7369637067313235325C64656666
      305C6465666C616E67313034367B5C666F6E7474626C7B5C66305C666E696C20
      4D532053616E732053657269663B7D7D0D0A5C766965776B696E64345C756331
      5C706172645C66305C667331362064624F627365727661636F65735C7061720D
      0A7D0D0A00}
  end
  object btTodos: TBitBtn [21]
    Left = 8
    Top = 327
    Width = 105
    Height = 25
    Hint = 'Altera todos os exames para a MICROSCOPIA'
    CustomHint = BalloonHint1
    Caption = '&Todos'
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
      AC4906B65205B45005AF4B06FF00FFFF00FFFF00FFAC4906B45005B14E05AA47
      06FF00FFFF00FFFF00FFFF00FFFF00FFB24E05FF00FFFF00FFA94607AA4607FF
      00FFAA4607AE4906FF00FFFF00FFAC4806FF00FFFF00FFFF00FFFF00FFFF00FF
      B24E05FF00FFFF00FFFF00FFAA4607FF00FFAA4707FF00FFFF00FFFF00FFAB47
      06FF00FFFF00FFFF00FFFF00FFFF00FFB24F05A74407FF00FFFF00FFA94507FF
      00FFAA4707FF00FFFF00FFA13E08AB4807FF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFB55205B04C06B55005B34C03FF00FFB14B03B34E05AB4806AA4707FF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFAE4A05B448009F480E83
      46279F460FB34701AC4806FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FF826353AD9D9EAA4707FF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF66594FC2B1B0CC
      B6B588746C705E53FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FF9F8F88ECDEE0907D74BEA5A3AE9490665549FF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF705C4FE9E2E1BFB1AD66
      5142B49D98D3B7B8806A5FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFA78E89A69A92EDEBE9786557FF00FF796558CEB4B3A78E89A78E89FF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF715D50D8D2CFACA098FF00FFFF
      00FFFF00FF9A857DC3AAA8715D50FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FF857468C1B8B26C584AFF00FFFF00FFFF00FF6C584AAE9793877268FF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF8676698A7A6EFF00FFFF00FFFF
      00FFFF00FFFF00FF856F64867166FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FF6F5B4CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF705C4EFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    ParentShowHint = False
    ShowHint = False
    TabOrder = 8
    OnClick = btTodosClick
  end
  object btObs: TBitBtn [22]
    Left = 894
    Top = 327
    Width = 105
    Height = 25
    Hint = 'adiciona nova observa'#231#227'o.'
    CustomHint = BalloonHint1
    Caption = '&Nova obs'
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF902B03B14301952E02FF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FF8A2703B64701B849008F2A02FF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FF8A2702AF4101B849008F2A02FF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF8A2702
      AB4103C45101912C02FF00FFFF00FF8E2903973002973002973002973002972F
      02972F029730028C2802FF00FF983305D7690E9F3703FF00FFFF00FFFF00FFA4
      3901C14F00BF4C00BF4D00BD4C00BD4C00BF4D00B646008C2802872301C76016
      CA6213872302FF00FFFF00FFFF00FF902B02993102983102962F029F3502C04E
      00C14F00B546008C28028F2A03ED8E2CAB470DFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FF882603B44401BA4900AB3E01B747008B2802932E05F09530
      A13E0BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF8A2703AF4101C25000962E
      02A03601BA49008B2802902C04F09630B75213801E00FF00FFFF00FFFF00FFFF
      00FF8A2702B14201C551009E3502842303A33801BA49008B2802862201D47320
      F2952F953005832001832001832001963004C05407C45301A03501FF00FFFF00
      FFA33801BA49008B2802FF00FF952F05EE912DF79C33BB5514B04B10CA671AEF
      8A23D06711953003FF00FFFF00FFFF00FFA43801BA49008B2802FF00FFFF00FF
      932E04C15F18ED8C2CF69631E98A2BB852128E2903FF00FFFF00FFFF00FFFF00
      FFA13701B848008B2802FF00FFFF00FFFF00FF882502922D049A3607912D0486
      2301FF00FFFF00FFFF00FFFF00FFFF00FF8F2A03952E028B2802FF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    ParentShowHint = False
    ShowHint = False
    TabOrder = 9
    OnClick = btObsClick
  end
  object Panel1: TPanel [23]
    Left = 8
    Top = 288
    Width = 991
    Height = 33
    CustomHint = BalloonHint1
    BevelInner = bvLowered
    TabOrder = 10
    object DBText1: TDBText
      Left = 10
      Top = 11
      Width = 75
      Height = 17
      CustomHint = BalloonHint1
      DataField = 'exa_id'
      DataSource = dsConsulta
    end
    object DBText2: TDBText
      Left = 91
      Top = 11
      Width = 71
      Height = 17
      CustomHint = BalloonHint1
      DataField = 'exa_data'
      DataSource = dsConsulta
    end
    object DBText3: TDBText
      Left = 168
      Top = 11
      Width = 222
      Height = 17
      CustomHint = BalloonHint1
      DataField = 'pac_nome'
      DataSource = dsConsulta
    end
    object DBText4: TDBText
      Left = 396
      Top = 11
      Width = 222
      Height = 17
      CustomHint = BalloonHint1
      DataField = 'med_nome'
      DataSource = dsConsulta
    end
    object DBText5: TDBText
      Left = 624
      Top = 11
      Width = 222
      Height = 17
      CustomHint = BalloonHint1
      DataField = 'cov_descricao'
      DataSource = dsConsulta
    end
    object DBText6: TDBText
      Left = 852
      Top = 11
      Width = 132
      Height = 17
      CustomHint = BalloonHint1
      DataField = 'res_nome'
      DataSource = dsConsulta
    end
  end
  object wwDBGrid1: TwwDBGrid [24]
    Left = 486
    Top = 377
    Width = 250
    Height = 127
    Hint = 'Blocos'
    CustomHint = BalloonHint1
    TabStop = False
    Selected.Strings = (
      'etg_seq'#9'4'#9'Top.'#9'T'#9
      'ebl_seq'#9'10'#9'Sequ'#234'ncia'#9#9
      'ebl_fragmentos'#9'10'#9'Fragmentos'#9#9
      'ebl_laminas'#9'9'#9'L'#226'minas'#9#9)
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = dsBlocos
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ParentShowHint = False
    ReadOnly = True
    ShowHint = False
    TabOrder = 11
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
  end
  object GridTop: TwwDBGrid [25]
    Left = 8
    Top = 377
    Width = 458
    Height = 127
    Hint = 'Topografias solicitadas'
    CustomHint = BalloonHint1
    TabStop = False
    ControlType.Strings = (
      'etg_reserva;CheckBox;True;False')
    Selected.Strings = (
      'etg_seq'#9'9'#9'Sequencia'#9#9
      'top_descricao'#9'41'#9'Topografia'#9#9
      'top_id'#9'10'#9'ID Topografia'#9#9
      'etg_reserva'#9'5'#9'etg_reserva'#9#9)
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = dsTopografia
    ParentShowHint = False
    ReadOnly = True
    ShowHint = False
    TabOrder = 12
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
  end
  inherited BalloonHint1: TBalloonHint
    Left = 104
    Top = 96
  end
  inherited dsConsulta: TDataSource
    DataSet = dmExames.qyExames
    OnDataChange = dsConsultaDataChange
    Left = 192
  end
  object dsLog: TDataSource
    DataSet = dmExames.qyExamesLogs
    Left = 248
    Top = 96
  end
  object dsTopografia: TDataSource
    DataSet = dmExames.qyExamesTop
    OnDataChange = dsTopografiaDataChange
    Left = 304
    Top = 96
  end
  object dsBlocos: TDataSource
    DataSet = dmExames.qyExamesBlocos
    Left = 192
    Top = 152
  end
  object dsObs: TDataSource
    DataSet = dmExames.qyExamesObs
    Left = 243
    Top = 152
  end
end
