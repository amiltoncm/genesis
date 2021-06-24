unit uDaoLaudosPadrao;

interface

uses
  Windows, Messages, SysUtils, Classes, Dialogs, StdCtrls, Forms,
  Graphics, Controls, DB;

procedure ListarLaudosPadrao(vfOrdem: String; vfLimite: String);
procedure FiltrarLaudosPadrao(vfCampoFil: String; vfOperador: String; vfParametro:
		     String; vfOrdem: String; vfLimite: String);

const
  ctCampos = 'l.lpa_id, l.lmm_id, l.mat_id, m.lmm_descricao';
  ctTabelas = 'laudospadrao l, laudosmodmacro m';

implementation

uses dataCadastros;

{--- Lista todos os registros da tabela ---------------------------------------}

procedure ListarLaudosPadrao(vfOrdem: String; vfLimite: String);
begin
  dmCadastros.qyLaudosPadrao.Close;
  dmCadastros.qyLaudosPadrao.SQL.Clear;
  dmCadastros.qyLaudosPadrao.SQL.Add('select '+ ctCampos + ' from ' + ctTabelas +
                                   ' where l.lmm_id = m.lmm_id ');
  if vfOrdem <> '0' then
    dmCadastros.qyLaudosPadrao.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmCadastros.qyLaudosPadrao.SQL.Add(' limit ' + vfLimite);
  dmCadastros.qyLaudosPadrao.Open;
end;

{--- Filtra registros da tabela -----------------------------------------------}

procedure FiltrarLaudosPadrao(vfCampoFil: String; vfOperador: String; vfParametro:
		     String; vfOrdem: String; vfLimite: String);
begin
  dmCadastros.qyLaudosPadrao.Close;
  dmCadastros.qyLaudosPadrao.SQL.Clear;
  dmCadastros.qyLaudosPadrao.SQL.Add('select ' + ctCampos + ' from ' + ctTabelas +
                                   ' where l.lmm_id = m.lmm_id and ');
  dmCadastros.qyLaudosPadrao.SQL.Add(vfCampoFil + ' ' + vfOperador + ' ');
  dmCadastros.qyLaudosPadrao.SQL.Add(QuotedStr(vfParametro));
  if vfOrdem <> '0' then
    dmCadastros.qyLaudosPadrao.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmCadastros.qyLaudosPadrao.SQL.Add(' limit ' + vfLimite);
  dmCadastros.qyLaudosPadrao.Open;
end;

end.