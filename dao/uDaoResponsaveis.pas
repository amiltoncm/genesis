unit uDaoResponsaveis;

interface

uses
  Windows, Messages, SysUtils, Classes, Dialogs, StdCtrls, Forms,
  Graphics, Controls, DB;

procedure ListarResponsaveis(vfOrdem: String; vfLimite: String);
procedure FiltrarResponsaveis(vfCampoFil: String; vfOperador: String; vfParametro:
		     String; vfOrdem: String; vfLimite: String);
procedure FiltrarProcResponsaveis(vfCodRes: String);
function GetRespExame(vfExaID: String): String;

const
  ctCampos = 'r.res_codigo, r.res_titulo, r.res_nome, r.cos_id, c.cos_tipo, ' +
             'r.res_numconselho, r.cos_uf, r.res_iniciais, r.cbo_codigo, ' +
             'o.cbo_descricao, r.prt_codigo, p.prt_termo, r.res_cpf, r.res_rqe';

  ctTabelas = 'responsaveis r, conselhos c, cbo o, participacao p';

implementation

uses dataCadastros, dataLookups, dataConsultas;

{--- Lista todos os registros da tabela ---------------------------------------}

procedure ListarResponsaveis(vfOrdem: String; vfLimite: String);
begin
  dmCadastros.qyResponsaveis.Close;
  dmCadastros.qyResponsaveis.SQL.Clear;
  dmCadastros.qyResponsaveis.SQL.Add('select '+ ctCampos + ' from ' + ctTabelas +
                                     ' where r.cos_id = c.cos_codigo ' +
                                     'and r.cbo_codigo = o.cbo_codigo ' +
                                     'and r.prt_codigo = p.prt_codigo');
  if vfOrdem <> '0' then
    dmCadastros.qyResponsaveis.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmCadastros.qyResponsaveis.SQL.Add(' limit ' + vfLimite);
  dmCadastros.qyResponsaveis.Open;
end;

{--- Filtra registros da tabela -----------------------------------------------}

procedure FiltrarResponsaveis(vfCampoFil: String; vfOperador: String; vfParametro:
		     String; vfOrdem: String; vfLimite: String);
begin
  dmCadastros.qyResponsaveis.Close;
  dmCadastros.qyResponsaveis.SQL.Clear;
  dmCadastros.qyResponsaveis.SQL.Add('select ' + ctCampos + ' from ' + ctTabelas +
                                     ' where r.cos_id = c.cos_codigo ' +
                                     'and r.cbo_codigo = o.cbo_codigo ' +
                                     'and r.prt_codigo = p.prt_codigo and ');
  dmCadastros.qyResponsaveis.SQL.Add(vfCampoFil + ' ' + vfOperador + ' ');
  dmCadastros.qyResponsaveis.SQL.Add(QuotedStr(vfParametro));
  if vfOrdem <> '0' then
    dmCadastros.qyResponsaveis.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmCadastros.qyResponsaveis.SQL.Add(' limit ' + vfLimite);
  dmCadastros.qyResponsaveis.Open;
end;

{--- Filtra registros da tabela lk --------------------------------------------}

procedure FiltrarProcResponsaveis(vfCodRes: String);
begin
  dmLookups.lkProcResponsaveis.Close;
  dmLookups.lkProcResponsaveis.SQL.Clear;
  dmLookups.lkProcResponsaveis.SQL.Add('select res_codigo, res_nome, res_titulo, ');
  dmLookups.lkProcResponsaveis.SQL.Add('cos_id, res_numconselho from responsaveis where res_codigo = ');
  dmLookups.lkProcResponsaveis.SQL.Add(QuotedStr(vfCodRes));
  dmLookups.lkProcResponsaveis.Open;
end;

{--- Verifica responsável do exame --------------------------------------------}

function GetRespExame(vfExaID: String): String;
begin
  dmConsultas.QTemp.Close;
  dmConsultas.QTemp.SQL.Clear;
  dmConsultas.QTemp.SQL.Add('select res_nome from responsaveis where res_codigo = ');
  dmConsultas.QTemp.SQL.Add(vfExaID);
  dmConsultas.QTemp.Open;
  Result := dmConsultas.QTemp.Fields[0].Text;
end;


end.