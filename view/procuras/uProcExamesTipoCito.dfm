inherited frmProcExamesTipoCito: TfrmProcExamesTipoCito
  CustomHint = nil
  Caption = 'Procura Tipos de Exames (Citologia)'
  ClientWidth = 974
  ExplicitWidth = 980
  PixelsPerInch = 96
  TextHeight = 13
  inherited Label1: TLabel
    CustomHint = nil
  end
  inherited lbCampo: TLabel
    Width = 36
    CustomHint = nil
    Caption = '(local)'
    ExplicitWidth = 36
  end
  inherited spProcura: TSpeedButton
    Left = 279
    OnClick = spProcuraClick
    ExplicitLeft = 279
  end
  inherited spLimpar: TSpeedButton
    Left = 308
    OnClick = spLimparClick
    ExplicitLeft = 308
  end
  inherited btFechar: TBitBtn
    Left = 861
    ExplicitLeft = 861
  end
  inherited cbProcura: TwwDBLookupCombo
    Width = 265
    Selected.Strings = (
      'eto_local'#9'40'#9'Local'#9#9
      'eto_descricao'#9'120'#9'Descri'#231#227'o'#9#9
      'eto_id'#9'10'#9'ID'#9#9)
    LookupTable = dmLookups.lkProcExamesTipoCito
    LookupField = 'eto_local'
    Options = [loColLines, loRowLines, loTitles]
    OnKeyPress = cbProcuraKeyPress
    ExplicitWidth = 265
  end
  inherited GridProcura: TDBGrid
    Width = 958
    OnDblClick = GridProcuraDblClick
    OnKeyPress = GridProcuraKeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'eto_local'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'eto_descricao'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'eto_id'
        Visible = True
      end>
  end
  inherited btConfirmar: TBitBtn
    Left = 750
    OnClick = btConfirmarClick
    ExplicitLeft = 750
  end
  inherited dsProcura: TDataSource
    DataSet = dmCadastros.qyExamesTipoCito
    Left = 88
    Top = 128
  end
end
