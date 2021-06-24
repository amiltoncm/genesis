unit uDaoExamesCob;

interface

uses
  Windows, Messages, SysUtils, Classes, Dialogs, StdCtrls, Forms,
  Graphics, Controls, DB;

//procedure SetValuesExamesCob;
procedure InsExamesCob;
procedure EdtExamesCob;
procedure PostExamesCob;
procedure UpdExamesCob(vfHisId: Integer; vfGerarCob, vfStatus: boolean);
procedure ListarExamesCob(vfOrdem: String; vfLimite: String);
procedure FiltrarExamesCob(vfCampoFil: String; vfOperador: String; vfParametro:
                           String; vfOrdem: String; vfLimite: String);
procedure InsExamesCobNew(vfExaId: String);
procedure UpdVlrExamesCob(vfExaId: String; vfValor: real);
procedure ConcExamesCob(vfExaId: String);
procedure BackExamesCob(vfHisId: String);
procedure UpdateTotais(vfExaId: String);

const
  ctCampos = 'eco_id, exa_id, eco_status, eco_valor, his_id, eco_gerarcob, eco_vlrpago';
  ctTabelas = 'examescob';

implementation

uses dataFinanceiro, uFuncoesDB;

{
procedure SetValuesExamesCob(vfDAO: TDAO);
begin
  //
end;
}

{--- Coloca a tabela em insert  -----------------------------------------------}

procedure InsExamesCob;
begin
  dmFinanceiro.qyExamesCob.Insert;
end;

{--- Coloca a tabela em edit inserindo algum valor ----------------------------}

procedure EdtExamesCob;
begin
  dmFinanceiro.qyExamesCob.Edit;
end;

{--- Dá um post na tabela -----------------------------------------------------}

procedure PostExamesCob;
begin
  try
    if dmFinanceiro.qyExamesCob.State in [dsInsert] then
      dmFinanceiro.qyExamesCobeco_id.Value := GetCodigo('eco_id', 'examescob');
    dmFinanceiro.qyExamesCob.Post;
  except
    on E: Exception do
    begin
      MessageDlg('Erro ao gravar Alteração / Inserção!' + #13 +
          E.Message,mtError,[mbOk],0);
      dmFinanceiro.qyExamesCob.Refresh;
    end;
  end;
end;

{--- Dá um update na tabela apenas em campos necessários ----------------------}

procedure UpdExamesCob(vfHisId: Integer; vfGerarCob, vfStatus: boolean);
begin
  dmFinanceiro.qyExamesCobhis_id.Value := vfHisId;
  dmFinanceiro.qyExamesCobeco_gerarcob.Value := vfGerarCob;
  dmFinanceiro.qyExamesCobeco_status.Value := vfStatus;
end;

{--- Lista todos os registros da tabela ---------------------------------------}

procedure ListarExamesCob(vfOrdem: String; vfLimite: String);
begin
  dmFinanceiro.qyExamesCob.Close;
  dmFinanceiro.qyExamesCob.SQL.Clear;
  dmFinanceiro.qyExamesCob.SQL.Add('select '+ ctCampos + ' from ' + ctTabelas +
                                   ' order by '+ vfOrdem);
  if vfLimite <> '0' then
    dmFinanceiro.qyExamesCob.SQL.Add(' limit ' + vfLimite);
  dmFinanceiro.qyExamesCob.Open;
end;

{--- Filtra registros da tabela -----------------------------------------------}

procedure FiltrarExamesCob(vfCampoFil: String; vfOperador: String; vfParametro:
                           String; vfOrdem: String; vfLimite: String);
begin
  dmFinanceiro.qyExamesCob.Close;
  dmFinanceiro.qyExamesCob.SQL.Clear;
  dmFinanceiro.qyExamesCob.SQL.Add('select ' + ctCampos + ' from ' + ctTabelas + ' where ');
  dmFinanceiro.qyExamesCob.SQL.Add(vfCampoFil + ' ' + vfOperador + ' ');
  dmFinanceiro.qyExamesCob.SQL.Add(QuotedStr(vfParametro));
  if vfOrdem <> '0' then
    dmFinanceiro.qyExamesCob.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmFinanceiro.qyExamesCob.SQL.Add(' limit ' + vfLimite);
  dmFinanceiro.qyExamesCob.Open;
end;

{--- Insere  novo registro na tabela ------------------------------------------}

procedure InsExamesCobNew(vfExaId: String);
begin
  if dmFinanceiro.qyExamesCob.Active = false then
    dmFinanceiro.qyExamesCob.Active := True;
  InsExamesCob;
  dmFinanceiro.qyExamesCobexa_id.Text := vfExaId;
  dmFinanceiro.qyExamesCobeco_status.Value := false;
  dmFinanceiro.qyExamesCobeco_valor.Value := 0;
  dmFinanceiro.qyExamesCobhis_id.Value := 0;
  dmFinanceiro.qyExamesCobeco_gerarcob.Value := false;
  dmFinanceiro.qyExamesCobeco_vlrpago.Value := 0;
  PostExamesCob;
end;

{--- Atualiza valor total da cobranca -----------------------------------------}

procedure UpdVlrExamesCob(vfExaId: String; vfValor: real);
begin
  try
    FiltrarExamesCob('exa_id', '=', vfExaId, '0', '1');
    if not(dmFinanceiro.qyExamesCobexa_id.IsNull) then
    begin
      dmFinanceiro.qyExamesCob.Edit;
      dmFinanceiro.qyExamesCobeco_valor.Value := vfValor;
      dmFinanceiro.qyExamesCob.Post;
    end
    else
      InsExamesCobNew(vfExaId);
  except
    on E: Exception do
    begin
      MessageDlg('Erro ao gravar as alterações do controle de cobrança!' + #13#10 +
      E.Message, mtError, [mbOk], 0);
    end;
  end;
end;

{--- Atualiza examescob para aparecer na geração de cobrança ------------------}

procedure ConcExamesCob(vfExaId: String);
begin
  FiltrarExamesCob('exa_id', '=', vfExaId, '0', '1');
  if not dmFinanceiro.qyExamesCobexa_id.IsNull then
  begin
    dmFinanceiro.qyExamesCob.Edit;
    dmFinanceiro.qyExamesCobhis_id.Value := 0;
    dmFinanceiro.qyExamesCob.Post;
  end;
end;

procedure BackExamesCob(vfHisId: String);
begin
  dmFinanceiro.ScriptCob.SQL.Clear;
  dmFinanceiro.ScriptCob.SQL.Add('update examescob set eco_status = false where his_id = ' + vfHisId);
  dmFinanceiro.ScriptCob.ExecSQL;
  dmFinanceiro.ScriptCob.SQL.Clear;
  dmFinanceiro.ScriptCob.SQL.Add('update examescob set eco_gerarcob = false where his_id = ' + vfHisId);
  dmFinanceiro.ScriptCob.ExecSQL;
  dmFinanceiro.ScriptCob.SQL.Clear;
  dmFinanceiro.ScriptCob.SQL.Add('update examescob set his_id = 0 where his_id = ' + vfHisId);
  dmFinanceiro.ScriptCob.ExecSQL;
end;

procedure UpdateTotais(vfExaId: String);
begin
  //
end;

end.