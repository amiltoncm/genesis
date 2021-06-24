unit uDaoProcedimentos;

interface

uses
  Windows, Messages, SysUtils, Classes, Dialogs, StdCtrls, Forms,
  Graphics, Controls, DB;

procedure ListarProcedimentos(vfOrdem: String; vfLimite: String);
procedure FiltrarProcedimentos(vfCampoFil: String; vfOperador: String; vfParametro:
		     String; vfOrdem: String; vfLimite: String);
function GetVlrProced(vfPrcTuss: integer): real;

const
  ctCampos = 'prc_tuss, prc_descricao, prc_amr, prc_descant, prc_vlrhora, ' +
              'prc_vlroper, prc_vlrfilme, prc_vlrtotal';
  ctTabelas = 'procedimentos';

implementation

uses dataCadastros;

{--- Lista todos os registros da tabela ---------------------------------------}

procedure ListarProcedimentos(vfOrdem: String; vfLimite: String);
begin
  dmCadastros.qyProcedimentos.Close;
  dmCadastros.qyProcedimentos.SQL.Clear;
  dmCadastros.qyProcedimentos.SQL.Add('select '+ ctCampos + ' from ' + ctTabelas);
  if vfOrdem <> '0' then
    dmCadastros.qyProcedimentos.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmCadastros.qyProcedimentos.SQL.Add(' limit ' + vfLimite);
  dmCadastros.qyProcedimentos.Open;
end;

{--- Filtra registros da tabela -----------------------------------------------}

procedure FiltrarProcedimentos(vfCampoFil: String; vfOperador: String; vfParametro:
		     String; vfOrdem: String; vfLimite: String);
begin
  dmCadastros.qyProcedimentos.Close;
  dmCadastros.qyProcedimentos.SQL.Clear;
  dmCadastros.qyProcedimentos.SQL.Add('select ' + ctCampos + ' from ' + ctTabelas + ' where ');
  dmCadastros.qyProcedimentos.SQL.Add(vfCampoFil + ' ' + vfOperador + ' ');
  dmCadastros.qyProcedimentos.SQL.Add(QuotedStr(vfParametro));
  if vfOrdem <> '0' then
    dmCadastros.qyProcedimentos.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmCadastros.qyProcedimentos.SQL.Add(' limit ' + vfLimite);
  dmCadastros.qyProcedimentos.Open;
end;

{--- Busca valor do TUSS ------------------------------------------------------}

function GetVlrProced(vfPrcTuss: integer): real;
begin
  FiltrarProcedimentos('prc_tuss', '=', IntToStr(vfPrcTuss), '0', '0');
  if dmCadastros.qyProcedimentosprc_tuss.IsNull then
    Result := 0
  else
    Result := dmCadastros.qyProcedimentosprc_vlrtotal.Value;
end;

end.