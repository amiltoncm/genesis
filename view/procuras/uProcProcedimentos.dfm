inherited frmProcProcedimentos: TfrmProcProcedimentos
  CustomHint = nil
  Caption = 'Procura Procedimentos'
  ClientWidth = 928
  ExplicitWidth = 934
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
    Left = 239
    OnClick = spProcuraClick
    ExplicitLeft = 239
  end
  inherited spLimpar: TSpeedButton
    Left = 268
    OnClick = spLimparClick
    ExplicitLeft = 268
  end
  inherited btFechar: TBitBtn
    Left = 815
    ExplicitLeft = 815
  end
  inherited cbProcura: TwwDBLookupCombo
    Width = 225
    LookupTable = dmLookups.lkProcProcedimentos
    LookupField = 'prc_descricao'
    Options = [loColLines, loRowLines, loTitles]
    OnKeyPress = cbProcuraKeyPress
    ExplicitWidth = 225
  end
  inherited GridProcura: TDBGrid
    Width = 912
    OnDblClick = GridProcuraDblClick
    OnKeyPress = GridProcuraKeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'prc_tuss'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'prc_descricao'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'prc_amr'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'prc_descant'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'prc_vlrhora'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'prc_vlroper'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'prc_vlrfilme'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'prc_vlrtotal'
        Visible = True
      end>
  end
  inherited btConfirmar: TBitBtn
    Left = 704
    OnClick = btConfirmarClick
    ExplicitLeft = 704
  end
  inherited dsProcura: TDataSource
    DataSet = dmCadastros.qyProcedimentos
    Left = 88
    Top = 128
  end
end
