inherited frmProcConvenios: TfrmProcConvenios
  CustomHint = nil
  Caption = 'Procura Convenios'
  ClientWidth = 852
  ExplicitWidth = 858
  PixelsPerInch = 96
  TextHeight = 13
  inherited Label1: TLabel
    CustomHint = nil
  end
  inherited lbCampo: TLabel
    Width = 64
    CustomHint = nil
    Caption = '(descricao)'
    ExplicitWidth = 64
  end
  inherited spProcura: TSpeedButton
    Left = 287
    OnClick = spProcuraClick
    ExplicitLeft = 287
  end
  inherited spLimpar: TSpeedButton
    Left = 316
    OnClick = spLimparClick
    ExplicitLeft = 316
  end
  inherited btFechar: TBitBtn
    Left = 739
    ExplicitLeft = 185
  end
  inherited cbProcura: TwwDBLookupCombo
    Width = 265
    LookupTable = dmLookups.lkProcConvenios
    LookupField = 'cov_descricao'
    Options = [loColLines, loRowLines, loTitles]
    OnKeyPress = cbProcuraKeyPress
    ExplicitWidth = 265
  end
  inherited GridProcura: TDBGrid
    Width = 836
    OnDblClick = GridProcuraDblClick
    OnKeyPress = GridProcuraKeyPress
    Columns = <
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
        FieldName = 'cov_cnpj'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cov_ie'
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
        FieldName = 'cov_logradouro'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cov_numero'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cov_bairro'
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
        FieldName = 'cov_fone'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cov_fax'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cov_celular'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cov_email'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cov_cep'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cov_regans'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cov_veriftiss'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cov_codoperadora'
        Visible = True
      end>
  end
  inherited btConfirmar: TBitBtn
    Left = 628
    OnClick = btConfirmarClick
    ExplicitLeft = 74
  end
  inherited dsProcura: TDataSource
    DataSet = dmCadastros.qyConvenios
    Left = 88
    Top = 128
  end
end
