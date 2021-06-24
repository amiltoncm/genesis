inherited frmExamesAnt: TfrmExamesAnt
  Caption = 'Exames anteriores'
  ClientHeight = 454
  ClientWidth = 1030
  ExplicitWidth = 1036
  ExplicitHeight = 486
  PixelsPerInch = 96
  TextHeight = 13
  inherited btFechar: TBitBtn
    Left = 915
    Top = 421
    TabOrder = 1
    ExplicitLeft = 915
    ExplicitTop = 421
  end
  object btDetalhes: TBitBtn [1]
    Left = 803
    Top = 421
    Width = 106
    Height = 25
    Hint = 'Detalhes do exame'
    CustomHint = BalloonHint1
    Caption = '&Detalhes'
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FF93460F93460F93460F93460FFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF93460FEEBF82
      E98E3593460FFF00FF0000000000000000000000000000000000000000000000
      00000000000000FF00FF93460F5DD270F7DAB793460FFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF93460F93460F
      93460F93460FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF93460F93460F
      93460F93460FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FF93460FEEBF82E98E3593460FFF00FF00000000000000
      0000000000000000000000000000000000000000000000FF00FF93460F5DD270
      F7DAB793460FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FF93460F93460F93460F93460FFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FF93460F93460F93460F93460FFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF93460FEEBF82
      E98E3593460FFF00FF0000000000000000000000000000000000000000000000
      00000000000000FF00FF93460F5DD270F7DAB793460FFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF93460F93460F
      93460F93460FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    OnClick = btDetalhesClick
  end
  object GridExamesAnt: TDBGrid [2]
    Left = 8
    Top = 8
    Width = 1012
    Height = 407
    Hint = 'Exames anteriores'
    CustomHint = BalloonHint1
    DataSource = dsExamesAnt
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDrawColumnCell = GridExamesAntDrawColumnCell
    Columns = <
      item
        Expanded = False
        FieldName = 'exa_id'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'exa_data'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'pac_codigo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'pac_nome'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'pac_idade'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'pac_meses'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cov_codigo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cov_descricao'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'exa_matricula'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'exa_guia'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'med_codigo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'med_nome'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'exa_etapa'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'exa_prioridade'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'exa_dataprior'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'exa_obs'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'exa_origem'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'exl_descricao'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'exa_destino'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'exl_descricao_1'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'etp_id'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'etp_tipo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'res_codigo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'res_nome'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'pac_sexo'
        Visible = True
      end>
  end
  inherited BalloonHint1: TBalloonHint
    Left = 8
    Top = 424
  end
  object dsExamesAnt: TDataSource
    DataSet = dmConsultas.qyConsExames
    Left = 40
    Top = 88
  end
end
