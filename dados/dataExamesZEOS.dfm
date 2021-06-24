inherited dmExamesZEOS: TdmExamesZEOS
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
    Left = 48
    Top = 88
    object qyImagensimg_id: TIntegerField
      DisplayLabel = 'ID'
      FieldName = 'img_id'
      Required = True
    end
    object qyImagensimg_exame: TWideStringField
      DisplayLabel = 'ID Exame'
      FieldName = 'img_exame'
      Required = True
      Size = 10
    end
    object qyImagensimg_imagem: TBlobField
      DisplayLabel = 'Imagem'
      FieldName = 'img_imagem'
      Required = True
    end
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
    Left = 120
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
