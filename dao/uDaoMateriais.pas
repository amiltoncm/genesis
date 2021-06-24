unit uDaoMateriais;

interface

uses
  Windows, Messages, SysUtils, Classes, Dialogs, StdCtrls, Forms,
  Graphics, Controls, DB;

//procedure SetValuesMateriais;
procedure InsMateriais;
procedure EdtMateriais;
procedure PostMateriais;
procedure ListarMateriais(vfOrdem: String; vfLimite: String);
procedure FiltrarMateriais(vfCampoFil: String; vfOperador: String; vfParametro: 
		     String; vfOrdem: String; vfLimite: String);

const
ctCampos = 'mat_id, mat_descricao';
ctTabelas = 'materiais';

implementation

uses dataCadastros;

{--- Seta algum valor na tabela -----------------------------------------------}

{
procedure SetValuesMateriais(vfDAO: TDAO);
begin
  //
end;
}

{--- Coloca a tabela em insert  -----------------------------------------------}

procedure InsMateriais;
begin
  dmCadastros.qyMateriais.Insert;
end;

{--- Coloca a tabela em edit inserindo algum valor ----------------------------}

procedure EdtMateriais;
begin
  dmCadastros.qyMateriais.Edit;
end;

{--- Dá um post na tabela -----------------------------------------------------}

procedure PostMateriais;
begin
  try
    //if dmCadastros.qyMateriais.State in [dsInsert] then
      //dados.DataModule.qyMateriaismat_id.Value := GetCodigo('mat_id', 'Materiais');
    dmCadastros.qyMateriais.Post;
  except
    on E: Exception do
    begin
      MessageDlg('Erro ao gravar Alteração / Inserção!' + #13 +
          E.Message,mtError,[mbOk],0);
      dmCadastros.qyMateriais.Refresh;
    end;
  end;
end;

{--- Lista todos os registros da tabela ---------------------------------------}

procedure ListarMateriais(vfOrdem: String; vfLimite: String);
begin
  dmCadastros.qyMateriais.Close;
  dmCadastros.qyMateriais.SQL.Clear;
  dmCadastros.qyMateriais.SQL.Add('select '+ ctCampos + ' from ' + ctTabelas);
  if vfOrdem <> '0' then
    dmCadastros.qyMateriais.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmCadastros.qyMateriais.SQL.Add(' limit ' + vfLimite);
  dmCadastros.qyMateriais.Open;
end;

{--- Filtra registros da tabela -----------------------------------------------}

procedure FiltrarMateriais(vfCampoFil: String; vfOperador: String; vfParametro: 
		     String; vfOrdem: String; vfLimite: String);
begin
  dmCadastros.qyMateriais.Close;
  dmCadastros.qyMateriais.SQL.Clear;
  dmCadastros.qyMateriais.SQL.Add('select ' + ctCampos + ' from ' + ctTabelas + ' where ');
  dmCadastros.qyMateriais.SQL.Add(vfCampoFil + ' ' + vfOperador + ' ');
  dmCadastros.qyMateriais.SQL.Add(QuotedStr(vfParametro));
  if vfOrdem <> '0' then
    dmCadastros.qyMateriais.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmCadastros.qyMateriais.SQL.Add(' limit ' + vfLimite);
  dmCadastros.qyMateriais.Open;
end;

end.
