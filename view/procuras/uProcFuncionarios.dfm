inherited frmProcFuncionarios: TfrmProcFuncionarios
  CustomHint = nil
  Caption = 'Procura Funcionarios'
  ClientWidth = 949
  ExplicitWidth = 955
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
    Left = 263
    OnClick = spProcuraClick
    ExplicitLeft = 263
  end
  inherited spLimpar: TSpeedButton
    Left = 292
    OnClick = spLimparClick
    ExplicitLeft = 292
  end
  inherited btFechar: TBitBtn
    Left = 836
    ExplicitLeft = 185
  end
  inherited cbProcura: TwwDBLookupCombo
    Width = 249
    LookupTable = dmLookups.lkProcFuncionarios
    LookupField = 'fun_nome'
    Options = [loColLines, loRowLines, loTitles]
    OnKeyPress = cbProcuraKeyPress
    ExplicitWidth = 249
  end
  inherited GridProcura: TDBGrid
    Width = 933
    OnDblClick = GridProcuraDblClick
    OnKeyPress = GridProcuraKeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'fun_codigo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'fun_nome'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'fnc_id'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'fnc_descricao'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'fun_cpf'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'fun_rg'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'fun_carttrab'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'fun_dataadmis'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'fun_salario'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'fun_endereco'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'fun_bairro'
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
        FieldName = 'fun_cep'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'fun_telefone'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'fun_celular'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'fun_email'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'fun_datanasc'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'fun_ativo'
        Visible = True
      end>
  end
  inherited btConfirmar: TBitBtn
    Left = 725
    OnClick = btConfirmarClick
    ExplicitLeft = 74
  end
  inherited dsProcura: TDataSource
    DataSet = dmCadastros.qyFuncionarios
    Left = 88
    Top = 128
  end
end
