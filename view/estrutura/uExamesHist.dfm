inherited frmExamesHist: TfrmExamesHist
  Caption = 'Exames Solicitados (Histologia)'
  ClientHeight = 291
  ClientWidth = 913
  ExplicitWidth = 919
  ExplicitHeight = 323
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 8
    Top = 8
    Width = 36
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Exame:'
  end
  object lbExame: TLabel [1]
    Left = 48
    Top = 8
    Width = 40
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'lbExame'
  end
  inherited btFechar: TBitBtn
    Left = 794
    Top = 255
    ExplicitLeft = 794
    ExplicitTop = 255
  end
  object Panel1: TPanel [3]
    Left = 8
    Top = 184
    Width = 891
    Height = 65
    CustomHint = BalloonHint1
    BevelInner = bvLowered
    Color = clInfoBk
    TabOrder = 1
    object Label23: TLabel
      Left = 4
      Top = 4
      Width = 38
      Height = 13
      CustomHint = BalloonHint1
      Caption = 'Material'
    end
    object Label19: TLabel
      Left = 233
      Top = 4
      Width = 70
      Height = 13
      CustomHint = BalloonHint1
      Caption = 'Tipo de Exame'
    end
    object Label20: TLabel
      Left = 452
      Top = 4
      Width = 77
      Height = 13
      CustomHint = BalloonHint1
      Caption = 'Exame solcitado'
    end
    object Label21: TLabel
      Left = 687
      Top = 3
      Width = 56
      Height = 13
      CustomHint = BalloonHint1
      Caption = 'Quantidade'
    end
    object cbMaterial: TwwDBLookupCombo
      Left = 4
      Top = 22
      Width = 223
      Height = 21
      Hint = 'Filtra os tipos de exames'
      CustomHint = BalloonHint1
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'mat_descricao'#9'50'#9'Material'#9'F'
        'mat_id'#9'10'#9'ID'#9'F')
      LookupTable = dmLookups.lkProcMateriais
      LookupField = 'mat_descricao'
      Options = [loColLines, loRowLines, loTitles]
      ButtonEffects.Transparent = True
      ButtonEffects.Flat = True
      ParentShowHint = False
      ShowHint = False
      TabOrder = 0
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      ShowMatchText = True
    end
    object cbTipoExame: TwwDBLookupCombo
      Left = 233
      Top = 22
      Width = 213
      Height = 21
      Hint = 'Filtra os tipos de exames'
      CustomHint = BalloonHint1
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'eio_descricao'#9'30'#9'Tipo de Exame'#9'F'
        'eio_id'#9'8'#9'ID'#9'F')
      LookupTable = dmLookups.lkProcExamesTipo
      LookupField = 'eio_descricao'
      Options = [loColLines, loRowLines, loTitles]
      ButtonEffects.Transparent = True
      ButtonEffects.Flat = True
      ParentShowHint = False
      ShowHint = False
      TabOrder = 1
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      ShowMatchText = True
      OnChange = cbTipoExameChange
    end
    object cbExame: TwwDBLookupCombo
      Left = 452
      Top = 22
      Width = 229
      Height = 21
      Hint = 'Modelo de Laudo'
      CustomHint = BalloonHint1
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'eth_descricao'#9'50'#9'Descri'#231#227'o'#9'F'
        'eth_id'#9'8'#9'ID'#9'F')
      LookupTable = dmLookups.lkProcExamesHist
      LookupField = 'eth_descricao'
      Options = [loColLines, loRowLines, loTitles]
      ButtonEffects.Transparent = True
      ButtonEffects.Flat = True
      ParentShowHint = False
      ShowHint = False
      TabOrder = 2
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      ShowMatchText = True
      OnEnter = cbExameEnter
    end
    object edQuantidade: TwwDBSpinEdit
      Left = 687
      Top = 22
      Width = 62
      Height = 21
      Hint = 'Quantidade de exames solicitados'
      CustomHint = BalloonHint1
      BiDiMode = bdLeftToRight
      Increment = 1.000000000000000000
      MaxValue = 99.000000000000000000
      MinValue = 1.000000000000000000
      Value = 1.000000000000000000
      CharCase = ecUpperCase
      ButtonEffects.Transparent = True
      ButtonEffects.Flat = True
      MaxLength = 2
      ParentBiDiMode = False
      ParentShowHint = False
      ShowHint = False
      TabOrder = 3
      UnboundDataType = wwDefault
    end
    object btInsereExame: TBitBtn
      Left = 755
      Top = 22
      Width = 105
      Height = 25
      Hint = 'Insere o Exame / Dados cl'#237'nicos'
      CustomHint = BalloonHint1
      Caption = '&Exame'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FF044906055B09066C0C066C0C055E0A044C06FF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF05600905600908911309B01809
        B31A09B31909B11907961405680C05680CFF00FFFF00FFFF00FFFF00FFFF00FF
        0A6A150A7F150BB61C09B91A08B41807B21609B31909B41909B81A09B91A0783
        10044D06FF00FFFF00FFFF00FF0B6A150F852216BD3411B7270BB21C07B11608
        B11709B21909B21909B21909B41909BA1A07841006670CFF00FFFF00FF0B6A15
        20BE491BBD4014B7300AB21F63CE6DEEFAEFDFF5E128BC3609B21909B21909B3
        1909BA1A06670CFF00FF0872101B9A3A2AC65B1DBB450EB4255BCC66F7FDF8FF
        FFFF9ADFA011B42009B21909B21909B21909B81A089413045D090872102AB65B
        2CC56522BD4D5CCC69F6FCF7FDFEFD8EDB9509B21A09B21909B21909B21909B2
        1909B51A08AB17045D090F821C37C26C33C76C8ADDA8F4FCF6FFFFFFF9FDFAC7
        EED2C4EDCCBFEBC3BFEBC3C0EBC4C2ECC608B41909B31905650B138D2358CC83
        42C977C9EFD8FFFFFFFFFFFFFDFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF0AB41A09B319066D0D0F911D6FD2935FD38D44C977B7EACBFFFFFFFBFEFC9A
        E2B458CD795CCE765CCD765CCD735BCD7211B82B08B11905610A0F911D67CC83
        9BE5BA38C67032C36AAAE6C1FFFFFFE9F9EF6AD38E21BD4D1EBC491EBC471AB9
        3E10BA2908A31705610AFF00FF37B650BCEDD282DBA428C06331C268A4E4BDFF
        FFFFF7FDF945C86E20BB4A1DBA4118B73614C0300A8517FF00FFFF00FF37B650
        71D28CD2F4E180DAA336C46D31C36AAAE6C1BDECCF35C46924BE5623BC4D1FC1
        4616AE340A8517FF00FFFF00FFFF00FF25AE3984D89FDBF7EAAFE8C66BD49352
        CC8144C97849CA7B48CB7839CB6A21B6490F7C1FFF00FFFF00FFFF00FFFF00FF
        FF00FF66CD8166CD81ADE8C5CCF2DEBAEDD1A6E7C291E2B364D4922FB1572FB1
        57FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF32B74E52C46F61
        CB805DC87D43B96424A342FF00FFFF00FFFF00FFFF00FFFF00FF}
      TabOrder = 4
      OnClick = btInsereExameClick
    end
  end
  object GridMateriais: TDBGrid [4]
    Left = 8
    Top = 27
    Width = 891
    Height = 151
    Hint = 'Registros da tabela'
    CustomHint = BalloonHint1
    TabStop = False
    DataSource = dsExamesHist
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDrawColumnCell = GridMateriaisDrawColumnCell
    Columns = <
      item
        Expanded = False
        FieldName = 'mat_descricao'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'eio_descricao'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'eth_descricao'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ehi_quant'
        Visible = True
      end>
  end
  inherited BalloonHint1: TBalloonHint
    Left = 16
    Top = 248
  end
  object dsExamesHist: TDataSource
    DataSet = dmExames.qyExamesHist
    Left = 144
    Top = 8
  end
  object PopupMenu: TPopupMenu
    OwnerDraw = True
    Left = 168
    Top = 144
    object Deletar1: TMenuItem
      Caption = 'Deletar'
      Hint = 'Apaga o exame selecionado!'
      ImageIndex = 47
      OnClick = Deletar1Click
    end
  end
end
