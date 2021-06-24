inherited frmProcUsuarios: TfrmProcUsuarios
  Caption = 'Procura Usu'#225'rios'
  ClientWidth = 690
  ExplicitWidth = 696
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
    Left = 577
    ExplicitLeft = 577
  end
  inherited cbProcura: TwwDBLookupCombo
    CharCase = ecUpperCase
    LookupTable = dmLookups.lkProcUsuarios
    LookupField = 'usu_nome'
    OnKeyPress = cbProcuraKeyPress
  end
  inherited GridProcura: TDBGrid
    Width = 674
    OnDblClick = GridProcuraDblClick
    OnKeyPress = GridProcuraKeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'usu_codigo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'usu_nome'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'usu_senha'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'ace_codigo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ace_descricao'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'usu_ativo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'usu_nomecomp'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'usu_exppdf'
        Visible = True
      end>
  end
  inherited btConfirmar: TBitBtn
    Left = 466
    OnClick = btConfirmarClick
    ExplicitLeft = 466
  end
  inherited dsProcura: TDataSource
    DataSet = dmCadastros.qyUsuarios
  end
end
