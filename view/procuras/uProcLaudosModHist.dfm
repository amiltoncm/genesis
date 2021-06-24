inherited frmProcLaudosModHist: TfrmProcLaudosModHist
  CustomHint = nil
  Caption = 'Procura Modelos de Microscopia / Diagn'#243'stico'
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
    Left = 185
    ExplicitLeft = 185
  end
  inherited cbProcura: TwwDBLookupCombo
    Width = 225
    LookupTable = dmLookups.lkProcLaudosModHist
    LookupField = 'lmh_descricao'
    Options = [loColLines, loRowLines, loTitles]
    OnKeyPress = cbProcuraKeyPress
    ExplicitWidth = 225
  end
  inherited GridProcura: TDBGrid
    Width = 282
    OnDblClick = GridProcuraDblClick
    OnKeyPress = GridProcuraKeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'lmh_id'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'lmh_descricao'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'lmh_microscopia'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'lmh_diagnostico'
        Visible = False
      end>
  end
  inherited btConfirmar: TBitBtn
    Left = 74
    OnClick = btConfirmarClick
    ExplicitLeft = 74
  end
  inherited dsProcura: TDataSource
    DataSet = dmCadastros.qyLaudosModHist
    Left = 88
    Top = 128
  end
end
