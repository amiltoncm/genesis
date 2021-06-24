unit uDaoExamesLocais;

interface

uses
  Windows, Messages, SysUtils, Classes, Dialogs, StdCtrls, Forms,
  Graphics, Controls, DB;

//procedure SetValuesExamesLocais;
procedure InsExamesLocais;
procedure EdtExamesLocais;
procedure PostExamesLocais;
procedure ListarExamesLocais(vfOrdem: String; vfLimite: String);
procedure FiltrarExamesLocais(vfCampoFil: String; vfOperador: String; vfParametro: 
		     String; vfOrdem: String; vfLimite: String);

const
ctCampos = 'exl_id, exl_descricao';
ctTabelas = 'exameslocais';

implementation

uses dataCadastros;

{--- Seta algum valor na tabela -----------------------------------------------}

{
procedure SetValuesExamesLocais(vfDAO: TDAO);
begin
  //
end;
}

{--- Coloca a tabela em insert  -----------------------------------------------}

procedure InsExamesLocais;
begin
  dmCadastros.qyExamesLocais.Insert;
end;

{--- Coloca a tabela em edit inserindo algum valor ----------------------------}

procedure EdtExamesLocais;
begin
  dmCadastros.qyExamesLocais.Edit;
end;

{--- Dá um post na tabela -----------------------------------------------------}

procedure PostExamesLocais;
begin
  try
    //if dmCadastros.qyExamesLocais.State in [dsInsert] then
      //dados.DataModule.qyExamesLocaisexl_id.Value := GetCodigo('exl_id', 'ExamesLocais');
    dmCadastros.qyExamesLocais.Post;
  except
    on E: Exception do
    begin
      MessageDlg('Erro ao gravar Alteração / Inserção!' + #13 +
          E.Message,mtError,[mbOk],0);
      dmCadastros.qyExamesLocais.Refresh;
    end;
  end;
end;

{--- Lista todos os registros da tabela ---------------------------------------}

procedure ListarExamesLocais(vfOrdem: String; vfLimite: String);
begin
  dmCadastros.qyExamesLocais.Close;
  dmCadastros.qyExamesLocais.SQL.Clear;
  dmCadastros.qyExamesLocais.SQL.Add('select '+ ctCampos + ' from ' + ctTabelas);
  if vfOrdem <> '0' then
    dmCadastros.qyExamesLocais.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmCadastros.qyExamesLocais.SQL.Add(' limit ' + vfLimite);
  dmCadastros.qyExamesLocais.Open;
end;

{--- Filtra registros da tabela -----------------------------------------------}

procedure FiltrarExamesLocais(vfCampoFil: String; vfOperador: String; vfParametro: 
		     String; vfOrdem: String; vfLimite: String);
begin
  dmCadastros.qyExamesLocais.Close;
  dmCadastros.qyExamesLocais.SQL.Clear;
  dmCadastros.qyExamesLocais.SQL.Add('select ' + ctCampos + ' from ' + ctTabelas + ' where ');
  dmCadastros.qyExamesLocais.SQL.Add(vfCampoFil + ' ' + vfOperador + ' ');
  dmCadastros.qyExamesLocais.SQL.Add(QuotedStr(vfParametro));
  if vfOrdem <> '0' then
    dmCadastros.qyExamesLocais.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmCadastros.qyExamesLocais.SQL.Add(' limit ' + vfLimite);
  dmCadastros.qyExamesLocais.Open;
end;

end.
