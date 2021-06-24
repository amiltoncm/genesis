unit uDaoCheques;

interface

uses
  Windows, Messages, SysUtils, Classes, Dialogs, StdCtrls, Forms,
  Graphics, Controls, DB, uClassCheques;

procedure SetValuesCheques(vfCheque: TCheques);
procedure InsCheques;
procedure EdtCheques;
procedure PostCheques;
procedure ListarCheques(vfOrdem: String; vfLimite: String);
procedure FiltrarCheques(vfCampoFil: String; vfOperador: String; vfParametro:
		      String; vfOrdem: String; vfLimite: String);
procedure FiltrarConsCheques(vfTitular: String; vfDataInic: String; vfDataFinal:
          String; vfStatus: String);
procedure BaixarCheque(vfRepasse: String);

const
ctCampos = 'c.chq_lancamento, c.ban_codigo, b.ban_descricao, c.chq_conta, ' +
           'c.chq_numcheque, c.chq_emissao, c.chq_vencimento, c.chq_titular, ' +
           'c.chq_endosso, c.chq_valor, c.chq_referente, c.chq_telefone, ' +
           'c.chq_doc, c.chq_repasse, c.chq_estado';
ctTabelas = 'cheques c, bancos b';

implementation

uses dataFinanceiro, uFuncoesDB;

{--- Seta valores via objeto --------------------------------------------------}

procedure SetValuesCheques(vfCheque: TCheques);
begin
  dmFinanceiro.qyChequeschq_lancamento.Value := vfCheque.Chq_lancamento;
  dmFinanceiro.qyChequesban_codigo.Value := vfCheque.Ban_codigo;
  dmFinanceiro.qyChequeschq_conta.Value := vfCheque.Chq_conta;
  dmFinanceiro.qyChequeschq_numcheque.Value := vfCheque.Chq_numcheque;
  dmFinanceiro.qyChequeschq_emissao.Value := vfCheque.Chq_emissao;
  dmFinanceiro.qyChequeschq_vencimento.Value := vfCheque.Chq_vencimento;
  dmFinanceiro.qyChequeschq_titular.Value := vfCheque.Chq_titular;
  dmFinanceiro.qyChequeschq_endosso.Value := vfCheque.Chq_endosso;
  dmFinanceiro.qyChequeschq_valor.Value := vfCheque.Chq_valor;
  dmFinanceiro.qyChequeschq_referente.Value := vfCheque.Chq_referente;
  dmFinanceiro.qyChequeschq_telefone.Value := vfCheque.Chq_telefone;
  dmFinanceiro.qyChequeschq_doc.Value := vfCheque.Chq_doc;
  dmFinanceiro.qyChequeschq_repasse.Value := vfCheque.Chq_Repasse;
  dmFinanceiro.qyChequeschq_estado.Value := vfCheque.Chq_estado;
end;

{--- Coloca a tabela em insert  -----------------------------------------------}

procedure InsCheques;
begin
  dmFinanceiro.qyCheques.Insert;
end;

{--- Coloca a tabela em edit inserindo algum valor ----------------------------}

procedure EdtCheques;
begin
  dmFinanceiro.qyCheques.Edit;
end;

{--- Dá um post na tabela -----------------------------------------------------}

procedure PostCheques;
begin
  try
    if dmFinanceiro.qyCheques.State in [dsInsert] then
      dmFinanceiro.qyChequeschq_lancamento.Value := GetCodigo('chq_lancamento', 'cheques');
    dmFinanceiro.qyCheques.Post;
  except
    on E: Exception do
    begin
      MessageDlg('Erro ao gravar Alteração / Inserção!' + #13 +
          E.Message,mtError,[mbOk],0);
      dmFinanceiro.qyCheques.Refresh;
    end;
  end;
end;

{--- Lista todos os registros da tabela ---------------------------------------}

procedure ListarCheques(vfOrdem: String; vfLimite: String);
begin
  dmFinanceiro.qyCheques.Close;
  dmFinanceiro.qyCheques.SQL.Clear;
  dmFinanceiro.qyCheques.SQL.Add('select '+ ctCampos + ' from ' + ctTabelas);
  dmFinanceiro.qyCheques.SQL.Add(' where c.ban_codigo = b.ban_codigo ');
  if vfOrdem <> '0' then
    dmFinanceiro.qyCheques.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmFinanceiro.qyCheques.SQL.Add(' limit ' + vfLimite);
  dmFinanceiro.qyCheques.Open;
end;

{--- Filtra registros da tabela -----------------------------------------------}

procedure FiltrarCheques(vfCampoFil: String; vfOperador: String; vfParametro:
		     String; vfOrdem: String; vfLimite: String);
begin
  dmFinanceiro.qyCheques.Close;
  dmFinanceiro.qyCheques.SQL.Clear;
  dmFinanceiro.qyCheques.SQL.Add('select ' + ctCampos + ' from ' + ctTabelas);
  dmFinanceiro.qyCheques.SQL.Add(' where c.ban_codigo = b.ban_codigo and ');
  dmFinanceiro.qyCheques.SQL.Add(vfCampoFil + ' ' + vfOperador + ' ');
  dmFinanceiro.qyCheques.SQL.Add(QuotedStr(vfParametro));
  if vfOrdem <> '0' then
    dmFinanceiro.qyCheques.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmFinanceiro.qyCheques.SQL.Add(' limit ' + vfLimite);
  dmFinanceiro.qyCheques.Open;
end;

procedure FiltrarConsCheques(vfTitular: String; vfDataInic: String; vfDataFinal:
          String; vfStatus: String);
begin
  dmFinanceiro.qyCheques.Close;
  dmFinanceiro.qyCheques.SQL.Clear;
  dmFinanceiro.qyCheques.SQL.Add('select ' + ctCampos + ' from ' + ctTabelas);
  dmFinanceiro.qyCheques.SQL.Add(' where c.ban_codigo = b.ban_codigo and ');
  dmFinanceiro.qyCheques.SQL.Add('c.chq_titular like ' + QuotedStr(vfTitular + '%'));
  if vfDataInic <> '0' then
  begin
    dmFinanceiro.qyCheques.SQL.Add(' and c.chq_vencimento >= ');
    dmFinanceiro.qyCheques.SQL.Add(QuotedStr(vfDataInic));
  end;
  if vfDataInic <> '0' then
  begin
    dmFinanceiro.qyCheques.SQL.Add(' and c.chq_vencimento <= ');
    dmFinanceiro.qyCheques.SQL.Add(QuotedStr(vfDataFinal));
  end;
  if vfStatus <> 'T' then
  begin
    dmFinanceiro.qyCheques.SQL.Add(' and c.chq_estado = ');
    dmFinanceiro.qyCheques.SQL.Add(QuotedStr(vfStatus));
  end;
  dmFinanceiro.qyCheques.Open;
end;

{--- Baixar cheque ------------------------------------------------------------}

procedure BaixarCheque(vfRepasse: String);
begin
  EdtCheques;
  dmFinanceiro.qyChequeschq_repasse.Text := vfRepasse;
  dmFinanceiro.qyChequeschq_estado.Text := 'C';
  PostCheques;
end;

end.
