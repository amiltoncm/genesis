inherited frmProcFornecedores: TfrmProcFornecedores
  CustomHint = nil
  Caption = 'Procura Fornecedores'
  ClientWidth = 955
  ExplicitWidth = 961
  PixelsPerInch = 96
  TextHeight = 13
  inherited Label1: TLabel
    CustomHint = nil
  end
  inherited lbCampo: TLabel
    Width = 40
    CustomHint = nil
    Caption = '(razao)'
    ExplicitWidth = 40
  end
  inherited spProcura: TSpeedButton
    Left = 311
    OnClick = spProcuraClick
    ExplicitLeft = 311
  end
  inherited spLimpar: TSpeedButton
    Left = 340
    OnClick = spLimparClick
    ExplicitLeft = 340
  end
  inherited btFechar: TBitBtn
    Left = 842
    ExplicitLeft = 185
  end
  inherited cbProcura: TwwDBLookupCombo
    Width = 297
    LookupTable = dmLookups.lkProcFornecedores
    LookupField = 'for_razao'
    Options = [loColLines, loRowLines, loTitles]
    OnKeyPress = cbProcuraKeyPress
    ExplicitWidth = 297
  end
  inherited GridProcura: TDBGrid
    Width = 939
    OnDblClick = GridProcuraDblClick
    OnKeyPress = GridProcuraKeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'for_codigo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'for_razao'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'for_fantasia'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'for_cnpj'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'for_ie'
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
        FieldName = 'for_logradouro'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'for_numero'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'for_complemento'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'for_bairro'
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
        FieldName = 'for_cep'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'for_fone'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'for_fax'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'for_celular'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'for_email'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'for_homepage'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'for_dtcadastro'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'for_tipo'
        Visible = True
      end>
  end
  inherited btConfirmar: TBitBtn
    Left = 731
    OnClick = btConfirmarClick
    ExplicitLeft = 74
  end
  inherited dsProcura: TDataSource
    DataSet = dmCadastros.qyFornecedores
    Left = 88
    Top = 128
  end
end
