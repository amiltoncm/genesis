inherited frmProcTopografias: TfrmProcTopografias
  CustomHint = nil
  Caption = 'Procura Topografias'
  ClientWidth = 419
  ExplicitWidth = 425
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
    Left = 306
    ExplicitLeft = 306
  end
  inherited cbProcura: TwwDBLookupCombo
    Width = 225
    LookupTable = dmLookups.lkProcTopografias
    LookupField = 'top_descricao'
    Options = [loColLines, loRowLines, loTitles]
    OnKeyPress = cbProcuraKeyPress
    ExplicitWidth = 225
  end
  inherited GridProcura: TDBGrid
    Width = 401
    OnDblClick = GridProcuraDblClick
    OnKeyPress = GridProcuraKeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'top_id'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'top_descricao'
        Visible = True
      end>
  end
  inherited btConfirmar: TBitBtn
    Left = 195
    OnClick = btConfirmarClick
    ExplicitLeft = 195
  end
  inherited dsProcura: TDataSource
    DataSet = dmCadastros.qyTopografias
    Left = 88
    Top = 128
  end
end
