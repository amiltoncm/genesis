inherited frmConsDivExames: TfrmConsDivExames
  Caption = 'Consulta Exames'
  ClientHeight = 552
  ClientWidth = 1013
  Menu = MainMenu1
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  ExplicitWidth = 1019
  ExplicitHeight = 577
  PixelsPerInch = 96
  TextHeight = 13
  object pgPrincipal: TPageControl [0]
    Left = 0
    Top = 0
    Width = 1013
    Height = 552
    CustomHint = BalloonHint1
    ActivePage = tsTiss
    Align = alClient
    TabOrder = 1
    OnChange = pgPrincipalChange
    object tsPesquisa: TTabSheet
      CustomHint = BalloonHint1
      Caption = 'Pesquisa'
      object Label28: TLabel
        Left = 0
        Top = 504
        Width = 152
        Height = 13
        CustomHint = BalloonHint1
        Caption = 'Clique F5 para executar o filtro.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsItalic]
        ParentFont = False
      end
      object lbExamesFilt: TLabel
        Left = 3
        Top = 487
        Width = 59
        Height = 13
        CustomHint = BalloonHint1
        Caption = 'lbExamesFilt'
      end
      object Panel1: TPanel
        Left = -1
        Top = 1
        Width = 1008
        Height = 144
        CustomHint = BalloonHint1
        BevelInner = bvLowered
        TabOrder = 0
        object Label3: TLabel
          Left = 320
          Top = 8
          Width = 70
          Height = 13
          CustomHint = BalloonHint1
          Caption = 'Tipo de Exame'
        end
        object Label4: TLabel
          Left = 664
          Top = 8
          Width = 45
          Height = 13
          CustomHint = BalloonHint1
          Caption = 'Conv'#234'nio'
        end
        object Label8: TLabel
          Left = 543
          Top = 53
          Width = 33
          Height = 13
          CustomHint = BalloonHint1
          Caption = 'M'#233'dico'
        end
        object Label2: TLabel
          Left = 8
          Top = 8
          Width = 49
          Height = 13
          CustomHint = BalloonHint1
          Caption = 'Data in'#237'cio'
        end
        object Label1: TLabel
          Left = 176
          Top = 8
          Width = 46
          Height = 13
          CustomHint = BalloonHint1
          Caption = 'Data final'
        end
        object Label6: TLabel
          Left = 248
          Top = 98
          Width = 47
          Height = 13
          CustomHint = BalloonHint1
          Caption = 'Organizar'
        end
        object Label7: TLabel
          Left = 376
          Top = 98
          Width = 32
          Height = 13
          CustomHint = BalloonHint1
          Caption = 'Ordem'
        end
        object Label5: TLabel
          Left = 10
          Top = 53
          Width = 66
          Height = 13
          CustomHint = BalloonHint1
          Caption = 'Tipo de busca'
        end
        object Label27: TLabel
          Left = 160
          Top = 53
          Width = 41
          Height = 13
          CustomHint = BalloonHint1
          Caption = 'Paciente'
        end
        object Label31: TLabel
          Left = 498
          Top = 98
          Width = 97
          Height = 13
          CustomHint = BalloonHint1
          Caption = 'N'#250'mero de registros'
        end
        object Label32: TLabel
          Left = 932
          Top = 53
          Width = 46
          Height = 13
          CustomHint = BalloonHint1
          Caption = 'ID Exame'
        end
        object Label9: TLabel
          Left = 8
          Top = 98
          Width = 34
          Height = 13
          CustomHint = BalloonHint1
          Caption = 'Origem'
        end
        object cbTpExame: TwwDBLookupCombo
          Left = 320
          Top = 24
          Width = 337
          Height = 21
          Hint = 'Tipo de exame solicitado'
          CustomHint = BalloonHint1
          DropDownAlignment = taLeftJustify
          LookupTable = dmLookups.lkProcExamesTp
          LookupField = 'etp_tipo'
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
        end
        object cbConvenio: TwwDBLookupCombo
          Left = 664
          Top = 24
          Width = 338
          Height = 21
          Hint = 'Conv'#234'nio do paciente'
          CustomHint = BalloonHint1
          CharCase = ecUpperCase
          DropDownAlignment = taLeftJustify
          LookupTable = dmLookups.lkProcConvenios
          LookupField = 'cov_descricao'
          Options = [loColLines, loRowLines, loTitles]
          ButtonEffects.Transparent = True
          ButtonEffects.Flat = True
          ParentShowHint = False
          ShowHint = False
          TabOrder = 3
          AutoDropDown = True
          ShowButton = True
          PreciseEditRegion = False
          AllowClearKey = False
          ShowMatchText = True
        end
        object cbPaciente: TwwDBLookupCombo
          Left = 160
          Top = 69
          Width = 376
          Height = 21
          Hint = 'Nome do Paciente'
          CustomHint = BalloonHint1
          CharCase = ecUpperCase
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'pac_nome'#9'80'#9'Nome'#9'F'
            'pac_dtnasc'#9'10'#9'Dt. Nasc.'#9'F'
            'pac_codigo'#9'8'#9'C'#243'digo'#9'F')
          LookupTable = dmLookups.lkProcPacientes
          LookupField = 'pac_nome'
          Options = [loColLines, loRowLines, loTitles]
          DropDownCount = 10
          ButtonEffects.Transparent = True
          ButtonEffects.Flat = True
          MaxLength = 80
          ParentShowHint = False
          ShowHint = False
          TabOrder = 5
          AutoDropDown = True
          ShowButton = True
          PreciseEditRegion = False
          AllowClearKey = True
          ShowMatchText = True
        end
        object cbMedico: TwwDBLookupCombo
          Left = 543
          Top = 69
          Width = 384
          Height = 21
          Hint = 'Nome do M'#233'dico solicitante'
          CustomHint = BalloonHint1
          CharCase = ecUpperCase
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'med_nome'#9'50'#9'M'#233'dico'#9'F'
            'med_numconselho'#9'10'#9'Registro'#9'F'
            'med_codigo'#9'8'#9'C'#243'digo'#9'F'
            'med_fone'#9'15'#9'Telefone'#9'F')
          LookupTable = dmLookups.lkProcMedicos
          LookupField = 'med_nome'
          Options = [loColLines, loRowLines, loTitles]
          ButtonEffects.Transparent = True
          ButtonEffects.Flat = True
          ParentShowHint = False
          ShowHint = False
          TabOrder = 6
          AutoDropDown = True
          ShowButton = True
          PreciseEditRegion = False
          AllowClearKey = False
          ShowMatchText = True
        end
        object edDtInicio: TwwDBDateTimePicker
          Left = 8
          Top = 24
          Width = 161
          Height = 21
          Hint = 'Data de in'#237'cio da pesquisa'
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
          ShowHint = False
          ShowButton = True
          TabOrder = 0
          UnboundDataType = wwDTEdtDate
          DisplayFormat = 'dd/mm/yyyy'
        end
        object edDtFinal: TwwDBDateTimePicker
          Left = 176
          Top = 24
          Width = 137
          Height = 21
          Hint = 'Data final da pesquisa'
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
          TabOrder = 1
          UnboundDataType = wwDTEdtDate
          DisplayFormat = 'dd/mm/yyyy'
        end
        object btFiltrar: TBitBtn
          Left = 787
          Top = 114
          Width = 105
          Height = 25
          Hint = 'Clique para executar o filtro'
          CustomHint = BalloonHint1
          Caption = 'Fil&trar'
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B00000000000000000000FF00FFB78183
            B78183B78183B78183B78183B78183B78183B78183B78183B78183B78183B781
            83B78183FF00FFFF00FFFF00FFB78183FEEED4F7E3C5C7895DBB6221D9A878F3
            D3A2F1CF9AF0CF97F0CF98F0CF98F5D49AB78183FF00FFFF00FFFF00FFB78183
            FDEFD99FCBD03AA9CC677771BA5F1A7B70599DA795EECC99EECC97EECC97F3D1
            99B78183FF00FFFF00FFFF00FFB48176FEF3E337ADD393DCF572D1F066969FBC
            601AA67B52CC9062E3B887EECC97F3D199B78183FF00FFFF00FFFF00FFB48176
            FFF7EB37ADD3C1EFFE98DDF662CFF163A5B5BB6321D6B492C06A2BCD9365F3D1
            98B78183FF00FFFF00FFFF00FFBA8E85FFFCF437ADD3D8F8FFBCEBFD7CDDF863
            D5F54C95ABBF6A2BF6EDE4BE611CBD601AB78183FF00FFFF00FFFF00FFBA8E85
            FFFFFD37ADD3DDF9FFCDF4FF8FE8FE76E2FB37ADD3EAC8A6C27139EDD2BDEABF
            90BD601ABD601AFF00FFFF00FFCB9A82FFFFFF37ADD3DBF9FFCDF3FF94ECFE86
            EBFF3AA9CCE8C6A8C98252BD611CE4AF76DE9852BD601ABD601AFF00FFCB9A82
            FFFFFF37ADD3DCF9FFCFF4FF95EDFE8AEFFF3EA3C2BF6B32D59F77E1A261D789
            39BD601AFF00FFFF00FFFF00FFDCA887FFFFFF37ADD3E1FBFFD1F4FF95EDFF8C
            F0FF37ADD3E3BEA4C3733BBD601BDA8B39CA6504BD601AFF00FFFF00FFDCA887
            FFFFFF37ADD337ADD337ADD337ADD337ADD337ADD3FAEDDCFAEAD4CA9B81BD61
            1BBD601ABD601ABD601AFF00FFE3B18EFFFFFF37ADD398E1F494E4F982E2F871
            DBF337ADD3F1E1D5B8857AB8857AB8857AB78183FF00FFFF00FFFF00FFE3B18E
            FFFFFF99D7EB37ADD337ADD337ADD337ADD39BD7E8E3CFC9B8857AE8B270ECA5
            4AC58768FF00FFFF00FFFF00FFEDBD92FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFE4D4D2B8857AFAC577CD9377FF00FFFF00FFFF00FFFF00FFEDBD92
            FCF7F4FCF7F3FBF6F3FBF6F3FAF5F3F9F5F3F9F5F3E1D0CEB8857ACF9B86FF00
            FFFF00FFFF00FFFF00FFFF00FFEDBD92DCA887DCA887DCA887DCA887DCA887DC
            A887DCA887DCA887B8857AFF00FFFF00FFFF00FFFF00FFFF00FF}
          ParentShowHint = False
          ShowHint = False
          TabOrder = 12
          OnClick = btFiltrarClick
        end
        object btLimpar: TBitBtn
          Left = 897
          Top = 114
          Width = 105
          Height = 25
          Hint = 'Clique para limpar o filtro'
          CustomHint = BalloonHint1
          Caption = '&Limpar'
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
            B78183B78183B78183B78183B78183B78183B78183B78183B78183B78183B781
            83B78183B78183FF00FFFF00FFFF00FFB78183FEEED4D3D8A9DFD9ABF5DBB4ED
            D6A7EED29FF1CF9AF0CF97F0CF98F0CF98F5D49AB78183FF00FFFF00FFFF00FF
            B78183FDEFD9AECE9046AD3889BE6936A72937A7287AB553D6C78AEECC97EECC
            97F3D199B78183FF00FFFF00FFFF00FFB48176FEF3E3CDD9AE20A31C029A0302
            9A03029A03029A0341A82EE6CA95EECC97F3D199B78183FF00FFFF00FFFF00FF
            B48176FFF7EBCCDCB324A51F029A032FA726BBCC8E8CBD680C9C0A90BB63EFCD
            99F3D198B78183FF00FFFF00FFFF00FFBA8E85FFFCF4CBDFBA17A116029A030C
            9D0C9AC57AF4DBBBB8C78887BF69F0D0A1F3D29BB78183FF00FFFF00FFFF00FF
            BA8E85FFFFFDE8EDDBB7D8A6AED399A9CF90AECE90F2DEC0F4DBBAB3D092F0D4
            A9F5D5A3B78183FF00FFFF00FFFF00FFCB9A82FFFFFFBAE2B7FBF3ECF7EEDFB1
            D39CAACF90ACCD8EB3CC8EEFDAB6F2D8B2F6D9ACB78183FF00FFFF00FFFF00FF
            CB9A82FFFFFF8DD28EC1E1BBFBF3EC9CCF8F0D9D0C029A0317A014F6DEC1F4DB
            B9F8DDB4B78183FF00FFFF00FFFF00FFDCA887FFFFFF99D69A0D9D0E93D18EC0
            DEB430AA2C029A0324A41FF6E2C8F7E1C2F0DAB7B78183FF00FFFF00FFFF00FF
            DCA887FFFFFFF6FBF645B546029A03029A03029A03029A0321A41EFCEFD9E6D9
            C4C6BCA9B78183FF00FFFF00FFFF00FFE3B18EFFFFFFFFFFFFE5F5E581CD813B
            B03B38AE378ECD8545AE3DAA8771B8857AB8857AB78183FF00FFFF00FFFF00FF
            E3B18EFFFFFFFFFFFFFFFFFFFFFFFFE8F6E8E7F5E5FFFEF9BEC6A8A2886CE8B2
            70ECA54AC58768FF00FFFF00FFFF00FFEDBD92FFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFE4D4D2B8857AFAC577CD9377FF00FFFF00FFFF00FFFF00FF
            EDBD92FCF7F4FCF7F3FBF6F3FBF6F3FAF5F3F9F5F3F9F5F3E1D0CEB8857ACF9B
            86FF00FFFF00FFFF00FFFF00FFFF00FFEDBD92DCA887DCA887DCA887DCA887DC
            A887DCA887DCA887DCA887B8857AFF00FFFF00FFFF00FFFF00FF}
          ParentShowHint = False
          ShowHint = False
          TabOrder = 13
          OnClick = btLimparClick
        end
        object cbKeyOrdem: TwwDBComboBox
          Left = 248
          Top = 114
          Width = 121
          Height = 21
          Hint = 'Organizar / Ordenar pelo campo'
          CustomHint = BalloonHint1
          ShowButton = True
          Style = csDropDown
          MapList = True
          AllowClearKey = False
          ShowMatchText = True
          DropDownCount = 8
          ButtonEffects.Transparent = True
          ButtonEffects.Flat = True
          ItemHeight = 0
          Items.Strings = (
            'Conv'#234'nio'#9'c.cov_descricao'
            'M'#233'dico'#9'm.med_nome'
            'Data da requisi'#231#227'o'#9'e.exa_data'
            'Etapa'#9'e.exa_etapa'
            'Guia'#9'e.exa_guia'
            'ID Exame'#9'e.exa_id'
            'Matr'#237'cula'#9'e.exa_matricula'
            'Nome do Paciente'#9'p.pac_nome'
            'Tp. Exame'#9'e.etp_id')
          ItemIndex = 3
          ParentShowHint = False
          ShowHint = False
          Sorted = False
          TabOrder = 9
          UnboundDataType = wwDefault
        end
        object cbOrdem: TwwDBComboBox
          Left = 376
          Top = 114
          Width = 113
          Height = 21
          Hint = 'Ordem'
          CustomHint = BalloonHint1
          ShowButton = True
          Style = csDropDown
          MapList = True
          AllowClearKey = False
          ShowMatchText = True
          DropDownCount = 8
          ButtonEffects.Transparent = True
          ButtonEffects.Flat = True
          ItemHeight = 0
          Items.Strings = (
            'Crescente'#9
            'Decrescente'#9'desc')
          Sorted = False
          TabOrder = 10
          UnboundDataType = wwDefault
        end
        object cbTipoBusca: TwwDBComboBox
          Left = 10
          Top = 69
          Width = 143
          Height = 21
          Hint = 'Selecione o t'#237'tulo'
          CustomHint = BalloonHint1
          ShowButton = True
          Style = csDropDown
          MapList = True
          AllowClearKey = False
          AutoDropDown = True
          ShowMatchText = True
          DropDownCount = 8
          ButtonEffects.Transparent = True
          ButtonEffects.Flat = True
          ItemHeight = 0
          Items.Strings = (
            'Comece com (in'#237'cio do nome)'#9'0'
            'Contenha (parte do nome)'#9'1'
            'Igual a (nome completo)'#9'2')
          ItemIndex = 0
          ParentShowHint = False
          ShowHint = False
          Sorted = False
          TabOrder = 4
          UnboundDataType = wwDefault
          OnExit = cbTipoBuscaExit
        end
        object cbLimite: TwwDBComboBox
          Left = 498
          Top = 114
          Width = 95
          Height = 21
          Hint = 'Selecione o n'#250'mero de registros da consulta'
          CustomHint = BalloonHint1
          ShowButton = True
          Style = csDropDown
          MapList = True
          AllowClearKey = False
          ShowMatchText = True
          DropDownCount = 8
          ButtonEffects.Transparent = True
          ButtonEffects.Flat = True
          ItemHeight = 0
          Items.Strings = (
            '1'#9'1'
            '10'#9'10'
            '25'#9'25'
            '50'#9'50'
            '75'#9'75'
            '100'#9'100'
            '200'#9'200'
            '300'#9'300'
            '500'#9'500'
            '750'#9'750'
            '1000'#9'1000'
            'ilimitado'#9'0')
          ParentShowHint = False
          ShowHint = False
          Sorted = False
          TabOrder = 11
          UnboundDataType = wwDefault
        end
        object edIDExame: TMaskEdit
          Left = 932
          Top = 69
          Width = 70
          Height = 21
          Hint = 'Digite o ID do exame'
          CustomHint = BalloonHint1
          CharCase = ecUpperCase
          EditMask = '00A0000000;1;_'
          MaxLength = 10
          ParentShowHint = False
          ShowHint = False
          TabOrder = 7
          Text = '          '
        end
        object cbOrigem: TwwDBLookupCombo
          Left = 8
          Top = 114
          Width = 233
          Height = 21
          Hint = 'Filtra pela origem do exame'
          CustomHint = BalloonHint1
          DropDownAlignment = taLeftJustify
          LookupTable = dmLookups.lkProcOrigem
          LookupField = 'exl_descricao'
          TabOrder = 8
          AutoDropDown = False
          ShowButton = True
          PreciseEditRegion = False
          AllowClearKey = False
        end
      end
      object Panel2: TPanel
        Left = -1
        Top = 144
        Width = 1008
        Height = 337
        CustomHint = BalloonHint1
        BevelInner = bvLowered
        TabOrder = 1
        object DBGrid1: TwwDBGrid
          Left = 6
          Top = 7
          Width = 996
          Height = 329
          Hint = 'Resultado da pesquisa'
          CustomHint = BalloonHint1
          TabStop = False
          Selected.Strings = (
            'exa_id'#9'12'#9'ID'#9'F'#9
            'exa_data'#9'10'#9'Data'#9#9
            'pac_nome'#9'50'#9'Paciente'#9#9
            'pac_codigo'#9'6'#9'C'#243'd.'#9'F'
            'pac_dtnasc'#9'10'#9'Dt. Nasc.'#9#9
            'cov_descricao'#9'30'#9'Conv'#234'nio'#9'F'#9
            'pac_idade'#9'8'#9'Idade'#9#9
            'med_nome'#9'50'#9'M'#233'dico'#9'F'#9
            'exa_matricula'#9'20'#9'Matr'#237'cula'#9#9
            'exa_guia'#9'10'#9'Guia'#9#9
            'exl_descricao'#9'35'#9'Origem'#9'F'#9
            'exa_origem'#9'8'#9'C'#243'd. Origem'#9#9
            'exa_destino'#9'8'#9'C'#243'd. Destino'#9#9
            'etp_id'#9'10'#9'C'#243'd. Tipo'#9#9
            'exa_prioridade'#9'8'#9'Prioridade'#9#9
            'exa_dataprior'#9'10'#9'Data prioridade'#9#9
            'exa_etapa'#9'5'#9'Etapa'#9#9)
          IniAttributes.FileName = 'genesis'
          IniAttributes.SectionName = 'telasgrid'
          IniAttributes.Delimiter = '#'
          IniAttributes.CheckNewFields = True
          TitleColor = clBtnFace
          FixedCols = 0
          ShowHorzScrollBar = True
          DataSource = dsConsulta
          KeyOptions = []
          ParentShowHint = False
          ReadOnly = True
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
          OnCalcCellColors = DBGrid1CalcCellColors
          OnDrawDataCell = DBGrid1DrawDataCell
        end
      end
      object btRelLista: TBitBtn
        Left = 675
        Top = 495
        Width = 105
        Height = 25
        Hint = 'Lista exames em um relat'#243'rio'
        CustomHint = BalloonHint1
        Caption = 'Listar'
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFB3B1B2FF00FFFF00FFFF00FF9A99999A9999A4A1
          A2FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB3B1B2B3B1B2DEDCDCAB
          A9A95553546F6D6EAEACACD2D0D1E0DFDF9A9999FF00FFFF00FFFF00FFFF00FF
          B3B1B2B3B1B2FBFBFBFFFFFFE0DEDFB2B0B05F5E603131333131344F4D4F8180
          819A9999A4A1A2FF00FFA7A4A5B3B1B2F4F2F3FFFFFFF2F0F0D6D5D5B3B1B2A4
          A1A1ACA9AA9E9D9D7E7D7D5655573536383635378D8B8CFF00FFB0ADAEEEEDED
          EBEBEBCCCACAB9B7B7C4C2C2D0CFCFB7B5B5ABA8A9A8A6A6ACA9AAAFADADA4A1
          A28584849A9999FF00FFAAA7A8BFBDBEB7B5B5C1C0C0D5D5D5DCDDDDF1F1F0F4
          F2F4E4E3E3D2D1D1BFBDBDAFADAEA9A6A6ACA9AAA4A1A2FF00FFA7A4A5C0BFC0
          D5D4D4D9D9D9D5D5D5E9E9E9DCDADAB5BDB5CCCBCBD7D9DADFDFDFDDDDDDD3D2
          D2C6C6C6ADACACFF00FFFF00FFB0AEAFDBDCDCDADADAE4E4E4D5D3D3C5C1C4B8
          DCBAC9D1CBD2BAB5BFB7B6BBB9BAC4C2C3D0CFCFBBB9BAFF00FFFF00FFFF00FF
          B0AEAFCFCDCDC0BFBFC2C1C1EAEAEAF8F6F6F2F1F2F1E8E6E4E1E1D8D8D8C4C4
          C4A9A6A7FF00FFFF00FFFF00FFFF00FFFF00FFB0AEAFE1E3E3D6D6D7B1B3B4CA
          CDCFDDDFE0DEE2E2DFDFDFD3D2D3C0BFBFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFCEBE8FAE7DEEED5CCEAD4CCE9D8D4E6DDD9DBD9D8AAA8AAFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFD9B3B1FFE6D9FFDACCFF
          D1C0FFC9B6FFC2AEFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFD9B3B1FFE5D9FFD8CBFED0C1FFCAB7F9BBA8FF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFD9B3B1FFE5D9FFD8CBFE
          D0C1FEC8B6FBC1AEFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFD9B3B1FBE7DFFFE3D8FFD9CCFFD3C2FDC8B6FABFAEFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFD9B3B1D9B3B1D9B3B1D9B3B1F6
          BFB1F6BFB1FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
        ParentShowHint = False
        ShowHint = False
        TabOrder = 2
        OnClick = btRelListaClick
      end
      object btRequisicao: TBitBtn
        Left = 564
        Top = 495
        Width = 105
        Height = 25
        Hint = 'Imprime relat'#243'rio'
        CustomHint = BalloonHint1
        Caption = '&Requisi'#231#227'o'
        Glyph.Data = {
          12020000424D1202000000000000120100002800000010000000100000000100
          08000000000000010000120B0000120B0000370000003700000000000000FFFF
          FF00FF00FF00F4F4E900EEEDDA00E9E8D000E6E5C900E4E3C500D6D4A700C1BF
          7A00A29F3D009C99380069660D005E5B0500706D1300716E15007B781D00827F
          23009D992B00858225008E8B2D008B882F00A4A13B00A09C3A009F9C3A00A09D
          3B008784320094913700A6A3400089863500ABA84A00B1AF6100BAB76A00BDBB
          7200BDBB7300BFBD7700C1BF7B00C2C07D00C4C28200C7C58700C3C18700C9C7
          8D00CBC99000DFDEBA00DEDDBA00E0DFBD00E2E1C1005F5D050068660D00B2B0
          5A00D1D0A200EDEDD900F9F9F300FCFCF900FFFFFF0002020202020202020202
          02020202020202020202020202020202020202020202020C0C0C0C0C0C0E0E0E
          0C0D0D0D2F0202110808080808222222112121211A30020B0B0B0B0B0B181818
          0B242323230F0202102B20201D1D1D1D1D082525251002021507070707070707
          072E2626261302021B0505050505050505052A27271402021928040404040404
          04042D291F170202341C0A0A0A0A0A0A0A0A0A0A1C3402020202120106060606
          06060112020202020202160133333232323201160202020202021E0103030303
          0303011E020202020202310135352C2C2C2C0131020202020202200101010101
          01010120020202020202090909090909090909090202}
        ParentShowHint = False
        ShowHint = False
        TabOrder = 3
        OnClick = btRequisicaoClick
      end
      object btImprimir: TBitBtn
        Left = 786
        Top = 495
        Width = 105
        Height = 25
        Hint = 'Imprime relat'#243'rio'
        CustomHint = BalloonHint1
        Caption = '&Imprimir'
        Glyph.Data = {
          12020000424D1202000000000000120100002800000010000000100000000100
          08000000000000010000120B0000120B0000370000003700000000000000FFFF
          FF00FF00FF00F4F4E900EEEDDA00E9E8D000E6E5C900E4E3C500D6D4A700C1BF
          7A00A29F3D009C99380069660D005E5B0500706D1300716E15007B781D00827F
          23009D992B00858225008E8B2D008B882F00A4A13B00A09C3A009F9C3A00A09D
          3B008784320094913700A6A3400089863500ABA84A00B1AF6100BAB76A00BDBB
          7200BDBB7300BFBD7700C1BF7B00C2C07D00C4C28200C7C58700C3C18700C9C7
          8D00CBC99000DFDEBA00DEDDBA00E0DFBD00E2E1C1005F5D050068660D00B2B0
          5A00D1D0A200EDEDD900F9F9F300FCFCF900FFFFFF0002020202020202020202
          02020202020202020202020202020202020202020202020C0C0C0C0C0C0E0E0E
          0C0D0D0D2F0202110808080808222222112121211A30020B0B0B0B0B0B181818
          0B242323230F0202102B20201D1D1D1D1D082525251002021507070707070707
          072E2626261302021B0505050505050505052A27271402021928040404040404
          04042D291F170202341C0A0A0A0A0A0A0A0A0A0A1C3402020202120106060606
          06060112020202020202160133333232323201160202020202021E0103030303
          0303011E020202020202310135352C2C2C2C0131020202020202200101010101
          01010120020202020202090909090909090909090202}
        ParentShowHint = False
        ShowHint = False
        TabOrder = 4
        OnClick = btImprimirClick
      end
    end
    object tsCitologia: TTabSheet
      CustomHint = BalloonHint1
      Caption = 'Citologia'
      ImageIndex = 1
      object Label15: TLabel
        Left = 8
        Top = 8
        Width = 42
        Height = 13
        CustomHint = BalloonHint1
        Caption = 'Exame:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText3: TDBText
        Left = 56
        Top = 8
        Width = 145
        Height = 17
        CustomHint = BalloonHint1
        DataField = 'exa_id'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label17: TLabel
        Left = 8
        Top = 32
        Width = 70
        Height = 13
        CustomHint = BalloonHint1
        Caption = 'Dados cl'#237'nicos:'
      end
      object lbLaudo: TLabel
        Left = 8
        Top = 120
        Width = 29
        Height = 13
        CustomHint = BalloonHint1
        Caption = 'Laudo'
      end
      object Label16: TLabel
        Left = 8
        Top = 360
        Width = 55
        Height = 13
        CustomHint = BalloonHint1
        Caption = 'Diagn'#243'stico'
      end
      object Image: TImage
        Left = 816
        Top = 288
        Width = 177
        Height = 137
        CustomHint = BalloonHint1
        Center = True
        Stretch = True
      end
      object dbGridDadosClin: TwwDBGrid
        Left = 3
        Top = 50
        Width = 726
        Height = 64
        Hint = 'Material / Dados cl'#237'nicos'
        CustomHint = BalloonHint1
        TabStop = False
        ControlType.Strings = (
          'ehi_material;CustomEdit;cbMaterial'
          'ehi_exametipo;CustomEdit;cbTipoExame'
          'ehi_exame;CustomEdit;cbExame'
          'ehi_quant;CustomEdit;edQuantidade'
          'eci_local;CustomEdit;cbDadosClin'
          'eci_quant;CustomEdit;dbQuantExame;F')
        Selected.Strings = (
          'eci_quant'#9'10'#9'Quant.'#9'F'#9
          'eto_descricao'#9'65'#9'Descri'#231#227'o'#9'F'#9
          'eto_local'#9'38'#9'Local'#9'F'#9)
        IniAttributes.Delimiter = ';;'
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        DataSource = dsExamesSolicitados
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = False
        TabOrder = 0
        TitleAlignment = taLeftJustify
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        TitleLines = 1
        TitleButtons = False
      end
      object meLaudo: TwwDBRichEditMSWord
        Left = 2
        Top = 136
        Width = 796
        Height = 217
        Hint = 'Laudo'
        CustomHint = BalloonHint1
        TabStop = False
        ScrollBars = ssVertical
        AutoURLDetect = True
        DataField = 'exa_laudo'
        DataSource = dsCitologia
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Verdana'
        Font.Style = []
        GutterWidth = 3
        HideSelection = False
        HideScrollBars = False
        ParentFont = False
        ParentShowHint = False
        PrintJobName = 'Next Sistemas'
        ReadOnly = True
        ShowHint = False
        TabOrder = 1
        WantTabs = True
        PopupOptions = [rpoPopupEdit, rpoPopupCut, rpoPopupCopy, rpoPopupPaste, rpoPopupBold, rpoPopupItalic, rpoPopupUnderline, rpoPopupFont, rpoPopupBullet, rpoPopupParagraph, rpoPopupTabs, rpoPopupFind, rpoPopupReplace, rpoPopupInsertObject, rpoPopupMSWordSpellCheck]
        EditorOptions = [reoShowLoad, reoShowSaveAs, reoShowSaveExit, reoShowPrint, reoShowPageSetup, reoShowFormatBar, reoShowToolBar, reoShowStatusBar, reoShowHints, reoShowRuler, reoShowInsertObject, reoCloseOnEscape, reoFlatButtons, reoShowSpellCheck, reoShowMainMenuIcons]
        EditorCaption = 'Laudo'
        EditorPosition.Left = 0
        EditorPosition.Top = 0
        EditorPosition.Width = 0
        EditorPosition.Height = 0
        MeasurementUnits = muCentimeters
        PrintMargins.Top = 1.000000000000000000
        PrintMargins.Bottom = 1.000000000000000000
        PrintMargins.Left = 1.000000000000000000
        PrintMargins.Right = 1.000000000000000000
        PrintHeader.VertMargin = 0.500000000000000000
        PrintHeader.Font.Charset = DEFAULT_CHARSET
        PrintHeader.Font.Color = clWindowText
        PrintHeader.Font.Height = -11
        PrintHeader.Font.Name = 'Tahoma'
        PrintHeader.Font.Style = []
        PrintFooter.VertMargin = 0.500000000000000000
        PrintFooter.Font.Charset = DEFAULT_CHARSET
        PrintFooter.Font.Color = clWindowText
        PrintFooter.Font.Height = -11
        PrintFooter.Font.Name = 'Tahoma'
        PrintFooter.Font.Style = []
        RichEditVersion = 2
        Data = {
          740000007B5C727466315C616E73695C616E7369637067313235325C64656666
          307B5C666F6E7474626C7B5C66305C666E696C5C666368617273657430205665
          7264616E613B7D7D0D0A5C766965776B696E64345C7563315C706172645C6C61
          6E67313034365C66305C667332325C7061720D0A7D0D0A00}
      end
      object wwDBRichEditMSWord1: TwwDBRichEditMSWord
        Left = 4
        Top = 376
        Width = 796
        Height = 137
        Hint = 'Diagn'#243'stico'
        CustomHint = BalloonHint1
        TabStop = False
        ScrollBars = ssVertical
        AutoURLDetect = True
        DataField = 'exa_diagnostico'
        DataSource = dsCitologia
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Verdana'
        Font.Style = []
        GutterWidth = 3
        HideSelection = False
        HideScrollBars = False
        ParentFont = False
        ParentShowHint = False
        PrintJobName = 'Next Sistemas'
        ReadOnly = True
        ShowHint = False
        TabOrder = 2
        WantTabs = True
        PopupOptions = [rpoPopupEdit, rpoPopupCut, rpoPopupCopy, rpoPopupPaste, rpoPopupBold, rpoPopupItalic, rpoPopupUnderline, rpoPopupFont, rpoPopupBullet, rpoPopupParagraph, rpoPopupTabs, rpoPopupFind, rpoPopupReplace, rpoPopupInsertObject, rpoPopupMSWordSpellCheck]
        EditorOptions = [reoShowLoad, reoShowSaveAs, reoShowSaveExit, reoShowPrint, reoShowPageSetup, reoShowFormatBar, reoShowToolBar, reoShowStatusBar, reoShowHints, reoShowRuler, reoShowInsertObject, reoCloseOnEscape, reoFlatButtons, reoShowSpellCheck, reoShowMainMenuIcons]
        EditorCaption = 'Laudo'
        EditorPosition.Left = 0
        EditorPosition.Top = 0
        EditorPosition.Width = 0
        EditorPosition.Height = 0
        MeasurementUnits = muCentimeters
        PrintMargins.Top = 1.000000000000000000
        PrintMargins.Bottom = 1.000000000000000000
        PrintMargins.Left = 1.000000000000000000
        PrintMargins.Right = 1.000000000000000000
        PrintHeader.VertMargin = 0.500000000000000000
        PrintHeader.Font.Charset = DEFAULT_CHARSET
        PrintHeader.Font.Color = clWindowText
        PrintHeader.Font.Height = -11
        PrintHeader.Font.Name = 'Tahoma'
        PrintHeader.Font.Style = []
        PrintFooter.VertMargin = 0.500000000000000000
        PrintFooter.Font.Charset = DEFAULT_CHARSET
        PrintFooter.Font.Color = clWindowText
        PrintFooter.Font.Height = -11
        PrintFooter.Font.Name = 'Tahoma'
        PrintFooter.Font.Style = []
        RichEditVersion = 2
        Data = {
          740000007B5C727466315C616E73695C616E7369637067313235325C64656666
          307B5C666F6E7474626C7B5C66305C666E696C5C666368617273657430205665
          7264616E613B7D7D0D0A5C766965776B696E64345C7563315C706172645C6C61
          6E67313034365C66305C667332325C7061720D0A7D0D0A00}
      end
      object btImagem: TBitBtn
        Left = 816
        Top = 439
        Width = 105
        Height = 25
        Hint = 'Visualiza imagem capturada em tamanho real'
        CustomHint = BalloonHint1
        Caption = '&Imagem'
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
          FF00FFBD4900BD4900BD4900BD4900BD4900BD4900BD4900FF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFBD4900FFF6D4FFEFC4FFF2BBAB
          A7C70525F7FCD890BD4900BD4900BD4900BD4900BD4900FF00FFFF00FFFF00FF
          FF00FFBD49000525F70525F70525F70525F70525F7FBDAA3F6D39EB8A9AD0525
          F7FFDE86F8D08EBD4900FF00FFFF00FFFF00FFBD490098A1E38690DC7380D941
          59E30525F70525F70525F70525F70525F70525F70525F7BD4900FF00FF0E90C9
          0E90C9BD4900FFF2D8FFF0CEFFF4C1B1ADCE0525F7FFF2A7E5C9AC9996BC0525
          F78B90B06C77CABD49000E90C963CEEE78D8FCBD49004163F76479E97B89DE5B
          6FE20525F7BCB5C1C7B7B8A39DBD0525F7FFE38EFFE697BD49000E90C97BDCF7
          A5E9FFBD49000525F70525F70525F70525F70525F70525F70525F70525F70525
          F70525F70525F7BD49000E90C982DEF7C7F7FFBD4900FFFFFFFFFFEFFFFFE3B7
          BBE20525F7FFFFBBFFE7B5B5ACC20525F7D1C1ACAFA7C0BD49000E90C981DEF7
          CFFAFFBD4900EAC59EEDC7A5F8DAAD9697CB0525F7FFF8C9FFEECBC0BDD80525
          F7FFFEB7FFF4C7BD49000E90C981DEF7CEFAFFBD4900BD4900BD4900BD4900BD
          4900BD4900BD4900BD4900BD4900BD4900BD4900BD4900BD49000E90C981DEF7
          CEFAFFBD4C00BC4A00BC4900BD4900BD4900BD4900BD4900BD4900BD4900BD49
          00BD4900BD4900BD49000E90C983E0F8D7F8FFC6DADD96C6C68BC6C774BCC60E
          90C9FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0E90C979DAF4
          B4E5F797E1FC60DAFE59DEFF50D8FB0E90C9FF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FF0E90C90E90C90E90C90E90C90E90C90E90C90E90C90E
          90C9FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0E90C90E90C9
          65CCEA62D3EF59D0F04CC6E90E90C90E90C9FF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FF0E90C90E90C90E90C90E90C90E90C90E90C9FF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
        ParentShowHint = False
        ShowHint = False
        TabOrder = 3
        OnClick = btImagemClick
      end
      object gbAltTipo: TGroupBox
        Left = 768
        Top = 24
        Width = 225
        Height = 89
        CustomHint = BalloonHint1
        Caption = ' Altera tipo de citologia '
        Color = clInfoBk
        ParentColor = False
        TabOrder = 4
        object cbProcTipocit: TwwDBLookupCombo
          Left = 8
          Top = 24
          Width = 49
          Height = 21
          CustomHint = BalloonHint1
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'etp_id'#9'10'#9'ID'#9'F'
            'etp_tipo'#9'20'#9'Tipo'#9'F')
          DataField = 'etp_id'
          DataSource = dsConsulta
          LookupTable = dmLookups.lkProcCitosTp
          LookupField = 'etp_id'
          Options = [loColLines, loRowLines, loTitles]
          ButtonEffects.Transparent = True
          ButtonEffects.Flat = True
          TabOrder = 0
          AutoDropDown = False
          ShowButton = True
          PreciseEditRegion = False
          AllowClearKey = False
          ShowMatchText = True
          OnChange = cbProcTipocitChange
        end
        object btGravarCit: TBitBtn
          Left = 112
          Top = 56
          Width = 105
          Height = 25
          CustomHint = BalloonHint1
          Caption = '&Gravar'
          Glyph.Data = {
            36060000424D3606000000000000360000002800000020000000100000000100
            18000000000000060000C40E0000C40E00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FF0955A10857A60557AA0655A70954A00954A0FF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFF6AA5EF7A859FA
            A855F9AA58F6AB5FF6AB5FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FF0872DD0362C3006CDB0877E7117DEA0877E70069DD005DC70654A50654
            A5FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFF78D22FC9D3CFF9324F78818EE
            8215F78818FF9622FFA238F9AB5AF9AB5AFF00FFFF00FFFF00FFFF00FFFF00FF
            0F6BC90872DD3E99F591C4F9D6E9FDEEF7FFE4F1FFB0D4FB59A5F50570E5035A
            B70B5095FF00FFFF00FFFF00FFFF00FFF09436F78D22C1660A6E3B0629160211
            08001B0E004F2B04A65A0AFA8F1AFCA548F4AF6AFF00FFFF00FFFF00FF1278E0
            127CE870B4F9F6FAFEFFFFFFEEF6FDD3E6FBE2EEFDFFFFFFFFFFFFAED2FA0E78
            ED025AB60653A2FF00FFFF00FFED871FED83178F4B060905010000001109022C
            19041D1102000000000000512D05F18712FDA549F9AC5DFF00FFFF00FF1278E0
            6DB2F9FEFEFFF4F9FE77B6F63391F0B5D5F91B7FEA4693EEC9E0FAFFFFFFB0D5
            FA0970E60653A2FF00FFFF00FFED871F924D060101000B0601884909CC6E0F4A
            2A06E48015B96C11361F050000004F2A05F68F19F9AC5DFF00FF0B70D53695F4
            E8F3FEFFFFFF4FA3F61F88F2D4E7FCFFFFFF489BEF0065E60E74E8C9E1FAFFFF
            FF58A5F5005EC70858ABF48F2AC96A0B170C01000000B05C09E0770D2B180300
            0000B76410FF9A19F18B17361E05000000A75A0AFFA138F7A754137AE371B5FB
            FFFFFFB2D7FC469FF7DEEEFDFDFEFEE0EEFDA1CCF80173E9006AE74294EDFFFF
            FFB3D7FB016BDE0858ABEC851C8E4A040000004D2803B960082111020201011F
            11025E3307FE8C16FF9518BD6B120000004C2804FE9421F7A7541F85ECA2CFFD
            FFFFFF71B7FDACD4FDFAFCFF66AFF83F9AF5E2EFFD2D8EF00075EB0575E9E2EE
            FCE6F3FF0E7BE9065AB0E07A135D30020000008E4802532B02050300995007C0
            650A1D1002D2710FFF8A14FA8A161D1103190C00F18416F9A54F2F8FF1B7DAFD
            FFFFFF6BB4FF3C9DFE4FA5FB1D8AF81484F5A0CDFB84BDF8067AEF0374EBD4E8
            FBF0F8FF1A82EC055CB5D0700E482502000000944B00C36201B05A04E27507EB
            7B0A5F32047B4207F98510FC8B142B17040F0700E57D13FAA34A3693F0B8DAFE
            FFFFFF8EC6FF2391FF2E95FE2B93FC218CF92D92F79ACAFB1D86F21D86F0F3F8
            FED9EBFE117DE9095CB2C96C0F472501000000713900DC6E00D16A01D46C03DE
            7306D26D08653504E2790DE2790F0C0701261401EE8216F6A34D2689EDAFD6FD
            FFFFFFE1F0FF3499FF2F96FF3399FF2E94FD218CF950A4F9419BF77DBBF8FFFF
            FF99C9FA0773E10958ABD976125029020000001E0F00CB6600D06900CC6600D1
            6B02DE7306AF5B06BE6408824407000000663605F88C1EF6A754FF00FF3994F0
            F1F8FFFFFFFFADD6FF3499FF2592FF2893FF238FFC1788FA6FB4FAF4FAFFF5FA
            FE49A0F7076ACEFF00FFFF00FFC66B0F0E0700000000522900CB6600DA6D00D7
            6C00DC7003E87705904B050B05000A0501B65F08F89531FF00FFFF00FF3994F0
            CDE6FFF6FAFFFFFFFFE0EFFF8DC6FF6EB6FE79BBFFB6DAFEFFFFFFFFFFFF78B9
            F9137BE6076ACEFF00FFFF00FFC66B0F3219000905000000001F100072390091
            4901864400492501000000000000874606EC8419F89531FF00FFFF00FFFF00FF
            64ACF6D4EAFFF9FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7F3FE77B8FA1D85
            ED0D6DD0FF00FFFF00FFFF00FFFF00FF9B53092B150006030000000000000000
            0000000000000000180C01884705E27A12F2922FFF00FFFF00FFFF00FFFF00FF
            FF00FF459AF0A7D2FCD8ECFFE2F1FFE4F1FED1E7FE9DCDFD4DA2F7177FE8177F
            E8FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFBA650F582D032713001D0E001B
            0E012E1801623202B25D08E88017E88017FF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FF3B94F061ABF665ADF7489EF42286EC127AE4FF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC46B0F9E54099A
            5208B7610BDD7913ED851BFF00FFFF00FFFF00FFFF00FFFF00FF}
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = False
          TabOrder = 1
          OnClick = btGravarCitClick
        end
        object edTipoCit: TEdit
          Left = 56
          Top = 24
          Width = 161
          Height = 21
          Hint = 'Tipo de citologia'
          CustomHint = BalloonHint1
          TabStop = False
          ReadOnly = True
          TabOrder = 2
          Text = 'edTipoCit'
        end
      end
    end
    object tsHistologia: TTabSheet
      CustomHint = BalloonHint1
      Caption = 'Histologia / Imunohistoqu'#237'mica'
      ImageIndex = 2
      object Label13: TLabel
        Left = 8
        Top = 8
        Width = 42
        Height = 13
        CustomHint = BalloonHint1
        Caption = 'Exame:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText2: TDBText
        Left = 56
        Top = 8
        Width = 145
        Height = 17
        CustomHint = BalloonHint1
        DataField = 'exa_id'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object pgHistologia: TPageControl
        Left = 2
        Top = 24
        Width = 815
        Height = 414
        CustomHint = BalloonHint1
        ActivePage = tsMacro
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnChange = pgHistologiaChange
        object tsMacro: TTabSheet
          Hint = 'Macroscopia'
          CustomHint = BalloonHint1
          Caption = 'Macroscopia'
          ImageIndex = 96
          object Panel4: TPanel
            Left = -10
            Top = -41
            Width = 819
            Height = 423
            CustomHint = BalloonHint1
            BevelInner = bvRaised
            BevelOuter = bvLowered
            TabOrder = 0
            object Label18: TLabel
              Left = 12
              Top = 37
              Width = 66
              Height = 13
              CustomHint = BalloonHint1
              Caption = 'Dados cl'#237'nicos'
            end
            object lbMacroscopia: TLabel
              Left = 12
              Top = 131
              Width = 123
              Height = 13
              CustomHint = BalloonHint1
              Caption = 'Descri'#231#227'o da Macroscopia'
            end
            object meMacroscopia: TwwDBRichEditMSWord
              Left = 12
              Top = 144
              Width = 785
              Height = 116
              Hint = 'Macroscopia!'
              CustomHint = BalloonHint1
              TabStop = False
              ScrollBars = ssVertical
              AutoURLDetect = True
              DataField = 'ehm_macroscopia'
              DataSource = dsMacroscopia
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              GutterWidth = 3
              HideSelection = False
              HideScrollBars = False
              ParentFont = False
              ParentShowHint = False
              PrintJobName = 'Next Sistemas'
              ReadOnly = True
              ShowHint = False
              TabOrder = 1
              WantTabs = True
              PopupOptions = [rpoPopupEdit, rpoPopupCut, rpoPopupCopy, rpoPopupPaste, rpoPopupBold, rpoPopupItalic, rpoPopupUnderline, rpoPopupFont, rpoPopupBullet, rpoPopupParagraph, rpoPopupTabs, rpoPopupFind, rpoPopupReplace, rpoPopupInsertObject, rpoPopupMSWordSpellCheck]
              EditorOptions = [reoShowLoad, reoShowSaveAs, reoShowSaveExit, reoShowPrint, reoShowPageSetup, reoShowFormatBar, reoShowToolBar, reoShowStatusBar, reoShowHints, reoShowRuler, reoShowInsertObject, reoCloseOnEscape, reoFlatButtons, reoShowSpellCheck, reoShowMainMenuIcons]
              EditorCaption = 'Edit Rich Text'
              EditorPosition.Left = 0
              EditorPosition.Top = 0
              EditorPosition.Width = 0
              EditorPosition.Height = 0
              MeasurementUnits = muCentimeters
              PrintMargins.Top = 1.000000000000000000
              PrintMargins.Bottom = 1.000000000000000000
              PrintMargins.Left = 1.000000000000000000
              PrintMargins.Right = 1.000000000000000000
              PrintHeader.VertMargin = 0.500000000000000000
              PrintHeader.Font.Charset = DEFAULT_CHARSET
              PrintHeader.Font.Color = clWindowText
              PrintHeader.Font.Height = -11
              PrintHeader.Font.Name = 'Tahoma'
              PrintHeader.Font.Style = []
              PrintFooter.VertMargin = 0.500000000000000000
              PrintFooter.Font.Charset = DEFAULT_CHARSET
              PrintFooter.Font.Color = clWindowText
              PrintFooter.Font.Height = -11
              PrintFooter.Font.Name = 'Tahoma'
              PrintFooter.Font.Style = []
              RichEditVersion = 2
              Data = {
                640000007B5C727466315C616E73695C64656666307B5C666F6E7474626C7B5C
                66305C666E696C204D532053616E732053657269663B7D7D0D0A5C766965776B
                696E64345C7563315C706172645C6C616E67313034365C66305C667331365C70
                61720D0A7D0D0A00}
            end
            object painelTopografia: TPanel
              Left = 0
              Top = 264
              Width = 489
              Height = 159
              CustomHint = BalloonHint1
              BevelInner = bvRaised
              BevelOuter = bvLowered
              TabOrder = 0
              object Label19: TLabel
                Left = 12
                Top = 9
                Width = 52
                Height = 13
                CustomHint = BalloonHint1
                Caption = 'Topografia'
              end
              object GridTop: TwwDBGrid
                Left = 12
                Top = 24
                Width = 459
                Height = 128
                Hint = 'Topografias solicitadas'
                CustomHint = BalloonHint1
                TabStop = False
                ControlType.Strings = (
                  'etg_reserva;CheckBox;True;False')
                Selected.Strings = (
                  'etg_seq'#9'9'#9'Sequencia'
                  'top_descricao'#9'41'#9'Topografia'
                  'top_id'#9'10'#9'ID Topografia'
                  'etg_reserva'#9'5'#9'Reserva')
                IniAttributes.Delimiter = ';;'
                TitleColor = clBtnFace
                FixedCols = 0
                ShowHorzScrollBar = True
                DataSource = dsExTopografias
                ParentShowHint = False
                ReadOnly = True
                ShowHint = False
                TabOrder = 0
                TitleAlignment = taLeftJustify
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'Tahoma'
                TitleFont.Style = []
                TitleLines = 1
                TitleButtons = False
                OnDblClick = GridTopDblClick
              end
            end
            object painelBlocos: TPanel
              Left = 495
              Top = 264
              Width = 302
              Height = 159
              CustomHint = BalloonHint1
              BevelInner = bvRaised
              BevelOuter = bvLowered
              TabOrder = 2
              object Label20: TLabel
                Left = 8
                Top = 8
                Width = 30
                Height = 13
                CustomHint = BalloonHint1
                Caption = 'Blocos'
              end
              object wwDBGrid2: TwwDBGrid
                Left = 8
                Top = 25
                Width = 253
                Height = 127
                Hint = 'Blocos'
                CustomHint = BalloonHint1
                TabStop = False
                Selected.Strings = (
                  'etg_seq'#9'4'#9'Top.'#9'F'#9
                  'ebl_seq'#9'10'#9'Sequ'#234'ncia'#9#9
                  'ebl_fragmentos'#9'10'#9'Fragmentos'#9#9
                  'ebl_laminas'#9'9'#9'L'#226'minas'#9#9)
                IniAttributes.Delimiter = ';;'
                TitleColor = clBtnFace
                FixedCols = 0
                ShowHorzScrollBar = True
                DataSource = dsBlocos
                ParentShowHint = False
                ReadOnly = True
                ShowHint = False
                TabOrder = 0
                TitleAlignment = taLeftJustify
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'Tahoma'
                TitleFont.Style = []
                TitleLines = 1
                TitleButtons = False
              end
            end
            object GridDadosClin: TwwDBGrid
              Left = 12
              Top = 50
              Width = 785
              Height = 81
              Hint = 'Material / Dados cl'#237'nicos'
              CustomHint = BalloonHint1
              TabStop = False
              Selected.Strings = (
                'mat_descricao'#9'34'#9'Material'#9'F'#9
                'eio_descricao'#9'34'#9'Tp. Exame'#9'F'#9
                'eth_descricao'#9'44'#9'Exame'#9'F'#9
                'ehi_quant'#9'10'#9'Quantidade'#9#9)
              IniAttributes.Delimiter = ';;'
              TitleColor = clBtnFace
              FixedCols = 0
              ShowHorzScrollBar = True
              DataSource = dsHistologia
              ParentShowHint = False
              ReadOnly = True
              ShowHint = False
              TabOrder = 3
              TitleAlignment = taLeftJustify
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              TitleLines = 1
              TitleButtons = False
            end
          end
        end
        object tsMicro: TTabSheet
          Hint = 'Microscopia'
          CustomHint = BalloonHint1
          Caption = 'Microscopia'
          ImageIndex = 168
          object lbMicroscopia: TLabel
            Left = 4
            Top = 3
            Width = 119
            Height = 13
            CustomHint = BalloonHint1
            Caption = 'Descri'#231#227'o da Microscopia'
          end
          object Label21: TLabel
            Left = 4
            Top = 136
            Width = 55
            Height = 13
            CustomHint = BalloonHint1
            Caption = 'Diagn'#243'stico'
          end
          object Label22: TLabel
            Left = 4
            Top = 272
            Width = 92
            Height = 13
            CustomHint = BalloonHint1
            Caption = 'Nota/Complemento'
          end
          object meMicroscopia: TwwDBRichEditMSWord
            Left = 4
            Top = 18
            Width = 780
            Height = 116
            Hint = 'Insere o exame solicitado'#13#10'Microscopia!'
            CustomHint = BalloonHint1
            TabStop = False
            ScrollBars = ssVertical
            AutoURLDetect = True
            DataField = 'ehr_microscopia'
            DataSource = dsMicroscopia
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            GutterWidth = 3
            HideSelection = False
            HideScrollBars = False
            ParentFont = False
            ParentShowHint = False
            PrintJobName = 'Next Sistemas'
            ReadOnly = True
            ShowHint = False
            TabOrder = 0
            WantTabs = True
            PopupOptions = [rpoPopupEdit, rpoPopupCut, rpoPopupCopy, rpoPopupPaste, rpoPopupBold, rpoPopupItalic, rpoPopupUnderline, rpoPopupFont, rpoPopupBullet, rpoPopupParagraph, rpoPopupTabs, rpoPopupFind, rpoPopupReplace, rpoPopupInsertObject, rpoPopupMSWordSpellCheck]
            EditorOptions = [reoShowLoad, reoShowSaveAs, reoShowSaveExit, reoShowPrint, reoShowPageSetup, reoShowFormatBar, reoShowToolBar, reoShowStatusBar, reoShowHints, reoShowRuler, reoShowInsertObject, reoCloseOnEscape, reoFlatButtons, reoShowSpellCheck, reoShowMainMenuIcons]
            EditorCaption = 'Descri'#231#227'o da Microscopia'
            EditorPosition.Left = 0
            EditorPosition.Top = 0
            EditorPosition.Width = 0
            EditorPosition.Height = 0
            MeasurementUnits = muCentimeters
            PrintMargins.Top = 1.000000000000000000
            PrintMargins.Bottom = 1.000000000000000000
            PrintMargins.Left = 1.000000000000000000
            PrintMargins.Right = 1.000000000000000000
            PrintHeader.VertMargin = 0.500000000000000000
            PrintHeader.Font.Charset = DEFAULT_CHARSET
            PrintHeader.Font.Color = clWindowText
            PrintHeader.Font.Height = -11
            PrintHeader.Font.Name = 'Tahoma'
            PrintHeader.Font.Style = []
            PrintFooter.VertMargin = 0.500000000000000000
            PrintFooter.Font.Charset = DEFAULT_CHARSET
            PrintFooter.Font.Color = clWindowText
            PrintFooter.Font.Height = -11
            PrintFooter.Font.Name = 'Tahoma'
            PrintFooter.Font.Style = []
            RichEditVersion = 2
            Data = {
              640000007B5C727466315C616E73695C64656666307B5C666F6E7474626C7B5C
              66305C666E696C204D532053616E732053657269663B7D7D0D0A5C766965776B
              696E64345C7563315C706172645C6C616E67313034365C66305C667331365C70
              61720D0A7D0D0A00}
          end
          object meDiagnostico: TwwDBRichEditMSWord
            Left = 4
            Top = 154
            Width = 780
            Height = 116
            Hint = 'Insere o exame solicitado'#13#10'Diagn'#243'stico!'
            CustomHint = BalloonHint1
            TabStop = False
            ScrollBars = ssVertical
            AutoURLDetect = True
            DataField = 'ehr_diagnostico'
            DataSource = dsMicroscopia
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            GutterWidth = 3
            HideSelection = False
            HideScrollBars = False
            ParentFont = False
            ParentShowHint = False
            PrintJobName = 'Next Sistemas'
            ReadOnly = True
            ShowHint = False
            TabOrder = 1
            WantTabs = True
            PopupOptions = [rpoPopupEdit, rpoPopupCut, rpoPopupCopy, rpoPopupPaste, rpoPopupBold, rpoPopupItalic, rpoPopupUnderline, rpoPopupFont, rpoPopupBullet, rpoPopupParagraph, rpoPopupTabs, rpoPopupFind, rpoPopupReplace, rpoPopupInsertObject, rpoPopupMSWordSpellCheck]
            EditorOptions = [reoShowLoad, reoShowSaveAs, reoShowSaveExit, reoShowPrint, reoShowPageSetup, reoShowFormatBar, reoShowToolBar, reoShowStatusBar, reoShowHints, reoShowRuler, reoShowInsertObject, reoCloseOnEscape, reoFlatButtons, reoShowSpellCheck, reoShowMainMenuIcons]
            EditorCaption = 'Diagn'#243'stico'
            EditorPosition.Left = 0
            EditorPosition.Top = 0
            EditorPosition.Width = 0
            EditorPosition.Height = 0
            MeasurementUnits = muCentimeters
            PrintMargins.Top = 1.000000000000000000
            PrintMargins.Bottom = 1.000000000000000000
            PrintMargins.Left = 1.000000000000000000
            PrintMargins.Right = 1.000000000000000000
            PrintHeader.VertMargin = 0.500000000000000000
            PrintHeader.Font.Charset = DEFAULT_CHARSET
            PrintHeader.Font.Color = clWindowText
            PrintHeader.Font.Height = -11
            PrintHeader.Font.Name = 'Tahoma'
            PrintHeader.Font.Style = []
            PrintFooter.VertMargin = 0.500000000000000000
            PrintFooter.Font.Charset = DEFAULT_CHARSET
            PrintFooter.Font.Color = clWindowText
            PrintFooter.Font.Height = -11
            PrintFooter.Font.Name = 'Tahoma'
            PrintFooter.Font.Style = []
            RichEditVersion = 2
            Data = {
              640000007B5C727466315C616E73695C64656666307B5C666F6E7474626C7B5C
              66305C666E696C204D532053616E732053657269663B7D7D0D0A5C766965776B
              696E64345C7563315C706172645C6C616E67313034365C66305C667331365C70
              61720D0A7D0D0A00}
          end
          object meNota: TwwDBRichEditMSWord
            Left = 4
            Top = 286
            Width = 780
            Height = 95
            Hint = 'Insere o exame solicitado'#13#10'Nota/Complemento!'
            CustomHint = BalloonHint1
            TabStop = False
            ScrollBars = ssVertical
            AutoURLDetect = True
            DataField = 'ehr_complemento'
            DataSource = dsMicroscopia
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            GutterWidth = 3
            HideSelection = False
            HideScrollBars = False
            ParentFont = False
            ParentShowHint = False
            PrintJobName = 'Next Sistemas'
            ReadOnly = True
            ShowHint = False
            TabOrder = 2
            WantTabs = True
            PopupOptions = [rpoPopupEdit, rpoPopupCut, rpoPopupCopy, rpoPopupPaste, rpoPopupBold, rpoPopupItalic, rpoPopupUnderline, rpoPopupFont, rpoPopupBullet, rpoPopupParagraph, rpoPopupTabs, rpoPopupFind, rpoPopupReplace, rpoPopupInsertObject, rpoPopupMSWordSpellCheck]
            EditorOptions = [reoShowLoad, reoShowSaveAs, reoShowSaveExit, reoShowPrint, reoShowPageSetup, reoShowFormatBar, reoShowToolBar, reoShowStatusBar, reoShowHints, reoShowRuler, reoShowInsertObject, reoCloseOnEscape, reoFlatButtons, reoShowSpellCheck, reoShowMainMenuIcons]
            EditorCaption = 'Nota / Complemento'
            EditorPosition.Left = 0
            EditorPosition.Top = 0
            EditorPosition.Width = 0
            EditorPosition.Height = 0
            MeasurementUnits = muCentimeters
            PrintMargins.Top = 1.000000000000000000
            PrintMargins.Bottom = 1.000000000000000000
            PrintMargins.Left = 1.000000000000000000
            PrintMargins.Right = 1.000000000000000000
            PrintHeader.VertMargin = 0.500000000000000000
            PrintHeader.Font.Charset = DEFAULT_CHARSET
            PrintHeader.Font.Color = clWindowText
            PrintHeader.Font.Height = -11
            PrintHeader.Font.Name = 'Tahoma'
            PrintHeader.Font.Style = []
            PrintFooter.VertMargin = 0.500000000000000000
            PrintFooter.Font.Charset = DEFAULT_CHARSET
            PrintFooter.Font.Color = clWindowText
            PrintFooter.Font.Height = -11
            PrintFooter.Font.Name = 'Tahoma'
            PrintFooter.Font.Style = []
            RichEditVersion = 2
            Data = {
              640000007B5C727466315C616E73695C64656666307B5C666F6E7474626C7B5C
              66305C666E696C204D532053616E732053657269663B7D7D0D0A5C766965776B
              696E64345C7563315C706172645C6C616E67313034365C66305C667331365C70
              61720D0A7D0D0A00}
          end
        end
      end
    end
    object tsImuno: TTabSheet
      CustomHint = BalloonHint1
      Caption = 'Captura H'#237'brida'
      ImageIndex = 6
      object Label35: TLabel
        Left = 8
        Top = 32
        Width = 126
        Height = 13
        CustomHint = BalloonHint1
        Caption = 'Procedimentos solicitados:'
      end
      object Label36: TLabel
        Left = 8
        Top = 8
        Width = 42
        Height = 13
        CustomHint = BalloonHint1
        Caption = 'Exame:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText6: TDBText
        Left = 56
        Top = 8
        Width = 145
        Height = 17
        CustomHint = BalloonHint1
        DataField = 'exa_id'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object btCarregar: TBitBtn
        Left = 8
        Top = 256
        Width = 105
        Height = 25
        Hint = 'Carrega exame'
        CustomHint = BalloonHint1
        Caption = '&Carregar'
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FF993300FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF993300
          993300FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FF993300993300993300FF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FF993300AA5F1F993300FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF993300BA7D4899330099
          3300FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FF993300CDA27CD8B596993300993300FF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF993300E1
          C6B0ECDCCDEDDDD1993300FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FF993300F4E9E2FDF9F5FBF4EC9933009933
          00FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF99
          3300E1C0ABF7E9DAF4E0CCE1BA9C993300993300FF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FF993300F6E6D6F3DEC8F0D5BAE3B995993300FF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF99
          3300EDCAA8EAC199E7B98BDFA875993300FF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF993300E3AE79E0A56BDD9C5CDA94
          4F993300FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FF993300993300993300993300993300993300FF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = btCarregarClick
      end
      object wwDBGrid4: TwwDBGrid
        Left = 8
        Top = 52
        Width = 777
        Height = 193
        Hint = 'Topografias solicitadas'
        CustomHint = BalloonHint1
        ControlType.Strings = (
          'etg_reserva;CheckBox;True;False')
        IniAttributes.Delimiter = ';;'
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        DataSource = dsProcedimentos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = False
        TabOrder = 1
        TitleAlignment = taLeftJustify
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        TitleLines = 1
        TitleButtons = False
      end
    end
    object tsLogs: TTabSheet
      CustomHint = BalloonHint1
      Caption = 'Logs e Informa'#231#245'es'
      ImageIndex = 3
      object DBText1: TDBText
        Left = 56
        Top = 8
        Width = 145
        Height = 17
        CustomHint = BalloonHint1
        DataField = 'exa_id'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label12: TLabel
        Left = 8
        Top = 8
        Width = 42
        Height = 13
        CustomHint = BalloonHint1
        Caption = 'Exame:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object wwDBGrid1: TwwDBGrid
        Left = 5
        Top = 32
        Width = 477
        Height = 481
        Hint = 'Resultado da pesquisa'
        CustomHint = BalloonHint1
        TabStop = False
        IniAttributes.FileName = 'genesis'
        IniAttributes.SectionName = 'telasgrid'
        IniAttributes.Delimiter = '#'
        IniAttributes.CheckNewFields = True
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        DataSource = dsConsLogs
        KeyOptions = []
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
        ParentShowHint = False
        ReadOnly = True
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
      end
      object Panel5: TPanel
        Left = 488
        Top = 32
        Width = 513
        Height = 67
        CustomHint = BalloonHint1
        BevelInner = bvLowered
        Color = clInfoBk
        TabOrder = 1
        object Label29: TLabel
          Left = 8
          Top = 8
          Width = 155
          Height = 13
          CustomHint = BalloonHint1
          Caption = #218'ltima altera'#231#227'o no exame:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbUltEtapaAlt: TLabel
          Left = 168
          Top = 8
          Width = 62
          Height = 13
          CustomHint = BalloonHint1
          Caption = 'lbUltEtapaAlt'
        end
        object Label30: TLabel
          Left = 344
          Top = 8
          Width = 97
          Height = 13
          CustomHint = BalloonHint1
          Caption = #218'ltima altera'#231#227'o:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbUltAlt: TLabel
          Left = 448
          Top = 8
          Width = 56
          Height = 13
          CustomHint = BalloonHint1
          Caption = '00/00/0000'
        end
        object Label34: TLabel
          Left = 8
          Top = 27
          Width = 70
          Height = 13
          CustomHint = BalloonHint1
          Caption = 'Etapa atual:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbEtapaAtual2: TLabel
          Left = 80
          Top = 27
          Width = 66
          Height = 13
          CustomHint = BalloonHint1
          Caption = 'lbEtapaAtual2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label46: TLabel
          Left = 8
          Top = 46
          Width = 92
          Height = 13
          CustomHint = BalloonHint1
          Caption = 'Data da requisi'#231#227'o:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label47: TLabel
          Left = 320
          Top = 46
          Width = 94
          Height = 13
          CustomHint = BalloonHint1
          Caption = 'Data da finaliza'#231#227'o:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBText9: TDBText
          Left = 112
          Top = 46
          Width = 65
          Height = 17
          CustomHint = BalloonHint1
          DataField = 'exa_data'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object lbDataFinal: TLabel
          Left = 424
          Top = 46
          Width = 53
          Height = 13
          CustomHint = BalloonHint1
          Caption = 'lbDataFinal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
      end
      object Panel6: TPanel
        Left = 488
        Top = 105
        Width = 513
        Height = 382
        CustomHint = BalloonHint1
        BevelInner = bvLowered
        TabOrder = 2
        object Label33: TLabel
          Left = 8
          Top = 8
          Width = 75
          Height = 13
          CustomHint = BalloonHint1
          Caption = 'Observa'#231#245'es'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object btGravar: TBitBtn
          Left = 419
          Top = 346
          Width = 85
          Height = 25
          Hint = 'Grava as altera'#231#245'es nas observa'#231#245'es'
          CustomHint = BalloonHint1
          Caption = '&Gravar'
          Enabled = False
          Glyph.Data = {
            36060000424D3606000000000000360000002800000020000000100000000100
            18000000000000060000C40E0000C40E00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FF0955A10857A60557AA0655A70954A00954A0FF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFF6AA5EF7A859FA
            A855F9AA58F6AB5FF6AB5FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FF0872DD0362C3006CDB0877E7117DEA0877E70069DD005DC70654A50654
            A5FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFF78D22FC9D3CFF9324F78818EE
            8215F78818FF9622FFA238F9AB5AF9AB5AFF00FFFF00FFFF00FFFF00FFFF00FF
            0F6BC90872DD3E99F591C4F9D6E9FDEEF7FFE4F1FFB0D4FB59A5F50570E5035A
            B70B5095FF00FFFF00FFFF00FFFF00FFF09436F78D22C1660A6E3B0629160211
            08001B0E004F2B04A65A0AFA8F1AFCA548F4AF6AFF00FFFF00FFFF00FF1278E0
            127CE870B4F9F6FAFEFFFFFFEEF6FDD3E6FBE2EEFDFFFFFFFFFFFFAED2FA0E78
            ED025AB60653A2FF00FFFF00FFED871FED83178F4B060905010000001109022C
            19041D1102000000000000512D05F18712FDA549F9AC5DFF00FFFF00FF1278E0
            6DB2F9FEFEFFF4F9FE77B6F63391F0B5D5F91B7FEA4693EEC9E0FAFFFFFFB0D5
            FA0970E60653A2FF00FFFF00FFED871F924D060101000B0601884909CC6E0F4A
            2A06E48015B96C11361F050000004F2A05F68F19F9AC5DFF00FF0B70D53695F4
            E8F3FEFFFFFF4FA3F61F88F2D4E7FCFFFFFF489BEF0065E60E74E8C9E1FAFFFF
            FF58A5F5005EC70858ABF48F2AC96A0B170C01000000B05C09E0770D2B180300
            0000B76410FF9A19F18B17361E05000000A75A0AFFA138F7A754137AE371B5FB
            FFFFFFB2D7FC469FF7DEEEFDFDFEFEE0EEFDA1CCF80173E9006AE74294EDFFFF
            FFB3D7FB016BDE0858ABEC851C8E4A040000004D2803B960082111020201011F
            11025E3307FE8C16FF9518BD6B120000004C2804FE9421F7A7541F85ECA2CFFD
            FFFFFF71B7FDACD4FDFAFCFF66AFF83F9AF5E2EFFD2D8EF00075EB0575E9E2EE
            FCE6F3FF0E7BE9065AB0E07A135D30020000008E4802532B02050300995007C0
            650A1D1002D2710FFF8A14FA8A161D1103190C00F18416F9A54F2F8FF1B7DAFD
            FFFFFF6BB4FF3C9DFE4FA5FB1D8AF81484F5A0CDFB84BDF8067AEF0374EBD4E8
            FBF0F8FF1A82EC055CB5D0700E482502000000944B00C36201B05A04E27507EB
            7B0A5F32047B4207F98510FC8B142B17040F0700E57D13FAA34A3693F0B8DAFE
            FFFFFF8EC6FF2391FF2E95FE2B93FC218CF92D92F79ACAFB1D86F21D86F0F3F8
            FED9EBFE117DE9095CB2C96C0F472501000000713900DC6E00D16A01D46C03DE
            7306D26D08653504E2790DE2790F0C0701261401EE8216F6A34D2689EDAFD6FD
            FFFFFFE1F0FF3499FF2F96FF3399FF2E94FD218CF950A4F9419BF77DBBF8FFFF
            FF99C9FA0773E10958ABD976125029020000001E0F00CB6600D06900CC6600D1
            6B02DE7306AF5B06BE6408824407000000663605F88C1EF6A754FF00FF3994F0
            F1F8FFFFFFFFADD6FF3499FF2592FF2893FF238FFC1788FA6FB4FAF4FAFFF5FA
            FE49A0F7076ACEFF00FFFF00FFC66B0F0E0700000000522900CB6600DA6D00D7
            6C00DC7003E87705904B050B05000A0501B65F08F89531FF00FFFF00FF3994F0
            CDE6FFF6FAFFFFFFFFE0EFFF8DC6FF6EB6FE79BBFFB6DAFEFFFFFFFFFFFF78B9
            F9137BE6076ACEFF00FFFF00FFC66B0F3219000905000000001F100072390091
            4901864400492501000000000000874606EC8419F89531FF00FFFF00FFFF00FF
            64ACF6D4EAFFF9FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7F3FE77B8FA1D85
            ED0D6DD0FF00FFFF00FFFF00FFFF00FF9B53092B150006030000000000000000
            0000000000000000180C01884705E27A12F2922FFF00FFFF00FFFF00FFFF00FF
            FF00FF459AF0A7D2FCD8ECFFE2F1FFE4F1FED1E7FE9DCDFD4DA2F7177FE8177F
            E8FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFBA650F582D032713001D0E001B
            0E012E1801623202B25D08E88017E88017FF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FF3B94F061ABF665ADF7489EF42286EC127AE4FF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC46B0F9E54099A
            5208B7610BDD7913ED851BFF00FFFF00FFFF00FFFF00FFFF00FF}
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          TabStop = False
          Visible = False
          OnClick = btGravarClick
        end
        object dbObs: TDBMemo
          Left = 8
          Top = 24
          Width = 497
          Height = 65
          Hint = 'Observa'#231#245'es iniciais acerda do exame.'
          CustomHint = BalloonHint1
          TabStop = False
          Color = clBtnFace
          DataField = 'exa_obs'
          DataSource = dsConsulta
          ParentShowHint = False
          ReadOnly = True
          ScrollBars = ssBoth
          ShowHint = False
          TabOrder = 1
        end
        object dbObservacoes: TwwDBRichEditMSWord
          Left = 8
          Top = 96
          Width = 497
          Height = 233
          Hint = 'Observa'#231#245'es gerais'
          CustomHint = BalloonHint1
          TabStop = False
          ScrollBars = ssVertical
          AutoURLDetect = False
          DataField = 'exa_obs'
          DataSource = dsObs
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          GutterWidth = 3
          HideSelection = False
          ParentFont = False
          ParentShowHint = False
          PrintJobName = 'Next Sistemas'
          ReadOnly = True
          ShowHint = False
          TabOrder = 2
          EditorOptions = [reoShowSaveExit, reoShowPrint, reoShowPrintPreview, reoShowPageSetup, reoShowFormatBar, reoShowToolBar, reoShowStatusBar, reoShowHints, reoShowRuler, reoShowInsertObject, reoCloseOnEscape, reoFlatButtons, reoShowSpellCheck, reoShowMainMenuIcons, reoShowZoomCombo]
          EditorCaption = 'Observa'#231#245'es'
          EditorPosition.Left = 0
          EditorPosition.Top = 0
          EditorPosition.Width = 0
          EditorPosition.Height = 0
          MeasurementUnits = muCentimeters
          PrintMargins.Top = 1.000000000000000000
          PrintMargins.Bottom = 1.000000000000000000
          PrintMargins.Left = 1.000000000000000000
          PrintMargins.Right = 1.000000000000000000
          PrintHeader.VertMargin = 0.500000000000000000
          PrintHeader.Font.Charset = DEFAULT_CHARSET
          PrintHeader.Font.Color = clWindowText
          PrintHeader.Font.Height = -11
          PrintHeader.Font.Name = 'Tahoma'
          PrintHeader.Font.Style = []
          PrintFooter.VertMargin = 0.500000000000000000
          PrintFooter.Font.Charset = DEFAULT_CHARSET
          PrintFooter.Font.Color = clWindowText
          PrintFooter.Font.Height = -11
          PrintFooter.Font.Name = 'Tahoma'
          PrintFooter.Font.Style = []
          RichEditVersion = 2
          Data = {
            810000007B5C727466315C616E73695C616E7369637067313235325C64656666
            305C6465666C616E67313034367B5C666F6E7474626C7B5C66305C666E696C20
            4D532053616E732053657269663B7D7D0D0A5C766965776B696E64345C756331
            5C706172645C66305C667331362064624F627365727661636F65735C7061720D
            0A7D0D0A00}
        end
        object btNovaObs: TBitBtn
          Left = 8
          Top = 346
          Width = 105
          Height = 25
          Hint = 'adiciona nova observa'#231#227'o.'
          CustomHint = BalloonHint1
          Caption = '&Nova obs'
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
          TabOrder = 3
          OnClick = btNovaObsClick
        end
      end
      object btArquivos: TBitBtn
        Left = 496
        Top = 493
        Width = 105
        Height = 25
        Hint = 'Abre gerenciador de arquivos'
        CustomHint = BalloonHint1
        Caption = '&Arquivos'
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF1CA5D51CA5D51CA5D51CA5D51C
          A5D51CA5D51CA5D5FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          1CA5D581DAF488D3EC6CA3B456A8C246C0EA40BDE83DBBE71CA5D5FF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FF1CA5D5A1E9FC899799AE9A987E6C684E
          A3BB46C1EA42BEE91CA5D5FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          1CA5D5B0EFFF90918FD3CCC99C8780677B7E53C9EE4CC5EC1CA5D5FF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FF1CA5D5B8F3FFC4DDE6A39C98C9C3C07B
          6E6660C8E55BCFF11CA5D5FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          1CA5D5B8F2FFDAF5FFADC0C4C6BBB9B1AAA4618B9063B7CC1CA5D5FF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FF1CA5D5B8F2FFD9F5FFD3F4FF8C9E9FDD
          D5D4A19691968F8C1CA5D5FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          1CA5D5B8F2FFD9F5FFD2F4FFAEE6F48A9795DDD6D6AB9F999C88816851437D6A
          5E735E53FF00FFFF00FFFF00FFFF00FF1CA5D5B8F2FFD9F5FFD2F4FFB4F0FF7E
          CBDAADADAACEC9C6AFA39ED1C2C1D2C2C1D4C6C5907E75FF00FFFF00FFFF00FF
          1CA5D5B8F2FFD9F5FFD2F4FFB4F0FF89E9FE72AFB8CEC7C5D2C9C7EAE1E1EBE1
          E1F3ECEDC4BBB7FF00FFFF00FFFF00FF1CA5D5BAF3FFDFF8FFDAF8FFBBF4FF8E
          ECFF729DA1D5CDCBF2EDEEECE6E6F0EBEBF7F3F3F5F3F3756357FF00FFFF00FF
          1CA5D5B7F3FFCDF0FBB9E9F798E3F674D5EB9A958EFFFFFFF5F4F4F7F7F7F7F7
          F8B9B1AACCC5C1736054FF00FFFF00FF1CA5D57AD3EE82D1EC7ED0EC73CFEC65
          CCEB72AFBED0CBC7FFFFFFE5E3E29688807E6D62B6ACA787776CFF00FFFF00FF
          1CA5D59FE0F4AEEDF9A9EFFD9FEFFE92ECFD85E7FA9E9189DEDBD9C9C2BEA398
          90CAC5C096887F736054FF00FFFF00FFFF00FF1CA5D51CA5D51CA5D51CA5D51C
          A5D51CA5D51CA5D587776C87776CA69C9293867B736054FF00FF}
        ParentShowHint = False
        ShowHint = False
        TabOrder = 3
        OnClick = btArquivosClick
      end
    end
    object tsProcedimentos: TTabSheet
      CustomHint = BalloonHint1
      Caption = 'Procedimentos'
      ImageIndex = 4
      object Label23: TLabel
        Left = 8
        Top = 8
        Width = 42
        Height = 13
        CustomHint = BalloonHint1
        Caption = 'Exame:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText4: TDBText
        Left = 56
        Top = 8
        Width = 145
        Height = 17
        CustomHint = BalloonHint1
        DataField = 'exa_id'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label25: TLabel
        Left = 8
        Top = 32
        Width = 126
        Height = 13
        CustomHint = BalloonHint1
        Caption = 'Procedimentos solicitados:'
      end
      object wwDBGrid3: TwwDBGrid
        Left = 8
        Top = 52
        Width = 777
        Height = 193
        Hint = 'Topografias solicitadas'
        CustomHint = BalloonHint1
        ControlType.Strings = (
          'etg_reserva;CheckBox;True;False')
        Selected.Strings = (
          'prc_tuss'#9'10'#9'TUSS'#9#9
          'exp_quant'#9'10'#9'Quantidade'#9#9
          'prc_descricao'#9'80'#9'Descri'#231#227'o'#9#9
          'exp_unitario'#9'10'#9'Vlr. Unit.'#9#9
          'exp_total'#9'10'#9'Total'#9#9)
        IniAttributes.Delimiter = ';;'
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        DataSource = dsProcedimentos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = False
        TabOrder = 0
        TitleAlignment = taLeftJustify
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        TitleLines = 1
        TitleButtons = False
      end
    end
    object tsDoencas: TTabSheet
      CustomHint = BalloonHint1
      Caption = 'Doen'#231'as'
      ImageIndex = 5
      object Label24: TLabel
        Left = 8
        Top = 8
        Width = 42
        Height = 13
        CustomHint = BalloonHint1
        Caption = 'Exame:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText5: TDBText
        Left = 56
        Top = 8
        Width = 145
        Height = 17
        CustomHint = BalloonHint1
        DataField = 'exa_id'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label26: TLabel
        Left = 8
        Top = 32
        Width = 45
        Height = 13
        CustomHint = BalloonHint1
        Caption = 'Doen'#231'as:'
      end
      object DBGrid2: TDBGrid
        Left = 8
        Top = 48
        Width = 585
        Height = 153
        Hint = 'Doen'#231'as vinculadas com o Exame'
        CustomHint = BalloonHint1
        TabStop = False
        DataSource = dsExameDoencas
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
            FieldName = 'sct_subcat'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sct_descabrev'
            Visible = True
          end>
      end
    end
    object tsFinanceiro: TTabSheet
      CustomHint = BalloonHint1
      Caption = 'Financeiro'
      ImageIndex = 7
      object Panel7: TPanel
        Left = 0
        Top = 0
        Width = 1005
        Height = 97
        CustomHint = BalloonHint1
        Align = alTop
        BevelInner = bvLowered
        Color = clGray
        TabOrder = 0
        object Label37: TLabel
          Left = 8
          Top = 8
          Width = 107
          Height = 13
          CustomHint = BalloonHint1
          Caption = 'Dados financeiros:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label38: TLabel
          Left = 8
          Top = 32
          Width = 35
          Height = 13
          CustomHint = BalloonHint1
          Caption = 'Status:'
        end
        object Label39: TLabel
          Left = 8
          Top = 52
          Width = 79
          Height = 13
          CustomHint = BalloonHint1
          Caption = 'Valor levantado:'
        end
        object Label40: TLabel
          Left = 8
          Top = 72
          Width = 84
          Height = 13
          CustomHint = BalloonHint1
          Caption = 'Valor antecipado:'
        end
        object DBText7: TDBText
          Left = 96
          Top = 52
          Width = 105
          Height = 17
          Hint = 'Valor calculado com os exames inseridos'
          CustomHint = BalloonHint1
          Alignment = taRightJustify
          DataField = 'eco_valor'
          ParentShowHint = False
          ShowHint = True
        end
        object DBText8: TDBText
          Left = 96
          Top = 72
          Width = 105
          Height = 17
          Hint = 'Valor pago de entrada'
          CustomHint = BalloonHint1
          Alignment = taRightJustify
          DataField = 'eco_vlrpago'
          ParentShowHint = False
          ShowHint = True
        end
        object Label41: TLabel
          Left = 216
          Top = 32
          Width = 198
          Height = 13
          CustomHint = BalloonHint1
          Caption = '(Verifica se foi ou n'#227'o gerado a cobran'#231'a)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clSilver
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label42: TLabel
          Left = 216
          Top = 52
          Width = 243
          Height = 13
          CustomHint = BalloonHint1
          Caption = '(Levanta o valor conforme procedimentos inseridos)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clSilver
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label43: TLabel
          Left = 216
          Top = 72
          Width = 217
          Height = 13
          CustomHint = BalloonHint1
          Caption = '(Verifica se foi pago e qual o valor da entrada)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clSilver
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBCheckBox1: TDBCheckBox
          Left = 96
          Top = 32
          Width = 105
          Height = 17
          Hint = 'Verifica se foi ou n'#227'o gerado a cobran'#231'a'
          CustomHint = BalloonHint1
          Caption = 'Gerado cobran'#231'a'
          DataField = 'eco_status'
          ParentShowHint = False
          ReadOnly = True
          ShowHint = True
          TabOrder = 0
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
        object Panel3: TPanel
          Left = 818
          Top = 2
          Width = 185
          Height = 93
          CustomHint = BalloonHint1
          Align = alRight
          BevelInner = bvLowered
          TabOrder = 1
          object Label11: TLabel
            Left = 8
            Top = 6
            Width = 69
            Height = 13
            CustomHint = BalloonHint1
            Caption = 'Enviado e-mail'
          end
          object lbEnvEmail: TLabel
            Left = 8
            Top = 30
            Width = 50
            Height = 13
            CustomHint = BalloonHint1
            Caption = 'lbEnvEmail'
          end
        end
      end
      object Panel8: TPanel
        Left = 0
        Top = 97
        Width = 1005
        Height = 87
        CustomHint = BalloonHint1
        Align = alTop
        BevelInner = bvLowered
        TabOrder = 1
        object Label44: TLabel
          Left = 8
          Top = 8
          Width = 116
          Height = 13
          CustomHint = BalloonHint1
          Caption = 'Dados da cobran'#231'a:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object wwDBGrid5: TwwDBGrid
          Left = 8
          Top = 24
          Width = 972
          Height = 56
          Hint = 'Dados da cobran'#231'a'
          CustomHint = BalloonHint1
          TabStop = False
          IniAttributes.Delimiter = ';;'
          TitleColor = clBtnFace
          FixedCols = 0
          ShowHorzScrollBar = True
          Color = clBtnFace
          DataSource = dsReceber
          ParentShowHint = False
          ReadOnly = True
          ShowHint = False
          TabOrder = 0
          TitleAlignment = taLeftJustify
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          TitleLines = 1
          TitleButtons = False
        end
      end
      object Panel9: TPanel
        Left = 0
        Top = 184
        Width = 1005
        Height = 341
        CustomHint = BalloonHint1
        Align = alTop
        BevelInner = bvLowered
        TabOrder = 2
        object Label45: TLabel
          Left = 8
          Top = 8
          Width = 123
          Height = 13
          CustomHint = BalloonHint1
          Caption = 'Exames da cobran'#231'a:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object GridExames: TwwDBGrid
          Left = 8
          Top = 27
          Width = 785
          Height = 309
          Hint = 'Exames da cobran'#231'a'
          CustomHint = BalloonHint1
          TabStop = False
          Selected.Strings = (
            'his_item'#9'5'#9'Item'#9'F'#9
            'exa_id'#9'10'#9'ID Exame'#9'F'#9
            'pac_nome'#9'45'#9'Paciente'#9'F'#9
            'his_valor'#9'10'#9'Valor'#9'F'#9
            'med_nome'#9'45'#9'M'#233'dico'#9'F'#9
            'his_status'#9'1'#9'Status'#9'F'#9)
          IniAttributes.Delimiter = ';;'
          TitleColor = clBtnFace
          FixedCols = 0
          ShowHorzScrollBar = True
          DataSource = dsHistRec
          ParentShowHint = False
          ReadOnly = True
          ShowHint = False
          TabOrder = 0
          TitleAlignment = taLeftJustify
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          TitleLines = 1
          TitleButtons = False
          OnDrawDataCell = GridExamesDrawDataCell
        end
      end
    end
    object tsTiss: TTabSheet
      CustomHint = BalloonHint1
      Caption = 'Tiss'
      ImageIndex = 8
      object Label10: TLabel
        Left = 8
        Top = 48
        Width = 98
        Height = 13
        CustomHint = BalloonHint1
        Caption = 'Tipo de atendimento'
      end
      object cbTpAtendimento: TwwDBComboBox
        Left = 3
        Top = 67
        Width = 217
        Height = 21
        CustomHint = BalloonHint1
        ShowButton = True
        Style = csDropDown
        MapList = True
        AllowClearKey = False
        DataField = 'tis_tipoatend'
        DataSource = dsExamesTISS
        DropDownCount = 8
        ItemHeight = 0
        Items.Strings = (
          '05 - Exame'#9'5'
          '07 - Internado'#9'7')
        Sorted = False
        TabOrder = 1
        UnboundDataType = wwDefault
      end
      object btGravarTISS: TBitBtn
        Left = 242
        Top = 92
        Width = 105
        Height = 25
        Hint = 'Grava altera'#231#245'es no TISS'
        CustomHint = BalloonHint1
        Caption = 'Gravar'
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF000955A1000857A6000557AA000655A7000954
          A0000954A000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF000872DD000362C300006CDB000877E700117DEA000877E7000069
          DD00005DC7000654A5000654A500FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF000F6BC9000872DD003E99F50091C4F900D6E9FD00EEF7FF00E4F1FF00B0D4
          FB0059A5F5000570E500035AB7000B509500FF00FF00FF00FF00FF00FF001278
          E000127CE80070B4F900F6FAFE00FFFFFF00EEF6FD00D3E6FB00E2EEFD00FFFF
          FF00FFFFFF00AED2FA000E78ED00025AB6000653A200FF00FF00FF00FF001278
          E0006DB2F900FEFEFF00F4F9FE0077B6F6003391F000B5D5F9001B7FEA004693
          EE00C9E0FA00FFFFFF00B0D5FA000970E6000653A200FF00FF000B70D5003695
          F400E8F3FE00FFFFFF004FA3F6001F88F200D4E7FC00FFFFFF00489BEF000065
          E6000E74E800C9E1FA00FFFFFF0058A5F500005EC7000858AB00137AE30071B5
          FB00FFFFFF00B2D7FC00469FF700DEEEFD00FDFEFE00E0EEFD00A1CCF8000173
          E900006AE7004294ED00FFFFFF00B3D7FB00016BDE000858AB001F85EC00A2CF
          FD00FFFFFF0071B7FD00ACD4FD00FAFCFF0066AFF8003F9AF500E2EFFD002D8E
          F0000075EB000575E900E2EEFC00E6F3FF000E7BE900065AB0002F8FF100B7DA
          FD00FFFFFF006BB4FF003C9DFE004FA5FB001D8AF8001484F500A0CDFB0084BD
          F800067AEF000374EB00D4E8FB00F0F8FF001A82EC00055CB5003693F000B8DA
          FE00FFFFFF008EC6FF002391FF002E95FE002B93FC00218CF9002D92F7009ACA
          FB001D86F2001D86F000F3F8FE00D9EBFE00117DE900095CB2002689ED00AFD6
          FD00FFFFFF00E1F0FF003499FF002F96FF003399FF002E94FD00218CF90050A4
          F900419BF7007DBBF800FFFFFF0099C9FA000773E1000958AB00FF00FF003994
          F000F1F8FF00FFFFFF00ADD6FF003499FF002592FF002893FF00238FFC001788
          FA006FB4FA00F4FAFF00F5FAFE0049A0F700076ACE00FF00FF00FF00FF003994
          F000CDE6FF00F6FAFF00FFFFFF00E0EFFF008DC6FF006EB6FE0079BBFF00B6DA
          FE00FFFFFF00FFFFFF0078B9F900137BE600076ACE00FF00FF00FF00FF00FF00
          FF0064ACF600D4EAFF00F9FCFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00E7F3FE0077B8FA001D85ED000D6DD000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00459AF000A7D2FC00D8ECFF00E2F1FF00E4F1FE00D1E7FE009DCD
          FD004DA2F700177FE800177FE800FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF003B94F00061ABF60065ADF700489EF4002286
          EC00127AE400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        TabOrder = 2
        OnClick = btGravarTISSClick
      end
      object btCancelarTISS: TBitBtn
        Left = 242
        Top = 116
        Width = 105
        Height = 25
        Hint = 'Cancela altera'#231#245'es no TISS'
        CustomHint = BalloonHint1
        Caption = 'Cancelar'
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF000955A1000857A6000557AA000655A7000954
          A0000954A000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF000872DD000362C300006CDB000877E700117DEA000877E7000069
          DD00005DC7000654A5000654A500FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF000F6BC9000872DD003E99F50091C4F900D6E9FD00EEF7FF00E4F1FF00B0D4
          FB0059A5F5000570E500035AB7000B509500FF00FF00FF00FF00FF00FF001278
          E000127CE80070B4F900F6FAFE00FFFFFF00EEF6FD00D3E6FB00E2EEFD00FFFF
          FF00FFFFFF00AED2FA000E78ED00025AB6000653A200FF00FF00FF00FF001278
          E0006DB2F900FEFEFF00E9F3FD001E7FF0000D73ED001474EB00066BE9000C6F
          E80089B9F400E6F0FD00B0D5FA000970E6000653A200FF00FF000B70D5003695
          F400E8F3FE00FFFFFF0089BAF4008FC0F9002A86F1001075EE001275EC001E79
          EC0084B5F40089BAF400FFFFFF0058A5F500005EC7000858AB00137AE30071B5
          FB00FFFFFF00B2D7FC00278CF90092C4FB00DAEAFD00318BF300388DF200D7E8
          FC0087B8F5000D71EA00E6F0FD00B3D7FB00016BDE000858AB001F85EC00A2CF
          FD00FFFFFF00419EFD003495FB00298DF90092C5FB00E6F1FE00E5F1FD0088BC
          F7001075EE000B70EB00B4D2F800E6F3FF000E7BE900065AB0002F8FF100B7DA
          FD00FFFFFF00419FFF003196FE003094FC00469EFC00F1F8FE00F1F8FE003892
          F500187DF1001378EF009FC9F700F0F8FF001A82EC00055CB5003693F000B8DA
          FE00FFFFFF0059ACFF003499FF0055A9FE00E8F3FF0085BFFD0083BDFC00E7F2
          FE004498F6001A7FF200D3E6FC00D9EBFE00117DE900095CB2002689ED00AFD6
          FD00FFFFFF00C3E1FF004AA4FF00EDF6FF0081C0FF003296FE002E93FC007BBA
          FD00EBF5FE0059A5F800E9F3FE0099C9FA000773E1000958AB00FF00FF003994
          F000F1F8FF00FBFDFF0078BBFF0061AFFF003499FF003499FF003398FF003095
          FD0068B0FC00F4FAFF00F5FAFE0049A0F700076ACE00FF00FF00FF00FF003994
          F000CDE6FF00F6FAFF00FBFDFF00C1DFFF0058ABFF0043A0FF0049A3FF0084C1
          FE00FBFDFF00FFFFFF0078B9F900137BE600076ACE00FF00FF00FF00FF00FF00
          FF0064ACF600D4EAFF00F9FCFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00E7F3FE0077B8FA001D85ED000D6DD000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00459AF000A7D2FC00D8ECFF00E2F1FF00E4F1FE00D1E7FE009DCD
          FD004DA2F700177FE800177FE800FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF003B94F00061ABF60065ADF700489EF4002286
          EC00127AE400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        TabOrder = 3
        OnClick = btCancelarTISSClick
      end
      object btConfigurarTISS: TBitBtn
        Left = 242
        Top = 67
        Width = 105
        Height = 25
        Hint = 'Nova configura'#231#227'o de TISS'
        CustomHint = BalloonHint1
        Caption = 'Configurar'
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00000072000000720000006B00000066000000
          650000006500FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF000001B7000001B700050DAC00393EB000585AB2005657AB002E2F
          900000006F000000690000006900FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF000016CE000915C6006C74D900CED1F200FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00C1C2DF005A5A9F000101690000007D00FF00FF00FF00FF00FF00FF000018
          DF000A1DD300A8B0ED00FFFFFF00FFFFFF00BDBEE9008C8CD1008D8DD000CACA
          EA00FFFFFF00FFFFFF008C8CBD000101690000007200FF00FF00FF00FF000018
          DF00919DEF00FFFFFF00E6E8F9004F53CE000002AB0000009D00000095000000
          97005F5FBE00F0F0FA00FFFFFF006565A60000007200FF00FF00001EF1002743
          E700FBFBFF00F7F8FD003B4BDA000000C000161DBE00B0B4E700A3A5E0000A0C
          A00000008F005252B900FFFFFF00D9D9E9000B0B7F0000007A00001EF1007287
          F600FFFFFF0091A1F400000DDA00000BD000161DCB00F1F4FE00DEE1F6000508
          A90000009A0000009300ACACDD00FFFFFF005353AF0000007A000023F800A8B8
          FC00FFFFFF004060F6001734EC00A0AEF200BABEF100F8F9FE00F3F4FB00B6B8
          E9009799DC000D0EA2005A5BBF00FFFFFF008487D600000079000E3EFE00C5CF
          FE00FFFFFF003259FE002649F900FAFCFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00EBECF9001519B1004A4FC100FFFFFF009094D9000000A2003C63FF00C4D0
          FF00FFFFFF005979FF00052EFF00375CFB00586DF400F0F3FE00E3E6FA004D5A
          DE003446D2000004B700757CD600FFFFFF00797DD5000000A800103EFF00B6C5
          FF00FFFFFF00C7D2FF00032CFF000020FF001739FB00F3F6FF00E1E5FA00071F
          DC000007CE000C1CCB00D9DCF500FDFDFE00313CC8000000A800FF00FF008DA4
          FF00FFFFFF00FFFFFF008AA0FF000027FF00002CFF00466AFF004163F800001D
          E900061CDF00A1ACF100FFFFFF00B4BAED000007BB00FF00FF00FF00FF00718D
          FF00DAE1FF00FFFFFF00FFFFFF00B1C0FF003B5DFF001538FF001739FE004966
          F800C0CAFA00FFFFFF00EDEFFC003041D3000007BB00FF00FF00FF00FF00FF00
          FF0088A0FF00E6EBFF00FFFFFF00FFFFFF00FDFDFF00E2E9FF00E4EBFF00FFFF
          FF00FFFFFF00DBE0FA003D50E000000BCC00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF008AA1FF00BAC7FE00E8ECFF00FFFFFF00FFFFFF00FFFFFF00E4E9
          FE00889BF6001738E600000BCC00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF008AA0FF008AA3FF0090A6FF007993FE004A6B
          F9001A40EF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        TabOrder = 0
        OnClick = btConfigurarTISSClick
      end
      object pnTISS: TPanel
        Left = 0
        Top = 0
        Width = 1005
        Height = 41
        CustomHint = BalloonHint1
        Align = alTop
        Caption = 'Palmeiras'
        Color = clGreen
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -27
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 4
      end
    end
  end
  inherited btFechar: TBitBtn
    Left = 900
    Top = 519
    ExplicitLeft = 900
    ExplicitTop = 519
  end
  object dsConsLogs: TDataSource
    DataSet = dmConsultas.qyConsLogs
    Left = 515
    Top = 184
  end
  object dsConsulta: TDataSource
    DataSet = dmConsultas.qyConsDivExames
    OnStateChange = dsConsultaStateChange
    Left = 324
    Top = 169
  end
  object MainMenu1: TMainMenu
    Left = 628
    Top = 393
  end
  object dsExamesSolicitados: TDataSource
    DataSet = dmExames.qyExamesCito
    Left = 47
    Top = 72
  end
  object dsHistologia: TDataSource
    DataSet = dmExames.qyExamesHist
    Left = 73
    Top = 120
  end
  object dsCitologia: TDataSource
    DataSet = dmExames.qyExamesLaudo
    Left = 147
    Top = 104
  end
  object dsLogs: TDataSource
    DataSet = dmExames.qyExamesLogs
    Left = 387
    Top = 88
  end
  object dsMicroscopia: TDataSource
    DataSet = dmExames.qyExamesHistMicro
    Left = 457
    Top = 26
  end
  object dsReceber: TDataSource
    DataSet = dmFinanceiro.qyReceber
    Left = 515
    Top = 24
  end
  object dsMacroscopia: TDataSource
    DataSet = dmExames.qyExamesHistMacro
    Left = 233
    Top = 112
  end
  object dsExameDoencas: TDataSource
    DataSet = dmExames.qyExamesDoencas
    Left = 137
    Top = 162
  end
  object dsExamesCob: TDataSource
    DataSet = dmFinanceiro.qyExamesCob
    Left = 235
    Top = 184
  end
  object dsHistRec: TDataSource
    DataSet = dmFinanceiro.qyHistRec
    Left = 75
    Top = 273
  end
  object dsExTopografias: TDataSource
    DataSet = dmExames.qyExamesTop
    Left = 49
    Top = 392
  end
  object dsBlocos: TDataSource
    DataSet = dmExames.qyExamesBlocos
    Left = 232
    Top = 408
  end
  object dsProcedimentos: TDataSource
    DataSet = dmExames.qyExamesProced
    Left = 373
    Top = 400
  end
  object dsObs: TDataSource
    DataSet = dmExames.qyExamesObs
    OnStateChange = dsObsStateChange
    Left = 419
    Top = 256
  end
  object dsCitosTp: TDataSource
    DataSet = dmLookups.lkProcCitosTp
    Left = 816
    Top = 96
  end
  object PopupMenu1: TPopupMenu
    Left = 912
    Top = 56
  end
  object dsExamesTISS: TDataSource
    DataSet = dmExames.qyExamesTISS
    OnStateChange = dsExamesTISSStateChange
    Left = 424
    Top = 128
  end
end
