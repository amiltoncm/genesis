inherited dmCadastros: TdmCadastros
  OldCreateOrder = True
  Height = 571
  Width = 1110
  inherited database: TSDDatabase
    DatabaseName = 'Cadastros'
    Params.Strings = (
      'USER NAME=postgres'
      'PASSWORD=postgres')
    RemoteDatabase = 'localhost:genesis'
    ServerType = stPostgreSQL
    SessionName = 'SessaoCadastros'
  end
  inherited QGeraCodigo: TSDQuery
    DatabaseName = 'cadastros'
    SessionName = 'SessaoCadastros'
    Left = 184
  end
  inherited QTemp: TSDQuery
    DatabaseName = 'cadastros'
    SessionName = 'SessaoCadastros'
  end
  object SessaoCadastros: TSDSession
    Active = True
    SessionName = 'SessaoCadastros'
    Left = 104
    Top = 16
  end
  object qyUsuarios: TSDQuery
    DatabaseName = 'cadastros'
    Options = []
    SessionName = 'SessaoCadastros'
    OnUpdateError = qyUsuariosUpdateError
    AfterInsert = qyUsuariosAfterInsert
    BeforePost = qyUsuariosBeforePost
    AfterPost = qyUsuariosAfterPost
    BeforeDelete = qyUsuariosBeforeDelete
    AfterDelete = qyUsuariosAfterDelete
    OnPostError = qyUsuariosPostError
    SQL.Strings = (
      'select u.usu_codigo, u.usu_nome, u.usu_senha, u.ace_codigo,'
      'a.ace_descricao, u.usu_ativo, u.usu_nomecomp, u.usu_exppdf,'
      'u.usu_altdata'
      'from usuarios u, acesso a'
      'where u.ace_codigo = a.ace_codigo')
    UpdateObject = updUsuarios
    Left = 424
    Top = 520
    object qyUsuariosusu_codigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'usu_codigo'
      DisplayFormat = '000'
    end
    object qyUsuariosusu_nome: TStringField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'usu_nome'
    end
    object qyUsuariosusu_senha: TStringField
      DisplayLabel = 'Senha'
      FieldName = 'usu_senha'
      Visible = False
    end
    object qyUsuariosace_codigo: TIntegerField
      DisplayLabel = 'C'#243'd. acesso'
      FieldName = 'ace_codigo'
      Visible = False
    end
    object qyUsuariosace_descricao: TStringField
      DisplayLabel = 'Acesso'
      FieldName = 'ace_descricao'
    end
    object qyUsuariosusu_ativo: TStringField
      DisplayLabel = 'Ativo'
      FieldName = 'usu_ativo'
      FixedChar = True
      Size = 1
    end
    object qyUsuariosusu_nomecomp: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'usu_nomecomp'
      Size = 30
    end
    object qyUsuariosusu_exppdf: TStringField
      DisplayLabel = 'Exp. pdf'
      FieldName = 'usu_exppdf'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object qyUsuariosusu_altdata: TStringField
      DisplayLabel = 'Alt. data'
      FieldName = 'usu_altdata'
      Visible = False
      FixedChar = True
      Size = 1
    end
  end
  object updUsuarios: TSDUpdateSQL
    RefreshSQL.Strings = (
      
        'select usu_codigo, usu_nome, usu_senha, ace_codigo, usu_ativo, u' +
        'su_nomecomp, usu_exppdf, usu_altdata'#13#10'from usuarios'
      'where'
      '  usu_codigo = :OLD_usu_codigo')
    ModifySQL.Strings = (
      'update usuarios'
      'set'
      '  usu_codigo = :usu_codigo,'
      '  usu_nome = :usu_nome,'
      '  usu_senha = :usu_senha,'
      '  ace_codigo = :ace_codigo,'
      '  usu_ativo = :usu_ativo,'
      '  usu_nomecomp = :usu_nomecomp,'
      '  usu_exppdf = :usu_exppdf,'
      '  usu_altdata = :usu_altdata'
      'where'
      '  usu_codigo = :OLD_usu_codigo')
    InsertSQL.Strings = (
      'insert into usuarios'
      
        '  (usu_codigo, usu_nome, usu_senha, ace_codigo, usu_ativo, usu_n' +
        'omecomp, usu_exppdf, usu_altdata)'
      'values'
      
        '  (:usu_codigo, :usu_nome, :usu_senha, :ace_codigo, :usu_ativo, ' +
        ':usu_nomecomp, :usu_exppdf, :usu_altdata)')
    DeleteSQL.Strings = (
      'delete from usuarios'
      'where'
      '  usu_codigo = :OLD_usu_codigo')
    Left = 496
    Top = 520
  end
  object qyPacientes: TSDQuery
    DatabaseName = 'cadastros'
    Options = []
    SessionName = 'SessaoCadastros'
    OnUpdateError = qyPacientesUpdateError
    AfterInsert = qyPacientesAfterInsert
    BeforePost = qyPacientesBeforePost
    AfterPost = qyPacientesAfterPost
    BeforeDelete = qyPacientesBeforeDelete
    AfterDelete = qyPacientesAfterDelete
    OnPostError = qyPacientesPostError
    SQL.Strings = (
      'select '
      
        'p.pac_codigo, p.pac_nome, p.pac_dtnasc, p.pac_cpf, p.pac_rg, p.t' +
        'pl_id, '
      
        'l.tpl_tipo, p.pac_logradouro, p.pac_numero, p.pac_bairro, p.cid_' +
        'codigo, '
      
        'c.cid_cidade, c.uf_sigla, p.pac_fone, p.pac_celular, p.pac_cep, ' +
        'p.pac_email, '
      'p.pac_sexo, p.pac_obs'
      'from'
      'pacientes p, tplogradouro l, cidades c '
      'where p.tpl_id = l.tpl_id'
      'and p.cid_codigo = c.cid_codigo')
    UpdateObject = updPacientes
    Left = 24
    Top = 376
    object qyPacientespac_codigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'pac_codigo'
    end
    object qyPacientespac_nome: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'pac_nome'
      Size = 80
    end
    object qyPacientespac_dtnasc: TDateField
      DisplayLabel = 'Dt. Nasc.'
      FieldName = 'pac_dtnasc'
      DisplayFormat = 'dd/MM/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object qyPacientespac_cpf: TStringField
      DisplayLabel = 'CPF'
      FieldName = 'pac_cpf'
      EditMask = '999.999.999-99;1;_'
      FixedChar = True
      Size = 14
    end
    object qyPacientespac_rg: TStringField
      DisplayLabel = 'R.G.'
      FieldName = 'pac_rg'
      Size = 15
    end
    object qyPacientestpl_id: TIntegerField
      DisplayLabel = 'Tp. Log.'
      FieldName = 'tpl_id'
      Visible = False
    end
    object qyPacientestpl_tipo: TStringField
      DisplayLabel = 'Tp. Logradouro'
      FieldName = 'tpl_tipo'
    end
    object qyPacientespac_logradouro: TStringField
      DisplayLabel = 'Logradouro'
      FieldName = 'pac_logradouro'
      Size = 50
    end
    object qyPacientespac_numero: TIntegerField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'pac_numero'
    end
    object qyPacientespac_bairro: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'pac_bairro'
      Size = 30
    end
    object qyPacientescid_codigo: TIntegerField
      DisplayLabel = 'C'#243'd. Cidade'
      FieldName = 'cid_codigo'
      Visible = False
    end
    object qyPacientescid_cidade: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'cid_cidade'
      Size = 50
    end
    object qyPacientesuf_sigla: TStringField
      DisplayLabel = 'UF'
      FieldName = 'uf_sigla'
      FixedChar = True
      Size = 2
    end
    object qyPacientespac_fone: TStringField
      DisplayLabel = 'Fone'
      FieldName = 'pac_fone'
      EditMask = '(99) 9999-9999;1;_'
      Size = 14
    end
    object qyPacientespac_celular: TStringField
      DisplayLabel = 'Celular'
      FieldName = 'pac_celular'
      EditMask = '(99) 9999-9999;1;_'
      Size = 14
    end
    object qyPacientespac_cep: TStringField
      DisplayLabel = 'CEP'
      FieldName = 'pac_cep'
      FixedChar = True
      Size = 9
    end
    object qyPacientespac_email: TStringField
      DisplayLabel = 'e-mail'
      FieldName = 'pac_email'
      Size = 40
    end
    object qyPacientespac_sexo: TStringField
      DisplayLabel = 'Sexo'
      FieldName = 'pac_sexo'
      FixedChar = True
      Size = 1
    end
    object qyPacientespac_obs: TBlobField
      FieldName = 'pac_obs'
      Visible = False
    end
  end
  object updPacientes: TSDUpdateSQL
    RefreshSQL.Strings = (
      
        'select pac_codigo, pac_nome, pac_dtnasc, pac_cpf, pac_rg, tpl_id' +
        ', pac_logradouro, pac_numero, pac_bairro, cid_codigo, pac_fone, ' +
        'pac_celular, pac_cep, pac_email, pac_obs, pac_sexo'#13#10'from pacient' +
        'es'
      'where'
      '  pac_codigo = :OLD_pac_codigo')
    ModifySQL.Strings = (
      'update pacientes'
      'set'
      '  pac_codigo = :pac_codigo,'
      '  pac_nome = :pac_nome,'
      '  pac_dtnasc = :pac_dtnasc,'
      '  pac_cpf = :pac_cpf,'
      '  pac_rg = :pac_rg,'
      '  tpl_id = :tpl_id,'
      '  pac_logradouro = :pac_logradouro,'
      '  pac_numero = :pac_numero,'
      '  pac_bairro = :pac_bairro,'
      '  cid_codigo = :cid_codigo,'
      '  pac_fone = :pac_fone,'
      '  pac_celular = :pac_celular,'
      '  pac_cep = :pac_cep,'
      '  pac_email = :pac_email,'
      '  pac_obs = :pac_obs,'
      '  pac_sexo = :pac_sexo'
      'where'
      '  pac_codigo = :OLD_pac_codigo')
    InsertSQL.Strings = (
      'insert into pacientes'
      
        '  (pac_codigo, pac_nome, pac_dtnasc, pac_cpf, pac_rg, tpl_id, pa' +
        'c_logradouro, pac_numero, pac_bairro, cid_codigo, pac_fone, pac_' +
        'celular, pac_cep, pac_email, pac_obs, pac_sexo)'
      'values'
      
        '  (:pac_codigo, :pac_nome, :pac_dtnasc, :pac_cpf, :pac_rg, :tpl_' +
        'id, :pac_logradouro, :pac_numero, :pac_bairro, :cid_codigo, :pac' +
        '_fone, :pac_celular, :pac_cep, :pac_email, :pac_obs, :pac_sexo)')
    DeleteSQL.Strings = (
      'delete from pacientes'
      'where'
      '  pac_codigo = :OLD_pac_codigo')
    Left = 96
    Top = 376
  end
  object qyConvenios: TSDQuery
    DatabaseName = 'cadastros'
    Options = []
    SessionName = 'SessaoCadastros'
    OnUpdateError = qyConveniosUpdateError
    AfterInsert = qyConveniosAfterInsert
    BeforePost = qyConveniosBeforePost
    AfterPost = qyConveniosAfterPost
    BeforeDelete = qyConveniosBeforeDelete
    AfterDelete = qyConveniosAfterDelete
    OnPostError = qyConveniosPostError
    SQL.Strings = (
      'select '
      
        'c.cov_codigo, c.cov_descricao, c.cov_cnpj, c.cov_ie, c.tpl_id, l' +
        '.tpl_tipo,'
      
        'c.cov_logradouro, c.cov_numero, c.cov_bairro, c.cid_codigo, u.ci' +
        'd_cidade, '
      
        'u.uf_sigla, c.cov_fone, c.cov_fax, c.cov_celular, c.cov_email, c' +
        '.cov_cep, '
      'c.cov_regans, c.cov_veriftiss, c.cov_codoperadora'
      'from convenios c, tplogradouro l, cidades u'
      'where c.tpl_id = l.tpl_id'
      'and c.cid_codigo = u.cid_codigo '
      'limit 1')
    UpdateObject = updConvenios
    Left = 32
    Top = 104
    object qyConvenioscov_codigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cov_codigo'
    end
    object qyConvenioscov_descricao: TStringField
      DisplayLabel = 'Conv'#234'nio'
      FieldName = 'cov_descricao'
      Size = 30
    end
    object qyConvenioscov_cnpj: TStringField
      DisplayLabel = 'CNPJ'
      FieldName = 'cov_cnpj'
      EditMask = '00.000.000/0000-00;1;_'
      FixedChar = True
      Size = 18
    end
    object qyConvenioscov_ie: TStringField
      DisplayLabel = 'Insc. Est.'
      FieldName = 'cov_ie'
      FixedChar = True
      Size = 15
    end
    object qyConveniostpl_id: TIntegerField
      DisplayLabel = 'C'#243'd. Tp. Log.'
      FieldName = 'tpl_id'
      Visible = False
    end
    object qyConveniostpl_tipo: TStringField
      DisplayLabel = 'Tp. Logradouro'
      FieldName = 'tpl_tipo'
    end
    object qyConvenioscov_logradouro: TStringField
      DisplayLabel = 'Logradouro'
      FieldName = 'cov_logradouro'
      Size = 50
    end
    object qyConvenioscov_numero: TIntegerField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'cov_numero'
    end
    object qyConvenioscov_bairro: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'cov_bairro'
      Size = 30
    end
    object qyConvenioscid_codigo: TIntegerField
      DisplayLabel = 'C'#243'd. Cidade'
      FieldName = 'cid_codigo'
      Visible = False
    end
    object qyConvenioscid_cidade: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'cid_cidade'
      Size = 50
    end
    object qyConveniosuf_sigla: TStringField
      DisplayLabel = 'UF'
      FieldName = 'uf_sigla'
      FixedChar = True
      Size = 2
    end
    object qyConvenioscov_fone: TStringField
      DisplayLabel = 'Fone'
      FieldName = 'cov_fone'
      EditMask = '(00) 0000-0000;1;_'
      Size = 14
    end
    object qyConvenioscov_fax: TStringField
      DisplayLabel = 'Fax'
      FieldName = 'cov_fax'
      EditMask = '(00) 0000-0000;1;_'
      Size = 14
    end
    object qyConvenioscov_celular: TStringField
      DisplayLabel = 'Celular'
      FieldName = 'cov_celular'
      EditMask = '(00) 0000-0000;1;_'
      Size = 14
    end
    object qyConvenioscov_email: TStringField
      DisplayLabel = 'e-mail'
      FieldName = 'cov_email'
      Size = 40
    end
    object qyConvenioscov_cep: TStringField
      DisplayLabel = 'CEP'
      FieldName = 'cov_cep'
      EditMask = '00000-000;1;_'
      FixedChar = True
      Size = 9
    end
    object qyConvenioscov_regans: TStringField
      DisplayLabel = 'Reg. ANS'
      FieldName = 'cov_regans'
      Size = 6
    end
    object qyConvenioscov_veriftiss: TStringField
      DisplayLabel = 'Verif. TISS'
      FieldName = 'cov_veriftiss'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object qyConvenioscov_codoperadora: TStringField
      DisplayLabel = 'C'#243'd. Operadora'
      FieldName = 'cov_codoperadora'
      Size = 14
    end
  end
  object updConvenios: TSDUpdateSQL
    RefreshSQL.Strings = (
      
        'select cov_codigo, cov_descricao, cov_cnpj, cov_ie, tpl_id, cov_' +
        'logradouro, cov_numero, cov_bairro, cid_codigo, cov_fone, cov_ce' +
        'lular, cov_fax, cov_email, cov_cep, cov_regans, cov_veriftiss, c' +
        'ov_codoperadora'#13#10'from convenios'
      'where'
      '  cov_codigo = :OLD_cov_codigo')
    ModifySQL.Strings = (
      'update convenios'
      'set'
      '  cov_codigo = :cov_codigo,'
      '  cov_descricao = :cov_descricao,'
      '  cov_cnpj = :cov_cnpj,'
      '  cov_ie = :cov_ie,'
      '  tpl_id = :tpl_id,'
      '  cov_logradouro = :cov_logradouro,'
      '  cov_numero = :cov_numero,'
      '  cov_bairro = :cov_bairro,'
      '  cid_codigo = :cid_codigo,'
      '  cov_fone = :cov_fone,'
      '  cov_celular = :cov_celular,'
      '  cov_fax = :cov_fax,'
      '  cov_email = :cov_email,'
      '  cov_cep = :cov_cep,'
      '  cov_regans = :cov_regans,'
      '  cov_veriftiss = :cov_veriftiss,'
      '  cov_codoperadora = :cov_codoperadora'
      'where'
      '  cov_codigo = :OLD_cov_codigo')
    InsertSQL.Strings = (
      'insert into convenios'
      
        '  (cov_codigo, cov_descricao, cov_cnpj, cov_ie, tpl_id, cov_logr' +
        'adouro, cov_numero, cov_bairro, cid_codigo, cov_fone, cov_celula' +
        'r, cov_fax, cov_email, cov_cep, cov_regans, cov_veriftiss, cov_c' +
        'odoperadora)'
      'values'
      
        '  (:cov_codigo, :cov_descricao, :cov_cnpj, :cov_ie, :tpl_id, :co' +
        'v_logradouro, :cov_numero, :cov_bairro, :cid_codigo, :cov_fone, ' +
        ':cov_celular, :cov_fax, :cov_email, :cov_cep, :cov_regans, :cov_' +
        'veriftiss, :cov_codoperadora)')
    DeleteSQL.Strings = (
      'delete from convenios'
      'where'
      '  cov_codigo = :OLD_cov_codigo')
    Left = 112
    Top = 104
  end
  object qyMedicos: TSDQuery
    DatabaseName = 'cadastros'
    Options = []
    SessionName = 'SessaoCadastros'
    OnUpdateError = qyMedicosUpdateError
    AfterInsert = qyMedicosAfterInsert
    BeforePost = qyMedicosBeforePost
    AfterPost = qyMedicosAfterPost
    BeforeDelete = qyMedicosBeforeDelete
    AfterDelete = qyMedicosAfterDelete
    OnPostError = qyMedicosPostError
    SQL.Strings = (
      'select'
      
        'm.med_codigo, m.med_nome, m.med_fone, m.cos_id, s.cos_tipo,  m.m' +
        'ed_numconselho,'
      
        'm.med_titulo, m.med_cpf, m.med_rg, m.tpl_id, t.tpl_tipo, m.med_l' +
        'ogradouro,'
      
        'm.med_numero, m.med_bairro, m.cid_codigo, c.cid_cidade, c.uf_sig' +
        'la,'
      
        'm.med_celular, m.med_cep, m.med_email, m.cos_uf, m.cbo_codigo, b' +
        '.cbo_descricao'
      'from medicos m, conselhos s, tplogradouro t, cidades c, cbo b'
      'where m.cos_id = s.cos_codigo'
      'and m.tpl_id = t.tpl_id'
      'and m.cid_codigo = c.cid_codigo'
      'and m.cbo_codigo = b.cbo_codigo'
      'limit 1')
    UpdateObject = updMedicos
    Left = 424
    Top = 288
    object qyMedicosmed_codigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'med_codigo'
    end
    object qyMedicosmed_nome: TStringField
      DisplayLabel = 'M'#233'dico'
      FieldName = 'med_nome'
      Size = 50
    end
    object qyMedicosmed_fone: TStringField
      DisplayLabel = 'Fone'
      FieldName = 'med_fone'
      EditMask = '(00) 0000-0000;1;_'
      Size = 15
    end
    object qyMedicosmed_titulo: TStringField
      DisplayLabel = 'T'#237'tulo'
      FieldName = 'med_titulo'
      Size = 5
    end
    object qyMedicoscos_id: TIntegerField
      DisplayLabel = 'C'#243'd. Cons.'
      FieldName = 'cos_id'
      Visible = False
    end
    object qyMedicoscos_tipo: TStringField
      DisplayLabel = 'Conselho'
      FieldName = 'cos_tipo'
      Size = 5
    end
    object qyMedicosmed_numconselho: TStringField
      DisplayLabel = 'N'#250'm. Cons.'
      FieldName = 'med_numconselho'
      Size = 10
    end
    object qyMedicoscos_uf: TStringField
      DisplayLabel = 'UF Cons.'
      FieldName = 'cos_uf'
      FixedChar = True
      Size = 2
    end
    object qyMedicosmed_cpf: TStringField
      DisplayLabel = 'CPF'
      FieldName = 'med_cpf'
      EditMask = '000.000.000-00;1;_'
      Size = 18
    end
    object qyMedicosmed_rg: TStringField
      DisplayLabel = 'R.G.'
      FieldName = 'med_rg'
      Size = 15
    end
    object qyMedicostpl_id: TIntegerField
      DisplayLabel = 'Tp. Logradouro'
      FieldName = 'tpl_id'
      Visible = False
    end
    object qyMedicostpl_tipo: TStringField
      DisplayLabel = 'Tp. logradouro'
      FieldName = 'tpl_tipo'
    end
    object qyMedicosmed_logradouro: TStringField
      DisplayLabel = 'Logradouro'
      FieldName = 'med_logradouro'
      Size = 50
    end
    object qyMedicosmed_numero: TIntegerField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'med_numero'
    end
    object qyMedicosmed_bairro: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'med_bairro'
      Size = 30
    end
    object qyMedicoscid_codigo: TIntegerField
      DisplayLabel = 'C'#243'd. Cidade'
      FieldName = 'cid_codigo'
      Visible = False
    end
    object qyMedicoscid_cidade: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'cid_cidade'
      Size = 50
    end
    object qyMedicosuf_sigla: TStringField
      DisplayLabel = 'UF'
      FieldName = 'uf_sigla'
      FixedChar = True
      Size = 2
    end
    object qyMedicosmed_celular: TStringField
      DisplayLabel = 'Celular'
      FieldName = 'med_celular'
      EditMask = '(00) 0000-0000;1;_'
      Size = 14
    end
    object qyMedicosmed_cep: TStringField
      DisplayLabel = 'CEP'
      FieldName = 'med_cep'
      EditMask = '00000-000;1;_'
      FixedChar = True
      Size = 9
    end
    object qyMedicosmed_email: TStringField
      DisplayLabel = 'e-mail'
      FieldName = 'med_email'
      Size = 40
    end
    object qyMedicoscbo_codigo: TIntegerField
      DisplayLabel = 'C'#243'd. CBO'
      FieldName = 'cbo_codigo'
      Visible = False
    end
    object qyMedicoscbo_descricao: TStringField
      DisplayLabel = 'CBO'
      FieldName = 'cbo_descricao'
      Size = 150
    end
  end
  object updMedicos: TSDUpdateSQL
    RefreshSQL.Strings = (
      
        'select med_codigo, med_nome, med_fone, cos_id, med_numconselho, ' +
        'med_titulo, med_cpf, med_rg, tpl_id, med_logradouro, med_numero,' +
        ' med_bairro, cid_codigo, med_celular, med_cep, med_email, cos_uf' +
        ', cbo_codigo'#13#10'from medicos'
      'where'
      '  med_codigo = :OLD_med_codigo')
    ModifySQL.Strings = (
      'update medicos'
      'set'
      '  med_codigo = :med_codigo,'
      '  med_nome = :med_nome,'
      '  med_fone = :med_fone,'
      '  cos_id = :cos_id,'
      '  med_numconselho = :med_numconselho,'
      '  med_titulo = :med_titulo,'
      '  med_cpf = :med_cpf,'
      '  med_rg = :med_rg,'
      '  tpl_id = :tpl_id,'
      '  med_logradouro = :med_logradouro,'
      '  med_numero = :med_numero,'
      '  med_bairro = :med_bairro,'
      '  cid_codigo = :cid_codigo,'
      '  med_celular = :med_celular,'
      '  med_cep = :med_cep,'
      '  med_email = :med_email,'
      '  cos_uf = :cos_uf,'
      '  cbo_codigo = :cbo_codigo'
      'where'
      '  med_codigo = :OLD_med_codigo')
    InsertSQL.Strings = (
      'insert into medicos'
      
        '  (med_codigo, med_nome, med_fone, cos_id, med_numconselho, med_' +
        'titulo, med_cpf, med_rg, tpl_id, med_logradouro, med_numero, med' +
        '_bairro, cid_codigo, med_celular, med_cep, med_email, cos_uf, cb' +
        'o_codigo)'
      'values'
      
        '  (:med_codigo, :med_nome, :med_fone, :cos_id, :med_numconselho,' +
        ' :med_titulo, :med_cpf, :med_rg, :tpl_id, :med_logradouro, :med_' +
        'numero, :med_bairro, :cid_codigo, :med_celular, :med_cep, :med_e' +
        'mail, :cos_uf, :cbo_codigo)')
    DeleteSQL.Strings = (
      'delete from medicos'
      'where'
      '  med_codigo = :OLD_med_codigo')
    Left = 496
    Top = 288
  end
  object qyProcedimentos: TSDQuery
    DatabaseName = 'cadastros'
    Options = []
    SessionName = 'SessaoCadastros'
    OnUpdateError = qyProcedimentosUpdateError
    AfterInsert = qyProcedimentosAfterInsert
    BeforePost = qyProcedimentosBeforePost
    AfterPost = qyProcedimentosAfterPost
    BeforeDelete = qyProcedimentosBeforeDelete
    AfterDelete = qyProcedimentosAfterDelete
    OnPostError = qyProcedimentosPostError
    SQL.Strings = (
      'select * from procedimentos'
      'limit 100')
    UpdateObject = updProcedimentos
    Left = 232
    Top = 384
    object qyProcedimentosprc_tuss: TIntegerField
      DisplayLabel = 'C'#243'd. TUSS'
      FieldName = 'prc_tuss'
    end
    object qyProcedimentosprc_descricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'prc_descricao'
      Size = 80
    end
    object qyProcedimentosprc_amr: TIntegerField
      DisplayLabel = 'C'#243'd. AMR'
      FieldName = 'prc_amr'
    end
    object qyProcedimentosprc_descant: TStringField
      DisplayLabel = 'Descri'#231#227'o anterior'
      FieldName = 'prc_descant'
      Size = 80
    end
    object qyProcedimentosprc_vlrhora: TFloatField
      DisplayLabel = 'Vlr. Hora'
      FieldName = 'prc_vlrhora'
      DisplayFormat = '#,###,###,##0.00'
    end
    object qyProcedimentosprc_vlroper: TFloatField
      DisplayLabel = 'Vlr. Oper.'
      FieldName = 'prc_vlroper'
      DisplayFormat = '#,###,###,##0.00'
    end
    object qyProcedimentosprc_vlrfilme: TFloatField
      DisplayLabel = 'Vlr. Filme'
      FieldName = 'prc_vlrfilme'
      DisplayFormat = '#,###,###,##0.00'
    end
    object qyProcedimentosprc_vlrtotal: TFloatField
      DisplayLabel = 'Vlr. Total'
      FieldName = 'prc_vlrtotal'
      DisplayFormat = '#,###,###,##0.00'
    end
  end
  object updProcedimentos: TSDUpdateSQL
    RefreshSQL.Strings = (
      
        'select prc_tuss, prc_descricao, prc_amr, prc_descant, prc_vlrhor' +
        'a, prc_vlroper, prc_vlrfilme, prc_vlrtotal'#13#10'from procedimentos'
      'where'
      '  prc_tuss = :OLD_prc_tuss')
    ModifySQL.Strings = (
      'update procedimentos'
      'set'
      '  prc_tuss = :prc_tuss,'
      '  prc_descricao = :prc_descricao,'
      '  prc_amr = :prc_amr,'
      '  prc_descant = :prc_descant,'
      '  prc_vlrhora = :prc_vlrhora,'
      '  prc_vlroper = :prc_vlroper,'
      '  prc_vlrfilme = :prc_vlrfilme,'
      '  prc_vlrtotal = :prc_vlrtotal'
      'where'
      '  prc_tuss = :OLD_prc_tuss')
    InsertSQL.Strings = (
      'insert into procedimentos'
      
        '  (prc_tuss, prc_descricao, prc_amr, prc_descant, prc_vlrhora, p' +
        'rc_vlroper, prc_vlrfilme, prc_vlrtotal)'
      'values'
      
        '  (:prc_tuss, :prc_descricao, :prc_amr, :prc_descant, :prc_vlrho' +
        'ra, :prc_vlroper, :prc_vlrfilme, :prc_vlrtotal)')
    DeleteSQL.Strings = (
      'delete from procedimentos'
      'where'
      '  prc_tuss = :OLD_prc_tuss')
    Left = 312
    Top = 384
  end
  object qyLaudosPadrao: TSDQuery
    DatabaseName = 'cadastros'
    Options = []
    SessionName = 'SessaoCadastros'
    OnUpdateError = qyLaudosPadraoUpdateError
    AfterInsert = qyLaudosPadraoAfterInsert
    BeforePost = qyLaudosPadraoBeforePost
    AfterPost = qyLaudosPadraoAfterPost
    BeforeDelete = qyLaudosPadraoBeforeDelete
    AfterDelete = qyLaudosPadraoAfterDelete
    OnPostError = qyLaudosPadraoPostError
    SQL.Strings = (
      'select l.lpa_id, l.lmm_id, l.mat_id, m.lmm_descricao'
      'from laudospadrao l, laudosmodmacro m'
      'where l.lmm_id = m.lmm_id'
      'limit 1')
    UpdateObject = updLaudosPadrao
    Left = 752
    Top = 184
    object qyLaudosPadraolpa_id: TIntegerField
      DisplayLabel = 'ID Laudo'
      FieldName = 'lpa_id'
      Visible = False
    end
    object qyLaudosPadraolmm_id: TIntegerField
      DisplayLabel = 'ID'
      FieldName = 'lmm_id'
      Visible = False
    end
    object qyLaudosPadraomat_id: TIntegerField
      DisplayLabel = 'ID Material'
      FieldName = 'mat_id'
      Visible = False
    end
    object qyLaudosPadraolmm_descricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'lmm_descricao'
      Size = 30
    end
  end
  object updLaudosPadrao: TSDUpdateSQL
    RefreshSQL.Strings = (
      'select lpa_id, lmm_id, mat_id'#13#10'from laudospadrao'
      'where'
      '  lpa_id = :OLD_lpa_id')
    ModifySQL.Strings = (
      'update laudospadrao'
      'set'
      '  lpa_id = :lpa_id,'
      '  lmm_id = :lmm_id,'
      '  mat_id = :mat_id'
      'where'
      '  lpa_id = :OLD_lpa_id')
    InsertSQL.Strings = (
      'insert into laudospadrao'
      '  (lpa_id, lmm_id, mat_id)'
      'values'
      '  (:lpa_id, :lmm_id, :mat_id)')
    DeleteSQL.Strings = (
      'delete from laudospadrao'
      'where'
      '  lpa_id = :OLD_lpa_id')
    Left = 840
    Top = 184
  end
  object qyLaudosModMacro: TSDQuery
    DatabaseName = 'cadastros'
    Options = []
    SessionName = 'SessaoCadastros'
    OnUpdateError = qyLaudosModMacroUpdateError
    AfterInsert = qyLaudosModMacroAfterInsert
    BeforePost = qyLaudosModMacroBeforePost
    AfterPost = qyLaudosModMacroAfterPost
    BeforeDelete = qyLaudosModMacroBeforeDelete
    AfterDelete = qyLaudosModMacroAfterDelete
    OnPostError = qyLaudosModMacroPostError
    SQL.Strings = (
      'select'
      'lmm_id, lmm_descricao, lmm_modelo'
      'from'
      'laudosmodmacro'
      'limit 1')
    UpdateObject = updLaudosModMacro
    Left = 568
    Top = 184
    object qyLaudosModMacrolmm_id: TIntegerField
      DisplayLabel = 'ID'
      FieldName = 'lmm_id'
      DisplayFormat = '000'
    end
    object qyLaudosModMacrolmm_descricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'lmm_descricao'
      Size = 30
    end
    object qyLaudosModMacrolmm_modelo: TBlobField
      DisplayLabel = 'Modelo'
      FieldName = 'lmm_modelo'
      Visible = False
    end
  end
  object updLaudosModMacro: TSDUpdateSQL
    RefreshSQL.Strings = (
      'select lmm_id, lmm_descricao, lmm_modelo'#13#10'from laudosmodmacro'
      'where'
      '  lmm_id = :OLD_lmm_id')
    ModifySQL.Strings = (
      'update laudosmodmacro'
      'set'
      '  lmm_id = :lmm_id,'
      '  lmm_descricao = :lmm_descricao,'
      '  lmm_modelo = :lmm_modelo'
      'where'
      '  lmm_id = :OLD_lmm_id')
    InsertSQL.Strings = (
      'insert into laudosmodmacro'
      '  (lmm_id, lmm_descricao, lmm_modelo)'
      'values'
      '  (:lmm_id, :lmm_descricao, :lmm_modelo)')
    DeleteSQL.Strings = (
      'delete from laudosmodmacro'
      'where'
      '  lmm_id = :OLD_lmm_id')
    Left = 656
    Top = 184
  end
  object qyExamesTp: TSDQuery
    DatabaseName = 'cadastros'
    Options = []
    SessionName = 'SessaoCadastros'
    OnUpdateError = qyExamesTpUpdateError
    AfterInsert = qyExamesTpAfterInsert
    BeforePost = qyExamesTpBeforePost
    AfterPost = qyExamesTpAfterPost
    BeforeDelete = qyExamesTpBeforeDelete
    AfterDelete = qyExamesTpAfterDelete
    OnPostError = qyExamesTpPostError
    SQL.Strings = (
      'select * from examestp'
      'limit 1')
    UpdateObject = updExamesTp
    Left = 392
    Top = 96
    object qyExamesTpetp_id: TIntegerField
      DisplayLabel = 'ID'
      FieldName = 'etp_id'
      DisplayFormat = '000'
    end
    object qyExamesTpetp_tipo: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'etp_tipo'
    end
    object qyExamesTpetp_abrev: TStringField
      DisplayLabel = 'Abrev.'
      FieldName = 'etp_abrev'
      FixedChar = True
      Size = 1
    end
  end
  object updExamesTp: TSDUpdateSQL
    RefreshSQL.Strings = (
      'select etp_id, etp_tipo, etp_abrev'#13#10'from examestp'
      'where'
      '  etp_id = :OLD_etp_id')
    ModifySQL.Strings = (
      'update examestp'
      'set'
      '  etp_id = :etp_id,'
      '  etp_tipo = :etp_tipo,'
      '  etp_abrev = :etp_abrev'
      'where'
      '  etp_id = :OLD_etp_id')
    InsertSQL.Strings = (
      'insert into examestp'
      '  (etp_id, etp_tipo, etp_abrev)'
      'values'
      '  (:etp_id, :etp_tipo, :etp_abrev)')
    DeleteSQL.Strings = (
      'delete from examestp'
      'where'
      '  etp_id = :OLD_etp_id')
    Left = 464
    Top = 96
  end
  object qyResponsaveis: TSDQuery
    DatabaseName = 'cadastros'
    Options = []
    SessionName = 'SessaoCadastros'
    OnUpdateError = qyResponsaveisUpdateError
    AfterInsert = qyResponsaveisAfterInsert
    BeforePost = qyResponsaveisBeforePost
    AfterPost = qyResponsaveisAfterPost
    BeforeDelete = qyResponsaveisBeforeDelete
    AfterDelete = qyResponsaveisAfterDelete
    OnPostError = qyResponsaveisPostError
    SQL.Strings = (
      'select'
      'r.res_codigo, r.res_titulo, r.res_nome, r.cos_id, c.cos_tipo,'
      'r.res_numconselho, r.cos_uf, r.res_iniciais, r.cbo_codigo, '
      'o.cbo_descricao, r.prt_codigo, p.prt_termo, r.res_cpf, r.res_rqe'
      'from responsaveis r, conselhos c, cbo o, participacao p'
      'where r.cos_id = c.cos_codigo'
      'and r.cbo_codigo = o.cbo_codigo'
      'and r.prt_codigo = p.prt_codigo'
      ''
      'order by res_codigo')
    UpdateObject = updResponsaveis
    Left = 440
    Top = 384
    object qyResponsaveisres_codigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'res_codigo'
    end
    object qyResponsaveisres_titulo: TStringField
      DisplayLabel = 'T'#237'tulo'
      FieldName = 'res_titulo'
      Size = 5
    end
    object qyResponsaveisres_nome: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'res_nome'
      Size = 80
    end
    object qyResponsaveiscos_id: TIntegerField
      DisplayLabel = 'ID. Cons.'
      FieldName = 'cos_id'
      Visible = False
    end
    object qyResponsaveiscos_tipo: TStringField
      DisplayLabel = 'Cons.'
      FieldName = 'cos_tipo'
      Size = 5
    end
    object qyResponsaveisres_numconselho: TStringField
      DisplayLabel = 'Num. conselho'
      FieldName = 'res_numconselho'
      Size = 10
    end
    object qyResponsaveiscos_uf: TStringField
      DisplayLabel = 'UF Cons.'
      FieldName = 'cos_uf'
      FixedChar = True
      Size = 2
    end
    object qyResponsaveisres_iniciais: TStringField
      DisplayLabel = 'Iniciais'
      FieldName = 'res_iniciais'
      Size = 10
    end
    object qyResponsaveiscbo_codigo: TIntegerField
      DisplayLabel = 'C'#243'd. CBO'
      FieldName = 'cbo_codigo'
    end
    object qyResponsaveiscbo_descricao: TStringField
      DisplayLabel = 'CBO'
      FieldName = 'cbo_descricao'
      Size = 150
    end
    object qyResponsaveisprt_codigo: TIntegerField
      DisplayLabel = 'C'#243'd. Part.'
      FieldName = 'prt_codigo'
    end
    object qyResponsaveisprt_termo: TStringField
      DisplayLabel = 'Termo'
      FieldName = 'prt_termo'
      Size = 30
    end
    object qyResponsaveisres_cpf: TStringField
      DisplayLabel = 'CPF'
      FieldName = 'res_cpf'
      EditMask = '000.000.000-00;1;_'
      Size = 15
    end
    object qyResponsaveisres_rqe: TStringField
      DisplayLabel = 'RQE'
      FieldName = 'res_rqe'
      Size = 15
    end
  end
  object updResponsaveis: TSDUpdateSQL
    RefreshSQL.Strings = (
      
        'select res_codigo, res_nome, res_titulo, cos_id, res_numconselho' +
        ', cos_uf, res_iniciais, cbo_codigo, prt_codigo, res_cpf, res_rqe' +
        #13#10'from responsaveis'
      'where'
      '  res_codigo = :OLD_res_codigo')
    ModifySQL.Strings = (
      'update responsaveis'
      'set'
      '  res_codigo = :res_codigo,'
      '  res_nome = :res_nome,'
      '  res_titulo = :res_titulo,'
      '  cos_id = :cos_id,'
      '  res_numconselho = :res_numconselho,'
      '  cos_uf = :cos_uf,'
      '  res_iniciais = :res_iniciais,'
      '  cbo_codigo = :cbo_codigo,'
      '  prt_codigo = :prt_codigo,'
      '  res_cpf = :res_cpf,'
      '  res_rqe = :res_rqe'
      'where'
      '  res_codigo = :OLD_res_codigo')
    InsertSQL.Strings = (
      'insert into responsaveis'
      
        '  (res_codigo, res_nome, res_titulo, cos_id, res_numconselho, co' +
        's_uf, res_iniciais, cbo_codigo, prt_codigo, res_cpf, res_rqe)'
      'values'
      
        '  (:res_codigo, :res_nome, :res_titulo, :cos_id, :res_numconselh' +
        'o, :cos_uf, :res_iniciais, :cbo_codigo, :prt_codigo, :res_cpf, :' +
        'res_rqe)')
    DeleteSQL.Strings = (
      'delete from responsaveis'
      'where'
      '  res_codigo = :OLD_res_codigo')
    Left = 528
    Top = 384
  end
  object qyUsuariosMail: TSDQuery
    DatabaseName = 'cadastros'
    Options = []
    SessionName = 'SessaoCadastros'
    OnUpdateError = qyUsuariosMailUpdateError
    AfterInsert = qyUsuariosMailAfterInsert
    BeforePost = qyUsuariosMailBeforePost
    AfterPost = qyUsuariosMailAfterPost
    BeforeDelete = qyUsuariosMailBeforeDelete
    AfterDelete = qyUsuariosMailAfterDelete
    OnPostError = qyUsuariosMailPostError
    SQL.Strings = (
      'select * from usuariosmail'
      'order by usu_codigo')
    UpdateObject = updUsuariosMail
    Left = 600
    Top = 520
    object qyUsuariosMailusu_codigo: TIntegerField
      FieldName = 'usu_codigo'
    end
    object qyUsuariosMailmai_host: TStringField
      FieldName = 'mai_host'
      Size = 60
    end
    object qyUsuariosMailmai_username: TStringField
      FieldName = 'mai_username'
      Size = 60
    end
    object qyUsuariosMailmai_password: TStringField
      FieldName = 'mai_password'
    end
    object qyUsuariosMailmai_namefrom: TStringField
      FieldName = 'mai_namefrom'
      Size = 60
    end
    object qyUsuariosMailmai_adressfrom: TStringField
      FieldName = 'mai_adressfrom'
      Size = 60
    end
    object qyUsuariosMailmai_door: TIntegerField
      FieldName = 'mai_door'
    end
  end
  object updUsuariosMail: TSDUpdateSQL
    RefreshSQL.Strings = (
      
        'select usu_codigo, mai_host, mai_username, mai_password, mai_nam' +
        'efrom, mai_adressfrom, mai_door'#13#10'from usuariosmail'
      'where'
      '  usu_codigo = :OLD_usu_codigo')
    ModifySQL.Strings = (
      'update usuariosmail'
      'set'
      '  usu_codigo = :usu_codigo,'
      '  mai_host = :mai_host,'
      '  mai_username = :mai_username,'
      '  mai_password = :mai_password,'
      '  mai_namefrom = :mai_namefrom,'
      '  mai_adressfrom = :mai_adressfrom,'
      '  mai_door = :mai_door'
      'where'
      '  usu_codigo = :OLD_usu_codigo')
    InsertSQL.Strings = (
      'insert into usuariosmail'
      
        '  (usu_codigo, mai_host, mai_username, mai_password, mai_namefro' +
        'm, mai_adressfrom, mai_door)'
      'values'
      
        '  (:usu_codigo, :mai_host, :mai_username, :mai_password, :mai_na' +
        'mefrom, :mai_adressfrom, :mai_door)')
    DeleteSQL.Strings = (
      'delete from usuariosmail'
      'where'
      '  usu_codigo = :OLD_usu_codigo')
    Left = 672
    Top = 520
  end
  object qyModLaudoMacro: TSDQuery
    DatabaseName = 'cadastros'
    Options = []
    SessionName = 'SessaoCadastros'
    OnUpdateError = qyModLaudoMacroUpdateError
    AfterInsert = qyModLaudoMacroAfterInsert
    BeforePost = qyModLaudoMacroBeforePost
    AfterPost = qyModLaudoMacroAfterPost
    BeforeDelete = qyModLaudoMacroBeforeDelete
    AfterDelete = qyModLaudoMacroAfterDelete
    OnPostError = qyModLaudoMacroPostError
    SQL.Strings = (
      'select lmm_id, lmm_descricao, lmm_modelo from laudosmodmacro'
      'order by lmm_descricao')
    UpdateObject = updModLaudoMacro
    Left = 680
    Top = 296
    object qyModLaudoMacrolmm_id: TIntegerField
      DisplayLabel = 'ID'
      DisplayWidth = 8
      FieldName = 'lmm_id'
      DisplayFormat = '000'
      EditFormat = '000'
    end
    object qyModLaudoMacrolmm_descricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'lmm_descricao'
      Size = 30
    end
    object qyModLaudoMacrolmm_modelo: TBlobField
      DisplayLabel = 'Modelo'
      FieldName = 'lmm_modelo'
      Visible = False
    end
  end
  object updModLaudoMacro: TSDUpdateSQL
    RefreshSQL.Strings = (
      'select lmm_id, lmm_descricao, lmm_modelo'#13#10'from laudosmodmacro'
      'where'
      '  lmm_id = :OLD_lmm_id')
    ModifySQL.Strings = (
      'update laudosmodmacro'
      'set'
      '  lmm_id = :lmm_id,'
      '  lmm_descricao = :lmm_descricao,'
      '  lmm_modelo = :lmm_modelo'
      'where'
      '  lmm_id = :OLD_lmm_id')
    InsertSQL.Strings = (
      'insert into laudosmodmacro'
      '  (lmm_id, lmm_descricao, lmm_modelo)'
      'values'
      '  (:lmm_id, :lmm_descricao, :lmm_modelo)')
    DeleteSQL.Strings = (
      'delete from laudosmodmacro'
      'where'
      '  lmm_id = :OLD_lmm_id')
    Left = 776
    Top = 296
  end
  object qyAcesso: TSDQuery
    DatabaseName = 'cadastros'
    Options = []
    SessionName = 'SessaoCadastros'
    OnUpdateError = qyAcessoUpdateError
    AfterInsert = qyAcessoAfterInsert
    BeforePost = qyAcessoBeforePost
    AfterPost = qyAcessoAfterPost
    BeforeDelete = qyAcessoBeforeDelete
    AfterDelete = qyAcessoAfterDelete
    OnPostError = qyAcessoPostError
    SQL.Strings = (
      'select * from acesso')
    UpdateObject = updAcesso
    Left = 336
    Top = 16
    object qyAcessoace_codigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ace_codigo'
      DisplayFormat = '000'
    end
    object qyAcessoace_descricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'ace_descricao'
    end
  end
  object updAcesso: TSDUpdateSQL
    RefreshSQL.Strings = (
      'select ace_codigo, ace_descricao'
      'from acesso'
      'where'
      '  ace_codigo = :OLD_ace_codigo')
    ModifySQL.Strings = (
      'update acesso'
      'set'
      '  ace_codigo = :ace_codigo,'
      '  ace_descricao = :ace_descricao'
      'where'
      '  ace_codigo = :OLD_ace_codigo')
    InsertSQL.Strings = (
      'insert into acesso'
      '  (ace_codigo, ace_descricao)'
      'values'
      '  (:ace_codigo, :ace_descricao)')
    DeleteSQL.Strings = (
      'delete from acesso'
      'where'
      '  ace_codigo = :OLD_ace_codigo')
    Left = 400
    Top = 16
  end
  object qyBancos: TSDQuery
    DatabaseName = 'cadastros'
    Options = []
    SessionName = 'SessaoCadastros'
    OnUpdateError = qyBancosUpdateError
    AfterInsert = qyBancosAfterInsert
    BeforePost = qyBancosBeforePost
    AfterPost = qyBancosAfterPost
    BeforeDelete = qyBancosBeforeDelete
    AfterDelete = qyBancosAfterDelete
    OnPostError = qyBancosPostError
    SQL.Strings = (
      'select * from bancos')
    UpdateObject = updBancos
    Left = 616
    Top = 16
    object qyBancosban_codigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ban_codigo'
      DisplayFormat = '000'
    end
    object qyBancosban_descricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'ban_descricao'
      Size = 50
    end
  end
  object updBancos: TSDUpdateSQL
    RefreshSQL.Strings = (
      'select ban_codigo, ban_descricao'
      'from bancos'
      'where'
      '  ban_codigo = :OLD_ban_codigo')
    ModifySQL.Strings = (
      'update bancos'
      'set'
      '  ban_codigo = :ban_codigo,'
      '  ban_descricao = :ban_descricao'
      'where'
      '  ban_codigo = :OLD_ban_codigo')
    InsertSQL.Strings = (
      'insert into bancos'
      '  (ban_codigo, ban_descricao)'
      'values'
      '  (:ban_codigo, :ban_descricao)')
    DeleteSQL.Strings = (
      'delete from bancos'
      'where'
      '  ban_codigo = :OLD_ban_codigo')
    Left = 688
    Top = 16
  end
  object qyAgenda: TSDQuery
    DatabaseName = 'cadastros'
    Options = []
    SessionName = 'SessaoCadastros'
    OnUpdateError = qyAgendaUpdateError
    AfterInsert = qyAgendaAfterInsert
    BeforePost = qyAgendaBeforePost
    AfterPost = qyAgendaAfterPost
    BeforeDelete = qyAgendaBeforeDelete
    AfterDelete = qyAgendaAfterDelete
    OnPostError = qyAgendaPostError
    SQL.Strings = (
      'select * from agenda')
    UpdateObject = updAgenda
    Left = 472
    Top = 16
    object qyAgendaage_codigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'age_codigo'
      DisplayFormat = '000'
    end
    object qyAgendaage_nome: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'age_nome'
    end
    object qyAgendaage_telefone: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'age_telefone'
      EditMask = '(99) 9999-9999;1;_'
      Size = 15
    end
    object qyAgendaage_fax: TStringField
      DisplayLabel = 'Fax'
      FieldName = 'age_fax'
      EditMask = '(99) 9999-9999;1;_'
      Size = 15
    end
    object qyAgendaage_celular: TStringField
      DisplayLabel = 'Celular'
      FieldName = 'age_celular'
      EditMask = '(99) 9999-9999;1;_'
      Size = 15
    end
    object qyAgendaage_email: TStringField
      DisplayLabel = 'e-mail'
      FieldName = 'age_email'
      Size = 40
    end
    object qyAgendaage_homepage: TStringField
      DisplayLabel = 'Home page'
      FieldName = 'age_homepage'
      Size = 40
    end
    object qyAgendaage_msn: TStringField
      DisplayLabel = 'msn'
      FieldName = 'age_msn'
      Size = 40
    end
    object qyAgendaage_skype: TStringField
      DisplayLabel = 'Skype'
      FieldName = 'age_skype'
      Size = 30
    end
  end
  object updAgenda: TSDUpdateSQL
    RefreshSQL.Strings = (
      
        'select age_codigo, age_nome, age_telefone, age_fax, age_celular,' +
        ' age_email, age_homepage, age_msn, age_skype'
      'from agenda'
      'where'
      '  age_codigo = :OLD_age_codigo')
    ModifySQL.Strings = (
      'update agenda'
      'set'
      '  age_codigo = :age_codigo,'
      '  age_nome = :age_nome,'
      '  age_telefone = :age_telefone,'
      '  age_fax = :age_fax,'
      '  age_celular = :age_celular,'
      '  age_email = :age_email,'
      '  age_homepage = :age_homepage,'
      '  age_msn = :age_msn,'
      '  age_skype = :age_skype'
      'where'
      '  age_codigo = :OLD_age_codigo')
    InsertSQL.Strings = (
      'insert into agenda'
      
        '  (age_codigo, age_nome, age_telefone, age_fax, age_celular, age' +
        '_email, age_homepage, age_msn, age_skype)'
      'values'
      
        '  (:age_codigo, :age_nome, :age_telefone, :age_fax, :age_celular' +
        ', :age_email, :age_homepage, :age_msn, :age_skype)')
    DeleteSQL.Strings = (
      'delete from agenda'
      'where'
      '  age_codigo = :OLD_age_codigo')
    Left = 536
    Top = 16
  end
  object qyUf: TSDQuery
    DatabaseName = 'cadastros'
    Options = []
    SessionName = 'SessaoCadastros'
    OnUpdateError = qyUfUpdateError
    AfterInsert = qyUfAfterInsert
    BeforePost = qyUfBeforePost
    AfterPost = qyUfAfterPost
    BeforeDelete = qyUfBeforeDelete
    AfterDelete = qyUfAfterDelete
    OnPostError = qyUfPostError
    SQL.Strings = (
      'select * from uf')
    UpdateObject = updUf
    Left = 40
    Top = 504
    object qyUfuf_codigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'uf_codigo'
    end
    object qyUfuf_sigla: TStringField
      DisplayLabel = 'Sigla'
      FieldName = 'uf_sigla'
      FixedChar = True
      Size = 2
    end
    object qyUfuf_estado: TStringField
      DisplayLabel = 'Estado'
      FieldName = 'uf_estado'
      Size = 25
    end
  end
  object updUf: TSDUpdateSQL
    RefreshSQL.Strings = (
      'select uf_sigla, uf_estado, uf_codigo'
      'from uf'
      'where'
      '  uf_sigla = :OLD_uf_sigla')
    ModifySQL.Strings = (
      'update uf'
      'set'
      '  uf_sigla = :uf_sigla,'
      '  uf_estado = :uf_estado,'
      '  uf_codigo = :uf_codigo'
      'where'
      '  uf_sigla = :OLD_uf_sigla')
    InsertSQL.Strings = (
      'insert into uf'
      '  (uf_sigla, uf_estado, uf_codigo)'
      'values'
      '  (:uf_sigla, :uf_estado, :uf_codigo)')
    DeleteSQL.Strings = (
      'delete from uf'
      'where'
      '  uf_sigla = :OLD_uf_sigla')
    Left = 88
    Top = 504
  end
  object qyFuncoes: TSDQuery
    DatabaseName = 'cadastros'
    Options = []
    SessionName = 'SessaoCadastros'
    OnUpdateError = qyFuncoesUpdateError
    AfterInsert = qyFuncoesAfterInsert
    BeforePost = qyFuncoesBeforePost
    AfterPost = qyFuncoesAfterPost
    BeforeDelete = qyFuncoesBeforeDelete
    AfterDelete = qyFuncoesAfterDelete
    OnPostError = qyFuncoesPostError
    SQL.Strings = (
      'select * from funcoes')
    UpdateObject = updFuncoes
    Left = 296
    Top = 184
    object qyFuncoesfnc_id: TIntegerField
      DisplayLabel = 'ID'
      FieldName = 'fnc_id'
      DisplayFormat = '000'
    end
    object qyFuncoesfnc_descricao: TStringField
      DisplayLabel = 'Fun'#231#227'o'
      FieldName = 'fnc_descricao'
      Size = 30
    end
  end
  object updFuncoes: TSDUpdateSQL
    RefreshSQL.Strings = (
      'select fnc_id, fnc_descricao'
      'from funcoes'
      'where'
      '  fnc_id = :OLD_fnc_id')
    ModifySQL.Strings = (
      'update funcoes'
      'set'
      '  fnc_id = :fnc_id,'
      '  fnc_descricao = :fnc_descricao'
      'where'
      '  fnc_id = :OLD_fnc_id')
    InsertSQL.Strings = (
      'insert into funcoes'
      '  (fnc_id, fnc_descricao)'
      'values'
      '  (:fnc_id, :fnc_descricao)')
    DeleteSQL.Strings = (
      'delete from funcoes'
      'where'
      '  fnc_id = :OLD_fnc_id')
    Left = 352
    Top = 184
  end
  object qyMateriais: TSDQuery
    DatabaseName = 'cadastros'
    Options = []
    SessionName = 'SessaoCadastros'
    OnUpdateError = qyMateriaisUpdateError
    BeforePost = qyMateriaisBeforePost
    AfterPost = qyMateriaisAfterPost
    BeforeDelete = qyMateriaisBeforeDelete
    AfterDelete = qyMateriaisAfterDelete
    OnPostError = qyMateriaisPostError
    SQL.Strings = (
      'select * from materiais')
    UpdateObject = updMateriais
    Left = 232
    Top = 296
    object qyMateriaismat_id: TIntegerField
      DisplayLabel = 'ID'
      FieldName = 'mat_id'
    end
    object qyMateriaismat_descricao: TStringField
      DisplayLabel = 'Material'
      FieldName = 'mat_descricao'
      Size = 50
    end
  end
  object updMateriais: TSDUpdateSQL
    RefreshSQL.Strings = (
      'select mat_id, mat_descricao'
      'from materiais'
      'where'
      '  mat_id = :OLD_mat_id')
    ModifySQL.Strings = (
      'update materiais'
      'set'
      '  mat_id = :mat_id,'
      '  mat_descricao = :mat_descricao'
      'where'
      '  mat_id = :OLD_mat_id')
    InsertSQL.Strings = (
      'insert into materiais'
      '  (mat_id, mat_descricao)'
      'values'
      '  (:mat_id, :mat_descricao)')
    DeleteSQL.Strings = (
      'delete from materiais'
      'where'
      '  mat_id = :OLD_mat_id')
    Left = 312
    Top = 296
  end
  object qyTopografias: TSDQuery
    DatabaseName = 'cadastros'
    Options = []
    SessionName = 'SessaoCadastros'
    OnUpdateError = qyTopografiasUpdateError
    AfterInsert = qyTopografiasAfterInsert
    BeforePost = qyTopografiasBeforePost
    AfterPost = qyTopografiasAfterPost
    BeforeDelete = qyTopografiasBeforeDelete
    AfterDelete = qyTopografiasAfterDelete
    OnPostError = qyTopografiasPostError
    SQL.Strings = (
      'select * from topografias')
    UpdateObject = updTopografia
    Left = 632
    Top = 384
    object qyTopografiastop_id: TIntegerField
      DisplayLabel = 'ID'
      FieldName = 'top_id'
      DisplayFormat = '000'
    end
    object qyTopografiastop_descricao: TStringField
      DisplayLabel = 'Topografia'
      FieldName = 'top_descricao'
      Size = 50
    end
  end
  object updTopografia: TSDUpdateSQL
    RefreshSQL.Strings = (
      'select top_id, top_descricao'
      'from topografias'
      'where'
      '  top_id = :OLD_top_id')
    ModifySQL.Strings = (
      'update topografias'
      'set'
      '  top_id = :top_id,'
      '  top_descricao = :top_descricao'
      'where'
      '  top_id = :OLD_top_id')
    InsertSQL.Strings = (
      'insert into topografias'
      '  (top_id, top_descricao)'
      'values'
      '  (:top_id, :top_descricao)')
    DeleteSQL.Strings = (
      'delete from topografias'
      'where'
      '  top_id = :OLD_top_id')
    Left = 704
    Top = 384
  end
  object qyExamesLocais: TSDQuery
    DatabaseName = 'cadastros'
    Options = []
    SessionName = 'SessaoCadastros'
    OnUpdateError = qyExamesLocaisUpdateError
    AfterInsert = qyExamesLocaisAfterInsert
    BeforePost = qyExamesLocaisBeforePost
    AfterPost = qyExamesLocaisAfterPost
    BeforeDelete = qyExamesLocaisBeforeDelete
    AfterDelete = qyExamesLocaisAfterDelete
    OnPostError = qyExamesLocaisPostError
    SQL.Strings = (
      'select * from exameslocais')
    UpdateObject = updExamesLocais
    Left = 208
    Top = 96
    object qyExamesLocaisexl_id: TIntegerField
      DisplayLabel = 'ID'
      FieldName = 'exl_id'
      DisplayFormat = '000'
    end
    object qyExamesLocaisexl_descricao: TStringField
      DisplayLabel = 'Locais'
      FieldName = 'exl_descricao'
      Size = 35
    end
  end
  object updExamesLocais: TSDUpdateSQL
    RefreshSQL.Strings = (
      'select exl_id, exl_descricao'#13#10'from exameslocais'
      'where'
      '  exl_id = :OLD_exl_id')
    ModifySQL.Strings = (
      'update exameslocais'
      'set'
      '  exl_id = :exl_id,'
      '  exl_descricao = :exl_descricao'
      'where'
      '  exl_id = :OLD_exl_id')
    InsertSQL.Strings = (
      'insert into exameslocais'
      '  (exl_id, exl_descricao)'
      'values'
      '  (:exl_id, :exl_descricao)')
    DeleteSQL.Strings = (
      'delete from exameslocais'
      'where'
      '  exl_id = :OLD_exl_id')
    Left = 296
    Top = 96
  end
  object qyMovimentos: TSDQuery
    DatabaseName = 'cadastros'
    Options = []
    SessionName = 'SessaoCadastros'
    OnUpdateError = qyMovimentosUpdateError
    AfterInsert = qyMovimentosAfterInsert
    BeforePost = qyMovimentosBeforePost
    AfterPost = qyMovimentosAfterPost
    BeforeDelete = qyMovimentosBeforeDelete
    AfterDelete = qyMovimentosAfterDelete
    OnPostError = qyMovimentosPostError
    SQL.Strings = (
      'select * from movimentos')
    UpdateObject = updMovimentos
    Left = 888
    Top = 296
    object qyMovimentosmov_codigo: TIntegerField
      DisplayLabel = 'ID'
      FieldName = 'mov_codigo'
    end
    object qyMovimentosmov_descricao: TStringField
      DisplayLabel = 'Movimento'
      FieldName = 'mov_descricao'
    end
    object qyMovimentosmov_tipo: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'mov_tipo'
      FixedChar = True
      Size = 1
    end
  end
  object updMovimentos: TSDUpdateSQL
    RefreshSQL.Strings = (
      'select mov_codigo, mov_descricao, mov_tipo'#13#10'from movimentos'
      'where'
      '  mov_codigo = :OLD_mov_codigo')
    ModifySQL.Strings = (
      'update movimentos'
      'set'
      '  mov_codigo = :mov_codigo,'
      '  mov_descricao = :mov_descricao,'
      '  mov_tipo = :mov_tipo'
      'where'
      '  mov_codigo = :OLD_mov_codigo')
    InsertSQL.Strings = (
      'insert into movimentos'
      '  (mov_codigo, mov_descricao, mov_tipo)'
      'values'
      '  (:mov_codigo, :mov_descricao, :mov_tipo)')
    DeleteSQL.Strings = (
      'delete from movimentos'
      'where'
      '  mov_codigo = :OLD_mov_codigo')
    Left = 960
    Top = 296
  end
  object qyLaudosModHist: TSDQuery
    DatabaseName = 'cadastros'
    Options = []
    SessionName = 'SessaoCadastros'
    OnUpdateError = qyLaudosModHistUpdateError
    AfterInsert = qyLaudosModHistAfterInsert
    BeforePost = qyLaudosModHistBeforePost
    AfterPost = qyLaudosModHistAfterPost
    BeforeDelete = qyLaudosModHistBeforeDelete
    AfterDelete = qyLaudosModHistAfterDelete
    OnPostError = qyLaudosModHistPostError
    SQL.Strings = (
      'select * from laudosmodhist')
    UpdateObject = updLaudosModHist
    Left = 920
    Top = 184
    object qyLaudosModHistlmh_id: TIntegerField
      DisplayLabel = 'ID'
      FieldName = 'lmh_id'
      DisplayFormat = '000'
    end
    object qyLaudosModHistlmh_descricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'lmh_descricao'
      Size = 30
    end
    object qyLaudosModHistlmh_microscopia: TBlobField
      DisplayLabel = 'Microscopia'
      FieldName = 'lmh_microscopia'
      Visible = False
    end
    object qyLaudosModHistlmh_diagnostico: TBlobField
      DisplayLabel = 'Diagn'#243'stico'
      FieldName = 'lmh_diagnostico'
      Visible = False
    end
  end
  object updLaudosModHist: TSDUpdateSQL
    RefreshSQL.Strings = (
      'select lmh_id, lmh_descricao, lmh_microscopia, lmh_diagnostico'
      'from laudosmodhist'
      'where'
      '  lmh_id = :OLD_lmh_id')
    ModifySQL.Strings = (
      'update laudosmodhist'
      'set'
      '  lmh_id = :lmh_id,'
      '  lmh_descricao = :lmh_descricao,'
      '  lmh_microscopia = :lmh_microscopia,'
      '  lmh_diagnostico = :lmh_diagnostico'
      'where'
      '  lmh_id = :OLD_lmh_id')
    InsertSQL.Strings = (
      'insert into laudosmodhist'
      '  (lmh_id, lmh_descricao, lmh_microscopia, lmh_diagnostico)'
      'values'
      '  (:lmh_id, :lmh_descricao, :lmh_microscopia, :lmh_diagnostico)')
    DeleteSQL.Strings = (
      'delete from laudosmodhist'
      'where'
      '  lmh_id = :OLD_lmh_id')
    Left = 1000
    Top = 184
  end
  object qyExamesTipoCito: TSDQuery
    DatabaseName = 'cadastros'
    Options = []
    SessionName = 'SessaoCadastros'
    OnUpdateError = qyExamesTipoCitoUpdateError
    AfterInsert = qyExamesTipoCitoAfterInsert
    BeforePost = qyExamesTipoCitoBeforePost
    AfterPost = qyExamesTipoCitoAfterPost
    BeforeDelete = qyExamesTipoCitoBeforeDelete
    AfterDelete = qyExamesTipoCitoAfterDelete
    OnPostError = qyExamesTipoCitoPostError
    SQL.Strings = (
      'select * from examestipocito')
    UpdateObject = updExamesTipoCito
    Left = 720
    Top = 96
    object qyExamesTipoCitoeto_id: TIntegerField
      DisplayLabel = 'ID'
      FieldName = 'eto_id'
    end
    object qyExamesTipoCitoeto_local: TStringField
      DisplayLabel = 'Local'
      FieldName = 'eto_local'
      Size = 40
    end
    object qyExamesTipoCitoeto_descricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'eto_descricao'
      Size = 120
    end
  end
  object updExamesTipoCito: TSDUpdateSQL
    RefreshSQL.Strings = (
      'select eto_id, eto_local, eto_descricao'#13#10'from examestipocito'
      'where'
      '  eto_id = :OLD_eto_id')
    ModifySQL.Strings = (
      'update examestipocito'
      'set'
      '  eto_id = :eto_id,'
      '  eto_local = :eto_local,'
      '  eto_descricao = :eto_descricao'
      'where'
      '  eto_id = :OLD_eto_id')
    InsertSQL.Strings = (
      'insert into examestipocito'
      '  (eto_id, eto_local, eto_descricao)'
      'values'
      '  (:eto_id, :eto_local, :eto_descricao)')
    DeleteSQL.Strings = (
      'delete from examestipocito'
      'where'
      '  eto_id = :OLD_eto_id')
    Left = 792
    Top = 96
  end
  object qyExamesTipo: TSDQuery
    DatabaseName = 'cadastros'
    Options = []
    SessionName = 'SessaoCadastros'
    SQL.Strings = (
      'select eio_id, eio_descricao from examestipo'
      'order by eio_descricao')
    UpdateObject = updExamesTipo
    Left = 552
    Top = 96
    object qyExamesTipoeio_id: TIntegerField
      DisplayLabel = 'ID'
      DisplayWidth = 8
      FieldName = 'eio_id'
      DisplayFormat = '000'
      EditFormat = '000'
    end
    object qyExamesTipoeio_descricao: TStringField
      DisplayLabel = 'Tipos de Exames (Histologia)'
      FieldName = 'eio_descricao'
      Size = 30
    end
  end
  object updExamesTipo: TSDUpdateSQL
    RefreshSQL.Strings = (
      'select eio_id, eio_descricao'#13#10'from examestipo'
      'where'
      '  eio_id = :OLD_eio_id')
    ModifySQL.Strings = (
      'update examestipo'
      'set'
      '  eio_id = :eio_id,'
      '  eio_descricao = :eio_descricao'
      'where'
      '  eio_id = :OLD_eio_id')
    InsertSQL.Strings = (
      'insert into examestipo'
      '  (eio_id, eio_descricao)'
      'values'
      '  (:eio_id, :eio_descricao)')
    DeleteSQL.Strings = (
      'delete from examestipo'
      'where'
      '  eio_id = :OLD_eio_id')
    Left = 624
    Top = 96
  end
  object qyLaudosMod: TSDQuery
    DatabaseName = 'cadastros'
    Options = []
    SessionName = 'SessaoCadastros'
    OnUpdateError = qyLaudosModUpdateError
    AfterInsert = qyLaudosModAfterInsert
    BeforePost = qyLaudosModBeforePost
    AfterPost = qyLaudosModAfterPost
    BeforeDelete = qyLaudosModBeforeDelete
    AfterDelete = qyLaudosModAfterDelete
    OnPostError = qyLaudosModPostError
    SQL.Strings = (
      'select * from laudosmod')
    UpdateObject = updLaudosMod
    Left = 416
    Top = 184
    object qyLaudosModmod_id: TIntegerField
      DisplayLabel = 'ID'
      FieldName = 'mod_id'
      DisplayFormat = '000'
    end
    object qyLaudosModmod_descricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'mod_descricao'
      Size = 30
    end
    object qyLaudosModmod_modelo: TBlobField
      DisplayLabel = 'Modelo'
      FieldName = 'mod_modelo'
      Visible = False
    end
    object qyLaudosModmod_diagnostico: TBlobField
      DisplayLabel = 'Diagn'#243'stico'
      FieldName = 'mod_diagnostico'
      Visible = False
    end
  end
  object updLaudosMod: TSDUpdateSQL
    RefreshSQL.Strings = (
      
        'select mod_id, mod_descricao, mod_modelo, mod_diagnostico'#13#10'from ' +
        'laudosmod'
      'where'
      '  mod_id = :OLD_mod_id')
    ModifySQL.Strings = (
      'update laudosmod'
      'set'
      '  mod_id = :mod_id,'
      '  mod_descricao = :mod_descricao,'
      '  mod_modelo = :mod_modelo,'
      '  mod_diagnostico = :mod_diagnostico'
      'where'
      '  mod_id = :OLD_mod_id')
    InsertSQL.Strings = (
      'insert into laudosmod'
      '  (mod_id, mod_descricao, mod_modelo, mod_diagnostico)'
      'values'
      '  (:mod_id, :mod_descricao, :mod_modelo, :mod_diagnostico)')
    DeleteSQL.Strings = (
      'delete from laudosmod'
      'where'
      '  mod_id = :OLD_mod_id')
    Left = 480
    Top = 184
  end
  object qyCidades: TSDQuery
    DatabaseName = 'Cadastros'
    Options = []
    SessionName = 'SessaoCadastros'
    OnUpdateError = qyCidadesUpdateError
    BeforePost = qyCidadesBeforePost
    AfterPost = qyCidadesAfterPost
    BeforeDelete = qyCidadesBeforeDelete
    AfterDelete = qyCidadesAfterDelete
    OnPostError = qyCidadesPostError
    SQL.Strings = (
      'select '
      
        'c.cid_codigo, c.cid_cidade, c.uf_sigla, u.uf_estado, c.cid_ceppa' +
        'drao'
      'from '
      'cidades c, uf u'
      'where'
      'c.uf_sigla = u.uf_sigla')
    UpdateObject = updCidades
    Left = 768
    Top = 16
    object qyCidadescid_codigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cid_codigo'
    end
    object qyCidadescid_cidade: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'cid_cidade'
      Size = 50
    end
    object qyCidadesuf_sigla: TStringField
      DisplayLabel = 'Uf'
      FieldName = 'uf_sigla'
      FixedChar = True
      Size = 2
    end
    object qyCidadesuf_estado: TStringField
      DisplayLabel = 'Estado'
      FieldName = 'uf_estado'
      Size = 25
    end
    object qyCidadescid_ceppadrao: TStringField
      DisplayLabel = 'CEP Padr'#227'o'
      FieldName = 'cid_ceppadrao'
      FixedChar = True
      Size = 9
    end
  end
  object updCidades: TSDUpdateSQL
    RefreshSQL.Strings = (
      
        'select cid_codigo, cid_cidade, uf_sigla, cid_ceppadrao'#13#10'from cid' +
        'ades'
      'where'
      '  cid_codigo = :OLD_cid_codigo')
    ModifySQL.Strings = (
      'update cidades'
      'set'
      '  cid_codigo = :cid_codigo,'
      '  cid_cidade = :cid_cidade,'
      '  uf_sigla = :uf_sigla,'
      '  cid_ceppadrao = :cid_ceppadrao'
      'where'
      '  cid_codigo = :OLD_cid_codigo')
    InsertSQL.Strings = (
      'insert into cidades'
      '  (cid_codigo, cid_cidade, uf_sigla, cid_ceppadrao)'
      'values'
      '  (:cid_codigo, :cid_cidade, :uf_sigla, :cid_ceppadrao)')
    DeleteSQL.Strings = (
      'delete from cidades'
      'where'
      '  cid_codigo = :OLD_cid_codigo')
    Left = 832
    Top = 16
  end
  object qyContas: TSDQuery
    DatabaseName = 'cadastros'
    Options = []
    SessionName = 'SessaoCadastros'
    OnUpdateError = qyContasUpdateError
    AfterInsert = qyContasAfterInsert
    BeforePost = qyContasBeforePost
    AfterPost = qyContasAfterPost
    BeforeDelete = qyContasBeforeDelete
    AfterDelete = qyContasAfterDelete
    OnPostError = qyContasPostError
    SQL.Strings = (
      'select '
      
        'c.con_codigo, c.con_descricao, c.con_obs, c.con_ativa, c.ban_cod' +
        'igo, b.ban_descricao '
      'from '
      'contas c, bancos b'
      'where'
      'c.ban_codigo = b.ban_codigo ')
    UpdateObject = updContas
    Left = 912
    Top = 16
    object qyContascon_codigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'con_codigo'
      DisplayFormat = '000'
    end
    object qyContascon_descricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'con_descricao'
      Size = 15
    end
    object qyContascon_obs: TStringField
      DisplayLabel = 'Obs'
      FieldName = 'con_obs'
    end
    object qyContascon_ativa: TStringField
      DisplayLabel = 'Ativa'
      FieldName = 'con_ativa'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object qyContasban_codigo: TIntegerField
      DisplayLabel = 'C'#243'd. Banco'
      FieldName = 'ban_codigo'
    end
    object qyContasban_descricao: TStringField
      DisplayLabel = 'Banco'
      FieldName = 'ban_descricao'
      Size = 50
    end
  end
  object updContas: TSDUpdateSQL
    RefreshSQL.Strings = (
      
        'select con_codigo, con_descricao, con_obs, con_ativa, ban_codigo' +
        #13#10'from contas'
      'where'
      '  con_codigo = :OLD_con_codigo')
    ModifySQL.Strings = (
      'update contas'
      'set'
      '  con_codigo = :con_codigo,'
      '  con_descricao = :con_descricao,'
      '  con_obs = :con_obs,'
      '  con_ativa = :con_ativa,'
      '  ban_codigo = :ban_codigo'
      'where'
      '  con_codigo = :OLD_con_codigo')
    InsertSQL.Strings = (
      'insert into contas'
      '  (con_codigo, con_descricao, con_obs, con_ativa, ban_codigo)'
      'values'
      
        '  (:con_codigo, :con_descricao, :con_obs, :con_ativa, :ban_codig' +
        'o)')
    DeleteSQL.Strings = (
      'delete from contas'
      'where'
      '  con_codigo = :OLD_con_codigo')
    Left = 984
    Top = 16
  end
  object qyExamesTipoHist: TSDQuery
    DatabaseName = 'cadastros'
    Options = []
    SessionName = 'SessaoCadastros'
    OnUpdateError = qyExamesTipoHistUpdateError
    AfterInsert = qyExamesTipoHistAfterInsert
    BeforePost = qyExamesTipoHistBeforePost
    AfterPost = qyExamesTipoHistAfterPost
    BeforeDelete = qyExamesTipoHistBeforeDelete
    AfterDelete = qyExamesTipoHistAfterDelete
    OnPostError = qyExamesTipoHistPostError
    SQL.Strings = (
      'select '
      't.eth_id, t.eth_descricao, t.eio_id, e.eio_descricao'
      'from '
      'examestipohist t, examestipo e'
      'where'
      't.eio_id = e.eio_id')
    UpdateObject = updExamesTipoHist
    Left = 904
    Top = 96
    object qyExamesTipoHisteth_id: TIntegerField
      DisplayLabel = 'ID'
      FieldName = 'eth_id'
      DisplayFormat = '000'
    end
    object qyExamesTipoHisteth_descricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'eth_descricao'
      Size = 50
    end
    object qyExamesTipoHisteio_id: TIntegerField
      DisplayLabel = 'ID Tipo'
      FieldName = 'eio_id'
      DisplayFormat = '000'
    end
    object qyExamesTipoHisteio_descricao: TStringField
      DisplayLabel = 'Desc. Tipo'
      FieldName = 'eio_descricao'
      Size = 30
    end
  end
  object updExamesTipoHist: TSDUpdateSQL
    RefreshSQL.Strings = (
      'select eth_id, eio_id, eth_descricao'#13#10'from examestipohist'
      'where'
      '  eth_id = :OLD_eth_id')
    ModifySQL.Strings = (
      'update examestipohist'
      'set'
      '  eth_id = :eth_id,'
      '  eio_id = :eio_id,'
      '  eth_descricao = :eth_descricao'
      'where'
      '  eth_id = :OLD_eth_id')
    InsertSQL.Strings = (
      'insert into examestipohist'
      '  (eth_id, eio_id, eth_descricao)'
      'values'
      '  (:eth_id, :eio_id, :eth_descricao)')
    DeleteSQL.Strings = (
      'delete from examestipohist'
      'where'
      '  eth_id = :OLD_eth_id')
    Left = 984
    Top = 96
  end
  object qyFornecedores: TSDQuery
    DatabaseName = 'cadastros'
    Options = []
    SessionName = 'SessaoCadastros'
    OnUpdateError = qyFornecedoresUpdateError
    AfterInsert = qyFornecedoresAfterInsert
    BeforePost = qyFornecedoresBeforePost
    AfterPost = qyFornecedoresAfterPost
    BeforeDelete = qyFornecedoresBeforeDelete
    AfterDelete = qyFornecedoresAfterDelete
    OnPostError = qyFornecedoresPostError
    SQL.Strings = (
      'select '
      
        'f.for_codigo, f.for_razao, f.for_fantasia, f.for_cnpj, f.for_ie,' +
        ' f.tpl_id,'
      
        't.tpl_tipo, f.for_logradouro, f.for_numero, f.for_complemento, f' +
        '.for_bairro,'
      
        'f.cid_codigo, c.cid_cidade, c.uf_sigla, f.for_cep, f.for_fone, f' +
        '.for_fax,'
      
        'f.for_celular, f.for_email, f.for_homepage, f.for_dtcadastro, f.' +
        'for_tipo'
      'from '
      'fornecedores f, tplogradouro t, cidades c'
      'where'
      'f.tpl_id = t.tpl_id and f.cid_codigo = c.cid_codigo')
    UpdateObject = updFornecedores
    Left = 24
    Top = 184
    object qyFornecedoresfor_codigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'for_codigo'
      DisplayFormat = '000'
    end
    object qyFornecedoresfor_razao: TStringField
      DisplayLabel = 'Raz'#227'o Social'
      FieldName = 'for_razao'
      Size = 60
    end
    object qyFornecedoresfor_fantasia: TStringField
      DisplayLabel = 'Nome fantasia'
      FieldName = 'for_fantasia'
      Size = 50
    end
    object qyFornecedoresfor_cnpj: TStringField
      DisplayLabel = 'CNPJ'
      FieldName = 'for_cnpj'
      Size = 18
    end
    object qyFornecedoresfor_ie: TStringField
      DisplayLabel = 'Insc. Est.'
      FieldName = 'for_ie'
      Size = 15
    end
    object qyFornecedorestpl_id: TIntegerField
      DisplayLabel = 'ID Tp. Log.'
      FieldName = 'tpl_id'
    end
    object qyFornecedorestpl_tipo: TStringField
      DisplayLabel = 'Tp. Logradouro'
      FieldName = 'tpl_tipo'
    end
    object qyFornecedoresfor_logradouro: TStringField
      DisplayLabel = 'Logradouro'
      FieldName = 'for_logradouro'
      Size = 50
    end
    object qyFornecedoresfor_numero: TIntegerField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'for_numero'
    end
    object qyFornecedoresfor_complemento: TStringField
      DisplayLabel = 'Complemento'
      FieldName = 'for_complemento'
    end
    object qyFornecedoresfor_bairro: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'for_bairro'
      Size = 25
    end
    object qyFornecedorescid_codigo: TIntegerField
      DisplayLabel = 'C'#243'd. Cidade'
      FieldName = 'cid_codigo'
    end
    object qyFornecedorescid_cidade: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'cid_cidade'
      Size = 50
    end
    object qyFornecedoresuf_sigla: TStringField
      DisplayLabel = 'UF'
      FieldName = 'uf_sigla'
      FixedChar = True
      Size = 2
    end
    object qyFornecedoresfor_cep: TStringField
      DisplayLabel = 'CEP'
      FieldName = 'for_cep'
      EditMask = '00000-000;1;_'
      FixedChar = True
      Size = 9
    end
    object qyFornecedoresfor_fone: TStringField
      DisplayLabel = 'Fone'
      FieldName = 'for_fone'
      EditMask = '(00) 0000-0000;1;_'
      Size = 15
    end
    object qyFornecedoresfor_fax: TStringField
      DisplayLabel = 'Fax'
      FieldName = 'for_fax'
      EditMask = '(00) 0000-0000;1;_'
      Size = 15
    end
    object qyFornecedoresfor_celular: TStringField
      DisplayLabel = 'Celular'
      FieldName = 'for_celular'
      EditMask = '(00) 0000-0000;1;_'
      Size = 15
    end
    object qyFornecedoresfor_email: TStringField
      DisplayLabel = 'e-mail'
      FieldName = 'for_email'
      Size = 50
    end
    object qyFornecedoresfor_homepage: TStringField
      DisplayLabel = 'Home Page'
      FieldName = 'for_homepage'
      Size = 50
    end
    object qyFornecedoresfor_dtcadastro: TDateField
      DisplayLabel = 'Dt. Cad.'
      FieldName = 'for_dtcadastro'
      DisplayFormat = 'dd/MM/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object qyFornecedoresfor_tipo: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'for_tipo'
      FixedChar = True
      Size = 1
    end
  end
  object qyFuncionarios: TSDQuery
    DatabaseName = 'cadastros'
    Options = []
    SessionName = 'SessaoCadastros'
    OnUpdateError = qyFuncionariosUpdateError
    AfterInsert = qyFuncionariosAfterInsert
    BeforePost = qyFuncionariosBeforePost
    AfterPost = qyFuncionariosAfterPost
    BeforeDelete = qyFuncionariosBeforeDelete
    AfterDelete = qyFuncionariosAfterDelete
    OnPostError = qyFuncionariosPostError
    SQL.Strings = (
      'select '
      
        'f.fun_codigo, f.fun_nome, f.fnc_id, n.fnc_descricao, f.fun_cpf, ' +
        'f.fun_rg,'
      
        'f.fun_carttrab, f.fun_dataadmis, f.fun_salario, f.fun_endereco, ' +
        'f.fun_bairro,'
      
        'f.cid_codigo, c.cid_cidade, c.uf_sigla, f.fun_cep, f.fun_telefon' +
        'e, f.fun_celular,'
      'f.fun_email, f.fun_datanasc, f.fun_ativo'
      'from '
      'funcionarios f, funcoes n, cidades c'
      'where'
      'f.fnc_id = n.fnc_id and f.cid_codigo = c.cid_codigo')
    UpdateObject = updFuncionarios
    Left = 160
    Top = 184
    object qyFuncionariosfun_codigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'fun_codigo'
      DisplayFormat = '000'
    end
    object qyFuncionariosfun_nome: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'fun_nome'
      Size = 40
    end
    object qyFuncionariosfnc_id: TIntegerField
      DisplayLabel = 'ID Fun'#231#227'o'
      FieldName = 'fnc_id'
    end
    object qyFuncionariosfnc_descricao: TStringField
      DisplayLabel = 'Fun'#231#227'o'
      FieldName = 'fnc_descricao'
      Size = 30
    end
    object qyFuncionariosfun_cpf: TStringField
      DisplayLabel = 'CPF'
      FieldName = 'fun_cpf'
      EditMask = '000.000.000-00;1;_'
      FixedChar = True
      Size = 14
    end
    object qyFuncionariosfun_rg: TStringField
      DisplayLabel = 'RG'
      FieldName = 'fun_rg'
      Size = 15
    end
    object qyFuncionariosfun_carttrab: TStringField
      DisplayLabel = 'Cart. Trab.'
      FieldName = 'fun_carttrab'
      Size = 15
    end
    object qyFuncionariosfun_dataadmis: TDateField
      DisplayLabel = 'Data Adm.'
      FieldName = 'fun_dataadmis'
      DisplayFormat = 'dd/MM/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object qyFuncionariosfun_salario: TFloatField
      DisplayLabel = 'Sal'#225'rio'
      FieldName = 'fun_salario'
      DisplayFormat = '#,###,###,##0.00'
    end
    object qyFuncionariosfun_endereco: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'fun_endereco'
      Size = 40
    end
    object qyFuncionariosfun_bairro: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'fun_bairro'
      Size = 30
    end
    object qyFuncionarioscid_codigo: TIntegerField
      DisplayLabel = 'C'#243'd. cidade'
      FieldName = 'cid_codigo'
    end
    object qyFuncionarioscid_cidade: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'cid_cidade'
      Size = 50
    end
    object qyFuncionariosuf_sigla: TStringField
      DisplayLabel = 'UF'
      FieldName = 'uf_sigla'
      FixedChar = True
      Size = 2
    end
    object qyFuncionariosfun_cep: TStringField
      DisplayLabel = 'CEP'
      FieldName = 'fun_cep'
      FixedChar = True
      Size = 9
    end
    object qyFuncionariosfun_telefone: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'fun_telefone'
      EditMask = '(00) 0000-0000;1;_'
      Size = 15
    end
    object qyFuncionariosfun_celular: TStringField
      DisplayLabel = 'Celular'
      FieldName = 'fun_celular'
      EditMask = '(00) 0000-0000;1;_'
      Size = 15
    end
    object qyFuncionariosfun_email: TStringField
      DisplayLabel = 'e-mail'
      FieldName = 'fun_email'
      Size = 40
    end
    object qyFuncionariosfun_datanasc: TDateField
      DisplayLabel = 'Data nasc.'
      FieldName = 'fun_datanasc'
      DisplayFormat = 'dd/MM/yyyy'
      EditMask = '!99/99/0000;1;_'
    end
    object qyFuncionariosfun_ativo: TBooleanField
      DisplayLabel = 'Ativo'
      FieldName = 'fun_ativo'
    end
  end
  object updFornecedores: TSDUpdateSQL
    RefreshSQL.Strings = (
      
        'select for_codigo, for_razao, for_fantasia, for_cnpj, for_ie, tp' +
        'l_id, for_logradouro, for_numero, for_complemento, for_bairro, c' +
        'id_codigo, for_cep, for_fone, for_fax, for_celular, for_email, f' +
        'or_homepage, for_dtcadastro, for_tipo'#13#10'from fornecedores'
      'where'
      '  for_codigo = :OLD_for_codigo')
    ModifySQL.Strings = (
      'update fornecedores'
      'set'
      '  for_codigo = :for_codigo,'
      '  for_razao = :for_razao,'
      '  for_fantasia = :for_fantasia,'
      '  for_cnpj = :for_cnpj,'
      '  for_ie = :for_ie,'
      '  tpl_id = :tpl_id,'
      '  for_logradouro = :for_logradouro,'
      '  for_numero = :for_numero,'
      '  for_complemento = :for_complemento,'
      '  for_bairro = :for_bairro,'
      '  cid_codigo = :cid_codigo,'
      '  for_cep = :for_cep,'
      '  for_fone = :for_fone,'
      '  for_fax = :for_fax,'
      '  for_celular = :for_celular,'
      '  for_email = :for_email,'
      '  for_homepage = :for_homepage,'
      '  for_dtcadastro = :for_dtcadastro,'
      '  for_tipo = :for_tipo'
      'where'
      '  for_codigo = :OLD_for_codigo')
    InsertSQL.Strings = (
      'insert into fornecedores'
      
        '  (for_codigo, for_razao, for_fantasia, for_cnpj, for_ie, tpl_id' +
        ', for_logradouro, for_numero, for_complemento, for_bairro, cid_c' +
        'odigo, for_cep, for_fone, for_fax, for_celular, for_email, for_h' +
        'omepage, for_dtcadastro, for_tipo)'
      'values'
      
        '  (:for_codigo, :for_razao, :for_fantasia, :for_cnpj, :for_ie, :' +
        'tpl_id, :for_logradouro, :for_numero, :for_complemento, :for_bai' +
        'rro, :cid_codigo, :for_cep, :for_fone, :for_fax, :for_celular, :' +
        'for_email, :for_homepage, :for_dtcadastro, :for_tipo)')
    DeleteSQL.Strings = (
      'delete from fornecedores'
      'where'
      '  for_codigo = :OLD_for_codigo')
    Left = 88
    Top = 184
  end
  object updFuncionarios: TSDUpdateSQL
    RefreshSQL.Strings = (
      
        'select fun_codigo, fun_nome, fnc_id, fun_cpf, fun_rg, fun_carttr' +
        'ab, fun_dataadmis, fun_salario, fun_endereco, fun_bairro, cid_co' +
        'digo, fun_cep, fun_telefone, fun_celular, fun_email, fun_datanas' +
        'c, fun_ativo'#13#10'from funcionarios'
      'where'
      '  fun_codigo = :OLD_fun_codigo')
    ModifySQL.Strings = (
      'update funcionarios'
      'set'
      '  fun_codigo = :fun_codigo,'
      '  fun_nome = :fun_nome,'
      '  fnc_id = :fnc_id,'
      '  fun_cpf = :fun_cpf,'
      '  fun_rg = :fun_rg,'
      '  fun_carttrab = :fun_carttrab,'
      '  fun_dataadmis = :fun_dataadmis,'
      '  fun_salario = :fun_salario,'
      '  fun_endereco = :fun_endereco,'
      '  fun_bairro = :fun_bairro,'
      '  cid_codigo = :cid_codigo,'
      '  fun_cep = :fun_cep,'
      '  fun_telefone = :fun_telefone,'
      '  fun_celular = :fun_celular,'
      '  fun_email = :fun_email,'
      '  fun_datanasc = :fun_datanasc,'
      '  fun_ativo = :fun_ativo'
      'where'
      '  fun_codigo = :OLD_fun_codigo')
    InsertSQL.Strings = (
      'insert into funcionarios'
      
        '  (fun_codigo, fun_nome, fnc_id, fun_cpf, fun_rg, fun_carttrab, ' +
        'fun_dataadmis, fun_salario, fun_endereco, fun_bairro, cid_codigo' +
        ', fun_cep, fun_telefone, fun_celular, fun_email, fun_datanasc, f' +
        'un_ativo)'
      'values'
      
        '  (:fun_codigo, :fun_nome, :fnc_id, :fun_cpf, :fun_rg, :fun_cart' +
        'trab, :fun_dataadmis, :fun_salario, :fun_endereco, :fun_bairro, ' +
        ':cid_codigo, :fun_cep, :fun_telefone, :fun_celular, :fun_email, ' +
        ':fun_datanasc, :fun_ativo)')
    DeleteSQL.Strings = (
      'delete from funcionarios'
      'where'
      '  fun_codigo = :OLD_fun_codigo')
    Left = 224
    Top = 184
  end
  object qyMatCid: TSDQuery
    DatabaseName = 'cadastros'
    Options = []
    SessionName = 'SessaoCadastros'
    OnUpdateError = qyMatCidUpdateError
    BeforePost = qyMatCidBeforePost
    AfterPost = qyMatCidAfterPost
    BeforeDelete = qyMatCidBeforeDelete
    AfterDelete = qyMatCidAfterDelete
    OnPostError = qyMatCidPostError
    SQL.Strings = (
      'select m.mat_id, m.sct_subcat, c.sct_descabrev, c.sct_descricao'
      'from matcid m, cid10subcategorias c'
      'where m.sct_subcat = c.sct_subcat')
    UpdateObject = updMatCid
    Left = 24
    Top = 296
    object qyMatCidmat_id: TIntegerField
      DisplayLabel = 'ID Material'
      FieldName = 'mat_id'
      Visible = False
    end
    object qyMatCidsct_subcat: TStringField
      DisplayLabel = 'ID'
      FieldName = 'sct_subcat'
      Size = 4
    end
    object qyMatCidsct_descabrev: TStringField
      DisplayLabel = 'Desc. abrev.'
      FieldName = 'sct_descabrev'
      Size = 80
    end
    object qyMatCidsct_descricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'sct_descricao'
      Size = 300
    end
  end
  object updMatCid: TSDUpdateSQL
    RefreshSQL.Strings = (
      'select mat_id, sct_subcat'
      'from matcid'
      'where'
      '  mat_id = :OLD_mat_id and'
      '  sct_subcat = :OLD_sct_subcat')
    ModifySQL.Strings = (
      'update matcid'
      'set'
      '  mat_id = :mat_id,'
      '  sct_subcat = :sct_subcat'
      'where'
      '  mat_id = :OLD_mat_id and'
      '  sct_subcat = :OLD_sct_subcat')
    InsertSQL.Strings = (
      'insert into matcid'
      '  (mat_id, sct_subcat)'
      'values'
      '  (:mat_id, :sct_subcat)')
    DeleteSQL.Strings = (
      'delete from matcid'
      'where'
      '  mat_id = :OLD_mat_id and'
      '  sct_subcat = :OLD_sct_subcat')
    Left = 104
    Top = 296
  end
  object qyLaudosPreMod: TSDQuery
    DatabaseName = 'cadastros'
    Options = []
    SessionName = 'SessaoCadastros'
    OnUpdateError = qyLaudosPreModUpdateError
    BeforePost = qyLaudosPreModBeforePost
    AfterPost = qyLaudosPreModAfterPost
    BeforeDelete = qyLaudosPreModBeforeDelete
    AfterDelete = qyLaudosPreModAfterDelete
    OnPostError = qyLaudosPreModPostError
    SQL.Strings = (
      'select * from laudospremod')
    UpdateObject = updLaudosPreMod
    Left = 184
    Top = 504
    object qyLaudosPreModlpm_codigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'lpm_codigo'
      DisplayFormat = '00'
    end
    object qyLaudosPreModlpm_descricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'lpm_descricao'
      Size = 25
    end
    object qyLaudosPreModlpm_modelo: TBlobField
      DisplayLabel = 'Modelo'
      FieldName = 'lpm_modelo'
      Visible = False
    end
    object qyLaudosPreModlpm_diagnostico: TBlobField
      DisplayLabel = 'Diagn'#243'stico'
      FieldName = 'lpm_diagnostico'
      Visible = False
    end
  end
  object updLaudosPreMod: TSDUpdateSQL
    RefreshSQL.Strings = (
      
        'select lpm_codigo, lpm_descricao, lpm_modelo, lpm_diagnostico'#13#10'f' +
        'rom laudospremod'
      'where'
      '  lpm_codigo = :OLD_lpm_codigo')
    ModifySQL.Strings = (
      'update laudospremod'
      'set'
      '  lpm_codigo = :lpm_codigo,'
      '  lpm_descricao = :lpm_descricao,'
      '  lpm_modelo = :lpm_modelo,'
      '  lpm_diagnostico = :lpm_diagnostico'
      'where'
      '  lpm_codigo = :OLD_lpm_codigo')
    InsertSQL.Strings = (
      'insert into laudospremod'
      '  (lpm_codigo, lpm_descricao, lpm_modelo, lpm_diagnostico)'
      'values'
      '  (:lpm_codigo, :lpm_descricao, :lpm_modelo, :lpm_diagnostico)')
    DeleteSQL.Strings = (
      'delete from laudospremod'
      'where'
      '  lpm_codigo = :OLD_lpm_codigo')
    Left = 264
    Top = 504
  end
  object qyCitofrases: TSDQuery
    DatabaseName = 'cadastros'
    Options = []
    SessionName = 'SessaoCadastros'
    OnUpdateError = qyCitofrasesUpdateError
    BeforePost = qyCitofrasesBeforePost
    AfterPost = qyCitofrasesAfterPost
    BeforeDelete = qyCitofrasesBeforeDelete
    AfterDelete = qyCitofrasesAfterDelete
    OnPostError = qyCitofrasesPostError
    SQL.Strings = (
      'select * from citofrases'
      'order by ctf_id')
    UpdateObject = updCitoFrases
    Left = 24
    Top = 240
    object qyCitofrasesctf_id: TIntegerField
      DisplayLabel = 'ID'
      FieldName = 'ctf_id'
      DisplayFormat = '000'
    end
    object qyCitofrasesctf_frase: TStringField
      DisplayLabel = 'Frase'
      FieldName = 'ctf_frase'
      Size = 100
    end
  end
  object updCitoFrases: TSDUpdateSQL
    RefreshSQL.Strings = (
      'select ctf_id, ctf_frase'#13#10'from citofrases'
      'where'
      '  ctf_id = :OLD_ctf_id')
    ModifySQL.Strings = (
      'update citofrases'
      'set'
      '  ctf_id = :ctf_id,'
      '  ctf_frase = :ctf_frase'
      'where'
      '  ctf_id = :OLD_ctf_id')
    InsertSQL.Strings = (
      'insert into citofrases'
      '  (ctf_id, ctf_frase)'
      'values'
      '  (:ctf_id, :ctf_frase)')
    DeleteSQL.Strings = (
      'delete from citofrases'
      'where'
      '  ctf_id = :OLD_ctf_id')
    Left = 104
    Top = 240
  end
end
