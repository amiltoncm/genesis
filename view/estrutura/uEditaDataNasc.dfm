inherited frmEditaDataNasc: TfrmEditaDataNasc
  Caption = 'Editar Data Nascimento / Idade'
  ClientHeight = 113
  ClientWidth = 355
  OnClose = FormClose
  ExplicitTop = 8
  ExplicitWidth = 361
  ExplicitHeight = 145
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel [0]
    Left = 8
    Top = 8
    Width = 42
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Exame:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBText2: TDBText [1]
    Left = 72
    Top = 8
    Width = 81
    Height = 17
    CustomHint = BalloonHint1
    DataField = 'exa_id'
    DataSource = dsExame
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel [2]
    Left = 8
    Top = 32
    Width = 55
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Paciente:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBText1: TDBText [3]
    Left = 72
    Top = 32
    Width = 233
    Height = 17
    CustomHint = BalloonHint1
    DataField = 'pac_nome'
    DataSource = dsExame
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel [4]
    Left = 8
    Top = 64
    Width = 28
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Idade'
  end
  inherited btFechar: TBitBtn
    Left = 242
    Top = 80
    TabOrder = 2
    ExplicitLeft = 242
    ExplicitTop = 80
  end
  object dbIdade: TDBEdit [6]
    Left = 8
    Top = 80
    Width = 57
    Height = 21
    Hint = 'Digite a nova idade do paciente'
    CustomHint = BalloonHint1
    DataField = 'pac_idade'
    DataSource = dsExame
    MaxLength = 3
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    OnKeyPress = dbIdadeKeyPress
  end
  object btAlterar: TBitBtn [7]
    Left = 121
    Top = 80
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
    ShowHint = True
    TabOrder = 1
    OnClick = btAlterarClick
  end
  inherited BalloonHint1: TBalloonHint
    Left = 200
    Top = 8
  end
  object dsExame: TDataSource
    DataSet = dmExames.qyExames
    Left = 160
    Top = 8
  end
end
