inherited frmProcPacientes: TfrmProcPacientes
  Caption = 'Procura Pacientes'
  ClientWidth = 965
  ExplicitWidth = 971
  PixelsPerInch = 96
  TextHeight = 13
  inherited lbCampo: TLabel
    Width = 45
    Caption = '(NOME)'
    ExplicitWidth = 45
  end
  inherited spProcura: TSpeedButton
    OnClick = spProcuraClick
  end
  inherited spLimpar: TSpeedButton
    OnClick = spLimparClick
  end
  inherited btFechar: TBitBtn
    Left = 852
    ExplicitLeft = 852
  end
  inherited cbProcura: TwwDBLookupCombo
    LookupTable = dmLookups.lkProcPacientes
    LookupField = 'pac_nome'
    OnKeyPress = cbProcuraKeyPress
  end
  inherited GridProcura: TDBGrid
    Width = 949
    OnDblClick = GridProcuraDblClick
    OnKeyPress = GridProcuraKeyPress
    Columns = <
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
        FieldName = 'pac_dtnasc'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'pac_cpf'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'pac_rg'
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
        FieldName = 'pac_logradouro'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'pac_numero'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'pac_bairro'
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
        FieldName = 'pac_fone'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'pac_celular'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'pac_cep'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'pac_email'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'pac_sexo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'pac_obs'
        Visible = False
      end>
  end
  inherited btConfirmar: TBitBtn
    Left = 739
    OnClick = btConfirmarClick
    ExplicitLeft = 739
  end
  inherited dsProcura: TDataSource
    DataSet = dmCadastros.qyPacientes
  end
end
