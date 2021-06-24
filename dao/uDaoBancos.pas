unit uDaoBancos;

interface

uses
  Windows, Messages, SysUtils, Classes, Dialogs, StdCtrls, Forms,
  Graphics, Controls, DB;

//procedure SetValuesBancos;
procedure InsBancos;
procedure EdtBancos;
procedure PostBancos;
procedure ListarBancos(vfOrdem: String; vfLimite: String);
procedure FiltrarBancos(vfCampoFil: String; vfOperador: String; vfParametro: 
		     String; vfOrdem: String; vfLimite: String);

const
ctCampos = 'ban_codigo, ban_descricao';
ctTabelas = 'bancos';

implementation

uses dataCadastros;

{--- Seta algum valor na tabela -----------------------------------------------}

{
procedure SetValuesBancos(vfDAO: TDAO);
begin
  //
end;
}

{--- Coloca a tabela em insert  -----------------------------------------------}

procedure InsBancos;
begin
  dmCadastros.qyBancos.Insert;
end;

{--- Coloca a tabela em edit inserindo algum valor ----------------------------}

procedure EdtBancos;
begin
  dmCadastros.qyBancos.Edit;
end;

{--- Dá um post na tabela -----------------------------------------------------}

procedure PostBancos;
begin
  try
    //if dmCadastros.qyBancos.State in [dsInsert] then
      //dados.DataModule.qyBancosban_codigo.Value := GetCodigo('ban_codigo', 'Bancos');
    dmCadastros.qyBancos.Post;
  except
    on E: Exception do
    begin
      MessageDlg('Erro ao gravar Alteração / Inserção!' + #13 +
          E.Message,mtError,[mbOk],0);
      dmCadastros.qyBancos.Refresh;
    end;
  end;
end;

{--- Lista todos os registros da tabela ---------------------------------------}

procedure ListarBancos(vfOrdem: String; vfLimite: String);
begin
  dmCadastros.qyBancos.Close;
  dmCadastros.qyBancos.SQL.Clear;
  dmCadastros.qyBancos.SQL.Add('select '+ ctCampos + ' from ' + ctTabelas);
  if vfOrdem <> '0' then
    dmCadastros.qyBancos.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmCadastros.qyBancos.SQL.Add(' limit ' + vfLimite);
  dmCadastros.qyBancos.Open;
end;

{--- Filtra registros da tabela -----------------------------------------------}

procedure FiltrarBancos(vfCampoFil: String; vfOperador: String; vfParametro: 
		     String; vfOrdem: String; vfLimite: String);
begin
  dmCadastros.qyBancos.Close;
  dmCadastros.qyBancos.SQL.Clear;
  dmCadastros.qyBancos.SQL.Add('select ' + ctCampos + ' from ' + ctTabelas + ' where ');
  dmCadastros.qyBancos.SQL.Add(vfCampoFil + ' ' + vfOperador + ' ');
  dmCadastros.qyBancos.SQL.Add(QuotedStr(vfParametro));
  if vfOrdem <> '0' then
    dmCadastros.qyBancos.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmCadastros.qyBancos.SQL.Add(' limit ' + vfLimite);
  dmCadastros.qyBancos.Open;
end;

end.
