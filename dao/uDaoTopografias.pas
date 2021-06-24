unit uDaoTopografias;

interface

uses
  Windows, Messages, SysUtils, Classes, Dialogs, StdCtrls, Forms,
  Graphics, Controls, DB;

//procedure SetValuesTopografias;
procedure InsTopografias;
procedure EdtTopografias;
procedure PostTopografias;
procedure ListarTopografias(vfOrdem: String; vfLimite: String);
procedure FiltrarTopografias(vfCampoFil: String; vfOperador: String; vfParametro: 
		     String; vfOrdem: String; vfLimite: String);

const
ctCampos = 'top_id, top_descricao';
ctTabelas = 'topografias';

implementation

uses dataCadastros;

{--- Seta algum valor na tabela -----------------------------------------------}

{
procedure SetValuesTopografias(vfDAO: TDAO);
begin
  //
end;
}

{--- Coloca a tabela em insert  -----------------------------------------------}

procedure InsTopografias;
begin
  dmCadastros.qyTopografias.Insert;
end;

{--- Coloca a tabela em edit inserindo algum valor ----------------------------}

procedure EdtTopografias;
begin
  dmCadastros.qyTopografias.Edit;
end;

{--- Dá um post na tabela -----------------------------------------------------}

procedure PostTopografias;
begin
  try
    //if dmCadastros.qyTopografias.State in [dsInsert] then
      //dados.DataModule.qyTopografiastop_id.Value := GetCodigo('top_id', 'Topografias');
    dmCadastros.qyTopografias.Post;
  except
    on E: Exception do
    begin
      MessageDlg('Erro ao gravar Alteração / Inserção!' + #13 +
          E.Message,mtError,[mbOk],0);
      dmCadastros.qyTopografias.Refresh;
    end;
  end;
end;

{--- Lista todos os registros da tabela ---------------------------------------}

procedure ListarTopografias(vfOrdem: String; vfLimite: String);
begin
  dmCadastros.qyTopografias.Close;
  dmCadastros.qyTopografias.SQL.Clear;
  dmCadastros.qyTopografias.SQL.Add('select '+ ctCampos + ' from ' + ctTabelas);
  if vfOrdem <> '0' then
    dmCadastros.qyTopografias.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmCadastros.qyTopografias.SQL.Add(' limit ' + vfLimite);
  dmCadastros.qyTopografias.Open;
end;

{--- Filtra registros da tabela -----------------------------------------------}

procedure FiltrarTopografias(vfCampoFil: String; vfOperador: String; vfParametro: 
		     String; vfOrdem: String; vfLimite: String);
begin
  dmCadastros.qyTopografias.Close;
  dmCadastros.qyTopografias.SQL.Clear;
  dmCadastros.qyTopografias.SQL.Add('select ' + ctCampos + ' from ' + ctTabelas + ' where ');
  dmCadastros.qyTopografias.SQL.Add(vfCampoFil + ' ' + vfOperador + ' ');
  dmCadastros.qyTopografias.SQL.Add(QuotedStr(vfParametro));
  if vfOrdem <> '0' then
    dmCadastros.qyTopografias.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmCadastros.qyTopografias.SQL.Add(' limit ' + vfLimite);
  dmCadastros.qyTopografias.Open;
end;

end.
