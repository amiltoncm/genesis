unit uDaoMovimentos;

interface

uses
  Windows, Messages, SysUtils, Classes, Dialogs, StdCtrls, Forms,
  Graphics, Controls, DB;

//procedure SetValuesMovimentos;
procedure InsMovimentos;
procedure EdtMovimentos;
procedure PostMovimentos;
procedure ListarMovimentos(vfOrdem: String; vfLimite: String);
procedure FiltrarMovimentos(vfCampoFil: String; vfOperador: String; vfParametro: 
		     String; vfOrdem: String; vfLimite: String);
procedure FiltrarProcMovimentos(vfTipo: String);

const
ctCampos = 'mov_codigo, mov_descricao, mov_tipo';
ctTabelas = 'movimentos';

implementation

uses dataCadastros, dataLookups;

{--- Seta algum valor na tabela -----------------------------------------------}

{
procedure SetValuesMovimentos(vfDAO: TDAO);
begin
  //
end;
}

{--- Coloca a tabela em insert  -----------------------------------------------}

procedure InsMovimentos;
begin
  dmCadastros.qyMovimentos.Insert;
end;

{--- Coloca a tabela em edit inserindo algum valor ----------------------------}

procedure EdtMovimentos;
begin
  dmCadastros.qyMovimentos.Edit;
end;

{--- Dá um post na tabela -----------------------------------------------------}

procedure PostMovimentos;
begin
  try
    //if dmCadastros.qyMovimentos.State in [dsInsert] then
      //dados.DataModule.qyMovimentosmov_codigo.Value := GetCodigo('mov_codigo', 'Movimentos');
    dmCadastros.qyMovimentos.Post;
  except
    on E: Exception do
    begin
      MessageDlg('Erro ao gravar Alteração / Inserção!' + #13 +
          E.Message,mtError,[mbOk],0);
      dmCadastros.qyMovimentos.Refresh;
    end;
  end;
end;

{--- Lista todos os registros da tabela ---------------------------------------}

procedure ListarMovimentos(vfOrdem: String; vfLimite: String);
begin
  dmCadastros.qyMovimentos.Close;
  dmCadastros.qyMovimentos.SQL.Clear;
  dmCadastros.qyMovimentos.SQL.Add('select '+ ctCampos + ' from ' + ctTabelas);
  if vfOrdem <> '0' then
    dmCadastros.qyMovimentos.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmCadastros.qyMovimentos.SQL.Add(' limit ' + vfLimite);
  dmCadastros.qyMovimentos.Open;
end;

{--- Filtra registros da tabela -----------------------------------------------}

procedure FiltrarMovimentos(vfCampoFil: String; vfOperador: String; vfParametro:
		     String; vfOrdem: String; vfLimite: String);
begin
  dmCadastros.qyMovimentos.Close;
  dmCadastros.qyMovimentos.SQL.Clear;
  dmCadastros.qyMovimentos.SQL.Add('select ' + ctCampos + ' from ' + ctTabelas + ' where ');
  dmCadastros.qyMovimentos.SQL.Add(vfCampoFil + ' ' + vfOperador + ' ');
  dmCadastros.qyMovimentos.SQL.Add(QuotedStr(vfParametro));
  if vfOrdem <> '0' then
    dmCadastros.qyMovimentos.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmCadastros.qyMovimentos.SQL.Add(' limit ' + vfLimite);
  dmCadastros.qyMovimentos.Open;
end;

{--- Filtra registros da tabela lookuups conforme tipo ------------------------}

procedure FiltrarProcMovimentos(vfTipo: String);
begin
  dmLookups.lkProcMovimentos.Close;
  dmLookups.lkProcMovimentos.SQL.Clear;
  dmLookups.lkProcMovimentos.SQL.Add('select mov_codigo, mov_descricao, mov_tipo from movimentos where mov_tipo = ');
  dmLookups.lkProcMovimentos.SQL.Add(QuotedStr(vfTipo));
  dmLookups.lkProcMovimentos.SQL.Add(' order by mov_descricao');
  dmLookups.lkProcMovimentos.Open;
end;

end.
