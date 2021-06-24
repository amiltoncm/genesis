unit uDaoExamesObs;

interface

uses
  Windows, Messages, SysUtils, Classes, Dialogs, StdCtrls, Forms,
  Graphics, Controls, DB;

procedure ListarExamesObs(vfOrdem: String; vfLimite: String);
procedure FiltrarExamesObs(vfCampoFil: String; vfOperador: String; vfParametro:
		     String; vfOrdem: String; vfLimite: String);
procedure InsExamesObs(vfIDExame: String; vfObs: String);

const
vlCampos = 'exa_id, exa_obs';
vlTabelas = 'examesobs';

implementation

uses dataExames, uVarGlobal;

{--- Lista todos os registros da tabela ---------------------------------------}

procedure ListarExamesObs(vfOrdem: String; vfLimite: String);
begin
  dmExames.qyExamesObs.Close;
  dmExames.qyExamesObs.SQL.Clear;
  dmExames.qyExamesObs.SQL.Add('select '+ vlCampos + ' from ' + vlTabelas);
  if vfOrdem <> '0' then
    dmExames.qyExamesObs.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmExames.qyExamesObs.SQL.Add(' limit ' + vfLimite);
  dmExames.qyExamesObs.Open;
end;

{--- Filtra registros da tabela -----------------------------------------------}

procedure FiltrarExamesObs(vfCampoFil: String; vfOperador: String; vfParametro:
		     String; vfOrdem: String; vfLimite: String);
begin
  dmExames.qyExamesObs.Close;
  dmExames.qyExamesObs.SQL.Clear;
  dmExames.qyExamesObs.SQL.Add('select ' + vlCampos + ' from ' + vlTabelas + ' where ');
  dmExames.qyExamesObs.SQL.Add(vfCampoFil + ' ' + vfOperador + ' ');
  dmExames.qyExamesObs.SQL.Add(QuotedStr(vfParametro));
  if vfOrdem <> '0' then
    dmExames.qyExamesObs.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmExames.qyExamesObs.SQL.Add(' limit ' + vfLimite);
  dmExames.qyExamesObs.Open;
end;

{--- Insere registros da tabela -----------------------------------------------}

procedure InsExamesObs(vfIDExame: String; vfObs: String);
begin
  FiltrarExamesObs('exa_id', '=', vfIDExame, '0', '0');
  if dmExames.qyExamesObsexa_id.IsNull then
  begin
    dmExames.qyExamesObs.Insert;
    dmExames.qyExamesObs.FieldByName('exa_id').Text := vfIDExame;
    dmExames.qyExamesObs.FieldByName('exa_obs').Text := #13 + '--------------------------------------------------------------------------------------------------------------------------'
                                                       + #13 + FormatDateTime('dd/mm/yyyy',(now))
                                                       + ' - ' + FormatDateTime('hh:mm', (now))
                                                       + ' - ' + vgNomeUsuarioLog + ':' + #13 + vfObs;
  end
  else
  begin
    dmExames.qyExamesObs.Edit;
    dmExames.qyExamesObs.FieldByName('exa_id').Text := vfIDExame;
    dmExames.qyExamesObs.FieldByName('exa_obs').Text := #13 + '--------------------------------------------------------------------------------------------------------------------------'
                                                       + #13 + FormatDateTime('dd/mm/yyyy',(now))
                                                       + ' - ' + FormatDateTime('hh:mm', (now))
                                                       + ' - ' + vgNomeUsuarioLog + ':' + #13 + vfObs
                                                       + dmExames.qyExamesObs.FieldByName('exa_obs').AsAnsiString;
  end;
  dmExames.qyExamesObs.Post;
end;

end.