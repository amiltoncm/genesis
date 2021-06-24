unit uDaoExamesResp;

interface

uses
  Windows, Messages, SysUtils, Classes, Dialogs, StdCtrls, Forms,
  Graphics, Controls, DB;

procedure ListarExamesResp(vfOrdem: String; vfLimite: String);
procedure FiltrarExamesResp(vfCampoFil: String; vfOperador: String; vfParametro: 
		     String; vfOrdem: String; vfLimite: String);
procedure InsExamesResp(vfIdExame: String; vfCodResp: String);

const
  ctCampos = 'e.exa_id, e.res_codigo, r.res_nome, r.res_iniciais';
  ctTabelas = 'examesresp e, responsaveis r';

implementation

uses dataExames;

{--- Lista todos os registros da tabela ---------------------------------------}

procedure ListarExamesResp(vfOrdem: String; vfLimite: String);
begin
  dmExames.qyExamesResp.Close;
  dmExames.qyExamesResp.SQL.Clear;
  dmExames.qyExamesResp.SQL.Add('select '+ ctCampos + ' from ' + ctTabelas +
                                ' where e.res_codigo = r.res_codigo');
  if vfOrdem <> '0' then
    dmExames.qyExamesResp.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmExames.qyExamesResp.SQL.Add(' limit ' + vfLimite);
  dmExames.qyExamesResp.Open;
end;

{--- Filtra registros da tabela -----------------------------------------------}

procedure FiltrarExamesResp(vfCampoFil: String; vfOperador: String; vfParametro:
		     String; vfOrdem: String; vfLimite: String);
begin
  dmExames.qyExamesResp.Close;
  dmExames.qyExamesResp.SQL.Clear;
  dmExames.qyExamesResp.SQL.Add('select ' + ctCampos + ' from ' + ctTabelas +
                                ' where e.res_codigo = r.res_codigo and ');
  dmExames.qyExamesResp.SQL.Add(vfCampoFil + ' ' + vfOperador + ' ');
  dmExames.qyExamesResp.SQL.Add(QuotedStr(vfParametro));
  if vfOrdem <> '0' then
    dmExames.qyExamesResp.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmExames.qyExamesResp.SQL.Add(' limit ' + vfLimite);
  dmExames.qyExamesResp.Open;
end;

procedure InsExamesResp(vfIdExame: String; vfCodResp: String);
begin
  dmExames.qyExamesResp.Insert;
  dmExames.qyExamesRespexa_id.Text := vfIdExame;
  dmExames.qyExamesRespres_codigo.Text := vfCodResp;
  try
    dmExames.qyExamesResp.Post;
  except

  end;
end;

end.