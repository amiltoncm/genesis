inherited frmConfAltPagamento: TfrmConfAltPagamento
  Caption = 'Confirma altera'#231#227'o no pagamento'
  ClientHeight = 133
  OnClose = FormClose
  ExplicitHeight = 165
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 8
    Top = 8
    Width = 55
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Vencimento'
    ParentShowHint = False
    ShowHint = False
  end
  object Label2: TLabel [1]
    Left = 103
    Top = 8
    Width = 55
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Fornecedor'
    ParentShowHint = False
    ShowHint = False
  end
  object Label3: TLabel [2]
    Left = 488
    Top = 8
    Width = 49
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Referente'
    ParentShowHint = False
    ShowHint = False
  end
  object Label4: TLabel [3]
    Left = 9
    Top = 54
    Width = 24
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Valor'
    ParentShowHint = False
    ShowHint = False
  end
  object Label12: TLabel [4]
    Left = 132
    Top = 54
    Width = 24
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Pago'
    ParentShowHint = False
    ShowHint = False
  end
  object Label5: TLabel [5]
    Left = 245
    Top = 54
    Width = 45
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Desconto'
    ParentShowHint = False
    ShowHint = False
  end
  object Label6: TLabel [6]
    Left = 358
    Top = 54
    Width = 48
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Acr'#233'scimo'
    ParentShowHint = False
    ShowHint = False
  end
  object Label7: TLabel [7]
    Left = 471
    Top = 54
    Width = 26
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Saldo'
    ParentShowHint = False
    ShowHint = False
  end
  object Label11: TLabel [8]
    Left = 115
    Top = 73
    Width = 11
    Height = 18
    CustomHint = BalloonHint1
    Caption = '-'
    Font.Charset = OEM_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'Roman'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = False
  end
  object Label8: TLabel [9]
    Left = 228
    Top = 73
    Width = 11
    Height = 18
    CustomHint = BalloonHint1
    Caption = '-'
    Font.Charset = OEM_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'Roman'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = False
  end
  object Label9: TLabel [10]
    Left = 341
    Top = 73
    Width = 11
    Height = 18
    CustomHint = BalloonHint1
    Caption = '+'
    Font.Charset = OEM_CHARSET
    Font.Color = clBlue
    Font.Height = -16
    Font.Name = 'Roman'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = False
  end
  object Label10: TLabel [11]
    Left = 454
    Top = 73
    Width = 11
    Height = 18
    CustomHint = BalloonHint1
    Caption = '='
    Font.Charset = OEM_CHARSET
    Font.Color = clMaroon
    Font.Height = -16
    Font.Name = 'Roman'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = False
  end
  inherited btFechar: TBitBtn
    Top = 100
  end
  object cbVencimento: TwwDBDateTimePicker [13]
    Left = 8
    Top = 27
    Width = 89
    Height = 21
    Hint = 'Vencimento da Duplicata'
    CustomHint = BalloonHint1
    CalendarAttributes.Font.Charset = DEFAULT_CHARSET
    CalendarAttributes.Font.Color = clWindowText
    CalendarAttributes.Font.Height = -11
    CalendarAttributes.Font.Name = 'MS Sans Serif'
    CalendarAttributes.Font.Style = []
    DataField = 'pag_vencimento'
    DataSource = frmAltPagamento.dsConsulta
    Epoch = 1950
    ButtonEffects.Transparent = True
    ButtonEffects.Flat = True
    ParentShowHint = False
    ShowHint = False
    ShowButton = True
    TabOrder = 1
    UnboundDataType = wwDTEdtDate
    DisplayFormat = 'dd/mm/yy'
  end
  object dbForCodigo: TDBEdit [14]
    Left = 103
    Top = 27
    Width = 64
    Height = 21
    Hint = 'Cliente'
    CustomHint = BalloonHint1
    TabStop = False
    Color = clBtnFace
    DataField = 'for_codigo'
    DataSource = frmAltPagamento.dsConsulta
    ParentShowHint = False
    ReadOnly = True
    ShowHint = False
    TabOrder = 2
  end
  object dbFornecedor: TDBEdit [15]
    Left = 167
    Top = 27
    Width = 315
    Height = 21
    Hint = 'Cliente'
    CustomHint = BalloonHint1
    TabStop = False
    Color = clBtnFace
    DataField = 'for_razao'
    DataSource = frmAltPagamento.dsConsulta
    ParentShowHint = False
    ReadOnly = True
    ShowHint = False
    TabOrder = 3
  end
  object dbReferente: TDBEdit [16]
    Left = 488
    Top = 27
    Width = 81
    Height = 21
    Hint = 'Refer'#234'ncia da cobran'#231'a'
    CustomHint = BalloonHint1
    TabStop = False
    Color = clBtnFace
    DataField = 'pag_nf'
    DataSource = frmAltPagamento.dsConsulta
    ParentShowHint = False
    ReadOnly = True
    ShowHint = False
    TabOrder = 4
  end
  object dbValor: TDBEdit [17]
    Left = 9
    Top = 73
    Width = 100
    Height = 21
    Hint = 'Valor original'#13#10'Clique 2X para alterar'
    CustomHint = BalloonHint1
    TabStop = False
    Color = clBtnFace
    DataField = 'pag_valor'
    DataSource = frmAltPagamento.dsConsulta
    ParentShowHint = False
    ReadOnly = True
    ShowHint = False
    TabOrder = 5
    OnDblClick = dbValorDblClick
  end
  object dbPago: TDBEdit [18]
    Left = 132
    Top = 73
    Width = 90
    Height = 21
    Hint = 'Valor j'#225' pago'
    CustomHint = BalloonHint1
    TabStop = False
    Color = clBtnFace
    DataField = 'pag_pago'
    DataSource = frmAltPagamento.dsConsulta
    ParentShowHint = False
    ReadOnly = True
    ShowHint = False
    TabOrder = 6
  end
  object dbDesconto: TDBEdit [19]
    Left = 245
    Top = 73
    Width = 90
    Height = 21
    Hint = 'Desconto'
    CustomHint = BalloonHint1
    DataField = 'pag_desconto'
    DataSource = frmAltPagamento.dsConsulta
    ParentShowHint = False
    ShowHint = False
    TabOrder = 7
    OnExit = dbDescontoExit
  end
  object dbAcrescimo: TDBEdit [20]
    Left = 358
    Top = 73
    Width = 90
    Height = 21
    Hint = 'Acr'#233'scimo'
    CustomHint = BalloonHint1
    DataField = 'pag_acrescimo'
    DataSource = frmAltPagamento.dsConsulta
    ParentShowHint = False
    ShowHint = False
    TabOrder = 8
    OnExit = dbAcrescimoExit
  end
  object dbSaldo: TDBEdit [21]
    Left = 471
    Top = 73
    Width = 98
    Height = 21
    Hint = 'Saldo'
    CustomHint = BalloonHint1
    TabStop = False
    Color = clBtnFace
    DataField = 'pag_saldo'
    DataSource = frmAltPagamento.dsConsulta
    ParentShowHint = False
    ReadOnly = True
    ShowHint = False
    TabOrder = 9
  end
  object btAlterar: TBitBtn [22]
    Left = 353
    Top = 100
    Width = 105
    Height = 25
    Hint = 'Clique para confirmar a altera'#231#227'o'
    CustomHint = BalloonHint1
    Caption = '&Alterar'
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
      FF00FFFF00FFFF00FF013002014103025104025104014303013302FF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF014503014503037808039C0B03
      9F0C039F0C039D0C027E09014D04014D04FF00FFFF00FFFF00FFFF00FFFF00FF
      034F0903650904A30D03A60C03A00B029E0A039F0C03A00C03A50C03A60C0269
      06013402FF00FFFF00FFFF00FF044F09066B110AAB1F07A415049E0D029D0AB1
      E6B6FFFFFF36B841039E0C03A00C03A70C026A06024C04FF00FFFF00FF044F09
      10AC300DAB2809A41C039E0F039E0CAFE5B4FFFFFF37BA42039E0C039E0C039F
      0C03A70C024C04FF00FF0357060D822317B6410EA92D05A013049F0D039E0CAD
      E5B2FFFFFF36B841039E0C039E0C039E0C03A50C037B0801420303570617A341
      18B54A11AB3419AB2707A011049F0DAFE5B2FFFFFF36B841039E0C17AA220AA3
      1403A10C03960A01420306680D21B1511EB75120B54FDCF4E28FDCA117AF39B5
      E9C2FFFFFF29B23435B840F2FBF398DD9E03A00C039F0C014A040874123EBD69
      2ABA5C21B553EDFAF2FFFFFF8CDDABBCEBCFFFFFFF6BCE75DCF4DEFFFFFF7FD4
      8703A00C039F0C02520506780E54C57A44C6741CB24E66CF8CF7FCF8FCFFFEF7
      FCFAFCFEFEFAFEFAFFFFFF7DD48E0EA62607A518039D0C01460306780E4CBD69
      83DDA722B6551CB24E5FCC87F6FCF8FFFFFFFFFFFFFFFFFF88D99D10AB2F0CA6
      2706A716038C0A014603FF00FF21A336AAE7C568D08E16AF481BB14C5DCC86F2
      FBF6FFFFFF9DE1B211AA320EA7290BA42009AF1C036B0AFF00FFFF00FF21A336
      56C573C5F0D866CF8C20B45219B14C70D395BAEACC26B75413AC3C12AA340FB0
      2D0A991F036B0AFF00FFFF00FFFF00FF1399236ACC88D0F4E39AE1B650C77A38
      BD672CBA5D30BB602FBC5D23BC4F11A33006620FFF00FFFF00FFFF00FFFF00FF
      FF00FF4BBF674BBF6798E1B5BDEED4A7E7C490E0B178D99F49C7791B9D3D1B9D
      3DFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF1DA43538B45446
      BC6642B8632BA649138C2AFF00FFFF00FFFF00FFFF00FFFF00FF}
    ParentShowHint = False
    ShowHint = False
    TabOrder = 10
    OnClick = btAlterarClick
  end
  inherited BalloonHint1: TBalloonHint
    Left = 200
    Top = 8
  end
end
