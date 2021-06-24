unit uDaoExamesCitoNotas;

interface

uses
  Windows, Messages, SysUtils, Classes, Dialogs, StdCtrls, Forms,
  Graphics, Controls, DB;

procedure ListarExamesCitoNotas(vfOrdem: String; vfLimite: String);
procedure FiltrarExamesCitoNotas(vfCampoFil: String; vfOperador: String; vfParametro: 
		     String; vfOrdem: String; vfLimite: String);
procedure InsExamesCitoNotas(vfExame: String);
procedure UpdExamesCitoNotas(vfExame: String);

const
  ctCampos = 'ecn_id, exa_id, ecn_obs';
  ctTabelas = 'examescitonotas';

implementation

uses dataExames, uFuncoesDB, dataFiles;

{--- Lista todos os registros da tabela ---------------------------------------}

procedure ListarExamesCitoNotas(vfOrdem: String; vfLimite: String);
begin
  dmExames.qyExamesCitoNotas.Close;
  dmExames.qyExamesCitoNotas.SQL.Clear;
  dmExames.qyExamesCitoNotas.SQL.Add('select '+ ctCampos + ' from ' + ctTabelas);
  if vfOrdem <> '0' then
    dmExames.qyExamesCitoNotas.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmExames.qyExamesCitoNotas.SQL.Add(' limit ' + vfLimite);
  dmExames.qyExamesCitoNotas.Open;
end;

{--- Filtra registros da tabela -----------------------------------------------}

procedure FiltrarExamesCitoNotas(vfCampoFil: String; vfOperador: String; vfParametro:
		     String; vfOrdem: String; vfLimite: String);
begin
  dmExames.qyExamesCitoNotas.Close;
  dmExames.qyExamesCitoNotas.SQL.Clear;
  dmExames.qyExamesCitoNotas.SQL.Add('select ' + ctCampos + ' from ' + ctTabelas + ' where ');
  dmExames.qyExamesCitoNotas.SQL.Add(vfCampoFil + ' ' + vfOperador + ' ');
  dmExames.qyExamesCitoNotas.SQL.Add(QuotedStr(vfParametro));
  if vfOrdem <> '0' then
    dmExames.qyExamesCitoNotas.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmExames.qyExamesCitoNotas.SQL.Add(' limit ' + vfLimite);
  dmExames.qyExamesCitoNotas.Open;
end;

{--- Insere registros da tabela -----------------------------------------------}

procedure InsExamesCitoNotas(vfExame: String);
begin
  dmExames.qyExamesCitoNotas.Insert;
  dmExames.qyExamesCitoNotasecn_id.Value := GetCodigo('ecn_id', 'examescitonotas');
  dmExames.qyExamesCitoNotasexa_id.Text := vfExame;
  //Carrega formulário
end;

{--- Altera registros da tabela -----------------------------------------------}

procedure UpdExamesCitoNotas(vfExame: String);
begin
  dmExames.qyExamesCitoNotas.Edit;
  dmExames.qyExamesCitoNotasexa_id.Text := vfExame;
  //Carrega formulário
end;

end.