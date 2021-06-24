inherited frmModulos: TfrmModulos
  Caption = 'M'#243'dulos do sistema'
  ClientHeight = 316
  ClientWidth = 513
  ExplicitWidth = 519
  ExplicitHeight = 348
  PixelsPerInch = 96
  TextHeight = 13
  inherited btFechar: TBitBtn
    Left = 400
    Top = 283
    ExplicitLeft = 400
    ExplicitTop = 283
  end
  object DBGrid1: TDBGrid [1]
    Left = 8
    Top = 8
    Width = 497
    Height = 265
    CustomHint = BalloonHint1
    TabStop = False
    DataSource = dsModulos
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'mod_nome'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'mod_descricao'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'mod_versaoinst'
        Visible = True
      end>
  end
  inherited BalloonHint1: TBalloonHint
    Left = 112
    Top = 56
  end
  object dsModulos: TDataSource
    DataSet = dmConfig.qyModulos
    Left = 48
    Top = 56
  end
end
