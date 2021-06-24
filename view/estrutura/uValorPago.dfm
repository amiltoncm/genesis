inherited frmValorPago: TfrmValorPago
  Caption = 'Conv'#234'nio: Particular (Valor pago antecipado)'
  ClientHeight = 92
  ClientWidth = 361
  OnCloseQuery = FormCloseQuery
  ExplicitWidth = 367
  ExplicitHeight = 117
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 8
    Top = 8
    Width = 32
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Exame'
  end
  object Label2: TLabel [1]
    Left = 136
    Top = 8
    Width = 75
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Valor levantado'
  end
  object Label3: TLabel [2]
    Left = 248
    Top = 8
    Width = 51
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Valor pago'
  end
  inherited btFechar: TBitBtn
    Left = 248
    Top = 59
    ParentShowHint = False
    ExplicitLeft = 248
    ExplicitTop = 59
  end
  object dbExame: TDBEdit [4]
    Left = 8
    Top = 24
    Width = 121
    Height = 21
    Hint = 'N'#250'mero do exame'
    CustomHint = BalloonHint1
    TabStop = False
    Color = clBtnFace
    DataField = 'exa_id'
    DataSource = dsExamesCob
    ParentShowHint = False
    ReadOnly = True
    ShowHint = False
    TabOrder = 1
  end
  object dbValor: TDBEdit [5]
    Left = 136
    Top = 24
    Width = 105
    Height = 21
    Hint = 'Valor levantado dos procedimentos selecionados!'
    CustomHint = BalloonHint1
    TabStop = False
    Color = clBtnFace
    DataField = 'eco_valor'
    DataSource = dsExamesCob
    ParentShowHint = False
    ReadOnly = True
    ShowHint = False
    TabOrder = 2
  end
  object dbPago: TDBEdit [6]
    Left = 248
    Top = 24
    Width = 105
    Height = 21
    Hint = 'Digite o valor pago antecipado!'
    CustomHint = BalloonHint1
    DataField = 'eco_vlrpago'
    DataSource = dsExamesCob
    ParentShowHint = False
    ShowHint = False
    TabOrder = 3
  end
  object btGravar: TBitBtn [7]
    Left = 136
    Top = 59
    Width = 105
    Height = 25
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
    ShowHint = False
    TabOrder = 4
    OnClick = btGravarClick
  end
  object dsExamesCob: TDataSource
    DataSet = dmFinanceiro.qyExamesCob
    Left = 32
    Top = 48
  end
end
