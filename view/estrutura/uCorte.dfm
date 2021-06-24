inherited frmCorte: TfrmCorte
  Caption = 'Corte'
  ClientHeight = 659
  ClientWidth = 926
  OnKeyDown = FormKeyDown
  ExplicitLeft = -266
  ExplicitTop = -249
  ExplicitWidth = 932
  ExplicitHeight = 684
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel [0]
    Left = -8
    Top = -3
    Width = 926
    Height = 215
    CustomHint = BalloonHint1
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 51
      Height = 13
      CustomHint = BalloonHint1
      Caption = 'Requisi'#231#227'o'
    end
    object Label2: TLabel
      Left = 136
      Top = 8
      Width = 77
      Height = 13
      CustomHint = BalloonHint1
      Caption = 'Data Requisi'#231#227'o'
    end
    object Label3: TLabel
      Left = 224
      Top = 8
      Width = 70
      Height = 13
      CustomHint = BalloonHint1
      Caption = 'Tipo de Exame'
    end
    object Label4: TLabel
      Left = 480
      Top = 8
      Width = 45
      Height = 13
      CustomHint = BalloonHint1
      Caption = 'Conv'#234'nio'
    end
    object Label5: TLabel
      Left = 8
      Top = 48
      Width = 41
      Height = 13
      CustomHint = BalloonHint1
      Caption = 'Paciente'
    end
    object Label8: TLabel
      Left = 8
      Top = 88
      Width = 33
      Height = 13
      CustomHint = BalloonHint1
      Caption = 'M'#233'dico'
    end
    object Label11: TLabel
      Left = 8
      Top = 128
      Width = 34
      Height = 13
      CustomHint = BalloonHint1
      Caption = 'Origem'
    end
    object Label12: TLabel
      Left = 264
      Top = 128
      Width = 36
      Height = 13
      CustomHint = BalloonHint1
      Caption = 'Destino'
    end
    object Label6: TLabel
      Left = 504
      Top = 48
      Width = 45
      Height = 13
      CustomHint = BalloonHint1
      Caption = 'Dt. Nasc.'
    end
    object Label9: TLabel
      Left = 440
      Top = 88
      Width = 43
      Height = 13
      CustomHint = BalloonHint1
      Caption = 'Matr'#237'cula'
    end
    object Label7: TLabel
      Left = 624
      Top = 48
      Width = 28
      Height = 13
      CustomHint = BalloonHint1
      Caption = 'Idade'
    end
    object Label10: TLabel
      Left = 624
      Top = 88
      Width = 21
      Height = 13
      CustomHint = BalloonHint1
      Caption = 'Guia'
    end
    object Label13: TLabel
      Left = 520
      Top = 128
      Width = 48
      Height = 13
      CustomHint = BalloonHint1
      Caption = 'Prioridade'
    end
    object lbDtEntrega: TLabel
      Left = 712
      Top = 128
      Width = 56
      Height = 13
      CustomHint = BalloonHint1
      Caption = 'Dt. Entrega'
    end
    object Label16: TLabel
      Left = 8
      Top = 168
      Width = 61
      Height = 13
      CustomHint = BalloonHint1
      Caption = 'Respons'#225'vel'
    end
    object SpeedButton1: TSpeedButton
      Left = 105
      Top = 24
      Width = 23
      Height = 22
      CustomHint = BalloonHint1
      Action = actAlternaExame
      Flat = True
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF004C260000602F000072380000723800006230
        000050280000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF006431000064310000984B0000B85B0000BC5D0000BC5D0000BA5C
        00009C4D00006C3500006C350000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF007439000088430000C05F0000C2600000BC5D0000B85B0000BC5D0000BC5D
        0000C05F0000C26000008A44000050280000FF00FF00FF00FF00FF00FF007439
        000094490000D2680000C8630000BC5D0000B85B0000D69F6A00ECD3BA00C06B
        1800BA5C0000BC5D0000C26000008A4400006C350000FF00FF00FF00FF007439
        0000DE6E0000D86B0000CA640000BC5D0000D0905200FBF7F200FFFFFF00E6C4
        A300BB5D0200BA5C0000BC5D0000C26000006C350000FF00FF007A3C0000B459
        0000F0770000D86B0000C2600000D3935400FDF9F600FFFFFF00FFFFFF00FFFF
        FF00E2B99200BB5D0200BA5C0000C05F00009C4D0000602F00007A3C0000E06F
        0000F0770000DE6E0000D89A5D00FDFAF700FEFEFD00FDFBF800FEFEFD00FEFC
        FA00FFFFFF00DFB48A00BB5F0500BE5E0000B2580000602F000090470000F87B
        0000FA7C0000FA7C0000FEF5ED00FFFFFF00F5BF8900F9DABC00FFFFFF00DCAD
        8000F7EDE300FFFFFF00E2BA9300BC5D0000BC5D00006A340000A04F0000FF91
        2500FF840B00FC7D0000FFEFDE00FFCA9600FF7E0000FFDCB900FFFFFF00CD84
        3C00CE8B4900FCF9F500E8C9AA00BE5E0000BC5D000072380000A04F0000FF9F
        4100FF983300F4790000FC8D2000FC810800FC7D0000FDDDBD00FFFFFF00E095
        4A00D2680000D67B2200D36F0E00C8630000B85B000066320000A04F0000FF98
        3300FFBF8100FF7E0000F2780000FC7D0000FC7D0000FEDDBD00FFFFFF00E898
        4A00DA6C0000DA6C0000D2680000CA640000AA54000066320000FF00FF00EC75
        0000FFD3A900FFAD5D00E8730000F0770000FC7D0000FEDEBE00FFFFFF00ED9B
        4B00DA6C0000D66A0000CE660000D46900008E460000FF00FF00FF00FF00EC75
        0000FFA04300FFE3C700FFAC5B00FA7C0000EE760000FEDFC000FFFFFF00F09C
        4A00E2700000DE6E0000E06F0000C46100008E460000FF00FF00FF00FF00FF00
        FF00D2680000FFAD5D00FFE9D300FFCA9700FF9E3F00FF8E1F00FF850D00FF88
        1300FF881300FF810500D66A00008A440000FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF983300FF983300FFC99500FFDFBF00FFD2A700FFC58D00FFB8
        7300FF9B3900E06F0000E06F0000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00E8730000FF8A1700FF952D00FF912500FC7D
        0000C6620000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      ParentShowHint = False
      ShowHint = True
    end
    object dbExame: TDBEdit
      Left = 8
      Top = 24
      Width = 97
      Height = 21
      Hint = 'N'#250'mero da Requisi'#231#227'o q Exame'
      CustomHint = BalloonHint1
      TabStop = False
      Color = clBtnFace
      DataField = 'exa_id'
      DataSource = dsExames
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 0
    end
    object dbMatricula: TDBEdit
      Left = 440
      Top = 104
      Width = 177
      Height = 21
      Hint = 'Matr'#237'cula do exame'
      CustomHint = BalloonHint1
      TabStop = False
      Color = clBtnFace
      DataField = 'exa_matricula'
      DataSource = dsExames
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 1
    end
    object dbIdade: TDBEdit
      Left = 624
      Top = 64
      Width = 33
      Height = 21
      Hint = 'Idade do Paciente'
      CustomHint = BalloonHint1
      TabStop = False
      Color = clBtnFace
      DataField = 'pac_idade'
      DataSource = dsExames
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 2
    end
    object dbMeses: TDBEdit
      Left = 656
      Top = 64
      Width = 137
      Height = 21
      Hint = 'Idade por extenso'
      CustomHint = BalloonHint1
      TabStop = False
      Color = clBtnFace
      DataField = 'pac_meses'
      DataSource = dsExames
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 3
    end
    object dbGuia: TDBEdit
      Left = 624
      Top = 104
      Width = 169
      Height = 21
      Hint = 'Guia do exame'
      CustomHint = BalloonHint1
      TabStop = False
      Color = clBtnFace
      DataField = 'exa_guia'
      DataSource = dsExames
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 4
    end
    object dbTitulo: TDBEdit
      Left = 8
      Top = 184
      Width = 33
      Height = 21
      Hint = 'T'#237'tulo'
      CustomHint = BalloonHint1
      TabStop = False
      Color = clBtnFace
      DataField = 'res_titulo'
      DataSource = dsExames
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 5
    end
    object dbConselho: TDBEdit
      Left = 456
      Top = 184
      Width = 57
      Height = 21
      Hint = 'Conselho'
      CustomHint = BalloonHint1
      TabStop = False
      Color = clBtnFace
      DataField = 'cos_uf'
      DataSource = dsExames
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 6
    end
    object dbNumConselho: TDBEdit
      Left = 520
      Top = 184
      Width = 121
      Height = 21
      Hint = 'N'#250'mero de registro no conselho'
      CustomHint = BalloonHint1
      TabStop = False
      Color = clBtnFace
      DataField = 'res_numconselho'
      DataSource = dsExames
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 7
    end
    object btAlterar: TBitBtn
      Left = 688
      Top = 184
      Width = 105
      Height = 25
      Hint = 'Altera dados da requisi'#231#227'o'
      CustomHint = BalloonHint1
      Caption = '&Alterar'
      Glyph.Data = {
        36060000424D3606000000000000360000002800000020000000100000000100
        18000000000000060000C40E0000C40E00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FF00007200007200006B000066000065000065FF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFFFF8DFFFF8DFF
        FF94FFFF99FFFF9AFFFF9AFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FF0001B70001B7050DAC393EB0585AB25657AB2E2F9000006F0000690000
        69FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFFFE48FFFE48FAF253C6C14FA7
        A54DA9A854D1D06FFFFF90FFFF96FFFF96FF00FFFF00FFFF00FFFF00FFFF00FF
        0016CE0915C66C74D9CED1F2FFFFFFFFFFFFFFFFFFFFFFFFC1C2DF5A5A9F0101
        6900007DFF00FFFF00FFFF00FFFF00FFFFE931F6EA39938B26312E0D00000000
        00000000000000003E3D20A5A560FEFE96FFFF82FF00FFFF00FFFF00FF0018DF
        0A1DD3A8B0EDFFFFFFFFFFFFBDBEE98C8CD18D8DD0CACAEAFFFFFFFFFFFF8C8C
        BD010169000072FF00FFFF00FFFFE720F5E22C574F1200000000000042411673
        732E72722F353515000000000000737342FEFE96FFFF8DFF00FFFF00FF0018DF
        919DEFFFFFFFE6E8F95054CE0B0DAF242AC21C1EB20000975F5FBEF0F0FAFFFF
        FF6565A6000072FF00FFFF00FFFFE7206E6210000000191706AFAB31F4F250DB
        D53DE3E14DFFFF68A0A0410F0F050000009A9A59FFFF8DFF00FF001EF12743E7
        FBFBFFF7F8FD3C4BD91617C43438C31214B0171BB1090B9F2323A15E5EBEFFFF
        FFD9D9E90B0B7F00007AFFE10ED8BC18040400080702C3B426E9E83BCBC73CED
        EB4FE8E44EF6F460DCDC5EA1A141000000262616F4F480FFFF85001EF17287F6
        FFFFFF91A1F40A15D70E12B9191DB61114AE2C30BB1D20B210119A2323A3ADAD
        DDFFFFFF5353AF00007AFFE10E8D78090000006E5E0BF5EA28F1ED46E6E249EE
        EB51D3CF44E2DF4DEFEE65DCDC5C525222000000ACAC50FFFF850023F8A8B8FC
        FFFFFF4060F68794F2FDFDFEF3F4FBF2F2FAF2F3FAFFFFFFFFFFFF1214A76061
        C2FFFFFF8487D6000079FFDC07574703000000BF9F09786B0D0202010C0B040D
        0D050D0C05000000000000EDEB589F9E3D0000007B7829FFFF860E3EFEC5CFFE
        FFFFFF3259FE294AF8A7B0F7FFFFFFFFFFFFFFFFFFFFFFFF262DD51320CB8186
        D6FFFFFF9094D90000A2F1C1013A3001000000CDA601D6B507584F0800000000
        0000000000000000D9D22AECDF347E79290000006F6B26FFFF5D3C63FFC4D0FF
        FFFFFF5979FF052EFF173DFDC3C9F8FFFFFFFFFFFF1D2DDC0B1ED9303CD68C92
        DEFEFEFF797DD50000A8C39C003B2F00000000A68600FAD100E8C2023C360700
        0000000000E2D223F4E126CFC329736D2101010086822AFFFF57103EFFB6C5FF
        FFFFFFC7D2FF032CFF0020FF2C48FEC4CBFA374AE71A2CDE1D29D9222ED1D3D6
        F4FDFDFE313CC80000A8EFC100493A00000000382D00FCD300FFDF00D3B7013B
        3405C8B518E5D321E2D626DDD12E2C290B020201CEC337FFFF57FF00FF8DA4FF
        FFFFFFFFFFFF8AA0FF0027FF012CFF0424FF1C3EFB001DE9061CDF9EA9F1FFFF
        FFB4BAED0007BBFF00FFFF00FF725B00000000000000755F00FFD800FED300FB
        DB00E3C104FFE216F9E32061560E0000004B4512FFF844FF00FFFF00FF718DFF
        DAE1FFFFFFFFFFFFFFB1C0FF3B5DFF1538FF1739FE4966F8C0CAFAFFFFFFEDEF
        FC3041D30007BBFF00FFFF00FF8E7200251E000000000000004E3F00C4A200EA
        C700E8C601B699073F3505000000121003CFBE2CFFF844FF00FFFF00FFFF00FF
        88A0FFE6EBFFFFFFFFFFFFFFFDFDFFE2E9FFE4EBFFFFFFFFFFFFFFDBE0FA3D50
        E0000BCCFF00FFFF00FFFF00FFFF00FF775F001914000000000000000202001D
        16001B1400000000000000241F05C2AF1FFFF433FF00FFFF00FFFF00FFFF00FF
        FF00FF8AA1FFBAC7FEE8ECFFFFFFFFFFFFFFFFFFFFE4E9FE889BF61738E6000B
        CCFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF755E0045380117130000000000
        00000000001B1601776409E8C719FFF433FF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FF8AA0FF8AA3FF90A6FF7993FE4A6BF91A40EFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF755F00755C006F
        5900866C01B59406E5BF10FF00FFFF00FFFF00FFFF00FFFF00FF}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      TabOrder = 8
      TabStop = False
      OnClick = btAlterarClick
    end
    object dbData: TDBEdit
      Left = 134
      Top = 24
      Width = 84
      Height = 21
      Hint = 'Data da requisi'#231#227'o'
      CustomHint = BalloonHint1
      TabStop = False
      Color = clBtnFace
      DataField = 'exa_data'
      DataSource = dsExames
      ReadOnly = True
      TabOrder = 9
    end
    object dbTpExame: TDBEdit
      Left = 224
      Top = 24
      Width = 250
      Height = 21
      Hint = 'Tipo de exame'
      CustomHint = BalloonHint1
      TabStop = False
      Color = clBtnFace
      DataField = 'etp_tipo'
      DataSource = dsExames
      ReadOnly = True
      TabOrder = 10
    end
    object dbConvenio: TDBEdit
      Left = 480
      Top = 24
      Width = 313
      Height = 21
      Hint = 'Conv'#234'nio do paciente'
      CustomHint = BalloonHint1
      TabStop = False
      Color = clBtnFace
      DataField = 'cov_descricao'
      DataSource = dsExames
      ReadOnly = True
      TabOrder = 11
    end
    object dbPaciente: TDBEdit
      Left = 8
      Top = 64
      Width = 490
      Height = 21
      Hint = 'Nome do paciente'
      CustomHint = BalloonHint1
      TabStop = False
      Color = clBtnFace
      DataField = 'pac_nome'
      DataSource = dsExames
      ReadOnly = True
      TabOrder = 12
    end
    object dbDataNasc: TDBEdit
      Left = 504
      Top = 64
      Width = 114
      Height = 21
      Hint = 'Data de nascimento do paciente'
      CustomHint = BalloonHint1
      TabStop = False
      Color = clBtnFace
      DataField = 'pac_dtnasc'
      DataSource = dsExames
      ReadOnly = True
      TabOrder = 13
    end
    object dbMedico: TDBEdit
      Left = 8
      Top = 104
      Width = 426
      Height = 21
      Hint = 'Nome do m'#233'dico'
      CustomHint = BalloonHint1
      TabStop = False
      Color = clBtnFace
      DataField = 'med_nome'
      DataSource = dsExames
      ReadOnly = True
      TabOrder = 14
    end
    object dbDestino: TDBEdit
      Left = 269
      Top = 144
      Width = 245
      Height = 21
      Hint = 'Destino do exame'
      CustomHint = BalloonHint1
      TabStop = False
      Color = clBtnFace
      DataField = 'exl_descricao_1'
      DataSource = dsExames
      ReadOnly = True
      TabOrder = 15
    end
    object dbPriporidade: TDBEdit
      Left = 520
      Top = 144
      Width = 186
      Height = 21
      Hint = 'Prioridade do exame'
      CustomHint = BalloonHint1
      TabStop = False
      Color = clBtnFace
      DataField = 'exa_dataprior'
      DataSource = dsExames
      ReadOnly = True
      TabOrder = 16
    end
    object dbDtEntrega: TDBEdit
      Left = 712
      Top = 144
      Width = 81
      Height = 21
      Hint = 'Data de entrega do exame'
      CustomHint = BalloonHint1
      TabStop = False
      Color = clBtnFace
      DataField = 'exa_dataprior'
      DataSource = dsExames
      ReadOnly = True
      TabOrder = 17
    end
    object cbResponsavel: TwwDBLookupCombo
      Left = 41
      Top = 184
      Width = 409
      Height = 21
      Hint = 'Respons'#225'vel pela emiss'#227'o do Laudo'
      CustomHint = BalloonHint1
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'res_nome'#9'80'#9'Nome'#9'F'
        'res_titulo'#9'3'#9'T'#237'tulo'#9'F'
        'res_conselho'#9'5'#9'Conselho'#9'F'
        'res_numconselho'#9'10'#9'Num. Conselho'#9'F'
        'res_codigo'#9'8'#9'C'#243'digo'#9'F')
      LookupField = 'res_nome'
      Options = [loColLines, loRowLines, loTitles]
      Color = clBtnFace
      ButtonEffects.Transparent = True
      ButtonEffects.Flat = True
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 18
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      ShowMatchText = True
      OnExit = cbResponsavelExit
    end
  end
  object dbOrigem: TDBEdit [1]
    Left = 5
    Top = 141
    Width = 255
    Height = 21
    Hint = 'Origem do exame'
    CustomHint = BalloonHint1
    TabStop = False
    Color = clBtnFace
    DataField = 'exl_descricao'
    DataSource = dsExames
    ReadOnly = True
    TabOrder = 4
  end
  object Panel3: TPanel [2]
    Left = 800
    Top = 216
    Width = 123
    Height = 441
    CustomHint = BalloonHint1
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 2
    object btGravar: TBitBtn
      Left = 13
      Top = 312
      Width = 105
      Height = 25
      Hint = 'Grava altera'#231#245'es no laudo'
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
      ShowHint = True
      TabOrder = 0
      OnClick = btGravarClick
    end
    object btCancelar: TBitBtn
      Left = 13
      Top = 336
      Width = 105
      Height = 25
      Hint = 'Cancela altera'#231#245'es no laudo'#13#10'e fecha a janela!'
      CustomHint = BalloonHint1
      Caption = '&Cancelar'
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
        6DB2F9FEFEFFE9F3FD1E7FF00D73ED1474EB066BE90C6FE889B9F4E6F0FDB0D5
        FA0970E60653A2FF00FFFF00FFED871F924D06010100160C02E1800FF28C12EB
        8B14F99416F3901776460B190F024F2A05F68F19F9AC5DFF00FF0B70D53695F4
        E8F3FEFFFFFF89BAF48FC0F92A86F11075EE1275EC1E79EC84B5F489BAF4FFFF
        FF58A5F5005EC70858ABF48F2AC96A0B170C0100000076450B703F06D5790EEF
        8A11ED8A13E186137B4A0B76450B000000A75A0AFFA138F7A754137AE371B5FB
        FFFFFFB2D7FC278CF992C4FBDAEAFD318BF3388DF2D7E8FC87B8F50D71EAE6F0
        FDB3D7FB016BDE0858ABEC851C8E4A040000004D2803D873066D3B04251502CE
        740CC7720D28170378470AF28E15190F024C2804FE9421F7A7541F85ECA2CFFD
        FFFFFF419EFD3495FB298DF992C5FBE6F1FEE5F1FD88BCF71075EE0B70EBB4D2
        F8E6F3FF0E7BE9065AB0E07A135D3002000000BE6102CB6A04D672066D3A0419
        0E011A0E02774308EF8A11F48F144B2D07190C00F18416F9A54F2F8FF1B7DAFD
        FFFFFF419FFF3196FE3094FC469EFCF1F8FEF1F8FE3892F5187DF11378EF9FC9
        F7F0F8FF1A82EC055CB5D0700E482502000000BE6000CE6901CF6B03B961030E
        07010E0701C76D0AE7820EEC87106036080F0700E57D13FAA34A3693F0B8DAFE
        FFFFFF59ACFF3499FF55A9FEE8F3FF85BFFD83BDFCE7F2FE4498F61A7FF2D3E6
        FCD9EBFE117DE9095CB2C96C0F472501000000A65300CB6600AA5601170C007A
        40027C4203180D01BB6709E5800D2C1903261401EE8216F6A34D2689EDAFD6FD
        FFFFFFC3E1FF4AA4FFEDF6FF81C0FF3296FE2E93FC7BBAFDEBF5FE59A5F8E9F3
        FE99C9FA0773E10958ABD976125029020000003C1E00B55B001209007E3F00CD
        6901D16C03844502140A01A65A07160C01663605F88C1EF6A754FF00FF3994F0
        F1F8FFFBFDFF78BBFF61AFFF3499FF3499FF3398FF3095FD68B0FCF4FAFFF5FA
        FE49A0F7076ACEFF00FFFF00FFC66B0F0E07000402008744009E5000CB6600CB
        6600CC6700CF6A02974F030B05000A0501B65F08F89531FF00FFFF00FF3994F0
        CDE6FFF6FAFFFBFDFFC1DFFF58ABFF43A0FF49A3FF84C1FEFBFDFFFFFFFF78B9
        F9137BE6076ACEFF00FFFF00FFC66B0F3219000905000402003E2000A75400BC
        5F00B65C007B3E01040200000000874606EC8419F89531FF00FFFF00FFFF00FF
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
      TabOrder = 1
      OnClick = btCancelarClick
    end
  end
  object Panel2: TPanel [3]
    Left = 2
    Top = 216
    Width = 805
    Height = 441
    CustomHint = BalloonHint1
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 3
    object Label14: TLabel
      Left = 8
      Top = 2
      Width = 66
      Height = 13
      CustomHint = BalloonHint1
      Caption = 'Dados cl'#237'nicos'
    end
    object Label15: TLabel
      Left = 8
      Top = 98
      Width = 123
      Height = 13
      CustomHint = BalloonHint1
      Caption = 'Descri'#231#227'o da Macroscopia'
    end
    object Label19: TLabel
      Left = 8
      Top = 423
      Width = 201
      Height = 13
      CustomHint = BalloonHint1
      Caption = 'Tecle F4 para buscar outro exame pelo ID'
      Enabled = False
    end
    object painelTopografia: TPanel
      Left = 0
      Top = 264
      Width = 497
      Height = 159
      CustomHint = BalloonHint1
      BevelInner = bvRaised
      BevelOuter = bvLowered
      TabOrder = 0
      object Label18: TLabel
        Left = 8
        Top = 1
        Width = 52
        Height = 13
        CustomHint = BalloonHint1
        Caption = 'Topografia'
      end
      object GridTop: TwwDBGrid
        Left = 8
        Top = 20
        Width = 458
        Height = 132
        Hint = 'Topografias solicitadas'
        CustomHint = BalloonHint1
        ControlType.Strings = (
          'etg_reserva;CheckBox;True;False')
        Selected.Strings = (
          'etg_seq'#9'4'#9'Seq.'
          'top_descricao'#9'39'#9'Topografia'
          'etg_top'#9'10'#9'Topografia'
          'etg_reserva'#9'5'#9'Reserva'
          'ehi_id'#9'7'#9'ID')
        IniAttributes.Delimiter = ';;'
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        DataSource = dsExTopografias
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
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
    object painelBlocos: TPanel
      Left = 475
      Top = 264
      Width = 324
      Height = 159
      CustomHint = BalloonHint1
      BevelInner = bvRaised
      BevelOuter = bvLowered
      TabOrder = 1
      object Label17: TLabel
        Left = 8
        Top = 1
        Width = 30
        Height = 13
        CustomHint = BalloonHint1
        Caption = 'Blocos'
      end
      object wwDBGrid1: TwwDBGrid
        Left = 8
        Top = 20
        Width = 250
        Height = 132
        Hint = 'Blocos'
        CustomHint = BalloonHint1
        Selected.Strings = (
          'etg_seq'#9'4'#9'Top.'
          'ebl_seq'#9'10'#9'Sequ'#234'ncia'
          'ebl_fragmentos'#9'10'#9'Fragmentos'
          'ebl_laminas'#9'9'#9'L'#226'minas')
        IniAttributes.Delimiter = ';;'
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        DataSource = dsBlocos
        ParentShowHint = False
        ShowHint = True
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
    object wwDBGrid2: TwwDBGrid
      Left = 8
      Top = 16
      Width = 785
      Height = 81
      Hint = 'Material / Dados cl'#237'nicos'
      CustomHint = BalloonHint1
      Selected.Strings = (
        'mat_descricao'#9'35'#9'Material'#9'F'
        'eio_descricao'#9'34'#9'Tp. Exame'#9'F'#9
        'eth_descricao'#9'44'#9'Exame'#9'F'#9
        'ehi_quant'#9'10'#9'Quantidade'#9#9)
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      DataSource = dsHistologia
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 2
      TitleAlignment = taLeftJustify
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      TitleLines = 1
      TitleButtons = False
    end
    object meMacroscopia: TwwDBRichEditMSWord
      Left = 4
      Top = 120
      Width = 793
      Height = 137
      Hint = 'Insere o exame solicitado (F12 para gravar)'
      CustomHint = BalloonHint1
      ScrollBars = ssVertical
      AutoURLDetect = True
      DataField = 'ehm_macroscopia'
      DataSource = dsMacroscopia
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
      TabOrder = 3
      WantTabs = True
      OnKeyDown = meMacroscopiaKeyDown
      OnKeyPress = meMacroscopiaKeyPress
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
        740000007B5C727466315C616E73695C616E7369637067313235325C64656666
        307B5C666F6E7474626C7B5C66305C666E696C5C666368617273657430205665
        7264616E613B7D7D0D0A5C766965776B696E64345C7563315C706172645C6C61
        6E67313034365C66305C667332325C7061720D0A7D0D0A00}
    end
  end
  object GridProcExames: TwwDBGrid [4]
    Left = 0
    Top = 41
    Width = 225
    Height = 168
    Hint = 'Clique duplo para acessar o exame!'
    CustomHint = BalloonHint1
    Selected.Strings = (
      'exa_id'#9'11'#9'ID'
      'exa_data'#9'10'#9'Data'
      'exa_paciente'#9'50'#9'Paciente')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Color = clInfoBk
    DataSource = dsProcExames
    ParentShowHint = False
    ShowHint = True
    TabOrder = 5
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    OnDblClick = GridProcExamesDblClick
  end
  inherited btFechar: TBitBtn
    Left = 813
    Top = 626
    ExplicitLeft = 813
    ExplicitTop = 626
  end
  object dsExames: TDataSource
    DataSet = dmExames.qyExames
    OnStateChange = dsExamesStateChange
    Left = 26
    Top = 74
  end
  object dsExTopografias: TDataSource
    DataSet = dmExames.qyExamesTop
    Left = 26
    Top = 528
  end
  object dsBlocos: TDataSource
    DataSet = dmExames.qyExamesBlocos
    Left = 521
    Top = 536
  end
  object dsLog: TDataSource
    DataSet = dmExames.qyExamesLogs
    Left = 736
    Top = 232
  end
  object dsHistologia: TDataSource
    DataSet = dmExames.qyExamesHist
    Left = 26
    Top = 248
  end
  object dsMacroscopia: TDataSource
    DataSet = dmExames.qyExamesHistMacro
    Left = 34
    Top = 344
  end
  object dsProcExames: TDataSource
    DataSet = dmConsultas.qyProcExames
    Left = 26
    Top = 138
  end
  object ActionList1: TActionList
    Images = frmPrincipal.Imagens
    Left = 122
    Top = 90
    object actAlternaExame: TAction
      Hint = 'Alterna entre os exames da etapa!'
      ImageIndex = 18
      ShortCut = 32848
      OnExecute = actAlternaExameExecute
    end
  end
end
