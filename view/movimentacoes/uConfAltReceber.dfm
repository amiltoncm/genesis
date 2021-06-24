inherited frmConfAltReceber: TfrmConfAltReceber
  Caption = 'Altera recebimento'
  ClientHeight = 108
  ClientWidth = 682
  ExplicitWidth = 688
  ExplicitHeight = 140
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 8
    Top = 8
    Width = 55
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Vencimento'
  end
  object Label2: TLabel [1]
    Left = 103
    Top = 8
    Width = 33
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Cliente'
  end
  object Label3: TLabel [2]
    Left = 500
    Top = 8
    Width = 11
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'ID'
  end
  object Label9: TLabel [3]
    Left = 590
    Top = 8
    Width = 41
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Hist'#243'rico'
  end
  object Label4: TLabel [4]
    Left = 90
    Top = 56
    Width = 48
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Acr'#233'scimo'
  end
  object Label6: TLabel [5]
    Left = 172
    Top = 56
    Width = 45
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Desconto'
  end
  object Label8: TLabel [6]
    Left = 8
    Top = 56
    Width = 61
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Valor original'
  end
  object Label7: TLabel [7]
    Left = 254
    Top = 56
    Width = 24
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Pago'
  end
  object Label5: TLabel [8]
    Left = 336
    Top = 56
    Width = 26
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Saldo'
  end
  inherited btFechar: TBitBtn
    Left = 569
    Top = 75
    TabOrder = 11
    ExplicitLeft = 569
    ExplicitTop = 75
  end
  object dbVencimento: TwwDBDateTimePicker [10]
    Left = 8
    Top = 27
    Width = 89
    Height = 21
    Hint = 'Vencimento da duplicata'
    CustomHint = BalloonHint1
    CalendarAttributes.Font.Charset = DEFAULT_CHARSET
    CalendarAttributes.Font.Color = clWindowText
    CalendarAttributes.Font.Height = -11
    CalendarAttributes.Font.Name = 'MS Sans Serif'
    CalendarAttributes.Font.Style = []
    DataField = 'rec_vencimento'
    DataSource = dsReceber
    Epoch = 1950
    ButtonEffects.Transparent = True
    ButtonEffects.Flat = True
    ParentShowHint = False
    ShowHint = True
    ShowButton = True
    TabOrder = 0
  end
  object dbCodCliente: TDBEdit [11]
    Left = 103
    Top = 27
    Width = 65
    Height = 21
    Hint = 'C'#243'digo do Cliente'
    CustomHint = BalloonHint1
    TabStop = False
    Color = clBtnFace
    DataField = 'rec_codigo'
    DataSource = dsReceber
    ParentShowHint = False
    ReadOnly = True
    ShowHint = True
    TabOrder = 1
  end
  object dbCliente: TDBEdit [12]
    Left = 167
    Top = 27
    Width = 326
    Height = 21
    Hint = 'Cliente selecionado'
    CustomHint = BalloonHint1
    TabStop = False
    Color = clBtnFace
    DataField = 'rec_nome'
    DataSource = dsReceber
    ParentShowHint = False
    ReadOnly = True
    ShowHint = True
    TabOrder = 2
  end
  object dbNF: TDBEdit [13]
    Left = 499
    Top = 27
    Width = 85
    Height = 21
    Hint = 'ID do recebimento'
    CustomHint = BalloonHint1
    TabStop = False
    Color = clBtnFace
    DataField = 'rec_codigo'
    DataSource = dsReceber
    ParentShowHint = False
    ReadOnly = True
    ShowHint = True
    TabOrder = 3
  end
  object dbHistorico: TDBEdit [14]
    Left = 590
    Top = 27
    Width = 84
    Height = 21
    Hint = 'Hist'#243'rico de gera'#231#227'o de cobran'#231'a'
    CustomHint = BalloonHint1
    TabStop = False
    Color = clBtnFace
    DataField = 'his_id'
    DataSource = dsReceber
    ParentShowHint = False
    ReadOnly = True
    ShowHint = True
    TabOrder = 4
  end
  object dbAcrescimo: TDBEdit [15]
    Left = 90
    Top = 75
    Width = 76
    Height = 21
    Hint = 'Digite o valor do Acr'#233'scimo'
    CustomHint = BalloonHint1
    DataField = 'rec_acrescimo'
    DataSource = dsReceber
    ParentShowHint = False
    ShowHint = True
    TabOrder = 6
    OnExit = dbAcrescimoExit
  end
  object dbDesconto: TDBEdit [16]
    Left = 172
    Top = 75
    Width = 76
    Height = 21
    Hint = 'Digite o valor do desconto'
    CustomHint = BalloonHint1
    DataField = 'rec_desconto'
    DataSource = dsReceber
    ParentShowHint = False
    ShowHint = True
    TabOrder = 7
    OnExit = dbDescontoExit
  end
  object dbValor: TDBEdit [17]
    Left = 8
    Top = 75
    Width = 76
    Height = 21
    Hint = 'Valor original da parcela / duplicata'
    CustomHint = BalloonHint1
    TabStop = False
    Color = clBtnFace
    DataField = 'rec_valor'
    DataSource = dsReceber
    ParentShowHint = False
    ReadOnly = True
    ShowHint = True
    TabOrder = 5
  end
  object dbPago: TDBEdit [18]
    Left = 254
    Top = 75
    Width = 76
    Height = 21
    Hint = 'Valor pago'
    CustomHint = BalloonHint1
    TabStop = False
    DataField = 'rec_pago'
    DataSource = dsReceber
    ParentShowHint = False
    ShowHint = True
    TabOrder = 8
    OnExit = dbPagoExit
  end
  object dbSaldo: TDBEdit [19]
    Left = 336
    Top = 75
    Width = 76
    Height = 21
    Hint = 'Saldo da parcela / duplicata'
    CustomHint = BalloonHint1
    TabStop = False
    Color = clBtnFace
    DataField = 'rec_saldo'
    DataSource = dsReceber
    ParentShowHint = False
    ReadOnly = True
    ShowHint = True
    TabOrder = 9
  end
  object btGravar: TBitBtn [20]
    Left = 458
    Top = 75
    Width = 105
    Height = 25
    Hint = 'Grava lan'#231'amento da duplicata'
    CustomHint = BalloonHint1
    Caption = '&Gravar'
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
      FF00FFFF00FFFF00FF0955A10857A60557AA0655A70954A00954A0FF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0872DD0362C3006CDB0877E711
      7DEA0877E70069DD005DC70654A50654A5FF00FFFF00FFFF00FFFF00FFFF00FF
      0F6BC90872DD3E99F591C4F9D6E9FDEEF7FFE4F1FFB0D4FB59A5F50570E5035A
      B70B5095FF00FFFF00FFFF00FF1278E0127CE870B4F9F6FAFEFFFFFFEEF6FDD3
      E6FBE2EEFDFFFFFFFFFFFFAED2FA0E78ED025AB60653A2FF00FFFF00FF1278E0
      6DB2F9FEFEFFF4F9FE77B6F63391F0B5D5F91B7FEA4693EEC9E0FAFFFFFFB0D5
      FA0970E60653A2FF00FF0B70D53695F4E8F3FEFFFFFF4FA3F61F88F2D4E7FCFF
      FFFF489BEF0065E60E74E8C9E1FAFFFFFF58A5F5005EC70858AB137AE371B5FB
      FFFFFFB2D7FC469FF7DEEEFDFDFEFEE0EEFDA1CCF80173E9006AE74294EDFFFF
      FFB3D7FB016BDE0858AB1F85ECA2CFFDFFFFFF71B7FDACD4FDFAFCFF66AFF83F
      9AF5E2EFFD2D8EF00075EB0575E9E2EEFCE6F3FF0E7BE9065AB02F8FF1B7DAFD
      FFFFFF6BB4FF3C9DFE4FA5FB1D8AF81484F5A0CDFB84BDF8067AEF0374EBD4E8
      FBF0F8FF1A82EC055CB53693F0B8DAFEFFFFFF8EC6FF2391FF2E95FE2B93FC21
      8CF92D92F79ACAFB1D86F21D86F0F3F8FED9EBFE117DE9095CB22689EDAFD6FD
      FFFFFFE1F0FF3499FF2F96FF3399FF2E94FD218CF950A4F9419BF77DBBF8FFFF
      FF99C9FA0773E10958ABFF00FF3994F0F1F8FFFFFFFFADD6FF3499FF2592FF28
      93FF238FFC1788FA6FB4FAF4FAFFF5FAFE49A0F7076ACEFF00FFFF00FF3994F0
      CDE6FFF6FAFFFFFFFFE0EFFF8DC6FF6EB6FE79BBFFB6DAFEFFFFFFFFFFFF78B9
      F9137BE6076ACEFF00FFFF00FFFF00FF64ACF6D4EAFFF9FCFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFE7F3FE77B8FA1D85ED0D6DD0FF00FFFF00FFFF00FFFF00FF
      FF00FF459AF0A7D2FCD8ECFFE2F1FFE4F1FED1E7FE9DCDFD4DA2F7177FE8177F
      E8FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF3B94F061ABF665
      ADF7489EF42286EC127AE4FF00FFFF00FFFF00FFFF00FFFF00FF}
    ParentShowHint = False
    ShowHint = True
    TabOrder = 10
    OnClick = btGravarClick
  end
  inherited BalloonHint1: TBalloonHint
    Left = 280
    Top = 0
  end
  object dsReceber: TDataSource
    DataSet = dmFinanceiro.qyReceber
    Left = 184
    Top = 8
  end
end
