inherited frmVisLogs: TfrmVisLogs
  Caption = 'Visualiza logs'
  ClientHeight = 529
  ClientWidth = 537
  ExplicitWidth = 543
  ExplicitHeight = 561
  PixelsPerInch = 96
  TextHeight = 13
  inherited btFechar: TBitBtn
    Left = 424
    Top = 496
  end
  object PageControl: TPageControl [1]
    Left = 0
    Top = 0
    Width = 529
    Height = 489
    CustomHint = BalloonHint1
    ActivePage = tsWeb
    TabOrder = 1
    OnChange = PageControlChange
    object tsLogin: TTabSheet
      CustomHint = BalloonHint1
      Caption = '&Login'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object memoLog: TMemo
        Left = 0
        Top = 0
        Width = 522
        Height = 457
        Hint = 'Log dos logins'
        CustomHint = BalloonHint1
        TabStop = False
        Color = clInfoBk
        Lines.Strings = (
          'memoLog')
        ReadOnly = True
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
    object tsErroLog: TTabSheet
      CustomHint = BalloonHint1
      Caption = 'Erro Login'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object memoErro: TMemo
        Left = -1
        Top = -1
        Width = 522
        Height = 458
        Hint = 'Log dos erros'
        CustomHint = BalloonHint1
        TabStop = False
        Color = clSilver
        Lines.Strings = (
          'memoLog')
        ReadOnly = True
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
    object tsWeb: TTabSheet
      CustomHint = BalloonHint1
      Caption = 'Web'
      ImageIndex = 2
      object Label1: TLabel
        Left = 8
        Top = 8
        Width = 115
        Height = 13
        CustomHint = BalloonHint1
        Caption = 'Logs do sistema genesis'
      end
      object FileListBox1: TFileListBox
        Left = 192
        Top = 32
        Width = 321
        Height = 425
        CustomHint = BalloonHint1
        FileType = [ftReadOnly, ftNormal]
        ItemHeight = 13
        Mask = '*.log'
        TabOrder = 0
      end
      object DirectoryListBox1: TDirectoryListBox
        Left = 8
        Top = 32
        Width = 169
        Height = 425
        Hint = 'Pasta de logs do sistema'
        CustomHint = BalloonHint1
        TabStop = False
        FileList = FileListBox1
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnDblClick = DirectoryListBox1DblClick
      end
    end
  end
end
