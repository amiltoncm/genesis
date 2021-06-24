unit uDaoCid10subcategorias;

interface

uses
  Windows, Messages, SysUtils, Classes, Dialogs, StdCtrls, Forms,
  Graphics, Controls, DB;

procedure InsCid10subcategorias;
procedure EdtCid10subcategorias;
procedure PostCid10subcategorias;
procedure ListarCid10subcategorias(vfOrdem: String; vfLimite: String);
procedure FiltrarCid10subcategorias(vfCampoFil: String; vfOperador: String; vfParametro:
		                                String; vfOrdem: String; vfLimite: String);
procedure RelExamesDoencas(vfDataIni: String; vfDataFin: String; vfCID: String; vfCodMedico: String; vfTpExame: String);

const
ctCampos = 'sct_subcat, sct_classif, sct_restrsexo, sct_causaobito, sct_descricao, ' +
           'sct_descabrev, sct_refer, sct_excluidos';
ctTabelas = 'cid10subcategorias';

implementation

uses dataCid10;

{--- Coloca a tabela em insert  -----------------------------------------------}

procedure InsCid10subcategorias;
begin
  dmCid10.qySubcategorias.Insert;
end;

{--- Coloca a tabela em edit inserindo algum valor ----------------------------}

procedure EdtCid10subcategorias;
begin
  dmCid10.qySubcategorias.Edit;
end;

{--- Dá um post na tabela -----------------------------------------------------}

procedure PostCid10subcategorias;
begin
  try
    dmCid10.qySubcategorias.Post;
  except
    on E: Exception do
    begin
      MessageDlg('Erro ao gravar Alteração / Inserção!' + #13 +
          E.Message,mtError,[mbOk],0);
      dmCid10.qySubcategorias.Refresh;
    end;
  end;
end;

{--- Lista todos os registros da tabela ---------------------------------------}

procedure ListarCid10subcategorias(vfOrdem: String; vfLimite: String);
begin
  dmCid10.qySubcategorias.Close;
  dmCid10.qySubcategorias.SQL.Clear;
  dmCid10.qySubcategorias.SQL.Add('select '+ ctCampos + ' from ' + ctTabelas);
  if vfOrdem <> '0' then
    dmCid10.qySubcategorias.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmCid10.qySubcategorias.SQL.Add(' limit ' + vfLimite);
  dmCid10.qySubcategorias.Open;
end;

{--- Filtra registros da tabela -----------------------------------------------}

procedure FiltrarCid10subcategorias(vfCampoFil: String; vfOperador: String; vfParametro:
		     String; vfOrdem: String; vfLimite: String);
begin
  dmCid10.qySubcategorias.Close;
  dmCid10.qySubcategorias.SQL.Clear;
  dmCid10.qySubcategorias.SQL.Add('select ' + ctCampos + ' from ' + ctTabelas + ' where ');
  dmCid10.qySubcategorias.SQL.Add(vfCampoFil + ' ' + vfOperador + ' ');
  dmCid10.qySubcategorias.SQL.Add(QuotedStr(vfParametro));
  if vfOrdem <> '0' then
    dmCid10.qySubcategorias.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmCid10.qySubcategorias.SQL.Add(' limit ' + vfLimite);
  dmCid10.qySubcategorias.Open;
end;

{--- Relatório exames x doenças -----------------------------------------------}

procedure RelExamesDoencas(vfDataIni: String; vfDataFin: String; vfCID: String; vfCodMedico: String; vfTpExame: String);
begin
  dmCid10.qyRelExamesDoencas.Close;
  dmCid10.qyRelExamesDoencas.SQL.Clear;
  dmCid10.qyRelExamesDoencas.SQL.Add('select e.exa_id, e.exa_data, m.med_nome, ');
  dmCid10.qyRelExamesDoencas.SQL.Add('t.etp_tipo, d.sct_subcat, c.sct_descricao ');
  dmCid10.qyRelExamesDoencas.SQL.Add('from exames e, medicos m, examestp t, ');
  dmCid10.qyRelExamesDoencas.SQL.Add('examesdoencas d, cid10subcategorias c ');
  dmCid10.qyRelExamesDoencas.SQL.Add('where e.med_codigo = m.med_codigo ');
  dmCid10.qyRelExamesDoencas.SQL.Add('and e.etp_id = t.etp_id ');
  dmCid10.qyRelExamesDoencas.SQL.Add('and e.exa_id = d.exa_id ');
  dmCid10.qyRelExamesDoencas.SQL.Add('and d.sct_subcat = c.sct_subcat ');
  dmCid10.qyRelExamesDoencas.SQL.Add('and e.exa_data >= ' + QuotedStr(vfDataIni));
  dmCid10.qyRelExamesDoencas.SQL.Add('and e.exa_data <= ' + QuotedStr(vfDataFin));
  if vfCID <> '0' then
    dmCid10.qyRelExamesDoencas.SQL.Add('and d.sct_subcat = ' + QuotedStr(vfCID));
  if vfCodMedico <> '0' then
    dmCid10.qyRelExamesDoencas.SQL.Add('and e.med_codigo = ' + vfCodMedico);
  if vfTpExame <> '0' then
    dmCid10.qyRelExamesDoencas.SQL.Add('and e.etp_id = ' + vfTpExame);
  dmCid10.qyRelExamesDoencas.SQL.Add('order by d.sct_subcat, m.med_nome');
  dmCid10.qyRelExamesDoencas.Open;
end;

end.
