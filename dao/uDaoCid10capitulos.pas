unit uDaoCid10capitulos;

interface

uses
  Windows, Messages, SysUtils, Classes, Dialogs, StdCtrls, Forms,
  Graphics, Controls, DB;

procedure InsCid10capitulos;
procedure EdtCid10capitulos;
procedure PostCid10capitulos;
procedure ListarCid10capitulos(vfOrdem: String; vfLimite: String);
procedure FiltrarCid10capitulos(vfCampoFil: String; vfOperador: String; vfParametro:
		                            String; vfOrdem: String; vfLimite: String);

const
ctCampos = 'cap_numcap, cap_catinic, cap_catfim, cap_descricao, cap_descabrev';
ctTabelas = 'cid10capitulos';

implementation

uses dataCid10;

{--- Coloca a tabela em insert  -----------------------------------------------}

procedure InsCid10capitulos;
begin
  dmCid10.qyCapitulos.Insert;
end;

{--- Coloca a tabela em edit inserindo algum valor ----------------------------}

procedure EdtCid10capitulos;
begin
  dmCid10.qyCapitulos.Edit;
end;

{--- Dá um post na tabela -----------------------------------------------------}

procedure PostCid10capitulos;
begin
  try
    dmCid10.qyCapitulos.Post;
  except
    on E: Exception do
    begin
      MessageDlg('Erro ao gravar Alteração / Inserção!' + #13 +
          E.Message,mtError,[mbOk],0);
      dmCid10.qyCapitulos.Refresh;
    end;
  end;
end;

{--- Lista todos os registros da tabela ---------------------------------------}

procedure ListarCid10capitulos(vfOrdem: String; vfLimite: String);
begin
  dmCid10.qyCapitulos.Close;
  dmCid10.qyCapitulos.SQL.Clear;
  dmCid10.qyCapitulos.SQL.Add('select '+ ctCampos + ' from ' + ctTabelas);
  if vfOrdem <> '0' then
    dmCid10.qyCapitulos.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmCid10.qyCapitulos.SQL.Add(' limit ' + vfLimite);
  dmCid10.qyCapitulos.Open;
end;

{--- Filtra registros da tabela -----------------------------------------------}

procedure FiltrarCid10capitulos(vfCampoFil: String; vfOperador: String; vfParametro:
		     String; vfOrdem: String; vfLimite: String);
begin
  dmCid10.qyCapitulos.Close;
  dmCid10.qyCapitulos.SQL.Clear;
  dmCid10.qyCapitulos.SQL.Add('select ' + ctCampos + ' from ' + ctTabelas + ' where ');
  dmCid10.qyCapitulos.SQL.Add(vfCampoFil + ' ' + vfOperador + ' ');
  dmCid10.qyCapitulos.SQL.Add(QuotedStr(vfParametro));
  if vfOrdem <> '0' then
    dmCid10.qyCapitulos.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmCid10.qyCapitulos.SQL.Add(' limit ' + vfLimite);
  dmCid10.qyCapitulos.Open;
end;

end.
