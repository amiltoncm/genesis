inherited dmFiles: TdmFiles
  OldCreateOrder = True
  object qyExamesImuno: TZQuery
    Connection = database
    UpdateObject = updExamesImuno
    BeforePost = qyExamesImunoBeforePost
    AfterPost = qyExamesImunoAfterPost
    BeforeDelete = qyExamesImunoBeforeDelete
    AfterDelete = qyExamesImunoAfterDelete
    OnEditError = qyExamesImunoEditError
    OnPostError = qyExamesImunoPostError
    SQL.Strings = (
      'select eim_id, exa_id, eim_exame'
      'from examesimuno'
      'where exa_id = '#39'0'#39)
    Params = <>
    Left = 264
    Top = 24
    object qyExamesImunoeim_id: TIntegerField
      FieldName = 'eim_id'
      Required = True
    end
    object qyExamesImunoexa_id: TWideStringField
      FieldName = 'exa_id'
      Required = True
      Size = 10
    end
    object qyExamesImunoeim_exame: TBlobField
      FieldName = 'eim_exame'
      Required = True
    end
  end
  object qyImagens: TZQuery
    Connection = database
    UpdateObject = updImagens
    BeforePost = qyImagensBeforePost
    AfterPost = qyImagensAfterPost
    BeforeDelete = qyImagensBeforeDelete
    AfterDelete = qyImagensAfterDelete
    OnEditError = qyImagensEditError
    OnPostError = qyImagensPostError
    SQL.Strings = (
      'select * from imagens'
      'where img_exame = '#39'0'#39)
    Params = <>
    Left = 368
    Top = 24
    object qyImagensimg_id: TIntegerField
      FieldName = 'img_id'
      Required = True
    end
    object qyImagensimg_exame: TWideStringField
      FieldName = 'img_exame'
      Required = True
      Size = 10
    end
    object qyImagensimg_imagem: TBlobField
      FieldName = 'img_imagem'
      Required = True
    end
  end
  object QTemp: TZQuery
    Connection = database
    Params = <>
    Left = 144
    Top = 24
  end
  object updExamesImuno: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM examesimuno'
      'WHERE'
      '  examesimuno.eim_id = :OLD_eim_id')
    InsertSQL.Strings = (
      'INSERT INTO examesimuno'
      '  (eim_id, exa_id, eim_exame)'
      'VALUES'
      '  (:eim_id, :exa_id, :eim_exame)')
    ModifySQL.Strings = (
      'UPDATE examesimuno SET'
      '  eim_id = :eim_id,'
      '  exa_id = :exa_id,'
      '  eim_exame = :eim_exame'
      'WHERE'
      '  examesimuno.eim_id = :OLD_eim_id')
    UseSequenceFieldForRefreshSQL = False
    Left = 264
    Top = 88
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'eim_id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'exa_id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'eim_exame'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_eim_id'
        ParamType = ptUnknown
      end>
  end
  object updImagens: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM imagens'
      'WHERE'
      '  imagens.img_id = :OLD_img_id')
    InsertSQL.Strings = (
      'INSERT INTO imagens'
      '  (img_id, img_exame, img_imagem)'
      'VALUES'
      '  (:img_id, :img_exame, :img_imagem)')
    ModifySQL.Strings = (
      'UPDATE imagens SET'
      '  img_id = :img_id,'
      '  img_exame = :img_exame,'
      '  img_imagem = :img_imagem'
      'WHERE'
      '  imagens.img_id = :OLD_img_id')
    UseSequenceFieldForRefreshSQL = False
    Left = 368
    Top = 88
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'img_id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'img_exame'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'img_imagem'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_img_id'
        ParamType = ptUnknown
      end>
  end
end
