unit uDaoLaudosModMacro;

interface

uses
  Windows, Messages, SysUtils, Classes, Dialogs, StdCtrls, Forms,
  Graphics, Controls, DB;

procedure ListarLaudosModMacro(vfOrdem: String; vfLimite: String);
procedure FiltrarLaudosModMacro(vfCampoFil: String; vfOperador: String; vfParametro: 
		     String; vfOrdem: String; vfLimite: String);

const
  ctCampos = 'lmm_id, lmm_descricao, lmm_modelo';
  ctTabelas = 'laudosmodmacro';

implementation

uses dataCadastros;

{--- Lista todos os registros da tabela ---------------------------------------}

procedure ListarLaudosModMacro(vfOrdem: String; vfLimite: String);
begin
  dmCadastros.qyLaudosModMacro.Close;
  dmCadastros.qyLaudosModMacro.SQL.Clear;
  dmCadastros.qyLaudosModMacro.SQL.Add('select '+ ctCampos + ' from ' + ctTabelas);
  if vfOrdem <> '0' then
    dmCadastros.qyLaudosModMacro.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmCadastros.qyLaudosModMacro.SQL.Add(' limit ' + vfLimite);
  dmCadastros.qyLaudosModMacro.Open;
end;

{--- Filtra registros da tabela -----------------------------------------------}

procedure FiltrarLaudosModMacro(vfCampoFil: String; vfOperador: String; vfParametro:
		     String; vfOrdem: String; vfLimite: String);
begin
  dmCadastros.qyLaudosModMacro.Close;
  dmCadastros.qyLaudosModMacro.SQL.Clear;
  dmCadastros.qyLaudosModMacro.SQL.Add('select ' + ctCampos + ' from ' + ctTabelas + ' where ');
  dmCadastros.qyLaudosModMacro.SQL.Add(vfCampoFil + ' ' + vfOperador + ' ');
  dmCadastros.qyLaudosModMacro.SQL.Add(QuotedStr(vfParametro));
  if vfOrdem <> '0' then
    dmCadastros.qyLaudosModMacro.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmCadastros.qyLaudosModMacro.SQL.Add(' limit ' + vfLimite);
  dmCadastros.qyLaudosModMacro.Open;
end;

end.