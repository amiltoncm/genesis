unit uDaoHistRec;

interface

uses
  Windows, Messages, SysUtils, Classes, Dialogs, StdCtrls, Forms,
  Graphics, Controls, DB, uClassHistRec;

procedure SetValuesHistRec(vfHistRec: THistRec);
procedure InsHistRec;
procedure EdtHistRec;
procedure PostHistRec;
procedure ListarHistRec(vfOrdem: String; vfLimite: String);
procedure FiltrarHistRec(vfCampoFil: String; vfOperador: String; vfParametro:
                         String; vfOrdem: String; vfLimite: String);
procedure FiltrarBaixa(vfID: String; vfBaixar: String; vfStatus: String);
procedure MarcarTodos(vfID: String);
procedure DesmarcarTodos(vfID: String);
procedure UpdateBaixarHistRec(vfID: String);
procedure ExcluirHistRec(vfRecCodigo: String);

const
ctCampos = 'h.his_id, h.his_item, h.his_data, h.exa_id, h.cov_codigo, c.cov_descricao, ' +
           'h.pac_codigo, p.pac_nome, h.his_valor, h.his_gercob, h.med_codigo, m.med_nome, ' +
           'h.his_status, h.his_baixar';

ctTabelas = 'histrec h, convenios c, pacientes p, medicos m';

implementation

uses dataFinanceiro, uFuncoesDB;

{--- Seta algum valor na tabela -----------------------------------------------}


procedure SetValuesHistRec(vfHistRec: THistRec);
begin
  dmFinanceiro.qyHistRechis_data.Value := vfHistRec.Data;
  dmFinanceiro.qyHistRecexa_id.Value := vfHistRec.ExaID;
  dmFinanceiro.qyHistReccov_codigo.Value := vfHistRec.IDConv;
  dmFinanceiro.qyHistRecpac_codigo.Value := vfHistRec.IDPac;
  dmFinanceiro.qyHistRechis_valor.Value := vfHistRec.Valor;
  dmFinanceiro.qyHistRechis_gercob.Value := vfHistRec.Gercob;
  dmFinanceiro.qyHistRecmed_codigo.Value := vfHistRec.IDMed;
  dmFinanceiro.qyHistRechis_status.Value := vfHistRec.Status;
  dmFinanceiro.qyHistRechis_baixar.Value := vfHistRec.Baixar;
end;

{--- Coloca a tabela em insert  -----------------------------------------------}

procedure InsHistRec;
begin
  dmFinanceiro.qyHistRec.Insert;
  dmFinanceiro.qyHistRechis_baixar.Value := 'N';
  dmFinanceiro.qyHistRechis_status.Value := 'N';
end;

{--- Coloca a tabela em edit inserindo algum valor ----------------------------}

procedure EdtHistRec;
begin
  dmFinanceiro.qyHistRec.Edit;
end;

{--- Dá um post na tabela -----------------------------------------------------}

procedure PostHistRec;
begin
  try
    dmFinanceiro.qyHistRec.Post;
  except
    on E: Exception do
    begin
      MessageDlg('Erro ao gravar Alteração / Inserção!' + #13 +
          E.Message,mtError,[mbOk],0);
      dmFinanceiro.qyHistRec.Refresh;
    end;
  end;
end;

{--- Lista todos os registros da tabela ---------------------------------------}

procedure ListarHistRec(vfOrdem: String; vfLimite: String);
begin
  dmFinanceiro.qyHistRec.Close;
  dmFinanceiro.qyHistRec.SQL.Clear;
  dmFinanceiro.qyHistRec.SQL.Add('select '+ ctCampos + ' from ' + ctTabelas);
  dmFinanceiro.qyHistRec.SQL.Add('where h.cov_codigo = c.cov_codigo ' +
                                 'and h.pac_codigo = p.pac_codigo ' +
                                 'and h.med_codigo = m.med_codigo');
  if vfOrdem <> '0' then
    dmFinanceiro.qyHistRec.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmFinanceiro.qyHistRec.SQL.Add(' limit ' + vfLimite);
  dmFinanceiro.qyHistRec.Open;
end;

{--- Filtra registros da tabela -----------------------------------------------}

procedure FiltrarHistRec(vfCampoFil: String; vfOperador: String; vfParametro:
		     String; vfOrdem: String; vfLimite: String);
begin
  dmFinanceiro.qyHistRec.Close;
  dmFinanceiro.qyHistRec.SQL.Clear;
  dmFinanceiro.qyHistRec.SQL.Add('select ' + ctCampos + ' from ' + ctTabelas);
  dmFinanceiro.qyHistRec.SQL.Add('where h.cov_codigo = c.cov_codigo ' +
                                 'and h.pac_codigo = p.pac_codigo ' +
                                 'and h.med_codigo = m.med_codigo and ');
  dmFinanceiro.qyHistRec.SQL.Add(vfCampoFil + ' ' + vfOperador + ' ');
  dmFinanceiro.qyHistRec.SQL.Add(QuotedStr(vfParametro));
  if vfOrdem <> '0' then
    dmFinanceiro.qyHistRec.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmFinanceiro.qyHistRec.SQL.Add(' limit ' + vfLimite);
  dmFinanceiro.qyHistRec.Open;
end;


{--- Filtra registros da tabela -----------------------------------------------}

procedure FiltrarBaixa(vfID: String; vfBaixar: String; vfStatus: String);
begin
  dmFinanceiro.qyHistRec.Close;
  dmFinanceiro.qyHistRec.SQL.Clear;
  dmFinanceiro.qyHistRec.SQL.Add('select ' + ctCampos + ' from ' + ctTabelas);
  dmFinanceiro.qyHistRec.SQL.Add('where h.cov_codigo = c.cov_codigo ' +
                                 'and h.pac_codigo = p.pac_codigo ' +
                                 'and h.med_codigo = m.med_codigo');
  dmFinanceiro.qyHistRec.SQL.Add(' and his_id = ');
  dmFinanceiro.qyHistRec.SQL.Add(QuotedStr(vfID));
  if vfBaixar <> '0' then
  begin
    dmFinanceiro.qyHistRec.SQL.Add('and his_baixar =  ');
    dmFinanceiro.qyHistRec.SQL.Add(QuotedStr(vfBaixar));
  end;
  dmFinanceiro.qyHistRec.SQL.Add('and his_status = ');
  dmFinanceiro.qyHistRec.SQL.Add(QuotedStr(vfStatus));
  dmFinanceiro.qyHistRec.SQL.Add(' order by his_item');
  dmFinanceiro.qyHistRec.Open;
  dmFinanceiro.qyHistRec.Refresh;
end;

{--- Marcar todos -------------------------------------------------------------}

procedure MarcarTodos(vfID: String);
begin
  dmFinanceiro.SQL_Upd_his_status.SQL.Clear;
  dmFinanceiro.SQL_Upd_his_status.SQL.Add('update histrec set his_baixar = ');
  dmFinanceiro.SQL_Upd_his_status.SQL.Add(QuotedStr('S'));
  dmFinanceiro.SQL_Upd_his_status.SQL.Add(' where his_id = ');
  dmFinanceiro.SQL_Upd_his_status.SQL.Add(QuotedStr(vfID));
  dmFinanceiro.SQL_Upd_his_status.ExecSQL;
end;

{--- Desmarcar todos-----------------------------------------------------------}

procedure DesmarcarTodos(vfID: String);
begin
  dmFinanceiro.SQL_Upd_his_status.SQL.Clear;
  dmFinanceiro.SQL_Upd_his_status.SQL.Add('update histrec set his_baixar = his_status');
  dmFinanceiro.SQL_Upd_his_status.SQL.Add(' where his_id = ');
  dmFinanceiro.SQL_Upd_his_status.SQL.Add(QuotedStr(vfID));
  dmFinanceiro.SQL_Upd_his_status.ExecSQL;
end;

{--- Baixar -------------------------------------------------------------------}

procedure UpdateBaixarHistRec(vfID: String);
begin
  dmFinanceiro.SQL_Upd_his_status.SQL.Clear;
  dmFinanceiro.SQL_Upd_his_status.SQL.Add('update histrec set his_status = his_baixar ');
  dmFinanceiro.SQL_Upd_his_status.SQL.Add(' where his_id = ');
  dmFinanceiro.SQL_Upd_his_status.SQL.Add(QuotedStr(vfID));
  dmFinanceiro.SQL_Upd_his_status.ExecSQL;
end;

procedure ExcluirHistRec(vfRecCodigo: String);
begin
  dmFinanceiro.ScriptCob.SQL.Clear;
  dmFinanceiro.ScriptCob.SQL.Add('delete from histrec where his_id = ' + vfRecCodigo);
  dmFinanceiro.ScriptCob.ExecSQL;
end;

end.
