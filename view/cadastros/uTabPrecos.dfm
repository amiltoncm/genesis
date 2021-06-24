inherited frmTabPrecos: TfrmTabPrecos
  Caption = 'Tabela de pre'#231'os (Conv'#234'nios)'
  ClientHeight = 452
  ClientWidth = 859
  Menu = MainMenu1
  ExplicitWidth = 865
  ExplicitHeight = 496
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 8
    Top = 8
    Width = 33
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'C'#243'digo'
  end
  object Label2: TLabel [1]
    Left = 56
    Top = 8
    Width = 46
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Descri'#231#227'o'
  end
  inherited btFechar: TBitBtn
    Left = 746
    Top = 419
    ExplicitLeft = 746
    ExplicitTop = 419
  end
  object dbCodigo: TDBEdit [3]
    Left = 8
    Top = 24
    Width = 41
    Height = 21
    Hint = 'C'#243'digo do conv'#234'nio '
    CustomHint = BalloonHint1
    TabStop = False
    Color = clBtnFace
    DataField = 'cov_codigo'
    DataSource = dsConvenio
    ParentShowHint = False
    ReadOnly = True
    ShowHint = False
    TabOrder = 1
  end
  object dbDescricao: TDBEdit [4]
    Left = 56
    Top = 24
    Width = 441
    Height = 21
    Hint = 'Nome do conv'#234'nio'
    CustomHint = BalloonHint1
    TabStop = False
    Color = clBtnFace
    DataField = 'cov_descricao'
    DataSource = dsConvenio
    ParentShowHint = False
    ReadOnly = True
    ShowHint = False
    TabOrder = 2
  end
  object Panel1: TPanel [5]
    Left = 8
    Top = 56
    Width = 665
    Height = 105
    CustomHint = BalloonHint1
    BevelOuter = bvLowered
    Color = clInfoBk
    TabOrder = 3
    object Label4: TLabel
      Left = 8
      Top = 48
      Width = 42
      Height = 13
      CustomHint = BalloonHint1
      Caption = 'Vlr. Hora'
    end
    object Label5: TLabel
      Left = 96
      Top = 48
      Width = 66
      Height = 13
      CustomHint = BalloonHint1
      Caption = 'Vlr. Opera'#231#227'o'
    end
    object Label6: TLabel
      Left = 184
      Top = 48
      Width = 43
      Height = 13
      CustomHint = BalloonHint1
      Caption = 'Vlr. Filme'
    end
    object Label7: TLabel
      Left = 272
      Top = 48
      Width = 43
      Height = 13
      CustomHint = BalloonHint1
      Caption = 'Vlr. Total'
    end
    object Label3: TLabel
      Left = 8
      Top = 8
      Width = 65
      Height = 13
      CustomHint = BalloonHint1
      Caption = 'Procedimento'
    end
    object edVlrHora: TEdit
      Left = 8
      Top = 64
      Width = 81
      Height = 21
      Hint = 'Valor da hora do Procedimento / Conv'#234'nio'
      CustomHint = BalloonHint1
      Alignment = taRightJustify
      ParentShowHint = False
      ShowHint = False
      TabOrder = 1
      Text = 'edVlrHora'
      OnExit = edVlrHoraExit
      OnKeyPress = edVlrHoraKeyPress
    end
    object edVlrOper: TEdit
      Left = 96
      Top = 64
      Width = 81
      Height = 21
      Hint = 'Valor da opera'#231#227'o do Procedimento / Conv'#234'nio'
      CustomHint = BalloonHint1
      Alignment = taRightJustify
      ParentShowHint = False
      ShowHint = False
      TabOrder = 2
      Text = 'edVlrOper'
      OnExit = edVlrOperExit
      OnKeyPress = edVlrOperKeyPress
    end
    object edVlrFilme: TEdit
      Left = 184
      Top = 64
      Width = 81
      Height = 21
      Hint = 'Valor do filme do Procedimento / Conv'#234'nio'
      CustomHint = BalloonHint1
      Alignment = taRightJustify
      ParentShowHint = False
      ShowHint = False
      TabOrder = 3
      Text = 'edVlrFilme'
      OnExit = edVlrFilmeExit
      OnKeyPress = edVlrFilmeKeyPress
    end
    object edVlrTotal: TEdit
      Left = 272
      Top = 64
      Width = 105
      Height = 21
      Hint = 'Valor total do Procedimento / Conv'#234'nio'
      CustomHint = BalloonHint1
      TabStop = False
      Alignment = taRightJustify
      ParentShowHint = False
      ReadOnly = True
      ShowHint = False
      TabOrder = 4
      Text = 'edVlrTotal'
    end
    object btInserir: TBitBtn
      Left = 388
      Top = 64
      Width = 105
      Height = 25
      Hint = 'Insere procedimento selecionado'
      CustomHint = BalloonHint1
      Caption = '&Inserir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FF00104C001460001872001872001462001150FF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0015640015640020980026B800
        27BC0027BC0027BA00209C00166C00166CFF00FFFF00FFFF00FFFF00FFFF00FF
        001874001C880028C00028C20027BC0026B80027BC0027BC0028C00028C2001D
        8A001150FF00FFFF00FFFF00FF001874001F94002CD2002AC80027BC0026B800
        26B80027BA0027BA0027BA0027BC0028C2001D8A00166CFF00FFFF00FF001874
        002EDE002DD8002ACA0027BC5D76D3EDF0FADEE3F62042C30027BA0027BA0027
        BC0028C200166CFF00FF00197A0025B40032F0002DD80028C2546ED3F7F8FDFF
        FFFF96A6E3082EBC0027BA0027BA0027BA0028C000209C00146000197A002FE0
        0032F0002EDE526DD6F6F7FDFDFDFE899BE00027BA0027BA0027BA0027BA0027
        BA0027BE0025B2001460001E900034F80034FA6A88FCF2F4FEFFFFFFF8F9FEBC
        C9F9B9C6F8BDC7EDBDC7EDBEC8EDC0CAEE0027BC0027BC00166A0021A02552FF
        0B3EFFBAC8FEFFFFFFFFFFFFFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF0027BE0027BC0018720021A04168FF335DFF1846F5A3B6FEFFFFFFFAFBFF80
        9AFC3C60E94A69E04A69DF4B69DE4A69DE002AC80026B80015660021A0335DFF
        819BFF0035FF0234F292A8FEFFFFFFE3E9FF496CF3002EDE002DDA002DDA002C
        D2002ACA0023AA001566FF00FF0031ECA9BBFF5D7FFF0030E80234F08AA2FEFF
        FFFFF5F7FF224CE9002DDA002CD6002BCE002CD4001E8EFF00FFFF00FF0031EC
        436AFFC7D3FF5B7DFF0034FA0535EE93A9FDAABBFE0E3CEB002FE2002EDE002F
        E00029C4001E8EFF00FFFF00FFFF00FF002CD25D7FFFD3DCFF97ADFF3F67FF1F
        4EFF0D3FFF1344FF1344FF0539FF002CD6001D8AFF00FFFF00FFFF00FFFF00FF
        FF00FF335DFF335DFF95ABFFBFCCFFA7B9FF8DA5FF7390FF3962FF002FE0002F
        E0FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0030E81747FF2D
        59FF2552FF0034FC0029C6FF00FFFF00FFFF00FFFF00FFFF00FF}
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      TabOrder = 5
      OnClick = btInserirClick
    end
    object cbProcedimento: TwwDBLookupCombo
      Left = 8
      Top = 24
      Width = 649
      Height = 21
      Hint = 'Procedimentos'
      CustomHint = BalloonHint1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'prc_descricao'#9'80'#9'Descri'#231#227'o'#9'F'
        'prc_tuss'#9'10'#9'prc_tuss'#9'F'
        'prc_amr'#9'10'#9'AMR'#9'F')
      LookupTable = dmLookups.lkProcProcedimentos
      LookupField = 'prc_descricao'
      Options = [loColLines, loRowLines, loTitles]
      ButtonEffects.Transparent = True
      ButtonEffects.Flat = True
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      TabOrder = 0
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      ShowMatchText = True
    end
  end
  object wwDBGrid1: TwwDBGrid [6]
    Left = 8
    Top = 168
    Width = 843
    Height = 245
    Hint = 'Procedimentos X Conv'#234'nio'
    CustomHint = BalloonHint1
    Selected.Strings = (
      'prc_tuss'#9'10'#9'C'#243'd. TUSS'#9'T'
      'prc_descricao'#9'80'#9'Descri'#231#227'o'#9'T'
      'cpr_vlrhora'#9'10'#9'Vlr. Hora'#9'F'#9
      'cpr_vlrfilme'#9'10'#9'Vlr. Filme'#9'F'#9
      'cpr_vlroper'#9'10'#9'Vlr. Oper.'#9'F'#9
      'cpr_vlrtotal'#9'10'#9'Vlr. Total'#9'F'#9)
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = dsTabela
    ParentShowHint = False
    PopupMenu = popProcedimentos
    ShowHint = False
    TabOrder = 4
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
  end
  inherited BalloonHint1: TBalloonHint
    Left = 136
    Top = 208
  end
  object dsTabela: TDataSource
    DataSet = dmFinanceiro.qyConvProc
    Left = 344
    Top = 8
  end
  object dsProcedimentos: TDataSource
    DataSet = dmCadastros.qyProcedimentos
    Left = 456
    Top = 8
  end
  object dsConvenio: TDataSource
    DataSet = dmCadastros.qyConvenios
    Left = 504
    Top = 8
  end
  object MainMenu1: TMainMenu
    AutoHotkeys = maManual
    AutoLineReduction = maManual
    BiDiMode = bdLeftToRight
    Images = frmPrincipal.Imagens
    OwnerDraw = True
    ParentBiDiMode = False
    Left = 568
    Top = 16
    object Tabela1: TMenuItem
      Caption = 'Tabela'
      object Inserirtodaatabelapelovalorpadro1: TMenuItem
        Caption = 'Inserir todos os procedimentos da tabela pelo valor padr'#227'o'
        ImageIndex = 152
        OnClick = Inserirtodaatabelapelovalorpadro1Click
      end
      object Inserirprocedimentosnovospelovalordatabelapadro1: TMenuItem
        Caption = 'Inserir procedimentos novos pelo valor da tabela padr'#227'o'
        ImageIndex = 166
        OnClick = Inserirprocedimentosnovospelovalordatabelapadro1Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Fechar1: TMenuItem
        Caption = 'Fechar'
        Hint = 'Fecha a janela'
        ImageIndex = 1
        OnClick = Fechar1Click
      end
    end
  end
  object popProcedimentos: TPopupMenu
    Images = frmPrincipal.Imagens
    OwnerDraw = True
    Left = 88
    Top = 288
    object Deletar1: TMenuItem
      Caption = 'Deletar'
      Hint = 'Apaga procedimento'
      ImageIndex = 46
      OnClick = Deletar1Click
    end
  end
end
