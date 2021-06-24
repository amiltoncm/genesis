inherited frmInsereImuno: TfrmInsereImuno
  Caption = 'Insere Imunoistoqu'#237'mica / Captura H'#237'brida'
  ClientHeight = 386
  ClientWidth = 666
  ExplicitWidth = 672
  ExplicitHeight = 415
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel [0]
    Left = 8
    Top = 8
    Width = 52
    Height = 16
    CustomHint = BalloonHint1
    Caption = 'Exame:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel [1]
    Left = 8
    Top = 32
    Width = 103
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Caminho exame (pdf)'
  end
  object Label3: TLabel [2]
    Left = 8
    Top = 78
    Width = 70
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Procedimentos'
  end
  object Label26: TLabel [3]
    Left = 8
    Top = 124
    Width = 134
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Procedimentos selecionados'
  end
  inherited btFechar: TBitBtn
    Left = 553
    Top = 353
    TabOrder = 6
    ExplicitLeft = 553
    ExplicitTop = 353
  end
  object dbExame: TDBEdit [5]
    Left = 64
    Top = 8
    Width = 121
    Height = 16
    CustomHint = BalloonHint1
    TabStop = False
    BorderStyle = bsNone
    Color = clBtnFace
    DataField = 'exa_id'
    DataSource = frmSelImuno.dsConsulta
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ReadOnly = True
    ShowHint = True
    TabOrder = 7
  end
  object feBitmap: TJvFilenameEdit [6]
    Left = 8
    Top = 51
    Width = 488
    Height = 21
    CustomHint = BalloonHint1
    Flat = False
    ParentFlat = False
    Filter = 'Portable Document Format|*.pdf'
    InitialDir = 'Meus Documentos'
    DialogTitle = 'Selecionar exame (pdf)'
    DirectInput = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 0
  end
  object cbProcedimento: TwwDBLookupCombo [7]
    Left = 8
    Top = 97
    Width = 400
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
    TabOrder = 1
    AutoDropDown = True
    ShowButton = True
    PreciseEditRegion = False
    AllowClearKey = False
    ShowMatchText = True
  end
  object seQuantidade: TJvSpinEdit [8]
    Left = 414
    Top = 97
    Width = 82
    Height = 21
    CustomHint = BalloonHint1
    DisplayFormat = '000'
    ParentShowHint = False
    ShowHint = False
    TabOrder = 2
  end
  object btInserir: TBitBtn [9]
    Left = 502
    Top = 95
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
    TabOrder = 3
    OnClick = btInserirClick
  end
  object wwDBGrid2: TwwDBGrid [10]
    Left = 10
    Top = 143
    Width = 644
    Height = 202
    Hint = 'Topografias solicitadas'
    CustomHint = BalloonHint1
    TabStop = False
    ControlType.Strings = (
      'etg_reserva;CheckBox;True;False')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    BorderStyle = bsNone
    DataSource = dsProcedimentos
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    PopupMenu = popProcedimento
    ShowHint = True
    TabOrder = 4
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clBlack
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
  end
  object btAlterar: TBitBtn [11]
    Left = 442
    Top = 353
    Width = 105
    Height = 25
    Hint = 'Insere exame'
    CustomHint = BalloonHint1
    Caption = '&Gravar'
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
    ShowHint = False
    TabOrder = 5
    OnClick = btAlterarClick
  end
  object dsImuno: TDataSource
    DataSet = dmFiles.qyExamesImuno
    Left = 232
    Top = 8
  end
  object popProcedimento: TPopupMenu
    Images = frmPrincipal.Imagens
    OwnerDraw = True
    Left = 270
    Top = 8
    object Deletar3: TMenuItem
      Caption = 'Deletar'
      Hint = 'Exclui procedimento selecionado'
      ImageIndex = 47
      OnClick = Deletar3Click
    end
  end
  object dsProcedimentos: TDataSource
    DataSet = dmExames.qyExamesProced
    Left = 302
    Top = 8
  end
  object dsLog: TDataSource
    DataSet = dmExames.qyExamesLogs
    Left = 344
    Top = 8
  end
end
