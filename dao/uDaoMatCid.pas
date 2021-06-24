unit uDaoMatCid;

interface

uses
  Windows, Messages, SysUtils, Classes, Dialogs, StdCtrls, Forms,
  Graphics, Controls, DB;

procedure InsmatCid;
procedure EdtMatCid;
procedure PostMatCid;
procedure DelMatCid;
procedure ListarMatCid(vfOrdem: String; vfLimite: String);
procedure FiltrarMatCid(vfCampoFil: String; vfOperador: String; vfParametro:
		                    String; vfOrdem: String; vfLimite: String);
procedure FiltrarLkMatCid(vfCampoFil: String; vfOperador: String; vfParametro:
		                    String; vfOrdem: String; vfLimite: String);

const
ctCampos = 'm.mat_id, m.sct_subcat, c.sct_descabrev, c.sct_descricao';
ctTabelas = 'matcid m, cid10subcategorias c';

implementation

uses dataCadastros, dataLookups;

procedure InsMatCid;
begin
  dmCadastros.qyMatCid.Insert;
end;

procedure EdtMatCid;
begin
  dmCadastros.qyMatCid.Edit;
end;

procedure PostMatCid;
begin
  try
    dmCadastros.qyMatCid.Post;
    dmCadastros.qyMatCid.Refresh;
  except
    on E: Exception do
    begin
      MessageDlg('Erro ao gravar Alteração / Inserção!' + #13 +
          E.Message,mtError,[mbOk],0);
      dmCadastros.qyMatCid.Refresh;
    end;
  end;
end;

procedure DelMatCid;
begin
  try
    dmCadastros.qyMatCid.Delete;
  except
    on E: Exception do
    begin
      MessageDlg('Erro ao excluir registro!' + #13 +
          E.Message,mtError,[mbOk],0);
      dmCadastros.qyMatCid.Refresh;
    end;
  end;
end;

{--- Lista todos os registros da tabela --------------------------------------}

procedure ListarMatCid(vfOrdem: String; vfLimite: String);
begin
  dmCadastros.qyMatCid.Close;
  dmCadastros.qyMatCid.SQL.Clear;
  dmCadastros.qyMatCid.SQL.Add('select '+ ctCampos + ' from ' + ctTabelas +
                                  ' where m.sct_subcat = c.sct_subcat');
  if vfOrdem <> '0' then
    dmCadastros.qyMatCid.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmCadastros.qyMatCid.SQL.Add(' limit ' + vfLimite);
  dmCadastros.qyMatCid.Open;
end;

{--- Filtra registros da tabela ----------------------------------------------}

procedure FiltrarMatCid(vfCampoFil: String; vfOperador: String; vfParametro:
		                    String; vfOrdem: String; vfLimite: String);
begin
  dmCadastros.qyMatCid.Close;
  dmCadastros.qyMatCid.SQL.Clear;
  dmCadastros.qyMatCid.SQL.Add('select '+ ctCampos + ' from ' + ctTabelas +
                                  ' where m.sct_subcat = c.sct_subcat and ');
  dmCadastros.qyMatCid.SQL.Add(vfCampoFil + ' ' + vfOperador + ' ');
  dmCadastros.qyMatCid.SQL.Add(QuotedStr(vfParametro));
  if vfOrdem <> '0' then
    dmCadastros.qyMatCid.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmCadastros.qyMatCid.SQL.Add(' limit ' + vfLimite);
  dmCadastros.qyMatCid.Open;
end;

procedure FiltrarLkMatCid(vfCampoFil: String; vfOperador: String; vfParametro:
		                    String; vfOrdem: String; vfLimite: String);
begin
  dmLookups.lkProcMatCid.Close;
  dmLookups.lkProcMatCid.SQL.Clear;
  dmLookups.lkProcMatCid.SQL.Add('select '+ ctCampos + ' from ' + ctTabelas +
                                  ' where m.sct_subcat = c.sct_subcat and ');
  dmLookups.lkProcMatCid.SQL.Add(vfCampoFil + ' ' + vfOperador + ' ');
  dmLookups.lkProcMatCid.SQL.Add(QuotedStr(vfParametro));
  if vfOrdem <> '0' then
    dmLookups.lkProcMatCid.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmLookups.lkProcMatCid.SQL.Add(' limit ' + vfLimite);
  dmLookups.lkProcMatCid.Open;
end;

end.
