inherited frmObsExame: TfrmObsExame
  Caption = 'Observa'#231#245'es do Exame'
  ClientHeight = 195
  ClientWidth = 322
  ExplicitTop = 8
  ExplicitWidth = 328
  ExplicitHeight = 227
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 8
    Top = 8
    Width = 63
    Height = 13
    CustomHint = BalloonHint1
    Caption = 'Observa'#231#245'es'
  end
  inherited btFechar: TBitBtn
    Left = 209
    Top = 162
    ExplicitLeft = 428
  end
  object dbObsExame: TDBMemo [2]
    Left = 8
    Top = 24
    Width = 305
    Height = 129
    CustomHint = BalloonHint1
    DataField = 'exa_obs'
    DataSource = frmExameLaudo.dsExame
    TabOrder = 1
  end
  inherited BalloonHint1: TBalloonHint
    Left = 72
    Top = 88
  end
end
