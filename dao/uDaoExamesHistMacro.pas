unit uDaoExamesHistMacro;

interface

uses
  Windows, Messages, SysUtils, Classes, Dialogs, StdCtrls, Forms,
  Graphics, Controls, DB;

procedure InsertExamesHistMacro;
procedure EdtExamesHistMacro;
procedure PostExamesHistMacro(vfExaID: String);
procedure ListarExamesHistMacro(vfOrdem: String; vfLimite: String);
procedure FiltrarExamesHistMacro(vfCampoFil: String; vfOperador: String; vfParametro:
		     String; vfOrdem: String; vfLimite: String);
procedure InsExamesHistMacro(vfIDExame: String);
procedure UpdExamesHistMacro(vfIDExame: String);
procedure SetValuesExamesHistMacro(vfIDMacro: String; vfIDExame: String; vfModeloMacro: String);

const
  ctCampos = 'ehm_id, exa_id, ehm_macroscopia';
  ctTabelas = 'exameshistmacro';

implementation

uses dataExames, dataCadastros, uFuncoesDB, dataLookups;

{--- Coloca a tabela em insert  -----------------------------------------------}

procedure InsertExamesHistMacro;
begin
  dmExames.qyExamesHistMacro.Insert;
end;

{--- Coloca a tabela em edit inserindo algum valor ----------------------------}

procedure EdtExamesHistMacro;
begin
  dmExames.qyExamesHistMacro.Edit;
end;

{--- Dá um post na tebala -----------------------------------------------------}

procedure PostExamesHistMacro(vfExaID: String);
begin
  try
    if dmExames.qyExamesHistMacro.State in [dsInsert] then
      if dmExames.qyExamesHistMacroehm_id.IsNull then
        dmExames.qyExamesHistMacroehm_id.Value := GetCodigo('ehm_id', 'exameshistmacro');
    dmExames.qyExamesHistMacroexa_id.Text := vfExaID;
    dmExames.qyExamesHistMacro.Post;
  except
    on E: Exception do
    begin
      MessageDlg('Erro ao gravar!' + #13 + 'Verifique o preenchimento dos dados!' + #13 +
          E.Message,mtError,[mbOk],0);
      dmExames.qyExamesHistMacro.Refresh;
    end;
  end;
end;

{--- Lista todos os registros da tabela ---------------------------------------}

procedure ListarExamesHistMacro(vfOrdem: String; vfLimite: String);
begin
  dmExames.qyExamesHistMacro.Close;
  dmExames.qyExamesHistMacro.SQL.Clear;
  dmExames.qyExamesHistMacro.SQL.Add('select '+ ctCampos + ' from ' + ctTabelas);
  if vfOrdem <> '0' then
    dmExames.qyExamesHistMacro.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmExames.qyExamesHistMacro.SQL.Add(' limit ' + vfLimite);
  dmExames.qyExamesHistMacro.Open;
end;

{--- Filtra registros da tabela -----------------------------------------------}

procedure FiltrarExamesHistMacro(vfCampoFil: String; vfOperador: String; vfParametro:
		     String; vfOrdem: String; vfLimite: String);
begin
  dmExames.qyExamesHistMacro.Close;
  dmExames.qyExamesHistMacro.SQL.Clear;
  dmExames.qyExamesHistMacro.SQL.Add('select ' + ctCampos + ' from ' + ctTabelas + ' where ');
  dmExames.qyExamesHistMacro.SQL.Add(vfCampoFil + ' ' + vfOperador + ' ');
  dmExames.qyExamesHistMacro.SQL.Add(QuotedStr(vfParametro));
  if vfOrdem <> '0' then
    dmExames.qyExamesHistMacro.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmExames.qyExamesHistMacro.SQL.Add(' limit ' + vfLimite);
  dmExames.qyExamesHistMacro.Open;
end;

{--- Insere registros da tabela -----------------------------------------------}

procedure InsExamesHistMacro(vfIDExame: String);
begin
  dmExames.qyExamesHistMacro.Insert;
  dmExames.qyExamesHistMacroehm_id.Value := GetCodigo('ehm_id', 'exameshistmacro');
  dmExames.qyExamesHistMacroexa_id.Text := vfIDExame;
  dmExames.qyExamesHistMacroehm_macroscopia.Value := dmCadastros.qyLaudosModMacrolmm_modelo.Value;
  dmExames.qyExamesHistMacro.Post;
end;

{--- Altera registros da tabela -----------------------------------------------}

procedure UpdExamesHistMacro(vfIDExame: String);
begin
  dmExames.qyExamesHistMacro.Edit;
  dmExames.qyExamesHistMacroehm_id.Value := GetCodigo('ehm_id', 'exameshistmacro');
  dmExames.qyExamesHistMacroexa_id.Text := vfIDExame;
  dmExames.qyExamesHistMacroehm_macroscopia.Value := dmCadastros.qyLaudosModMacrolmm_modelo.Value;
  dmExames.qyExamesHistMacro.Post;
end;

{--- Insere ou Altera registros da tabela com valores passados ----------------}

procedure SetValuesExamesHistMacro(vfIDMacro: String; vfIDExame: String; vfModeloMacro: String);
begin
  try
    if vfIDMacro = '0' then
    begin
      dmExames.qyExamesHistMacro.Insert;
      dmExames.qyExamesHistMacroehm_id.Value := GetCodigo('ehm_id', 'exameshistmacro');
    end
    else
      dmExames.qyExamesHistMacro.Edit;
    dmExames.qyExamesHistMacroexa_id.Text := vfIDExame;
    dmExames.qyExamesHistMacroehm_macroscopia.Clear;
    dmExames.qyExamesHistMacroehm_macroscopia.Value := dmLookups.lkProcModMacrolmm_modelo.Value;
    dmExames.qyExamesHistMacro.Post;
  except
    on E: Exception do
    begin
      MessageDlg('Erro ao gravar!' + #13 + 'Verifique o preenchimento dos dados!' + #13 +
          E.Message,mtError,[mbOk],0);
      dmExames.qyExamesHistMacro.Refresh;
    end;
  end;
end;

end.
