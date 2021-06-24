unit uDaoExamesTipoCito;

interface

uses
  Windows, Messages, SysUtils, Classes, Dialogs, StdCtrls, Forms,
  Graphics, Controls, DB;

//procedure SetValuesExamesTipoCito;
procedure InsExamesTipoCito;
procedure EdtExamesTipoCito;
procedure PostExamesTipoCito;
procedure ListarExamesTipoCito(vfOrdem: String; vfLimite: String);
procedure FiltrarExamesTipoCito(vfCampoFil: String; vfOperador: String; vfParametro: 
		     String; vfOrdem: String; vfLimite: String);

const
ctCampos = 'eto_id, eto_local, eto_descricao';
ctTabelas = 'examestipocito';

implementation

uses dataCadastros;

{--- Seta algum valor na tabela -----------------------------------------------}

{
procedure SetValuesExamesTipoCito(vfDAO: TDAO);
begin
  //
end;
}

{--- Coloca a tabela em insert  -----------------------------------------------}

procedure InsExamesTipoCito;
begin
  dmCadastros.qyExamesTipoCito.Insert;
end;

{--- Coloca a tabela em edit inserindo algum valor ----------------------------}

procedure EdtExamesTipoCito;
begin
  dmCadastros.qyExamesTipoCito.Edit;
end;

{--- Dá um post na tabela -----------------------------------------------------}

procedure PostExamesTipoCito;
begin
  try
    //if dmCadastros.qyExamesTipoCito.State in [dsInsert] then
      //dados.DataModule.qyExamesTipoCitoeto_id.Value := GetCodigo('eto_id', 'ExamesTipoCito');
    dmCadastros.qyExamesTipoCito.Post;
  except
    on E: Exception do
    begin
      MessageDlg('Erro ao gravar Alteração / Inserção!' + #13 +
          E.Message,mtError,[mbOk],0);
      dmCadastros.qyExamesTipoCito.Refresh;
    end;
  end;
end;

{--- Lista todos os registros da tabela ---------------------------------------}

procedure ListarExamesTipoCito(vfOrdem: String; vfLimite: String);
begin
  dmCadastros.qyExamesTipoCito.Close;
  dmCadastros.qyExamesTipoCito.SQL.Clear;
  dmCadastros.qyExamesTipoCito.SQL.Add('select '+ ctCampos + ' from ' + ctTabelas);
  if vfOrdem <> '0' then
    dmCadastros.qyExamesTipoCito.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmCadastros.qyExamesTipoCito.SQL.Add(' limit ' + vfLimite);
  dmCadastros.qyExamesTipoCito.Open;
end;

{--- Filtra registros da tabela -----------------------------------------------}

procedure FiltrarExamesTipoCito(vfCampoFil: String; vfOperador: String; vfParametro: 
		     String; vfOrdem: String; vfLimite: String);
begin
  dmCadastros.qyExamesTipoCito.Close;
  dmCadastros.qyExamesTipoCito.SQL.Clear;
  dmCadastros.qyExamesTipoCito.SQL.Add('select ' + ctCampos + ' from ' + ctTabelas + ' where ');
  dmCadastros.qyExamesTipoCito.SQL.Add(vfCampoFil + ' ' + vfOperador + ' ');
  dmCadastros.qyExamesTipoCito.SQL.Add(QuotedStr(vfParametro));
  if vfOrdem <> '0' then
    dmCadastros.qyExamesTipoCito.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmCadastros.qyExamesTipoCito.SQL.Add(' limit ' + vfLimite);
  dmCadastros.qyExamesTipoCito.Open;
end;

end.
