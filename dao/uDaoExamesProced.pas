unit uDaoExamesProced;

interface

uses
  Windows, Messages, SysUtils, Classes, Dialogs, StdCtrls, Forms,
  Graphics, Controls, DB, uClassExamesProced;

procedure ListarExamesProced(vfOrdem: String; vfLimite: String);
procedure FiltrarExamesProced(vfCampoFil: String; vfOperador: String; vfParametro:
		     String; vfOrdem: String; vfLimite: String);
procedure InsExamesProced(vfExame: String; vfPrcTuss: integer; vfQuant: integer;
                          vfCodConvenio: integer; vfVlrTuss: real);
procedure SetValuesExamesProced(vfExamesProced: TExamesProced);
function AtualizaTotalProced(vfIDExame: String): real;
function GetProcDesc(vfIDProced: String): String;

const
  ctCampos = 'e.exp_id, e.exa_id, e.prc_tuss, p.prc_descricao, e.exp_quant, ' +
              'e.exp_unitario, e.exp_total';
  ctTabelas = 'examesproced e, procedimentos p';

implementation

uses dataExames, uDaoConvProc, uFuncoesDB, uDaoProcedimentos;

{--- Lista todos os registros da tabela ---------------------------------------}

procedure ListarExamesProced(vfOrdem: String; vfLimite: String);
begin
  dmExames.qyExamesProced.Close;
  dmExames.qyExamesProced.SQL.Clear;
  dmExames.qyExamesProced.SQL.Add('select '+ ctCampos + ' from ' + ctTabelas +
                                  ' where e.prc_tuss = p.prc_tuss ');
  if vfOrdem <> '0' then
    dmExames.qyExamesProced.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmExames.qyExamesProced.SQL.Add(' limit ' + vfLimite);
  dmExames.qyExamesProced.Open;
end;

{--- Filtra registros da tabela -----------------------------------------------}

procedure FiltrarExamesProced(vfCampoFil: String; vfOperador: String; vfParametro:
		     String; vfOrdem: String; vfLimite: String);
begin
  dmExames.qyExamesProced.Close;
  dmExames.qyExamesProced.SQL.Clear;
  dmExames.qyExamesProced.SQL.Add('select ' + ctCampos + ' from ' + ctTabelas +
                                  ' where e.prc_tuss = p.prc_tuss and ');
  dmExames.qyExamesProced.SQL.Add(vfCampoFil + ' ' + vfOperador + ' ');
  dmExames.qyExamesProced.SQL.Add(QuotedStr(vfParametro));
  if vfOrdem <> '0' then
    dmExames.qyExamesProced.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmExames.qyExamesProced.SQL.Add(' limit ' + vfLimite);
  dmExames.qyExamesProced.Open;
end;

{--- Insere registros da tabela -----------------------------------------------}

procedure InsExamesProced(vfExame: String; vfPrcTuss: integer; vfQuant: integer;
                          vfCodConvenio: integer; vfVlrTuss: real);
begin
  try
    dmExames.qyExamesProced.Insert;
    dmExames.qyExamesProcedexp_id.Value := GetCodigo('exp_id', 'examesproced');
    dmExames.qyExamesProcedexa_id.Text := vfExame;
    dmExames.qyExamesProcedprc_tuss.Value := vfPrcTuss;
    dmExames.qyExamesProcedexp_quant.Value := vfQuant;
    //Busca valor do procedimento
    if vfCodConvenio > 1 then
    begin
      dmExames.qyExamesProcedexp_unitario.Value := GetVlrTotconvProc(vfCodConvenio, vfPrcTuss);
      if dmExames.qyExamesProcedexp_unitario.Value = 0 then
        dmExames.qyExamesProcedexp_unitario.Value := vfVlrTuss;
      dmExames.qyExamesProcedexp_total.Value := dmExames.qyExamesProcedexp_quant.Value *
                                                dmExames.qyExamesProcedexp_unitario.Value;
    end
    else
    begin
      if dmExames.qyExamesProcedexp_unitario.Value = 0 then
        dmExames.qyExamesProcedexp_unitario.Value := GetVlrProced(vfPrcTuss);
      dmExames.qyExamesProcedexp_total.Value := dmExames.qyExamesProcedexp_quant.Value *
                                                dmExames.qyExamesProcedexp_unitario.Value;
    end;
    dmExames.qyExamesProced.Post;
  except
    on E: Exception do
    Begin
      MessageDlg('Erro ao gravar Alteração / Inserção!' + #13#10 +
          E.Message,mtError,[mbOk],0);
      dmExames.qyExamesProced.Refresh;
    end;
  end;
end;

{--- Insere registros da tabela com origem em um objeto -----------------------}

procedure SetValuesExamesProced(vfExamesProced: TExamesProced);
begin
  try
    dmExames.qyExamesProced.Insert;
    if vfExamesProced.Exp_id = 0 then
      dmExames.qyExamesProcedexp_id.Value := GetCodigo('exp_id', 'examesproced')
    else
      dmExames.qyExamesProcedexp_id.Value := vfExamesProced.Exp_id;
    dmExames.qyExamesProcedexa_id.Value := vfExamesProced.Exa_id;
    dmExames.qyExamesProcedprc_tuss.Value := vfExamesProced.Prc_tuss;
    dmExames.qyExamesProcedprc_descricao.Text := vfExamesProced.Prc_descricao;
    dmExames.qyExamesProcedexp_quant.Value := vfExamesProced.Exp_quant;
    dmExames.qyExamesProcedexp_unitario.Value := vfExamesProced.Exp_unitario;
    dmExames.qyExamesProcedexp_total.Value := vfExamesProced.Exp_total;
    dmExames.qyExamesProced.Post;
  except
    on E: Exception do
    Begin
      MessageDlg('Erro ao gravar Alteração / Inserção!' + #13#10 +
          E.Message,mtError,[mbOk],0);
      dmExames.qyExamesProced.Refresh;
    end;
  end;
end;

function AtualizaTotalProced(vfIDExame: String): real;
begin
  dmExames.QTemp.Close;
  dmExames.QTemp.Sql.Clear;
  dmExames.QTemp.Sql.Add('select sum(exp_total) from examesproced where exa_id = ');
  dmExames.QTemp.Sql.Add(QuotedStr(vfIDExame));
  dmExames.QTemp.Open;
  if (dmExames.QTemp.Fields[0].IsNull) then
    Result := 0
  else
    Result := dmExames.QTemp.Fields[0].Value;
end;

function GetProcDesc(vfIDProced: String): String;
begin
  dmExames.QTemp.Close;
  dmExames.QTemp.SQL.Clear;
  dmExames.QTemp.SQL.Add('select prc_descricao from procedimentos where prc_tuss = ');
  dmExames.QTemp.SQL.Add(vfIDProced);
  dmExames.QTemp.Open;
  Result := dmExames.QTemp.Fields[0].Text;
end;

end.