inherited frmProcBancos: TfrmProcBancos
  CustomHint = nil
  Caption = 'Procura Bancos'
  ClientWidth = 417
  ExplicitWidth = 423
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
    Left = 304
    ExplicitLeft = 185
  end
  inherited cbProcura: TwwDBLookupCombo
    Width = 225
    LookupTable = dmLookups.lkProcBancos
    LookupField = 'ban_descricao'
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
        FieldName = 'ban_codigo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ban_descricao'
        Visible = True
      end>
  end
  inherited btConfirmar: TBitBtn
    Left = 193
    OnClick = btConfirmarClick
    ExplicitLeft = 74
  end
  inherited dsProcura: TDataSource
    DataSet = dmCadastros.qyBancos
    Left = 88
    Top = 128
  end
end
