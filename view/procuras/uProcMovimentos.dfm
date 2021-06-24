inherited frmProcMovimentos: TfrmProcMovimentos
  CustomHint = nil
  Caption = 'Procura Movimentos'
  ClientHeight = 386
  ClientWidth = 263
  ExplicitTop = -19
  ExplicitWidth = 269
  ExplicitHeight = 411
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
    Left = 209
    OnClick = spProcuraClick
    ExplicitLeft = 209
  end
  inherited spLimpar: TSpeedButton
    Left = 232
    OnClick = spLimparClick
    ExplicitLeft = 232
  end
  inherited btFechar: TBitBtn
    Left = 150
    Top = 353
    ExplicitLeft = 185
    ExplicitTop = 353
  end
  inherited cbProcura: TwwDBLookupCombo
    Width = 191
    LookupTable = dmLookups.lkProcMovimentos
    LookupField = 'mov_descricao'
    Options = [loColLines, loRowLines, loTitles]
    OnKeyPress = cbProcuraKeyPress
    ExplicitWidth = 191
  end
  inherited GridProcura: TDBGrid
    Width = 246
    Height = 291
    OnDblClick = GridProcuraDblClick
    OnKeyPress = GridProcuraKeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'mov_codigo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'mov_descricao'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'mov_tipo'
        Visible = True
      end>
  end
  inherited btConfirmar: TBitBtn
    Left = 39
    Top = 353
    OnClick = btConfirmarClick
    ExplicitLeft = 39
    ExplicitTop = 439
  end
  inherited dsProcura: TDataSource
    DataSet = dmCadastros.qyMovimentos
    Left = 88
    Top = 128
  end
end
