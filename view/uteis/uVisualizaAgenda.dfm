inherited frmVisualizaAgenda: TfrmVisualizaAgenda
  BorderIcons = [biSystemMenu]
  Caption = 'Agenda'
  ClientHeight = 400
  ClientWidth = 671
  ExplicitWidth = 677
  ExplicitHeight = 432
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 473
    Top = 217
    Width = 19
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Obs'
  end
  inherited btFechar: TBitBtn
    Left = 472
    Top = 343
    Width = 191
    ExplicitLeft = 472
    ExplicitTop = 343
    ExplicitWidth = 191
  end
  object Calendario: TMonthCalendar [2]
    Left = 471
    Top = 26
    Width = 191
    Height = 154
    Hint = 'Selecione a data'
    CustomHint = BalloonHint1
    CalColors.TextColor = clBlack
    CalColors.TitleBackColor = clNavy
    Date = 38556.610338541660000000
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    WeekNumbers = True
    OnClick = CalendarioClick
  end
  object btAgendar: TBitBtn [3]
    Left = 472
    Top = 186
    Width = 191
    Height = 25
    Cursor = crHandPoint
    Hint = 'Clique para agendar um hor'#225'rio'
    CustomHint = BalloonHint1
    Caption = 'Agendamento'
    Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      2000000000000004000000000000000000000000000000000000FF00FF00FF00
      FFBF262FA3001D20B5A3FF00FF204B4B4BBF5B5B5B0B87817B1B87817B81FF00
      FF3BFF00FF00FF00FFBFFF00FF00FF00FFBFFF00FF00FF00FFBFFF00FF008277
      6FBF5F61BC372126B2BC66605926A3A3A419FAFAFAA3E3E0DCBAD1CEC9A09A97
      958982807E977874713E5D5A5834FF00FF18FF00FF00FF00FFBFFF00FF00A893
      81BF7B75C4932024B284BA977524A3A3A435FFFFFFA3FFFFFFBFFFFFFDBFD6D0
      CABDC8C0B890F6EBDDB8EDE0D1ABA59B91916B68649BFF00FF24FF00FF00A893
      81BF7873C3932024B283B99B7E24A3A3A43EFEFFFFA3FFFFFFBF9F9FA0BF7371
      71A0353537317E7B7637FFF5E73BFFF2E1A7878685B2FF00FF85FF00FF00A894
      83BF7873C5942024B385BAA18A24A3A3A48AFEFFFFA3FFFFFFBFCACACCBFF5F3
      F28CFFFDF9B3353537B9F3EAE035FDF0E2A0878685B0FF00FF85FF00FF00A897
      8BBF7876CA972024B28ABBA89624A3A3A496FEFFFFA3FFFFFFBFB3B3B4BF8282
      83B4A2A1A282353537A2F8F2EB35FDF2E9AB878685B2FF00FF85FF00FF009189
      84BF7779CF892024B28FBCADA024A3A3A4A0FEFFFFA3FFFFFFBF9A9A9BBF3535
      379B7C7C7E35CCCCCB3EFFFEFB8CFCF6EFBB878685B6FF00FF85FF00FF008E88
      88BF787BD4882024B194BDB2A924A3A3A4A9FEFEFFA3FFFFFFBFBCBCBDBF3535
      37BD3535373535353737FFFEFD35FCF9F5BD878685B9FF00FF85FF00FF008E8C
      8EBF787EDA8C2024B19AB4B3B924A3A3A4B9FEFEFEA3E9E9E9BEE2E2E2A9BCBC
      BCA2A2A2A3BCDFDFE0A3FFFFFF9FFCFBFBBF878685BBFF00FF85FF00FF008E8F
      94BF7880DE8F2023B19EB4B3B923A3A3A4B9FFFFFFA3A5A5A5BFBBBBBBA59F9F
      A0BBC6C6C79FC5C5C687E2E2E385FEFEFEA3878685BEFF00FF85FF00FF008E8F
      95BF7880DF8F2023B19FB4B3B923A3A3A4B9FFFFFFA3B9B9B9BFB3B3B4B9ACAC
      ADB4A8A8A9ACB9B9BAA9E0E0E1B9FFFFFFA1878685BFFF00FF85FF00FF009091
      97BF7B83E2912023B0A2B6B5B623A3A3A4B6FFFFFFA3797979BFE1E2E239FBFB
      FCA2EDEDEDBBB9B9B9ADDBDBDCB9FFFFFF9C878685BFFF00FF85FF00FF008384
      8ABF646AD2841D23BA926F7191239E9DAF91BBB9BC9D7F7D73BC8D8C883DEDEA
      E088E7E7E3AA646562A390909025FFFFFF90878685BFFF00FF85FF00FF00FF00
      FFBF414163002E317D23303483313F4393833A3D940340429694444460025655
      99206D689315736E88935E5B612E918D8A216161618DFF00FF21FF00FF00FF00
      FFBFFF00FF00FF00FFBFFF00FF004B4B4BBFFF00FF0B3B3D62BF4B4B4B3D3737
      650BFF00FF37333383BF3838653314147725FF00FF14FF00FFBFFF00FF00FF00
      FFBFFF00FF00FF00FFBFFF00FF00FF00FFBF4B4B4B004B4B4B0BFF00FF0BFF00
      FFBF4B4B4E004C4C4C0EFF00FF0CFF00FFBFFF00FF00FF00FFBF}
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    OnClick = btAgendarClick
  end
  object dbObs: TDBEdit [4]
    Left = 472
    Top = 232
    Width = 191
    Height = 21
    Hint = 'Observa'#231#245'es'
    CustomHint = BalloonHint1
    TabStop = False
    Color = clBackground
    DataField = 'agd_descricao'
    DataSource = dsAgendaDia
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ReadOnly = True
    ShowHint = True
    TabOrder = 3
  end
  object DBMemo1: TDBMemo [5]
    Left = 472
    Top = 259
    Width = 191
    Height = 75
    Hint = 'Detalhes do agendamento'
    CustomHint = BalloonHint1
    TabStop = False
    Color = clBackground
    DataField = 'agd_obs'
    DataSource = dsAgendaDia
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MaxLength = 255
    ParentFont = False
    ParentShowHint = False
    ReadOnly = True
    ShowHint = True
    TabOrder = 4
  end
  object Panel1: TPanel [6]
    Left = 0
    Top = 0
    Width = 671
    Height = 26
    CustomHint = BalloonHint1
    Align = alTop
    Caption = 'Panel1'
    Color = clNavy
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 5
  end
  object Panel2: TPanel [7]
    Left = 0
    Top = 374
    Width = 671
    Height = 26
    CustomHint = BalloonHint1
    Align = alBottom
    Caption = 'Panel2'
    Color = clRed
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 6
  end
  object GridAgenda: TDBGrid [8]
    Left = 0
    Top = 26
    Width = 465
    Height = 348
    CustomHint = BalloonHint1
    TabStop = False
    DataSource = dsAgendaDia
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDrawColumnCell = GridAgendaDrawColumnCell
    Columns = <
      item
        Expanded = False
        FieldName = 'agd_data'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'agd_hora'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'agd_descricao'
        Visible = True
      end>
  end
  inherited BalloonHint1: TBalloonHint
    Left = 256
    Top = 208
  end
  object dsAgendaDia: TDataSource
    DataSet = dmGestao.qyAgendaDia
    Left = 288
    Top = 280
  end
end
