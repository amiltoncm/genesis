inherited frmProcExamesLocais: TfrmProcExamesLocais
  CustomHint = nil
  Caption = 'Procura locais de coleta / entrega'
  ClientWidth = 327
  ExplicitWidth = 333
  ExplicitHeight = 240
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
    Left = 214
    ExplicitLeft = 376
  end
  inherited cbProcura: TwwDBLookupCombo
    Width = 225
    LookupTable = dmLookups.lkProcLocais
    LookupField = 'exl_descricao'
    Options = [loColLines, loRowLines, loTitles]
    OnKeyPress = cbProcuraKeyPress
    ExplicitWidth = 225
  end
  inherited GridProcura: TDBGrid
    Width = 310
    OnDblClick = GridProcuraDblClick
    OnKeyPress = GridProcuraKeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'exl_id'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'exl_descricao'
        Visible = True
      end>
  end
  inherited btConfirmar: TBitBtn
    Left = 103
    OnClick = btConfirmarClick
    ExplicitLeft = 265
  end
  inherited dsProcura: TDataSource
    DataSet = dmCadastros.qyExamesLocais
    Left = 88
    Top = 128
  end
end
