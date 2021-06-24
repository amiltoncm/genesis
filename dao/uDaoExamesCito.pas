unit uDaoExamesCito;

interface

uses
  Windows, Messages, SysUtils, Classes, Dialogs, StdCtrls, Forms,
  Graphics, Controls, DB;

procedure ListarExamesCito(vfOrdem: String; vfLimite: String);
procedure FiltrarExamesCito(vfCampoFil: String; vfOperador: String; vfParametro:
		     String; vfOrdem: String; vfLimite: String);
procedure InsExamesCito(vfExame: String; vfLocal: Integer; vfQuant: integer);

const
  ctCampos = 't.eto_local, t.eto_descricao, c.eci_id, c.exa_id, c.eto_id, c.eci_quant';
  ctTabelas = 'examescito c, examestipocito t';

implementation

uses dataExames, uFuncoesDB;

{--- Lista todos os registros da tabela ---------------------------------------}

procedure ListarExamesCito(vfOrdem: String; vfLimite: String);
begin
  dmExames.qyExamesCito.Close;
  dmExames.qyExamesCito.SQL.Clear;
  dmExames.qyExamesCito.SQL.Add('select '+ ctCampos + ' from ' + ctTabelas +
                                ' where c.eto_id = t.eto_id');
  if vfOrdem <> '0' then
    dmExames.qyExamesCito.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmExames.qyExamesCito.SQL.Add(' limit ' + vfLimite);
  dmExames.qyExamesCito.Open;
end;

{--- Filtra registros da tabela -----------------------------------------------}

procedure FiltrarExamesCito(vfCampoFil: String; vfOperador: String; vfParametro:
		     String; vfOrdem: String; vfLimite: String);
begin
  dmExames.qyExamesCito.Close;
  dmExames.qyExamesCito.SQL.Clear;
  dmExames.qyExamesCito.SQL.Add('select ' + ctCampos + ' from ' + ctTabelas +
                                ' where c.eto_id = t.eto_id and');
  dmExames.qyExamesCito.SQL.Add(vfCampoFil + ' ' + vfOperador + ' ');
  dmExames.qyExamesCito.SQL.Add(QuotedStr(vfParametro));
  if vfOrdem <> '0' then
    dmExames.qyExamesCito.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmExames.qyExamesCito.SQL.Add(' limit ' + vfLimite);
  dmExames.qyExamesCito.Open;
end;

{--- Insere registros da tabela -----------------------------------------------}

procedure InsExamesCito(vfExame: String; vfLocal: Integer; vfQuant: integer);
begin
  try
    dmExames.qyExamesCito.Insert;
    dmExames.qyExamesCitoeci_id.Value := GetCodigo('eci_id', 'examescito');
    dmExames.qyExamesCitoexa_id.Text := vfExame;
    dmExames.qyExamesCitoeto_id.Value := vfLocal;
    dmExames.qyExamesCitoeci_quant.Value := vfQuant;
    dmExames.qyExamesCito.Post;
    dmExames.qyExamesCito.Refresh;
  except
    on E: Exception do
    begin
      MessageDlg('Erro ao gravar a Requisição!' + #13#10 +
      E.Message, mtError, [mbOk], 0);
    end;
  end;
end;

end.