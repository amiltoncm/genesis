inherited frmDepCheque: TfrmDepCheque
  Caption = 'Depositar cheque'
  ClientHeight = 280
  ClientWidth = 497
  ExplicitWidth = 503
  ExplicitHeight = 312
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 8
    Top = 8
    Width = 82
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Conta de destino'
  end
  inherited btFechar: TBitBtn
    Left = 384
    Top = 247
    TabOrder = 2
    ExplicitLeft = 384
    ExplicitTop = 247
  end
  object cbConta: TwwDBLookupCombo [2]
    Left = 8
    Top = 24
    Width = 233
    Height = 21
    Hint = 'Digite a conta movimentada'
    CustomHint = BalloonHint1
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'CON_DESCRICAO'#9'15'#9'Descri'#231#227'o'#9'F'
      'CON_CODIGO'#9'8'#9'C'#243'digo'#9'F')
    LookupTable = dmLookups.lkProcContas
    LookupField = 'con_descricao'
    Options = [loColLines, loRowLines, loTitles]
    ButtonEffects.Transparent = True
    ButtonEffects.Flat = True
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    AutoDropDown = True
    ShowButton = True
    PreciseEditRegion = False
    AllowClearKey = False
    ShowMatchText = True
  end
  object Panel1: TPanel [3]
    Left = 8
    Top = 56
    Width = 481
    Height = 185
    Hint = 'Dados do cheque'
    CustomHint = BalloonHint1
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = clSkyBlue
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    object DBText1: TDBText
      Left = 8
      Top = 27
      Width = 69
      Height = 17
      Hint = 'Banco'
      CustomHint = BalloonHint1
      Alignment = taRightJustify
      DataField = 'ban_codigo'
      DataSource = dsCheque
      ParentShowHint = False
      ShowHint = True
    end
    object DBText2: TDBText
      Left = 120
      Top = 27
      Width = 68
      Height = 17
      Hint = 'Conta'
      CustomHint = BalloonHint1
      Alignment = taRightJustify
      DataField = 'chq_conta'
      DataSource = dsCheque
      ParentShowHint = False
      ShowHint = True
    end
    object DBText3: TDBText
      Left = 232
      Top = 27
      Width = 68
      Height = 17
      Hint = 'Cheque'
      CustomHint = BalloonHint1
      Alignment = taRightJustify
      DataField = 'chq_numcheque'
      DataSource = dsCheque
      ParentShowHint = False
      ShowHint = True
    end
    object DBText4: TDBText
      Left = 352
      Top = 27
      Width = 97
      Height = 17
      Hint = 'Valor'
      CustomHint = BalloonHint1
      Alignment = taRightJustify
      DataField = 'chq_valor'
      DataSource = dsCheque
      ParentShowHint = False
      ShowHint = True
    end
    object DBText5: TDBText
      Left = 8
      Top = 75
      Width = 353
      Height = 17
      Hint = 'Titular'
      CustomHint = BalloonHint1
      DataField = 'chq_titular'
      DataSource = dsCheque
    end
    object DBText6: TDBText
      Left = 8
      Top = 117
      Width = 353
      Height = 17
      Hint = 'Endosso'
      CustomHint = BalloonHint1
      DataField = 'chq_endosso'
      DataSource = dsCheque
    end
    object DBText7: TDBText
      Left = 8
      Top = 159
      Width = 97
      Height = 17
      Hint = 'Vencimento'
      CustomHint = BalloonHint1
      DataField = 'chq_vencimento'
      DataSource = dsCheque
    end
    object Label2: TLabel
      Left = 8
      Top = 8
      Width = 37
      Height = 13
      CustomHint = BalloonHint1
      Caption = 'Banco'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 120
      Top = 8
      Width = 34
      Height = 13
      CustomHint = BalloonHint1
      Caption = 'Conta'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 232
      Top = 8
      Width = 44
      Height = 13
      CustomHint = BalloonHint1
      Caption = 'Cheque'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 376
      Top = 8
      Width = 30
      Height = 13
      CustomHint = BalloonHint1
      Caption = 'Valor'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 8
      Top = 56
      Width = 37
      Height = 13
      CustomHint = BalloonHint1
      Caption = 'Titular'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 8
      Top = 98
      Width = 49
      Height = 13
      CustomHint = BalloonHint1
      Caption = 'Endosso'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 8
      Top = 140
      Width = 67
      Height = 13
      CustomHint = BalloonHint1
      Caption = 'Vencimento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object btDepositar: TBitBtn [4]
    Left = 273
    Top = 247
    Width = 105
    Height = 25
    Hint = 'Clique para depositar em C.C.'
    CustomHint = BalloonHint1
    Caption = '&Depositar'
    Glyph.Data = {
      2A020000424D2A020000000000002A0100002800000010000000100000000100
      08000000000000010000120B0000120B00003D0000003D00000000000000FFFF
      FF00FF00FF00F0F0F000D7D7D7008080800040404000FDFDFD00F6F6F600F2F2
      F200F1F1F100EDEDED00EAEAEA00E4E4E400E0E0E000DFDFDF00DDDDDD00D9D9
      D900D6D6D600D2D2D200D1D1D100CDCDCD00CCCCCC00CBCBCB00C7C7C700C6C6
      C600C5C5C500C4C4C400C3C3C300C2C2C200C1C1C100BDBDBD00B8B8B800B7B7
      B700B6B6B600ACACAC00A9A9A900A7A7A7009E9E9E009C9C9C00999999009797
      970095959500939393008E8E8E008A8A8A0086868600858585007C7C7C007A7A
      7A0070707000686868006666660064646400626262005C5C5C00585858004C4C
      4C004848480044444400FFFFFF00020202020202020202020202020202020202
      0202020202020202020202020202020202020606060606060606020202020202
      063B35333A05053935353B060202020637370505300505300505373806020637
      05050505052B2B050505050537060632052D201D281414261D1D2D053206062F
      2125130404040404041323212F06062914101017313434321A10100427063617
      140D042E0532320505040D1417362C1F110C10050505050505120C111F2C2722
      030303152A05052A1503030322270224161D0B0809080809080A1D1824020202
      211F0E0D1E07071A0F0E1F200202020202021C1B1A1919191B1C020202020202
      0202020202020202020202020202}
    TabOrder = 1
    OnClick = btDepositarClick
  end
  inherited BalloonHint1: TBalloonHint
    Left = 248
    Top = 112
  end
  object dsCheque: TDataSource
    DataSet = dmFinanceiro.qyCheques
    Left = 288
    Top = 16
  end
  object dsCaixa: TDataSource
    DataSet = dmFinanceiro.qyCaixa
    Left = 344
    Top = 16
  end
end
