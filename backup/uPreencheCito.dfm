inherited frmPreencheCito: TfrmPreencheCito
  Caption = 'Preenche Citologia'
  ClientHeight = 682
  ClientWidth = 917
  ExplicitLeft = -342
  ExplicitTop = -148
  ExplicitWidth = 923
  ExplicitHeight = 707
  PixelsPerInch = 96
  TextHeight = 13
  object Label21: TLabel [0]
    Left = 736
    Top = 16
    Width = 39
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Padr'#245'es'
  end
  inherited btFechar: TBitBtn
    Left = 804
    Top = 649
    ExplicitLeft = 804
    ExplicitTop = 649
  end
  object btInserir: TBitBtn [2]
    Left = 804
    Top = 606
    Width = 105
    Height = 25
    Hint = 'Insere op'#231#245'es selecionadas'
    CustomHint = BalloonHint1
    Caption = '&Inserir'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
      FF00FFFF00FFFF00FF013002014103025104025104014303013302FF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF014503014503037808039C0B03
      9F0C039F0C039D0C027E09014D04014D04FF00FFFF00FFFF00FFFF00FFFF00FF
      034F0903650904A30D03A60C03A00B029E0A039F0C03A00C03A50C03A60C0269
      06013402FF00FFFF00FFFF00FF044F09066B110AAB1F07A415049E0D029D0A03
      9D0A039E0C039E0C039E0C03A00C03A70C026A06024C04FF00FFFF00FF044F09
      10AC300DAB2809A41C039E0F16AA20D5F2D8E9F8EA48C052039E0C039E0C039F
      0C03A70C024C04FF00FF0357060D822317B6410EA92D05A013049F0D07A01182
      D589FFFFFFF4FCF640BC4A039E0C039E0C03A50C037B0801420303570617A341
      18B54A11AB3406A011039E0C049F0D039E0C74D07DFCFEFCF3FBF43EBC48039E
      0C03A10C03960A01420306680D21B1511EB751BFEDCFBAEAC6B7E9C2B8EAC5B5
      E9C2B7E9C1F6FCF7FFFFFFEEFAEF54C55E03A00C039F0C014A040874123EBD69
      2ABA5CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFEFCFFFFFFFFFFFFAAE3
      B003A00C039F0C02520506780E54C57A44C67452C77D57CA8156CA8057CA8149
      C57379D592FAFEFAFFFFFF97DDA51AAD3307A518039D0C01460306780E4CBD69
      83DDA722B6551CB24E22B55422B55455CA7FE1F6E9FFFFFF88D99D10AB2F0CA6
      2706A716038C0A014603FF00FF21A336AAE7C568D08E16AF481BB14C39BF68F4
      FCF7FFFFFF84D99E11AA320EA7290BA42009AF1C036B0AFF00FFFF00FF21A336
      56C573C5F0D866CF8C20B45223B554AAE6C096DEB119B14813AC3C12AA340FB0
      2D0A991F036B0AFF00FFFF00FFFF00FF1399236ACC88D0F4E39AE1B650C77A38
      BD672CBA5D30BB602FBC5D23BC4F11A33006620FFF00FFFF00FFFF00FFFF00FF
      FF00FF4BBF674BBF6798E1B5BDEED4A7E7C490E0B178D99F49C7791B9D3D1B9D
      3DFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF1DA43538B45446
      BC6642B8632BA649138C2AFF00FFFF00FFFF00FFFF00FFFF00FF}
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    OnClick = btInserirClick
  end
  object pnLaudo: TPanel [3]
    Left = 2
    Top = 2
    Width = 730
    Height = 322
    Hint = 'Laudo'
    CustomHint = BalloonHint1
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = clWhite
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    object pnFrase1: TPanel
      Left = 0
      Top = 0
      Width = 729
      Height = 65
      CustomHint = BalloonHint1
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Color = clWhite
      TabOrder = 0
      object lbLinha1: TLabel
        Left = 8
        Top = 8
        Width = 217
        Height = 16
        CustomHint = BalloonHint1
        Caption = '** A amostra '#233' composta por c'#233'lulas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 112
        Top = 43
        Width = 153
        Height = 16
        CustomHint = BalloonHint1
        Caption = 'c'#233'lulas endocervicais'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 272
        Top = 42
        Width = 8
        Height = 16
        CustomHint = BalloonHint1
        Caption = 'e'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object cbSuperficiais: TCheckBox
        Left = 8
        Top = 26
        Width = 97
        Height = 17
        CustomHint = BalloonHint1
        Caption = 'superficiais'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object cbIntermediaria: TCheckBox
        Left = 112
        Top = 26
        Width = 108
        Height = 17
        CustomHint = BalloonHint1
        Caption = 'intermedi'#225'rias'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object cbParabasais: TCheckBox
        Left = 225
        Top = 26
        Width = 97
        Height = 17
        CustomHint = BalloonHint1
        Caption = 'parabasais'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object cbMaioria: TCheckBox
        Left = 321
        Top = 26
        Width = 121
        Height = 17
        CustomHint = BalloonHint1
        Caption = 'em sua maioria'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object cbQuantidades: TCheckBox
        Left = 441
        Top = 26
        Width = 281
        Height = 17
        CustomHint = BalloonHint1
        Caption = 'em quantidades decrescentes nesta ordem'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object cbMetaplasicas: TCheckBox
        Left = 288
        Top = 43
        Width = 113
        Height = 17
        CustomHint = BalloonHint1
        Caption = 'metapl'#225'sicas.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
      end
      object cbCom: TCheckBox
        Left = 8
        Top = 43
        Width = 57
        Height = 17
        CustomHint = BalloonHint1
        Caption = 'com'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
      end
      object cbSem: TCheckBox
        Left = 64
        Top = 43
        Width = 49
        Height = 17
        CustomHint = BalloonHint1
        Caption = 'sem'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
      end
    end
    object pnFrase2: TPanel
      Left = 0
      Top = 63
      Width = 729
      Height = 68
      CustomHint = BalloonHint1
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Color = clWhite
      TabOrder = 1
      object Label4: TLabel
        Left = 8
        Top = 5
        Width = 26
        Height = 16
        CustomHint = BalloonHint1
        Caption = '* H'#225
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 384
        Top = 5
        Width = 150
        Height = 16
        CustomHint = BalloonHint1
        Caption = 'n'#250'mero de neutr'#243'filos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 280
        Top = 25
        Width = 212
        Height = 16
        CustomHint = BalloonHint1
        Caption = 'quantidade de c'#233'lulas inflamat'#243'rias'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 8
        Top = 44
        Width = 16
        Height = 16
        CustomHint = BalloonHint1
        Caption = '* e'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label1: TLabel
        Left = 491
        Top = 44
        Width = 94
        Height = 16
        CustomHint = BalloonHint1
        Caption = 'de hem'#225'cias.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object cbRaros: TCheckBox
        Left = 40
        Top = 5
        Width = 57
        Height = 17
        CustomHint = BalloonHint1
        Caption = 'raros'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = cbRarosClick
      end
      object cbEsparsos: TCheckBox
        Left = 104
        Top = 5
        Width = 81
        Height = 17
        CustomHint = BalloonHint1
        Caption = 'esparsos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = cbEsparsosClick
      end
      object cbEscassos: TCheckBox
        Left = 184
        Top = 5
        Width = 81
        Height = 17
        CustomHint = BalloonHint1
        Caption = 'escassos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = cbEscassosClick
      end
      object cbPequeno: TCheckBox
        Left = 280
        Top = 5
        Width = 81
        Height = 17
        CustomHint = BalloonHint1
        Caption = 'pequeno'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnClick = cbPequenoClick
      end
      object cbPequena: TCheckBox
        Left = 8
        Top = 25
        Width = 81
        Height = 17
        CustomHint = BalloonHint1
        Caption = 'pequena'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object cbModerada: TCheckBox
        Left = 88
        Top = 25
        Width = 97
        Height = 17
        CustomHint = BalloonHint1
        Caption = 'moderada'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
      end
      object cbAcentuada: TCheckBox
        Left = 184
        Top = 25
        Width = 89
        Height = 17
        CustomHint = BalloonHint1
        Caption = 'acentuada'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
      end
      object cbOcasionais: TCheckBox
        Left = 32
        Top = 44
        Width = 89
        Height = 17
        CustomHint = BalloonHint1
        Caption = 'ocasionais'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
        OnClick = cbOcasionaisClick
      end
      object cbEsparsas: TCheckBox
        Left = 120
        Top = 44
        Width = 81
        Height = 17
        CustomHint = BalloonHint1
        Caption = 'esparsas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
        OnClick = cbEsparsasClick
      end
      object cbEscassas: TCheckBox
        Left = 200
        Top = 44
        Width = 81
        Height = 17
        CustomHint = BalloonHint1
        Caption = 'escassas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 9
        OnClick = cbEscassasClick
      end
      object cbFrequentes: TCheckBox
        Left = 288
        Top = 44
        Width = 89
        Height = 17
        CustomHint = BalloonHint1
        Caption = 'frequentes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 10
        OnClick = cbFrequentesClick
      end
      object cbGrandQuant: TCheckBox
        Left = 383
        Top = 43
        Width = 101
        Height = 17
        CustomHint = BalloonHint1
        Caption = 'grande'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 11
        OnClick = cbGrandQuantClick
      end
    end
    object pnFrase3: TPanel
      Left = 0
      Top = 129
      Width = 729
      Height = 161
      CustomHint = BalloonHint1
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Color = clWhite
      TabOrder = 2
      object lbMicroflora: TLabel
        Left = 8
        Top = 8
        Width = 183
        Height = 16
        CustomHint = BalloonHint1
        Caption = '* A microflora '#233' constitu'#237'da por:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel
        Left = 224
        Top = 44
        Width = 51
        Height = 16
        CustomHint = BalloonHint1
        Caption = 'cit'#243'lise'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object cbLactobacilos: TCheckBox
        Left = 8
        Top = 43
        Width = 97
        Height = 17
        CustomHint = BalloonHint1
        Caption = 'lactobacilos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = cbLactobacilosClick
      end
      object cbDiscreta: TCheckBox
        Left = 288
        Top = 43
        Width = 73
        Height = 17
        CustomHint = BalloonHint1
        Caption = 'discreta.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = cbDiscretaClick
      end
      object cbEscassa: TCheckBox
        Left = 8
        Top = 27
        Width = 217
        Height = 17
        CustomHint = BalloonHint1
        Caption = 'escassa de dif'#237'cil classifica'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = cbEscassaClick
      end
      object cbBacterias: TCheckBox
        Left = 8
        Top = 61
        Width = 241
        Height = 17
        CustomHint = BalloonHint1
        Caption = 'bact'#233'rias coc'#243'ides e bacilos curtos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnClick = cbBacteriasClick
      end
      object cbCelulasPista: TCheckBox
        Left = 256
        Top = 61
        Width = 201
        Height = 17
        CustomHint = BalloonHint1
        Caption = 'com ocasionais c'#233'lulas-pista'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnClick = cbCelulasPistaClick
      end
      object cbSupracitoplasticos: TCheckBox
        Left = 8
        Top = 80
        Width = 297
        Height = 17
        CustomHint = BalloonHint1
        Caption = 'bacilos supracitopl'#225'sticos com c'#233'lulas-pista'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        OnClick = cbSupracitoplasticosClick
      end
      object cbNaoExistem: TCheckBox
        Left = 8
        Top = 98
        Width = 241
        Height = 17
        CustomHint = BalloonHint1
        Caption = 'n'#227'o existem protozo'#225'rios ou fungos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        OnClick = cbNaoExistemClick
      end
      object cbEfeitos: TCheckBox
        Left = 248
        Top = 98
        Width = 257
        Height = 17
        CustomHint = BalloonHint1
        Caption = 'efeitos citop'#225'ticos virais nesta amostra'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
        OnClick = cbEfeitosClick
      end
      object cbNotamSe: TCheckBox
        Left = 8
        Top = 118
        Width = 97
        Height = 17
        CustomHint = BalloonHint1
        Caption = 'notam-se'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
        OnClick = cbNotamSeClick
      end
      object cbBlastoconideos: TCheckBox
        Left = 96
        Top = 118
        Width = 113
        Height = 17
        CustomHint = BalloonHint1
        Caption = 'blastocon'#237'deos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 9
        OnClick = cbBlastoconideosClick
      end
      object cbPseudoHifas: TCheckBox
        Left = 216
        Top = 118
        Width = 337
        Height = 17
        CustomHint = BalloonHint1
        Caption = 'pseudo-hifas de fungos sugestivos de "candida sp"'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 10
        OnClick = cbPseudoHifasClick
      end
      object cbProtozoarios: TCheckBox
        Left = 8
        Top = 138
        Width = 401
        Height = 17
        CustomHint = BalloonHint1
        Caption = 'notam-se protozo'#225'rios sugestivos de "Trichomonas vaginalis"'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 11
        OnClick = cbProtozoariosClick
      end
      object cbCom2: TCheckBox
        Left = 112
        Top = 43
        Width = 57
        Height = 17
        CustomHint = BalloonHint1
        Caption = 'com'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 12
        OnClick = cbCom2Click
      end
      object cbSem2: TCheckBox
        Left = 168
        Top = 43
        Width = 49
        Height = 17
        CustomHint = BalloonHint1
        Caption = 'sem'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 13
        OnClick = cbSem2Click
      end
    end
    object pnFrase4: TPanel
      Left = 0
      Top = 288
      Width = 729
      Height = 33
      CustomHint = BalloonHint1
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Color = clWhite
      TabOrder = 3
      object Label10: TLabel
        Left = 8
        Top = 9
        Width = 264
        Height = 16
        CustomHint = BalloonHint1
        Caption = '* A presente amostra corresponde a Classe '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label12: TLabel
        Left = 599
        Top = 9
        Width = 106
        Height = 16
        CustomHint = BalloonHint1
        Caption = 'de Papanicolaou.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object cbClasse: TwwDBComboBox
        Left = 272
        Top = 3
        Width = 321
        Height = 22
        Hint = 'Selecione a classe do papanicolaou'
        CustomHint = BalloonHint1
        ShowButton = True
        Style = csDropDown
        MapList = True
        AllowClearKey = False
        ShowMatchText = True
        BorderStyle = bsNone
        DropDownCount = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ButtonEffects.Transparent = True
        ButtonEffects.Flat = True
        ItemHeight = 0
        Items.Strings = (
          'I - (Esfrega'#231'o normal)'#9'I'
          'II - (Esfrega'#231'o inflamat'#243'rio)'#9'II'
          'III - (Les'#245'es displ'#225'sicas ou pr'#233'-neopl'#225'sicas)'#9'III'
          'IV - (Provavelmente maligno)'#9'IV'
          'V - (Esfrega'#231'o com padr'#227'o de neoplasia maligna)'#9'V')
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        Sorted = False
        TabOrder = 0
        UnboundDataType = wwDefault
      end
    end
  end
  object pnDiagnostico: TPanel [4]
    Left = 2
    Top = 322
    Width = 729
    Height = 347
    Hint = 'Diagn'#243'stico'
    CustomHint = BalloonHint1
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = clInfoBk
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    object pnDiag1: TPanel
      Left = 0
      Top = 1
      Width = 729
      Height = 97
      CustomHint = BalloonHint1
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Color = clWhite
      TabOrder = 0
      object Label11: TLabel
        Left = 8
        Top = 8
        Width = 131
        Height = 16
        CustomHint = BalloonHint1
        Caption = '** Amostra satisfat'#243'ria'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object cbDentro: TCheckBox
        Left = 8
        Top = 26
        Width = 241
        Height = 17
        CustomHint = BalloonHint1
        Caption = 'dentro dos padr'#245'es de normalidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object cbEpiteliais: TCheckBox
        Left = 8
        Top = 45
        Width = 377
        Height = 17
        CustomHint = BalloonHint1
        Caption = 'com c'#233'lulas epiteliais dentro dos padr'#245'es de normalidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object cbSatisfatorias: TCheckBox
        Left = 8
        Top = 66
        Width = 217
        Height = 17
        CustomHint = BalloonHint1
        Caption = 'satisfat'#243'rias (esfrega'#231'o vaginal)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object cbObs: TCheckBox
        Left = 256
        Top = 66
        Width = 17
        Height = 17
        CustomHint = BalloonHint1
        TabOrder = 3
        OnClick = cbObsClick
      end
      object edObs: TEdit
        Left = 272
        Top = 69
        Width = 249
        Height = 24
        CustomHint = BalloonHint1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        Text = 'edObs'
      end
      object cbASCUSDiag: TCheckBox
        Left = 248
        Top = 8
        Width = 121
        Height = 17
        Hint = 'Padr'#227'o ASCUS'
        CustomHint = BalloonHint1
        Caption = 'Padr'#227'o ASCUS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
      end
      object cbNIC_HPV: TCheckBox
        Left = 384
        Top = 8
        Width = 145
        Height = 17
        Hint = 'Padr'#227'o NIC/HPV'
        CustomHint = BalloonHint1
        Caption = 'Padr'#227'o NIC/HPV'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
      end
    end
    object pnDiag2: TPanel
      Left = 0
      Top = 96
      Width = 729
      Height = 33
      CustomHint = BalloonHint1
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Color = clWhite
      TabOrder = 1
      object Label13: TLabel
        Left = 8
        Top = 8
        Width = 157
        Height = 16
        CustomHint = BalloonHint1
        Caption = '* Componente inflamat'#243'rio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object cbDiscreto: TCheckBox
        Left = 176
        Top = 8
        Width = 73
        Height = 17
        CustomHint = BalloonHint1
        Caption = 'discreto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object cbModerado: TCheckBox
        Left = 256
        Top = 8
        Width = 89
        Height = 17
        CustomHint = BalloonHint1
        Caption = 'moderado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object cbAcentuado: TCheckBox
        Left = 344
        Top = 8
        Width = 89
        Height = 17
        CustomHint = BalloonHint1
        Caption = 'acentuado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
    end
    object pnDiag3: TPanel
      Left = 0
      Top = 127
      Width = 729
      Height = 33
      CustomHint = BalloonHint1
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Color = clWhite
      TabOrder = 2
      object Label14: TLabel
        Left = 8
        Top = 9
        Width = 5
        Height = 16
        CustomHint = BalloonHint1
        Caption = '*'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object cbMetaplasia: TCheckBox
        Left = 16
        Top = 8
        Width = 161
        Height = 17
        CustomHint = BalloonHint1
        Caption = 'Metaplasia escamosa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
    end
    object pnDiag4: TPanel
      Left = 0
      Top = 158
      Width = 729
      Height = 33
      CustomHint = BalloonHint1
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Color = clWhite
      TabOrder = 3
      object Label15: TLabel
        Left = 8
        Top = 8
        Width = 5
        Height = 16
        CustomHint = BalloonHint1
        Caption = '*'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object cbAspectos: TCheckBox
        Left = 176
        Top = 8
        Width = 329
        Height = 17
        CustomHint = BalloonHint1
        Caption = 'com aspectos sugestivos de vaginose bacteriana'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object cbFlora: TCheckBox
        Left = 16
        Top = 8
        Width = 161
        Height = 17
        CustomHint = BalloonHint1
        Caption = 'Flora bacteriana mista'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
    end
    object pnDiag5: TPanel
      Left = 0
      Top = 189
      Width = 729
      Height = 33
      CustomHint = BalloonHint1
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Color = clWhite
      TabOrder = 4
      object Label16: TLabel
        Left = 8
        Top = 8
        Width = 5
        Height = 16
        CustomHint = BalloonHint1
        Caption = '*'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object cbVaginose: TCheckBox
        Left = 8
        Top = 8
        Width = 577
        Height = 17
        CustomHint = BalloonHint1
        Caption = 
          'Vaginose bacteriana (bacilos supracitoplasm'#225'ticos sugestivos de ' +
          '"Gardnerella"/Mobiluncus)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
    end
    object pnDiag6: TPanel
      Left = 0
      Top = 220
      Width = 729
      Height = 33
      CustomHint = BalloonHint1
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Color = clWhite
      TabOrder = 5
      object Label17: TLabel
        Left = 8
        Top = 8
        Width = 5
        Height = 16
        CustomHint = BalloonHint1
        Caption = '*'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object cbCandida: TCheckBox
        Left = 16
        Top = 8
        Width = 97
        Height = 17
        CustomHint = BalloonHint1
        Caption = '"Candida"'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object cbCandidiase: TCheckBox
        Left = 104
        Top = 8
        Width = 97
        Height = 17
        CustomHint = BalloonHint1
        Caption = 'Candid'#237'ase'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object cbConideos: TCheckBox
        Left = 200
        Top = 8
        Width = 97
        Height = 17
        CustomHint = BalloonHint1
        Caption = 'Con'#237'deos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
    end
    object pnDiag7: TPanel
      Left = 0
      Top = 251
      Width = 729
      Height = 33
      CustomHint = BalloonHint1
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Color = clWhite
      TabOrder = 6
      object Label18: TLabel
        Left = 8
        Top = 8
        Width = 5
        Height = 16
        CustomHint = BalloonHint1
        Caption = '*'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object cbTrichomonas: TCheckBox
        Left = 16
        Top = 8
        Width = 177
        Height = 17
        CustomHint = BalloonHint1
        Caption = '"Trichomonas vaginalis"'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
    end
    object pnDiag8: TPanel
      Left = 0
      Top = 282
      Width = 729
      Height = 33
      CustomHint = BalloonHint1
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Color = clWhite
      TabOrder = 7
      object Label19: TLabel
        Left = 8
        Top = 8
        Width = 5
        Height = 16
        CustomHint = BalloonHint1
        Caption = '*'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object cbEfeito: TCheckBox
        Left = 16
        Top = 8
        Width = 193
        Height = 17
        CustomHint = BalloonHint1
        Caption = 'Efeito estrog'#234'nico diminu'#237'do'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object cbSemelhante: TCheckBox
        Left = 216
        Top = 8
        Width = 217
        Height = 17
        CustomHint = BalloonHint1
        Caption = '(semelhante '#224' 2'#170' fase do ciclo)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
    end
    object pnDiag9: TPanel
      Left = 0
      Top = 313
      Width = 729
      Height = 33
      CustomHint = BalloonHint1
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Color = clWhite
      TabOrder = 8
      object Label20: TLabel
        Left = 8
        Top = 8
        Width = 5
        Height = 16
        CustomHint = BalloonHint1
        Caption = '*'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label8: TLabel
        Left = 17
        Top = 8
        Width = 64
        Height = 16
        CustomHint = BalloonHint1
        Caption = 'Padr'#227'o de'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object cbEutrofia: TCheckBox
        Left = 88
        Top = 8
        Width = 73
        Height = 17
        CustomHint = BalloonHint1
        Caption = 'Eutrofia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object cbHipotrofia: TCheckBox
        Left = 160
        Top = 8
        Width = 89
        Height = 17
        CustomHint = BalloonHint1
        Caption = 'Hipotrofia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object cbAtrofia: TCheckBox
        Left = 248
        Top = 8
        Width = 97
        Height = 17
        CustomHint = BalloonHint1
        Caption = 'Atrofia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
    end
  end
  object cbAbrir: TCheckBox [5]
    Left = 736
    Top = 88
    Width = 113
    Height = 17
    Hint = 'Abrir para editar'
    CustomHint = BalloonHint1
    Caption = 'Abrir ao inserir'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
  end
  object cbPadrao: TComboBox [6]
    Left = 736
    Top = 40
    Width = 169
    Height = 21
    Hint = 'Selecione o padr'#227'o'
    CustomHint = BalloonHint1
    TabOrder = 5
    Text = 'cbPadrao'
    Items.Strings = (
      'Sem padr'#227'o definido'
      'Padr'#227'o ASCUS'
      'Padr'#227'o de Queratina'#231#227'o'
      'Padr'#227'o B'#243'cio'
      'Padr'#227'o HPV Alto Grau')
  end
  inherited BalloonHint1: TBalloonHint
    Left = 848
    Top = 640
  end
end
