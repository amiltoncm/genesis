inherited frmProcCitofrases: TfrmProcCitofrases
  Caption = 'Procura Citofrases'
  ClientHeight = 432
  ClientWidth = 794
  ExplicitWidth = 800
  ExplicitHeight = 457
  PixelsPerInch = 96
  TextHeight = 13
  inherited lbCampo: TLabel
    Width = 39
    Caption = '(nome)'
    ExplicitWidth = 39
  end
  inherited spProcura: TSpeedButton
    Left = 623
    OnClick = spProcuraClick
    ExplicitLeft = 623
  end
  inherited spLimpar: TSpeedButton
    Left = 652
    OnClick = spLimparClick
    ExplicitLeft = 652
  end
  inherited btFechar: TBitBtn
    Left = 681
    Top = 399
    ExplicitLeft = 433
    ExplicitTop = 394
  end
  inherited cbProcura: TwwDBLookupCombo
    Width = 609
    LookupTable = dmLookups.lkProcCitofrases
    LookupField = 'ctf_frase'
    Options = [loColLines, loRowLines, loTitles]
    OnKeyPress = cbProcuraKeyPress
    ExplicitWidth = 609
  end
  inherited GridProcura: TDBGrid
    Left = 8
    Width = 667
    OnDblClick = GridProcuraDblClick
    OnKeyPress = GridProcuraKeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'ctf_frase'
        Width = 568
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ctf_id'
        Visible = True
      end>
  end
  inherited btConfirmar: TBitBtn
    Left = 681
    Top = 368
    OnClick = btConfirmarClick
    ExplicitLeft = 433
    ExplicitTop = 363
  end
  inherited dsProcura: TDataSource
    DataSet = dmCadastros.qyCitofrases
    Left = 88
    Top = 128
  end
end
