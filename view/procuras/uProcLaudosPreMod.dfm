inherited frmProcLaudosPreMod: TfrmProcLaudosPreMod
  Caption = 'Procura LaudosPreMod'
  ClientHeight = 355
  ClientWidth = 267
  ExplicitWidth = 273
  ExplicitHeight = 380
  PixelsPerInch = 96
  TextHeight = 13
  inherited lbCampo: TLabel
    Width = 66
    Caption = '(Descri'#231#227'o)'
    ExplicitWidth = 66
  end
  inherited spProcura: TSpeedButton
    Left = 217
    OnClick = spProcuraClick
    ExplicitLeft = 217
  end
  inherited spLimpar: TSpeedButton
    Left = 237
    OnClick = spLimparClick
    ExplicitLeft = 237
  end
  inherited btFechar: TBitBtn
    Left = 154
    Top = 322
    ExplicitLeft = 370
    ExplicitTop = 401
  end
  inherited cbProcura: TwwDBLookupCombo
    Width = 196
    LookupTable = dmLookups.lkProcLaudosPreMod
    LookupField = 'lpm_descricao'
    Options = [loColLines, loRowLines, loTitles]
    OnKeyPress = cbProcuraKeyPress
    ExplicitWidth = 196
  end
  inherited GridProcura: TDBGrid
    Left = 8
    Width = 251
    Height = 259
    OnDblClick = GridProcuraDblClick
    OnKeyPress = GridProcuraKeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'lpm_codigo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'lpm_descricao'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'lpm_modelo'
        Visible = False
      end>
  end
  inherited btConfirmar: TBitBtn
    Left = 43
    Top = 322
    OnClick = btConfirmarClick
    ExplicitLeft = 259
    ExplicitTop = 401
  end
  inherited dsProcura: TDataSource
    DataSet = dmCadastros.qyLaudosPreMod
    Left = 88
    Top = 128
  end
end
