unit uDaoRecTISS;

interface

uses
  Windows, Messages, SysUtils, Classes, Dialogs, StdCtrls, Forms,
  Graphics, Controls, DB, uClassRecTISS;

procedure SetValuesRecTISS(vfRecTISS: TRecTISS);
procedure InsRecTISS;
procedure EdtRecTISS;
procedure PostRecTISS;
procedure ListarRecTISS(vfOrdem: String; vfLimite: String);
procedure FiltrarRecTISS(vfCampoFil: String; vfOperador: String; vfParametro:
		                     String; vfOrdem: String; vfLimite: String);

const
ctCampos = 'rti_id, rec_codigo, rti_gerado, rti_lote, rti_nguias';
ctTabelas = 'rectiss';

implementation

uses dataFinanceiro, uFuncoesDB;

{--- Seta algum valor na tabela -----------------------------------------------}

procedure SetValuesRecTISS(vfRecTISS: TRecTISS);
begin
  dmFinanceiro.qyRecTissrec_codigo.Value := vfRecTISS.RecCodigo;
  dmFinanceiro.qyRecTissrti_gerado.Value := vfRecTISS.Gerado;
  dmFinanceiro.qyRecTissrti_lote.Value := vfRecTISS.Lote;
  dmFinanceiro.qyRecTissrti_nguias.Value := vfRecTISS.NGuias;
end;

{--- Coloca a tabela em insert  -----------------------------------------------}

procedure InsRecTISS;
begin
  dmFinanceiro.qyRecTISS.Insert;
end;

{--- Coloca a tabela em edit inserindo algum valor ----------------------------}

procedure EdtRecTISS;
begin
  dmFinanceiro.qyRecTISS.Edit;
end;

{--- Dá um post na tabela -----------------------------------------------------}

procedure PostRecTISS;
begin
  try
    if dmFinanceiro.qyRecTISS.State in [dsInsert] then
      dmFinanceiro.qyRecTissrti_id.Value := GetCodigo('rti_id', 'rectiss');
    dmFinanceiro.qyRecTISS.Post;
  except
    on E: Exception do
    begin
      MessageDlg('Erro ao gravar Alteração / Inserção!' + #13 +
          E.Message,mtError,[mbOk],0);
      dmFinanceiro.qyRecTISS.Refresh;
    end;
  end;
end;

{--- Lista todos os registros da tabela ---------------------------------------}

procedure ListarRecTISS(vfOrdem: String; vfLimite: String);
begin
  dmFinanceiro.qyRecTISS.Close;
  dmFinanceiro.qyRecTISS.SQL.Clear;
  dmFinanceiro.qyRecTISS.SQL.Add('select '+ ctCampos + ' from ' + ctTabelas);
  if vfOrdem <> '0' then
    dmFinanceiro.qyRecTISS.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmFinanceiro.qyRecTISS.SQL.Add(' limit ' + vfLimite);
  dmFinanceiro.qyRecTISS.Open;
end;

{--- Filtra registros da tabela -----------------------------------------------}

procedure FiltrarRecTISS(vfCampoFil: String; vfOperador: String; vfParametro: 
		     String; vfOrdem: String; vfLimite: String);
begin
  dmFinanceiro.qyRecTISS.Close;
  dmFinanceiro.qyRecTISS.SQL.Clear;
  dmFinanceiro.qyRecTISS.SQL.Add('select ' + ctCampos + ' from ' + ctTabelas + ' where ');
  dmFinanceiro.qyRecTISS.SQL.Add(vfCampoFil + ' ' + vfOperador + ' ');
  dmFinanceiro.qyRecTISS.SQL.Add(QuotedStr(vfParametro));
  if vfOrdem <> '0' then
    dmFinanceiro.qyRecTISS.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmFinanceiro.qyRecTISS.SQL.Add(' limit ' + vfLimite);
  dmFinanceiro.qyRecTISS.Open;
end;

end.
