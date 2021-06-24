unit uDaoLaudosModHist;

interface

uses
  Windows, Messages, SysUtils, Classes, Dialogs, StdCtrls, Forms,
  Graphics, Controls, DB;

//procedure SetValuesLaudosModHist;
procedure InsLaudosModHist;
procedure EdtLaudosModHist;
procedure PostLaudosModHist;
procedure ListarLaudosModHist(vfOrdem: String; vfLimite: String);
procedure FiltrarLaudosModHist(vfCampoFil: String; vfOperador: String; vfParametro: 
		     String; vfOrdem: String; vfLimite: String);

const
ctCampos = 'lmh_id, lmh_descricao, lmh_microscopia, lmh_diagnostico';
ctTabelas = 'laudosmodhist';

implementation

uses dataCadastros;

{--- Seta algum valor na tabela -----------------------------------------------}

{
procedure SetValuesLaudosModHist(vfDAO: TDAO);
begin
  //
end;
}

{--- Coloca a tabela em insert  -----------------------------------------------}

procedure InsLaudosModHist;
begin
  dmCadastros.qyLaudosModHist.Insert;
end;

{--- Coloca a tabela em edit inserindo algum valor ----------------------------}

procedure EdtLaudosModHist;
begin
  dmCadastros.qyLaudosModHist.Edit;
end;

{--- Dá um post na tabela -----------------------------------------------------}

procedure PostLaudosModHist;
begin
  try
    //if dmCadastros.qyLaudosModHist.State in [dsInsert] then
      //dados.DataModule.qyLaudosModHistlmh_id.Value := GetCodigo('lmh_id', 'LaudosModHist');
    dmCadastros.qyLaudosModHist.Post;
  except
    on E: Exception do
    begin
      MessageDlg('Erro ao gravar Alteração / Inserção!' + #13 +
          E.Message,mtError,[mbOk],0);
      dmCadastros.qyLaudosModHist.Refresh;
    end;
  end;
end;

{--- Lista todos os registros da tabela ---------------------------------------}

procedure ListarLaudosModHist(vfOrdem: String; vfLimite: String);
begin
  dmCadastros.qyLaudosModHist.Close;
  dmCadastros.qyLaudosModHist.SQL.Clear;
  dmCadastros.qyLaudosModHist.SQL.Add('select '+ ctCampos + ' from ' + ctTabelas);
  if vfOrdem <> '0' then
    dmCadastros.qyLaudosModHist.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmCadastros.qyLaudosModHist.SQL.Add(' limit ' + vfLimite);
  dmCadastros.qyLaudosModHist.Open;
end;

{--- Filtra registros da tabela -----------------------------------------------}

procedure FiltrarLaudosModHist(vfCampoFil: String; vfOperador: String; vfParametro: 
		     String; vfOrdem: String; vfLimite: String);
begin
  dmCadastros.qyLaudosModHist.Close;
  dmCadastros.qyLaudosModHist.SQL.Clear;
  dmCadastros.qyLaudosModHist.SQL.Add('select ' + ctCampos + ' from ' + ctTabelas + ' where ');
  dmCadastros.qyLaudosModHist.SQL.Add(vfCampoFil + ' ' + vfOperador + ' ');
  dmCadastros.qyLaudosModHist.SQL.Add(QuotedStr(vfParametro));
  if vfOrdem <> '0' then
    dmCadastros.qyLaudosModHist.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmCadastros.qyLaudosModHist.SQL.Add(' limit ' + vfLimite);
  dmCadastros.qyLaudosModHist.Open;
end;

end.
