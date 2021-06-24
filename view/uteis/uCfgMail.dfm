inherited frmCfgMail: TfrmCfgMail
  Caption = 'Configura'#231#227'o de e-mail  - Expedi'#231#227'o de exames'
  ClientHeight = 384
  ClientWidth = 634
  ExplicitWidth = 640
  ExplicitHeight = 416
  PixelsPerInch = 96
  TextHeight = 13
  inherited btFechar: TBitBtn
    Left = 521
    Top = 351
    ExplicitLeft = 521
    ExplicitTop = 351
  end
  object GroupBox1: TGroupBox [1]
    Left = 9
    Top = 8
    Width = 617
    Height = 145
    CustomHint = BalloonHint1
    Caption = ' Dados da conta (smtp) '
    TabOrder = 1
    object Label1: TLabel
      Left = 8
      Top = 16
      Width = 22
      Height = 13
      CustomHint = BalloonHint1
      Caption = 'Host'
    end
    object Label2: TLabel
      Left = 312
      Top = 15
      Width = 209
      Height = 13
      CustomHint = BalloonHint1
      Caption = 'Nome da conta (usu'#225'rio da conta de e-mail)'
    end
    object Label3: TLabel
      Left = 8
      Top = 59
      Width = 30
      Height = 13
      CustomHint = BalloonHint1
      Caption = 'Senha'
    end
    object Label4: TLabel
      Left = 312
      Top = 57
      Width = 226
      Height = 13
      CustomHint = BalloonHint1
      Caption = 'Nome do usu'#225'rio (nome que aparece no e-mail)'
    end
    object Label5: TLabel
      Left = 8
      Top = 99
      Width = 75
      Height = 13
      CustomHint = BalloonHint1
      Caption = 'Conta de e-mail'
    end
    object Label6: TLabel
      Left = 312
      Top = 99
      Width = 60
      Height = 13
      CustomHint = BalloonHint1
      Caption = 'Porta (smtp)'
    end
    object edHost: TEdit
      Left = 8
      Top = 30
      Width = 298
      Height = 21
      Hint = 'Host da conta de e-mail'
      CustomHint = BalloonHint1
      TabOrder = 0
      Text = 'edHost'
    end
    object edUserName: TEdit
      Left = 312
      Top = 30
      Width = 298
      Height = 21
      Hint = 'Nome da conta de e-mail'
      CustomHint = BalloonHint1
      TabOrder = 1
      Text = 'edUserName'
    end
    object mePassword: TMaskEdit
      Left = 8
      Top = 72
      Width = 298
      Height = 21
      Hint = 'Senha da conta de e-mail'
      CustomHint = BalloonHint1
      PasswordChar = '*'
      TabOrder = 2
      Text = 'mePassword'
    end
    object edNameFrom: TEdit
      Left = 312
      Top = 72
      Width = 298
      Height = 21
      Hint = 'Nome do usu'#225'rio'
      CustomHint = BalloonHint1
      TabOrder = 3
      Text = 'edNameFrom'
    end
    object edAdressFrom: TEdit
      Left = 8
      Top = 114
      Width = 298
      Height = 21
      Hint = 'Conta de e-mail'
      CustomHint = BalloonHint1
      TabOrder = 4
      Text = 'edAdressFrom'
    end
    object cbPorta: TComboBox
      Left = 312
      Top = 114
      Width = 145
      Height = 21
      Hint = 'Porta SMTP'
      CustomHint = BalloonHint1
      TabOrder = 5
      Text = 'cbPorta'
      Items.Strings = (
        '25'
        '465'
        '587')
    end
  end
  object GroupBox2: TGroupBox [2]
    Left = 8
    Top = 159
    Width = 617
    Height = 186
    CustomHint = BalloonHint1
    Caption = ' Dados do provedor '
    TabOrder = 2
    object Label7: TLabel
      Left = 9
      Top = 16
      Width = 100
      Height = 13
      CustomHint = BalloonHint1
      Caption = 'Tipo de autentica'#231#227'o'
    end
    object Label8: TLabel
      Left = 9
      Top = 59
      Width = 56
      Height = 13
      CustomHint = BalloonHint1
      Caption = 'M'#233'todo SSL'
    end
    object Label9: TLabel
      Left = 9
      Top = 99
      Width = 46
      Height = 13
      CustomHint = BalloonHint1
      Caption = 'Modo SSL'
    end
    object Label10: TLabel
      Left = 9
      Top = 139
      Width = 38
      Height = 13
      CustomHint = BalloonHint1
      Caption = 'Use TLS'
    end
    object cbAuthtype: TComboBox
      Left = 9
      Top = 32
      Width = 298
      Height = 21
      Hint = 'Selecione o tipo de autentica'#231#227'o do servidor'
      CustomHint = BalloonHint1
      TabOrder = 0
      Text = 'cbAuthtype'
      Items.Strings = (
        'Default'
        'None'
        'SASL')
    end
    object cbSslMethod: TComboBox
      Left = 9
      Top = 72
      Width = 298
      Height = 21
      Hint = 'Selecione o m'#233'todo SSL'
      CustomHint = BalloonHint1
      TabOrder = 1
      Text = 'cbSslMethod'
      Items.Strings = (
        'SSL v2'
        'SSL v23'
        'SSL v3'
        'TLS v1')
    end
    object cbSslMode: TComboBox
      Left = 9
      Top = 112
      Width = 298
      Height = 21
      Hint = 'Selecione o modo SSL'
      CustomHint = BalloonHint1
      TabOrder = 2
      Text = 'cbSslMode'
      Items.Strings = (
        'Both'
        'Client'
        'Server'
        'Unassigned')
    end
    object cbUseTls: TComboBox
      Left = 9
      Top = 152
      Width = 298
      Height = 21
      Hint = 'Selecione o TLS'
      CustomHint = BalloonHint1
      TabOrder = 3
      Text = 'cbUseTls'
      Items.Strings = (
        'No TLS Suport'
        'Use Explicit TLS'
        'Use Implicit TLS'
        'Use Require TLS')
    end
  end
  object btAlterar: TBitBtn [3]
    Left = 410
    Top = 351
    Width = 105
    Height = 25
    Hint = 'Grava as altera'#231#245'es executa o testa'
    CustomHint = BalloonHint1
    Caption = '&Confirmar'
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
    TabOrder = 3
    OnClick = btAlterarClick
  end
  inherited BalloonHint1: TBalloonHint
    Left = 360
    Top = 216
  end
end
