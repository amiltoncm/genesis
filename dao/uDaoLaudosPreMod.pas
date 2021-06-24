unit uDaoLaudosPreMod;

interface

uses
  Windows, Messages, SysUtils, Classes, Dialogs, StdCtrls, Forms,
  Graphics, Controls, DB;

//procedure SetValuesLaudosPreMod(vfLaudosPreMod: TLaudosPreMod);
procedure InsLaudosPreMod;
procedure EdtLaudosPreMod;
procedure PostLaudosPreMod;
procedure ListarLaudosPreMod(vfOrdem: String);
procedure FiltrarLaudosPreMod(vfCampoFil: String; vfOperador: String; vfParametro: 
		     String; vfOrdem: String);

const
ctCampos = 'lpm_codigo, lpm_descricao, lpm_modelo, lpm_diagnostico';
ctTabelas = 'laudospremod';

implementation

uses dataCadastros;

{--- Seta algum valor na tabela -----------------------------------------------}

{
procedure SetValuesLaudosPreMod(vfLaudosPreMod: TLaudosPreMod);
begin
  //@VINCULAR
end;
}

{--- Coloca a tabela em insert  -----------------------------------------------}

procedure InsLaudosPreMod;
begin
  if dmCadastros.qyLaudosPreMod.Active = false then
    dmCadastros.qyLaudosPreMod.Active := True;
  dmCadastros.qyLaudosPreMod.Insert;
end;

{--- Coloca a tabela em edit inserindo algum valor ----------------------------}

procedure EdtLaudosPreMod;
begin
  dmCadastros.qyLaudosPreMod.Edit;
end;

{--- Dá um post na tabela -----------------------------------------------------}

procedure PostLaudosPreMod;
begin
  try
    //if dmCadastros.qyLaudosPreMod.State in [dsInsert] then
      //dmCadastros.qyLaudosPreModlpm_codigo.Value := GetCodigo('lpm_codigo', 'LaudosPreMod');
    dmCadastros.qyLaudosPreMod.Post;
  except
    on E: Exception do
    begin
      MessageDlg('Erro ao gravar Alteração / Inserção!' + #13 +
          E.Message,mtError,[mbOk],0);
      dmCadastros.qyLaudosPreMod.Refresh;
    end;
  end;
end;

{--- Lista todos os registros da tabela ---------------------------------------}

procedure ListarLaudosPreMod(vfOrdem: String);
begin
  dmCadastros.qyLaudosPreMod.Close;
  dmCadastros.qyLaudosPreMod.SQL.Clear;
  dmCadastros.qyLaudosPreMod.SQL.Add('select '+ ctCampos + ' from ' + ctTabelas);
  if vfOrdem <> '0' then
    dmCadastros.qyLaudosPreMod.SQL.Add(' order by ' + vfOrdem);
  dmCadastros.qyLaudosPreMod.Open;
end;

{--- Filtra registros da tabela -----------------------------------------------}

procedure FiltrarLaudosPreMod(vfCampoFil: String; vfOperador: String; vfParametro: 
		     String; vfOrdem: String);
begin
  dmCadastros.qyLaudosPreMod.Close;
  dmCadastros.qyLaudosPreMod.SQL.Clear;
  dmCadastros.qyLaudosPreMod.SQL.Add('select ' + ctCampos + ' from ' + ctTabelas + ' where ');
  dmCadastros.qyLaudosPreMod.SQL.Add(vfCampoFil + ' ' + vfOperador + ' ');
  dmCadastros.qyLaudosPreMod.SQL.Add(QuotedStr(vfParametro));
  if vfOrdem <> '0' then
    dmCadastros.qyLaudosPreMod.SQL.Add(' order by ' + vfOrdem);
  dmCadastros.qyLaudosPreMod.Open;
end;

end.
