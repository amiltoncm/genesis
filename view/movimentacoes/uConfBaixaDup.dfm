inherited frmConfBaixaDup: TfrmConfBaixaDup
  Caption = 'Confirma baixa de contas '#224' pagar'
  ClientHeight = 260
  ClientWidth = 578
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  ExplicitWidth = 584
  ExplicitHeight = 288
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 8
    Top = 184
    Width = 51
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Valor pago'
  end
  object Label2: TLabel [1]
    Left = 104
    Top = 184
    Width = 29
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Conta'
  end
  object Label3: TLabel [2]
    Left = 294
    Top = 184
    Width = 72
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Dt. Pagamento'
  end
  object Label4: TLabel [3]
    Left = 389
    Top = 184
    Width = 78
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Plano de Contas'
  end
  inherited btFechar: TBitBtn
    Left = 465
    Top = 227
    TabOrder = 6
    ExplicitTop = 227
  end
  object wwDataInspector1: TwwDataInspector [5]
    Left = 8
    Top = 8
    Width = 561
    Height = 164
    CustomHint = BalloonHint1
    TabStop = False
    DisableThemes = False
    TabOrder = 7
    DataSource = frmBxDupFor.dsDuplicatas
    Items = <
      item
        DataSource = frmBxDupFor.dsDuplicatas
        DataField = 'for_razao'
        Caption = 'Fornecedor'
        WordWrap = False
      end
      item
        DataSource = frmBxDupFor.dsDuplicatas
        DataField = 'pag_vencimento'
        Caption = 'Vencimento'
        WordWrap = False
      end
      item
        DataSource = frmBxDupFor.dsDuplicatas
        DataField = 'pag_nf'
        Caption = 'NF'
        WordWrap = False
      end
      item
        DataSource = frmBxDupFor.dsDuplicatas
        DataField = 'pag_parcela'
        Caption = 'Parc.'
        WordWrap = False
      end
      item
        DataSource = frmBxDupFor.dsDuplicatas
        DataField = 'pag_emissao'
        Caption = 'Emiss'#227'o'
        WordWrap = False
      end
      item
        DataSource = frmBxDupFor.dsDuplicatas
        DataField = 'pag_valor'
        Caption = 'Valor'
        WordWrap = False
      end
      item
        DataSource = frmBxDupFor.dsDuplicatas
        DataField = 'pag_acrescimo'
        Caption = 'Acr'#233'scimo'
        WordWrap = False
      end
      item
        DataSource = frmBxDupFor.dsDuplicatas
        DataField = 'pag_desconto'
        Caption = 'Desconto'
        WordWrap = False
      end
      item
        DataSource = frmBxDupFor.dsDuplicatas
        DataField = 'pag_pago'
        Caption = 'Pago'
        WordWrap = False
      end
      item
        DataSource = frmBxDupFor.dsDuplicatas
        DataField = 'pag_saldo'
        Caption = 'Saldo'
        WordWrap = False
      end>
    CaptionWidth = 100
    Options = [ovColumnResize, ovRowResize, ovEnterToTab, ovHighlightActiveRow, ovCenterCaptionVert]
    CaptionFont.Charset = DEFAULT_CHARSET
    CaptionFont.Color = clWindowText
    CaptionFont.Height = -11
    CaptionFont.Name = 'Tahoma'
    CaptionFont.Style = []
    ReadOnly = True
  end
  object edValor: TEdit [6]
    Left = 8
    Top = 200
    Width = 90
    Height = 21
    Hint = 'Digite o valor PAGO'#13#10'Formato: (00000,00)'
    CustomHint = BalloonHint1
    BiDiMode = bdRightToLeft
    ParentBiDiMode = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    Text = 'edValor'
    OnExit = edValorExit
    OnKeyPress = edValorKeyPress
  end
  object dbCodConta: TwwDBLookupCombo [7]
    Left = 104
    Top = 200
    Width = 56
    Height = 21
    Hint = 'Conta de onde sair'#225' o dinheiro'
    CustomHint = BalloonHint1
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'CON_CODIGO'#9'10'#9'CON_CODIGO'#9'F'
      'CON_DESCRICAO'#9'15'#9'CON_DESCRICAO'#9'F')
    LookupField = 'CON_CODIGO'
    Options = [loColLines, loRowLines]
    ButtonEffects.Transparent = True
    ButtonEffects.Flat = True
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    AutoDropDown = False
    ShowButton = True
    SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
    PreciseEditRegion = False
    AllowClearKey = False
    ShowMatchText = True
  end
  object dbConta: TDBEdit [8]
    Left = 160
    Top = 200
    Width = 128
    Height = 21
    Hint = 'Conta de onde sair'#225' o dinheiro'
    CustomHint = BalloonHint1
    TabStop = False
    Color = clBtnFace
    DataField = 'con_descricao'
    DataSource = dsProcContas
    ParentShowHint = False
    ReadOnly = True
    ShowHint = True
    TabOrder = 2
  end
  object edDtPagamento: TwwDBDateTimePicker [9]
    Left = 294
    Top = 200
    Width = 89
    Height = 21
    Hint = 'Data de pagamento da duplicata'
    CustomHint = BalloonHint1
    CalendarAttributes.Font.Charset = DEFAULT_CHARSET
    CalendarAttributes.Font.Color = clWindowText
    CalendarAttributes.Font.Height = -11
    CalendarAttributes.Font.Name = 'MS Sans Serif'
    CalendarAttributes.Font.Style = []
    DateFormat = dfLong
    Epoch = 1950
    ButtonEffects.Transparent = True
    ButtonEffects.Flat = True
    ParentShowHint = False
    ShowHint = True
    ShowButton = True
    TabOrder = 3
    DisplayFormat = 'dd/mm/yyyy'
  end
  object cbPlanoContas: TwwDBLookupCombo [10]
    Left = 389
    Top = 200
    Width = 180
    Height = 21
    Hint = 'Plano de contas'
    CustomHint = BalloonHint1
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'mov_descricao'#9'20'#9'Descri'#231#227'o'#9'F'
      'mov_codigo'#9'10'#9'ID'#9'F'
      'mov_tipo'#9'1'#9'Tipo'#9'F')
    LookupField = 'mov_descricao'
    Options = [loColLines, loRowLines, loTitles]
    ButtonEffects.Transparent = True
    ButtonEffects.Flat = True
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
    AutoDropDown = True
    ShowButton = True
    PreciseEditRegion = False
    AllowClearKey = False
    ShowMatchText = True
  end
  object btBaixar: TBitBtn [11]
    Left = 353
    Top = 227
    Width = 105
    Height = 25
    Hint = 'Confirma baixa'
    CustomHint = BalloonHint1
    Caption = '&Baixar'
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
      FF00FFFF00FFFF00FF00032A00043A00044900044900043C00042DFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00043D00043D00016D00009100
      0196000196000193000071000444000444FF00FFFF00FFFF00FFFF00FFFF00FF
      00034B00025D00029B00029D00019600009100019600019600029B00029D0002
      5F00042DFF00FFFF00FFFF00FF000B590001690004B10003A400019600009142
      59BDA5B3E400109B00019300019600029D00025F000444FF00FFFF00FF000854
      0006C00005B80003A70001962841B2EEF0FAFFFFFF8697D80002950001930001
      9600029D000444FF00FF000C5F0007930009D70005B800029D2A43B6F3F4FCFF
      FFFFFFFFFFFFFFFF7184D100029500019300029B00007100043A0009590008C4
      0009D70006C03049BAF4F6FCFCFCFEF6F7FCFCFCFEF8FAFEFFFFFF677BCC0004
      9500019800008A00043A00096F000BE2000BE4000BE4E7EBFEFFFFFF657FE8A6
      B6F3FFFFFF667AD1DAE0F4FFFFFF7286D100019600019600044200087F0024EB
      0013EB000BE7D4DDFF748DF5000BEBA1B3FAFFFFFF1530AF223CB2F2F4FB8D9C
      D900019800019600044900087F163AEC0A2EEB000ADC0020E7000FE7000BE7A6
      B6F7FFFFFF203DC60004B1001AB6000DB20003A400009100043F00047A1236F3
      6682FE000FEF0009DA000BE7000BE7A6B6F9FFFFFF203FD00005BB0005BB0004
      B10003A700008100043FFF00FF000CD693A9FF3C5FF90008CD0009D7000BE7A7
      B7F9FFFFFF2141D60005BB0004B60004AC0004B3000162FF00FFFF00FF000CD6
      2246F6B7C6FF385AF6000DE60008D5ABBBFAFFFFFF2041DA0007C50006C00007
      C30002A0000162FF00FFFF00FFFF00FF0004B1375AF4C6D1FF7B94FB1539EC00
      21EB0528FF0019EC0019EC0010EC0004B600015EFF00FFFF00FFFF00FFFF00FF
      FF00FF0F33F00F33F07992FBADBDFF8EA3FC6B86F64A69F10F33EB0007C30007
      C3FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0008CD001AEB05
      2BEB0024EB000BE70002A2FF00FFFF00FFFF00FFFF00FFFF00FF}
    ParentShowHint = False
    ShowHint = True
    TabOrder = 5
    OnClick = btBaixarClick
  end
  inherited BalloonHint1: TBalloonHint
    Left = 168
    Top = 96
  end
  object dsProcContas: TDataSource
    Left = 168
    Top = 40
  end
end
