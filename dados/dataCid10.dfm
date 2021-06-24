inherited dmCid10: TdmCid10
  OldCreateOrder = True
  inherited database: TSDDatabase
    DatabaseName = 'dbcid10'
    Params.Strings = (
      'USER NAME=postgres'
      'PASSWORD=postgres')
    RemoteDatabase = 'localhost:genesis'
    ServerType = stPostgreSQL
    SessionName = 'SessaoCID10_1'
  end
  inherited QGeraCodigo: TSDQuery
    DatabaseName = 'dbcid10'
    SessionName = 'SessaoCID10_1'
  end
  inherited QTemp: TSDQuery
    DatabaseName = 'dbcid10'
    SessionName = 'SessaoCID10_1'
  end
  object qyCapitulos: TSDQuery
    DatabaseName = 'dbcid10'
    Options = []
    SessionName = 'SessaoCID10_1'
    OnUpdateError = qyCapitulosUpdateError
    BeforePost = qyCapitulosBeforePost
    AfterPost = qyCapitulosAfterPost
    BeforeDelete = qyCapitulosBeforeDelete
    AfterDelete = qyCapitulosAfterDelete
    OnPostError = qyCapitulosPostError
    SQL.Strings = (
      
        'select cap_numcap, cap_catinic, cap_catfim, cap_descricao, cap_d' +
        'escabrev from cid10capitulos'
      'order by cap_numcap')
    UpdateObject = updCapitulos
    Left = 48
    Top = 112
    object qyCapituloscap_descricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 130
      FieldName = 'cap_descricao'
      Size = 130
    end
    object qyCapituloscap_catfim: TStringField
      DisplayLabel = 'Cat. final'
      DisplayWidth = 3
      FieldName = 'cap_catfim'
      Size = 3
    end
    object qyCapituloscap_catinic: TStringField
      DisplayLabel = 'Cat. inicial'
      DisplayWidth = 3
      FieldName = 'cap_catinic'
      Size = 3
    end
    object qyCapituloscap_descabrev: TStringField
      DisplayLabel = 'Abrevia'#231#227'o'
      DisplayWidth = 50
      FieldName = 'cap_descabrev'
      Size = 50
    end
    object qyCapituloscap_numcap: TIntegerField
      DisplayLabel = 'N'#250'm. cap.'
      DisplayWidth = 8
      FieldName = 'cap_numcap'
    end
  end
  object updCapitulos: TSDUpdateSQL
    RefreshSQL.Strings = (
      
        'select cap_numcap, cap_catinic, cap_catfim, cap_descricao, cap_d' +
        'escabrev'#13#10'from cid10capitulos'
      'where'
      '  cap_numcap = :OLD_cap_numcap')
    ModifySQL.Strings = (
      'update cid10capitulos'
      'set'
      '  cap_numcap = :cap_numcap,'
      '  cap_catinic = :cap_catinic,'
      '  cap_catfim = :cap_catfim,'
      '  cap_descricao = :cap_descricao,'
      '  cap_descabrev = :cap_descabrev'
      'where'
      '  cap_numcap = :OLD_cap_numcap')
    InsertSQL.Strings = (
      'insert into cid10capitulos'
      
        '  (cap_numcap, cap_catinic, cap_catfim, cap_descricao, cap_desca' +
        'brev)'
      'values'
      
        '  (:cap_numcap, :cap_catinic, :cap_catfim, :cap_descricao, :cap_' +
        'descabrev)')
    DeleteSQL.Strings = (
      'delete from cid10capitulos'
      'where'
      '  cap_numcap = :OLD_cap_numcap')
    Left = 144
    Top = 112
  end
  object qyGrupos: TSDQuery
    DatabaseName = 'dbcid10'
    Options = []
    SessionName = 'SessaoCID10_1'
    OnUpdateError = qyGruposUpdateError
    BeforePost = qyGruposBeforePost
    AfterPost = qyGruposAfterPost
    BeforeDelete = qyGruposBeforeDelete
    AfterDelete = qyGruposAfterDelete
    OnPostError = qyGruposPostError
    SQL.Strings = (
      
        'select cgr_id, cgr_catinic, cgr_catfim, cgr_descricao, cgr_desca' +
        'brev from cid10grupos'
      'order by cgr_id'
      ' '
      ' ')
    UpdateObject = updGrupos
    Left = 48
    Top = 168
    object qyGruposcgr_descricao: TStringField
      DisplayLabel = 'descri'#231#227'o'
      DisplayWidth = 200
      FieldName = 'cgr_descricao'
      Size = 200
    end
    object qyGruposcgr_id: TIntegerField
      DisplayLabel = 'ID'
      DisplayWidth = 6
      FieldName = 'cgr_id'
    end
    object qyGruposcgr_catinic: TStringField
      DisplayLabel = 'Cat. inicial'
      DisplayWidth = 3
      FieldName = 'cgr_catinic'
      Size = 3
    end
    object qyGruposcgr_catfim: TStringField
      DisplayLabel = 'Cat. final'
      DisplayWidth = 3
      FieldName = 'cgr_catfim'
      Size = 3
    end
    object qyGruposcgr_descabrev: TStringField
      DisplayLabel = 'desc. abreviado'
      DisplayWidth = 50
      FieldName = 'cgr_descabrev'
      Size = 50
    end
  end
  object updGrupos: TSDUpdateSQL
    RefreshSQL.Strings = (
      
        'select cgr_id, cgr_catinic, cgr_catfim, cgr_descricao, cgr_desca' +
        'brev'#13#10'from cid10grupos'
      'where'
      '  cgr_id = :OLD_cgr_id')
    ModifySQL.Strings = (
      'update cid10grupos'
      'set'
      '  cgr_id = :cgr_id,'
      '  cgr_catinic = :cgr_catinic,'
      '  cgr_catfim = :cgr_catfim,'
      '  cgr_descricao = :cgr_descricao,'
      '  cgr_descabrev = :cgr_descabrev'
      'where'
      '  cgr_id = :OLD_cgr_id')
    InsertSQL.Strings = (
      'insert into cid10grupos'
      
        '  (cgr_id, cgr_catinic, cgr_catfim, cgr_descricao, cgr_descabrev' +
        ')'
      'values'
      
        '  (:cgr_id, :cgr_catinic, :cgr_catfim, :cgr_descricao, :cgr_desc' +
        'abrev)')
    DeleteSQL.Strings = (
      'delete from cid10grupos'
      'where'
      '  cgr_id = :OLD_cgr_id')
    Left = 144
    Top = 168
  end
  object qyCategorias: TSDQuery
    DatabaseName = 'dbcid10'
    Options = []
    SessionName = 'SessaoCID10_1'
    OnUpdateError = qyCategoriasUpdateError
    BeforePost = qyCategoriasBeforePost
    AfterPost = qyCategoriasAfterPost
    BeforeDelete = qyCategoriasBeforeDelete
    AfterDelete = qyCategoriasAfterDelete
    OnPostError = qyCategoriasPostError
    SQL.Strings = (
      
        'select cat_id, cat_classif, cat_descricao, cat_descabrev, cat_re' +
        'fer, cat_excluidos from cid10categorias'
      'order by cat_id')
    UpdateObject = updCategorias
    Left = 48
    Top = 232
    object qyCategoriascat_descricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 200
      FieldName = 'cat_descricao'
      Size = 200
    end
    object qyCategoriascat_id: TStringField
      DisplayLabel = 'ID'
      DisplayWidth = 4
      FieldName = 'cat_id'
      Size = 3
    end
    object qyCategoriascat_classif: TStringField
      DisplayLabel = 'Classifica'#231#227'o'
      DisplayWidth = 1
      FieldName = 'cat_classif'
      Size = 1
    end
    object qyCategoriascat_descabrev: TStringField
      DisplayLabel = 'Abrevia'#231#227'o'
      DisplayWidth = 50
      FieldName = 'cat_descabrev'
      Size = 50
    end
    object qyCategoriascat_refer: TStringField
      DisplayLabel = 'Refer.'
      DisplayWidth = 10
      FieldName = 'cat_refer'
      Size = 10
    end
    object qyCategoriascat_excluidos: TStringField
      DisplayLabel = 'Exclu'#237'dos'
      DisplayWidth = 10
      FieldName = 'cat_excluidos'
      Size = 10
    end
  end
  object updCategorias: TSDUpdateSQL
    RefreshSQL.Strings = (
      
        'select cat_id, cat_classif, cat_descricao, cat_descabrev, cat_re' +
        'fer, cat_excluidos'#13#10'from cid10categorias'
      'where'
      '  cat_id = :OLD_cat_id')
    ModifySQL.Strings = (
      'update cid10categorias'
      'set'
      '  cat_id = :cat_id,'
      '  cat_classif = :cat_classif,'
      '  cat_descricao = :cat_descricao,'
      '  cat_descabrev = :cat_descabrev,'
      '  cat_refer = :cat_refer,'
      '  cat_excluidos = :cat_excluidos'
      'where'
      '  cat_id = :OLD_cat_id')
    InsertSQL.Strings = (
      'insert into cid10categorias'
      
        '  (cat_id, cat_classif, cat_descricao, cat_descabrev, cat_refer,' +
        ' cat_excluidos)'
      'values'
      
        '  (:cat_id, :cat_classif, :cat_descricao, :cat_descabrev, :cat_r' +
        'efer, :cat_excluidos)')
    DeleteSQL.Strings = (
      'delete from cid10categorias'
      'where'
      '  cat_id = :OLD_cat_id')
    Left = 144
    Top = 232
  end
  object qySubCategorias: TSDQuery
    DatabaseName = 'dbcid10'
    Options = []
    SessionName = 'SessaoCID10_1'
    OnUpdateError = qySubCategoriasUpdateError
    BeforePost = qySubCategoriasBeforePost
    AfterPost = qySubCategoriasAfterPost
    BeforeDelete = qySubCategoriasBeforeDelete
    AfterDelete = qySubCategoriasAfterDelete
    OnPostError = qySubCategoriasPostError
    SQL.Strings = (
      
        'select sct_subcat, sct_classif, sct_restrsexo, sct_causaobito, s' +
        'ct_descricao,'
      'sct_descabrev, sct_refer, sct_excluidos'
      'from cid10subcategorias'
      'order by sct_descricao')
    UpdateObject = updSubCategorias
    Left = 48
    Top = 296
    object qySubCategoriassct_descricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 300
      FieldName = 'sct_descricao'
      Size = 300
    end
    object qySubCategoriassct_subcat: TStringField
      DisplayLabel = 'Sub. Cat.'
      DisplayWidth = 10
      FieldName = 'sct_subcat'
      Size = 10
    end
    object qySubCategoriassct_classif: TStringField
      DisplayLabel = 'Classif.'
      DisplayWidth = 1
      FieldName = 'sct_classif'
      Visible = False
      Size = 1
    end
    object qySubCategoriassct_restrsexo: TStringField
      DisplayLabel = 'Rest. Sexo'
      DisplayWidth = 1
      FieldName = 'sct_restrsexo'
      Visible = False
      Size = 1
    end
    object qySubCategoriassct_causaobito: TStringField
      DisplayLabel = 'Causa '#211'bito'
      DisplayWidth = 1
      FieldName = 'sct_causaobito'
      Visible = False
      Size = 1
    end
    object qySubCategoriassct_descabrev: TStringField
      DisplayLabel = 'Desc. Abreviada'
      DisplayWidth = 80
      FieldName = 'sct_descabrev'
      Visible = False
      Size = 80
    end
    object qySubCategoriassct_refer: TStringField
      DisplayLabel = 'Refer.'
      DisplayWidth = 50
      FieldName = 'sct_refer'
      Visible = False
      Size = 50
    end
    object qySubCategoriassct_excluidos: TStringField
      DisplayLabel = 'Exclu'#237'dos'
      DisplayWidth = 50
      FieldName = 'sct_excluidos'
      Visible = False
      Size = 50
    end
  end
  object updSubCategorias: TSDUpdateSQL
    RefreshSQL.Strings = (
      
        'select sct_subcat, sct_classif, sct_restrsexo, sct_causaobito, s' +
        'ct_descricao, sct_descabrev, sct_refer, sct_excluidos'#13#10'from cid1' +
        '0subcategorias'
      'where'
      '  sct_subcat = :OLD_sct_subcat')
    ModifySQL.Strings = (
      'update cid10subcategorias'
      'set'
      '  sct_subcat = :sct_subcat,'
      '  sct_classif = :sct_classif,'
      '  sct_restrsexo = :sct_restrsexo,'
      '  sct_causaobito = :sct_causaobito,'
      '  sct_descricao = :sct_descricao,'
      '  sct_descabrev = :sct_descabrev,'
      '  sct_refer = :sct_refer,'
      '  sct_excluidos = :sct_excluidos'
      'where'
      '  sct_subcat = :OLD_sct_subcat')
    InsertSQL.Strings = (
      'insert into cid10subcategorias'
      
        '  (sct_subcat, sct_classif, sct_restrsexo, sct_causaobito, sct_d' +
        'escricao, sct_descabrev, sct_refer, sct_excluidos)'
      'values'
      
        '  (:sct_subcat, :sct_classif, :sct_restrsexo, :sct_causaobito, :' +
        'sct_descricao, :sct_descabrev, :sct_refer, :sct_excluidos)')
    DeleteSQL.Strings = (
      'delete from cid10subcategorias'
      'where'
      '  sct_subcat = :OLD_sct_subcat')
    Left = 152
    Top = 296
  end
  object SessaoCID10: TSDSession
    Active = True
    AutoSessionName = True
    Left = 104
    Top = 16
  end
  object qyRelExamesDoencas: TSDQuery
    DatabaseName = 'dbcid10'
    Options = []
    SessionName = 'SessaoCID10_1'
    SQL.Strings = (
      
        'select e.exa_id, e.exa_data, m.med_nome, t.etp_tipo, d.sct_subca' +
        't, c.sct_descricao '
      
        'from exames e, medicos m, examestp t, examesdoencas d, cid10subc' +
        'ategorias c'
      'where e.med_codigo = m.med_codigo'
      'and e.etp_id = t.etp_id'
      'and e.exa_id = d.exa_id'
      'and d.sct_subcat = c.sct_subcat')
    Left = 384
    Top = 112
    object qyRelExamesDoencasexa_id: TStringField
      DisplayLabel = 'ID Exame'
      FieldName = 'exa_id'
      FixedChar = True
      Size = 10
    end
    object qyRelExamesDoencasexa_data: TDateField
      DisplayLabel = 'Data'
      FieldName = 'exa_data'
      DisplayFormat = 'dd/MM/yyyy'
    end
    object qyRelExamesDoencasmed_nome: TStringField
      DisplayLabel = 'M'#233'dico'
      FieldName = 'med_nome'
      Size = 50
    end
    object qyRelExamesDoencasetp_tipo: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'etp_tipo'
    end
    object qyRelExamesDoencassct_subcat: TStringField
      DisplayLabel = 'CID10'
      FieldName = 'sct_subcat'
      Size = 10
    end
    object qyRelExamesDoencassct_descricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'sct_descricao'
      Size = 300
    end
  end
end
