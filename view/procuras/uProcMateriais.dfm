inherited frmProcMateriais: TfrmProcMateriais
  CustomHint = nil
  Caption = 'Procura Materiais'
  ClientWidth = 298
  ExplicitTop = -45
  ExplicitWidth = 304
  ExplicitHeight = 496
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
    Left = 185
    ExplicitLeft = 185
  end
  inherited cbProcura: TwwDBLookupCombo
    Width = 225
    LookupTable = dmLookups.lkProcMateriais
    LookupField = 'mat_descricao'
    Options = [loColLines, loRowLines, loTitles]
    OnKeyPress = cbProcuraKeyPress
    ExplicitWidth = 225
  end
  inherited GridProcura: TDBGrid
    Width = 281
    OnDblClick = GridProcuraDblClick
    OnKeyPress = GridProcuraKeyPress
  end
  inherited btConfirmar: TBitBtn
    Left = 74
    OnClick = btConfirmarClick
    ExplicitLeft = 74
  end
  inherited dsProcura: TDataSource
    DataSet = dmCadastros.qyMateriais
    Left = 88
    Top = 128
  end
end
