unit uDaoExamesAut;

interface

uses
  Windows, Messages, SysUtils, Classes, Dialogs, StdCtrls, Forms,
  Graphics, Controls, DB;

//procedure SetValuesExamesAut;
procedure InsExamesAut;
procedure EdtExamesAut;
procedure PostExamesAut;
procedure ListarExamesAut(vfOrdem: String; vfLimite: String);
procedure FiltrarExamesAut(vfCampoFil: String; vfOperador: String; vfParametro: 
		     String; vfOrdem: String; vfLimite: String);

const
ctCampos = 'exa_id, aut_senha, aut_data';
ctTabelas = 'examesaut';

implementation

uses dataExames;

{--- Seta algum valor na tabela -----------------------------------------------}

{
procedure SetValuesExamesAut(vfDAO: TDAO);
begin
  //
end;
}

{--- Coloca a tabela em insert  -----------------------------------------------}

procedure InsExamesAut;
begin
  dmExames.qyExamesAut.Insert;
end;

{--- Coloca a tabela em edit inserindo algum valor ----------------------------}

procedure EdtExamesAut;
begin
  dmExames.qyExamesAut.Edit;
end;

{--- Dá um post na tabela -----------------------------------------------------}

procedure PostExamesAut;
begin
  try
    //if dmExames.qyExamesAut.State in [dsInsert] then
      //dados.DataModule.qyExamesAutexa_id.Value := GetCodigo('exa_id', 'ExamesAut');
    dmExames.qyExamesAut.Post;
  except
    on E: Exception do
    begin
      MessageDlg('Erro ao gravar Alteração / Inserção!' + #13 +
          E.Message,mtError,[mbOk],0);
      dmExames.qyExamesAut.Refresh;
    end;
  end;
end;

{--- Lista todos os registros da tabela ---------------------------------------}

procedure ListarExamesAut(vfOrdem: String; vfLimite: String);
begin
  dmExames.qyExamesAut.Close;
  dmExames.qyExamesAut.SQL.Clear;
  dmExames.qyExamesAut.SQL.Add('select '+ ctCampos + ' from ' + ctTabelas);
  if vfOrdem <> '0' then
    dmExames.qyExamesAut.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmExames.qyExamesAut.SQL.Add(' limit ' + vfLimite);
  dmExames.qyExamesAut.Open;
end;

{--- Filtra registros da tabela -----------------------------------------------}

procedure FiltrarExamesAut(vfCampoFil: String; vfOperador: String; vfParametro: 
		     String; vfOrdem: String; vfLimite: String);
begin
  dmExames.qyExamesAut.Close;
  dmExames.qyExamesAut.SQL.Clear;
  dmExames.qyExamesAut.SQL.Add('select ' + ctCampos + ' from ' + ctTabelas + ' where ');
  dmExames.qyExamesAut.SQL.Add(vfCampoFil + ' ' + vfOperador + ' ');
  dmExames.qyExamesAut.SQL.Add(QuotedStr(vfParametro));
  if vfOrdem <> '0' then
    dmExames.qyExamesAut.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmExames.qyExamesAut.SQL.Add(' limit ' + vfLimite);
  dmExames.qyExamesAut.Open;
end;

end.
