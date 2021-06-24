unit uDaoExamesRespAd;

interface

uses
  Windows, Messages, SysUtils, Classes, Dialogs, StdCtrls, Forms,
  Graphics, Controls, DB;

procedure ListarExamesRespAd(vfOrdem: String; vfLimite: String);
procedure FiltrarExamesRespAd(vfCampoFil: String; vfOperador: String; vfParametro:
                              String; vfOrdem: String; vfLimite: String);
procedure InsExamesRespAd(vfExaId: String; vfMedCodigo: String);
procedure UpdExamesRespAd(vfExaId: String; vfMedCodigo: String);

const
  ctCampos = 'e.exa_id, e.med_codigo, m.med_titulo, m.med_nome, c.cos_tipo, ' +
              'm.med_numconselho, m.cos_uf';
  ctTabelas = 'examesrespad e, medicos m, conselhos c';

implementation

uses dataExames;

{--- Lista todos os registros da tabela ---------------------------------------}

procedure ListarExamesRespAd(vfOrdem: String; vfLimite: String);
begin
  dmExames.qyExamesRespAd.Close;
  dmExames.qyExamesRespAd.SQL.Clear;
  dmExames.qyExamesRespAd.SQL.Add('select '+ ctCampos + ' from ' + ctTabelas +
                                  ' where e.med_codigo = m.med_codigo ' +
                                  ' order by '+ vfOrdem);
  if vfLimite <> '0' then
    dmExames.qyExamesRespAd.SQL.Add(' limit ' + vfLimite);
  dmExames.qyExamesRespAd.Open;
end;

{--- Filtra registros da tabela -----------------------------------------------}

procedure FiltrarExamesRespAd(vfCampoFil: String; vfOperador: String; vfParametro:
                              String; vfOrdem: String; vfLimite: String);
begin
  dmExames.qyExamesRespAd.Close;
  dmExames.qyExamesRespAd.SQL.Clear;
  dmExames.qyExamesRespAd.SQL.Add('select ' + ctCampos + ' from ' + ctTabelas + ' where ');
  dmExames.qyExamesRespAd.SQL.Add(' e.med_codigo = m.med_codigo and ');
  dmExames.qyExamesRespAd.SQL.Add(vfCampoFil + ' ' + vfOperador + ' ');
  dmExames.qyExamesRespAd.SQL.Add(QuotedStr(vfParametro));
  if vfOrdem <> '0' then
    dmExames.qyExamesRespAd.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmExames.qyExamesRespAd.SQL.Add(' limit ' + vfLimite);
  dmExames.qyExamesRespAd.Open;
end;

{--- Insere medico adicional --------------------------------------------------}

procedure InsExamesRespAd(vfExaId: String; vfMedCodigo: String);
begin
  try
    dmExames.qyExamesRespAd.Insert;
    dmExames.qyExamesRespAdexa_id.Text := vfExaId;
    dmExames.qyExamesRespAdmed_codigo.Text := vfMedCodigo;
    dmExames.qyExamesRespAd.Post;
    except
      on E: Exception do
      begin
        MessageDlg('Erro ao gravar o Responsável adicional!' + #13#10 +
        E.Message, mtError, [mbOk], 0);
      end;
    end;
end;

{--- Altera medico adicional --------------------------------------------------}

procedure UpdExamesRespAd(vfExaId: String; vfMedCodigo: String);
begin
  try
    dmExames.qyExamesRespAd.Edit;
    dmExames.qyExamesRespAdexa_id.Text := vfExaId;
    dmExames.qyExamesRespAdmed_codigo.Text := vfMedCodigo;
    dmExames.qyExamesRespAd.Post;
    except
      on E: Exception do
      begin
        MessageDlg('Erro ao alterar o Responsável adicional!' + #13#10 +
        E.Message, mtError, [mbOk], 0);
      end;
    end;
end;

end.