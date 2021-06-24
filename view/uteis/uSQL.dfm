inherited frmSQL: TfrmSQL
  BorderIcons = [biSystemMenu]
  Caption = 'SQL - Structured Query Language'
  ClientHeight = 618
  ClientWidth = 971
  OnKeyDown = FormKeyDown
  ExplicitLeft = -188
  ExplicitWidth = 977
  ExplicitHeight = 643
  PixelsPerInch = 96
  TextHeight = 13
  object SpeedButton1: TSpeedButton [0]
    Left = 807
    Top = 361
    Width = 23
    Height = 22
    Hint = 'Clique para abrir'#13#10'arquivo SQL'
    CustomHint = BalloonHint1
    Flat = True
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
      AB8179B3897BB3897BB3897BB3897BB3897BB3897BB3897BB3897BB3897BB389
      7BB3897BB3897BFF00FFFF00FFFF00FFAE837AF8E7CDF7E5C8F6E3C4F6E0BFF5
      DFBAF4DDB6F4DBB2F2D8AEF2D6A9F1D5A6F1D3A3B3897BFF00FFFF00FFFF00FF
      B1867BF8EAD3F8E8CFF7E5CAF6E4C4009900F5DFBCF4DDB7F4DAB3F3D8AEF3D7
      AAF2D5A6B3897BFF00FFFF00FFFF00FFB5887BF9ECD9F8EBD4F7E8CF00990000
      9900009900F6DFBDF4DDB8F3DCB3F3D9AFF3D7ABB3897BFF00FFFF00FFFF00FF
      B98B7CFAEFDEF9EDD90099004993427AA8660099006B9F56F5DFBDF4DDB8F4DB
      B4F3DAB0B3897BFF00FFFF00FFFF00FFBD8F7DFBF2E3FBF0DF009900F3E9D0F8
      E9D0BAC89B009900009900F1DEBBF4DEB9F4DCB5B3897BFF00FFFF00FFFF00FF
      C1917EFBF4E9FBF2E4FAF0DFFAEEDBF9ECD6F8EAD2ECE1C4009900009900F5E0
      BFF5DEBAB3897BFF00FFFF00FFFF00FFC5957EFDF6EDFCF4EAFBF3E5FBF1E1F9
      EEDCFAECD7F8EAD2F8E8CEF7E6C9F7E3C5F6E0BFB3897BFF00FFFF00FFFF00FF
      CA987FFDF9F1DF993EDF993EDF993EDF993EDF993EDF993EDF993EDF993EDF99
      3EF6E3C6B3897BFF00FFFF00FFFF00FFCE9B80FDFAF6FDF9F3FDF7EFFCF5EBFC
      F3E6FAF1E2FAF0DEFAEDD9F9EAD4F8E8D0F7E6CAB3897BFF00FFFF00FFFF00FF
      D19E81FEFCFAFEFBF6FEF9F3FDF7EFFCF5ECFBF3E7FAF1E3FAEFDEF9EEDAF9EB
      D5F8E9D1B3897BFF00FFFF00FFFF00FFD5A081FEFDFCDF993EDF993EDF993EDF
      993EDF993EDF993EDF993EDF993EDF993EF9EBD6B3897BFF00FFFF00FFFF00FF
      D8A282FFFFFFFFFEFDFEFDFBFEFCF7FEFAF4FDF8F1FDF7EDFBF5E9FBF3E4FAF1
      E0FAEFDCB3897BFF00FFFF00FFFF00FFDAA482FFFFFFFFFFFFFFFFFDFFFDFBFE
      FCF8FEFAF4FDF9F2FCF7EEFCF5EAFCF3E5FAF1E1B3897BFF00FFFF00FFFF00FF
      DAA482DAA482DAA482DAA482DAA482DAA482DAA482DAA482DAA482DAA482DAA4
      82DAA482DAA482FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    ParentShowHint = False
    ShowHint = False
    OnClick = SpeedButton1Click
  end
  object Label1: TLabel [1]
    Left = 8
    Top = 346
    Width = 68
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Instru'#231#227'o SQL'
  end
  object Label2: TLabel [2]
    Left = 8
    Top = 417
    Width = 128
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Resultado da consulta SQL'
  end
  inherited btFechar: TBitBtn
    Left = 858
    Top = 585
    ExplicitLeft = 858
    ExplicitTop = 585
  end
  object memo: TMemo [4]
    Left = 8
    Top = 361
    Width = 793
    Height = 54
    Hint = 'Digite o comando SQL'
    CustomHint = BalloonHint1
    ParentShowHint = False
    ShowHint = False
    TabOrder = 1
  end
  object GridSQL: TDBGrid [5]
    Left = 8
    Top = 436
    Width = 835
    Height = 174
    Hint = 'Resultado do SQL'
    CustomHint = BalloonHint1
    TabStop = False
    BorderStyle = bsNone
    DataSource = dsSQL
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentShowHint = False
    ReadOnly = True
    ShowHint = False
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDrawColumnCell = GridSQLDrawColumnCell
  end
  object btExecutar: TBitBtn [6]
    Left = 858
    Top = 361
    Width = 105
    Height = 25
    Hint = 'Clique para executar o SQL'
    CustomHint = BalloonHint1
    Caption = '&Executar'
    Glyph.Data = {
      36060000424D3606000000000000360000002800000020000000100000000100
      18000000000000060000C40E0000C40E00000000000000000000FF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FF006600006600FF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF65656565
      6565FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FF0066001EB2311FB133006600FF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF6565659A9A9A9A
      9A9A656565FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FF00660031C24F22B7381AB02D21B437006600FF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF656565ABABAB9E9E9E97
      97979C9C9C656565FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FF00660047D36D3BCB5E25A83B0066001BA92E1DB132006600FF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF656565BFBFBFB5B5B598989865
      6565949494999999656565FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      0066004FD67953DE7F31B54D006600FF00FF006600179D271EAE31006600FF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FF656565C4C4C4CACACAA5A5A5656565FF
      00FF6565658C8C8C989898656565FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FF00660041C563006600CE6C6CB73D3DFF00FFFF00FF00660019AA2B0066
      00FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF656565B5B5B56565659D9D9D7A
      7A7AFF00FFFF00FF656565939393656565FF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFB73D3D006600CF6F6FCD6969CF6E6EB73D3DFF00FFFF00FF006600149D
      21006600FF00FFFF00FFFF00FFFF00FFFF00FF7A7A7A6565659F9F9F9B9B9B9E
      9E9E7A7A7AFF00FFFF00FF6565658A8A8A656565FF00FFFF00FFFF00FFFF00FF
      B73D3DDA9090D78686CD6969B73D3DCC6666CE6B6BB73D3DFF00FFFF00FFFF00
      FF006600006600FF00FFFF00FFFF00FF7A7A7AB5B5B5AEAEAE9B9B9B7A7A7A99
      99999C9C9C7A7A7AFF00FFFF00FFFF00FF656565656565FF00FFFF00FFB73D3D
      DC9595DE9B9BD27777B73D3DFF00FFB73D3DCA5F5FCD6969B73D3DFF00FFFF00
      FFFF00FF006600006600FF00FF7A7A7AB8B8B8BCBCBCA4A4A47A7A7AFF00FF7A
      7A7A9494949B9B9B7A7A7AFF00FFFF00FFFF00FF656565656565FF00FFFF00FF
      B73D3DD78686B73D3DFF00FFFF00FFFF00FFFF00FFB73D3DCC6565B73D3DFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FF7A7A7AAEAEAE7A7A7AFF00FFFF00FFFF
      00FFFF00FF7A7A7A9898987A7A7AFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFB73D3DFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB73D3DC95C5CB73D
      3DFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF7A7A7AFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FF7A7A7A9292927A7A7AFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB73D
      3DB73D3DFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FF7A7A7A7A7A7AFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFB73D3DB73D3DFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FF7A7A7A7A7A7AFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    NumGlyphs = 2
    ParentShowHint = False
    ShowHint = False
    TabOrder = 3
    OnClick = btExecutarClick
  end
  object btLimpar: TBitBtn [7]
    Left = 858
    Top = 390
    Width = 105
    Height = 25
    Hint = 'Limpa o comando SQL'
    CustomHint = BalloonHint1
    Caption = '&Limpar'
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FF0104A20104A20104A20104A20104A20104A20104A20104A20104A20104
      A2FF00FFFF00FFFF00FFFF00FFFF00FF0104A25983FF0026FF0030FF0030FB00
      2FF2002FE9002EE10030D80031D00034CB0104A2FF00FFFF00FFFF00FFFF00FF
      0104A2ABC2FF6480FF6688FF6688FF6687FA6787F56787F05779E94D70E44D74
      E20104A2FF00FFFF00FFFF00FFFF00FFFF00FF0104A20104A20104A20104A201
      04A20104A20104A20104A20104A20104A2FF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    ParentShowHint = False
    ShowHint = False
    TabOrder = 4
    OnClick = btLimparClick
  end
  object Panel1: TPanel [8]
    Left = 8
    Top = 8
    Width = 955
    Height = 337
    CustomHint = BalloonHint1
    BevelInner = bvLowered
    TabOrder = 5
    object Label3: TLabel
      Left = 8
      Top = 37
      Width = 31
      Height = 13
      CustomHint = BalloonHint1
      Caption = 'Nome:'
    end
    object lbSGDB: TLabel
      Left = 45
      Top = 37
      Width = 34
      Height = 13
      CustomHint = BalloonHint1
      Caption = 'lbSGDB'
    end
    object Label4: TLabel
      Left = 104
      Top = 37
      Width = 37
      Height = 13
      CustomHint = BalloonHint1
      Caption = 'Tabelas'
    end
    object lbRegistros: TLabel
      Left = 320
      Top = 37
      Width = 53
      Height = 13
      CustomHint = BalloonHint1
      Caption = 'lbRegistros'
    end
    object Panel2: TPanel
      Left = 2
      Top = 2
      Width = 951
      Height = 29
      CustomHint = BalloonHint1
      Align = alTop
      Caption = 'Informa'#231#245'es do SGDB'
      Color = clGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
    end
    object cbTabelas: TwwDBLookupCombo
      Left = 147
      Top = 37
      Width = 153
      Height = 21
      CustomHint = BalloonHint1
      DropDownAlignment = taLeftJustify
      LookupTable = dmConsultas.qyTabelas
      LookupField = 'tablename'
      ParentShowHint = False
      ShowHint = False
      TabOrder = 1
      AutoDropDown = False
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnChange = cbTabelasChange
    end
    object DBGrid1: TDBGrid
      Left = 8
      Top = 64
      Width = 940
      Height = 268
      CustomHint = BalloonHint1
      TabStop = False
      DataSource = dsCampos
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ParentShowHint = False
      ReadOnly = True
      ShowHint = False
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDrawColumnCell = DBGrid1DrawColumnCell
      Columns = <
        item
          Expanded = False
          FieldName = 'ordinal_position'
          Title.Caption = 'Posi'#231#227'o'
          Width = 45
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'column_name'
          Title.Caption = 'Nome'
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'data_type'
          Title.Caption = 'Tipo'
          Width = 110
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'character_maximum_length'
          Title.Caption = 'Tamanho'
          Width = 55
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'numeric_precision'
          Title.Caption = 'Precis'#227'o'
          Width = 55
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'numeric_precision_radix'
          Title.Caption = 'Radix'
          Width = 55
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'numeric_scale'
          Title.Caption = 'Escala'
          Width = 55
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'datetime_precision'
          Title.Caption = 'Data'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'is_nullable'
          Title.Caption = 'Nulo'
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'column_default'
          Title.Caption = 'Padr'#227'o'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'udt_name'
          Title.Caption = 'Nome interno'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'is_self_referencing'
          Title.Caption = 'Refer.'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'is_updatable'
          Title.Caption = 'Alter.'
          Width = 45
          Visible = True
        end>
    end
  end
  inherited BalloonHint1: TBalloonHint
    Left = 752
    Top = 32
  end
  object dsSQL: TDataSource
    DataSet = dmConsultas.SQL
    Left = 32
    Top = 304
  end
  object OpenDialog: TOpenDialog
    DefaultExt = '*.sql'
    Filter = 'Arquivos SQL|*.SQL'
    InitialDir = 'c:'
    Title = 'Abrir arquivo SQL'
    Left = 296
    Top = 320
  end
  object dsCampos: TDataSource
    DataSet = dmConsultas.qyCampos
    Left = 104
    Top = 304
  end
end