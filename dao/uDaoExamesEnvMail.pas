unit uDaoExamesEnvMail;

interface

uses
  Windows, Messages, SysUtils, Classes, Dialogs, StdCtrls, Forms,
  Graphics, Controls, DB;

procedure ListarExamesEnvMail(vfOrdem: String; vfLimite: String);
procedure FiltrarExamesEnvMail(vfCampoFil: String; vfOperador: String; vfParametro:
		     String; vfOrdem: String; vfLimite: String);
procedure InsExamesEnvMail(vfExaId: String);
procedure SetEnvExamesEnvMail(vfExaId: String);
function GetStatusEnvio(vfExaID: String): boolean;

const
  ctCampos = 'eem_id, exa_id, eem_enviado, eem_enviar, eem_concluido';
  ctTabelas = 'examesenvmail';

implementation

uses dataExames, uFuncoesDB, dataConsultas;

{--- Lista todos os registros da tabela ---------------------------------------}

procedure ListarExamesEnvMail(vfOrdem: String; vfLimite: String);
begin
  dmExames.qyExamesEnvMail.Close;
  dmExames.qyExamesEnvMail.SQL.Clear;
  dmExames.qyExamesEnvMail.SQL.Add('select '+ ctCampos + ' from ' + ctTabelas +
                                   ' order by '+ vfOrdem);
  if vfLimite <> '0' then
    dmExames.qyExamesEnvMail.SQL.Add(' limit ' + vfLimite);
  dmExames.qyExamesEnvMail.Open;
end;

{--- Filtra registros da tabela -----------------------------------------------}

procedure FiltrarExamesEnvMail(vfCampoFil: String; vfOperador: String; vfParametro:
		     String; vfOrdem: String; vfLimite: String);
begin
  dmExames.qyExamesEnvMail.Close;
  dmExames.qyExamesEnvMail.SQL.Clear;
  dmExames.qyExamesEnvMail.SQL.Add('select ' + ctCampos + ' from ' + ctTabelas + ' where');
  dmExames.qyExamesEnvMail.SQL.Add(vfCampoFil + ' ' + vfOperador + ' ');
  dmExames.qyExamesEnvMail.SQL.Add(QuotedStr(vfParametro));
  if vfOrdem <> '0' then
    dmExames.qyExamesEnvMail.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmExames.qyExamesEnvMail.SQL.Add(' limit ' + vfLimite);
  dmExames.qyExamesEnvMail.Open;
end;

{--- Inserir registros da tabela ----------------------------------------------}

procedure InsExamesEnvMail(vfExaId: String);
begin
  try
    dmExames.qyExamesEnvMail.Insert;
    dmExames.qyExamesEnvMaileem_id.Value := GetCodigo('eem_id','examesenvmail');
    dmExames.qyExamesEnvMailexa_id.Text := vfExaId;
    dmExames.qyExamesEnvMaileem_enviado.Value := false;
    dmExames.qyExamesEnvMaileem_enviar.Value := false;
    dmExames.qyExamesEnvMaileem_concluido.Value := false;
    dmExames.qyExamesEnvMail.Post;
  except
    on E: Exception do
    begin
      MessageDlg('Erro ao gravar o Controle de envio de e-mails!' + #13#10 +
      E.Message, mtError, [mbOk], 0);
    end;
  end;
end;

{--- Altera status do exame para concluído ------------------------------------}

procedure SetEnvExamesEnvMail(vfExaId: String);
begin
  FiltrarExamesEnvMail('exa_id', '=', vfExaId, '0', '1');
  if not dmExames.qyExamesEnvMailexa_id.IsNull then
  begin
    dmExames.qyExamesEnvMail.Edit;
    dmExames.qyExamesEnvMaileem_concluido.Value := true;
    dmExames.qyExamesEnvMail.Post;
  end;
end;

{--- Pega status do envio de e-mail do exame ----------------------------------}

function GetStatusEnvio(vfExaID: String): boolean;
Var
vResult: boolean;
begin
  dmConsultas.SQL.Close;
  dmConsultas.SQL.SQL.Clear;
  dmConsultas.SQL.SQL.Add('select eem_enviado from examesenvmail where exa_id = ');
  dmConsultas.SQL.SQL.Add(QuotedStr(vfExaID));
  dmConsultas.SQL.Open;
  if dmConsultas.SQL.Fields[0].IsNull then
    vResult := false
  else
    vResult := dmConsultas.SQL.Fields[0].Value;
  Result := vResult;
end;

end.