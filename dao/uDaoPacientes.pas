unit uDaoPacientes;

interface

uses
  Windows, Messages, SysUtils, Classes, Dialogs, StdCtrls, Forms,
  Graphics, Controls, DB, ClipBrd;

procedure ListarPacientes(vfOrdem: String; vfLimite: String);
procedure FiltrarPacientes(vfCampoFil: String; vfOperador: String; vfParametro:
                           String; vfOrdem: String; vfLimite: String);
procedure FiltrarDoencasPacientes(vfCampoFil: String; vfOperador: String; vfParametro:
                           String; vfOrdem: String; vfLimite: String);
procedure FiltrarConsPacientesCad(vfParametro: String; vfOperador: String; vfLimite: String);
procedure FiltrarProcPacientes(vfCodPac: String);
procedure FiltrarPacLevenshtein(vfNome: String; vfRange: String);
function BuscaCliente(vfNome: String): Boolean;

const
  ctCampos = 'p.pac_codigo, p.pac_nome, p.pac_dtnasc, p.pac_cpf, p.pac_rg, p.tpl_id, ' +
              'l.tpl_tipo, p.pac_logradouro, p.pac_numero, p.pac_bairro, p.cid_codigo, ' +
              'c.cid_cidade, c.uf_sigla, p.pac_fone, p.pac_celular, p.pac_cep, ' +
              'p.pac_email, p.pac_sexo, p.pac_obs';
  ctTabelas = 'pacientes p left outer join tplogradouro l';
  ctTabelaJoin = 'left outer join cidades c';
  ctCamposDoencas = 'e.exa_id, d.sct_subcat, c.sct_descabrev';
  ctTabelasDoencas = 'exames e, examesdoencas d, cid10subcategorias c';

implementation

uses dataCadastros, dataConsultas, dataLookups, dataExames, uCadPacientes;

{--- Lista todos os registros da tabela ---------------------------------------}

procedure ListarPacientes(vfOrdem: String; vfLimite: String);
begin
  dmCadastros.qyPacientes.Close;
  dmCadastros.qyPacientes.SQL.Clear;
  dmCadastros.qyPacientes.SQL.Add('select '+ ctCampos + ' from ' + ctTabelas + ' on p.tpl_id = l.tpl_id ' +
                                  ctTabelaJoin + ' on p.cid_codigo = c.cid_codigo ' +
                                  ' order by '+ vfOrdem);
  if vfLimite <> '0' then
    dmCadastros.qyPacientes.SQL.Add(' limit ' + vfLimite);
  dmCadastros.qyPacientes.Open;
end;

{--- Filtra registros da tabela -----------------------------------------------}

procedure FiltrarPacientes(vfCampoFil: String; vfOperador: String; vfParametro:
                           String; vfOrdem: String; vfLimite: String);
begin
  dmCadastros.qyPacientes.Close;
  dmCadastros.qyPacientes.SQL.Clear;
  dmCadastros.qyPacientes.SQL.Add('select '+ ctCampos + ' from ' + ctTabelas + ' on p.tpl_id = l.tpl_id ' +
                                  ctTabelaJoin + ' on p.cid_codigo = c.cid_codigo where ');
  dmCadastros.qyPacientes.SQL.Add(vfCampoFil + ' ' + vfOperador + ' ');
  if vfCampoFil = 'p.pac_codigo' then
    dmCadastros.qyPacientes.SQL.Add(vfParametro)
  else
    dmCadastros.qyPacientes.SQL.Add(QuotedStr(vfParametro));
  if vfOrdem <> '0' then
    dmCadastros.qyPacientes.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmCadastros.qyPacientes.SQL.Add(' limit ' + vfLimite);
  dmCadastros.qyPacientes.Open;
end;

{--- Filtrar doenças paciente -------------------------------------------------}

procedure FiltrarDoencasPacientes(vfCampoFil: String; vfOperador: String; vfParametro:
                           String; vfOrdem: String; vfLimite: String);
begin
  dmConsultas.qyProcDoencasPac.Close;
  dmConsultas.qyProcDoencasPac.SQL.Clear;
  dmConsultas.qyProcDoencasPac.SQL.Add('select e.exa_id, d.sct_subcat, c.sct_descabrev ');
  dmConsultas.qyProcDoencasPac.SQL.Add('from exames e, examesdoencas d, cid10subcategorias c ');
  dmConsultas.qyProcDoencasPac.SQL.Add('where e.exa_id = d.exa_id and d.sct_subcat = c.sct_subcat and ');
  dmConsultas.qyProcDoencasPac.SQL.Add(vfCampoFil + ' ' + vfOperador + ' ');
  dmConsultas.qyProcDoencasPac.SQL.Add(QuotedStr(vfParametro));
  if vfOrdem <> '0' then
    dmConsultas.qyProcDoencasPac.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmConsultas.qyProcDoencasPac.SQL.Add(' limit ' + vfLimite);
  dmConsultas.qyProcDoencasPac.Open;
end;

{--- Filtrar pacientes já cadastrados -----------------------------------------}

procedure FiltrarConsPacientesCad(vfParametro: String; vfOperador: String; vfLimite: String);
Var
vRange: integer;
begin
  vRange := Trunc(Length(vfParametro) * 0.25) + 1;  //a escala padrão é de 25% arredondando para cima
  dmConsultas.qyConsPacientesCad.Close;
  dmConsultas.qyConsPacientesCad.SQL.Clear;
  dmConsultas.qyConsPacientesCad.SQL.Add('select pac_codigo as codigo, pac_nome as paciente, ');
  dmConsultas.qyConsPacientesCad.SQL.Add('pac_dtnasc as nascimento, pac_sexo as sexo from pacientes ');
  if vfParametro <> '0' then
  begin
    if vfOperador = '=' then
    begin
      dmConsultas.qyConsPacientesCad.SQL.Add('where pac_nome = ');
      dmConsultas.qyConsPacientesCad.SQL.Add(QuotedStr(vfParametro));
    end;
    if vfOperador = 'like%' then
    begin
      dmConsultas.qyConsPacientesCad.SQL.Add('where pac_nome like ');
      dmConsultas.qyConsPacientesCad.SQL.Add(QuotedStr(vfParametro + '%'));
    end;
    if vfOperador = '%like%' then
    begin
      dmConsultas.qyConsPacientesCad.SQL.Add('where pac_nome like ');
      dmConsultas.qyConsPacientesCad.SQL.Add(QuotedStr('%' + vfParametro));
    end;
    if vfOperador = 'soundex' then
    begin
      dmConsultas.qyConsPacientesCad.SQL.Add('where SOUNDEX(pac_nome) = ');
      dmConsultas.qyConsPacientesCad.SQL.Add('SOUNDEX('+QuotedStr(vfParametro)+')');
    end;
    if vfOperador = 'levenstein' then
    begin
      dmConsultas.qyConsPacientesCad.SQL.Add('where levenshtein(pac_nome, ');
      dmConsultas.qyConsPacientesCad.SQL.Add(QuotedStr(vfParametro));
      dmConsultas.qyConsPacientesCad.SQL.Add(' ) <= ' + IntToStr(vRange));
    end;
  end;
  dmConsultas.qyConsPacientesCad.SQL.Add(' order by pac_nome ');
  if vfLimite <> '0' then
    dmConsultas.qyConsPacientesCad.SQL.Add(' limit ' + vfLimite);
  dmConsultas.qyConsPacientesCad.Open;
end;

{--- Filtrar pacientes tabela lookup ------------------------------------------}

procedure FiltrarProcPacientes(vfCodPac: String);
begin
  dmLookups.lkProcPacientes.Close;
  dmLookups.lkProcPacientes.SQL.Clear;
  dmLookups.lkProcPacientes.SQL.Add('select pac_codigo, pac_nome, pac_dtnasc, pac_cpf, ');
  dmLookups.lkProcPacientes.SQL.Add('pac_rg, tpl_id, pac_logradouro, pac_numero, pac_bairro, ');
  dmLookups.lkProcPacientes.SQL.Add('cid_codigo, pac_fone, pac_celular, pac_cep, pac_email, pac_obs ');
  dmLookups.lkProcPacientes.SQL.Add('from pacientes where pac_codigo = ');
  dmLookups.lkProcPacientes.SQl.Add(QuotedStr(vfCodPac));
  dmLookups.lkProcPacientes.SQl.Add(' order by pac_nome');
  dmLookups.lkProcPacientes.Open;
end;

{--- Filtrar pacientes levenshtein --------------------------------------------}

procedure FiltrarPacLevenshtein(vfNome: String; vfRange: String);
begin
  dmExames.QTemp.Close;
  dmExames.QTemp.SQL.Clear;
  dmExames.QTemp.SQL.Add('select pac_codigo as codigo, pac_nome as paciente, ');
  dmExames.QTemp.SQL.Add('pac_dtnasc as nascimento from pacientes where levenshtein(pac_nome, ');
  dmExames.QTemp.SQL.Add(QuotedStr(vfNome));
  dmExames.QTemp.SQL.Add(' ) <= ' + vfRange);
  dmExames.QTemp.Open;
end;

function BuscaCliente(vfNome: String): Boolean;
Var
vRange: Integer;
vEncontrado: BOOL;
begin
  vRange := Trunc(Length(vfNome) * 0.25) + 1;  //a escala padrão é de 25% arredondando para cima
  vEncontrado := false;
  Begin
    dmExames.QTemp.Close;
    dmExames.QTemp.SQL.Clear;
    dmExames.QTemp.SQL.Add('select pac_codigo as codigo, pac_nome as paciente, pac_dtnasc as nascimento, pac_sexo as sexo ');
    dmExames.QTemp.SQL.Add('from pacientes where pac_nome = ');
    dmExames.QTemp.SQL.Add(QuotedStr(vfNome));
    dmExames.QTemp.SQL.Add(' order by pac_nome');
    dmExames.QTemp.Open;
    if not dmExames.QTemp.Fields[0].IsNull then
    Begin
      vEncontrado := true;
      MessageDlg('Foram encontrados homônimos de: ' + vfNome + #13 + 'Estimativa 93%', mtWarning, [mbok], 0);
      frmCadPacientes.lbFormaBusca.Caption := 'Igualdade - 93%';
    end;
  end;
  if vEncontrado = false then
  Begin
    dmExames.QTemp.Close;
    dmExames.QTemp.SQL.Clear;
    dmExames.QTemp.SQL.Add('select pac_codigo as codigo, pac_nome as paciente, pac_dtnasc as nascimento, pac_sexo as sexo ');
    dmExames.QTemp.SQL.Add('from pacientes where pac_nome like ');
    dmExames.QTemp.SQL.Add(QuotedStr(vfNome + '%'));
    dmExames.QTemp.SQL.Add(' order by pac_nome');
    dmExames.QTemp.Open;
    if not dmExames.QTemp.Fields[0].IsNull then
    Begin
      vEncontrado := true;
      MessageDlg('Foram encontrados nomes que começam com: ' + vfNome  + #13 + 'Estimativa 65%', mtWarning, [mbok], 0);
      frmCadPacientes.lbFormaBusca.Caption := 'Início do nome - 65%';
    end;
  end;
  if vEncontrado = false then
  Begin
    dmExames.QTemp.Close;
    dmExames.QTemp.SQL.Clear;
    dmExames.QTemp.SQL.Add('select pac_codigo as codigo, pac_nome as paciente, pac_dtnasc as nascimento, pac_sexo as sexo ');
    dmExames.QTemp.SQL.Add('from pacientes where pac_nome like ');
    dmExames.QTemp.SQL.Add(QuotedStr('%' + vfNome + '%'));
    dmExames.QTemp.SQL.Add(' order by pac_nome');
    dmExames.QTemp.Open;
    if not dmExames.QTemp.Fields[0].IsNull then
    Begin
      vEncontrado := true;
      MessageDlg('Foram encontrados nomes que contém: ' + vfNome  + #13 + 'Estimativa 60%', mtWarning, [mbok], 0);
      frmCadPacientes.lbFormaBusca.Caption := 'Contendo - 60%';
    end;
  end;
  if vEncontrado = false then
  Begin
    //utiliza soundex
    dmExames.QTemp.Close;
    dmExames.QTemp.SQL.Clear;
    dmExames.QTemp.SQL.Add('select pac_codigo as codigo, pac_nome as paciente, pac_dtnasc as nascimento, pac_sexo as sexo ');
    dmExames.QTemp.SQL.Add('from pacientes where SOUNDEX(pac_nome) = ');
    dmExames.QTemp.SQL.Add('SOUNDEX('+QuotedStr(vfNome)+')');
    dmExames.QTemp.SQL.Add(' order by pac_nome');
    dmExames.QTemp.Open;
    if not dmExames.QTemp.Fields[0].IsNull then
    Begin
      vEncontrado := true;
      MessageDlg('Foram encontrados nomes com a pronúncia: ' + vfNome  + #13 + 'Estimativa 70%', mtWarning, [mbok], 0);
      frmCadPacientes.lbFormaBusca.Caption := 'Fonética - 70%';
    end;
  end;
  if vEncontrado = false then
  Begin
    //utiliza levenshtein
    dmExames.QTemp.Close;
    dmExames.QTemp.SQL.Clear;
    dmExames.QTemp.SQL.Add('select pac_codigo as codigo, pac_nome as paciente, pac_dtnasc as nascimento, pac_sexo as sexo from pacientes where levenshtein(pac_nome, ');
    dmExames.QTemp.SQL.Add(QuotedStr(vfNome));
    dmExames.QTemp.SQL.Add(' ) <= ' + IntToStr(vRange));
    dmExames.QTemp.Open;
    if not dmExames.QTemp.Fields[0].IsNull then
    Begin
      vEncontrado := true;
      MessageDlg('Foram encontrados nomes com similaridade à: ' + vfNome  + #13 + 'Estimativa 95%', mtWarning, [mbok], 0);
      frmCadPacientes.lbFormaBusca.Caption := 'Similaridade - 95%';
    end;
  end;
  result := vEncontrado;
end;

end.