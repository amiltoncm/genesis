unit uDaoAgenda;

interface

uses
  Windows, Messages, SysUtils, Classes, Dialogs, StdCtrls, Forms,
  Graphics, Controls, DB;

//procedure SetValuesAgenda;
procedure InsAgenda;
procedure EdtAgenda;
procedure PostAgenda;
procedure ListarAgenda(vfOrdem: String; vfLimite: String);
procedure FiltrarAgenda(vfCampoFil: String; vfOperador: String; vfParametro: 
		                    String; vfOrdem: String; vfLimite: String);

const
ctCampos = 'age_codigo, age_nome, age_telefone, age_fax, age_celular, age_email, ' +
           'age_homepage, age_msn, age_skype';
ctTabelas = 'agenda';

implementation

uses dataCadastros;

{--- Seta algum valor na tabela -----------------------------------------------}

{
procedure SetValuesAgenda(vfDAO: TDAO);
begin
  //
end;
}

{--- Coloca a tabela em insert  -----------------------------------------------}

procedure InsAgenda;
begin
  dmCadastros.qyAgenda.Insert;
end;

{--- Coloca a tabela em edit inserindo algum valor ----------------------------}

procedure EdtAgenda;
begin
  dmCadastros.qyAgenda.Edit;
end;

{--- Dá um post na tabela -----------------------------------------------------}

procedure PostAgenda;
begin
  try
    //if dmCadastros.qyAgenda.State in [dsInsert] then
      //dados.DataModule.qyAgendaage_codigo.Value := GetCodigo('age_codigo', 'agenda');
    dmCadastros.qyAgenda.Post;
  except
    on E: Exception do
    begin
      MessageDlg('Erro ao gravar Alteração / Inserção!' + #13 +
          E.Message,mtError,[mbOk],0);
      dmCadastros.qyAgenda.Refresh;
    end;
  end;
end;

{--- Lista todos os registros da tabela ---------------------------------------}

procedure ListarAgenda(vfOrdem: String; vfLimite: String);
begin
  dmCadastros.qyAgenda.Close;
  dmCadastros.qyAgenda.SQL.Clear;
  dmCadastros.qyAgenda.SQL.Add('select '+ ctCampos + ' from ' + ctTabelas);
  if vfOrdem <> '0' then
    dmCadastros.qyAgenda.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmCadastros.qyAgenda.SQL.Add(' limit ' + vfLimite);
  dmCadastros.qyAgenda.Open;
end;

{--- Filtra registros da tabela -----------------------------------------------}

procedure FiltrarAgenda(vfCampoFil: String; vfOperador: String; vfParametro: 
		     String; vfOrdem: String; vfLimite: String);
begin
  dmCadastros.qyAgenda.Close;
  dmCadastros.qyAgenda.SQL.Clear;
  dmCadastros.qyAgenda.SQL.Add('select ' + ctCampos + ' from ' + ctTabelas + ' where ');
  dmCadastros.qyAgenda.SQL.Add(vfCampoFil + ' ' + vfOperador + ' ');
  dmCadastros.qyAgenda.SQL.Add(QuotedStr(vfParametro));
  if vfOrdem <> '0' then
    dmCadastros.qyAgenda.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmCadastros.qyAgenda.SQL.Add(' limit ' + vfLimite);
  dmCadastros.qyAgenda.Open;
end;

end.
