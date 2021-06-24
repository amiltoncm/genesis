unit uDaoCidades;

interface

uses
  Windows, Messages, SysUtils, Classes, Dialogs, StdCtrls, Forms,
  Graphics, Controls, DB;

//procedure SetValuesCidades;
procedure InsCidades;
procedure EdtCidades;
procedure PostCidades;
procedure ListarCidades(vfOrdem: String; vfLimite: String);
procedure FiltrarCidades(vfCampoFil: String; vfOperador: String; vfParametro: 
		     String; vfOrdem: String; vfLimite: String);

const
ctCampos = 'c.cid_codigo, c.cid_cidade, c.uf_sigla, u.uf_estado, c.cid_ceppadrao';
ctTabelas = 'cidades c, uf u';

implementation

uses dataCadastros;

{--- Seta algum valor na tabela -----------------------------------------------}

{
procedure SetValuesCidades(vfDAO: TDAO);
begin
  //
end;
}

{--- Coloca a tabela em insert  -----------------------------------------------}

procedure InsCidades;
begin
  dmCadastros.qyCidades.Insert;
end;

{--- Coloca a tabela em edit inserindo algum valor ----------------------------}

procedure EdtCidades;
begin
  dmCadastros.qyCidades.Edit;
end;

{--- Dá um post na tabela -----------------------------------------------------}

procedure PostCidades;
begin
  try
    //if dmCadastros.qyCidades.State in [dsInsert] then
      //dados.DataModule.qyCidadesc.cid_codigo.Value := GetCodigo('c.cid_codigo', 'Cidades');
    dmCadastros.qyCidades.Post;
  except
    on E: Exception do
    begin
      MessageDlg('Erro ao gravar Alteração / Inserção!' + #13 +
          E.Message,mtError,[mbOk],0);
      dmCadastros.qyCidades.Refresh;
    end;
  end;
end;

{--- Lista todos os registros da tabela ---------------------------------------}

procedure ListarCidades(vfOrdem: String; vfLimite: String);
begin
  dmCadastros.qyCidades.Close;
  dmCadastros.qyCidades.SQL.Clear;
  dmCadastros.qyCidades.SQL.Add('select '+ ctCampos + ' from ' + ctTabelas);
  dmCadastros.qyCidades.SQL.Add(' where c.uf_sigla = u.uf_sigla ');
  if vfOrdem <> '0' then
    dmCadastros.qyCidades.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmCadastros.qyCidades.SQL.Add(' limit ' + vfLimite);
  dmCadastros.qyCidades.Open;
end;

{--- Filtra registros da tabela -----------------------------------------------}

procedure FiltrarCidades(vfCampoFil: String; vfOperador: String; vfParametro: 
		     String; vfOrdem: String; vfLimite: String);
begin
  dmCadastros.qyCidades.Close;
  dmCadastros.qyCidades.SQL.Clear;
  dmCadastros.qyCidades.SQL.Add('select ' + ctCampos + ' from ' + ctTabelas);
  dmCadastros.qyCidades.SQL.Add(' where c.uf_sigla = u.uf_sigla and ');
  dmCadastros.qyCidades.SQL.Add(vfCampoFil + ' ' + vfOperador + ' ');
  dmCadastros.qyCidades.SQL.Add(QuotedStr(vfParametro));
  if vfOrdem <> '0' then
    dmCadastros.qyCidades.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmCadastros.qyCidades.SQL.Add(' limit ' + vfLimite);
  dmCadastros.qyCidades.Open;
end;

end.
