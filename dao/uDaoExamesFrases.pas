unit uDaoExamesFrases;

interface

uses
  Windows, Messages, SysUtils, Classes, Dialogs, StdCtrls, Forms,
  Graphics, Controls, DB, uClassExamesfrases;

procedure SetValuesExamesFrases(vfExamesFrases: TExamesFrases);
procedure InsExamesFrases;
procedure EdtExamesFrases;
procedure PostExamesFrases;
procedure ListarExamesFrases(vfOrdem: String);
procedure FiltrarExamesFrases(vfCampoFil: String; vfOperador: String; vfParametro:
		     String; vfOrdem: String);

const
ctCampos = 'f.exa_id, f.ctf_id, c.ctf_frase';
ctTabelas = 'examesfrases f, citofrases c';

implementation

uses dataExames;

{--- Seta algum valor na tabela -----------------------------------------------}

procedure SetValuesExamesFrases(vfExamesFrases: TExamesFrases);
begin
   dmExames.qyExamesFrasesexa_id.Value := vfExamesfrases.Exame;
   dmExames.qyExamesFrasesctf_id.Value := vfExamesfrases.Idfrase;
   dmExames.qyExamesFrasesctf_frase.Value := vfExamesfrases.Frase;
end;

{--- Coloca a tabela em insert  -----------------------------------------------}

procedure InsExamesFrases;
begin
  if dmExames.qyExamesFrases.Active = false then
    dmExames.qyExamesFrases.Active := True;
  dmExames.qyExamesFrases.Insert;
end;

{--- Coloca a tabela em edit inserindo algum valor ----------------------------}

procedure EdtExamesFrases;
begin
  dmExames.qyExamesFrases.Edit;
end;

{--- Dá um post na tabela -----------------------------------------------------}

procedure PostExamesFrases;
begin
  try
    //if dmExames.qyExamesFrases.State in [dsInsert] then
      //dmExames.qyExamesFrasesf.exa_id.Value := GetCodigo('f.exa_id', 'ExamesFrases');
    dmExames.qyExamesFrases.Post;
    dmExames.qyExamesFrases.Refresh;
  except
    on E: Exception do
    begin
      MessageDlg('Erro ao gravar Alteração / Inserção!' + #13 +
          E.Message,mtError,[mbOk],0);
      dmExames.qyExamesFrases.Refresh;
    end;
  end;
end;

{--- Lista todos os registros da tabela ---------------------------------------}

procedure ListarExamesFrases(vfOrdem: String);
begin
  dmExames.qyExamesFrases.Close;
  dmExames.qyExamesFrases.SQL.Clear;
  dmExames.qyExamesFrases.SQL.Add('select '+ ctCampos + ' from ' + ctTabelas);
  dmExames.qyExamesFrases.SQL.Add(' where f.ctf_id = c.ctf_id ');
  if vfOrdem <> '0' then
    dmExames.qyExamesFrases.SQL.Add(' order by ' + vfOrdem);
  dmExames.qyExamesFrases.Open;
end;

{--- Filtra registros da tabela -----------------------------------------------}

procedure FiltrarExamesFrases(vfCampoFil: String; vfOperador: String; vfParametro: 
		     String; vfOrdem: String);
begin
  dmExames.qyExamesFrases.Close;
  dmExames.qyExamesFrases.SQL.Clear;
  dmExames.qyExamesFrases.SQL.Add('select ' + ctCampos + ' from ' + ctTabelas);
  dmExames.qyExamesFrases.SQL.Add(' where f.ctf_id = c.ctf_id and ');
  dmExames.qyExamesFrases.SQL.Add(vfCampoFil + ' ' + vfOperador + ' ');
  dmExames.qyExamesFrases.SQL.Add(QuotedStr(vfParametro));
  if vfOrdem <> '0' then
    dmExames.qyExamesFrases.SQL.Add(' order by ' + vfOrdem);
  dmExames.qyExamesFrases.Open;
end;

end.

