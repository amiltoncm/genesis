inherited frmVisImagem: TfrmVisImagem
  Caption = 'Visualiza Imagem Capturada'
  ClientHeight = 549
  ClientWidth = 952
  ExplicitWidth = 958
  ExplicitHeight = 581
  PixelsPerInch = 96
  TextHeight = 13
  object ImgVisualiza: TImage [0]
    Left = 0
    Top = 0
    Width = 952
    Height = 508
    Hint = 'Miniatura'
    CustomHint = BalloonHint1
    Align = alClient
    Center = True
    IncrementalDisplay = True
    ParentShowHint = False
    ShowHint = False
    ExplicitWidth = 782
    ExplicitHeight = 472
  end
  object Painel01: TPanel [1]
    Left = 0
    Top = 508
    Width = 952
    Height = 41
    CustomHint = BalloonHint1
    Align = alBottom
    Locked = True
    TabOrder = 1
    ExplicitTop = 474
    ExplicitWidth = 784
  end
  inherited btFechar: TBitBtn
    Left = 839
    Top = 516
    ExplicitLeft = 671
    ExplicitTop = 482
  end
  inherited BalloonHint1: TBalloonHint
    Left = 40
    Top = 40
  end
end
