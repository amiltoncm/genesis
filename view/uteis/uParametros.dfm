inherited frmParametros: TfrmParametros
  Caption = 'Par'#226'metros'
  ClientHeight = 458
  ClientWidth = 560
  ExplicitWidth = 566
  ExplicitHeight = 490
  PixelsPerInch = 96
  TextHeight = 13
  inherited btFechar: TBitBtn
    Left = 447
    Top = 425
    TabOrder = 1
    ExplicitLeft = 447
    ExplicitTop = 425
  end
  object btGravar: TBitBtn [1]
    Left = 336
    Top = 425
    Width = 105
    Height = 25
    Hint = 'Grava as altera'#231#245'es feitas nas configura'#231#245'es'
    CustomHint = BalloonHint1
    ParentCustomHint = False
    Anchors = [akTop, akRight]
    Caption = 'Gravar'
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
      FF00FFFF00FFFF00FF0955A10857A60557AA0655A70954A00954A0FF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0872DD0362C3006CDB0877E711
      7DEA0877E70069DD005DC70654A50654A5FF00FFFF00FFFF00FFFF00FFFF00FF
      0F6BC90872DD3E99F591C4F9D6E9FDEEF7FFE4F1FFB0D4FB59A5F50570E5035A
      B70B5095FF00FFFF00FFFF00FF1278E0127CE870B4F9F6FAFEFFFFFFEEF6FDD3
      E6FBE2EEFDFFFFFFFFFFFFAED2FA0E78ED025AB60653A2FF00FFFF00FF1278E0
      6DB2F9FEFEFFF4F9FE77B6F63391F0B5D5F91B7FEA4693EEC9E0FAFFFFFFB0D5
      FA0970E60653A2FF00FF0B70D53695F4E8F3FEFFFFFF4FA3F61F88F2D4E7FCFF
      FFFF489BEF0065E60E74E8C9E1FAFFFFFF58A5F5005EC70858AB137AE371B5FB
      FFFFFFB2D7FC469FF7DEEEFDFDFEFEE0EEFDA1CCF80173E9006AE74294EDFFFF
      FFB3D7FB016BDE0858AB1F85ECA2CFFDFFFFFF71B7FDACD4FDFAFCFF66AFF83F
      9AF5E2EFFD2D8EF00075EB0575E9E2EEFCE6F3FF0E7BE9065AB02F8FF1B7DAFD
      FFFFFF6BB4FF3C9DFE4FA5FB1D8AF81484F5A0CDFB84BDF8067AEF0374EBD4E8
      FBF0F8FF1A82EC055CB53693F0B8DAFEFFFFFF8EC6FF2391FF2E95FE2B93FC21
      8CF92D92F79ACAFB1D86F21D86F0F3F8FED9EBFE117DE9095CB22689EDAFD6FD
      FFFFFFE1F0FF3499FF2F96FF3399FF2E94FD218CF950A4F9419BF77DBBF8FFFF
      FF99C9FA0773E10958ABFF00FF3994F0F1F8FFFFFFFFADD6FF3499FF2592FF28
      93FF238FFC1788FA6FB4FAF4FAFFF5FAFE49A0F7076ACEFF00FFFF00FF3994F0
      CDE6FFF6FAFFFFFFFFE0EFFF8DC6FF6EB6FE79BBFFB6DAFEFFFFFFFFFFFF78B9
      F9137BE6076ACEFF00FFFF00FFFF00FF64ACF6D4EAFFF9FCFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFE7F3FE77B8FA1D85ED0D6DD0FF00FFFF00FFFF00FFFF00FF
      FF00FF459AF0A7D2FCD8ECFFE2F1FFE4F1FED1E7FE9DCDFD4DA2F7177FE8177F
      E8FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF3B94F061ABF665
      ADF7489EF42286EC127AE4FF00FFFF00FFFF00FFFF00FFFF00FF}
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    OnClick = btGravarClick
  end
  object PageControl1: TPageControl [2]
    Left = 0
    Top = 0
    Width = 561
    Height = 419
    CustomHint = BalloonHint1
    ActivePage = tsAtualizacao
    TabOrder = 2
    object tsAtualizacao: TTabSheet
      CustomHint = BalloonHint1
      Caption = 'Atualizacao'
      object Label1: TLabel
        Left = 3
        Top = 8
        Width = 148
        Height = 13
        CustomHint = BalloonHint1
        Caption = 'Endere'#231'o da atualiza'#231#227'o (web)'
      end
      object DBGrid1: TDBGrid
        Left = 3
        Top = 27
        Width = 545
        Height = 361
        CustomHint = BalloonHint1
        TabStop = False
        DataSource = dsModulos
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'mod_nome'
            ReadOnly = True
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'mod_versaoinst'
            ReadOnly = True
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'mod_local'
            Visible = True
          end>
      end
    end
    object tsLogin: TTabSheet
      CustomHint = BalloonHint1
      Caption = 'Login'
      ImageIndex = 1
      object Label3: TLabel
        Left = 8
        Top = 8
        Width = 143
        Height = 13
        CustomHint = BalloonHint1
        Caption = 'Busca no login (m'#225'quina local)'
      end
      object cbBuscaLogin: TComboBox
        Left = 8
        Top = 24
        Width = 145
        Height = 21
        Hint = 
          'Forma de busca no login'#13#10'windows = Busca usu'#225'rio logado no windo' +
          'ws'#13#10'ultimo = Busca o '#250'ltimo usu'#225'rio logado na m'#225'quina'
        CustomHint = BalloonHint1
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        Items.Strings = (
          'ultimo'
          'windows')
      end
    end
    object tsTISS: TTabSheet
      CustomHint = BalloonHint1
      Caption = 'TISS'
      ImageIndex = 2
      object Label4: TLabel
        Left = 8
        Top = 8
        Width = 229
        Height = 13
        CustomHint = BalloonHint1
        Caption = 'Diret'#243'rio para salvar guias TISS (m'#225'quina local) '
      end
      object Label5: TLabel
        Left = 8
        Top = 48
        Width = 50
        Height = 13
        CustomHint = BalloonHint1
        Caption = #218'ltimo lote'
      end
      object Label6: TLabel
        Left = 136
        Top = 48
        Width = 82
        Height = 13
        CustomHint = BalloonHint1
        Caption = #218'ltimo sequencial'
      end
      object Label7: TLabel
        Left = 264
        Top = 48
        Width = 58
        Height = 13
        CustomHint = BalloonHint1
        Caption = 'Vers'#227'o TISS'
      end
      object Label8: TLabel
        Left = 13
        Top = 91
        Width = 68
        Height = 13
        CustomHint = BalloonHint1
        Caption = 'Tipo de tabela'
      end
      object SpeedButton2: TSpeedButton
        Left = 448
        Top = 23
        Width = 23
        Height = 21
        Hint = 'Abrir local da pasta'
        CustomHint = BalloonHint1
        Flat = True
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FF00FF078DBE
          078DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE078D
          BEFF00FFFF00FFFF00FF078DBE25A1D171C6E884D7FA66CDF965CDF965CDF965
          CDF965CDF865CDF965CDF866CEF93AADD81999C9FF00FFFF00FF078DBE4CBCE7
          39A8D1A0E2FB6FD4FA6FD4F96ED4FA6FD4F96FD4FA6FD4FA6FD4FA6ED4F93EB1
          D9C9F0F3078DBEFF00FF078DBE72D6FA078DBEAEE9FC79DCFB79DCFB79DCFB79
          DCFB79DCFB7ADCFB79DCFA79DCFA44B5D9C9F0F3078DBEFF00FF078DBE79DDFB
          1899C79ADFF392E7FC84E4FB83E4FC83E4FC84E4FC83E4FC83E4FB84E5FC48B9
          DAC9F0F31496C4FF00FF078DBE82E3FC43B7DC65C2E0ABF0FC8DEBFC8DEBFC8D
          EBFD8DEBFD8DEBFC8DEBFD8DEBFC4CBBDAC9F0F3C9F0F3078DBE078DBE8AEAFC
          77DCF3219CC7FEFFFFC8F7FDC9F7FDC9F7FDC9F7FEC8F7FEC9F7FDC8F7FE9BD5
          E6EAFEFED2F3F8078DBE078DBE93F0FE93F0FD1697C5078DBE078DBE078DBE07
          8DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE9BF5FE
          9AF6FE9AF6FE9BF5FD9BF6FE9AF6FE9BF5FE9AF6FD9BF5FE9AF6FE9AF6FE0989
          BAFF00FFFF00FFFF00FF078DBEFEFEFEA0FBFFA0FBFEA0FBFEA1FAFEA1FBFEA0
          FAFEA1FBFEA1FBFFA0FBFFA1FBFF0989BAFF00FFFF00FFFF00FFFF00FF078DBE
          FEFEFEA5FEFFA5FEFFA5FEFF078DBE078DBE078DBE078DBE078DBE078DBEFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FF078DBE078DBE078DBE078DBEFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
        OnClick = SpeedButton2Click
      end
      object dbLote: TDBEdit
        Left = 8
        Top = 64
        Width = 121
        Height = 21
        CustomHint = BalloonHint1
        DataField = 'tiss_lote'
        DataSource = dsTISS
        TabOrder = 0
      end
      object dbSequencial: TDBEdit
        Left = 136
        Top = 64
        Width = 121
        Height = 21
        CustomHint = BalloonHint1
        DataField = 'tiss_sequencial'
        DataSource = dsTISS
        TabOrder = 1
      end
      object cbVersaoTISS: TwwDBComboBox
        Left = 264
        Top = 64
        Width = 207
        Height = 21
        Hint = 'Vers'#227'o TISS'
        CustomHint = BalloonHint1
        ShowButton = True
        Style = csDropDown
        MapList = True
        AllowClearKey = False
        DataField = 'tiss_versaopadrao'
        DataSource = dsTISS
        DropDownCount = 8
        ButtonEffects.Transparent = True
        ButtonEffects.Flat = True
        ItemHeight = 0
        Items.Strings = (
          'tissV2_01_03'#9'2.01.03'
          'tissV2_02_01'#9'2.02.01'
          'tissV2_02_02'#9'2.02.02'
          'tissV2_02_03'#9'2.02.03'
          'tissV3_02_00'#9'3.02.00')
        Sorted = False
        TabOrder = 2
        UnboundDataType = wwDefault
      end
      object wwDBLookupCombo1: TwwDBLookupCombo
        Left = 8
        Top = 108
        Width = 73
        Height = 21
        Hint = 'Selecione o tipo de tabela'
        CustomHint = BalloonHint1
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'tab_id'#9'10'#9'ID'#9'F'
          'tab_descricao'#9'80'#9'Descricao da tabela'#9'F')
        DataField = 'tab_id'
        DataSource = dsTISS
        LookupTable = dmLookups.lkProcTpTabela
        LookupField = 'tab_id'
        Options = [loColLines, loRowLines, loTitles]
        ButtonEffects.Transparent = True
        ButtonEffects.Flat = True
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        AutoDropDown = False
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        ShowMatchText = True
      end
      object dbTpTabela: TDBEdit
        Left = 80
        Top = 108
        Width = 391
        Height = 21
        Hint = 'Tipo de tabela selecionada'
        CustomHint = BalloonHint1
        DataField = 'tab_descricao'
        DataSource = dsTISS
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
      end
      object edDirTISS: TEdit
        Left = 8
        Top = 23
        Width = 441
        Height = 21
        CustomHint = BalloonHint1
        TabStop = False
        ReadOnly = True
        TabOrder = 5
        Text = 'edDirTISS'
      end
    end
    object tsDiretorios: TTabSheet
      CustomHint = BalloonHint1
      Caption = 'Diretorios'
      ImageIndex = 4
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 553
        Height = 137
        CustomHint = BalloonHint1
        Align = alTop
        TabOrder = 0
        object Label9: TLabel
          Left = 8
          Top = 8
          Width = 78
          Height = 13
          CustomHint = BalloonHint1
          Caption = 'Diret'#243'rio de logs'
        end
        object Label10: TLabel
          Left = 8
          Top = 51
          Width = 65
          Height = 13
          CustomHint = BalloonHint1
          Caption = 'Logs de erros'
        end
        object Label11: TLabel
          Left = 8
          Top = 94
          Width = 81
          Height = 13
          CustomHint = BalloonHint1
          Caption = 'Logs de conex'#227'o'
        end
        object edDirLogs: TEdit
          Left = 8
          Top = 24
          Width = 520
          Height = 21
          CustomHint = BalloonHint1
          TabOrder = 0
          Text = 'edDirLogs'
        end
        object edLogError: TEdit
          Left = 8
          Top = 67
          Width = 520
          Height = 21
          CustomHint = BalloonHint1
          TabOrder = 1
          Text = 'edLogError'
        end
        object edLogConection: TEdit
          Left = 8
          Top = 110
          Width = 520
          Height = 21
          CustomHint = BalloonHint1
          TabOrder = 2
          Text = 'edLogConection'
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 137
        Width = 553
        Height = 192
        CustomHint = BalloonHint1
        Align = alTop
        TabOrder = 1
        object Label12: TLabel
          Left = 8
          Top = 51
          Width = 72
          Height = 13
          CustomHint = BalloonHint1
          Caption = 'Plano de fundo'
        end
        object Label13: TLabel
          Left = 8
          Top = 95
          Width = 103
          Height = 13
          CustomHint = BalloonHint1
          Caption = 'Logomarca (relat'#243'rio)'
        end
        object Label14: TLabel
          Left = 8
          Top = 141
          Width = 60
          Height = 13
          CustomHint = BalloonHint1
          Caption = 'Logo rodap'#233
        end
        object Label24: TLabel
          Left = 8
          Top = 6
          Width = 152
          Height = 13
          CustomHint = BalloonHint1
          Caption = 'Diret'#243'rio de imagens do sistema'
        end
        object edLogoFundo: TEdit
          Left = 8
          Top = 70
          Width = 520
          Height = 21
          CustomHint = BalloonHint1
          TabOrder = 0
          Text = 'edLogoFundo'
        end
        object edLogoRel: TEdit
          Left = 8
          Top = 114
          Width = 520
          Height = 21
          CustomHint = BalloonHint1
          TabOrder = 1
          Text = 'edLogoRel'
        end
        object edLogoRodape: TEdit
          Left = 8
          Top = 160
          Width = 520
          Height = 21
          CustomHint = BalloonHint1
          TabOrder = 2
          Text = 'edLogoRodape'
        end
        object edDirImg: TEdit
          Left = 8
          Top = 25
          Width = 520
          Height = 21
          Hint = 'Diret'#243'rio das imagens'
          CustomHint = BalloonHint1
          TabStop = False
          ParentShowHint = False
          ReadOnly = True
          ShowHint = False
          TabOrder = 3
          Text = 'edDirImg'
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 329
        Width = 553
        Height = 62
        CustomHint = BalloonHint1
        Align = alClient
        TabOrder = 2
        object Label2: TLabel
          Left = 8
          Top = 6
          Width = 171
          Height = 13
          CustomHint = BalloonHint1
          Caption = 'Diret'#243'rio tempor'#225'rio (m'#225'quina local)'
        end
        object SpeedButton1: TSpeedButton
          Left = 525
          Top = 23
          Width = 23
          Height = 21
          Hint = 'Abrir local da pasta'
          CustomHint = BalloonHint1
          Flat = True
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B00000000000000000000FF00FF078DBE
            078DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE078D
            BEFF00FFFF00FFFF00FF078DBE25A1D171C6E884D7FA66CDF965CDF965CDF965
            CDF965CDF865CDF965CDF866CEF93AADD81999C9FF00FFFF00FF078DBE4CBCE7
            39A8D1A0E2FB6FD4FA6FD4F96ED4FA6FD4F96FD4FA6FD4FA6FD4FA6ED4F93EB1
            D9C9F0F3078DBEFF00FF078DBE72D6FA078DBEAEE9FC79DCFB79DCFB79DCFB79
            DCFB79DCFB7ADCFB79DCFA79DCFA44B5D9C9F0F3078DBEFF00FF078DBE79DDFB
            1899C79ADFF392E7FC84E4FB83E4FC83E4FC84E4FC83E4FC83E4FB84E5FC48B9
            DAC9F0F31496C4FF00FF078DBE82E3FC43B7DC65C2E0ABF0FC8DEBFC8DEBFC8D
            EBFD8DEBFD8DEBFC8DEBFD8DEBFC4CBBDAC9F0F3C9F0F3078DBE078DBE8AEAFC
            77DCF3219CC7FEFFFFC8F7FDC9F7FDC9F7FDC9F7FEC8F7FEC9F7FDC8F7FE9BD5
            E6EAFEFED2F3F8078DBE078DBE93F0FE93F0FD1697C5078DBE078DBE078DBE07
            8DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE078DBE9BF5FE
            9AF6FE9AF6FE9BF5FD9BF6FE9AF6FE9BF5FE9AF6FD9BF5FE9AF6FE9AF6FE0989
            BAFF00FFFF00FFFF00FF078DBEFEFEFEA0FBFFA0FBFEA0FBFEA1FAFEA1FBFEA0
            FAFEA1FBFEA1FBFFA0FBFFA1FBFF0989BAFF00FFFF00FFFF00FFFF00FF078DBE
            FEFEFEA5FEFFA5FEFFA5FEFF078DBE078DBE078DBE078DBE078DBE078DBEFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FF078DBE078DBE078DBE078DBEFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          OnClick = SpeedButton1Click
        end
        object edTemp: TEdit
          Left = 8
          Top = 25
          Width = 520
          Height = 21
          CustomHint = BalloonHint1
          TabStop = False
          ReadOnly = True
          TabOrder = 0
          Text = 'edTemp'
        end
      end
    end
    object tsBackup: TTabSheet
      CustomHint = BalloonHint1
      Caption = 'Backup'
      ImageIndex = 5
      object Label23: TLabel
        Left = 8
        Top = 8
        Width = 108
        Height = 13
        CustomHint = BalloonHint1
        Caption = 'Ferramenta de backup'
      end
      object edTools: TEdit
        Left = 8
        Top = 23
        Width = 520
        Height = 21
        CustomHint = BalloonHint1
        TabStop = False
        ReadOnly = True
        TabOrder = 0
        Text = 'edTools'
      end
    end
    object tsLogs: TTabSheet
      CustomHint = BalloonHint1
      Caption = 'Logs'
      ImageIndex = 3
      object PageControl: TPageControl
        Left = 0
        Top = 0
        Width = 553
        Height = 391
        CustomHint = BalloonHint1
        ActivePage = TabSheet1
        Align = alClient
        TabOrder = 0
        object TabSheet1: TTabSheet
          CustomHint = BalloonHint1
          Caption = 'Logs login'
          object memoLog: TMemo
            Left = 0
            Top = 0
            Width = 545
            Height = 363
            Hint = 'Log dos logins'
            CustomHint = BalloonHint1
            TabStop = False
            Align = alClient
            Color = clInfoBk
            Lines.Strings = (
              'memoLog')
            ReadOnly = True
            ScrollBars = ssVertical
            TabOrder = 0
          end
        end
        object tsLogError: TTabSheet
          CustomHint = BalloonHint1
          Caption = 'Logs de erro'
          ImageIndex = 1
          object memoErro: TMemo
            Left = 0
            Top = 0
            Width = 545
            Height = 363
            Hint = 'Log dos erros'
            CustomHint = BalloonHint1
            TabStop = False
            Align = alClient
            Color = clSilver
            Lines.Strings = (
              'memoLog')
            ReadOnly = True
            ScrollBars = ssVertical
            TabOrder = 0
          end
        end
      end
    end
    object tsDebugMem: TTabSheet
      CustomHint = BalloonHint1
      Caption = 'Vari'#225'veis'
      ImageIndex = 6
      object StringGrid1: TStringGrid
        Left = 3
        Top = 3
        Width = 547
        Height = 229
        CustomHint = BalloonHint1
        ColCount = 2
        DrawingStyle = gdsClassic
        RowCount = 9
        FixedRows = 0
        Options = [goFixedVertLine, goFixedHorzLine, goRowSizing, goColSizing, goRowSelect]
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
  end
  inherited BalloonHint1: TBalloonHint
    Left = 528
    Top = 432
  end
  object sdTemp: TJvSelectDirectory
    Left = 224
    Top = 416
  end
  object sdTISS: TJvSelectDirectory
    Left = 288
    Top = 416
  end
  object dsConfig: TDataSource
    DataSet = dmConfig.qyConfig
    Left = 20
    Top = 416
  end
  object dsTISS: TDataSource
    DataSet = dmConfig.qyTISS
    Left = 84
    Top = 416
  end
  object dsTpTabela: TDataSource
    DataSet = dmLookups.lkProcTpTabela
    Left = 156
    Top = 416
  end
  object dsModulos: TDataSource
    DataSet = dmConfig.qyModulos
    Left = 368
    Top = 352
  end
end
