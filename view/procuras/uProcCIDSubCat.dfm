inherited frmProcCIDSubCat: TfrmProcCIDSubCat
  Caption = 'Procurar CID 10 (Subcategoria)'
  ClientHeight = 523
  ClientWidth = 666
  ExplicitWidth = 672
  ExplicitHeight = 548
  PixelsPerInch = 96
  TextHeight = 13
  inherited lbCampo: TLabel
    Width = 95
    Caption = '(DESC. ABREV.)'
    ExplicitWidth = 95
  end
  inherited spProcura: TSpeedButton
    Left = 508
    OnClick = spProcuraClick
    ExplicitLeft = 508
  end
  inherited spLimpar: TSpeedButton
    Left = 531
    OnClick = spLimparClick
    ExplicitLeft = 531
  end
  inherited btFechar: TBitBtn
    Left = 553
    Top = 490
    ExplicitLeft = 476
  end
  inherited cbProcura: TwwDBLookupCombo
    Width = 494
    Selected.Strings = (
      'sct_descricao'#9'300'#9'Descri'#231#227'o'#9#9
      'sct_descabrev'#9'80'#9'Desc. Abrev.'#9#9
      'sct_subcat'#9'4'#9'ID'#9#9)
    LookupTable = dmLookups.lkProcCIDSubCat
    LookupField = 'sct_descabrev'
    OnKeyPress = cbProcuraKeyPress
    ExplicitWidth = 494
  end
  inherited GridProcura: TDBGrid
    Left = 8
    Width = 650
    Height = 378
    OnDblClick = GridProcuraDblClick
    OnKeyPress = GridProcuraKeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'mat_id'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'sct_subcat'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sct_descricao'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sct_descabrev'
        Visible = True
      end>
  end
  inherited btConfirmar: TBitBtn
    Left = 440
    Top = 490
    OnClick = btConfirmarClick
    ExplicitLeft = 363
  end
  object Panel1: TPanel [8]
    Left = 8
    Top = 438
    Width = 650
    Height = 46
    CustomHint = BalloonHint1
    BevelInner = bvLowered
    Color = clInfoBk
    ParentBackground = False
    TabOrder = 4
    object Label2: TLabel
      Left = 8
      Top = 8
      Width = 22
      Height = 13
      CustomHint = BalloonHint1
      Caption = 'CID:'
    end
    object DBText1: TDBText
      Left = 36
      Top = 8
      Width = 45
      Height = 17
      CustomHint = BalloonHint1
      DataField = 'sct_subcat'
      DataSource = dsProcura
    end
    object DBText2: TDBText
      Left = 97
      Top = 8
      Width = 544
      Height = 17
      CustomHint = BalloonHint1
      DataField = 'sct_descabrev'
      DataSource = dsProcura
    end
    object DBText3: TDBText
      Left = 8
      Top = 27
      Width = 633
      Height = 17
      CustomHint = BalloonHint1
      DataField = 'sct_descricao'
      DataSource = dsProcura
    end
    object Label3: TLabel
      Left = 87
      Top = 8
      Width = 4
      Height = 13
      CustomHint = BalloonHint1
      Caption = '-'
    end
  end
  inherited dsProcura: TDataSource
    DataSet = dmCid10.qySubCategorias
  end
end
