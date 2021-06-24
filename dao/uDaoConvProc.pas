unit uDaoConvProc;

interface

uses
  Windows, Messages, SysUtils, Classes, Dialogs, StdCtrls, Forms,
  Graphics, Controls, DB, uClassConvProc;

procedure SetValuesConvProc(vfConvProc: TConvProc; vfTpMov: Integer);
procedure InsConvProc;
procedure EdtConvProc;
procedure PostConvProc;
procedure ListarConvProc(vfOrdem: String; vfLimite: String);
procedure FiltrarConvProc(vfCampoFil: String; vfOperador: String; vfParametro:
                   	      String; vfOrdem: String; vfLimite: String);
function GetVlrTotconvProc(vfCodConvenio: integer; vfCodTuss: integer): real;
procedure DeleteConvProc(vfcovId: String);
procedure FiltrarConvXProc(vfCodConv: String; vfCodTuss: String);

const
  ctCampos = 'c.cov_id, c.prc_tuss, p.prc_descricao, c.cpr_vlrhora, c.cpr_vlroper, ' +
              'c.cpr_vlrfilme, c.cpr_vlrtotal';
  ctTabelas = 'convproc c, procedimentos p';

implementation

uses dataFinanceiro, dataLookups;

{--- Seta algum valor na tabela -----------------------------------------------}

procedure SetValuesConvProc(vfConvProc: TConvProc; vfTpMov: Integer);
begin
  if vfTpMov = 0 then
    InsConvProc
  else
    EdtConvProc;
  dmFinanceiro.qyConvProccov_id.Value := vfConvProc.Cov_id;
  dmFinanceiro.qyConvProcprc_tuss.Value := vfConvProc.Prc_tuss;
  dmFinanceiro.qyConvProcprc_descricao.Text := vfConvProc.Prc_descricao;
  dmFinanceiro.qyConvProccpr_vlrhora.Value := vfConvProc.Cpr_vlrhora;
  dmFinanceiro.qyConvProccpr_vlroper.Value := vfConvProc.Cpr_vlroper;
  dmFinanceiro.qyConvProccpr_vlrfilme.Value := vfConvProc.Cpr_vlrfilme;
  dmFinanceiro.qyConvProccpr_vlrtotal.Value := vfConvProc.Cpr_vlrtotal;
  PostConvProc;
end;

{--- Coloca a tabela em insert  -----------------------------------------------}

procedure InsConvProc;
begin
  dmFinanceiro.qyConvProc.Insert;
end;

{--- Coloca a tabela em edit inserindo algum valor ----------------------------}

procedure EdtConvProc;
begin
  dmFinanceiro.qyConvProc.Edit;
end;

{--- Dá um post na tabela -----------------------------------------------------}

procedure PostConvProc;
begin
  try
    dmFinanceiro.qyConvProc.Post;
  except
    on E: Exception do
    begin
      MessageDlg('Erro ao gravar Alteração / Inserção!' + #13 +
          E.Message,mtError,[mbOk],0);
      dmFinanceiro.qyConvProc.Refresh;
    end;
  end;
end;

{--- Lista todos os registros da tabela ---------------------------------------}

procedure ListarConvProc(vfOrdem: String; vfLimite: String);
begin
  dmFinanceiro.qyConvProc.Close;
  dmFinanceiro.qyConvProc.SQL.Clear;
  dmFinanceiro.qyConvProc.SQL.Add('select '+ ctCampos + ' from ' + ctTabelas +
                                   ' where c.prc_tuss = p.prc_tuss ');
  if vfOrdem <> '0' then
    dmFinanceiro.qyConvProc.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmFinanceiro.qyConvProc.SQL.Add(' limit ' + vfLimite);
  dmFinanceiro.qyConvProc.Open;
end;

{--- Filtra registros da tabela -----------------------------------------------}

procedure FiltrarConvProc(vfCampoFil: String; vfOperador: String; vfParametro:
		     String; vfOrdem: String; vfLimite: String);
begin
  dmFinanceiro.qyConvProc.Close;
  dmFinanceiro.qyConvProc.SQL.Clear;
  dmFinanceiro.qyConvProc.SQL.Add('select ' + ctCampos + ' from ' + ctTabelas +
                                  ' where c.prc_tuss = p.prc_tuss and ');
  dmFinanceiro.qyConvProc.SQL.Add(vfCampoFil + ' ' + vfOperador + ' ');
  dmFinanceiro.qyConvProc.SQL.Add(QuotedStr(vfParametro));
  if vfOrdem <> '0' then
    dmFinanceiro.qyConvProc.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmFinanceiro.qyConvProc.SQL.Add(' limit ' + vfLimite);
  dmFinanceiro.qyConvProc.Open;
end;

{--- Filtra registros da tabela -----------------------------------------------}

function GetVlrTotconvProc(vfCodConvenio: integer; vfCodTuss: integer): real;
begin
  dmFinanceiro.qyConvProc.Close;
  dmFinanceiro.qyConvProc.SQL.Clear;
  dmFinanceiro.qyConvProc.SQL.Add('select ' + ctCampos + ' from ' + ctTabelas +
                                  ' where c.prc_tuss = p.prc_tuss ');
  dmFinanceiro.qyConvProc.SQL.Add('and  c.cov_id = ');
  dmFinanceiro.qyConvProc.SQL.Add(IntToStr(vfCodConvenio));
  dmFinanceiro.qyConvProc.SQL.Add(' and c.prc_tuss = ');
  dmFinanceiro.qyConvProc.SQL.Add(IntToStr(vfCodTuss));
  dmFinanceiro.qyConvProc.Open;
  if dmFinanceiro.qyConvProc.FieldByName('cpr_vlrtotal').IsNull then
    Result := 0
  else
    Result := dmFinanceiro.qyConvProc.FieldByName('cpr_vlrtotal').Value;
end;

{--- Apagar procedimentos x convenio ------------------------------------------}

procedure DeleteConvProc(vfCovId: String);
begin
  dmFinanceiro.scDeleteConvProc.SQL.Clear;
  dmFinanceiro.scDeleteConvProc.SQL.Add('delete from convproc where cov_id = ');
  dmFinanceiro.scDeleteConvProc.SQL.Add(vfcovId);
  dmFinanceiro.scDeleteConvProc.ExecSQL;
end;

procedure FiltrarConvXProc(vfCodConv: String; vfCodTuss: String);
begin
  dmFinanceiro.qyConvProc.Close;
  dmFinanceiro.qyConvProc.SQL.Clear;
  dmFinanceiro.qyConvProc.SQL.Add('select ' + ctCampos + ' from ' + ctTabelas +
                                  ' where c.prc_tuss = p.prc_tuss ');
  dmFinanceiro.qyConvProc.SQL.Add('and  c.cov_id = ');
  dmFinanceiro.qyConvProc.SQL.Add(vfCodConv);
  dmFinanceiro.qyConvProc.SQL.Add(' and c.prc_tuss = ');
  dmFinanceiro.qyConvProc.SQL.Add(vfCodTuss);
  dmFinanceiro.qyConvProc.Open;
end;

end.