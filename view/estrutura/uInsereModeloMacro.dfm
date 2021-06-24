inherited frmInsereModeloMacro: TfrmInsereModeloMacro
  Caption = 'Insere Modelo Macrocopia'
  ClientHeight = 283
  ClientWidth = 234
  Color = clInfoBk
  ExplicitWidth = 240
  ExplicitHeight = 315
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel [0]
    Left = 8
    Top = 8
    Width = 42
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Exame:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbExame: TLabel [1]
    Left = 56
    Top = 8
    Width = 48
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'lbExame'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel [2]
    Left = 8
    Top = 25
    Width = 220
    Height = 26
    CustomHint = BalloonHint1
    Caption = 
      'Foram encontrados modelos de laudo padr'#227'o,'#13#10'selecione para este ' +
      'exame e clique em OK!'
  end
  inherited btFechar: TBitBtn
    Left = 120
    Top = 250
    Caption = '&Cancelar'
    TabOrder = 1
    ExplicitLeft = 120
    ExplicitTop = 250
  end
  object btInserir: TBitBtn [4]
    Left = 8
    Top = 250
    Width = 105
    Height = 25
    Hint = 'Insere o modelo selecionado'
    CustomHint = BalloonHint1
    Caption = '&Inserir'
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF08
      780E08780EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FF08780E76F9A70DA31B08780EFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF08780E76
      F9A70EAA1D08780EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FF08780E76F9A70EA81C08780EFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF08780E76
      F9A710AA1F08780EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      08780E08780E08780E08780E08780E76F9A719B02C08780E08780E08780E0878
      0E08780EFF00FFFF00FFFF00FF08780E76F9A755E38349DA7242D36837C8562A
      B94322B3371CB23016AF270FA81D0EA91B0DA21B08780EFF00FFFF00FF08780E
      76F9A776F9A776F9A776F9A776F9A776F9A72CBB4876F9A776F9A776F9A776F9
      A776F9A708780EFF00FFFF00FFFF00FF08780E08780E08780E08780E08780E76
      F9A73CCB5D08780E08780E08780E08780E08780EFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FF08780E76F9A749D97208780EFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF08780E76
      F9A755E28208780EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FF08780E76F9A763F09708780EFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF08780E76
      F9A776F9A708780EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FF08780E08780EFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    OnClick = btInserirClick
  end
  object GridModelos: TDBGrid [5]
    Left = 8
    Top = 59
    Width = 217
    Height = 182
    Hint = 'Modelo de laudos padr'#227'o encontrados'
    CustomHint = BalloonHint1
    DataSource = dsModelo
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDrawColumnCell = GridModelosDrawColumnCell
    Columns = <
      item
        Expanded = False
        FieldName = 'lmm_descricao'
        Visible = True
      end>
  end
  object dsModelo: TDataSource
    DataSet = dmCadastros.qyLaudosPadrao
    Left = 136
    Top = 8
  end
end
