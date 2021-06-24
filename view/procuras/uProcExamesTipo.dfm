inherited frmProcExamesTipo: TfrmProcExamesTipo
  CustomHint = nil
  Caption = 'Procura ExamesTipo'
  ClientHeight = 396
  ClientWidth = 286
  ExplicitWidth = 292
  ExplicitHeight = 421
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
    Left = 223
    OnClick = spProcuraClick
    ExplicitLeft = 223
  end
  inherited spLimpar: TSpeedButton
    Left = 252
    OnClick = spLimparClick
    ExplicitLeft = 252
  end
  inherited btFechar: TBitBtn
    Left = 173
    Top = 363
    ExplicitLeft = 173
    ExplicitTop = 363
  end
  inherited cbProcura: TwwDBLookupCombo
    Width = 209
    LookupTable = dmLookups.lkProcExamesTipo
    LookupField = 'eio_descricao'
    Options = [loColLines, loRowLines, loTitles]
    OnKeyPress = cbProcuraKeyPress
    ExplicitWidth = 209
  end
  inherited GridProcura: TDBGrid
    Width = 268
    Height = 299
    OnDblClick = GridProcuraDblClick
    OnKeyPress = GridProcuraKeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'eio_id'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'eio_descricao'
        Visible = True
      end>
  end
  inherited btConfirmar: TBitBtn
    Left = 62
    Top = 363
    OnClick = btConfirmarClick
    ExplicitLeft = 62
    ExplicitTop = 363
  end
  inherited dsProcura: TDataSource
    DataSet = dmCadastros.qyExamesTipo
    Left = 88
    Top = 128
  end
end
