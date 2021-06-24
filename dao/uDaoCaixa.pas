unit uDaoCaixa;

interface

uses
  Windows, Messages, SysUtils, Classes, Dialogs, StdCtrls, Forms,
  Graphics, Controls, DB, uClassCaixa;

procedure SetValuesCaixa(vfCaixa: TCaixa);
procedure InsCaixa;
procedure EdtCaixa;
procedure PostCaixa;
procedure ListarCaixa(vfOrdem: String; vfLimite: String);
procedure FiltrarCaixa(vfCampoFil: String; vfOperador: String; vfParametro:
		                   String; vfOrdem: String; vfLimite: String);
procedure FiltrarRelCaixa(vfDtInic: String; vfDtFinal: String; vfCodConta: String;
                          vfOrdem: String);

const
ctCampos = 'c.cai_codigo, c.cai_data, c.cai_descricao, c.cai_valor, ' +
           'c.mov_codigo, m.mov_descricao, m.mov_tipo,  c.con_codigo, ' +
           't.con_descricao, c.cai_referencia';
ctTabelas = 'caixa c, movimentos m, contas t';

implementation

uses dataFinanceiro, uFuncoesDB;

{--- Seta algum valor na tabela -----------------------------------------------}

procedure SetValuesCaixa(vfCaixa: TCaixa);
begin
  if dmFinanceiro.qyCaixa.State in [dsInsert] then
    dmFinanceiro.qyCaixacai_codigo.Value := GetCodigo('cai_codigo', 'caixa');
  dmFinanceiro.qyCaixacai_data.Value := vfCaixa.Cai_data;
  dmFinanceiro.qyCaixacai_descricao.Value := vfCaixa.Cai_descricao;
  dmFinanceiro.qyCaixacai_valor.Value := vfCaixa.Cai_valor;
  dmFinanceiro.qyCaixacai_referencia.Value := vfCaixa.Cai_referencia;
  dmFinanceiro.qyCaixamov_codigo.Value := vfCaixa.Mov_codigo;
  dmFinanceiro.qyCaixamov_descricao.Value := vfCaixa.Mov_descricao;
  dmFinanceiro.qyCaixacon_codigo.Value := vfCaixa.Con_codigo;
  dmFinanceiro.qyCaixacon_descricao.Value := vfCaixa.Con_descricao;
end;

{--- Coloca a tabela em insert  -----------------------------------------------}

procedure InsCaixa;
begin
  if dmFinanceiro.qyCaixa.Active = false then
    dmFinanceiro.qyCaixa.Active := True;
  dmFinanceiro.qyCaixa.Insert;
  dmFinanceiro.qyCaixacai_data.Value := now;
end;

{--- Coloca a tabela em edit inserindo algum valor ----------------------------}

procedure EdtCaixa;
begin
  dmFinanceiro.qyCaixa.Edit;
end;

{--- Dá um post na tabela -----------------------------------------------------}

procedure PostCaixa;
begin
  try
    if dmFinanceiro.qyCaixa.State in [dsInsert] then
      dmFinanceiro.qyCaixacai_codigo.Value := GetCodigo('cai_codigo', 'caixa');
    dmFinanceiro.qyCaixa.Post;
  except
    on E: Exception do
    begin
      MessageDlg('Erro ao gravar Alteração / Inserção!' + #13 +
          E.Message,mtError,[mbOk],0);
      dmFinanceiro.qyCaixa.Refresh;
    end;
  end;
end;

{--- Lista todos os registros da tabela ---------------------------------------}

procedure ListarCaixa(vfOrdem: String; vfLimite: String);
begin
  dmFinanceiro.qyCaixa.Close;
  dmFinanceiro.qyCaixa.SQL.Clear;
  dmFinanceiro.qyCaixa.SQL.Add('select '+ ctCampos + ' from ' + ctTabelas);
  dmFinanceiro.qyCaixa.SQL.Add(' where c.mov_codigo = m.mov_codigo ' +
                               'and c.con_codigo = t.con_codigo ');
  if vfOrdem <> '0' then
    dmFinanceiro.qyCaixa.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmFinanceiro.qyCaixa.SQL.Add(' limit ' + vfLimite);
  dmFinanceiro.qyCaixa.Open;
end;

{--- Filtra registros da tabela -----------------------------------------------}

procedure FiltrarCaixa(vfCampoFil: String; vfOperador: String; vfParametro:
		     String; vfOrdem: String; vfLimite: String);
begin
  dmFinanceiro.qyCaixa.Close;
  dmFinanceiro.qyCaixa.SQL.Clear;
  dmFinanceiro.qyCaixa.SQL.Add('select ' + ctCampos + ' from ' + ctTabelas);
  dmFinanceiro.qyCaixa.SQL.Add(' where c.mov_codigo = m.mov_codigo ' +
                               'and c.con_codigo = t.con_codigo and ');
  dmFinanceiro.qyCaixa.SQL.Add(vfCampoFil + ' ' + vfOperador + ' ');
  dmFinanceiro.qyCaixa.SQL.Add(QuotedStr(vfParametro));
  if vfOrdem <> '0' then
    dmFinanceiro.qyCaixa.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmFinanceiro.qyCaixa.SQL.Add(' limit ' + vfLimite);
  dmFinanceiro.qyCaixa.Open;
end;

{--- Filtra registros da tabela para relatório --------------------------------}

procedure FiltrarRelCaixa(vfDtInic: String; vfDtFinal: String; vfCodConta: String;
                          vfOrdem: String);
begin
  dmFinanceiro.qyCaixa.Close;
  dmFinanceiro.qyCaixa.SQL.Clear;
  dmFinanceiro.qyCaixa.SQL.Add('select ' + ctCampos + ' from ' + ctTabelas);
  dmFinanceiro.qyCaixa.SQL.Add(' where c.mov_codigo = m.mov_codigo ' +
                               'and c.con_codigo = t.con_codigo ');
  dmFinanceiro.qyCaixa.SQL.Add('and c.cai_data >= ');
  dmFinanceiro.qyCaixa.SQL.Add(QuotedStr(vfDtInic));
  dmFinanceiro.qyCaixa.SQL.Add(' and c.cai_data <= ');
  dmFinanceiro.qyCaixa.SQL.Add(QuotedStr(vfDtFinal));
  if vfCodConta <> '-1' then
  begin
    dmFinanceiro.qyCaixa.SQL.Add(' and c.con_codigo = ');
    dmFinanceiro.qyCaixa.SQL.Add(vfCodConta);
  end;
  dmFinanceiro.qyCaixa.SQL.Add(' order by ' + vfOrdem);
  dmFinanceiro.qyCaixa.Open;
end;

end.
