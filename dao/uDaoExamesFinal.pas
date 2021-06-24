unit uDaoExamesFinal;

interface

uses
  Windows, Messages, SysUtils, Classes, Dialogs, StdCtrls, Forms,
  Graphics, Controls, DB;

procedure ListarExamesFinal(vfOrdem: String; vfLimite: String);
procedure FiltrarExamesFinal(vfCampoFil: String; vfOperador: String; vfParametro:
		     String; vfOrdem: String; vfLimite: String);
procedure InsExamesFinal(vfIDExame: String);

const
  ctCampos = 'exa_id, exa_data, usu_id';
  ctTabelas = 'examesfinal';

implementation

uses dataExames, uVarGlobal;

{--- Lista todos os registros da tabela ---------------------------------------}

procedure ListarExamesFinal(vfOrdem: String; vfLimite: String);
begin
  dmExames.qyExamesFinal.Close;
  dmExames.qyExamesFinal.SQL.Clear;
  dmExames.qyExamesFinal.SQL.Add('select '+ ctCampos + ' from ' + ctTabelas);
  if vfOrdem <> '0' then
    dmExames.qyExamesFinal.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmExames.qyExamesFinal.SQL.Add(' limit ' + vfLimite);
  dmExames.qyExamesFinal.Open;
end;

{--- Filtra registros da tabela -----------------------------------------------}

procedure FiltrarExamesFinal(vfCampoFil: String; vfOperador: String; vfParametro:
		     String; vfOrdem: String; vfLimite: String);
begin
  dmExames.qyExamesFinal.Close;
  dmExames.qyExamesFinal.SQL.Clear;
  dmExames.qyExamesFinal.SQL.Add('select ' + ctCampos + ' from ' + ctTabelas + ' where ');
  dmExames.qyExamesFinal.SQL.Add(vfCampoFil + ' ' + vfOperador + ' ');
  dmExames.qyExamesFinal.SQL.Add(QuotedStr(vfParametro));
  if vfOrdem <> '0' then
    dmExames.qyExamesFinal.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmExames.qyExamesFinal.SQL.Add(' limit ' + vfLimite);
  dmExames.qyExamesFinal.Open;
end;

{--- Insere data de impressao do exame ----------------------------------------}

procedure InsExamesFinal(vfIDExame: String);
begin
  dmExames.qyExamesFinal.Insert;
  dmExames.qyExamesFinalexa_id.Text := vfIDExame;
  dmExames.qyExamesFinalexa_data.Value := now;
  dmExames.qyExamesFinalusu_id.Text := vgCodUsuarioLog;
  dmExames.qyExamesFinal.Post;
end;

end.