unit uDaoExamesTISS;

interface

uses
  Windows, Messages, SysUtils, Classes, Dialogs, StdCtrls, Forms,
  Graphics, Controls, DB;

//procedure SetValuesExamesTISS;
procedure InsExamesTISS;
procedure EdtExamesTISS;
procedure PostExamesTISS;
procedure ListarExamesTISS(vfOrdem: String; vfLimite: String);
procedure FiltrarExamesTISS(vfCampoFil: String; vfOperador: String; vfParametro: 
		     String; vfOrdem: String; vfLimite: String);

const
ctCampos = 'exa_id, tis_tipoatend';
ctTabelas = 'examestiss';

implementation

uses dataExames;

{--- Seta algum valor na tabela -----------------------------------------------}

{
procedure SetValuesExamesTISS(vfDAO: TDAO);
begin
  //
end;
}

{--- Coloca a tabela em insert  -----------------------------------------------}

procedure InsExamesTISS;
begin
  if dmExames.qyExamesTISS.Active = false then
    dmExames.qyExamesTISS.Active := true;
  dmExames.qyExamesTISS.Insert;
  dmExames.qyExamesTISStis_tipoatend.Value := 5;
end;

{--- Coloca a tabela em edit inserindo algum valor ----------------------------}

procedure EdtExamesTISS;
begin
  dmExames.qyExamesTISS.Edit;
end;

{--- Dá um post na tabela -----------------------------------------------------}

procedure PostExamesTISS;
begin
  try
    dmExames.qyExamesTISS.Post;
  except
    on E: Exception do
    begin
      MessageDlg('Erro ao gravar Alteração / Inserção!' + #13 +
          E.Message,mtError,[mbOk],0);
      dmExames.qyExamesTISS.Refresh;
    end;
  end;
end;

{--- Lista todos os registros da tabela ---------------------------------------}

procedure ListarExamesTISS(vfOrdem: String; vfLimite: String);
begin
  dmExames.qyExamesTISS.Close;
  dmExames.qyExamesTISS.SQL.Clear;
  dmExames.qyExamesTISS.SQL.Add('select '+ ctCampos + ' from ' + ctTabelas);
  if vfOrdem <> '0' then
    dmExames.qyExamesTISS.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmExames.qyExamesTISS.SQL.Add(' limit ' + vfLimite);
  dmExames.qyExamesTISS.Open;
end;

{--- Filtra registros da tabela -----------------------------------------------}

procedure FiltrarExamesTISS(vfCampoFil: String; vfOperador: String; vfParametro: 
		     String; vfOrdem: String; vfLimite: String);
begin
  dmExames.qyExamesTISS.Close;
  dmExames.qyExamesTISS.SQL.Clear;
  dmExames.qyExamesTISS.SQL.Add('select ' + ctCampos + ' from ' + ctTabelas + ' where ');
  dmExames.qyExamesTISS.SQL.Add(vfCampoFil + ' ' + vfOperador + ' ');
  dmExames.qyExamesTISS.SQL.Add(QuotedStr(vfParametro));
  if vfOrdem <> '0' then
    dmExames.qyExamesTISS.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmExames.qyExamesTISS.SQL.Add(' limit ' + vfLimite);
  dmExames.qyExamesTISS.Open;
end;

end.
