inherited frmConfBxDupCli: TfrmConfBxDupCli
  Caption = 'Confirma baixa de duplicata (RECEBER)'
  ClientHeight = 686
  ClientWidth = 924
  OnCreate = FormCreate
  ExplicitWidth = 930
  ExplicitHeight = 718
  PixelsPerInch = 96
  TextHeight = 13
  object Label5: TLabel [0]
    Left = 8
    Top = 8
    Width = 37
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Cliente:'
  end
  object DBText2: TDBText [1]
    Left = 80
    Top = 8
    Width = 257
    Height = 17
    Hint = 'Cliente'
    CustomHint = BalloonHint1
    DataField = 'rec_nome'
    DataSource = dsDuplicatas
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    Transparent = True
    ShowHint = True
  end
  object Label4: TLabel [2]
    Left = 8
    Top = 32
    Width = 59
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Vencimento:'
  end
  object DBText1: TDBText [3]
    Left = 80
    Top = 32
    Width = 65
    Height = 17
    Hint = 'Vencimento'
    CustomHint = BalloonHint1
    DataField = 'rec_vencimento'
    DataSource = dsDuplicatas
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    Transparent = True
    ShowHint = True
  end
  object Label9: TLabel [4]
    Left = 168
    Top = 32
    Width = 79
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'ID da Cobran'#231'a:'
  end
  object DBText4: TDBText [5]
    Left = 264
    Top = 32
    Width = 65
    Height = 17
    CustomHint = BalloonHint1
    DataField = 'rec_codigo'
    DataSource = dsDuplicatas
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label10: TLabel [6]
    Left = 360
    Top = 32
    Width = 45
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Hist'#243'rico:'
  end
  object DBText5: TDBText [7]
    Left = 410
    Top = 32
    Width = 54
    Height = 17
    CustomHint = BalloonHint1
    DataField = 'his_id'
    DataSource = dsDuplicatas
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel [8]
    Left = 8
    Top = 56
    Width = 28
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Valor:'
  end
  object DBText3: TDBText [9]
    Left = 80
    Top = 56
    Width = 75
    Height = 17
    Hint = 'Valor'
    CustomHint = BalloonHint1
    Alignment = taRightJustify
    DataField = 'rec_valor'
    DataSource = dsDuplicatas
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    Transparent = True
    ShowHint = True
  end
  object Label7: TLabel [10]
    Left = 176
    Top = 56
    Width = 28
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Pago:'
  end
  object DBText6: TDBText [11]
    Left = 208
    Top = 56
    Width = 75
    Height = 17
    Hint = 'Pago'
    CustomHint = BalloonHint1
    Alignment = taRightJustify
    DataField = 'rec_pago'
    DataSource = dsDuplicatas
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    Transparent = True
    ShowHint = True
  end
  object Label8: TLabel [12]
    Left = 304
    Top = 56
    Width = 30
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Saldo:'
  end
  object dbSaldo: TDBText [13]
    Left = 344
    Top = 56
    Width = 75
    Height = 17
    Hint = 'Saldo'
    CustomHint = BalloonHint1
    Alignment = taRightJustify
    DataField = 'rec_saldo'
    DataSource = dsDuplicatas
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    Transparent = True
    ShowHint = True
  end
  object Label1: TLabel [14]
    Left = 8
    Top = 80
    Width = 51
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Valor pago'
  end
  object Label2: TLabel [15]
    Left = 142
    Top = 80
    Width = 29
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Conta'
  end
  object Label3: TLabel [16]
    Left = 352
    Top = 80
    Width = 72
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Dt. Pagamento'
  end
  object sbRecalcular: TSpeedButton [17]
    Left = 591
    Top = 8
    Width = 23
    Height = 22
    Hint = 'Calculadora'
    CustomHint = BalloonHint1
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFAE602A
      AE602AAE602AAE602AAE602AAE602AAE602AAE602AAE602AAE602AAE602AAE60
      2AAE602AAE602AFF00FFDAA039FFD195EAB777E4AE67FFBD60F1AE4FDC9C3EFC
      AA32FFA922FB9F14FB9A05FB9800FB9801FC9900FF9F00AE602AE7AC1DEEC093
      584E44534A41D39D5B866A46433E39BA8338D5902F50433054452F5243305544
      2B624A28F69702AE602AE7AC1DFFD0A0CAA276C09768FBBD6DD69F58B98847ED
      A540E9A142AF7F56C58538E08D12B67937B97B37FE9D02AE602AE7AC1DEDC299
      60554C5C5147D2A2688B704F4F463CB5843F977D922E42DE6D64A1CA8A483047
      D33649CCEB9317AE602AE7AC1DFED1A2BC9B78B3916CFDC47FD3A165A17B4DEF
      AA4DE9A657887394C78D55FEA3179C7469A1745FFE9D01AE602AE7AC1DE9BF97
      63584D5A5149CDA5748A715547413CB386499D8397263EE36E66A5CE904B3148
      D23448CCE3911EAE602AE7AC1DFFD4A5FCC794F5C190FFCF92FEC07DEFB06AFF
      BD61FFB74FE3A45BFCAB3CFFAC24EE9B2CF2981BFF9F00AE602AE7AC1DF5CAA0
      E1DEC0E2E0C1DEDBBCE1DCB9E3DAB1DED5A8E6D39FFFBF5DFCAB3CF3A333F69F
      20F89D13FF9F04AE602AE7AC1DD4AF8C6BD3CA6CD7CE6CD7CE6CD7CF6CD7CF66
      D7D18DE0D9FCC57BCA8D3DB58139AD7A31C18225FFA20BAE602AEFB53EF8C9A2
      D1AC86D1AD86D1AD86D1AC85D1AA7BCFA46EDCAB6BFFBD6AF6AF52FCAF46E79D
      37F3A028FFA716AE602AFF00FFE4A70AEDB339F0B84DEEB64DE9B24DF2BA62F2
      B65AEEB04FEAA945E9A43AE79F31E89B27E6971FD2851AFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    ParentShowHint = False
    ShowHint = True
    OnClick = sbRecalcularClick
  end
  object SpeedButton1: TSpeedButton [18]
    Left = 612
    Top = 8
    Width = 23
    Height = 22
    Hint = 'Somar selecionadas'
    CustomHint = BalloonHint1
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
      FF00FF8E471E87441E80411F87441EFF00FFFF00FF005EC1005DBE0052AF0057
      B1FF00FFFF00FFFF00FFFF00FF985226985226D16B00CC6E0BC56706A04E0A63
      3C241879D43793E467AEF03991E7549AE00563C10056AFFF00FFFF00FFD47D28
      E18F3AE18F3AFFFFFFFFFFFFE4B78A4F6B852DA3FCFFFFFFEBF5FFFFFFFFFFFF
      FF55A2EB005EC5FF00FFCC782CEBA862EBA862FFFFFFE0954AE0954AA35E1A4B
      95CB46B6FF31A2F5FFFFFF077FEC077FEC2089EC0172E20054ABD58537FAD0A5
      FFFFFFFFFFFFFFFFFFFFFFFFCCAF9463B6E853C0FF54B8F9FFFFFFFFFFFF7EBE
      F60A81EC0C7FEF005BBAD68F4BFAD0A5FCD9B7FFFFFFEBAA69EBAA69B6815193
      BFE079D6FF54BFFFFFFFFF61B5F661B5F62391F0188AF00165CAD68F4BF1C79E
      FAD3AAFCD9B7FFFFFFDBE4DBBCB8A13C62473E79682F7F8D6EB1CEFFFFFFFFFF
      FF69B9F81988E70565C6FF00FFD99554F9DEC5FCD9B7B9AB8646642D0F710A03
      8307007706096717195C46619EAE82CBFD3AA3F21879D3FF00FFFF00FFD99554
      D37A2AC28A4E436B31079A2004B71CD6F4D9BCECC112B21E1B8B1F0B55361B72
      AD116FCC116FCCFF00FFFF00FFFF00FFFF00FF096312148A2E18C143FFFFFFFF
      FFFFFFFFFF76D58300AF1104770D04480AFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FF00650E2BC16429C05B46C86A60CE77C2ECC6FFFFFF05B21508A6170448
      0AFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF14851D4ACA7C26C0624CCB78FF
      FFFFFFFFFF36C14B05B11609B018044F07FF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FF42B1526BCE883DC874FFFFFFCFF1DD98E0AC3EC55E0FB92B0A9517044F
      07FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF42B152A1E7BF79DAA0FF
      FFFFFFFFFFFFFFFF18BF42096312FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FF42B15254BD668EDCA5E0F7E9AAE7C129B455128428096312FF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF159E251E
      9E33139429087110FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    ParentShowHint = False
    ShowHint = True
    OnClick = SpeedButton1Click
  end
  inherited btFechar: TBitBtn
    Left = 811
    Top = 98
    ExplicitLeft = 811
    ExplicitTop = 98
  end
  object dbCodConta: TwwDBLookupCombo [20]
    Left = 142
    Top = 96
    Width = 65
    Height = 21
    Hint = 'Conta de onde sair'#225' o dinheiro'
    CustomHint = BalloonHint1
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'CON_CODIGO'#9'10'#9'CON_CODIGO'#9'F'
      'CON_DESCRICAO'#9'15'#9'CON_DESCRICAO'#9'F')
    LookupTable = dmLookups.lkProcContas
    LookupField = 'con_codigo'
    Options = [loColLines, loRowLines, loTitles]
    ButtonEffects.Transparent = True
    ButtonEffects.Flat = True
    ParentShowHint = False
    ShowHint = False
    TabOrder = 1
    AutoDropDown = False
    ShowButton = True
    SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
    PreciseEditRegion = False
    AllowClearKey = False
    ShowMatchText = True
  end
  object dbConta: TDBEdit [21]
    Left = 207
    Top = 96
    Width = 139
    Height = 21
    Hint = 'Conta de onde sair'#225' o dinheiro'
    CustomHint = BalloonHint1
    TabStop = False
    Color = clBtnFace
    DataField = 'con_descricao'
    DataSource = dsConta
    ParentShowHint = False
    ReadOnly = True
    ShowHint = False
    TabOrder = 2
  end
  object edDtPagamento: TwwDBDateTimePicker [22]
    Left = 352
    Top = 96
    Width = 106
    Height = 21
    Hint = 'Selecione ou digite a a data'#13#10'de pagamento!'
    CustomHint = BalloonHint1
    CalendarAttributes.Font.Charset = DEFAULT_CHARSET
    CalendarAttributes.Font.Color = clWindowText
    CalendarAttributes.Font.Height = -11
    CalendarAttributes.Font.Name = 'MS Sans Serif'
    CalendarAttributes.Font.Style = []
    Epoch = 1950
    ButtonEffects.Transparent = True
    ButtonEffects.Flat = True
    ParentShowHint = False
    ShowHint = False
    ShowButton = True
    TabOrder = 3
    DisplayFormat = 'dd/mm/yyyy'
  end
  object cbMarcar: TCheckBox [23]
    Left = 480
    Top = 98
    Width = 150
    Height = 17
    CustomHint = BalloonHint1
    Caption = 'Marcar / Desmarcar tudo'
    TabOrder = 4
    OnClick = cbMarcarClick
  end
  object edValor: TJvCalcEdit [24]
    Left = 8
    Top = 96
    Width = 128
    Height = 21
    CustomHint = BalloonHint1
    DecimalPlaceRound = True
    DisplayFormat = ',0.00'
    ParentShowHint = False
    ShowHint = False
    TabOrder = 5
    DecimalPlacesAlwaysShown = True
    OnExit = edValorExit
    OnKeyPress = edValorKeyPress
  end
  object btBaixar: TBitBtn [25]
    Left = 641
    Top = 96
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
    ShowHint = False
    TabOrder = 6
    OnClick = btBaixarClick
  end
  object Panel1: TPanel [26]
    Left = 0
    Top = 127
    Width = 924
    Height = 559
    CustomHint = BalloonHint1
    Align = alBottom
    BevelInner = bvLowered
    Color = clMoneyGreen
    ParentBackground = False
    TabOrder = 7
    object GridExames: TwwDBGrid
      Left = 8
      Top = 8
      Width = 908
      Height = 543
      CustomHint = BalloonHint1
      ControlType.Strings = (
        'his_status;CheckBox;S;N'
        'his_baixar;CheckBox;S;N')
      Selected.Strings = (
        'his_id'#9'9'#9'Id. Hist.'#9#9
        'his_item'#9'5'#9'Item'#9#9
        'his_data'#9'10'#9'Data'#9#9
        'exa_id'#9'10'#9'exa_id'#9#9
        'pac_nome'#9'45'#9'Paciente'#9#9
        'his_valor'#9'10'#9'Valor'#9#9
        'med_nome'#9'45'#9'M'#233'dico'#9#9
        'his_baixar'#9'1'#9'Baixar'#9#9)
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      DataSource = dsHistrec
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
      ParentShowHint = False
      ShowHint = False
      TabOrder = 0
      TitleAlignment = taLeftJustify
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      TitleLines = 1
      TitleButtons = True
      OnTitleButtonClick = GridExamesTitleButtonClick
      OnDrawDataCell = GridExamesDrawDataCell
    end
  end
  inherited BalloonHint1: TBalloonHint
    Left = 152
    Top = 136
  end
  object dsCaixa: TDataSource
    DataSet = dmFinanceiro.qyCaixa
    Left = 40
    Top = 312
  end
  object dsDuplicatas: TDataSource
    DataSet = dmFinanceiro.qyReceber
    Left = 120
    Top = 312
  end
  object dsHistrec: TDataSource
    DataSet = dmFinanceiro.qyHistRec
    Left = 48
    Top = 200
  end
  object JvCalculator1: TJvCalculator
    Title = 'Calculadora'
    Left = 224
    Top = 232
  end
  object dsConta: TDataSource
    DataSet = dmLookups.lkProcContas
    Left = 136
    Top = 200
  end
end
