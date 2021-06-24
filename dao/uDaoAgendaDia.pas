unit uDaoAgendaDia;

interface

uses
  Windows, Messages, SysUtils, Classes, Dialogs, StdCtrls, Forms,
  Graphics, Controls, DB;

//procedure SetValuesAgendaDia;
procedure InsAgendaDia;
procedure EdtAgendaDia;
procedure PostAgendaDia;
procedure ListarAgendaDia(vfOrdem: String; vfLimite: String);
procedure FiltrarAgendaDia(vfCampoFil: String; vfOperador: String; vfParametro:
		     String; vfOrdem: String; vfLimite: String);
procedure FiltrarAgendaDiaUsuLog(vfCampoFil: String; vfOperador: String; vfParametro:
		     String; vfOrdem: String; vfLimite: String);
function VerificaAgenda(vfData: String): boolean;

const
ctCampos = 'agd_data, agd_hora, usu_codigo, agd_descricao, agd_obs, agd_confirma, agd_alerta';
ctTabelas = 'agendadia';

implementation

uses dataGestao, uVarGlobal;

{--- Seta algum valor na tabela -----------------------------------------------}

{
procedure SetValuesAgendaDia(vfDAO: TDAO);
begin
  //
end;
}

{--- Coloca a tabela em insert  -----------------------------------------------}

procedure InsAgendaDia;
begin
  dmGestao.qyAgendaDia.Insert;
  dmGestao.qyAgendaDiaagd_data.Value := now;
  dmGestao.qyAgendaDiaagd_hora.Text := FormatDateTime(vgMaskHora, (now));
  dmGestao.qyAgendaDiaagd_alerta.Value := 'N';
end;

{--- Coloca a tabela em edit inserindo algum valor ----------------------------}

procedure EdtAgendaDia;
begin
  dmGestao.qyAgendaDia.Edit;
end;

{--- Dá um post na tabela -----------------------------------------------------}

procedure PostAgendaDia;
begin
  try
    //if dmGestao.qyAgendaDia.State in [dsInsert] then
      //dados.DataModule.qyAgendaDiaagd_data.Value := GetCodigo('agd_data', 'AgendaDia');
    dmGestao.qyAgendaDia.Post;
  except
    on E: Exception do
    begin
      MessageDlg('Erro ao gravar Alteração / Inserção!' + #13 +
          E.Message,mtError,[mbOk],0);
      dmGestao.qyAgendaDia.Refresh;
    end;
  end;
end;

{--- Lista todos os registros da tabela ---------------------------------------}

procedure ListarAgendaDia(vfOrdem: String; vfLimite: String);
begin
  dmGestao.qyAgendaDia.Close;
  dmGestao.qyAgendaDia.SQL.Clear;
  dmGestao.qyAgendaDia.SQL.Add('select '+ ctCampos + ' from ' + ctTabelas);
  if vfOrdem <> '0' then
    dmGestao.qyAgendaDia.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmGestao.qyAgendaDia.SQL.Add(' limit ' + vfLimite);
  dmGestao.qyAgendaDia.Open;
end;

{--- Filtra registros da tabela -----------------------------------------------}

procedure FiltrarAgendaDia(vfCampoFil: String; vfOperador: String; vfParametro:
		     String; vfOrdem: String; vfLimite: String);
begin
  dmGestao.qyAgendaDia.Close;
  dmGestao.qyAgendaDia.SQL.Clear;
  dmGestao.qyAgendaDia.SQL.Add('select ' + ctCampos + ' from ' + ctTabelas + ' where ');
  dmGestao.qyAgendaDia.SQL.Add(vfCampoFil + ' ' + vfOperador + ' ');
  dmGestao.qyAgendaDia.SQL.Add(QuotedStr(vfParametro));
  if vfOrdem <> '0' then
    dmGestao.qyAgendaDia.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmGestao.qyAgendaDia.SQL.Add(' limit ' + vfLimite);
  dmGestao.qyAgendaDia.Open;
end;

{--- Filtra registros da tabela pelo usuário logado ---------------------------}

procedure FiltrarAgendaDiaUsuLog(vfCampoFil: String; vfOperador: String; vfParametro:
		     String; vfOrdem: String; vfLimite: String);
begin
  dmGestao.qyAgendaDia.Close;
  dmGestao.qyAgendaDia.SQL.Clear;
  dmGestao.qyAgendaDia.SQL.Add('select ' + ctCampos + ' from ' + ctTabelas + ' where ');
  dmGestao.qyAgendaDia.SQL.Add(vfCampoFil + ' ' + vfOperador + ' ');
  dmGestao.qyAgendaDia.SQL.Add(QuotedStr(vfParametro));
  dmGestao.qyAgendaDia.SQL.Add(' and usu_codigo = ' + vgCodUsuarioLog);
  if vfOrdem <> '0' then
    dmGestao.qyAgendaDia.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmGestao.qyAgendaDia.SQL.Add(' limit ' + vfLimite);
  dmGestao.qyAgendaDia.Open;
end;

{--- Verifica agenda ----------------------------------------------------------}

function VerificaAgenda(vfData: String): boolean;
begin
  try
    dmGestao.qyAgendaDia.Sql.Clear;
    dmGestao.qyAgendaDia.SQL.Add('select ' + ctCampos + ' from ' + ctTabelas + ' where agd_data = ');
    dmGestao.qyAgendaDia.Sql.Add(QuotedStr(vfData));
    dmGestao.qyAgendaDia.Sql.Add(' and usu_codigo = ');
    dmGestao.qyAgendaDia.Sql.Add(QuotedStr(vgCodUsuarioLog));
    dmGestao.qyAgendaDia.Sql.Add(' and agd_alerta = ');
    dmGestao.qyAgendaDia.Sql.Add(QuotedStr('S'));
    dmGestao.qyAgendaDia.Sql.Add(' order by agd_data, agd_hora');
    dmGestao.qyAgendaDia.Open;
    if dmGestao.qyAgendaDiaagd_alerta.IsNull then
      result := false
    else
      result := true;
  except
    result := false;
  end;
end;

end.
