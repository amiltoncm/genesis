unit uDaoFuncoes;

interface

uses
  Windows, Messages, SysUtils, Classes, Dialogs, StdCtrls, Forms,
  Graphics, Controls, DB;

//procedure SetValuesFuncoes;
procedure InsFuncoes;
procedure EdtFuncoes;
procedure PostFuncoes;
procedure ListarFuncoes(vfOrdem: String; vfLimite: String);
procedure FiltrarFuncoes(vfCampoFil: String; vfOperador: String; vfParametro: 
		     String; vfOrdem: String; vfLimite: String);

const
ctCampos = 'fnc_id, fnc_descricao';
ctTabelas = 'funcoes';

implementation

uses dataCadastros;

{--- Seta algum valor na tabela -----------------------------------------------}

{
procedure SetValuesFuncoes(vfDAO: TDAO);
begin
  //
end;
}

{--- Coloca a tabela em insert  -----------------------------------------------}

procedure InsFuncoes;
begin
  dmCadastros.qyFuncoes.Insert;
end;

{--- Coloca a tabela em edit inserindo algum valor ----------------------------}

procedure EdtFuncoes;
begin
  dmCadastros.qyFuncoes.Edit;
end;

{--- Dá um post na tabela -----------------------------------------------------}

procedure PostFuncoes;
begin
  try
    //if dmCadastros.qyFuncoes.State in [dsInsert] then
      //dados.DataModule.qyFuncoesfnc_id.Value := GetCodigo('fnc_id', 'Funcoes');
    dmCadastros.qyFuncoes.Post;
  except
    on E: Exception do
    begin
      MessageDlg('Erro ao gravar Alteração / Inserção!' + #13 +
          E.Message,mtError,[mbOk],0);
      dmCadastros.qyFuncoes.Refresh;
    end;
  end;
end;

{--- Lista todos os registros da tabela ---------------------------------------}

procedure ListarFuncoes(vfOrdem: String; vfLimite: String);
begin
  dmCadastros.qyFuncoes.Close;
  dmCadastros.qyFuncoes.SQL.Clear;
  dmCadastros.qyFuncoes.SQL.Add('select '+ ctCampos + ' from ' + ctTabelas);
  if vfOrdem <> '0' then
    dmCadastros.qyFuncoes.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmCadastros.qyFuncoes.SQL.Add(' limit ' + vfLimite);
  dmCadastros.qyFuncoes.Open;
end;

{--- Filtra registros da tabela -----------------------------------------------}

procedure FiltrarFuncoes(vfCampoFil: String; vfOperador: String; vfParametro: 
		     String; vfOrdem: String; vfLimite: String);
begin
  dmCadastros.qyFuncoes.Close;
  dmCadastros.qyFuncoes.SQL.Clear;
  dmCadastros.qyFuncoes.SQL.Add('select ' + ctCampos + ' from ' + ctTabelas + ' where ');
  dmCadastros.qyFuncoes.SQL.Add(vfCampoFil + ' ' + vfOperador + ' ');
  dmCadastros.qyFuncoes.SQL.Add(QuotedStr(vfParametro));
  if vfOrdem <> '0' then
    dmCadastros.qyFuncoes.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmCadastros.qyFuncoes.SQL.Add(' limit ' + vfLimite);
  dmCadastros.qyFuncoes.Open;
end;

end.
