unit uDaoExamesBlocos;

interface

uses
  Windows, Messages, SysUtils, Classes, Dialogs, StdCtrls, Forms,
  Graphics, Controls, DB, uClassExamesBlocos;

procedure InsExamesBlocos;
procedure EdtExamesBlocos;
procedure DelExamesBlocos;
procedure PostExamesBlocos;
procedure CancelExamesBlocos;
procedure SetValuesExamesBlocos(vfExamesBlocos: TExamesBlocos);
procedure ListarExamesBlocos(vfOrdem: String; vfLimite: String);
procedure FiltrarExamesBlocos(vfCampoFil: String; vfOperador: String; vfParametro:
                      	      String; vfOrdem: String; vfLimite: String);
procedure FiltrarExamesBlocosEtg(vfCampoFil: String; vfOperador: String; vfParametro:
                        		     String; vfEtgId: String; vfOrdem: String; vfLimite: String);
procedure SetTopologiaBlocos(vfEtgID: String);

const
ctCampos = 't.etg_seq, e.ebl_id, e.exa_id, e.etg_id, e.ebl_seq, e.ebl_laminas, ' +
           'e.ebl_fragmentos';
ctTabelas = 'examesblocos e, examestop t';

implementation

uses dataExames, uFuncoesDB;

{--- Coloca a tabela em insert  -----------------------------------------------}

procedure InsExamesBlocos;
begin
  dmExames.qyExamesBlocos.Insert;
end;

{--- Coloca a tabela em edit inserindo algum valor ----------------------------}

procedure EdtExamesBlocos;
begin
  dmExames.qyExamesBlocos.Edit;
end;

{--- Exclui registro da tabela ------------------------------------------------}

procedure DelExamesBlocos;
Var
vRegistro: String;
begin
  Try
    vRegistro := dmExames.qyExamesBlocos.Fields[0].Text + ' - ' + dmExames.qyExamesBlocos.Fields[1].Text;
    if messagedlg('Deseja realmente apagar o registro ' + QuotedStr(vRegistro) + ' ?', mtConfirmation,[mbYes, mbNo],0) = mrYes then
      dmExames.qyExamesBlocos.Delete;
  except
    Begin
      Messagedlg('O registro não pode ser apagado!', mterror, [mbok], 0);
      dmExames.qyExamesBlocos.Refresh;
    end;
  end;
end;

{--- Dá um post na tabela -----------------------------------------------------}

procedure PostExamesBlocos;
begin
  try
    dmExames.qyExamesBlocos.Post;
  except
    on E: Exception do
    begin
      MessageDlg('Erro ao gravar Alteração / Inserção!' + #13 +
          E.Message,mtError,[mbOk],0);
      dmExames.qyExamesBlocos.Refresh;
    end;
  end;
end;

{--- Cancela alterações tabela ------------------------------------------------}

procedure CancelExamesBlocos;
begin
  dmExames.qyExamesBlocos.Cancel;
end;

{--- Insere valores na tabela -------------------------------------------------}

procedure SetValuesExamesBlocos(vfExamesBlocos: TExamesBlocos);
begin
  try
    dmExames.qyExamesBlocos.Insert;
    if vfExamesBlocos.Ebl_id = 0 then
      dmExames.qyExamesBlocosebl_id.Value := GetCodigo('ebl_id', 'examesblocos')
    else
      dmExames.qyExamesBlocosebl_id.Value := vfExamesBlocos.Ebl_id;
    dmExames.qyExamesBlocosexa_id.Text := vfExamesBlocos.Exa_id;
    dmExames.qyExamesBlocosetg_id.Value := vfExamesBlocos.Etg_id;
    dmExames.qyExamesBlocosebl_seq.Value := GetCodigoComposto('ebl_seq', 'examesblocos', 'etg_id', dmExames.qyExamesBlocosetg_id.Text);
    dmExames.qyExamesBlocosebl_laminas.Value := vfExamesBlocos.Ebl_laminas;
    dmExames.qyExamesBlocosebl_fragmentos.Value := vfExamesBlocos.Ebl_fragmentos;
    dmExames.qyExamesBlocos.Post;
    dmExames.qyExamesBlocos.Refresh;
  except
    on E: Exception do
    begin
      MessageDlg('Erro ao gravar Alteração / Inserção!' + #13 +
          E.Message,mtError,[mbOk],0);
      dmExames.qyExamesBlocos.Refresh;
    end;
  end;
end;

{--- Lista todos os registros da tabela ---------------------------------------}

procedure ListarExamesBlocos(vfOrdem: String; vfLimite: String);
begin
  dmExames.qyExamesBlocos.Close;
  dmExames.qyExamesBlocos.SQL.Clear;
  dmExames.qyExamesBlocos.SQL.Add('select '+ ctCampos + ' from ' + ctTabelas);
  dmExames.qyExamesBlocos.SQL.Add(' where e.etg_id = t.etg_id ');
  if vfOrdem <> '0' then
    dmExames.qyExamesBlocos.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmExames.qyExamesBlocos.SQL.Add(' limit ' + vfLimite);
  dmExames.qyExamesBlocos.Open;
end;

{--- Filtra registros da tabela -----------------------------------------------}

procedure FiltrarExamesBlocos(vfCampoFil: String; vfOperador: String; vfParametro:
		     String; vfOrdem: String; vfLimite: String);
begin
  dmExames.qyExamesBlocos.Close;
  dmExames.qyExamesBlocos.SQL.Clear;
  dmExames.qyExamesBlocos.SQL.Add('select ' + ctCampos + ' from ' + ctTabelas);
  dmExames.qyExamesBlocos.SQL.Add(' where e.etg_id = t.etg_id and ');
  dmExames.qyExamesBlocos.SQL.Add(vfCampoFil + ' ' + vfOperador + ' ');
  dmExames.qyExamesBlocos.SQL.Add(QuotedStr(vfParametro));
  if vfOrdem <> '0' then
    dmExames.qyExamesBlocos.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmExames.qyExamesBlocos.SQL.Add(' limit ' + vfLimite);
  dmExames.qyExamesBlocos.Open;
end;

{--- Filtra registros da tabela -----------------------------------------------}

procedure FiltrarExamesBlocosEtg(vfCampoFil: String; vfOperador: String; vfParametro:
                        		     String; vfEtgId: String; vfOrdem: String; vfLimite: String);
begin
  dmExames.qyExamesBlocos.Close;
  dmExames.qyExamesBlocos.SQL.Clear;
  dmExames.qyExamesBlocos.SQL.Add('select ' + ctCampos + ' from ' + ctTabelas);
  dmExames.qyExamesBlocos.SQL.Add(' where e.etg_id = t.etg_id and ');
  dmExames.qyExamesBlocos.SQL.Add(vfCampoFil + ' ' + vfOperador + ' ');
  dmExames.qyExamesBlocos.SQL.Add(QuotedStr(vfParametro));
  dmExames.qyExamesBlocos.SQL.Add(' and e.etg_id = ');
  dmExames.qyExamesBlocos.SQL.Add(vfEtgId);
  if vfOrdem <> '0' then
    dmExames.qyExamesBlocos.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmExames.qyExamesBlocos.SQL.Add(' limit ' + vfLimite);
  dmExames.qyExamesBlocos.Open;
end;

{--- Altera topologia nos blocos ----------------------------------------------}

procedure SetTopologiaBlocos(vfEtgID: String);
begin
  EdtExamesBlocos;
  dmExames.qyExamesBlocosetg_id.Text := vfEtgID;
  PostExamesBlocos;
end;

end.
