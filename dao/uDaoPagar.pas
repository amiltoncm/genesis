unit uDaoPagar;

interface

uses
  Windows, Messages, SysUtils, Classes, Dialogs, StdCtrls, Forms,
  Graphics, Controls, DB,  uClassPagar;

procedure SetValuesPagar(vfPagar: TPagar);
procedure InsPagar;
procedure EdtPagar;
procedure PostPagar;
procedure ListarPagar(vfOrdem: String; vfLimite: String);
procedure FiltrarPagar(vfCampoFil: String; vfOperador: String; vfParametro:
		                   String; vfOrdem: String; vfLimite: String);
procedure RelPagar(vfDataInic: String; vfDatafin: String; vfStatus: String);
procedure LimparConsPagar;
procedure FiltrarConsPagar(vfCodFornecedor: String; vfStatus: String);

const
ctCampos = 'p.pag_vencimento, p.for_codigo, f.for_razao, f.for_fone, ' +
           'p.pag_nf, p.pag_parcela, p.pag_emissao, p.pag_valor, p.pag_acrescimo, ' +
           'p.pag_desconto, p.pag_pago, p.pag_saldo, p.pag_status ';
ctTabelas = 'pagar p, fornecedores f';

implementation

uses dataFinanceiro, dataConsultas;

{--- Seta algum valor na tabela -----------------------------------------------}

procedure SetValuesPagar(vfPagar: TPagar);
begin
  dmFinanceiro.qyPagarpag_vencimento.Value := vfPagar.Vencimento;
  dmFinanceiro.qyPagarfor_codigo.Value := vfPagar.CodFornecedor;
  //dmFinanceiro.qyPagarfor_razao.Value := ;
  //dmFinanceiro.qyPagarfor_fone.Value := ;
  dmFinanceiro.qyPagarpag_nf.Value := vfPagar.Nf;
  dmFinanceiro.qyPagarpag_parcela.Value := vfPagar.Parcela;
  dmFinanceiro.qyPagarpag_emissao.Value := vfPagar.Emissao;
  dmFinanceiro.qyPagarpag_valor.Value := vfPagar.Valor;
  dmFinanceiro.qyPagarpag_acrescimo.Value := vfPagar.Acrescimo;
  dmFinanceiro.qyPagarpag_desconto.Value := vfPagar.Desconto;
  dmFinanceiro.qyPagarpag_pago.Value := vfPagar.Pago;
  dmFinanceiro.qyPagarpag_saldo.Value := vfPagar.Saldo;
  dmFinanceiro.qyPagarpag_status.Value := vfPagar.Status;
end;

{--- Coloca a tabela em insert  -----------------------------------------------}

procedure InsPagar;
begin
  dmFinanceiro.qyPagar.Insert;
  dmFinanceiro.qyPagarpag_vencimento.Value := now;
  dmFinanceiro.qyPagarpag_emissao.Value := now;
  dmFinanceiro.qyPagarpag_parcela.Value := 1;
  dmFinanceiro.qyPagarpag_acrescimo.Value := 0;
  dmFinanceiro.qyPagarpag_desconto.Value := 0;
  dmFinanceiro.qyPagarpag_pago.Value := 0;
  dmFinanceiro.qyPagarpag_status.Text := 'A';
end;

{--- Coloca a tabela em edit inserindo algum valor ----------------------------}

procedure EdtPagar;
begin
  dmFinanceiro.qyPagar.Edit;
end;

{--- Dá um post na tabela -----------------------------------------------------}

procedure PostPagar;
begin
  try
    dmFinanceiro.qyPagar.Post;
  except
    on E: Exception do
    begin
      MessageDlg('Erro ao gravar Alteração / Inserção!' + #13 +
          E.Message,mtError,[mbOk],0);
      dmFinanceiro.qyPagar.Refresh;
    end;
  end;
end;

{--- Lista todos os registros da tabela ---------------------------------------}

procedure ListarPagar(vfOrdem: String; vfLimite: String);
begin
  dmFinanceiro.qyPagar.Close;
  dmFinanceiro.qyPagar.SQL.Clear;
  dmFinanceiro.qyPagar.SQL.Add('select '+ ctCampos + ' from ' + ctTabelas);
  dmFinanceiro.qyPagar.SQL.Add(' where p.for_codigo = f.for_codigo ');
  if vfOrdem <> '0' then
    dmFinanceiro.qyPagar.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmFinanceiro.qyPagar.SQL.Add(' limit ' + vfLimite);
  dmFinanceiro.qyPagar.Open;
end;

{--- Filtra registros da tabela -----------------------------------------------}

procedure FiltrarPagar(vfCampoFil: String; vfOperador: String; vfParametro:
		     String; vfOrdem: String; vfLimite: String);
begin
  dmFinanceiro.qyPagar.Close;
  dmFinanceiro.qyPagar.SQL.Clear;
  dmFinanceiro.qyPagar.SQL.Add('select ' + ctCampos + ' from ' + ctTabelas);
  dmFinanceiro.qyPagar.SQL.Add(' where p.for_codigo = f.for_codigo and ');
  dmFinanceiro.qyPagar.SQL.Add(vfCampoFil + ' ' + vfOperador + ' ');
  dmFinanceiro.qyPagar.SQL.Add(QuotedStr(vfParametro));
  if vfOrdem <> '0' then
    dmFinanceiro.qyPagar.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmFinanceiro.qyPagar.SQL.Add(' limit ' + vfLimite);
  dmFinanceiro.qyPagar.Open;
end;

{--- Filtro para relatório contas a pagar / pagas -----------------------------}

procedure RelPagar(vfDataInic: String; vfDatafin: String; vfStatus: String);
begin
  dmFinanceiro.qyPagar.Close;
  dmFinanceiro.qyPagar.SQL.Clear;
  dmFinanceiro.qyPagar.SQL.Add('select ' + ctCampos + ' from ' + ctTabelas);
  dmFinanceiro.qyPagar.SQL.Add(' where p.for_codigo = f.for_codigo and ');
  dmFinanceiro.qyPagar.SQL.Add('p.pag_vencimento >= ');
  dmFinanceiro.qyPagar.SQL.Add(QuotedStr(vfDataInic));
  dmFinanceiro.qyPagar.SQL.Add(' and p.pag_vencimento <= ');
  dmFinanceiro.qyPagar.SQL.Add(QuotedStr(vfDatafin));
  dmFinanceiro.qyPagar.SQL.Add(' and p.pag_status = ');
  dmFinanceiro.qyPagar.SQL.Add(QuotedStr(vfStatus));
  dmFinanceiro.qyPagar.SQL.Add(' order by p.pag_vencimento');
  dmFinanceiro.qyPagar.Open;
end;

{--- Filtro para consulta contas a pagar / pagas ------------------------------}

procedure LimparConsPagar;
begin
  dmConsultas.qyConsPagar.Close;
  dmConsultas.qyConsPagar.SQL.Clear;
  dmConsultas.qyConsPagar.SQL.Add('select pag_nf, pag_parcela, for_codigo, pag_emissao, ');
  dmConsultas.qyConsPagar.SQL.Add('pag_vencimento, pag_valor, pag_acrescimo, pag_desconto, ');
  dmConsultas.qyConsPagar.SQL.Add('pag_pago, pag_saldo, pag_status from pagar ');
  dmConsultas.qyConsPagar.SQL.Add('where pag_status = ');
  dmConsultas.qyConsPagar.SQL.Add(QuotedStr('A'));
  dmConsultas.qyConsPagar.SQL.Add('order by pag_vencimento');
  dmConsultas.qyConsPagar.Open;
end;

{--- Filtro para consulta contas a pagar / pagas por fornecedor ---------------}

procedure FiltrarConsPagar(vfCodFornecedor: String; vfStatus: String);
begin
  dmConsultas.qyConsPagar.Close;
  dmConsultas.qyConsPagar.SQL.Clear;
  dmConsultas.qyConsPagar.SQL.Add('select pag_nf, pag_parcela, for_codigo, pag_emissao, ');
  dmConsultas.qyConsPagar.SQL.Add('pag_vencimento, pag_valor, pag_acrescimo, pag_desconto, ');
  dmConsultas.qyConsPagar.SQL.Add('pag_pago, pag_saldo, pag_status from pagar ');
  dmConsultas.qyConsPagar.SQL.Add('where pag_nf > ');
  dmConsultas.qyConsPagar.SQL.Add(QuotedStr('0'));
  if vfCodFornecedor <> '0' then
  begin
    dmConsultas.qyConsPagar.SQL.Add(' and for_codigo = ');
    dmConsultas.qyConsPagar.SQL.Add(QuotedStr(vfCodFornecedor));
  end;
  if vfStatus <> 'T' then
  begin
    if vfStatus = 'A' then
    begin
      dmConsultas.qyConsPagar.SQL.Add(' and pag_status = ');
      dmConsultas.qyConsPagar.SQL.Add(QuotedStr('A'));
    end;
    if vfStatus = 'P' then
    begin
      dmConsultas.qyConsPagar.SQL.Add(' and pag_status = ');
      dmConsultas.qyConsPagar.SQL.Add(QuotedStr('P'));
    end;
  end;
  dmConsultas.qyConsPagar.SQL.Add('order by pag_vencimento');
  dmConsultas.qyConsPagar.Open;
end;

end.
