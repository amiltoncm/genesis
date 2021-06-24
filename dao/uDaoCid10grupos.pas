unit uDaoCid10grupos;

interface

uses
  Windows, Messages, SysUtils, Classes, Dialogs, StdCtrls, Forms,
  Graphics, Controls, DB;

procedure InsCid10grupos;
procedure EdtCid10grupos;
procedure PostCid10grupos;
procedure ListarCid10grupos(vfOrdem: String; vfLimite: String);
procedure FiltrarCid10grupos(vfCampoFil: String; vfOperador: String; vfParametro:
		     String; vfOrdem: String; vfLimite: String);

const
ctCampos = 'cgr_id, cgr_catinic, cgr_catfim, cgr_descricao, cgr_descabrev';
ctTabelas = 'cid10grupos';

implementation

uses dataCid10;

{--- Coloca a tabela em insert  -----------------------------------------------}

procedure InsCid10grupos;
begin
  dmCid10.qyGrupos.Insert;
end;

{--- Coloca a tabela em edit inserindo algum valor ----------------------------}

procedure EdtCid10grupos;
begin
  dmCid10.qyGrupos.Edit;
end;

{--- Dá um post na tabela -----------------------------------------------------}

procedure PostCid10grupos;
begin
  try
    dmCid10.qyGrupos.Post;
  except
    on E: Exception do
    begin
      MessageDlg('Erro ao gravar Alteração / Inserção!' + #13 +
          E.Message,mtError,[mbOk],0);
      dmCid10.qyGrupos.Refresh;
    end;
  end;
end;

{--- Lista todos os registros da tabela ---------------------------------------}

procedure ListarCid10grupos(vfOrdem: String; vfLimite: String);
begin
  dmCid10.qyGrupos.Close;
  dmCid10.qyGrupos.SQL.Clear;
  dmCid10.qyGrupos.SQL.Add('select '+ ctCampos + ' from ' + ctTabelas);
  if vfOrdem <> '0' then
    dmCid10.qyGrupos.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmCid10.qyGrupos.SQL.Add(' limit ' + vfLimite);
  dmCid10.qyGrupos.Open;
end;

{--- Filtra registros da tabela -----------------------------------------------}

procedure FiltrarCid10grupos(vfCampoFil: String; vfOperador: String; vfParametro:
		     String; vfOrdem: String; vfLimite: String);
begin
  dmCid10.qyGrupos.Close;
  dmCid10.qyGrupos.SQL.Clear;
  dmCid10.qyGrupos.SQL.Add('select ' + ctCampos + ' from ' + ctTabelas + ' where ');
  dmCid10.qyGrupos.SQL.Add(vfCampoFil + ' ' + vfOperador + ' ');
  dmCid10.qyGrupos.SQL.Add(QuotedStr(vfParametro));
  if vfOrdem <> '0' then
    dmCid10.qyGrupos.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmCid10.qyGrupos.SQL.Add(' limit ' + vfLimite);
  dmCid10.qyGrupos.Open;
end;

end.
