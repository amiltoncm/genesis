inherited frmSelChq: TfrmSelChq
  Caption = 'Seleciona cheques p/ pagamento'
  ClientHeight = 514
  ClientWidth = 972
  ExplicitWidth = 978
  ExplicitHeight = 546
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 8
    Top = 8
    Width = 42
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Cheques'
  end
  object Label3: TLabel [1]
    Left = 628
    Top = 237
    Width = 85
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Valor da duplicata'
  end
  object Label4: TLabel [2]
    Left = 628
    Top = 285
    Width = 66
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Saldo '#224' pagar'
  end
  object Label5: TLabel [3]
    Left = 564
    Top = 462
    Width = 78
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Plano de Contas'
  end
  object Label2: TLabel [4]
    Left = 673
    Top = 8
    Width = 89
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Cheques e valores'
  end
  inherited btFechar: TBitBtn
    Left = 859
    Top = 481
    TabOrder = 8
    ExplicitLeft = 859
    ExplicitTop = 479
  end
  object DBGrid1: TDBGrid [6]
    Left = 8
    Top = 27
    Width = 614
    Height = 431
    Hint = 'Ve'#237'culos dispon'#237'veis'
    CustomHint = BalloonHint1
    TabStop = False
    DataSource = dsCheques
    ParentShowHint = False
    ReadOnly = True
    ShowHint = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'chq_vencimento'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'chq_titular'
        Width = 250
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'chq_valor'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'chq_endosso'
        Width = 250
        Visible = True
      end>
  end
  object btSelecionar: TBitBtn [7]
    Left = 628
    Top = 56
    Width = 105
    Height = 25
    Hint = 'Clique para incluir o ve'#237'culo'
    CustomHint = BalloonHint1
    Caption = '&Selecionar'
    Glyph.Data = {
      E6010000424DE601000000000000E60000002800000010000000100000000100
      08000000000000010000120B0000120B00002C0000002C00000000000000FFFF
      FF00FF00FF00F5FBF500E6F5E600D7EED700C9E8C900BAE2BA00ABDBAB009CD5
      9C008DCF8D006EB861001E480A00235608003077020037880000368500003585
      000034810100337E0100327C0200317A0200317902002E7303002D6E04002B69
      05002964060028620600275F06003D8D0A00255B07002251090044941800204C
      09004E9D280056A437005FAC4700508E420067B455004F8C42004E8A430070BC
      660078C37400FFFFFF0002020202020202020202020202020202020202020C0C
      0C0C0C0C0C0C020202020202020221282924221D162102020202020202021F27
      2924221D151F020202020D0D0D0D0D252924221D131B1B1B1B0D1E2A26232003
      03030303030F0F0F0F1E1C2A2623200404040404040F0F0F0F1C1A2A26232005
      05050505050F0F0F0F1A19060606060606060606060606060619180707070707
      07070707070707070718170808080808080808080808080808170E0E0E0E0E09
      09090909090E0E0E0E0E02020202140A0A0A0A0A0A140202020202020202120B
      0B0B0B0B0B120202020202020202111010101010101102020202020202020202
      02020202020202020202}
    ParentShowHint = False
    ShowHint = False
    TabOrder = 1
    OnClick = btSelecionarClick
  end
  object btDesmarcar: TBitBtn [8]
    Left = 628
    Top = 88
    Width = 105
    Height = 25
    Hint = 'Clique para eliminar '#13#10'o ve'#237'culo!'
    CustomHint = BalloonHint1
    Caption = '&Desmarcar'
    Glyph.Data = {
      32020000424D3202000000000000320100002800000010000000100000000100
      08000000000000010000120B0000120B00003F0000003F00000000000000FFFF
      FF00FF00FF00000099007884FF006670FF00535BFF004046FF002D32FF001A1D
      FF000000C2000000BE000000B6000000A300000085007985F7007985F100828F
      FB00828FF7006873FB006873F500434ACD005961EF005961ED003237D8003B41
      FB003B41F7003237C6004950F700434AE2004950EF004E55EF004E55E8000000
      F5000000DB000000D5000000C4000000BB000000AC000000A9000000A0000000
      97000000910000008F000708F7000708EF00090AD100090AC900090AC500090A
      98001214B2001214A2001A1CDC001B1DD1001B1DC9001A1CC2002427F900262A
      F700262AF4002124D8002427D3002124BA00FFFFFF0002020202020202020202
      0202020202020202020E0E0202020202020E0E02020202020E0B290E0E02020E
      0E0D2B0E0202020E0B0B2903270E0E23240D2B0D0E020E0B0A0A290327282523
      240D2A0D0C0E0E0A0A0A2903260B2122240D2A0D0C0E0E0A0A303303260B2122
      2432310D0C0E0E0A180F1215260B21221D11101B0C0E0E1604040404143C3813
      04040404170E0E351F0505050505050505050520360E0E0A0A3B1C0606060606
      061E3D0D0C0E0E0A0A34190707070707071A370D0C0E0E2E3908080808080808
      0808083A2F0E0E0909090909090E0E0909090909090E020E0E2D2C0E0E02020E
      0E2C2D0E0E020202020E0E0202020202020E0E020202}
    ParentShowHint = False
    ShowHint = False
    TabOrder = 2
    OnClick = btDesmarcarClick
  end
  object edVlrDup: TEdit [9]
    Left = 628
    Top = 256
    Width = 85
    Height = 21
    Hint = 'Valor do cheque'
    CustomHint = BalloonHint1
    TabStop = False
    Color = clBtnFace
    ParentShowHint = False
    ReadOnly = True
    ShowHint = False
    TabOrder = 3
    Text = 'edVlrDup'
  end
  object edVlrSaldo: TEdit [10]
    Left = 628
    Top = 304
    Width = 89
    Height = 21
    Hint = 'Saldo '#224' desontar do caixa'
    CustomHint = BalloonHint1
    TabStop = False
    Color = clBtnFace
    ParentShowHint = False
    ReadOnly = True
    ShowHint = False
    TabOrder = 4
    Text = 'edVlrSaldo'
  end
  object cbCodMov: TwwDBLookupCombo [11]
    Left = 564
    Top = 481
    Width = 56
    Height = 21
    Hint = 'Selecione o tipo de movimento'
    CustomHint = BalloonHint1
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'MOV_CODIGO'#9'10'#9'C'#243'digo'#9'F'
      'MOV_DESCRICAO'#9'15'#9'Movimenta'#231#227'o'#9'F'
      'MOV_TIPO'#9'1'#9'Tipo'#9'F')
    LookupTable = dmLookups.lkProcMovimentos
    LookupField = 'mov_codigo'
    ButtonEffects.Transparent = True
    ButtonEffects.Flat = True
    ParentShowHint = False
    ShowHint = False
    TabOrder = 5
    AutoDropDown = False
    ShowButton = True
    PreciseEditRegion = False
    AllowClearKey = False
    ShowMatchText = True
  end
  object dbMovimento: TDBEdit [12]
    Left = 620
    Top = 481
    Width = 119
    Height = 21
    Hint = 'Conta de onde sair'#225' o dinheiro'
    CustomHint = BalloonHint1
    TabStop = False
    Color = clBtnFace
    DataField = 'MOV_DESCRICAO'
    DataSource = dsPlanoContas
    ParentShowHint = False
    ReadOnly = True
    ShowHint = False
    TabOrder = 6
  end
  object btGravar: TBitBtn [13]
    Left = 748
    Top = 481
    Width = 105
    Height = 25
    Hint = 'Verifica e grava as'#13#10'informa'#231#245'es!'
    CustomHint = BalloonHint1
    Caption = 'Gravar'
    Glyph.Data = {
      52020000424D5202000000000000520100002800000010000000100000000100
      08000000000000010000120B0000120B0000470000004700000000000000FFFF
      FF00FF00FF00000085000000BE000000BA000000B2000000AB000000A3000000
      9B000000940000008C00000089000606AB0005058C000C0CEF000A0A9B000F0F
      C5001313C9000F0F8C002323E0002C2CE8002E2ED10022229B003030D1003232
      D1003434D5004040F7003232BA003C3CDB003E3EDD004242E0004646E3005D5D
      FF005E5EFF006161F4006161DC006565E0006363DC006464DC004F4FAB007272
      EF006F6FE7007272EB007474EC007878F3008181F6008B8BFF009393FF009595
      EA009F9FF700A2A2F700A4A4F800AAAAFF00A2A2F300ADADFA00B3B3FF009494
      D100CACAFF00CACAFE00C7C7FA00C8C8F900D7D7FF00BFBFE000DCDCFF00DADA
      FB00E3E3FF00DEDEF900F1F1FF00F6F6FF00FFFFFF0002020202020202020202
      0202020202020202020202020202020202020202020202020202020202020202
      02020202020202020202020202020202020202020202020202020202030A0A03
      02020202020202020202030B071111070303020202020202030C110427434126
      04080C0302020303110518363A3B3D3C3618050903030311122B353535353331
      34352B120603031D242C2F2F2E252A37443E302F1F03031C2320161E1A2D4001
      210145321C0302030E191B153801010101013913030202020203101422420101
      3F17030202020202020202030D0F292803020202020202020202020202030302
      02020202020202020202020202020202020202020202}
    ParentShowHint = False
    ShowHint = False
    TabOrder = 7
    OnClick = btGravarClick
  end
  object DBGrid2: TDBGrid [14]
    Left = 739
    Top = 27
    Width = 225
    Height = 426
    Hint = 'Ve'#237'culos selecionados'#13#10'e respectivos valores!'
    CustomHint = BalloonHint1
    DataSource = dsMemory
    ParentShowHint = False
    ReadOnly = True
    ShowHint = False
    TabOrder = 9
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'VENCIMENTO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'REFERENCIA'
        Visible = True
      end>
  end
  inherited BalloonHint1: TBalloonHint
    Left = 432
    Top = 104
  end
  object dsCheques: TDataSource
    DataSet = dmFinanceiro.qyCheques
    Left = 24
    Top = 96
  end
  object dsMemory: TDataSource
    DataSet = MemoryData
    Left = 24
    Top = 176
  end
  object dsCaixa: TDataSource
    DataSet = dmFinanceiro.qyCaixa
    Left = 112
    Top = 128
  end
  object MemoryData: TJvMemoryData
    FieldDefs = <>
    Left = 248
    Top = 224
    object MemoryDataVENCIMENTO: TDateField
      DisplayLabel = 'Vencimento'
      FieldName = 'VENCIMENTO'
      DisplayFormat = 'dd/MM/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object MemoryDataVALOR: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      DisplayFormat = '#,###,###,##0.00'
    end
    object MemoryDataREFERENCIA: TIntegerField
      DisplayLabel = 'Refer'#234'ncia'
      FieldName = 'REFERENCIA'
      DisplayFormat = '000000'
    end
  end
  object dsPlanoContas: TDataSource
    DataSet = dmLookups.lkProcMovimentos
    Left = 120
    Top = 200
  end
end
