inherited frmProcLaudosModMacro: TfrmProcLaudosModMacro
  CustomHint = nil
  Caption = 'Procura Modelos de Laudo (Macroscopia)'
  ClientWidth = 298
  ExplicitWidth = 304
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
    Left = 184
    ExplicitLeft = 184
  end
  inherited cbProcura: TwwDBLookupCombo
    Width = 225
    LookupTable = dmLookups.lkProcLaudosModMacro
    LookupField = 'lmm_descricao'
    Options = [loColLines, loRowLines, loTitles]
    OnKeyPress = cbProcuraKeyPress
    ExplicitWidth = 225
  end
  inherited GridProcura: TDBGrid
    Width = 281
    OnDblClick = GridProcuraDblClick
    OnKeyPress = GridProcuraKeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'lmm_id'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'lmm_descricao'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'lmm_modelo'
        Visible = False
      end>
  end
  inherited btConfirmar: TBitBtn
    Left = 73
    OnClick = btConfirmarClick
    ExplicitLeft = 73
  end
  inherited dsProcura: TDataSource
    DataSet = dmCadastros.qyLaudosModMacro
    Left = 88
    Top = 128
  end
end
