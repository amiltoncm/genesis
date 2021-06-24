unit uDaoExamesColeta;

interface

uses
  Windows, Messages, SysUtils, Classes, Dialogs, StdCtrls, Forms,
  Graphics, Controls, DB, uClassExamescoleta;

procedure SetValuesExamesColeta(vfExamesColeta: TExamesColeta);
procedure InsExamesColeta;
procedure EdtExamesColeta;
procedure PostExamesColeta;
procedure ListarExamesColeta(vfOrdem: String);
procedure FiltrarExamesColeta(vfCampoFil: String; vfOperador: String; vfParametro:
		     String; vfOrdem: String);
function GetDataColeta(vfExame: String): TDate;

const
ctCampos = 'exa_id, exc_data, exc_nomemae';
ctTabelas = 'examescoleta';

implementation

uses dataExames;

{--- Seta algum valor na tabela -----------------------------------------------}

procedure SetValuesExamesColeta(vfExamesColeta: TExamesColeta);
begin
  dmExames.qyExamesColetaexa_id.Value := vfExamesColeta.Exame;
  dmExames.qyExamesColetaexc_data.Text := vfExamesColeta.Data;
  dmExames.qyExamesColetaexc_nomemae.Value := vfExamesColeta.NomeMae;
end;

{--- Coloca a tabela em insert  -----------------------------------------------}

procedure InsExamesColeta;
begin
  if dmExames.qyExamesColeta.Active = false then
    dmExames.qyExamesColeta.Active := True;
  dmExames.qyExamesColeta.Insert;
end;

{--- Coloca a tabela em edit inserindo algum valor ----------------------------}

procedure EdtExamesColeta;
begin
  dmExames.qyExamesColeta.Edit;
end;

{--- Dá um post na tabela -----------------------------------------------------}

procedure PostExamesColeta;
begin
  try
    //if dmExames.qyExamesColeta.State in [dsInsert] then
      //dmExames.qyExamesColetaexa_id.Value := GetCodigo('exa_id', 'ExamesColeta');
    dmExames.qyExamesColeta.Post;
  except
    on E: Exception do
    begin
      MessageDlg('Erro ao gravar Alteração / Inserção!' + #13 +
          E.Message,mtError,[mbOk],0);
      dmExames.qyExamesColeta.Refresh;
    end;
  end;
end;

{--- Lista todos os registros da tabela ---------------------------------------}

procedure ListarExamesColeta(vfOrdem: String);
begin
  dmExames.qyExamesColeta.Close;
  dmExames.qyExamesColeta.SQL.Clear;
  dmExames.qyExamesColeta.SQL.Add('select '+ ctCampos + ' from ' + ctTabelas);
  if vfOrdem <> '0' then
    dmExames.qyExamesColeta.SQL.Add(' order by ' + vfOrdem);
  dmExames.qyExamesColeta.Open;
end;

{--- Filtra registros da tabela -----------------------------------------------}

procedure FiltrarExamesColeta(vfCampoFil: String; vfOperador: String; vfParametro:
		     String; vfOrdem: String);
begin
  dmExames.qyExamesColeta.Close;
  dmExames.qyExamesColeta.SQL.Clear;
  dmExames.qyExamesColeta.SQL.Add('select ' + ctCampos + ' from ' + ctTabelas + ' where ');
  dmExames.qyExamesColeta.SQL.Add(vfCampoFil + ' ' + vfOperador + ' ');
  dmExames.qyExamesColeta.SQL.Add(QuotedStr(vfParametro));
  if vfOrdem <> '0' then
    dmExames.qyExamesColeta.SQL.Add(' order by ' + vfOrdem);
  dmExames.qyExamesColeta.Open;
end;

function GetDataColeta(vfExame: String): TDate;
begin
  FiltrarExamesColeta('exa_id', '=', vfExame, '0');
  if dmExames.qyExamesColetaexa_id.IsNull then
    Result := now
  else
    Result := dmExames.qyExamesColetaexc_data.Value;
end;

end.
