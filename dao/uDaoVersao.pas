unit uDaoVersao;

interface

uses
  Windows, Messages, SysUtils, Classes, Dialogs, StdCtrls, Forms,
  Graphics, Controls, DB;

procedure SetVersao(vfID: String; vfObs: String);
procedure InsVersao;
procedure EdtVersao;
procedure PostVersao;
procedure ListarVersao(vfOrdem: String);
procedure FiltrarVersao(vfCampoFil: String; vfOperador: String; vfParametro:
		     String; vfOrdem: String);
function VerifVersao(vfVersao: String): boolean;
function GetMajorVersion: String;

const
ctCampos = 'ver_id, ver_obs';
ctTabelas = 'versao';

implementation

uses dataConfig;

procedure SetVersao(vfID: String; vfObs: String);
begin
  dmConfig.qyVersaover_id.Text := vfID;
  dmConfig.qyVersaover_obs.Text := vfObs;
end;

{--- Coloca a tabela em insert  -----------------------------------------------}

procedure InsVersao;
begin
  if dmConfig.qyVersao.Active = false then
    dmConfig.qyVersao.Active := True;
  dmConfig.qyVersao.Insert;
end;

{--- Coloca a tabela em edit inserindo algum valor ----------------------------}

procedure EdtVersao;
begin
  dmConfig.qyVersao.Edit;
end;

{--- Dá um post na tabela -----------------------------------------------------}

procedure PostVersao;
begin
  try
    dmConfig.qyVersao.Post;
  except
    on E: Exception do
    begin
      MessageDlg('Erro ao gravar Alteração / Inserção!' + #13 +
          E.Message,mtError,[mbOk],0);
      dmConfig.qyVersao.Refresh;
    end;
  end;
end;

{--- Lista todos os registros da tabela ---------------------------------------}

procedure ListarVersao(vfOrdem: String);
begin
  dmConfig.qyVersao.Close;
  dmConfig.qyVersao.SQL.Clear;
  dmConfig.qyVersao.SQL.Add('select '+ ctCampos + ' from ' + ctTabelas);
  if vfOrdem <> '0' then
    dmConfig.qyVersao.SQL.Add(' order by ' + vfOrdem);
  dmConfig.qyVersao.Open;
end;

{--- Filtra registros da tabela -----------------------------------------------}

procedure FiltrarVersao(vfCampoFil: String; vfOperador: String; vfParametro:
		     String; vfOrdem: String);
begin
  dmConfig.qyVersao.Close;
  dmConfig.qyVersao.SQL.Clear;
  dmConfig.qyVersao.SQL.Add('select ' + ctCampos + ' from ' + ctTabelas + ' where ');
  dmConfig.qyVersao.SQL.Add(vfCampoFil + ' ' + vfOperador + ' ');
  dmConfig.qyVersao.SQL.Add(QuotedStr(vfParametro));
  if vfOrdem <> '0' then
    dmConfig.qyVersao.SQL.Add(' order by ' + vfOrdem);
  dmConfig.qyVersao.Open;
end;

{--- Filtra registros da tabela -----------------------------------------------}

function VerifVersao(vfVersao: String): boolean;
begin
  dmConfig.qyVersao.Close;
  dmConfig.qyVersao.SQL.Clear;
  dmConfig.qyVersao.SQL.Add('select ' + ctCampos + ' from ' + ctTabelas);
  dmConfig.qyVersao.SQL.Add(' where ver_id = ' + QuotedStr(vfVersao));
  dmConfig.qyVersao.Open;
  if dmConfig.qyVersaover_id.IsNull then
    Result := False
  else
    Result := True;
end;

function GetMajorVersion: String;
begin
  dmConfig.qyVersao.Close;
  dmConfig.qyVersao.SQL.Clear;
  dmConfig.qyVersao.SQL.Add('select ' + ctCampos + ' from ' + ctTabelas);
  dmConfig.qyVersao.SQL.Add(' order by ver_id desc limit 1');
  dmConfig.qyVersao.Open;
  Result := Trim(dmConfig.qyVersaover_id.Text);
end;

end.
