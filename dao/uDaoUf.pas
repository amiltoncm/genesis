unit uDaoUf;

interface

uses
  Windows, Messages, SysUtils, Classes, Dialogs, StdCtrls, Forms,
  Graphics, Controls, DB;

//procedure SetValuesUf;
procedure InsUf;
procedure EdtUf;
procedure PostUf;
procedure ListarUf(vfOrdem: String; vfLimite: String);
procedure FiltrarUf(vfCampoFil: String; vfOperador: String; vfParametro: 
		     String; vfOrdem: String; vfLimite: String);

const
ctCampos = 'uf_codigo, uf_sigla, uf_estado';
ctTabelas = 'uf';

implementation

uses dataCadastros;

{--- Seta algum valor na tabela -----------------------------------------------}

{
procedure SetValuesUf(vfDAO: TDAO);
begin
  //
end;
}

{--- Coloca a tabela em insert  -----------------------------------------------}

procedure InsUf;
begin
  dmCadastros.qyUf.Insert;
end;

{--- Coloca a tabela em edit inserindo algum valor ----------------------------}

procedure EdtUf;
begin
  dmCadastros.qyUf.Edit;
end;

{--- Dá um post na tabela -----------------------------------------------------}

procedure PostUf;
begin
  try
    //if dmCadastros.qyUf.State in [dsInsert] then
      //dados.DataModule.qyUfuf_codigo.Value := GetCodigo('uf_codigo', 'Uf');
    dmCadastros.qyUf.Post;
  except
    on E: Exception do
    begin
      MessageDlg('Erro ao gravar Alteração / Inserção!' + #13 +
          E.Message,mtError,[mbOk],0);
      dmCadastros.qyUf.Refresh;
    end;
  end;
end;

{--- Lista todos os registros da tabela ---------------------------------------}

procedure ListarUf(vfOrdem: String; vfLimite: String);
begin
  dmCadastros.qyUf.Close;
  dmCadastros.qyUf.SQL.Clear;
  dmCadastros.qyUf.SQL.Add('select '+ ctCampos + ' from ' + ctTabelas);
  if vfOrdem <> '0' then
    dmCadastros.qyUf.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmCadastros.qyUf.SQL.Add(' limit ' + vfLimite);
  dmCadastros.qyUf.Open;
end;

{--- Filtra registros da tabela -----------------------------------------------}

procedure FiltrarUf(vfCampoFil: String; vfOperador: String; vfParametro: 
		     String; vfOrdem: String; vfLimite: String);
begin
  dmCadastros.qyUf.Close;
  dmCadastros.qyUf.SQL.Clear;
  dmCadastros.qyUf.SQL.Add('select ' + ctCampos + ' from ' + ctTabelas + ' where ');
  dmCadastros.qyUf.SQL.Add(vfCampoFil + ' ' + vfOperador + ' ');
  dmCadastros.qyUf.SQL.Add(QuotedStr(vfParametro));
  if vfOrdem <> '0' then
    dmCadastros.qyUf.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmCadastros.qyUf.SQL.Add(' limit ' + vfLimite);
  dmCadastros.qyUf.Open;
end;

end.
