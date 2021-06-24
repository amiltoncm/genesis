unit uDaoReceber;

interface

uses
  Windows, Messages, SysUtils, Classes, Dialogs, StdCtrls, Forms,
  Graphics, Controls, DB, uClassReceber;

procedure SetValuesReceber(vfReceber: TReceber);
procedure InsReceber;
procedure EdtReceber;
procedure PostReceber;
procedure ListarReceber(vfOrdem: String; vfLimite: String);
procedure FiltrarReceber(vfCampoFil: String; vfOperador: String; vfParametro:
		                     String; vfOrdem: String; vfLimite: String);
procedure RelReceber(vfDataInic: String; vfDataFinal: String; vfStatus: String);
procedure FiltrarAltReceber(vfCobranca: String; vfID: String; vfCodCliente: String);
procedure ListarConsReceber(vfStatus: String; vfOrdem: String; vfLimite: String);
procedure FiltrarConsReceber(vfHisID: String);
procedure FiltrarConsReceberPar(vfNome: String; vfStatus: String);

const
ctCampos = 'r.rec_codigo, r.rec_emissao, r.rec_vencimento, r.cov_codigo, c.cov_descricao, ' +
           'r.rec_codcliente, r.rec_nome, r.rec_valor, r.rec_acrescimo, r.rec_desconto, ' +
           'r.rec_pago, r.rec_saldo, r.rec_status, r.his_id, r.cob_codigo ';
ctTabelas = 'receber r, convenios c';

implementation

uses dataFinanceiro, dataLookups, uFuncoesDB, dataConsultas;

{--- Seta algum valor na tabela -----------------------------------------------}

procedure SetValuesReceber(vfReceber: TReceber);
begin
  dmFinanceiro.qyReceberrec_codigo.Value := vfReceber.Codigo;
  dmFinanceiro.qyReceberrec_emissao.Value := vfReceber.Emissao;
  dmFinanceiro.qyReceberrec_vencimento.Value := vfReceber.Vencimento;
  dmFinanceiro.qyRecebercov_codigo.Value := vfReceber.CodConvenio;
  dmFinanceiro.qyReceberrec_codcliente.Value := vfReceber.CodCliente;
  dmFinanceiro.qyReceberrec_nome.Text := vfReceber.Nome;
  dmFinanceiro.qyReceberrec_valor.Value := vfReceber.Valor;
  dmFinanceiro.qyReceberrec_acrescimo.Value := vfReceber.Acrescimo;
  dmFinanceiro.qyReceberrec_desconto.Value := vfReceber.Desconto;
  dmFinanceiro.qyReceberrec_pago.Value := vfReceber.Pago;
  dmFinanceiro.qyReceberrec_saldo.Value := vfReceber.Saldo;
  dmFinanceiro.qyReceberrec_status.Value := vfReceber.Status;
  dmFinanceiro.qyReceberhis_id.Value := vfReceber.IdHist;
  dmFinanceiro.qyRecebercob_codigo.Value := vfReceber.CodCob;
end;

{--- Coloca a tabela em insert  -----------------------------------------------}

procedure InsReceber;
begin
  dmFinanceiro.qyReceber.Insert;
  dmFinanceiro.qyReceberrec_acrescimo.Value := 0;
  dmFinanceiro.qyReceberrec_desconto.Value := 0;
end;

{--- Coloca a tabela em edit inserindo algum valor ----------------------------}

procedure EdtReceber;
begin
  dmFinanceiro.qyReceber.Edit;
end;

{--- Dá um post na tabela -----------------------------------------------------}

procedure PostReceber;
begin
  try
    if dmFinanceiro.qyReceber.State in [dsInsert] then
      dmFinanceiro.qyReceberrec_codigo.Value := GetCodigo('rec_codigo', 'receber');
    dmFinanceiro.qyReceber.Post;
  except
    on E: Exception do
    begin
      MessageDlg('Erro ao gravar Alteração / Inserção!' + #13 +
          E.Message,mtError,[mbOk],0);
      dmFinanceiro.qyReceber.Refresh;
    end;
  end;
end;

{--- Lista todos os registros da tabela ---------------------------------------}

procedure ListarReceber(vfOrdem: String; vfLimite: String);
begin
  dmFinanceiro.qyReceber.Close;
  dmFinanceiro.qyReceber.SQL.Clear;
  dmFinanceiro.qyReceber.SQL.Add('select '+ ctCampos + ' from ' + ctTabelas);
  dmFinanceiro.qyReceber.SQL.Add(' where r.cov_codigo = c.cov_codigo ');
  if vfOrdem <> '0' then
    dmFinanceiro.qyReceber.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmFinanceiro.qyReceber.SQL.Add(' limit ' + vfLimite);
  dmFinanceiro.qyReceber.Open;
end;

{--- Filtra registros da tabela -----------------------------------------------}

procedure FiltrarReceber(vfCampoFil: String; vfOperador: String; vfParametro:
                		     String; vfOrdem: String; vfLimite: String);
begin
  dmFinanceiro.qyReceber.Close;
  dmFinanceiro.qyReceber.SQL.Clear;
  dmFinanceiro.qyReceber.SQL.Add('select ' + ctCampos + ' from ' + ctTabelas);
  dmFinanceiro.qyReceber.SQL.Add(' where r.cov_codigo = c.cov_codigo and ');
  dmFinanceiro.qyReceber.SQL.Add(vfCampoFil + ' ' + vfOperador + ' ');
  dmFinanceiro.qyReceber.SQL.Add(QuotedStr(vfParametro));
  if vfOrdem <> '0' then
    dmFinanceiro.qyReceber.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmFinanceiro.qyReceber.SQL.Add(' limit ' + vfLimite);
  dmFinanceiro.qyReceber.Open;
end;

{--- Relatório de contas à receber / recebidas --------------------------------}

procedure RelReceber(vfDataInic: String; vfDataFinal: String; vfStatus: String);
begin
  dmFinanceiro.qyReceber.Close;
  dmFinanceiro.qyReceber.SQL.Clear;
  dmFinanceiro.qyReceber.SQL.Add('select ' + ctCampos + ' from ' + ctTabelas);
  dmFinanceiro.qyReceber.SQL.Add(' where r.cov_codigo = c.cov_codigo and ');
  dmFinanceiro.qyReceber.SQL.Add('r.rec_vencimento >=');
  dmFinanceiro.qyReceber.SQL.Add(QuotedStr(vfDataInic));
  dmFinanceiro.qyReceber.SQL.Add(' and r.rec_vencimento <= ');
  dmFinanceiro.qyReceber.SQL.Add(QuotedStr(vfDataFinal));
  dmFinanceiro.qyReceber.SQL.Add(' and r.rec_status = ');
  dmFinanceiro.qyReceber.SQL.Add(QuotedStr(vfStatus));
  dmFinanceiro.qyReceber.SQL.Add(' order by r.rec_vencimento');
  dmFinanceiro.qyReceber.Open;
end;

{--- Filtra na baixa de contas a receber --------------------------------------}

procedure FiltrarAltReceber(vfCobranca: String; vfID: String; vfCodCliente: String);
Var
vCodCliente: String;
begin
  dmFinanceiro.qyReceber.Close;
  dmFinanceiro.qyReceber.SQL.Clear;
  dmFinanceiro.qyReceber.SQL.Add('select ' + ctCampos + ' from ' + ctTabelas );
  dmFinanceiro.qyReceber.SQL.Add(' where r.cov_codigo = c.cov_codigo ');
  dmFinanceiro.qyReceber.SQL.Add(' and r.rec_status = ');
  dmFinanceiro.qyReceber.SQL.Add(QuotedStr('A'));
  if vfCobranca = '002' then //Convênio paga
  begin
    dmFinanceiro.qyReceber.SQL.Add(' and r.cob_codigo = ');
    dmFinanceiro.qyReceber.SQL.Add(QuotedStr('2'));
    vCodCliente := dmLookups.lkProcConvenioscov_codigo.Text;
  end;
  if vfCobranca = '000' then //Paciente paga
  begin
    dmFinanceiro.qyReceber.SQL.Add(' and r.cob_codigo = ');
    dmFinanceiro.qyReceber.SQL.Add(QuotedStr('0'));
    vCodCliente := dmLookups.lkProcPacientespac_codigo.Text;
  end;
  if vfCobranca = '001' then //Médico paga
  begin
    dmFinanceiro.qyReceber.SQL.Add(' and r.cob_codigo = ');
    dmFinanceiro.qyReceber.SQL.Add(QuotedStr('1'));
    vCodCliente := dmLookups.lkProcMedicosmed_codigo.Text;
  end;
  //Filtra cobrança específica
  if (vfID <> '0') then
  begin
    dmFinanceiro.qyReceber.SQL.Add(' and r.his_id = ');
    dmFinanceiro.qyReceber.SQL.Add(vfID);
  end;
  if vCodCliente <> '0' then
  begin
    dmFinanceiro.qyReceber.SQL.Add(' and r.rec_codcliente = ');
    dmFinanceiro.qyReceber.SQL.Add(QuotedStr(vCodCliente));
  end;
  dmFinanceiro.qyReceber.SQL.Add(' order by r.rec_vencimento');
  dmFinanceiro.qyReceber.Open;
end;

procedure ListarConsReceber(vfStatus: String; vfOrdem: String; vfLimite: String);
begin
  dmConsultas.qyConsReceber.Close;
  dmConsultas.qyConsReceber.SQL.Clear;
  dmConsultas.qyConsReceber.SQL.Add('select rec_codigo, rec_emissao, rec_vencimento, ');
  dmConsultas.qyConsReceber.SQL.Add('cov_codigo, rec_codcliente, rec_nome, rec_valor, ');
  dmConsultas.qyConsReceber.SQL.Add('rec_acrescimo, rec_desconto, rec_pago, rec_saldo, ');
  dmConsultas.qyConsReceber.SQL.Add('rec_status, his_id, cob_codigo from receber ');
  if vfStatus <> 'T' then
  begin
    dmConsultas.qyConsReceber.SQL.Add('where rec_status = ');
    dmConsultas.qyConsReceber.SQL.Add(QuotedStr(vfStatus));
  end;
  if vfOrdem <> '0' then
    dmConsultas.qyConsReceber.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmConsultas.qyConsReceber.SQL.Add(' limit ' + vfLimite);
  dmConsultas.qyConsReceber.Open;
end;

procedure FiltrarConsReceber(vfHisID: String);
begin
  dmConsultas.qyConsReceber.Close;
  dmConsultas.qyConsReceber.SQL.Clear;
  dmConsultas.qyConsReceber.SQL.Add('select rec_codigo, rec_emissao, rec_vencimento, ');
  dmConsultas.qyConsReceber.SQL.Add('cov_codigo, rec_codcliente, rec_nome, rec_valor, ');
  dmConsultas.qyConsReceber.SQL.Add('rec_acrescimo, rec_desconto, rec_pago, rec_saldo, ');
  dmConsultas.qyConsReceber.SQL.Add('rec_status, his_id, cob_codigo');
  dmConsultas.qyConsReceber.SQL.Add('from receber where his_id = ');
  dmConsultas.qyConsReceber.SQL.Add(QuotedStr(vfHisID));
  dmConsultas.qyConsReceber.Open;
end;

procedure FiltrarConsReceberPar(vfNome: String; vfStatus: String);
begin
  dmConsultas.qyConsReceber.Close;
  dmConsultas.qyConsReceber.SQL.Clear;
  dmConsultas.qyConsReceber.SQL.Add('select rec_codigo, rec_emissao, rec_vencimento, ');
  dmConsultas.qyConsReceber.SQL.Add('cov_codigo, rec_codcliente, rec_nome, rec_valor, ');
  dmConsultas.qyConsReceber.SQL.Add('rec_acrescimo, rec_desconto, rec_pago, rec_saldo, ');
  dmConsultas.qyConsReceber.SQL.Add('rec_status, his_id, cob_codigo');
  dmConsultas.qyConsReceber.SQL.Add('from receber where rec_nome like ');
  dmConsultas.qyConsReceber.SQL.Add(QuotedStr(vfNome + '%'));
  if vfStatus <> 'T' then
  begin
      dmConsultas.qyConsReceber.SQL.Add(' and rec_status = ');
      dmConsultas.qyConsReceber.SQL.Add(QuotedStr(vfStatus));
  end;
  dmConsultas.qyConsReceber.SQL.Add(' order by rec_vencimento, rec_codigo');
  dmConsultas.qyConsReceber.Open;
end;

end.
