inherited frmProcResponsaveis: TfrmProcResponsaveis
  CustomHint = nil
  Caption = 'Procura Responsaveis'
  ClientWidth = 817
  ExplicitWidth = 823
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
    Left = 375
    OnClick = spProcuraClick
    ExplicitLeft = 375
  end
  inherited spLimpar: TSpeedButton
    Left = 404
    OnClick = spLimparClick
    ExplicitLeft = 404
  end
  inherited btFechar: TBitBtn
    Left = 704
    ExplicitLeft = 704
  end
  inherited cbProcura: TwwDBLookupCombo
    Width = 345
    LookupTable = dmLookups.lkProcResponsaveis
    LookupField = 'res_nome'
    Options = [loColLines, loRowLines, loTitles]
    OnKeyPress = cbProcuraKeyPress
    ExplicitWidth = 345
  end
  inherited GridProcura: TDBGrid
    Width = 801
    OnDblClick = GridProcuraDblClick
    OnKeyPress = GridProcuraKeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'res_titulo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'res_nome'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'res_codigo'
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
        FieldName = 'res_numconselho'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cos_uf'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'res_iniciais'
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
      end
      item
        Expanded = False
        FieldName = 'prt_codigo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'prt_termo'
        Visible = True
      end>
  end
  inherited btConfirmar: TBitBtn
    Left = 593
    OnClick = btConfirmarClick
    ExplicitLeft = 593
  end
  inherited dsProcura: TDataSource
    DataSet = dmCadastros.qyResponsaveis
    Left = 88
    Top = 128
  end
end
