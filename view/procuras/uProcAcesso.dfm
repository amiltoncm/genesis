inherited frmProcAcesso: TfrmProcAcesso
  CustomHint = nil
  Caption = 'Procura Tipo de Acesso'
  ClientHeight = 356
  ClientWidth = 242
  ExplicitWidth = 248
  ExplicitHeight = 381
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
    Left = 182
    OnClick = spProcuraClick
    ExplicitLeft = 182
  end
  inherited spLimpar: TSpeedButton
    Left = 211
    OnClick = spLimparClick
    ExplicitLeft = 211
  end
  inherited btFechar: TBitBtn
    Left = 129
    Top = 323
    ExplicitLeft = 129
    ExplicitTop = 323
  end
  inherited cbProcura: TwwDBLookupCombo
    Width = 163
    LookupTable = dmLookups.lkProcAcesso
    LookupField = 'ace_descricao'
    Options = [loColLines, loRowLines, loTitles]
    OnKeyPress = cbProcuraKeyPress
    ExplicitWidth = 163
  end
  inherited GridProcura: TDBGrid
    Width = 225
    Height = 259
    OnDblClick = GridProcuraDblClick
    OnKeyPress = GridProcuraKeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'ace_codigo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ace_descricao'
        Visible = True
      end>
  end
  inherited btConfirmar: TBitBtn
    Left = 18
    Top = 323
    OnClick = btConfirmarClick
    ExplicitLeft = 18
    ExplicitTop = 323
  end
  inherited dsProcura: TDataSource
    DataSet = dmCadastros.qyAcesso
    Left = 88
    Top = 128
  end
end
