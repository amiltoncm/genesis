inherited frmProcExamesTipoHist: TfrmProcExamesTipoHist
  CustomHint = nil
  Caption = 'Procura Sub Tipos de Exame (Histologia)'
  ClientWidth = 667
  ExplicitWidth = 673
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
    Left = 554
    ExplicitLeft = 554
  end
  inherited cbProcura: TwwDBLookupCombo
    Width = 225
    LookupTable = dmLookups.lkProcExamesTipoHist
    LookupField = 'eth_descricao'
    Options = [loColLines, loRowLines, loTitles]
    OnKeyPress = cbProcuraKeyPress
    ExplicitWidth = 225
  end
  inherited GridProcura: TDBGrid
    Width = 650
    OnDblClick = GridProcuraDblClick
    OnKeyPress = GridProcuraKeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'eth_id'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'eth_descricao'
        Visible = True
      end
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
    Left = 443
    OnClick = btConfirmarClick
    ExplicitLeft = 443
  end
  inherited dsProcura: TDataSource
    DataSet = dmCadastros.qyExamesTipoHist
    Left = 88
    Top = 128
  end
end
