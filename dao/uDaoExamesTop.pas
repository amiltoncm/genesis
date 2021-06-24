unit uDaoExamesTop;

interface

uses
  Windows, Messages, SysUtils, Classes, Dialogs, StdCtrls, Forms,
  Graphics, Controls, DB, uClassExamesTop;

procedure SetExamesTop(vfExamesTop: TExamesTop);
procedure InsExamesTop;
procedure EdtExamesTop;
procedure PostExamesTop;
procedure SetValuesTopografia(vfExame: String; vfTopID: String; vfEtgTop: String;
                              vfDadosClin: Integer);
procedure ListarExamesTop(vfOrdem: String; vfLimite: String);
procedure FiltrarExamesTop(vfCampoFil: String; vfOperador: String; vfParametro:
		     String; vfOrdem: String; vfLimite: String);
procedure SetDadosClin(vfEhiID: Integer);

const
ctCampos = 'e.etg_id, e.exa_id, e.etg_seq, e.top_id, t.top_descricao, ' +
           'e.etg_top, e.etg_reserva, e.ehi_id';
ctTabelas = 'examestop e, topografias t';

implementation

uses dataExames, uFuncoesDB;

{--- Insere valores na tabela -------------------------------------------------}

procedure SetExamesTop(vfExamesTop: TExamesTop);
begin
  vfExamesTop.Etg_Id := GetCodigo('etg_id', 'examestop');
  vfExamesTop.Etg_Seq := GetCodigoComposto('etg_seq', 'examestop', 'exa_id',
                                             vfExamesTop.Exa_Id);
  InsExamesTop;
  dmExames.qyExamesTopexa_id.Text := vfExamesTop.Exa_Id;
  dmExames.qyExamesTopetg_id.Value := vfExamesTop.Etg_Id;
  dmExames.qyExamesTopetg_seq.Value := vfExamesTop.Etg_Seq;
  dmExames.qyExamesToptop_id.Value := vfExamesTop.Top_Id;
  dmExames.qyExamesTopetg_top.Text := vfExamesTop.Etg_Top;
  dmExames.qyExamesTopetg_reserva.Value := vfExamesTop.Etg_Reserva;
  dmExames.qyExamesToptop_descricao.Value := vfExamesTop.TopDescricao;
  PostExamesTop;
end;

{--- Coloca a tabela em insert  -----------------------------------------------}

procedure InsExamesTop;
begin
  dmExames.qyExamesTop.Insert;
end;

{--- Coloca a tabela em edit inserindo algum valor ----------------------------}

procedure EdtExamesTop;
begin
  dmExames.qyExamesTop.Edit;
end;

{--- Dá um post na tebala ------=----------------------------------------------}

procedure PostExamesTop;
begin
  try
    dmExames.qyExamesTop.Post;
  except
    on E: Exception do
    begin
      MessageDlg('Erro ao gravar Alteração / Inserção!' + #13 +
          E.Message,mtError,[mbOk],0);
      dmExames.qyExamesTop.Refresh;
    end;
  end;
end;

{--- Insere resgistros na tabela=----------------------------------------------}

procedure SetValuesTopografia(vfExame: String; vfTopID: String; vfEtgTop: String;
                              vfDadosClin: Integer);
begin
  try
    dmExames.qyExamesTop.Append;
    dmExames.qyExamesTopexa_id.Text := vfExame;
    dmExames.qyExamesTopetg_id.Value := GetCodigo('etg_id', 'examestop');
    dmExames.qyExamesTopetg_seq.Value := GetCodigoComposto('etg_seq', 'examestop', 'exa_id', vfExame);
    dmExames.qyExamesToptop_id.Value := StrToInt(vfTopID);
    dmExames.qyExamesTopetg_top.Text := vfEtgTop;
    dmExames.qyExamesTopetg_reserva.Value := false;
    dmExames.qyExamesTopehi_id.Value := vfDadosClin;
    dmExames.qyExamesTop.Post;
    dmExames.qyExamesTop.Refresh;
  except
    on E: Exception do
    begin
      MessageDlg('Erro ao gravar Alteração / Inserção!' + #13 +
          E.Message,mtError,[mbOk],0);
      dmExames.qyExamesTop.Refresh;
    end;
  end;
end;

{--- Lista todos os registros da tabela ---------------------------------------}

procedure ListarExamesTop(vfOrdem: String; vfLimite: String);
begin
  dmExames.qyExamesTop.Close;
  dmExames.qyExamesTop.SQL.Clear;
  dmExames.qyExamesTop.SQL.Add('select '+ ctCampos + ' from ' + ctTabelas);
  dmExames.qyExamesTop.SQL.Add(' where e.top_id = t.top_id ');
  if vfOrdem <> '0' then
    dmExames.qyExamesTop.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmExames.qyExamesTop.SQL.Add(' limit ' + vfLimite);
  dmExames.qyExamesTop.Open;
end;

{--- Filtra registros da tabela -----------------------------------------------}

procedure FiltrarExamesTop(vfCampoFil: String; vfOperador: String; vfParametro:
		     String; vfOrdem: String; vfLimite: String);
begin
  dmExames.qyExamesTop.Close;
  dmExames.qyExamesTop.SQL.Clear;
  dmExames.qyExamesTop.SQL.Add('select ' + ctCampos + ' from ' + ctTabelas);
  dmExames.qyExamesTop.SQL.Add(' where e.top_id = t.top_id and ');
  dmExames.qyExamesTop.SQL.Add(vfCampoFil + ' ' + vfOperador + ' ');
  dmExames.qyExamesTop.SQL.Add(QuotedStr(vfParametro));
  if vfOrdem <> '0' then
    dmExames.qyExamesTop.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmExames.qyExamesTop.SQL.Add(' limit ' + vfLimite);
  dmExames.qyExamesTop.Open;
end;

procedure SetDadosClin(vfEhiID: Integer);
begin
  dmExames.qyExamesTopehi_id.Value := vfEhiID;
end;

end.
