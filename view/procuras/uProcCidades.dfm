inherited frmProcCidades: TfrmProcCidades
  CustomHint = nil
  Caption = 'Procura Cidades'
  ClientWidth = 650
  ExplicitWidth = 656
  ExplicitHeight = 496
  PixelsPerInch = 96
  TextHeight = 13
  inherited Label1: TLabel
    CustomHint = nil
  end
  inherited lbCampo: TLabel
    Width = 47
    CustomHint = nil
    Caption = '(cidade)'
    ExplicitWidth = 47
  end
  inherited spProcura: TSpeedButton
    Left = 303
    OnClick = spProcuraClick
    ExplicitLeft = 303
  end
  inherited spLimpar: TSpeedButton
    Left = 332
    OnClick = spLimparClick
    ExplicitLeft = 332
  end
  inherited btFechar: TBitBtn
    Left = 537
    ExplicitLeft = 537
  end
  inherited cbProcura: TwwDBLookupCombo
    Width = 289
    LookupTable = dmLookups.lkProcCidades
    LookupField = 'cid_cidade'
    Options = [loColLines, loRowLines, loTitles]
    OnKeyPress = cbProcuraKeyPress
    ExplicitWidth = 289
  end
  inherited GridProcura: TDBGrid
    Width = 633
    OnDblClick = GridProcuraDblClick
    OnKeyPress = GridProcuraKeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'cid_codigo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cid_cidade'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'uf_sigla'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'uf_estado'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cid_ceppadrao'
        Visible = True
      end>
  end
  inherited btConfirmar: TBitBtn
    Left = 426
    OnClick = btConfirmarClick
    ExplicitLeft = 426
  end
  inherited dsProcura: TDataSource
    DataSet = dmCadastros.qyCidades
    Left = 88
    Top = 128
  end
end
