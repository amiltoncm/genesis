inherited frmConsSelExame: TfrmConsSelExame
  Caption = 'Seleciona exame - alterar'
  ClientHeight = 524
  ClientWidth = 991
  ExplicitWidth = 997
  ExplicitHeight = 549
  PixelsPerInch = 96
  TextHeight = 13
  inherited lbParametro: TLabel
    Width = 61
    Caption = 'ID do exame'
    ExplicitWidth = 61
  end
  inherited btFechar: TBitBtn
    Left = 877
    Top = 491
    ExplicitLeft = 877
    ExplicitTop = 491
  end
  inherited btFiltrar: TBitBtn
    Left = 95
    TabOrder = 2
    OnClick = btFiltrarClick
    ExplicitLeft = 95
  end
  inherited btLimpar: TBitBtn
    Left = 206
    TabOrder = 3
    OnClick = btLimparClick
    ExplicitLeft = 206
  end
  inherited edParametro: TEdit
    Left = 48
    Top = 486
    TabOrder = 1
    Visible = False
    ExplicitLeft = 48
    ExplicitTop = 486
  end
  inherited GridConsulta: TDBGrid
    Width = 974
    Height = 425
    TabOrder = 6
    OnDblClick = GridConsultaDblClick
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
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'pac_nome'
        Width = 400
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
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'cov_codigo'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'cov_descricao'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'med_nome'
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
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'exa_etapa'
        Visible = False
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
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'exa_origem'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'exl_descricao'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'exa_destino'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'exl_descricao_1'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'etp_id'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'etp_tipo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'res_codigo'
        Visible = False
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
  object meExame: TMaskEdit [6]
    Left = 8
    Top = 24
    Width = 81
    Height = 21
    Hint = 'Digite o n'#250'mero da Citologia'#13#10'(Formato: CIT000000)'
    CustomHint = BalloonHint1
    CharCase = ecUpperCase
    EditMask = '00C0000000;1;_'
    MaxLength = 10
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    Text = '          '
  end
  inherited btSelecionar: TBitBtn
    Left = 766
    Top = 491
    OnClick = btSelecionarClick
    ExplicitLeft = 766
    ExplicitTop = 491
  end
  inherited BalloonHint1: TBalloonHint
    Left = 8
    Top = 488
  end
  inherited dsConsulta: TDataSource
    DataSet = dmExames.qyExames
  end
end
