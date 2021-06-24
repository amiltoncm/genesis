unit uDaoExamesImunoZEOS;

interface

uses
  Windows, Messages, SysUtils, Classes, Dialogs, StdCtrls, Forms,
  Graphics, Controls, DB, uClassExamesImuno;

procedure SetValuesExamesImuno(vfExamesImuno: TExamesImuno; vfAcao: Integer);
procedure InsExamesImuno;
procedure EdtExamesImuno;
procedure PostExamesImuno;
procedure ListarExamesImuno(vfOrdem: String; vfLimite: String);
procedure FiltrarExamesImuno(vfCampoFil: String; vfOperador: String; vfParametro:
		     String; vfOrdem: String; vfLimite: String);

const
ctCampos = 'eim_id, exa_id, eim_exame';
ctTabelas = 'examesimuno';

implementation

uses dataFiles, uFuncoesDB;

{--- Seta algum valor na tabela -----------------------------------------------}

procedure SetValuesExamesImuno(vfExamesImuno: TExamesImuno; vfAcao: Integer);
begin
  if vfAcao = 0 then
    InsExamesImuno;
  if vfAcao = 1 then
    EdtExamesImuno;
  dmFiles.qyExamesImunoexa_id.Text := vfExamesImuno.Exa_id;
  dmFiles.qyExamesImunoeim_exame.LoadFromFile(vfExamesImuno.Eim_Exame);
  PostExamesImuno;
end;

{--- Coloca a tabela em insert  -----------------------------------------------}

procedure InsExamesImuno;
begin
  dmFiles.qyExamesImuno.Insert;
end;

{--- Coloca a tabela em edit inserindo algum valor ----------------------------}

procedure EdtExamesImuno;
begin
  dmFiles.qyExamesImuno.Edit;
end;

{--- Dá um post na tabela -----------------------------------------------------}

procedure PostExamesImuno;
begin
  try
    if dmFiles.qyExamesImuno.State in [dsInsert] then
      dmFiles.qyExamesImunoeim_id.Value := GetCodigo('eim_id', 'examesimuno');
    dmFiles.qyExamesImuno.Post;
  except
    on E: Exception do
    begin
      MessageDlg('Erro ao gravar Alteração / Inserção!' + #13 +
          E.Message,mtError,[mbOk],0);
      dmFiles.qyExamesImuno.Refresh;
    end;
  end;
end;

{--- Lista todos os registros da tabela ---------------------------------------}

procedure ListarExamesImuno(vfOrdem: String; vfLimite: String);
begin
  dmFiles.qyExamesImuno.Close;
  dmFiles.qyExamesImuno.SQL.Clear;
  dmFiles.qyExamesImuno.SQL.Add('select '+ ctCampos + ' from ' + ctTabelas);
  if vfOrdem <> '0' then
    dmFiles.qyExamesImuno.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmFiles.qyExamesImuno.SQL.Add(' limit ' + vfLimite);
  dmFiles.qyExamesImuno.Open;
end;

{--- Filtra registros da tabela -----------------------------------------------}

procedure FiltrarExamesImuno(vfCampoFil: String; vfOperador: String; vfParametro:
		     String; vfOrdem: String; vfLimite: String);
begin
  dmFiles.qyExamesImuno.Close;
  dmFiles.qyExamesImuno.SQL.Clear;
  dmFiles.qyExamesImuno.SQL.Add('select ' + ctCampos + ' from ' + ctTabelas + ' where ');
  dmFiles.qyExamesImuno.SQL.Add(vfCampoFil + ' ' + vfOperador + ' ');
  dmFiles.qyExamesImuno.SQL.Add(QuotedStr(vfParametro));
  if vfOrdem <> '0' then
    dmFiles.qyExamesImuno.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmFiles.qyExamesImuno.SQL.Add(' limit ' + vfLimite);
  dmFiles.qyExamesImuno.Open;
end;

end.
