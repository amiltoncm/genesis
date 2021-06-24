inherited frmProcMedicos: TfrmProcMedicos
  CustomHint = nil
  Caption = 'Procura Medicos'
  ClientWidth = 981
  ExplicitWidth = 987
  PixelsPerInch = 96
  TextHeight = 13
  inherited Label1: TLabel
    CustomHint = nil
  end
  inherited lbCampo: TLabel
    Width = 39
    CustomHint = nil
    Caption = '(nome)'
    ExplicitWidth = 39
  end
  inherited spProcura: TSpeedButton
    Left = 319
    OnClick = spProcuraClick
    ExplicitLeft = 319
  end
  inherited spLimpar: TSpeedButton
    Left = 348
    OnClick = spLimparClick
    ExplicitLeft = 348
  end
  inherited btFechar: TBitBtn
    Left = 868
    ExplicitLeft = 185
  end
  inherited cbProcura: TwwDBLookupCombo
    Width = 305
    LookupTable = dmLookups.lkProcMedicos
    LookupField = 'med_nome'
    Options = [loColLines, loRowLines, loTitles]
    OnKeyPress = cbProcuraKeyPress
    ExplicitWidth = 305
  end
  inherited GridProcura: TDBGrid
    Width = 965
    OnDblClick = GridProcuraDblClick
    OnKeyPress = GridProcuraKeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'med_nome'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'med_codigo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'med_fone'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'med_titulo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cos_id'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cos_tipo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'med_numconselho'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cos_uf'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'med_cpf'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'med_rg'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tpl_id'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tpl_tipo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'med_logradouro'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'med_numero'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'med_bairro'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cid_codigo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cid_cidade'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'uf_sigla'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'med_celular'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'med_cep'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'med_email'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cbo_codigo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cbo_descricao'
        Visible = True
      end>
  end
  inherited btConfirmar: TBitBtn
    Left = 757
    OnClick = btConfirmarClick
    ExplicitLeft = 74
  end
  inherited dsProcura: TDataSource
    DataSet = dmCadastros.qyMedicos
    Left = 88
    Top = 128
  end
end
