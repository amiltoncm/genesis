inherited frmAltVlrProced: TfrmAltVlrProced
  Caption = 'Altera valor dos procedimentos'
  ClientHeight = 553
  ClientWidth = 517
  ExplicitTop = -113
  ExplicitWidth = 523
  ExplicitHeight = 585
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 8
    Top = 80
    Width = 45
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Conv'#234'nio'
  end
  inherited btFechar: TBitBtn
    Left = 404
    Top = 520
    TabOrder = 4
    ExplicitLeft = 405
    ExplicitTop = 520
  end
  object Panel1: TPanel [2]
    Left = 8
    Top = 8
    Width = 497
    Height = 65
    CustomHint = BalloonHint1
    BevelInner = bvLowered
    Color = clInfoBk
    TabOrder = 5
    object Label2: TLabel
      Left = 8
      Top = 8
      Width = 450
      Height = 13
      CustomHint = BalloonHint1
      Caption = 
        'Este processo atualiza os valores dos procedimentos dos exames a' +
        'inda n'#227'o gerados cobran'#231'a.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 8
      Top = 24
      Width = 465
      Height = 13
      CustomHint = BalloonHint1
      Caption = 
        'Busca os valores atuais dos procedimentos do conv'#234'nio selecionad' +
        'o, caso n'#227'o encontre coloca o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 8
      Top = 40
      Width = 123
      Height = 13
      CustomHint = BalloonHint1
      Caption = 'valor padr'#227'o dos mesmos.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
  end
  object edCodigo: TEdit [3]
    Left = 8
    Top = 96
    Width = 49
    Height = 21
    Hint = 'Cliente selecionado'#13#10'(Tecle F4 para procurar)'
    CustomHint = BalloonHint1
    TabStop = False
    Color = clInfoBk
    ParentShowHint = False
    ReadOnly = True
    ShowHint = False
    TabOrder = 0
    Text = 'edCodigo'
  end
  object edDescricao: TEdit [4]
    Left = 56
    Top = 96
    Width = 209
    Height = 21
    Hint = 'Cliente selecionado'
    CustomHint = BalloonHint1
    TabStop = False
    Color = clBtnFace
    ParentShowHint = False
    ReadOnly = True
    ShowHint = False
    TabOrder = 1
    Text = 'edDescricao'
  end
  object DBGrid1: TwwDBGrid [5]
    Left = 8
    Top = 128
    Width = 501
    Height = 386
    Hint = 'Registros gravados'
    CustomHint = BalloonHint1
    TabStop = False
    Selected.Strings = (
      'exa_data'#9'10'#9'Data'#9#9
      'exa_id'#9'11'#9'Exame'#9#9
      'prc_tuss'#9'10'#9'TUSS'#9#9
      'exp_quant'#9'10'#9'Quantidade'#9#9
      'exp_unitario'#9'10'#9'Unit'#225'rio'#9#9
      'exp_total'#9'10'#9'Total'#9#9
      'eco_valor'#9'10'#9'Vlr tot. Exame'#9#9)
    IniAttributes.FileName = 'genesis'
    IniAttributes.SectionName = 'telasgrid'
    IniAttributes.Delimiter = '#'
    IniAttributes.CheckNewFields = True
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = dsConsulta
    KeyOptions = []
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ParentShowHint = False
    ReadOnly = True
    ShowHint = False
    TabOrder = 2
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = True
  end
  object btAlterar: TBitBtn [6]
    Left = 293
    Top = 520
    Width = 105
    Height = 25
    Hint = 'Altera os dados do Registro'#13#10'selecionado'
    CustomHint = BalloonHint1
    Caption = '&Alterar'
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
    TabOrder = 3
    OnClick = btAlterarClick
  end
  inherited BalloonHint1: TBalloonHint
    Left = 288
    Top = 192
  end
  object dsConsulta: TDataSource
    DataSet = dmConsultas.qyAtualizaProced
    Left = 280
    Top = 88
  end
end
