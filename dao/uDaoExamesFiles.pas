unit uDaoExamesFiles;

interface

uses
  Windows, Messages, SysUtils, Classes, Dialogs, StdCtrls, Forms,
  Graphics, Controls, DB;

procedure ListarExamesFiles(vfOrdem: String; vfLimite: String);
procedure FiltrarExamesFiles(vfCampoFil: String; vfOperador: String; vfParametro:
		     String; vfOrdem: String; vfLimite: String);
procedure InsExamesfiles(vfIDExame: String; vfArquivo: String; vfDescricao: String);

const
  ctCampos = 'efi_codigo, exa_id, efi_sequencia, efi_arquivo, efi_descricao, efi_extensao';
  ctTabelas = 'examesfiles';

implementation

uses dataGestao, uFuncoesDB;

{--- Lista todos os registros da tabela ---------------------------------------}

procedure ListarExamesFiles(vfOrdem: String; vfLimite: String);
begin
  dmGestao.qyExamesFiles.Close;
  dmGestao.qyExamesFiles.SQL.Clear;
  dmGestao.qyExamesFiles.SQL.Add('select '+ ctCampos + ' from ' + ctTabelas);
  if vfOrdem <> '0' then
    dmGestao.qyExamesFiles.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmGestao.qyExamesFiles.SQL.Add(' limit ' + vfLimite);
  dmGestao.qyExamesFiles.Open;
end;

{--- Filtra registros da tabela -----------------------------------------------}

procedure FiltrarExamesFiles(vfCampoFil: String; vfOperador: String; vfParametro:
		     String; vfOrdem: String; vfLimite: String);
begin
  dmGestao.qyExamesFiles.Close;
  dmGestao.qyExamesFiles.SQL.Clear;
  dmGestao.qyExamesFiles.SQL.Add('select ' + ctCampos + ' from ' + ctTabelas + ' where ');
  dmGestao.qyExamesFiles.SQL.Add(vfCampoFil + ' ' + vfOperador + ' ');
  dmGestao.qyExamesFiles.SQL.Add(QuotedStr(vfParametro));
  if vfOrdem <> '0' then
    dmGestao.qyExamesFiles.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmGestao.qyExamesFiles.SQL.Add(' limit ' + vfLimite);
  dmGestao.qyExamesFiles.Open;
end;

{--- Insere registros da tabela -----------------------------------------------}

procedure InsExamesfiles(vfIDExame: String; vfArquivo: String; vfDescricao: String);
begin
  dmGestao.qyExamesFiles.Insert;
  dmGestao.qyExamesFilesefi_codigo.Value := GetCodigo('efi_codigo', 'examesfiles');
  dmGestao.qyExamesFilesexa_id.Text := vfIDExame;
  dmGestao.qyExamesFilesefi_sequencia.Value := GetCodigoComposto('efi_sequencia', 'examesfiles', 'exa_id', vfIDExame);
  dmGestao.qyExamesFilesefi_arquivo.LoadFromFile(vfArquivo);
  dmGestao.qyExamesFilesefi_extensao.Text := ExtractFileExt(vfArquivo);
  dmGestao.qyExamesFilesefi_descricao.Text := vfDescricao;
  dmGestao.qyExamesFiles.Post;
  dmGestao.qyExamesFiles.Refresh;
end;

end.