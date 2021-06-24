unit uDaoCitofrases;

interface

uses
  Windows, Messages, SysUtils, Classes, Dialogs, StdCtrls, Forms,
  Graphics, Controls, DB;

//procedure SetValuesCitofrases(vfCitofrases: TCitofrases);
procedure InsCitofrases;
procedure EdtCitofrases;
procedure PostCitofrases;
procedure ListarCitofrases(vfOrdem: String);
procedure FiltrarCitofrases(vfCampoFil: String; vfOperador: String; vfParametro: 
		     String; vfOrdem: String);

const
ctCampos = 'ctf_id, ctf_frase';
ctTabelas = 'citofrases';

implementation

uses dataCadastros;

{--- Seta algum valor na tabela -----------------------------------------------}

{
procedure SetValuesCitofrases(vfCitofrases: TCitofrases);
begin
  //@VINCULAR
end;
}

{--- Coloca a tabela em insert  -----------------------------------------------}

procedure InsCitofrases;
begin
  if dmCadastros.qyCitofrases.Active = false then
    dmCadastros.qyCitofrases.Active := True;
  dmCadastros.qyCitofrases.Insert;
end;

{--- Coloca a tabela em edit inserindo algum valor ----------------------------}

procedure EdtCitofrases;
begin
  dmCadastros.qyCitofrases.Edit;
end;

{--- Dá um post na tabela -----------------------------------------------------}

procedure PostCitofrases;
begin
  try
    //if dmCadastros.qyCitofrases.State in [dsInsert] then
      //dmCadastros.qyCitofrasesctf_id.Value := GetCodigo('ctf_id', 'Citofrases');
    dmCadastros.qyCitofrases.Post;
  except
    on E: Exception do
    begin
      MessageDlg('Erro ao gravar Alteração / Inserção!' + #13 +
          E.Message,mtError,[mbOk],0);
      dmCadastros.qyCitofrases.Refresh;
    end;
  end;
end;

{--- Lista todos os registros da tabela ---------------------------------------}

procedure ListarCitofrases(vfOrdem: String);
begin
  dmCadastros.qyCitofrases.Close;
  dmCadastros.qyCitofrases.SQL.Clear;
  dmCadastros.qyCitofrases.SQL.Add('select '+ ctCampos + ' from ' + ctTabelas);
  if vfOrdem <> '0' then
    dmCadastros.qyCitofrases.SQL.Add(' order by ' + vfOrdem);
  dmCadastros.qyCitofrases.Open;
end;

{--- Filtra registros da tabela -----------------------------------------------}

procedure FiltrarCitofrases(vfCampoFil: String; vfOperador: String; vfParametro: 
		     String; vfOrdem: String);
begin
  dmCadastros.qyCitofrases.Close;
  dmCadastros.qyCitofrases.SQL.Clear;
  dmCadastros.qyCitofrases.SQL.Add('select ' + ctCampos + ' from ' + ctTabelas + ' where ');
  dmCadastros.qyCitofrases.SQL.Add(vfCampoFil + ' ' + vfOperador + ' ');
  dmCadastros.qyCitofrases.SQL.Add(QuotedStr(vfParametro));
  if vfOrdem <> '0' then
    dmCadastros.qyCitofrases.SQL.Add(' order by ' + vfOrdem);
  dmCadastros.qyCitofrases.Open;
end;

end.
