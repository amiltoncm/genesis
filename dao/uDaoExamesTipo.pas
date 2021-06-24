unit uDaoExamesTipo;

interface

uses
  Windows, Messages, SysUtils, Classes, Dialogs, StdCtrls, Forms,
  Graphics, Controls, DB;

procedure InsExamesTipo;
procedure EdtExamesTipo;
procedure PostExamesTipo;
procedure ListarExamesTipo(vfOrdem: String; vfLimite: String);
procedure FiltrarExamesTipo(vfCampoFil: String; vfOperador: String; vfParametro:
     		                    String; vfOrdem: String; vfLimite: String);
procedure FiltrarProcExamesTipo(vfID: String);

const
ctCampos = 'eio_id, eio_descricao';
ctTabelas = 'examestipo';

implementation

uses dataCadastros, dataLookups;

{--- Coloca a tabela em insert  -----------------------------------------------}

procedure InsExamesTipo;
begin
  dmCadastros.qyExamesTipo.Insert;
end;

{--- Coloca a tabela em edit inserindo algum valor ----------------------------}

procedure EdtExamesTipo;
begin
  dmCadastros.qyExamesTipo.Edit;
end;

{--- Dá um post na tabela -----------------------------------------------------}

procedure PostExamesTipo;
begin
  try
    //if dmCadastros.qyExamesTipo.State in [dsInsert] then
      //dados.DataModule.qyExamesTipoeio_id.Value := GetCodigo('eio_id', 'ExamesTipo');
    dmCadastros.qyExamesTipo.Post;
  except
    on E: Exception do
    begin
      MessageDlg('Erro ao gravar Alteração / Inserção!' + #13 +
          E.Message,mtError,[mbOk],0);
      dmCadastros.qyExamesTipo.Refresh;
    end;
  end;
end;

{--- Lista todos os registros da tabela ---------------------------------------}

procedure ListarExamesTipo(vfOrdem: String; vfLimite: String);
begin
  dmCadastros.qyExamesTipo.Close;
  dmCadastros.qyExamesTipo.SQL.Clear;
  dmCadastros.qyExamesTipo.SQL.Add('select '+ ctCampos + ' from ' + ctTabelas);
  if vfOrdem <> '0' then
    dmCadastros.qyExamesTipo.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmCadastros.qyExamesTipo.SQL.Add(' limit ' + vfLimite);
  dmCadastros.qyExamesTipo.Open;
end;

{--- Filtra registros da tabela -----------------------------------------------}

procedure FiltrarExamesTipo(vfCampoFil: String; vfOperador: String; vfParametro:
		                        String; vfOrdem: String; vfLimite: String);
begin
  dmCadastros.qyExamesTipo.Close;
  dmCadastros.qyExamesTipo.SQL.Clear;
  dmCadastros.qyExamesTipo.SQL.Add('select ' + ctCampos + ' from ' + ctTabelas + ' where ');
  dmCadastros.qyExamesTipo.SQL.Add(vfCampoFil + ' ' + vfOperador + ' ');
  dmCadastros.qyExamesTipo.SQL.Add(QuotedStr(vfParametro));
  if vfOrdem <> '0' then
    dmCadastros.qyExamesTipo.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmCadastros.qyExamesTipo.SQL.Add(' limit ' + vfLimite);
  dmCadastros.qyExamesTipo.Open;
end;

{--- Filtra registros da tabela lk --------------------------------------------}

procedure FiltrarProcExamesTipo(vfID: String);
begin
  dmLookups.lkProcExamesTipo.Close;
  dmLookups.lkProcExamesTipo.SQL.Clear;
  dmLookups.lkProcExamesTipo.SQL.Add('select eio_id, eio_descricao from examestipo ');
  if vfID <> '0' then
  begin
    dmLookups.lkProcExamesTipo.SQL.Add('where eio_id = ');
    dmLookups.lkProcExamesTipo.SQL.Add(vfID);
  end;
  dmLookups.lkProcExamesTipo.SQL.Add(' order by eio_descricao');
  dmLookups.lkProcExamesTipo.Open;
end;

end.
