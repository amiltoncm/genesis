inherited frmProcAgenda: TfrmProcAgenda
  CustomHint = nil
  Caption = 'Procura Agenda'
  ClientWidth = 959
  ExplicitWidth = 965
  PixelsPerInch = 96
  TextHeight = 13
  inherited Label1: TLabel
    CustomHint = nil
  end
  inherited lbCampo: TLabel
    Width = 39
    CustomHint = nil
    Caption = '(nome)'
    ExplicitWidth = 39
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
    Left = 846
    ExplicitLeft = 185
  end
  inherited cbProcura: TwwDBLookupCombo
    Width = 225
    LookupTable = dmLookups.lkProcAgenda
    LookupField = 'age_nome'
    Options = [loColLines, loRowLines, loTitles]
    OnKeyPress = cbProcuraKeyPress
    ExplicitWidth = 225
  end
  inherited GridProcura: TDBGrid
    Width = 943
    OnDblClick = GridProcuraDblClick
    OnKeyPress = GridProcuraKeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'age_codigo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'age_nome'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'age_telefone'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'age_fax'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'age_celular'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'age_email'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'age_homepage'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'age_msn'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'age_skype'
        Visible = True
      end>
  end
  inherited btConfirmar: TBitBtn
    Left = 735
    OnClick = btConfirmarClick
    ExplicitLeft = 74
  end
  inherited dsProcura: TDataSource
    DataSet = dmCadastros.qyAgenda
    Left = 88
    Top = 128
  end
end
