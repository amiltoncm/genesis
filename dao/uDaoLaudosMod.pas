unit uDaoLaudosMod;

interface

uses
  Windows, Messages, SysUtils, Classes, Dialogs, StdCtrls, Forms,
  Graphics, Controls, DB;

//procedure SetValuesLaudosMod;
procedure InsLaudosMod;
procedure EdtLaudosMod;
procedure PostLaudosMod;
procedure ListarLaudosMod(vfOrdem: String; vfLimite: String);
procedure FiltrarLaudosMod(vfCampoFil: String; vfOperador: String; vfParametro: 
		     String; vfOrdem: String; vfLimite: String);

const
ctCampos = 'mod_id, mod_descricao, mod_modelo, mod_diagnostico';
ctTabelas = 'laudosmod';

implementation

uses dataCadastros;

{--- Seta algum valor na tabela -----------------------------------------------}

{
procedure SetValuesLaudosMod(vfDAO: TDAO);
begin
  //
end;
}

{--- Coloca a tabela em insert  -----------------------------------------------}

procedure InsLaudosMod;
begin
  dmCadastros.qyLaudosMod.Insert;
end;

{--- Coloca a tabela em edit inserindo algum valor ----------------------------}

procedure EdtLaudosMod;
begin
  dmCadastros.qyLaudosMod.Edit;
end;

{--- Dá um post na tabela -----------------------------------------------------}

procedure PostLaudosMod;
begin
  try
    //if dmCadastros.qyLaudosMod.State in [dsInsert] then
      //dados.DataModule.qyLaudosModmod_id.Value := GetCodigo('mod_id', 'LaudosMod');
    dmCadastros.qyLaudosMod.Post;
  except
    on E: Exception do
    begin
      MessageDlg('Erro ao gravar Alteração / Inserção!' + #13 +
          E.Message,mtError,[mbOk],0);
      dmCadastros.qyLaudosMod.Refresh;
    end;
  end;
end;

{--- Lista todos os registros da tabela ---------------------------------------}

procedure ListarLaudosMod(vfOrdem: String; vfLimite: String);
begin
  dmCadastros.qyLaudosMod.Close;
  dmCadastros.qyLaudosMod.SQL.Clear;
  dmCadastros.qyLaudosMod.SQL.Add('select '+ ctCampos + ' from ' + ctTabelas);
  if vfOrdem <> '0' then
    dmCadastros.qyLaudosMod.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmCadastros.qyLaudosMod.SQL.Add(' limit ' + vfLimite);
  dmCadastros.qyLaudosMod.Open;
end;

{--- Filtra registros da tabela -----------------------------------------------}

procedure FiltrarLaudosMod(vfCampoFil: String; vfOperador: String; vfParametro: 
		     String; vfOrdem: String; vfLimite: String);
begin
  dmCadastros.qyLaudosMod.Close;
  dmCadastros.qyLaudosMod.SQL.Clear;
  dmCadastros.qyLaudosMod.SQL.Add('select ' + ctCampos + ' from ' + ctTabelas + ' where ');
  dmCadastros.qyLaudosMod.SQL.Add(vfCampoFil + ' ' + vfOperador + ' ');
  dmCadastros.qyLaudosMod.SQL.Add(QuotedStr(vfParametro));
  if vfOrdem <> '0' then
    dmCadastros.qyLaudosMod.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmCadastros.qyLaudosMod.SQL.Add(' limit ' + vfLimite);
  dmCadastros.qyLaudosMod.Open;
end;

end.
