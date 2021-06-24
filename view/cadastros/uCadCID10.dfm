inherited frmCadCID10: TfrmCadCID10
  Caption = 'CID10'
  ClientHeight = 587
  ClientWidth = 816
  OnClose = FormClose
  ExplicitWidth = 822
  ExplicitHeight = 612
  PixelsPerInch = 96
  TextHeight = 13
  object Label29: TLabel [0]
    Left = 20
    Top = 152
    Width = 79
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Desc. Abreviada'
  end
  inherited btFechar: TBitBtn
    Left = 703
    Top = 558
    Visible = False
    ExplicitLeft = 703
    ExplicitTop = 558
  end
  object pgCID: TPageControl [2]
    Left = 8
    Top = 8
    Width = 801
    Height = 569
    CustomHint = BalloonHint1
    ActivePage = tsCapitulos
    TabOrder = 1
    object tsCapitulos: TTabSheet
      CustomHint = BalloonHint1
      Caption = '&Cap'#237'tulos'
      object Label1: TLabel
        Left = 8
        Top = 40
        Width = 39
        Height = 13
        CustomHint = BalloonHint1
        Caption = 'Cap'#237'tulo'
      end
      object Label2: TLabel
        Left = 72
        Top = 40
        Width = 51
        Height = 13
        CustomHint = BalloonHint1
        Caption = 'Cat. Inicial'
      end
      object Label3: TLabel
        Left = 200
        Top = 40
        Width = 41
        Height = 13
        CustomHint = BalloonHint1
        Caption = 'Cat.final'
      end
      object Label4: TLabel
        Left = 328
        Top = 40
        Width = 49
        Height = 13
        CustomHint = BalloonHint1
        Caption = 'Abreviado'
      end
      object Label5: TLabel
        Left = 8
        Top = 80
        Width = 46
        Height = 13
        CustomHint = BalloonHint1
        Caption = 'Descri'#231#227'o'
      end
      object dbGridCap: TwwDBGrid
        Left = 8
        Top = 129
        Width = 780
        Height = 409
        Hint = 'Registros gravados'
        CustomHint = BalloonHint1
        TabStop = False
        Selected.Strings = (
          'cap_descricao'#9'130'#9'Descri'#231#227'o'
          'cap_catfim'#9'3'#9'Cat. final'
          'cap_catinic'#9'3'#9'Cat. inicial'
          'cap_descabrev'#9'50'#9'Abrevia'#231#227'o'
          'cap_numcap'#9'8'#9'N'#250'm. cap.'#9'F')
        IniAttributes.Delimiter = ';;'
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        DataSource = dsCapitulos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 0
        TitleAlignment = taLeftJustify
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        TitleLines = 1
        TitleButtons = True
        OnCalcCellColors = dbGridCapCalcCellColors
        object wwDBGrid1IButton: TwwIButton
          Left = 0
          Top = 0
          Width = 13
          Height = 22
          CustomHint = BalloonHint1
          AllowAllUp = True
        end
      end
      object dbCap: TDBEdit
        Left = 8
        Top = 56
        Width = 57
        Height = 21
        Hint = 'N'#250'mero do Cap'#237'tulo'
        CustomHint = BalloonHint1
        DataField = 'cap_numcap'
        DataSource = dsCapitulos
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
      end
      object dbCatInic: TDBEdit
        Left = 72
        Top = 56
        Width = 121
        Height = 21
        Hint = 'Categoria inicial do cap'#237'tulo'
        CustomHint = BalloonHint1
        DataField = 'cap_catinic'
        DataSource = dsCapitulos
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
      end
      object dbCatFinal: TDBEdit
        Left = 200
        Top = 56
        Width = 121
        Height = 21
        Hint = 'Categoria final do cap'#237'tulo'
        CustomHint = BalloonHint1
        DataField = 'cap_catfim'
        DataSource = dsCapitulos
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
      end
      object dbAbreviado: TDBEdit
        Left = 328
        Top = 56
        Width = 457
        Height = 21
        Hint = 'Abrevia'#231#227'o'
        CustomHint = BalloonHint1
        DataField = 'cap_descabrev'
        DataSource = dsCapitulos
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
      end
      object dbDescricao: TDBEdit
        Left = 8
        Top = 96
        Width = 777
        Height = 21
        Hint = 'Descri'#231#227'o'
        CustomHint = BalloonHint1
        DataField = 'cap_descricao'
        DataSource = dsCapitulos
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
      end
      object ToolBar3: TToolBar
        Left = 0
        Top = 0
        Width = 793
        Height = 29
        CustomHint = BalloonHint1
        Caption = 'ToolBar1'
        Images = imagens
        ParentShowHint = False
        ShowHint = True
        TabOrder = 6
        Transparent = True
        object tbPrimeiroCAP: TToolButton
          Left = 0
          Top = 0
          CustomHint = BalloonHint1
          Action = actPrimeiro
        end
        object tbVoltaCAP: TToolButton
          Left = 23
          Top = 0
          CustomHint = BalloonHint1
          Action = actPagAnt
        end
        object tbAnteriorCAP: TToolButton
          Left = 46
          Top = 0
          CustomHint = BalloonHint1
          Action = actAnterior
        end
        object tbProximoCAP: TToolButton
          Left = 69
          Top = 0
          CustomHint = BalloonHint1
          Action = actProximo
        end
        object tbAvancaCAP: TToolButton
          Left = 92
          Top = 0
          CustomHint = BalloonHint1
          Action = actPagPost
        end
        object tbUltimoCAP: TToolButton
          Left = 115
          Top = 0
          CustomHint = BalloonHint1
          Action = actUltimo
        end
        object ToolButton30: TToolButton
          Left = 138
          Top = 0
          Width = 8
          CustomHint = BalloonHint1
          Caption = 'ToolButton13'
          ImageIndex = 12
          Style = tbsSeparator
        end
        object tbInsereCAP: TToolButton
          Left = 146
          Top = 0
          CustomHint = BalloonHint1
          Action = actInserir
        end
        object tbDeletaCAP: TToolButton
          Left = 169
          Top = 0
          CustomHint = BalloonHint1
          Action = actDeletar
        end
        object tbEditaCAP: TToolButton
          Left = 192
          Top = 0
          CustomHint = BalloonHint1
          Action = actEditar
        end
        object tbGravaCAP: TToolButton
          Left = 215
          Top = 0
          CustomHint = BalloonHint1
          Action = actGravar
        end
        object tbCancelaCAP: TToolButton
          Left = 238
          Top = 0
          CustomHint = BalloonHint1
          Action = actCancelar
        end
        object ToolButton36: TToolButton
          Left = 261
          Top = 0
          Width = 8
          CustomHint = BalloonHint1
          Caption = 'ToolButton14'
          ImageIndex = 12
          Style = tbsSeparator
        end
        object tbAtualizaCAP: TToolButton
          Left = 269
          Top = 0
          CustomHint = BalloonHint1
          Action = actAtualizar
        end
        object ToolButton38: TToolButton
          Left = 292
          Top = 0
          Width = 8
          CustomHint = BalloonHint1
          Caption = 'ToolButton15'
          ImageIndex = 12
          Style = tbsSeparator
        end
        object tbProcuraCAP: TToolButton
          Left = 300
          Top = 0
          CustomHint = BalloonHint1
          Action = actProcCapitulos
        end
        object tbAjudaCAP: TToolButton
          Left = 323
          Top = 0
          CustomHint = BalloonHint1
          Action = actHelp
        end
        object ToolButton41: TToolButton
          Left = 346
          Top = 0
          Width = 8
          CustomHint = BalloonHint1
          Caption = 'ToolButton17'
          ImageIndex = 13
          Style = tbsSeparator
        end
        object tbAntCap: TToolButton
          Left = 354
          Top = 0
          Hint = 'P'#225'gina anteriror'
          CustomHint = BalloonHint1
          Caption = 'tbAntCap'
          Enabled = False
          ImageIndex = 15
        end
        object tbProxCap: TToolButton
          Left = 377
          Top = 0
          Hint = 'Pr'#243'xima p'#225'gina'
          CustomHint = BalloonHint1
          Caption = 'tbProxCap'
          ImageIndex = 16
        end
        object ToolButton3: TToolButton
          Left = 400
          Top = 0
          Width = 8
          CustomHint = BalloonHint1
          Caption = 'ToolButton3'
          ImageIndex = 17
          Style = tbsSeparator
        end
        object tbFechaCAP: TToolButton
          Left = 408
          Top = 0
          CustomHint = BalloonHint1
          Action = actFechar
        end
      end
      object pnProcCap: TPanel
        Left = 0
        Top = 0
        Width = 411
        Height = 97
        CustomHint = BalloonHint1
        BevelInner = bvLowered
        Color = clHighlight
        TabOrder = 7
        Visible = False
        object Label25: TLabel
          Left = 8
          Top = 8
          Width = 97
          Height = 13
          CustomHint = BalloonHint1
          Caption = 'Procurar (Descri'#231#227'o)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object cbProcCap: TwwDBLookupCombo
          Left = 8
          Top = 24
          Width = 393
          Height = 21
          Hint = 'Digite a busca!'
          CustomHint = BalloonHint1
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'cap_descricao'#9'130'#9'Descri'#231#227'o'#9'F'
            'cap_catfim'#9'3'#9'Cat. final'#9'F'
            'cap_catinic'#9'3'#9'Cat. inicial'#9'F'
            'cap_descabrev'#9'50'#9'cap_descabrev'#9'F'
            'cap_numcap'#9'8'#9'cap_numcap'#9'F')
          LookupTable = dmCid10.qyCapitulos
          LookupField = 'cap_descricao'
          ButtonEffects.Transparent = True
          ButtonEffects.Flat = True
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          AutoDropDown = True
          ShowButton = True
          PreciseEditRegion = False
          AllowClearKey = True
          ShowMatchText = True
          OnKeyPress = cbProcCapKeyPress
        end
        object BitBtn1: TBitBtn
          Left = 296
          Top = 61
          Width = 104
          Height = 25
          Hint = 'Fecha a janela de cadastro'
          CustomHint = BalloonHint1
          Caption = 'Fechar busca'
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFCA5D00
            CA5D00CA5D00CA5D00CA5D00CA5D00CA5D00CA5D00CA5D00CA5D00CA5D00CA5D
            00FF00FFFF00FFFF00FFFF00FFCA5D00FFFFFFFFFFFBFFFBEFFFF3E0FFEDD4FF
            E8C8FFE3BFFFE2BBFFE1BAFFEFD0CA5D00FF00FFFF00FFFF00FFFF00FFCA5D00
            FFFFFFFFF8F3FEF4E9FFEFDCFEE9D1FEE3C4FEDDB8FED9B0FED6AAFFE3BDCA5D
            00FF00FFFF00FFFF00FFFF00FFCA5D00FFFFFFFFFEFCFFFAF5FFF5EBFFF0DFFF
            EAD2FFE4C6FFDEBBFFD9B0FFE4BECA5D00FF00FFFF00FFFF00FFFF00FFCA5D00
            FFFFFFFFFFFFFFFFFEFFFBF7FFF6EDFEF0E1FFEBD5FEE5C8FEDFBCFFE8C5CA5D
            00FF00FFFF00FFFF00FFFF00FFCA5D00FFFFFFFFFFFFFFFFFFFFFFFEFFFCF8FE
            F6EDFEF2E2FFECD6FEE5C9FFEDD1CA5D00FF00FFFF00FFFF00FFFF00FFCA5D00
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCF9FFF7EF001B80FEEBD6FFF3E0CA5D
            00001B80FF00FFFF00FFFF00FFCA5D00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFF001B802355FF001B80FFFFFF001B800033FF001B80FF00FFFF00FFCA5D00
            EEB67CECB074ECB074ECB074ECB074ECB074ECB174001B802757FF001B801243
            FF001B80FF00FFFF00FFFF00FFFF00FFCA5C00CA5D00CA5D00CA5D00CA5D00CA
            5D00CA5D00CA5D00001B802B5BFF001B80FF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF001B804271FF001B802E5F
            FF001B80FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FF001B804A79FF001B80FF00FF001B803262FF001B80FF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF001B80FF00FFFF00FFFF00
            FF001B80FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnClick = BitBtn1Click
        end
      end
    end
    object tsGrupos: TTabSheet
      CustomHint = BalloonHint1
      Caption = '&Grupos'
      ImageIndex = 1
      object Label6: TLabel
        Left = 8
        Top = 40
        Width = 11
        Height = 13
        CustomHint = BalloonHint1
        Caption = 'ID'
      end
      object Label7: TLabel
        Left = 64
        Top = 40
        Width = 51
        Height = 13
        CustomHint = BalloonHint1
        Caption = 'Cat. Inicial'
      end
      object Label8: TLabel
        Left = 136
        Top = 40
        Width = 46
        Height = 13
        CustomHint = BalloonHint1
        Caption = 'Cat. Final'
      end
      object Label9: TLabel
        Left = 208
        Top = 40
        Width = 79
        Height = 13
        CustomHint = BalloonHint1
        Caption = 'Desc. Abreviada'
      end
      object Label10: TLabel
        Left = 8
        Top = 80
        Width = 46
        Height = 13
        CustomHint = BalloonHint1
        Caption = 'Descri'#231#227'o'
      end
      object ToolBar2: TToolBar
        Left = 0
        Top = 0
        Width = 793
        Height = 29
        CustomHint = BalloonHint1
        Caption = 'ToolBar1'
        Images = imagens
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        Transparent = True
        object tbPrimeiroGrp: TToolButton
          Left = 0
          Top = 0
          CustomHint = BalloonHint1
          Action = actPrimeiroG
        end
        object tbVoltaGRP: TToolButton
          Left = 23
          Top = 0
          CustomHint = BalloonHint1
          Action = actVoltaG
        end
        object tbAnteriorGRP: TToolButton
          Left = 46
          Top = 0
          CustomHint = BalloonHint1
          Action = actAnteriorG
        end
        object tbProximoGRP: TToolButton
          Left = 69
          Top = 0
          CustomHint = BalloonHint1
          Action = actProximoG
        end
        object tbAvancaGRP: TToolButton
          Left = 92
          Top = 0
          CustomHint = BalloonHint1
          Action = actAvancaG
        end
        object tbUltimoGRP: TToolButton
          Left = 115
          Top = 0
          CustomHint = BalloonHint1
          Action = actUltimoG
        end
        object ToolButton7: TToolButton
          Left = 138
          Top = 0
          Width = 8
          CustomHint = BalloonHint1
          Caption = 'ToolButton13'
          ImageIndex = 12
          Style = tbsSeparator
        end
        object tbInsereGRP: TToolButton
          Left = 146
          Top = 0
          CustomHint = BalloonHint1
          Action = actInsereG
        end
        object tbDeletaGRP: TToolButton
          Left = 169
          Top = 0
          CustomHint = BalloonHint1
          Action = actDeletaG
        end
        object tbEditaGRP: TToolButton
          Left = 192
          Top = 0
          CustomHint = BalloonHint1
          Action = actEditaG
        end
        object tbGravaGRP: TToolButton
          Left = 215
          Top = 0
          CustomHint = BalloonHint1
          Action = actGravaG
        end
        object tbCancelaGRP: TToolButton
          Left = 238
          Top = 0
          CustomHint = BalloonHint1
          Action = actCancelaG
        end
        object ToolButton16: TToolButton
          Left = 261
          Top = 0
          Width = 8
          CustomHint = BalloonHint1
          Caption = 'ToolButton14'
          ImageIndex = 12
          Style = tbsSeparator
        end
        object tbAtualizaGRP: TToolButton
          Left = 269
          Top = 0
          CustomHint = BalloonHint1
          Action = actatualizaG
        end
        object ToolButton19: TToolButton
          Left = 292
          Top = 0
          Width = 8
          CustomHint = BalloonHint1
          Caption = 'ToolButton15'
          ImageIndex = 12
          Style = tbsSeparator
        end
        object tbProcuraGRP: TToolButton
          Left = 300
          Top = 0
          CustomHint = BalloonHint1
          Action = actProcuraG
        end
        object tbAjudaGRP: TToolButton
          Left = 323
          Top = 0
          CustomHint = BalloonHint1
          Action = actHelp
        end
        object ToolButton22: TToolButton
          Left = 346
          Top = 0
          Width = 8
          CustomHint = BalloonHint1
          Caption = 'ToolButton17'
          ImageIndex = 13
          Style = tbsSeparator
        end
        object ToolButton1: TToolButton
          Left = 354
          Top = 0
          Hint = 'P'#225'gina anterior'
          CustomHint = BalloonHint1
          Caption = 'ToolButton1'
          ImageIndex = 15
          OnClick = ToolButton1Click
        end
        object ToolButton2: TToolButton
          Left = 377
          Top = 0
          Hint = 'Pr'#243'xima p'#225'gina'
          CustomHint = BalloonHint1
          Caption = 'ToolButton2'
          ImageIndex = 16
          OnClick = ToolButton2Click
        end
        object ToolButton6: TToolButton
          Left = 400
          Top = 0
          Width = 8
          CustomHint = BalloonHint1
          Caption = 'ToolButton6'
          ImageIndex = 17
          Style = tbsSeparator
        end
        object tbFechaGRP: TToolButton
          Left = 408
          Top = 0
          CustomHint = BalloonHint1
          Action = actFechar
        end
      end
      object dbGridGru: TwwDBGrid
        Left = 8
        Top = 128
        Width = 780
        Height = 409
        Hint = 'Registros gravados'
        CustomHint = BalloonHint1
        TabStop = False
        Selected.Strings = (
          'cgr_descricao'#9'200'#9'descri'#231#227'o'#9'F'
          'cgr_id'#9'6'#9'ID'#9'F'
          'cgr_catinic'#9'3'#9'Cat. inicial'#9'F'
          'cgr_catfim'#9'3'#9'Cat. final'#9'F'
          'cgr_descabrev'#9'50'#9'desc. abreviado'#9'F')
        IniAttributes.Delimiter = ';;'
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        DataSource = dsGrupos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 1
        TitleAlignment = taLeftJustify
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        TitleLines = 1
        TitleButtons = True
        OnCalcCellColors = dbGridGruCalcCellColors
        object wwIButton1: TwwIButton
          Left = 0
          Top = 0
          Width = 13
          Height = 22
          CustomHint = BalloonHint1
          AllowAllUp = True
        end
      end
      object dbID: TDBEdit
        Left = 8
        Top = 56
        Width = 49
        Height = 21
        Hint = 'Identifica'#231#227'o do grupo'
        CustomHint = BalloonHint1
        DataField = 'cgr_id'
        DataSource = dsGrupos
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
      end
      object dbCatInicial: TDBEdit
        Left = 64
        Top = 56
        Width = 65
        Height = 21
        Hint = 'Categoria inicial'
        CustomHint = BalloonHint1
        DataField = 'cgr_catinic'
        DataSource = dsGrupos
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
      end
      object dbCatfim: TDBEdit
        Left = 136
        Top = 56
        Width = 65
        Height = 21
        Hint = 'Categoria final'
        CustomHint = BalloonHint1
        DataField = 'cgr_catfim'
        DataSource = dsGrupos
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
      end
      object dbDescAbrevg: TDBEdit
        Left = 208
        Top = 56
        Width = 577
        Height = 21
        Hint = 'Descri'#231#227'o abreviada'
        CustomHint = BalloonHint1
        DataField = 'cgr_descabrev'
        DataSource = dsGrupos
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
      end
      object dbDescg: TDBEdit
        Left = 8
        Top = 96
        Width = 777
        Height = 21
        Hint = 'Descri'#231#227'o'
        CustomHint = BalloonHint1
        DataField = 'cgr_descricao'
        DataSource = dsGrupos
        ParentShowHint = False
        ShowHint = True
        TabOrder = 6
      end
      object pnProcGru: TPanel
        Left = 0
        Top = 0
        Width = 411
        Height = 97
        CustomHint = BalloonHint1
        BevelInner = bvLowered
        Color = clHighlight
        TabOrder = 7
        Visible = False
        object Label26: TLabel
          Left = 8
          Top = 8
          Width = 97
          Height = 13
          CustomHint = BalloonHint1
          Caption = 'Procurar (Descri'#231#227'o)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object cbProcGru: TwwDBLookupCombo
          Left = 8
          Top = 24
          Width = 393
          Height = 21
          Hint = 'Digite a busca!'
          CustomHint = BalloonHint1
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'cgr_descricao'#9'200'#9'descri'#231#227'o'#9'F'
            'cgr_id'#9'6'#9'ID'#9'F'
            'cgr_catinic'#9'3'#9'Cat. inicial'#9'F'
            'cgr_catfim'#9'3'#9'Cat. final'#9'F'
            'cgr_descabrev'#9'50'#9'desc. abreviado'#9'F')
          LookupTable = dmCid10.qyGrupos
          LookupField = 'cgr_descricao'
          ButtonEffects.Transparent = True
          ButtonEffects.Flat = True
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          AutoDropDown = True
          ShowButton = True
          PreciseEditRegion = False
          AllowClearKey = True
          ShowMatchText = True
          OnKeyPress = cbProcGruKeyPress
        end
        object BitBtn2: TBitBtn
          Left = 296
          Top = 61
          Width = 104
          Height = 25
          Hint = 'Fecha a janela de cadastro'
          CustomHint = BalloonHint1
          Caption = 'Fechar busca'
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFCA5D00
            CA5D00CA5D00CA5D00CA5D00CA5D00CA5D00CA5D00CA5D00CA5D00CA5D00CA5D
            00FF00FFFF00FFFF00FFFF00FFCA5D00FFFFFFFFFFFBFFFBEFFFF3E0FFEDD4FF
            E8C8FFE3BFFFE2BBFFE1BAFFEFD0CA5D00FF00FFFF00FFFF00FFFF00FFCA5D00
            FFFFFFFFF8F3FEF4E9FFEFDCFEE9D1FEE3C4FEDDB8FED9B0FED6AAFFE3BDCA5D
            00FF00FFFF00FFFF00FFFF00FFCA5D00FFFFFFFFFEFCFFFAF5FFF5EBFFF0DFFF
            EAD2FFE4C6FFDEBBFFD9B0FFE4BECA5D00FF00FFFF00FFFF00FFFF00FFCA5D00
            FFFFFFFFFFFFFFFFFEFFFBF7FFF6EDFEF0E1FFEBD5FEE5C8FEDFBCFFE8C5CA5D
            00FF00FFFF00FFFF00FFFF00FFCA5D00FFFFFFFFFFFFFFFFFFFFFFFEFFFCF8FE
            F6EDFEF2E2FFECD6FEE5C9FFEDD1CA5D00FF00FFFF00FFFF00FFFF00FFCA5D00
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCF9FFF7EF001B80FEEBD6FFF3E0CA5D
            00001B80FF00FFFF00FFFF00FFCA5D00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFF001B802355FF001B80FFFFFF001B800033FF001B80FF00FFFF00FFCA5D00
            EEB67CECB074ECB074ECB074ECB074ECB074ECB174001B802757FF001B801243
            FF001B80FF00FFFF00FFFF00FFFF00FFCA5C00CA5D00CA5D00CA5D00CA5D00CA
            5D00CA5D00CA5D00001B802B5BFF001B80FF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF001B804271FF001B802E5F
            FF001B80FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FF001B804A79FF001B80FF00FF001B803262FF001B80FF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF001B80FF00FFFF00FFFF00
            FF001B80FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnClick = BitBtn2Click
        end
      end
    end
    object tsCategorias: TTabSheet
      CustomHint = BalloonHint1
      Caption = 'C&ategorias'
      ImageIndex = 2
      object Label11: TLabel
        Left = 8
        Top = 40
        Width = 11
        Height = 13
        CustomHint = BalloonHint1
        Caption = 'ID'
      end
      object Label12: TLabel
        Left = 64
        Top = 40
        Width = 35
        Height = 13
        CustomHint = BalloonHint1
        Caption = 'Classif.'
      end
      object Label13: TLabel
        Left = 112
        Top = 40
        Width = 44
        Height = 13
        CustomHint = BalloonHint1
        Caption = 'Exclu'#237'dos'
      end
      object Label14: TLabel
        Left = 240
        Top = 40
        Width = 52
        Height = 13
        CustomHint = BalloonHint1
        Caption = 'Refer'#234'ncia'
      end
      object Label15: TLabel
        Left = 368
        Top = 40
        Width = 78
        Height = 13
        CustomHint = BalloonHint1
        Caption = 'Desc. abreviada'
      end
      object Label16: TLabel
        Left = 8
        Top = 80
        Width = 46
        Height = 13
        CustomHint = BalloonHint1
        Caption = 'Descri'#231#227'o'
      end
      object ToolBar1: TToolBar
        Left = 0
        Top = 0
        Width = 793
        Height = 29
        CustomHint = BalloonHint1
        Caption = 'ToolBar1'
        Images = imagens
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        Transparent = True
        object tbPrimeiroCat: TToolButton
          Left = 0
          Top = 0
          CustomHint = BalloonHint1
          Action = actPrimeiroCt
        end
        object tbVoltaCat: TToolButton
          Left = 23
          Top = 0
          CustomHint = BalloonHint1
          Action = actVoltaCt
        end
        object tbAnteriorCat: TToolButton
          Left = 46
          Top = 0
          CustomHint = BalloonHint1
          Action = actAnteriorCt
        end
        object tbProximoCat: TToolButton
          Left = 69
          Top = 0
          CustomHint = BalloonHint1
          Action = actProximoCt
        end
        object tbAvancaCat: TToolButton
          Left = 92
          Top = 0
          CustomHint = BalloonHint1
          Action = actAvancaCt
        end
        object tbUltimoCat: TToolButton
          Left = 115
          Top = 0
          CustomHint = BalloonHint1
          Action = actUltimoCt
        end
        object ToolButton45: TToolButton
          Left = 138
          Top = 0
          Width = 8
          CustomHint = BalloonHint1
          Caption = 'ToolButton13'
          ImageIndex = 12
          Style = tbsSeparator
        end
        object tbInsereCat: TToolButton
          Left = 146
          Top = 0
          CustomHint = BalloonHint1
          Action = actInsereCt
        end
        object tbDeletaCat: TToolButton
          Left = 169
          Top = 0
          CustomHint = BalloonHint1
          Action = actDeletaCt
        end
        object tbEditaCat: TToolButton
          Left = 192
          Top = 0
          CustomHint = BalloonHint1
          Action = actEditaCt
        end
        object tbGravaCat: TToolButton
          Left = 215
          Top = 0
          CustomHint = BalloonHint1
          Action = actGravaCt
        end
        object tbCancelaCat: TToolButton
          Left = 238
          Top = 0
          CustomHint = BalloonHint1
          Action = actCancelaCt
        end
        object ToolButton51: TToolButton
          Left = 261
          Top = 0
          Width = 8
          CustomHint = BalloonHint1
          Caption = 'ToolButton14'
          ImageIndex = 12
          Style = tbsSeparator
        end
        object tbAtualizaCat: TToolButton
          Left = 269
          Top = 0
          CustomHint = BalloonHint1
          Action = actAtualizaCt
        end
        object ToolButton53: TToolButton
          Left = 292
          Top = 0
          Width = 8
          CustomHint = BalloonHint1
          Caption = 'ToolButton15'
          ImageIndex = 12
          Style = tbsSeparator
        end
        object tbProcuraCat: TToolButton
          Left = 300
          Top = 0
          CustomHint = BalloonHint1
          Action = actProcCat
        end
        object ToolButton55: TToolButton
          Left = 323
          Top = 0
          CustomHint = BalloonHint1
          Action = actHelp
        end
        object ToolButton56: TToolButton
          Left = 346
          Top = 0
          Width = 8
          CustomHint = BalloonHint1
          Caption = 'ToolButton17'
          ImageIndex = 13
          Style = tbsSeparator
        end
        object ToolButton8: TToolButton
          Left = 354
          Top = 0
          Hint = 'P'#225'gina anterior'
          CustomHint = BalloonHint1
          Caption = 'ToolButton8'
          ImageIndex = 15
        end
        object ToolButton9: TToolButton
          Left = 377
          Top = 0
          Hint = 'Pr'#243'xima p'#225'gina'
          CustomHint = BalloonHint1
          Caption = 'ToolButton9'
          ImageIndex = 16
          OnClick = ToolButton9Click
        end
        object ToolButton10: TToolButton
          Left = 400
          Top = 0
          Width = 8
          CustomHint = BalloonHint1
          Caption = 'ToolButton10'
          ImageIndex = 17
          Style = tbsSeparator
          OnClick = ToolButton10Click
        end
        object ToolButton57: TToolButton
          Left = 408
          Top = 0
          CustomHint = BalloonHint1
          Action = actFechar
        end
      end
      object dbGridCat: TwwDBGrid
        Left = 8
        Top = 128
        Width = 780
        Height = 409
        Hint = 'Registros gravados'
        CustomHint = BalloonHint1
        TabStop = False
        Selected.Strings = (
          'cat_descricao'#9'200'#9'Descri'#231#227'o'#9'F'
          'cat_id'#9'4'#9'ID'#9'F'
          'cat_classif'#9'1'#9'Classifica'#231#227'o'#9'F'
          'cat_descabrev'#9'50'#9'Abrevia'#231#227'o'#9'F'
          'cat_refer'#9'10'#9'Refer.'#9'F'
          'cat_excluidos'#9'10'#9'Exclu'#237'dos'#9'F')
        IniAttributes.Delimiter = ';;'
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        DataSource = dsCategorias
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 1
        TitleAlignment = taLeftJustify
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        TitleLines = 1
        TitleButtons = True
        object wwIButton2: TwwIButton
          Left = 0
          Top = 0
          Width = 13
          Height = 22
          CustomHint = BalloonHint1
          AllowAllUp = True
        end
      end
      object dbIDCat: TDBEdit
        Left = 8
        Top = 56
        Width = 49
        Height = 21
        CustomHint = BalloonHint1
        DataField = 'cat_id'
        DataSource = dsCategorias
        TabOrder = 2
      end
      object dbClassif: TDBEdit
        Left = 64
        Top = 56
        Width = 41
        Height = 21
        CustomHint = BalloonHint1
        DataField = 'cat_classif'
        DataSource = dsCategorias
        TabOrder = 3
      end
      object dbExcluidos: TDBEdit
        Left = 112
        Top = 56
        Width = 121
        Height = 21
        CustomHint = BalloonHint1
        DataField = 'cat_excluidos'
        DataSource = dsCategorias
        TabOrder = 4
      end
      object dbReferencia: TDBEdit
        Left = 240
        Top = 56
        Width = 121
        Height = 21
        CustomHint = BalloonHint1
        DataField = 'cat_refer'
        DataSource = dsCategorias
        TabOrder = 5
      end
      object dbDescAbrev: TDBEdit
        Left = 368
        Top = 56
        Width = 417
        Height = 21
        CustomHint = BalloonHint1
        DataField = 'cat_descabrev'
        DataSource = dsCategorias
        TabOrder = 6
      end
      object dbDescricaoCAT: TDBEdit
        Left = 8
        Top = 96
        Width = 777
        Height = 21
        CustomHint = BalloonHint1
        DataField = 'cat_descricao'
        DataSource = dsCategorias
        TabOrder = 7
      end
      object pnProcCat: TPanel
        Left = 0
        Top = 0
        Width = 411
        Height = 97
        CustomHint = BalloonHint1
        BevelInner = bvLowered
        Color = clHighlight
        TabOrder = 8
        Visible = False
        object Label27: TLabel
          Left = 8
          Top = 8
          Width = 97
          Height = 13
          CustomHint = BalloonHint1
          Caption = 'Procurar (Descri'#231#227'o)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object cbProcCat: TwwDBLookupCombo
          Left = 8
          Top = 24
          Width = 393
          Height = 21
          Hint = 'Digite a busca!'
          CustomHint = BalloonHint1
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'cat_descricao'#9'200'#9'cat_descricao'#9'F'
            'cat_id'#9'4'#9'cat_id'#9'F'
            'cat_classif'#9'1'#9'cat_classif'#9'F'
            'cat_descabrev'#9'50'#9'cat_descabrev'#9'F'
            'cat_refer'#9'10'#9'cat_refer'#9'F'
            'cat_excluidos'#9'10'#9'cat_excluidos'#9'F')
          LookupTable = dmCid10.qyCategorias
          LookupField = 'cat_descricao'
          ButtonEffects.Transparent = True
          ButtonEffects.Flat = True
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          AutoDropDown = True
          ShowButton = True
          PreciseEditRegion = False
          AllowClearKey = True
          ShowMatchText = True
          OnKeyPress = cbProcCatKeyPress
        end
        object BitBtn3: TBitBtn
          Left = 296
          Top = 61
          Width = 104
          Height = 25
          Hint = 'Fecha a janela de cadastro'
          CustomHint = BalloonHint1
          Caption = 'Fechar busca'
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFCA5D00
            CA5D00CA5D00CA5D00CA5D00CA5D00CA5D00CA5D00CA5D00CA5D00CA5D00CA5D
            00FF00FFFF00FFFF00FFFF00FFCA5D00FFFFFFFFFFFBFFFBEFFFF3E0FFEDD4FF
            E8C8FFE3BFFFE2BBFFE1BAFFEFD0CA5D00FF00FFFF00FFFF00FFFF00FFCA5D00
            FFFFFFFFF8F3FEF4E9FFEFDCFEE9D1FEE3C4FEDDB8FED9B0FED6AAFFE3BDCA5D
            00FF00FFFF00FFFF00FFFF00FFCA5D00FFFFFFFFFEFCFFFAF5FFF5EBFFF0DFFF
            EAD2FFE4C6FFDEBBFFD9B0FFE4BECA5D00FF00FFFF00FFFF00FFFF00FFCA5D00
            FFFFFFFFFFFFFFFFFEFFFBF7FFF6EDFEF0E1FFEBD5FEE5C8FEDFBCFFE8C5CA5D
            00FF00FFFF00FFFF00FFFF00FFCA5D00FFFFFFFFFFFFFFFFFFFFFFFEFFFCF8FE
            F6EDFEF2E2FFECD6FEE5C9FFEDD1CA5D00FF00FFFF00FFFF00FFFF00FFCA5D00
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCF9FFF7EF001B80FEEBD6FFF3E0CA5D
            00001B80FF00FFFF00FFFF00FFCA5D00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFF001B802355FF001B80FFFFFF001B800033FF001B80FF00FFFF00FFCA5D00
            EEB67CECB074ECB074ECB074ECB074ECB074ECB174001B802757FF001B801243
            FF001B80FF00FFFF00FFFF00FFFF00FFCA5C00CA5D00CA5D00CA5D00CA5D00CA
            5D00CA5D00CA5D00001B802B5BFF001B80FF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF001B804271FF001B802E5F
            FF001B80FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FF001B804A79FF001B80FF00FF001B803262FF001B80FF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF001B80FF00FFFF00FFFF00
            FF001B80FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnClick = BitBtn3Click
        end
      end
    end
    object tsSubcategorias: TTabSheet
      Hint = 'Descri'#231#227'o abreviada'
      CustomHint = BalloonHint1
      Caption = 'Subcategorias'
      ImageIndex = 3
      object Label17: TLabel
        Left = 8
        Top = 40
        Width = 69
        Height = 13
        CustomHint = BalloonHint1
        Caption = 'Sub-Categoria'
      end
      object Label18: TLabel
        Left = 88
        Top = 40
        Width = 46
        Height = 13
        CustomHint = BalloonHint1
        Caption = 'Descri'#231#227'o'
      end
      object Label19: TLabel
        Left = 80
        Top = 80
        Width = 24
        Height = 13
        CustomHint = BalloonHint1
        Caption = 'Sexo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label20: TLabel
        Left = 136
        Top = 80
        Width = 26
        Height = 13
        CustomHint = BalloonHint1
        Caption = #211'bito'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label21: TLabel
        Left = 8
        Top = 80
        Width = 61
        Height = 13
        CustomHint = BalloonHint1
        Caption = 'Classifica'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label22: TLabel
        Left = 192
        Top = 80
        Width = 31
        Height = 13
        CustomHint = BalloonHint1
        Caption = 'Refer.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label23: TLabel
        Left = 296
        Top = 80
        Width = 44
        Height = 13
        CustomHint = BalloonHint1
        Caption = 'Exclu'#237'dos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label24: TLabel
        Left = 424
        Top = 80
        Width = 79
        Height = 13
        CustomHint = BalloonHint1
        Caption = 'Desc. Abreviada'
      end
      object wwDBGrid4: TwwDBGrid
        Left = 8
        Top = 128
        Width = 780
        Height = 414
        Hint = 'Registros gravados'
        CustomHint = BalloonHint1
        TabStop = False
        Selected.Strings = (
          'sct_descricao'#9'300'#9'Descri'#231#227'o'#9'F'
          'sct_subcat'#9'4'#9'Sub. Cat.'#9'F'
          'sct_classif'#9'1'#9'Classif.'#9'F'
          'sct_restrsexo'#9'1'#9'Rest. Sexo'#9'F'
          'sct_causaobito'#9'1'#9'Causa '#211'bito'#9'F'
          'sct_descabrev'#9'80'#9'Desc. Abreviada'#9'F'
          'sct_refer'#9'50'#9'Refer.'#9'F'
          'sct_excluidos'#9'50'#9'Exclu'#237'dos'#9'F')
        IniAttributes.Delimiter = ';;'
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        DataSource = dsSubCategorias
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 0
        TitleAlignment = taLeftJustify
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        TitleLines = 1
        TitleButtons = True
        object wwIButton3: TwwIButton
          Left = 0
          Top = 0
          Width = 13
          Height = 22
          CustomHint = BalloonHint1
          AllowAllUp = True
        end
      end
      object dbSubCat: TDBEdit
        Left = 8
        Top = 56
        Width = 73
        Height = 21
        Hint = 'C'#243'digo da Sub-Categoria'
        CustomHint = BalloonHint1
        DataField = 'sct_subcat'
        DataSource = dsSubCategorias
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
      end
      object dbSctDescricao: TDBEdit
        Left = 88
        Top = 56
        Width = 689
        Height = 21
        Hint = 'Descri'#231#227'o da Sub-Categoria'
        CustomHint = BalloonHint1
        DataField = 'sct_descricao'
        DataSource = dsSubCategorias
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
      end
      object dbSctClassif: TDBEdit
        Left = 8
        Top = 96
        Width = 65
        Height = 21
        Hint = 'Classifica'#231#227'o'
        CustomHint = BalloonHint1
        DataField = 'sct_classif'
        DataSource = dsSubCategorias
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
      end
      object dbRestSexo: TDBEdit
        Left = 80
        Top = 96
        Width = 49
        Height = 21
        Hint = 'Restrito a algum sexo'
        CustomHint = BalloonHint1
        DataField = 'sct_restrsexo'
        DataSource = dsSubCategorias
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
      end
      object dbCausaObito: TDBEdit
        Left = 136
        Top = 96
        Width = 49
        Height = 21
        Hint = 'Causa '#243'bito'
        CustomHint = BalloonHint1
        DataField = 'sct_causaobito'
        DataSource = dsSubCategorias
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
      end
      object dbRefer: TDBEdit
        Left = 192
        Top = 96
        Width = 97
        Height = 21
        Hint = 'Referenciada'
        CustomHint = BalloonHint1
        DataField = 'sct_refer'
        DataSource = dsSubCategorias
        ParentShowHint = False
        ShowHint = True
        TabOrder = 6
      end
      object dbExclude: TDBEdit
        Left = 296
        Top = 96
        Width = 121
        Height = 21
        Hint = 'Exclu'#237'do'
        CustomHint = BalloonHint1
        DataField = 'sct_excluidos'
        DataSource = dsSubCategorias
        ParentShowHint = False
        ShowHint = True
        TabOrder = 7
      end
      object dbDescAbrevSC: TDBEdit
        Left = 424
        Top = 96
        Width = 353
        Height = 21
        CustomHint = BalloonHint1
        DataField = 'sct_descabrev'
        DataSource = dsSubCategorias
        ParentShowHint = False
        ShowHint = True
        TabOrder = 8
      end
      object ToolBar4: TToolBar
        Left = 0
        Top = 0
        Width = 793
        Height = 29
        CustomHint = BalloonHint1
        Caption = 'ToolBar1'
        Images = imagens
        ParentShowHint = False
        ShowHint = True
        TabOrder = 9
        Transparent = True
        object tbPrimeiroSub: TToolButton
          Left = 0
          Top = 0
          CustomHint = BalloonHint1
          Action = actPrimeiroSub
        end
        object tbVoltaSub: TToolButton
          Left = 23
          Top = 0
          CustomHint = BalloonHint1
          Action = actVoltaSub
        end
        object tbAnteriorSub: TToolButton
          Left = 46
          Top = 0
          CustomHint = BalloonHint1
          Action = actAnteriorSub
        end
        object tbProximoSub: TToolButton
          Left = 69
          Top = 0
          CustomHint = BalloonHint1
          Action = actProximoSub
        end
        object tbAvancaSub: TToolButton
          Left = 92
          Top = 0
          CustomHint = BalloonHint1
          Action = actAvancaSub
        end
        object tbUltimoSub: TToolButton
          Left = 115
          Top = 0
          CustomHint = BalloonHint1
          Action = actUltimoSub
        end
        object ToolButton64: TToolButton
          Left = 138
          Top = 0
          Width = 8
          CustomHint = BalloonHint1
          Caption = 'ToolButton13'
          ImageIndex = 12
          Style = tbsSeparator
        end
        object tbInsereSub: TToolButton
          Left = 146
          Top = 0
          CustomHint = BalloonHint1
          Action = actInsereSub
        end
        object tbDeletaSub: TToolButton
          Left = 169
          Top = 0
          CustomHint = BalloonHint1
          Action = actDeletaSub
        end
        object tbEditaSub: TToolButton
          Left = 192
          Top = 0
          CustomHint = BalloonHint1
          Action = actEditaSub
        end
        object tbGravaSub: TToolButton
          Left = 215
          Top = 0
          CustomHint = BalloonHint1
          Action = actGravaSub
        end
        object tbCancelaSub: TToolButton
          Left = 238
          Top = 0
          CustomHint = BalloonHint1
          Action = actCancelaSub
        end
        object ToolButton70: TToolButton
          Left = 261
          Top = 0
          Width = 8
          CustomHint = BalloonHint1
          Caption = 'ToolButton14'
          ImageIndex = 12
          Style = tbsSeparator
        end
        object tbAtualizaSub: TToolButton
          Left = 269
          Top = 0
          CustomHint = BalloonHint1
          Action = actAtualizarSub
        end
        object ToolButton72: TToolButton
          Left = 292
          Top = 0
          Width = 8
          CustomHint = BalloonHint1
          Caption = 'ToolButton15'
          ImageIndex = 12
          Style = tbsSeparator
        end
        object tbProcuraSub: TToolButton
          Left = 300
          Top = 0
          CustomHint = BalloonHint1
          Action = actProcSub
        end
        object ToolButton74: TToolButton
          Left = 323
          Top = 0
          CustomHint = BalloonHint1
          Action = actHelp
        end
        object ToolButton75: TToolButton
          Left = 346
          Top = 0
          Width = 8
          CustomHint = BalloonHint1
          Caption = 'ToolButton17'
          ImageIndex = 13
          Style = tbsSeparator
        end
        object ToolButton12: TToolButton
          Left = 354
          Top = 0
          Hint = 'P'#225'gina anterior'
          CustomHint = BalloonHint1
          Caption = 'ToolButton12'
          ImageIndex = 15
          OnClick = ToolButton12Click
        end
        object ToolButton11: TToolButton
          Left = 377
          Top = 0
          Hint = 'Pr'#243'xima p'#225'gina'
          CustomHint = BalloonHint1
          Caption = 'ToolButton11'
          Enabled = False
          ImageIndex = 16
        end
        object ToolButton18: TToolButton
          Left = 400
          Top = 0
          Width = 8
          CustomHint = BalloonHint1
          Caption = 'ToolButton18'
          ImageIndex = 17
          Style = tbsSeparator
        end
        object ToolButton76: TToolButton
          Left = 408
          Top = 0
          CustomHint = BalloonHint1
          Action = actFechar
        end
      end
      object pnProcSub: TPanel
        Left = 0
        Top = 0
        Width = 411
        Height = 97
        CustomHint = BalloonHint1
        BevelInner = bvLowered
        Color = clHighlight
        TabOrder = 10
        Visible = False
        object Label28: TLabel
          Left = 8
          Top = 8
          Width = 97
          Height = 13
          CustomHint = BalloonHint1
          Caption = 'Procurar (Descri'#231#227'o)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object cbProcSub: TwwDBLookupCombo
          Left = 8
          Top = 24
          Width = 393
          Height = 21
          Hint = 'Digite a busca!'
          CustomHint = BalloonHint1
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'sct_descricao'#9'300'#9'Descri'#231#227'o'#9'F'
            'sct_subcat'#9'4'#9'Sub. Cat.'#9'F'
            'sct_classif'#9'1'#9'Classif.'#9'F'
            'sct_restrsexo'#9'1'#9'Rest. Sexo'#9'F'
            'sct_causaobito'#9'1'#9'Causa '#211'bito'#9'F'
            'sct_descabrev'#9'80'#9'Desc. Abreviada'#9'F'
            'sct_refer'#9'50'#9'Refer.'#9'F'
            'sct_excluidos'#9'50'#9'Exclu'#237'dos'#9'F')
          LookupTable = dmCid10.qySubCategorias
          LookupField = 'sct_descricao'
          ButtonEffects.Transparent = True
          ButtonEffects.Flat = True
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          AutoDropDown = True
          ShowButton = True
          PreciseEditRegion = False
          AllowClearKey = True
          ShowMatchText = True
          OnKeyPress = cbProcSubKeyPress
        end
        object BitBtn4: TBitBtn
          Left = 296
          Top = 61
          Width = 104
          Height = 25
          Hint = 'Fecha a janela de cadastro'
          CustomHint = BalloonHint1
          Caption = 'Fechar busca'
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFCA5D00
            CA5D00CA5D00CA5D00CA5D00CA5D00CA5D00CA5D00CA5D00CA5D00CA5D00CA5D
            00FF00FFFF00FFFF00FFFF00FFCA5D00FFFFFFFFFFFBFFFBEFFFF3E0FFEDD4FF
            E8C8FFE3BFFFE2BBFFE1BAFFEFD0CA5D00FF00FFFF00FFFF00FFFF00FFCA5D00
            FFFFFFFFF8F3FEF4E9FFEFDCFEE9D1FEE3C4FEDDB8FED9B0FED6AAFFE3BDCA5D
            00FF00FFFF00FFFF00FFFF00FFCA5D00FFFFFFFFFEFCFFFAF5FFF5EBFFF0DFFF
            EAD2FFE4C6FFDEBBFFD9B0FFE4BECA5D00FF00FFFF00FFFF00FFFF00FFCA5D00
            FFFFFFFFFFFFFFFFFEFFFBF7FFF6EDFEF0E1FFEBD5FEE5C8FEDFBCFFE8C5CA5D
            00FF00FFFF00FFFF00FFFF00FFCA5D00FFFFFFFFFFFFFFFFFFFFFFFEFFFCF8FE
            F6EDFEF2E2FFECD6FEE5C9FFEDD1CA5D00FF00FFFF00FFFF00FFFF00FFCA5D00
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCF9FFF7EF001B80FEEBD6FFF3E0CA5D
            00001B80FF00FFFF00FFFF00FFCA5D00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFF001B802355FF001B80FFFFFF001B800033FF001B80FF00FFFF00FFCA5D00
            EEB67CECB074ECB074ECB074ECB074ECB074ECB174001B802757FF001B801243
            FF001B80FF00FFFF00FFFF00FFFF00FFCA5C00CA5D00CA5D00CA5D00CA5D00CA
            5D00CA5D00CA5D00001B802B5BFF001B80FF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF001B804271FF001B802E5F
            FF001B80FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FF001B804A79FF001B80FF00FF001B803262FF001B80FF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF001B80FF00FFFF00FFFF00
            FF001B80FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnClick = BitBtn4Click
        end
      end
    end
  end
  inherited BalloonHint1: TBalloonHint
    Left = 768
    Top = 544
  end
  object dsCapitulos: TDataSource
    DataSet = dmCid10.qyCapitulos
    OnDataChange = dsCapitulosDataChange
    Left = 44
    Top = 184
  end
  object imagens: TImageList
    Left = 12
    Top = 184
    Bitmap = {
      494C010111001300040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000005000000001002000000000000050
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000004C260000602F0000723800007238000062300000502800000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006431
      000064310000984B0000B85B0000BC5D0000BC5D0000BA5C00009C4D00006C35
      00006C3500000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000743900008843
      0000C05F0000C2600000BC5D0000B85B0000BC5D0000BC5D0000C05F0000C260
      00008A4400005028000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007439000094490000D268
      0000C8630000BC5D0000B85B0000B85B0000BA5C0000BA5C0000BA5C0000BC5D
      0000C26000008A4400006C350000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000074390000DE6E0000D86B
      0000CA640000BC5D0000C3702000F6EADE00FAF3ED00D3975D00BA5C0000BA5C
      0000BC5D0000C26000006C350000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007A3C0000B4590000F0770000D86B
      0000C2600000BE5E0000BC610800E3BC9600FFFFFF00FDFAF700D1925400BA5C
      0000BA5C0000C05F00009C4D0000602F00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007A3C0000E06F0000F0770000DE6E
      0000C2600000BC5D0000BE5E0000BC5D0000DFB48900FEFEFD00FDF9F600D090
      5200BA5C0000BE5E0000B2580000602F00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000090470000F87B0000FA7C0000FEDF
      C000FADCBE00F7DABD00FADBBD00F9D9B900F8DABC00FDFAF800FFFFFF00FBF7
      F200D7A06A00BC5D0000BC5D00006A3400000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A04F0000FF912500FF840B00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFEFD00FFFFFF00FFFF
      FF00ECD3BA00BE5E0000BC5D0000723800000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A04F0000FF9F4100FF983300F7A0
      4A00FDA34B00FDA34A00FDA34A00FA9A3C00F1B88000FEFCFA00FFFFFF00EEC8
      A300D4751800C8630000B85B0000663200000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A04F0000FF983300FFBF8100FF7E
      0000F2780000FC7D0000FC7D0000FDA24900FDF0E300FFFFFF00EFC09200DA6D
      0200D2680000CA640000AA540000663200000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EC750000FFD3A900FFAD
      5D00E8730000F0770000FC8E2200FFFAF500FFFFFF00F4BE8A00DA6D0200D66A
      0000CE660000D46900008E460000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EC750000FFA04300FFE3
      C700FFAC5B00FA7C0000EF7E0E00FDD3AA00FEC89300EA770500E2700000DE6E
      0000E06F0000C46100008E460000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D2680000FFAD
      5D00FFE9D300FFCA9700FF9E3F00FF8E1F00FF850D00FF881300FF881300FF81
      0500D66A00008A44000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FF98
      3300FF983300FFC99500FFDFBF00FFD2A700FFC58D00FFB87300FF9B3900E06F
      0000E06F00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E8730000FF8A1700FF952D00FF912500FC7D0000C66200000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000005710A000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E6CEC300E3CDC300DFCBC200DBC7BE00DCC4B900E5C9BB000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000004C260000602F0000723800007238000062300000502800000000
      0000000000000000000000000000000000000000000005710A0005700A000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E8CD
      C100ECE0DB00EAEBEC00E4E7EC00D9D4D400D1CCCD00CBCBCE00C7C0BF00C8B7
      B100E5C9BB000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006431
      000064310000984B0000B85B0000BC5D0000BC5D0000BA5C00009C4D00006C35
      00006C3500000000000000000000000000000000000006740C0008780F000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EACFC300F4F1
      EE00F4FAFD00E6CDC200D7967400D58C6500D48B6400D08F6E00CEB0A400C2C0
      C200C4B7B400DCC3B700000000000000000000000000CA5D0000CA5D0000CA5D
      0000CA5D0000CA5D0000CA5D0000CA5D0000CA5D0000CA5D0000CA5D0000CA5D
      0000CA5D00000000000000000000000000000000000000000000743900008843
      0000C05F0000C2600000BC5D0000B85B0000BC5D0000BC5D0000C05F0000C260
      00008A440000502800000000000000000000000000000B7C1300158922000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E8CCBF00F8F4F300FBFF
      FF00DDA28300CB612800CD652E00F6E1D500F2D4C500CC612800CD642C00CF96
      7900C7C4C700C8BCB900E5C9BB000000000000000000CA5D0000FFFFFF00FFFF
      FB00FFFBEF00FFF3E000FFEDD400FFE8C800FFE3BF00FFE2BB00FFE1BA00FFEF
      D000CA5D0000000000000000000000000000000000007439000094490000D268
      0000C8630000BC5D0000B85B0000B85B0000BA5C0000BA5C0000BA5C0000BC5D
      0000C26000008A4400006C350000000000000000000010831B002CA945000571
      0A000000000000000000000000000000000000000000056F0900000000000000
      00000000000000000000000000000000000000000000F4E8E200FFFFFF00E3AF
      9300C95B2200CC662F00CD693500E9BCA400E6B39900CC673100CC673000CD60
      2700D29B7F00CDCCCF00D8C5BE000000000000000000CA5D0000FFFFFF00FFF8
      F300FEF4E900FFEFDC00FEE9D100FEE3C400FEDDB800FED9B000FED6AA00FFE3
      BD00CA5D00000000000000000000000000000000000074390000DE6E0000D86B
      0000CA640000BC5D0000D3975D00FAF3ED00F6EADE00C3702000BA5C0000BA5C
      0000BC5D0000C26000006C350000000000000000000010821C0044C86A001485
      20000000000000000000000000000000000000000000056F0900056F09000000
      000000000000000000000000000000000000EACFC300FEFDFD00F7E6DC00D070
      3B00CD673200CC653000D0724000E6B39800E0A28100CC652E00CD693300CD67
      3100CD6A3400D6C2B900D5D1D100E5C9BB0000000000CA5D0000FFFFFF00FFFE
      FC00FFFAF500FFF5EB00FFF0DF00FFEAD200FFE4C600FFDEBB00FFD9B000FFE4
      BE00CA5D00000000000000000000000000007A3C0000B4590000F0770000D86B
      0000C2600000D3935400FDFAF700FFFFFF00E3BC9600BC610800BA5C0000BA5C
      0000BA5C0000C05F00009C4D0000602F0000000000000975100043C467003CBD
      5E00036D070000000000000000000000000000000000056F0900119C1F00056F
      090000000000000000000000000000000000EFD9D000FFFFFF00E9BA9E00D172
      3900D2754100CD6A3300D3784800FEFAF700FAF0EB00CF6F3C00CA612900CD6A
      3500CC602800D7A08500DFE1E500E4CBC00000000000CA5D0000FFFFFF00FFFF
      FF00FFFFFE00FFFBF700FFF6ED00FEF0E100FFEBD500FEE5C800FEDFBC00FFE8
      C500CA5D00000000000000000000000000007A3C0000E06F0000F0770000DE6E
      0000D6935200FDF9F600FEFEFD00E0B48900BA5C0000BA5C0000BA5C0000BA5C
      0000BA5C0000BE5E0000B2580000602F0000000000000000000029A13F005DE9
      8F0031B04C00056F0900046F0800046E0700056D0700056F090014AD24000C95
      1800056F0900000000000000000000000000F2E0D900FFFFFF00E4AC8700D680
      4600D6804A00D4794300CF6F3900EDC7B300FFFFFF00F0D5C700D0744300CB64
      2D00CB622A00D68E6800E8ECF100E5D0C60000000000CA5D0000FFFFFF00FFFF
      FF00FFFFFF00FFFFFE00FFFCF800FEF6ED00FEF2E200FFECD600FEE5C900FFED
      D100CA5D000000000000000000000000000090470000F87B0000FA7C0000FCB2
      6A00FEF8F200FFFFFF00FEFBF800F9DABC00F8D8B900EDD5BD00EDD5BD00EDD5
      BE00EED7C000BC5D0000BC5D00006A340000000000000000000007710B0041C2
      640059E7890040C7630029AD420025AD3C0028B040001DA7300014A924000EA5
      1B000E9A1B00056F09000000000000000000F2E0D800FFFFFF00E8B68E00DB8D
      5300DB8B5500D7834C00D57D4700D3774100ECC6B000FFFFFF00F7E7DF00D175
      4400C95C2300D8916B00F1F6FA00E8D2C90000000000CA5D0000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFCF900FFF7EF00001B8000FEEBD600FFF3
      E000CA5D0000001B80000000000000000000A04F0000FF912500FF840B00FEDC
      BA00FFFFFF00FFFFFF00FFFEFD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00BE5E0000BC5D0000723800000000000000000000000000000873
      0D003BBB5B0050DD7C0047D86F003BCC5D002FC04B0025B63C001AAD2C0010A5
      1E000FA81D0012992000056F090000000000EED8CE00FFFFFF00F0CEB000DF96
      5C00E09B6700E19E6F00DA8B5500D7814A00D2753D00ECC5AE00FFFFFF00E4AF
      9200C7551900E0AB8F00F6FBFF00E9D1C60000000000CA5D0000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00001B80002355FF00001B8000FFFF
      FF00001B80000033FF00001B800000000000A04F0000FF9F4100FF983300F586
      1800FED0A300FFFFFF00FFFCFA00FCBD8000E9923C00E0954A00DF944A00DE94
      4B00DE934A00C8630000B85B0000663200000000000000000000000000000000
      000005710A001B902C0035B8530039C4590033C251002BBC45001FB1340016AD
      270016972600056F09000000000000000000EED8CE00FDFBFB00FBF2E700E4A4
      6A00F5DCC700FFFFFE00E8B69000D9854900D4793C00E5AE8B00FFFFFF00E9BB
      A100CE683000F2E2D900F6F4F300E9D1C60000000000CA5D0000EEB67C00ECB0
      7400ECB07400ECB07400ECB07400ECB07400ECB17400001B80002757FF00001B
      80001243FF00001B80000000000000000000A04F0000FF983300FFBF8100FF7E
      0000F2790200FEC79200FFFFFF00FFF1E300F39D4900DE6E0000DA6C0000DA6C
      0000D2680000CA640000AA540000663200000000000000000000000000000000
      0000000000000000000006720C000976100009781100056F090027BD41001491
      2100056F090000000000000000000000000000000000F4E7E000FFFFFF00F2D2
      B300EEC39A00FFFFFF00FDF9F600EFCAB000EEC9AD00FDF8F500FEFBF900DD94
      6500E6B49700FFFFFF00EFDED600000000000000000000000000CA5C0000CA5D
      0000CA5D0000CA5D0000CA5D0000CA5D0000CA5D0000CA5D0000001B80002B5B
      FF00001B800000000000000000000000000000000000EC750000FFD3A900FFAD
      5D00E8730000F0780200FEC38A00FFFFFF00FFFAF500E9852200DA6C0000D66A
      0000CE660000D46900008E460000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000056F0900148F2200056F
      09000000000000000000000000000000000000000000ECD4C900FAF2EF00FFFF
      FF00F1D0AD00F0CEA800FAEEE200FDF9F500FDF8F300F8E7DA00E8B28B00EABD
      9C00FFFFFF00F6EDE900EFDED600000000000000000000000000000000000000
      00000000000000000000000000000000000000000000001B80004271FF00001B
      80002E5FFF00001B8000000000000000000000000000EC750000FFA04300FFE3
      C700FFAC5B00FA7C0000EE790500FDC89300FED4AA00EB7C0E00E2700000DE6E
      0000E06F0000C46100008E460000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000056F0900056F09000000
      0000000000000000000000000000000000000000000000000000ECD4C900F9F1
      EE00FFFFFF00F9EADA00F3D4B400F1D0AE00EFCAA900EFC8A800F7E2D200FFFF
      FF00F7EEEA00E9CFC20000000000000000000000000000000000000000000000
      000000000000000000000000000000000000001B80004A79FF00001B80000000
      0000001B80003262FF00001B8000000000000000000000000000D2680000FFAD
      5D00FFE9D300FFCA9700FF9E3F00FF8E1F00FF850D00FF881300FF881300FF81
      0500D66A00008A44000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000056F0900000000000000
      000000000000000000000000000000000000000000000000000000000000ECD4
      C900F6ECE700FAF6F500FEFDFC00FFFEFD00FEFDFC00FDFCFC00FBF6F500F5E7
      E000F5E7E0000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000001B8000000000000000
      000000000000001B80000000000000000000000000000000000000000000FF98
      3300FF983300FFC99500FFDFBF00FFD2A700FFC58D00FFB87300FF9B3900E06F
      0000E06F00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EBD3C800EBD3C800EED8CF00EED7CD00ECD4C900ECD4C9000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E8730000FF8A1700FF952D00FF912500FC7D0000C66200000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000072000000720000006B000000660000006500000065000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000955A1000857A6000557AA000655A7000954A0000954A0000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000955A1000857A6000557AA000655A7000954A0000954A0000000
      0000000000000000000000000000000000000000000000000000B7818300B781
      8300B7818300B7818300B7818300B7818300B7818300B7818300B7818300B781
      8300B7818300B7818300B7818300000000000000000000000000000000000001
      B7000001B700050DAC00393EB000585AB2005657AB002E2F900000006F000000
      6900000069000000000000000000000000000000000000000000000000000872
      DD000362C300006CDB000877E700117DEA000877E7000069DD00005DC7000654
      A5000654A5000000000000000000000000000000000000000000000000000872
      DD000362C300006CDB000877E700117DEA000877E7000069DD00005DC7000654
      A5000654A5000000000000000000000000000000000000000000B7818300FEEE
      D400D3D8A900DFD9AB00F5DBB400EDD6A700EED29F00F1CF9A00F0CF9700F0CF
      9800F0CF9800F5D49A00B78183000000000000000000000000000016CE000915
      C6006C74D900CED1F200FFFFFF00FFFFFF00FFFFFF00FFFFFF00C1C2DF005A5A
      9F000101690000007D00000000000000000000000000000000000F6BC9000872
      DD003E99F50091C4F900D6E9FD00EEF7FF00E4F1FF00B0D4FB0059A5F5000570
      E500035AB7000B509500000000000000000000000000000000000F6BC9000872
      DD003E99F50091C4F900D6E9FD00EEF7FF00E4F1FF00B0D4FB0059A5F5000570
      E500035AB7000B50950000000000000000000000000000000000B7818300FDEF
      D900AECE900046AD380089BE690036A7290037A728007AB55300D6C78A00EECC
      9700EECC9700F3D19900B781830000000000000000000018DF000A1DD300A8B0
      ED00FFFFFF00FFFFFF00BDBEE9008C8CD1008D8DD000CACAEA00FFFFFF00FFFF
      FF008C8CBD00010169000000720000000000000000001278E000127CE80070B4
      F900F6FAFE00FFFFFF00EEF6FD00D3E6FB00E2EEFD00FFFFFF00FFFFFF00AED2
      FA000E78ED00025AB6000653A20000000000000000001278E000127CE80070B4
      F900F6FAFE00FFFFFF00EEF6FD00D3E6FB00E2EEFD00FFFFFF00FFFFFF00AED2
      FA000E78ED00025AB6000653A200000000000000000000000000B4817600FEF3
      E300CDD9AE0020A31C00029A0300029A0300029A0300029A030041A82E00E6CA
      9500EECC9700F3D19900B781830000000000000000000018DF00919DEF00FFFF
      FF00E6E8F9005054CE000B0DAF00242AC2001C1EB200000097005F5FBE00F0F0
      FA00FFFFFF006565A6000000720000000000000000001278E0006DB2F900FEFE
      FF00F4F9FE0077B6F6003391F000B5D5F9001B7FEA004693EE00C9E0FA00FFFF
      FF00B0D5FA000970E6000653A20000000000000000001278E0006DB2F900FEFE
      FF00E9F3FD001E7FF0000D73ED001474EB00066BE9000C6FE80089B9F400E6F0
      FD00B0D5FA000970E6000653A200000000000000000000000000B4817600FFF7
      EB00CCDCB30024A51F00029A03002FA72600BBCC8E008CBD68000C9C0A0090BB
      6300EFCD9900F3D19800B781830000000000001EF1002743E700FBFBFF00F7F8
      FD003C4BD9001617C4003438C3001214B000171BB100090B9F002323A1005E5E
      BE00FFFFFF00D9D9E9000B0B7F0000007A000B70D5003695F400E8F3FE00FFFF
      FF004FA3F6001F88F200D4E7FC00FFFFFF00489BEF000065E6000E74E800C9E1
      FA00FFFFFF0058A5F500005EC7000858AB000B70D5003695F400E8F3FE00FFFF
      FF0089BAF4008FC0F9002A86F1001075EE001275EC001E79EC0084B5F40089BA
      F400FFFFFF0058A5F500005EC7000858AB000000000000000000BA8E8500FFFC
      F400CBDFBA0017A11600029A03000C9D0C009AC57A00F4DBBB00B8C7880087BF
      6900F0D0A100F3D29B00B781830000000000001EF1007287F600FFFFFF0091A1
      F4000A15D7000E12B900191DB6001114AE002C30BB001D20B20010119A002323
      A300ADADDD00FFFFFF005353AF0000007A00137AE30071B5FB00FFFFFF00B2D7
      FC00469FF700DEEEFD00FDFEFE00E0EEFD00A1CCF8000173E900006AE7004294
      ED00FFFFFF00B3D7FB00016BDE000858AB00137AE30071B5FB00FFFFFF00B2D7
      FC00278CF90092C4FB00DAEAFD00318BF300388DF200D7E8FC0087B8F5000D71
      EA00E6F0FD00B3D7FB00016BDE000858AB000000000000000000BA8E8500FFFF
      FD00E8EDDB00B7D8A600AED39900A9CF9000AECE9000F2DEC000F4DBBA00B3D0
      9200F0D4A900F5D5A300B7818300000000000023F800A8B8FC00FFFFFF004060
      F6008794F200FDFDFE00F3F4FB00F2F2FA00F2F3FA00FFFFFF00FFFFFF001214
      A7006061C200FFFFFF008487D600000079001F85EC00A2CFFD00FFFFFF0071B7
      FD00ACD4FD00FAFCFF0066AFF8003F9AF500E2EFFD002D8EF0000075EB000575
      E900E2EEFC00E6F3FF000E7BE900065AB0001F85EC00A2CFFD00FFFFFF00419E
      FD003495FB00298DF90092C5FB00E6F1FE00E5F1FD0088BCF7001075EE000B70
      EB00B4D2F800E6F3FF000E7BE900065AB0000000000000000000CB9A8200FFFF
      FF00BAE2B700FBF3EC00F7EEDF00B1D39C00AACF9000ACCD8E00B3CC8E00EFDA
      B600F2D8B200F6D9AC00B7818300000000000E3EFE00C5CFFE00FFFFFF003259
      FE00294AF800A7B0F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00262DD5001320
      CB008186D600FFFFFF009094D9000000A2002F8FF100B7DAFD00FFFFFF006BB4
      FF003C9DFE004FA5FB001D8AF8001484F500A0CDFB0084BDF800067AEF000374
      EB00D4E8FB00F0F8FF001A82EC00055CB5002F8FF100B7DAFD00FFFFFF00419F
      FF003196FE003094FC00469EFC00F1F8FE00F1F8FE003892F500187DF1001378
      EF009FC9F700F0F8FF001A82EC00055CB5000000000000000000CB9A8200FFFF
      FF008DD28E00C1E1BB00FBF3EC009CCF8F000D9D0C00029A030017A01400F6DE
      C100F4DBB900F8DDB400B7818300000000003C63FF00C4D0FF00FFFFFF005979
      FF00052EFF00173DFD00C3C9F800FFFFFF00FFFFFF001D2DDC000B1ED900303C
      D6008C92DE00FEFEFF00797DD5000000A8003693F000B8DAFE00FFFFFF008EC6
      FF002391FF002E95FE002B93FC00218CF9002D92F7009ACAFB001D86F2001D86
      F000F3F8FE00D9EBFE00117DE900095CB2003693F000B8DAFE00FFFFFF0059AC
      FF003499FF0055A9FE00E8F3FF0085BFFD0083BDFC00E7F2FE004498F6001A7F
      F200D3E6FC00D9EBFE00117DE900095CB2000000000000000000DCA88700FFFF
      FF0099D69A000D9D0E0093D18E00C0DEB40030AA2C00029A030024A41F00F6E2
      C800F7E1C200F0DAB700B781830000000000103EFF00B6C5FF00FFFFFF00C7D2
      FF00032CFF000020FF002C48FE00C4CBFA00374AE7001A2CDE001D29D900222E
      D100D3D6F400FDFDFE00313CC8000000A8002689ED00AFD6FD00FFFFFF00E1F0
      FF003499FF002F96FF003399FF002E94FD00218CF90050A4F900419BF7007DBB
      F800FFFFFF0099C9FA000773E1000958AB002689ED00AFD6FD00FFFFFF00C3E1
      FF004AA4FF00EDF6FF0081C0FF003296FE002E93FC007BBAFD00EBF5FE0059A5
      F800E9F3FE0099C9FA000773E1000958AB000000000000000000DCA88700FFFF
      FF00F6FBF60045B54600029A0300029A0300029A0300029A030021A41E00FCEF
      D900E6D9C400C6BCA900B781830000000000000000008DA4FF00FFFFFF00FFFF
      FF008AA0FF000027FF00012CFF000424FF001C3EFB00001DE900061CDF009EA9
      F100FFFFFF00B4BAED000007BB0000000000000000003994F000F1F8FF00FFFF
      FF00ADD6FF003499FF002592FF002893FF00238FFC001788FA006FB4FA00F4FA
      FF00F5FAFE0049A0F700076ACE0000000000000000003994F000F1F8FF00FBFD
      FF0078BBFF0061AFFF003499FF003499FF003398FF003095FD0068B0FC00F4FA
      FF00F5FAFE0049A0F700076ACE00000000000000000000000000E3B18E00FFFF
      FF00FFFFFF00E5F5E50081CD81003BB03B0038AE37008ECD850045AE3D00AA87
      7100B8857A00B8857A00B78183000000000000000000718DFF00DAE1FF00FFFF
      FF00FFFFFF00B1C0FF003B5DFF001538FF001739FE004966F800C0CAFA00FFFF
      FF00EDEFFC003041D3000007BB0000000000000000003994F000CDE6FF00F6FA
      FF00FFFFFF00E0EFFF008DC6FF006EB6FE0079BBFF00B6DAFE00FFFFFF00FFFF
      FF0078B9F900137BE600076ACE0000000000000000003994F000CDE6FF00F6FA
      FF00FBFDFF00C1DFFF0058ABFF0043A0FF0049A3FF0084C1FE00FBFDFF00FFFF
      FF0078B9F900137BE600076ACE00000000000000000000000000E3B18E00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00E8F6E800E7F5E500FFFEF900BEC6A800A288
      6C00E8B27000ECA54A00C587680000000000000000000000000088A0FF00E6EB
      FF00FFFFFF00FFFFFF00FDFDFF00E2E9FF00E4EBFF00FFFFFF00FFFFFF00DBE0
      FA003D50E000000BCC000000000000000000000000000000000064ACF600D4EA
      FF00F9FCFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7F3FE0077B8
      FA001D85ED000D6DD0000000000000000000000000000000000064ACF600D4EA
      FF00F9FCFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7F3FE0077B8
      FA001D85ED000D6DD00000000000000000000000000000000000EDBD9200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E4D4D200B885
      7A00FAC57700CD93770000000000000000000000000000000000000000008AA1
      FF00BAC7FE00E8ECFF00FFFFFF00FFFFFF00FFFFFF00E4E9FE00889BF6001738
      E600000BCC00000000000000000000000000000000000000000000000000459A
      F000A7D2FC00D8ECFF00E2F1FF00E4F1FE00D1E7FE009DCDFD004DA2F700177F
      E800177FE800000000000000000000000000000000000000000000000000459A
      F000A7D2FC00D8ECFF00E2F1FF00E4F1FE00D1E7FE009DCDFD004DA2F700177F
      E800177FE8000000000000000000000000000000000000000000EDBD9200FCF7
      F400FCF7F300FBF6F300FBF6F300FAF5F300F9F5F300F9F5F300E1D0CE00B885
      7A00CF9B86000000000000000000000000000000000000000000000000000000
      0000000000008AA0FF008AA3FF0090A6FF007993FE004A6BF9001A40EF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003B94F00061ABF60065ADF700489EF4002286EC00127AE4000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003B94F00061ABF60065ADF700489EF4002286EC00127AE4000000
      0000000000000000000000000000000000000000000000000000EDBD9200DCA8
      8700DCA88700DCA88700DCA88700DCA88700DCA88700DCA88700DCA88700B885
      7A00000000000000000000000000000000000000000000000000000000000000
      0000000000009A3000009A3000009A2F0000962A0000972C0000972C00000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000821C0000821C0000821B00007E1700007F1800007F1800000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000072000000720000006B000000660000006500000065000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000072000000720000006B000000660000006500000065000000
      000000000000000000000000000000000000000000000000000000000000A842
      0000A8420000B8683300CB926F00D2A18400CC977C00B97252009E3C10009325
      000093250000000000000000000000000000000000000000000000000000922A
      0000922A0000A54D1E00BC795400C58A6A00BD7F6200A6573800872506007A13
      00007A1300000000000000000000000000000000000000000000000000000001
      B7000001B700050DAC00393EB000585AB2005657AB002E2F900000006F000000
      6900000069000000000000000000000000000000000000000000000000000001
      B7000001B700050DAC00393EB000585AB2005657AB002E2F900000006F000000
      6900000069000000000000000000000000000000000000000000B04B0000BC6B
      2800E7CBB600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F4E9E400C286
      68009529000098310000000000000000000000000000000000009C320000AA50
      1600E0BCA300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F0E2DC00B16C
      4D007D160000801C0000000000000000000000000000000000000016CE000915
      C6006C74D900CED1F200FFFFFF00FFFFFF00FFFFFF00FFFFFF00C1C2DF005A5A
      9F000101690000007D00000000000000000000000000000000000016CE000915
      C6006C74D900CED1F200FFFFFF00FFFFFF00FFFFFF00FFFFFF00C1C2DF005A5A
      9F000101690000007D00000000000000000000000000C67C3900C67C3900F8F0
      E800FFFFFF00F8F1EB00DBB6A300CA957D00D0A08C00EAD6CC00FFFFFF00FFFF
      FF00CF9E870094290000932700000000000000000000B6622300B6622300F6EB
      E100FFFFFF00F6EDE500D0A38C00BB7D6300C2897300E3CABD00FFFFFF00FFFF
      FF00C1876D007B1600007A15000000000000000000000018DF000A1DD300A8B0
      ED00FFFFFF00FFFFFF00BDBEE9008C8CD1008D8DD000CACAEA00FFFFFF00FFFF
      FF008C8CBD00010169000000720000000000000000000018DF000A1DD300A8B0
      ED00FFFFFF00FFFFFF00BDBEE9008C8CD1008D8DD000CACAEA00FFFFFF00FFFF
      FF008C8CBD0001016900000072000000000000000000C16A1500F7ECDF00FFFF
      FF00DDB39400A9460D009E3604009A2F04009529010095290000B66C5100FAF5
      F200FFFFFF00C2856800932700000000000000000000B04F0900F4E6D500FFFF
      FF00D39F7B00932D050087200100821B01007D1600007D160000A3513700F8F2
      EE00FFFFFF00B16B4D007A15000000000000000000000018DF00919DEF00FFFF
      FF00E6E8F9004F53CE000002AB0000009D0000009500000097005F5FBE00F0F0
      FA00FFFFFF006565A6000000720000000000000000000018DF00919DEF00FFFF
      FF00E6E8F9004F53CE000002AB00161DBE001A1CB100000097005F5FBE00F0F0
      FA00FFFFFF006565A6000000720000000000C16A1500E1B68600FFFFFF00E8C7
      A700B85E1900C8865D00A6430B00A13A07009C320500972C020099310B00BA75
      5600FFFFFF00F6EDE6009E3C0F009B320000B04F0900D8A36C00FFFFFF00E1B7
      9100A5430C00FFFF0000902B04008A230200841D01007F180000811C0400A75A
      3C00FFFFFF00F3E7DE0087250600831D0000001EF1002743E700FBFBFF00F7F8
      FD003B4BDA000000C000161DBE00B0B4E700A3A5E0000A0CA00000008F005252
      B900FFFFFF00D9D9E9000B0B7F0000007A00001EF1002743E700FBFBFF00F7F8
      FD003B4BDA000000C000161DBE001619B4000B0CA100090B9F0000008F005252
      B900FFFFFF00D9D9E9000B0B7F0000007A00C6700A00F4E5D100FFFFFE00CB7C
      2B00BE651700FFFFFF00EDD6C700B9693900A43F09009E360600FFFFFF00952B
      0200E9D3CA00FFFFFF00BB7452009B320000B6550300F0DDC400FFFFFE00BC62
      1800AC4A0A00FFFF0000FFFF0000A64E23008E28030087200200FFFF00007D18
      0000E2C6BB00FFFFFF00A9593800831D0000001EF1007287F600FFFFFF0091A1
      F400000DDA00000BD000161DCB00F1F4FE00DEE1F6000508A90000009A000000
      9300ACACDD00FFFFFF005353AF0000007A00001EF1007287F600FFFFFF0091A1
      F400000DDA00000BD000161DCB001D1EAE000C0DA0000609A70000009A000000
      9300ACACDD00FFFFFF005353AF0000007A00D2863000FCF7F200FAEFDC00CD7A
      1C00C7731E00FFFFFF00FFFFFF00FEFCFA00DDB49A00AD511D00FFFFFF009A31
      0400CE9E8700FFFFFF00CD997D00992E0000C56C1C00FBF4EE00F8EAD100BF5F
      0D00B7580F00FFFF0000FFFF0000FFFF0000D3A0820098370E00FFFF0000821C
      0100C0876D00FFFFFF00BF816300811A00000023F800A8B8FC00FFFFFF004060
      F6001734EC00A0AEF200BABEF100F8F9FE00F3F4FB00B6B8E9009799DC000D0E
      A2005A5BBF00FFFFFF008487D600000079000023F800A8B8FC00FFFFFF004060
      F6001734EC00F8F9FE00F8F9FE00F8F9FE00F3F4FB00F3F4FB00F3F4FB000D0E
      A2005A5BBF00FFFFFF008487D60000007900DEA35C00FFFFFF00F7E6C900D587
      2400D0802200FFFFFF00FFFFFF00FFFFFF00FFFFFF00DEB69B00FFFFFF00A43F
      0900CC967700FFFFFF00D3A385009C320000D48C4100FFFFFF00F4DEBA00C96D
      1300C2661100FFFF0000FFFF0000FFFF0000FFFF0000D4A38300FFFF00008E28
      0300BD7E5C00FFFFFF00C68C6B00841D00000E3EFE00C5CFFE00FFFFFF003259
      FE002649F900FAFCFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EBECF9001519
      B1004A4FC100FFFFFF009094D9000000A2000E3EFE00C5CFFE00FFFFFF003259
      FE002649F900C5CFFD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EBECF9001519
      B1004A4FC100FFFFFF009094D9000000A200E3AF6D00FFFFFF00FDF6EC00DA8D
      2400D78A2600FFFFFF00FFFFFF00F3E0CE00CF8B4C00BB601600FFFFFF00AC4A
      0B00DEB89D00FFFFFF00CD9472009D330000DA9A5200FFFFFF00FCF3E600CF74
      1300CB701400FFFF0000FFFF0000FFFF0000C1723300A9450A00FFFF00009731
      0400D4A58600FFFFFF00BF7B5700861E00003C63FF00C4D0FF00FFFFFF005979
      FF00052EFF00375CFB00586DF400F0F3FE00E3E6FA004D5ADE003446D2000004
      B700757CD600FFFFFF00797DD5000000A8003C63FF00C4D0FF00FFFFFF005979
      FF00052EFF00123AFE00122EEB000D24E2000719D9000F17D1000004B7000004
      B700757CD600FFFFFF00797DD5000000A800E1A75700FDFAF500FFFFFF00E0A2
      4A00DA8F2800FBF2E700E5B57800D0802200CA781F00C46F1B00FFFFFF00B960
      1700F7EEE800FFFFFF00BB6B33009D330000D8913D00FCF8F200FFFFFF00D78B
      3100CF761600FFFF0000FFFF0000C2661100BB5D0F00B4540D00FFFF0000A645
      0A00F4E9E100FFFFFF00A9501E00861E0000103EFF00B6C5FF00FFFFFF00C7D2
      FF00032CFF000020FF001739FB00F3F6FF00E1E5FA00071FDC000007CE000C1C
      CB00D9DCF500FDFDFE00313CC8000000A800103EFF00B6C5FF00FFFFFF00C7D2
      FF00032CFF000020FF000829FE001630EB000119E2000517D9000A11D0000C1C
      CB00D9DCF500FDFDFE00313CC8000000A80000000000F5E3CA00FFFFFF00F8EA
      D500DC943100DC953400DA8F2800D68B2600D3832300CE7C2100C56C1300E5BF
      9900FFFFFF00EBD0BA00AA4701000000000000000000F2DABB00FFFFFF00F6E3
      C900D17B1C00FFFF0000CF761600CA721400C6691200C0621100B5510800DDAD
      8100FFFFFF00E5C2A700952E000000000000000000008DA4FF00FFFFFF00FFFF
      FF008AA0FF000027FF00002CFF00466AFF004163F800001DE900061CDF00A1AC
      F100FFFFFF00B4BAED000007BB0000000000000000008DA4FF00FFFFFF00FFFF
      FF008AA0FF000027FF00012CFF000424FF001C3EFB00001DE900061CDF00A1AC
      F100FFFFFF00B4BAED000007BB000000000000000000E7B97500FEFBF800FFFF
      FF00F9EBD600E1A44F00DA8F2800DA8F2700D98B2300D9923800EDD0AC00FFFF
      FF00F9F1E900BE6D2A00AA4701000000000000000000E0A65A00FEFAF600FFFF
      FF00F7E5CA00D88E3500CF761600CF761500CE721200CE792200E7C29700FFFF
      FF00F7EDE200AC521700952E00000000000000000000718DFF00DAE1FF00FFFF
      FF00FFFFFF00B1C0FF003B5DFF001538FF001739FE004966F800C0CAFA00FFFF
      FF00EDEFFC003041D3000007BB000000000000000000718DFF00DAE1FF00FFFF
      FF00FFFFFF00B1C0FF003B5DFF001538FF001739FE004966F800C0CAFA00FFFF
      FF00EDEFFC003041D3000007BB00000000000000000000000000ECC58B00FEFC
      F900FFFFFF00FFFFFF00FCF6EA00F6E4C900F9EDD900FFFFFF00FFFFFF00F6EB
      DD00C87E3800B352000000000000000000000000000000000000E6B57200FEFB
      F700FFFFFF00FFFFFF00FBF3E300F3DCBA00F7E7CE00FFFFFF00FFFFFF00F3E5
      D300B86422009F3800000000000000000000000000000000000088A0FF00E6EB
      FF00FFFFFF00FFFFFF00FDFDFF00E2E9FF00E4EBFF00FFFFFF00FFFFFF00DBE0
      FA003D50E000000BCC000000000000000000000000000000000088A0FF00E6EB
      FF00FFFFFF00FFFFFF00FDFDFF00E2E9FF00E4EBFF00FFFFFF00FFFFFF00DBE0
      FA003D50E000000BCC000000000000000000000000000000000000000000E6B4
      6A00F6E4CC00FEFCFA00FFFFFF00FFFFFF00FFFFFF00FBF5EC00E8C59D00C672
      1B00B8570000000000000000000000000000000000000000000000000000DEA0
      4F00F3DCBD00FEFBF800FFFFFF00FFFFFF00FFFFFF00FAF2E600E1B58600B657
      0D00A53D00000000000000000000000000000000000000000000000000008AA1
      FF00BAC7FE00E8ECFF00FFFFFF00FFFFFF00FFFFFF00E4E9FE00889BF6001738
      E600000BCC000000000000000000000000000000000000000000000000008AA1
      FF00BAC7FE00E8ECFF00FFFFFF00FFFFFF00FFFFFF00E4E9FE00889BF6001738
      E600000BCC000000000000000000000000000000000000000000000000000000
      0000E1A14600E2A95400E7B97C00E6B98200DFA86700D28A3200C46800000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D88A2D00D9933A00E0A66200DEA66800D5924C00C5701D00B44D00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008AA0FF008AA3FF0090A6FF007993FE004A6BF9001A40EF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008AA0FF008AA3FF0090A6FF007993FE004A6BF9001A40EF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000821C0000821C0000821B00007E1700007F1800007F1800000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009A3000009A3000009A2F0000962A0000972C0000972C00000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000003B0000003B000000370000002D000000280000002800000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000003B0000003B000000370000002D000000280000002800000000
      000000000000000000000000000000000000000000000000000000000000922A
      0000922A0000A54D1E00BC795400C58A6A00BD7F6200A6573800872506007A13
      00007A130000000000000000000000000000000000000000000000000000A842
      0000A8420000B8683300CB926F00D2A18400CC977C00B97252009E3C10009325
      0000932500000000000000000000000000000000000000000000000000000068
      040000680400347E38006E9C6F0082AA85007BA17B004F7C50000F4510000028
      0000002800000000000000000000000000000000000000000000000000000068
      040000680400347E38006E9C6F0082AA85007BA17B004F7C50000F4510000028
      00000028000000000000000000000000000000000000000000009C320000AA50
      1600E0BCA300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F0E2DC00B16C
      4D007D160000801C000000000000000000000000000000000000B04B0000BC6B
      2800E7CBB600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F4E9E400C286
      6800952900009831000000000000000000000000000000000000007A07002C8E
      3200B7D7BA00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E2EBE200668E
      680000310000012C030000000000000000000000000000000000007A07002C8E
      3200B7D7BA00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E2EBE200668E
      680000310000012C0300000000000000000000000000B6622300B6622300F6EB
      E100FFFFFF00F6EDE500D0A38C00BB7D6300C2897300E3CABD00FFFFFF00FFFF
      FF00C1876D007B1600007A1500000000000000000000C67C3900C67C3900F8F0
      E800FFFFFF00F8F1EB00DBB6A300CA957D00D0A08C00EAD6CC00FFFFFF00FFFF
      FF00CF9E870094290000932700000000000000000000008608003C9F4300E9F4
      EA00FFFFFF00EBF3EC00A3C3A4007EA67F008BAC8B00CCDACC00FFFFFF00FFFF
      FF0084A5840000320000002E00000000000000000000008608003C9F4300E9F4
      EA00FFFFFF00EBF3EC00A3C3A4007EA67F008BAC8B00CCDACC00FFFFFF00FFFF
      FF0084A5840000320000002E00000000000000000000B04F0900F4E6D500FFFF
      FF00DCB192009835070088210000801A00007B1500007D170000A95B4200F8F2
      EE00FFFFFF00B16B4D007A1500000000000000000000C16A1500F7ECDF00FFFF
      FF00E4C2A800AD4E12009F370000982E000094270000952A0000BB765D00FAF5
      F200FFFFFF00C28568009327000000000000000000001A9A2500E1F2E200FFFF
      FF00AED5B1001B7C1F00005D0200004E0000004800000A4E0B00628F6200F3F7
      F300FFFFFF00668E6700002E000000000000000000001A9A2500E1F2E200FFFF
      FF009AC69D00136B170006530800064A0700024403000646070056845600F3F7
      F300FFFFFF00668E6700002E000000000000B04F0900D8A36C00FFFFFF00E9CA
      AA00AF531400B769380098330000912D000087200000811C0000FFFF0000AF66
      4700FFFFFF00F3E7DE0087250600831D0000C16A1500E1B68600FFFFFF00EED6
      BC00C06E2600C7835200AD4C0000A74600009E36000099310000A2441F00C080
      6200FFFFFF00F6EDE6009E3C0F009B320000009B0B008BD09000FFFFFF00C6E6
      C80008870F00057B0B00006F060019731D00ABCAAD0033713400003A00006390
      6400FFFFFF00E4ECE4000F4B100000400000009B0B008BD09000FFFFFF00B0D8
      B200107815001167140091B69300165E1700084F090005480600023F03005786
      5800FFFFFF00E4ECE4000F4B100000400000B6550300F0DDC400FFFFFE00C470
      2300C97F3600FFFF00009D350000952B0000A0441800FFFF0000FFFF00007D18
      0100E2C6BB00FFFFFF00A9593800831D0000C6700A00F4E5D100FFFFFE00D18A
      3A00D5975000F5E7D900B14E0000AA430000B45F2B00E3C5B300EBD8CB00952C
      0300E9D3CA00FFFFFF00BB7452009B32000011A41E00D5EFD600FFFFFF004DB9
      5700008F0900008306002B903000D5E9D700FEFFFE0030793300004D00000049
      0000CDDCCE00FFFFFF00508552000040000011A41E00D5EFD600FFFFFF0036A1
      3E001A801E0017771B00FFFFFF00BCD4BD00216A23000A540C00084D08000248
      0300CDDCCE00FFFFFF005085520000400000C56C1C00FBF4EE00F8EAD100BF5A
      0300D0893C00FFFF0000AC4B0B00CE956700FFFF0000FFFF0000FFFF00007E18
      0000C0876D00FFFFFF00BF816300811A0000D2863000FCF7F200FAEFDC00CD75
      0900DBA05600F0DDC900BE661800D9AA8100F8F0E900FFFFFF00ECD7C800962C
      0000CE9E8700FFFFFF00CD997D00992E00002BAD3600F2FAF300DFF3E10018A7
      2300049D12005DB76300E4F2E600FFFFFF00F0F6F0002F823400005A01000049
      00008CAE8E00FFFFFF007DAB7F00005000002BAD3600F2FAF300DFF3E100209A
      28001F8E25001D862200F2F8F300FFFFFF00D1E3D200418343000C5B0E000851
      09008CAE8E00FFFFFF007DAB7F0000500000D48C4100FFFFFF00F4DEBA00C55D
      0000D8933E00FFFF0000C97B3400FFFF0000FFFF0000FFFF0000FFFF00008921
      0000BD7E5C00FFFFFF00C68C6B00841D0000DEA35C00FFFFFF00F7E6C900D278
      0000E1A95800F1DDC300D5944D00FAF3E800FFFFFF00FFFFFF00EDD8C800A037
      0000CC967700FFFFFF00D3A385009C3200004AB95200FFFFFF00CDECD00008A1
      16000FA41B00B9E5BD00FFFFFF00FFFFFF00F1F8F100318D3700006706000055
      00007CA77E00FFFFFF0087B68A00005C00004AB95200FFFFFF00CDECD00026A2
      2D00249C2C0021942800F2F8F200FFFFFF00FFFFFF00C4DCC500126915000F61
      11007CA77E00FFFFFF0087B68A00005C0000DA9A5200FFFFFF00FCF3E600CE6E
      0B00DC973C00FFFF0000B74D0000BA5C1000FFFF0000FFFF0000FFFF00009129
      0000D4A58600FFFFFF00BF7B5700861E0000E3AF6D00FFFFFF00FDF6EC00D988
      1800E4AC5600F7E8D400C7680000C9772000E5C19B00FFFFFF00F1E1D200A741
      0000DEB89D00FFFFFF00CD9472009D33000057BF6000FFFFFE00EEF9EF0028AD
      3400019E0E0011A31C0096D69C00FFFFFF00F5FAF50031963900007409000061
      0000A3C6A500FFFFFF0072AD75000060000057BF6000FFFFFE00EEF9EF002AAB
      320028A7300026A02E00F3F9F300FFFFFF00C6E1C7003B93400017791C00106D
      1300A3C6A500FFFFFF0072AD750000600000D8913D00FCF8F200FFFFFF00DEA0
      4E00D7892800FFFF0000C45E0000BB550000B1490000FFFF0000FFFF0000A749
      0C00F4E9E100FFFFFF00A9501E00861E0000E1A75700FDFAF500FFFFFF00E6B4
      6900E0A03F00F4DEBA00D1790000CA700000C2640000D3924D00E0B68D00BA64
      1A00F7EEE800FFFFFF00BB6B33009D33000047B95000F0F9F100FFFFFF007CCD
      8300009B090009A11600029E0F007CCD8300F3FAF3003AA14200007904001B80
      2100EBF3EB00FFFFFF0039923E000060000047B95000F0F9F100FFFFFF0055BE
      5C002BAD330029AA3100FCFEFD00B2DDB5002C9C3200209026001D8823001B80
      2000EBF3EB00FFFFFF0039923E000060000000000000F2DABB00FFFFFF00FBF4
      E900D5872900CA640500C7630000C6630000BD590000B1440000FFFF0000E3BC
      9600FFFFFF00E5C2A700952E00000000000000000000F5E3CA00FFFFFF00FCF7
      EE00DF9E4100D67E0D00D47D0000D37D0000CC740000C25F0000BF600100EACB
      AB00FFFFFF00EBD0BA00AA4701000000000000000000C6E9C900FFFFFF00F1FA
      F1003FB54900009B0800059F1200009D0A004DBB55001D9F270008880C00AFD6
      B100FFFFFF00BDDEC000037909000000000000000000C6E9C900FFFFFF00D8F0
      D90032B03B002BAD330090D495002DAA330028A32F00259E2C0019911F009DCD
      A000FFFFFF00BDDEC000037909000000000000000000E0A65A00FEFAF600FFFF
      FF00FCF6EA00E0A55800CF761600CA680200CB6C0A00D1843000EDD0AF00FFFF
      FF00F7EDE200AC521700952E00000000000000000000E7B97500FEFBF800FFFF
      FF00FDF8EF00E7B87300DA8F2800D6820700D7861600DC9C4900F1DBC000FFFF
      FF00F9F1E900BE6D2A00AA47010000000000000000006BC67100FAFDFA00FFFF
      FF00F2FAF2007BCD82002BAD33000AA2180011A41C004CB95400C4E6C700FFFF
      FF00EBF6EB002E9C36000379090000000000000000006BC67100FAFDFA00FFFF
      FF00D9F0DA0054BE5C002BAD33002AAD320025AA2E003BB04300B0DDB400FFFF
      FF00EBF6EB002E9C360003790900000000000000000000000000E6B57200FEFB
      F700FFFFFF00FFFFFF00FBF3E300F3DCBA00F7E7CE00FFFFFF00FFFFFF00F3E5
      D300B86422009F38000000000000000000000000000000000000ECC58B00FEFC
      F900FFFFFF00FFFFFF00FCF6EA00F6E4C900F9EDD900FFFFFF00FFFFFF00F6EB
      DD00C87E3800B3520000000000000000000000000000000000009BD8A000FDFE
      FD00FFFFFF00FFFFFF00ECF8ED00CBEBCE00DAF1DD00FFFFFF00FFFFFF00DFF1
      E0003EAD470000890700000000000000000000000000000000009BD8A000FDFE
      FD00FFFFFF00FFFFFF00ECF8ED00CBEBCE00DAF1DD00FFFFFF00FFFFFF00DFF1
      E0003EAD4700008907000000000000000000000000000000000000000000DEA0
      4F00F3DCBD00FEFBF800FFFFFF00FFFFFF00FFFFFF00FAF2E600E1B58600B657
      0D00A53D0000000000000000000000000000000000000000000000000000E6B4
      6A00F6E4CC00FEFCFA00FFFFFF00FFFFFF00FFFFFF00FBF5EC00E8C59D00C672
      1B00B857000000000000000000000000000000000000000000000000000089D2
      8F00DFF3E100FFFFFF00FFFFFF00FFFFFF00FFFFFF00F6FBF600ABDFB00027AC
      32000089070000000000000000000000000000000000000000000000000089D2
      8F00DFF3E100FFFFFF00FFFFFF00FFFFFF00FFFFFF00F6FBF600ABDFB00027AC
      3200008907000000000000000000000000000000000000000000000000000000
      0000D88A2D00D9933A00E0A66200DEA66800D5924C00C5701D00B44D00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000E1A14600E2A95400E7B97C00E6B98200DFA86700D28A3200C46800000000
      0000000000000000000000000000000000000000000000000000000000000000
      000076CB7C0082D08800A3DBA800ABDFAE0090D4950059BF620018A824000000
      0000000000000000000000000000000000000000000000000000000000000000
      000076CB7C0082D08800A3DBA800ABDFAE0090D4950059BF620018A824000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000500000000100010000000000800200000000000000000000
      000000000000000000000000FFFFFF00F81F000000000000E007000000000000
      C003000000000000800100000000000080010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000080010000000000008001000000000000C003000000000000
      E007000000000000F81F000000000000DFFFF81FFFFFF81F9FFFE007FFFFE007
      9FFFC0038007C0039FFF8001800780018FBF8001800780018F9F000080070000
      878F000080070000C007000080070000C003000080030000E001000080010000
      F003000080030000FC078001C0078001FF8F8001FF838001FF9FC003FF11C003
      FFBFE007FFBBE007FFFFF81FFFFFF81FF81FF81FF81FC001E007E007E007C001
      C003C003C003C001800180018001C001800180018001C001000000000000C001
      000000000000C001000000000000C001000000000000C001000000000000C001
      000000000000C001800180018001C001800180018001C001C003C003C003C003
      E007E007E007C007F81FF81FF81FC00FF81FF81FF81FF81FE007E007E007E007
      C003C003C003C003800180018001800180018001800180010000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000080018001800180018001800180018001C003C003C003C003
      E007E007E007E007F01FF01FF81FF81FF81FF81FF81FF81FE007E007E007E007
      C003C003C003C003800180018001800180018001800180010000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000080018001800180018001800180018001C003C003C003C003
      E007E007E007E007F01FF01FF01FF01F00000000000000000000000000000000
      000000000000}
  end
  object alCapitulos: TActionList
    Images = imagens
    Left = 84
    Top = 184
    object actPrimeiro: TAction
      Caption = 'actPrimeiro'
      Hint = 'Move para o primeiro registro'
      ImageIndex = 0
      OnExecute = actPrimeiroExecute
    end
    object actPagAnt: TAction
      Caption = 'actPagAnt'
      Hint = 'P'#225'gina anterior'
      ImageIndex = 1
      OnExecute = actPagAntExecute
    end
    object actAnterior: TAction
      Caption = 'actAnterior'
      Hint = 'Move ao registro anterior'
      ImageIndex = 2
      OnExecute = actAnteriorExecute
    end
    object actProximo: TAction
      Caption = 'actProximo'
      Hint = 'Move para o pr'#243'ximo registro'
      ImageIndex = 3
      OnExecute = actProximoExecute
    end
    object actPagPost: TAction
      Caption = 'actPagPost'
      Hint = 'Pr'#243'xima P'#225'gina'
      ImageIndex = 4
      ShortCut = 16449
      OnExecute = actPagPostExecute
    end
    object actUltimo: TAction
      Caption = 'actUltimo'
      Hint = 'Move para o '#250'ltimo registro'
      ImageIndex = 5
      OnExecute = actUltimoExecute
    end
    object actInserir: TAction
      Caption = 'actInserir'
      Hint = 'Insere um novo registro'
      ImageIndex = 6
      OnExecute = actInserirExecute
    end
    object actDeletar: TAction
      Caption = 'actDeletar'
      Hint = 'Apaga o registro'
      ImageIndex = 7
      OnExecute = actDeletarExecute
    end
    object actEditar: TAction
      Caption = 'actEditar'
      Hint = 'Edita o registro corrente'
      ImageIndex = 8
      OnExecute = actEditarExecute
    end
    object actGravar: TAction
      Caption = 'actGravar'
      Hint = 'Grava as altera'#231#245'es no registro corrente'
      ImageIndex = 9
      OnExecute = actGravarExecute
    end
    object actCancelar: TAction
      Caption = 'actCancelar'
      Hint = 'Cancela as altera'#231#245'es'
      ImageIndex = 10
      OnExecute = actCancelarExecute
    end
    object actAtualizar: TAction
      Caption = 'actAtualizar'
      Hint = 'Atualiza dados dos registros'
      ImageIndex = 11
      OnExecute = actAtualizarExecute
    end
    object actProcCapitulos: TAction
      Caption = 'actProcCapitulos'
      Hint = 'Procura cap'#237'tulos'
      ImageIndex = 12
      OnExecute = actProcCapitulosExecute
    end
    object actHelp: TAction
      Caption = 'actHelp'
      Hint = 'Ajuda sobre CID 10'
      ImageIndex = 13
      OnExecute = actHelpExecute
    end
    object actFechar: TAction
      Caption = 'actFechar'
      Hint = 'Fecha a janela de cadastro'
      ImageIndex = 14
      OnExecute = actFecharExecute
    end
  end
  object dsGrupos: TDataSource
    DataSet = dmCid10.qyGrupos
    OnDataChange = dsGruposDataChange
    Left = 44
    Top = 216
  end
  object alGrupos: TActionList
    Images = imagens
    Left = 84
    Top = 216
    object actPrimeiroG: TAction
      Caption = 'actPrimeiroG'
      Hint = 'Move para o primeiro registro'
      ImageIndex = 0
      OnExecute = actPrimeiroGExecute
    end
    object actVoltaG: TAction
      Caption = 'actVoltaG'
      Hint = 'P'#225'gina anterior'
      ImageIndex = 1
      OnExecute = actVoltaGExecute
    end
    object actAnteriorG: TAction
      Caption = 'actAnteriorG'
      Hint = 'Move ao registro anterior'
      ImageIndex = 2
      OnExecute = actAnteriorGExecute
    end
    object actProximoG: TAction
      Caption = 'actProximoG'
      Hint = 'Move para o pr'#243'ximo registro'
      ImageIndex = 3
      OnExecute = actProximoGExecute
    end
    object actAvancaG: TAction
      Caption = 'actAvancaG'
      Hint = 'Pr'#243'xima P'#225'gina'
      ImageIndex = 4
      ShortCut = 16449
      OnExecute = actAvancaGExecute
    end
    object actUltimoG: TAction
      Caption = 'actUltimoG'
      Hint = 'Move para o '#250'ltimo registro'
      ImageIndex = 5
      OnExecute = actUltimoGExecute
    end
    object actInsereG: TAction
      Caption = 'actInsereG'
      Hint = 'Insere um novo registro'
      ImageIndex = 6
      OnExecute = actInsereGExecute
    end
    object actDeletaG: TAction
      Caption = 'actDeletaG'
      Hint = 'Apaga o registro'
      ImageIndex = 7
      OnExecute = actDeletaGExecute
    end
    object actEditaG: TAction
      Caption = 'actEditaG'
      Hint = 'Edita o registro corrente'
      ImageIndex = 8
      OnExecute = actEditaGExecute
    end
    object actGravaG: TAction
      Caption = 'actGravaG'
      Hint = 'Grava as altera'#231#245'es no registro corrente'
      ImageIndex = 9
      OnExecute = actGravaGExecute
    end
    object actCancelaG: TAction
      Caption = 'actCancelaG'
      Hint = 'Cancela as altera'#231#245'es'
      ImageIndex = 10
      OnExecute = actCancelaGExecute
    end
    object actatualizaG: TAction
      Caption = 'actAtualizar'
      Hint = 'Atualiza dados dos registros'
      ImageIndex = 11
      OnExecute = actatualizaGExecute
    end
    object actProcuraG: TAction
      Caption = 'actProcuraG'
      Hint = 'Procura cap'#237'tulos'
      ImageIndex = 12
      OnExecute = actProcuraGExecute
    end
    object actAjudaG: TAction
      Caption = 'actHelp'
      Hint = 'Ajuda sobre CID 10'
      ImageIndex = 13
      OnExecute = actAjudaGExecute
    end
    object actFecharG: TAction
      Caption = 'actFecharG'
      Hint = 'Fecha a janela de cadastro'
      ImageIndex = 14
      OnExecute = actFecharGExecute
    end
  end
  object dsCategorias: TDataSource
    DataSet = dmCid10.qyCategorias
    OnDataChange = dsCategoriasDataChange
    Left = 44
    Top = 248
  end
  object dsSubCategorias: TDataSource
    DataSet = dmCid10.qySubCategorias
    OnDataChange = dsSubCategoriasDataChange
    Left = 44
    Top = 280
  end
  object actCategorias: TActionList
    Images = imagens
    Left = 84
    Top = 248
    object actPrimeiroCt: TAction
      Caption = 'actPrimeiroCt'
      Hint = 'Move para o primeiro registro'
      ImageIndex = 0
      OnExecute = actPrimeiroCtExecute
    end
    object actVoltaCt: TAction
      Caption = 'actVoltaCt'
      Hint = 'P'#225'gina anterior'
      ImageIndex = 1
      OnExecute = actVoltaCtExecute
    end
    object actAnteriorCt: TAction
      Caption = 'actAnteriorCt'
      Hint = 'Move ao registro anterior'
      ImageIndex = 2
      OnExecute = actAnteriorCtExecute
    end
    object actProximoCt: TAction
      Caption = 'actProximoCt'
      Hint = 'Move para o pr'#243'ximo registro'
      ImageIndex = 3
      OnExecute = actProximoCtExecute
    end
    object actAvancaCt: TAction
      Caption = 'actAvancaCt'
      Hint = 'Pr'#243'xima P'#225'gina'
      ImageIndex = 4
      ShortCut = 16449
      OnExecute = actAvancaCtExecute
    end
    object actUltimoCt: TAction
      Caption = 'actUltimoCt'
      Hint = 'Move para o '#250'ltimo registro'
      ImageIndex = 5
      OnExecute = actUltimoCtExecute
    end
    object actInsereCt: TAction
      Caption = 'actInsereCt'
      Hint = 'Insere um novo registro'
      ImageIndex = 6
      OnExecute = actInsereCtExecute
    end
    object actDeletaCt: TAction
      Caption = 'actDeletaCt'
      Hint = 'Apaga o registro'
      ImageIndex = 7
      OnExecute = actDeletaCtExecute
    end
    object actEditaCt: TAction
      Caption = 'actEditaCt'
      Hint = 'Edita o registro corrente'
      ImageIndex = 8
      OnExecute = actEditaCtExecute
    end
    object actGravaCt: TAction
      Caption = 'actGravaCt'
      Hint = 'Grava as altera'#231#245'es no registro corrente'
      ImageIndex = 9
      OnExecute = actGravaCtExecute
    end
    object actCancelaCt: TAction
      Caption = 'actCancelaCt'
      Hint = 'Cancela as altera'#231#245'es'
      ImageIndex = 10
      OnExecute = actCancelaCtExecute
    end
    object actAtualizaCt: TAction
      Caption = 'actAtualizarCt'
      Hint = 'Atualiza dados dos registros'
      ImageIndex = 11
      OnExecute = actAtualizaCtExecute
    end
    object actProcCat: TAction
      ImageIndex = 12
      OnExecute = actProcCatExecute
    end
  end
  object actSubCategorias: TActionList
    Images = imagens
    Left = 84
    Top = 280
    object actPrimeiroSub: TAction
      Caption = 'actPrimeiroSub'
      Hint = 'Move para o primeiro registro'
      ImageIndex = 0
      OnExecute = actPrimeiroSubExecute
    end
    object actVoltaSub: TAction
      Caption = 'actVoltaSub'
      Hint = 'P'#225'gina anterior'
      ImageIndex = 1
      OnExecute = actVoltaSubExecute
    end
    object actAnteriorSub: TAction
      Caption = 'actAnteriorSub'
      Hint = 'Move ao registro anterior'
      ImageIndex = 2
      OnExecute = actAnteriorSubExecute
    end
    object actProximoSub: TAction
      Caption = 'actProximoSub'
      Hint = 'Move para o pr'#243'ximo registro'
      ImageIndex = 3
      OnExecute = actProximoSubExecute
    end
    object actAvancaSub: TAction
      Caption = 'actAvancaCt'
      Hint = 'Pr'#243'xima P'#225'gina'
      ImageIndex = 4
      ShortCut = 16449
      OnExecute = actAvancaSubExecute
    end
    object actUltimoSub: TAction
      Caption = 'actUltimoCt'
      Hint = 'Move para o '#250'ltimo registro'
      ImageIndex = 5
      OnExecute = actUltimoSubExecute
    end
    object actInsereSub: TAction
      Caption = 'actInsereCt'
      Hint = 'Insere um novo registro'
      ImageIndex = 6
      OnExecute = actInsereSubExecute
    end
    object actDeletaSub: TAction
      Caption = 'actDeletaCt'
      Hint = 'Apaga o registro'
      ImageIndex = 7
      OnExecute = actDeletaSubExecute
    end
    object actEditaSub: TAction
      Caption = 'actEditaCt'
      Hint = 'Edita o registro corrente'
      ImageIndex = 8
      OnExecute = actEditaSubExecute
    end
    object actGravaSub: TAction
      Caption = 'actGravaCt'
      Hint = 'Grava as altera'#231#245'es no registro corrente'
      ImageIndex = 9
      OnExecute = actGravaSubExecute
    end
    object actCancelaSub: TAction
      Caption = 'actCancelaCt'
      Hint = 'Cancela as altera'#231#245'es'
      ImageIndex = 10
      OnExecute = actCancelaSubExecute
    end
    object actAtualizarSub: TAction
      Caption = 'actAtualizarCt'
      Hint = 'Atualiza dados dos registros'
      ImageIndex = 11
      OnExecute = actAtualizarSubExecute
    end
    object actProcSub: TAction
      ImageIndex = 12
      OnExecute = actProcSubExecute
    end
  end
end
