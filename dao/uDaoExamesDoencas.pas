unit uDaoExamesDoencas;

interface

uses
  Windows, Messages, SysUtils, Classes, Dialogs, StdCtrls, Forms,
  Graphics, Controls, DB;

procedure ListarExamesDoencas(vfOrdem: String; vfLimite: String);
procedure FiltrarExamesDoencas(vfCampoFil: String; vfOperador: String; vfParametro:
		     String; vfOrdem: String; vfLimite: String);
procedure InsExamesDoencas(vfExaId: String; vfSubCat: String; vfMaterial: String);
procedure DeleteExamesDoencas;

const
  ctCampos = 'd.edo_id, d.exa_id, d.mat_id, d.sct_subcat, s.sct_descabrev';
  ctTabelas = 'examesdoencas d, cid10subcategorias s';

implementation

uses dataExames, uFuncoesDB;

{--- Lista todos os registros da tabela ---------------------------------------}

procedure ListarExamesDoencas(vfOrdem: String; vfLimite: String);
begin
  dmExames.qyExamesDoencas.Close;
  dmExames.qyExamesDoencas.SQL.Clear;
  dmExames.qyExamesDoencas.SQL.Add('select '+ ctCampos + ' from ' + ctTabelas +
                                   ' where d.sct_subcat = s.sct_subcat ');
  if vfOrdem <> '0' then
    dmExames.qyExamesDoencas.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmExames.qyExamesDoencas.SQL.Add(' limit ' + vfLimite);
  dmExames.qyExamesDoencas.Open;
end;

{--- Filtra registros da tabela -----------------------------------------------}

procedure FiltrarExamesDoencas(vfCampoFil: String; vfOperador: String; vfParametro:
		     String; vfOrdem: String; vfLimite: String);
begin
  dmExames.qyExamesDoencas.Close;
  dmExames.qyExamesDoencas.SQL.Clear;
  dmExames.qyExamesDoencas.SQL.Add('select ' + ctCampos + ' from ' + ctTabelas +
                                   ' where d.sct_subcat = s.sct_subcat and ');
  dmExames.qyExamesDoencas.SQL.Add(vfCampoFil + ' ' + vfOperador + ' ');
  dmExames.qyExamesDoencas.SQL.Add(QuotedStr(vfParametro));
  if vfOrdem <> '0' then
    dmExames.qyExamesDoencas.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmExames.qyExamesDoencas.SQL.Add(' limit ' + vfLimite);
  dmExames.qyExamesDoencas.Open;
end;

procedure InsExamesDoencas(vfExaId: String; vfSubCat: String; vfMaterial: String);
begin
  Try
    dmExames.qyExamesDoencas.Insert;
    dmExames.qyExamesDoencasedo_id.Value := GetCodigo('edo_id','examesdoencas');
    dmExames.qyExamesDoencasexa_id.Text := vfExaId;
    dmExames.qyExamesDoencasmat_id.Text := vfMaterial;
    dmExames.qyExamesDoencassct_subcat.Text := vfSubCat;
    dmExames.qyExamesDoencas.Post;
    dmExames.qyExamesDoencas.Refresh;
    MessageDlg('Doença inserida com sucesso!', mtInformation, [mbok], 0);
  except
    on E: Exception do
    Begin
      MessageDlg('Erro ao gravar Alteração / Inserção!' + #13#10 +
          E.Message,mtError,[mbOk],0);
    end;
 end;
end;

procedure DeleteExamesDoencas;
begin
  try
    dmExames.qyExamesDoencas.Delete;
  except
    MessageDlg('Não foi possível excluir o registro!', mtError, [mbOk], 0);
    dmExames.qyExamesDoencas.Refresh;
  end;
end;

end.