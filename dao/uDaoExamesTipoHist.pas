unit uDaoExamesTipoHist;

interface

uses
  Windows, Messages, SysUtils, Classes, Dialogs, StdCtrls, Forms,
  Graphics, Controls, DB;

//procedure SetValuesExamesTipoHist;
procedure InsExamesTipoHist;
procedure EdtExamesTipoHist;
procedure PostExamesTipoHist;
procedure ListarExamesTipoHist(vfOrdem: String; vfLimite: String);
procedure FiltrarExamesTipoHist(vfCampoFil: String; vfOperador: String; vfParametro: 
		     String; vfOrdem: String; vfLimite: String);

const
ctCampos = 't.eth_id, t.eth_descricao, t.eio_id, e.eio_descricao';
ctTabelas = 'examestipohist t, examestipo e';

implementation

uses dataCadastros;

{--- Seta algum valor na tabela -----------------------------------------------}

{
procedure SetValuesExamesTipoHist(vfDAO: TDAO);
begin
  //
end;
}

{--- Coloca a tabela em insert  -----------------------------------------------}

procedure InsExamesTipoHist;
begin
  dmCadastros.qyExamesTipoHist.Insert;
end;

{--- Coloca a tabela em edit inserindo algum valor ----------------------------}

procedure EdtExamesTipoHist;
begin
  dmCadastros.qyExamesTipoHist.Edit;
end;

{--- Dá um post na tabela -----------------------------------------------------}

procedure PostExamesTipoHist;
begin
  try
    //if dmCadastros.qyExamesTipoHist.State in [dsInsert] then
      //dados.DataModule.qyExamesTipoHistt.eth_id.Value := GetCodigo('t.eth_id', 'ExamesTipoHist');
    dmCadastros.qyExamesTipoHist.Post;
  except
    on E: Exception do
    begin
      MessageDlg('Erro ao gravar Alteração / Inserção!' + #13 +
          E.Message,mtError,[mbOk],0);
      dmCadastros.qyExamesTipoHist.Refresh;
    end;
  end;
end;

{--- Lista todos os registros da tabela ---------------------------------------}

procedure ListarExamesTipoHist(vfOrdem: String; vfLimite: String);
begin
  dmCadastros.qyExamesTipoHist.Close;
  dmCadastros.qyExamesTipoHist.SQL.Clear;
  dmCadastros.qyExamesTipoHist.SQL.Add('select '+ ctCampos + ' from ' + ctTabelas);
  dmCadastros.qyExamesTipoHist.SQL.Add(' where t.eio_id = e.eio_id ');
  if vfOrdem <> '0' then
    dmCadastros.qyExamesTipoHist.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmCadastros.qyExamesTipoHist.SQL.Add(' limit ' + vfLimite);
  dmCadastros.qyExamesTipoHist.Open;
end;

{--- Filtra registros da tabela -----------------------------------------------}

procedure FiltrarExamesTipoHist(vfCampoFil: String; vfOperador: String; vfParametro: 
		     String; vfOrdem: String; vfLimite: String);
begin
  dmCadastros.qyExamesTipoHist.Close;
  dmCadastros.qyExamesTipoHist.SQL.Clear;
  dmCadastros.qyExamesTipoHist.SQL.Add('select ' + ctCampos + ' from ' + ctTabelas);
  dmCadastros.qyExamesTipoHist.SQL.Add(' where t.eio_id = e.eio_id and ');
  dmCadastros.qyExamesTipoHist.SQL.Add(vfCampoFil + ' ' + vfOperador + ' ');
  dmCadastros.qyExamesTipoHist.SQL.Add(QuotedStr(vfParametro));
  if vfOrdem <> '0' then
    dmCadastros.qyExamesTipoHist.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmCadastros.qyExamesTipoHist.SQL.Add(' limit ' + vfLimite);
  dmCadastros.qyExamesTipoHist.Open;
end;

end.
