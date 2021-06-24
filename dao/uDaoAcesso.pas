unit uDaoAcesso;

interface

uses
  Windows, Messages, SysUtils, Classes, Dialogs, StdCtrls, Forms,
  Graphics, Controls, DB;

//procedure SetValuesAcesso;
procedure InsAcesso;
procedure EdtAcesso;
procedure PostAcesso;
procedure ListarAcesso(vfOrdem: String; vfLimite: String);
procedure FiltrarAcesso(vfCampoFil: String; vfOperador: String; vfParametro: 
		     String; vfOrdem: String; vfLimite: String);

const
ctCampos = 'ace_codigo, ace_descricao';
ctTabelas = 'acesso';

implementation

uses dataCadastros;

{--- Seta algum valor na tabela -----------------------------------------------}

{
procedure SetValuesAcesso(vfDAO: TDAO);
begin
  //
end;
}

{--- Coloca a tabela em insert  -----------------------------------------------}

procedure InsAcesso;
begin
  dmCadastros.qyAcesso.Insert;
end;

{--- Coloca a tabela em edit inserindo algum valor ----------------------------}

procedure EdtAcesso;
begin
  dmCadastros.qyAcesso.Edit;
end;

{--- Dá um post na tabela -----------------------------------------------------}

procedure PostAcesso;
begin
  try
    //if dmCadastros.qyAcesso.State in [dsInsert] then
      //dados.DataModule.qyAcessoace_codigo.Value := GetCodigo('ace_codigo', 'Acesso');
    dmCadastros.qyAcesso.Post;
  except
    on E: Exception do
    begin
      MessageDlg('Erro ao gravar Alteração / Inserção!' + #13 +
          E.Message,mtError,[mbOk],0);
      dmCadastros.qyAcesso.Refresh;
    end;
  end;
end;

{--- Lista todos os registros da tabela ---------------------------------------}

procedure ListarAcesso(vfOrdem: String; vfLimite: String);
begin
  dmCadastros.qyAcesso.Close;
  dmCadastros.qyAcesso.SQL.Clear;
  dmCadastros.qyAcesso.SQL.Add('select '+ ctCampos + ' from ' + ctTabelas);
  if vfOrdem <> '0' then
    dmCadastros.qyAcesso.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmCadastros.qyAcesso.SQL.Add(' limit ' + vfLimite);
  dmCadastros.qyAcesso.Open;
end;

{--- Filtra registros da tabela -----------------------------------------------}

procedure FiltrarAcesso(vfCampoFil: String; vfOperador: String; vfParametro: 
		     String; vfOrdem: String; vfLimite: String);
begin
  dmCadastros.qyAcesso.Close;
  dmCadastros.qyAcesso.SQL.Clear;
  dmCadastros.qyAcesso.SQL.Add('select ' + ctCampos + ' from ' + ctTabelas + ' where ');
  dmCadastros.qyAcesso.SQL.Add(vfCampoFil + ' ' + vfOperador + ' ');
  dmCadastros.qyAcesso.SQL.Add(QuotedStr(vfParametro));
  if vfOrdem <> '0' then
    dmCadastros.qyAcesso.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmCadastros.qyAcesso.SQL.Add(' limit ' + vfLimite);
  dmCadastros.qyAcesso.Open;
end;

end.
