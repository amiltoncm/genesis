unit uDaoCid10categorias;

interface

uses
  Windows, Messages, SysUtils, Classes, Dialogs, StdCtrls, Forms,
  Graphics, Controls, DB;

procedure InsCid10categorias;
procedure EdtCid10categorias;
procedure PostCid10categorias;
procedure ListarCid10categorias(vfOrdem: String; vfLimite: String);
procedure FiltrarCid10categorias(vfCampoFil: String; vfOperador: String; vfParametro:
		                             String; vfOrdem: String; vfLimite: String);

const
ctCampos = 'cat_id, cat_classif, cat_descricao, cat_descabrev, cat_refer, cat_excluidos';
ctTabelas = 'cid10categorias';

implementation

uses dataCid10;

{--- Coloca a tabela em insert  -----------------------------------------------}

procedure InsCid10categorias;
begin
  dmCid10.qyCategorias.Insert;
end;

{--- Coloca a tabela em edit inserindo algum valor ----------------------------}

procedure EdtCid10categorias;
begin
  dmCid10.qyCategorias.Edit;
end;

{--- Dá um post na tabela -----------------------------------------------------}

procedure PostCid10categorias;
begin
  try
    dmCid10.qyCategorias.Post;
  except
    on E: Exception do
    begin
      MessageDlg('Erro ao gravar Alteração / Inserção!' + #13 +
          E.Message,mtError,[mbOk],0);
      dmCid10.qyCategorias.Refresh;
    end;
  end;
end;

{--- Lista todos os registros da tabela ---------------------------------------}

procedure ListarCid10categorias(vfOrdem: String; vfLimite: String);
begin
  dmCid10.qyCategorias.Close;
  dmCid10.qyCategorias.SQL.Clear;
  dmCid10.qyCategorias.SQL.Add('select '+ ctCampos + ' from ' + ctTabelas);
  if vfOrdem <> '0' then
    dmCid10.qyCategorias.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmCid10.qyCategorias.SQL.Add(' limit ' + vfLimite);
  dmCid10.qyCategorias.Open;
end;

{--- Filtra registros da tabela -----------------------------------------------}

procedure FiltrarCid10categorias(vfCampoFil: String; vfOperador: String; vfParametro:
		     String; vfOrdem: String; vfLimite: String);
begin
  dmCid10.qyCategorias.Close;
  dmCid10.qyCategorias.SQL.Clear;
  dmCid10.qyCategorias.SQL.Add('select ' + ctCampos + ' from ' + ctTabelas + ' where ');
  dmCid10.qyCategorias.SQL.Add(vfCampoFil + ' ' + vfOperador + ' ');
  dmCid10.qyCategorias.SQL.Add(QuotedStr(vfParametro));
  if vfOrdem <> '0' then
    dmCid10.qyCategorias.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmCid10.qyCategorias.SQL.Add(' limit ' + vfLimite);
  dmCid10.qyCategorias.Open;
end;

end.
