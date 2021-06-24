unit uDaoExamesLogs;

interface

uses
  Windows, Messages, SysUtils, Classes, Dialogs, StdCtrls, Forms,
  Graphics, Controls, DB;

procedure ListarExamesLogs(vfOrdem: String; vfLimite: String);
procedure FiltrarExamesLogs(vfCampoFil: String; vfOperador: String; vfParametro:
                            String; vfOrdem: String; vfLimite: String);
procedure InsExamesLogs(vfExaId: String; vfEtaId: String; vfUsuCodigo: String);

const
  ctCampos = 'l.exa_id, l.eta_id, l.log_data, l.log_hora, l.usu_codigo, u.usu_nome';
  ctTabelas = 'exameslog l, usuarios u';

implementation

uses dataExames;

{--- Lista todos os registros da tabela ---------------------------------------}

procedure ListarExamesLogs(vfOrdem: String; vfLimite: String);
begin
  dmExames.qyExamesLogs.Close;
  dmExames.qyExamesLogs.SQL.Clear;
  dmExames.qyExamesLogs.SQL.Add('select '+ ctCampos + ' from ' + ctTabelas +
                                  'where l.usu_codigo = u.usu_codigo' +
                                   ' order by '+ vfOrdem);
  if vfLimite <> '0' then
    dmExames.qyExamesLogs.SQL.Add(' limit ' + vfLimite);
  dmExames.qyExamesLogs.Open;
end;

{--- Filtra registros da tabela -----------------------------------------------}

procedure FiltrarExamesLogs(vfCampoFil: String; vfOperador: String; vfParametro:
                            String; vfOrdem: String; vfLimite: String);
begin
  dmExames.qyExamesLogs.Close;
  dmExames.qyExamesLogs.SQL.Clear;
  dmExames.qyExamesLogs.SQL.Add('select ' + ctCampos + ' from ' + ctTabelas +
                                  ' where l.usu_codigo = u.usu_codigo and ');
  dmExames.qyExamesLogs.SQL.Add(vfCampoFil + ' ' + vfOperador + ' ');
  dmExames.qyExamesLogs.SQL.Add(QuotedStr(vfParametro));
  if vfOrdem <> '0' then
    dmExames.qyExamesLogs.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmExames.qyExamesLogs.SQL.Add(' limit ' + vfLimite);
  dmExames.qyExamesLogs.Open;
end;

{--- Insere log de exame ------------------------------------------------------}

procedure InsExamesLogs(vfExaId: String; vfEtaId: String; vfUsuCodigo: String);
begin
  try
    if dmExames.qyExamesLogs.Active = false then
      dmExames.qyExamesLogs.Active := true;
    dmExames.qyExamesLogs.Insert;
    dmExames.qyExamesLogsexa_id.Text := vfExaId;
    dmExames.qyExamesLogseta_id.Text := vfEtaId;
    dmExames.qyExamesLogsusu_codigo.Text := vfUsuCodigo;
    dmExames.qyExamesLogslog_data.Value := now;
    dmExames.qyExamesLogslog_hora.Value := now;
    dmExames.qyExamesLogs.Post;
  except
    on E: Exception do
    begin
      MessageDlg('Erro ao gravar o controle de Logs!' + #13#10 +
      E.Message, mtError, [mbOk], 0);
    end;
  end;
end;

end.