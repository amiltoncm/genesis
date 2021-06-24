unit uDaoExamesHist;

interface

uses
  Windows, Messages, SysUtils, Classes, Dialogs, StdCtrls, Forms,
  Graphics, Controls, DB, ClipBrd;

procedure InsertExamesHist;
procedure AppendExamesHist;
procedure EdtExamesHist;
procedure DelExamesHist;
procedure CancelExamesHist;
procedure PostExamesHist(vfExaID: String);
procedure ListarExamesHist(vfOrdem: String; vfLimite: String);
procedure FiltrarExamesHist(vfCampoFil: String; vfOperador: String; vfParametro:
		     String; vfOrdem: String; vfLimite: String);
procedure InsExamesHist(vfIDExame: String; vfIDMat: integer; vfIDTipo: integer;
                        vfIDHIst: String; vfQuant: integer);
procedure FiltrarProcExamesHist(vfcodEio: String);

const
  ctCampos = 'h.ehi_id, h.exa_id, h.mat_id, m.mat_descricao, h.eio_id, ' +
              't.eio_descricao, h.eth_id, p.eth_descricao, h.ehi_quant';
  ctTabelas = 'exameshist h, materiais m, examestipo t, examestipohist p';

implementation

uses dataExames, dataLookups, uFuncoesDB;

{--- Coloca a tabela em insert  -----------------------------------------------}

procedure InsertExamesHist;
begin
  dmExames.qyExamesHist.Insert;
end;

{--- Coloca a tabela em insert e joga no último registro ----------------------}

procedure AppendExamesHist;
begin
  dmExames.qyExamesHist.Append;
end;

{--- Coloca a tabela em edit inserindo algum valor ----------------------------}

procedure EdtExamesHist;
begin
  dmExames.qyExamesHist.Edit;
end;

{--- Exclui registro da tabela ------------------------------------------------}
procedure DelExamesHist;
Var
vRegistro: String;
begin
  Try
    vRegistro := dmExames.qyExamesHist.Fields[0].Text + ' - ' + dmExames.qyExamesHist.Fields[1].Text;
    if messagedlg('Deseja realmente apagar o registro ' + QuotedStr(vRegistro) + ' ?', mtConfirmation,[mbYes, mbNo],0) = mrYes then
      dmExames.qyExamesHist.Delete;
  except
    Begin
      Messagedlg('O registro não pode ser apagado!', mterror, [mbok], 0);
      dmExames.qyExamesHist.Refresh;
    end;
  end;

end;

{--- Dá um cancel na tabela ---------------------------------------------------}

procedure CancelExamesHist;
begin
  dmExames.qyExamesHist.Cancel;
end;

{--- Dá um post na tabela -----------------------------------------------------}

procedure PostExamesHist(vfExaID: String);
begin
  try
    if dmExames.qyExamesHist.State in [dsInsert] then
      dmExames.qyExamesHistehi_id.Value := GetCodigo('ehi_id', 'exameshist');
    dmExames.qyExamesHist.Post;
  except
    on E: Exception do
    begin
      MessageDlg('Erro ao gravar!' + #13 + 'Verifique o preenchimento dos dados!' + #13 +
          E.Message,mtError,[mbOk],0);
      dmExames.qyExamesHist.Refresh;
    end;
  end;
end;

{--- Lista todos os registros da tabela ---------------------------------------}

procedure ListarExamesHist(vfOrdem: String; vfLimite: String);
begin
  dmExames.qyExamesHist.Close;
  dmExames.qyExamesHist.SQL.Clear;
  dmExames.qyExamesHist.SQL.Add('select '+ ctCampos + ' from ' + ctTabelas +
                                   ' where h.mat_id = m.mat_id ' +
                                   'and h.eio_id = t.eio_id ' +
                                   'and h.eth_id = p.eth_id');
  if vfOrdem <> '0' then
    dmExames.qyExamesHist.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmExames.qyExamesHist.SQL.Add(' limit ' + vfLimite);
  dmExames.qyExamesHist.Open;
end;

{--- Filtra registros da tabela -----------------------------------------------}

procedure FiltrarExamesHist(vfCampoFil: String; vfOperador: String; vfParametro:
		     String; vfOrdem: String; vfLimite: String);
begin
  dmExames.qyExamesHist.Close;
  dmExames.qyExamesHist.SQL.Clear;
  dmExames.qyExamesHist.SQL.Add('select ' + ctCampos + ' from ' + ctTabelas +
                                   ' where h.mat_id = m.mat_id ' +
                                   'and h.eio_id = t.eio_id ' +
                                   'and h.eth_id = p.eth_id and ');
  dmExames.qyExamesHist.SQL.Add(vfCampoFil + ' ' + vfOperador + ' ');
  dmExames.qyExamesHist.SQL.Add(QuotedStr(vfParametro));
  if vfOrdem <> '0' then
    dmExames.qyExamesHist.SQL.Add(' order by ' + vfOrdem);
  if vfLimite <> '0' then
    dmExames.qyExamesHist.SQL.Add(' limit ' + vfLimite);
  dmExames.qyExamesHist.Open;
end;

{--- Filtra registros da tabela -----------------------------------------------}

procedure InsExamesHist(vfIDExame: String; vfIDMat: integer; vfIDTipo: integer;
                        vfIDHIst: String; vfQuant: integer);
begin
  try
    dmExames.qyExamesHist.Insert;
    dmExames.qyExamesHistehi_id.Value := GetCodigo('ehi_id', 'exameshist');
    dmExames.qyExamesHistexa_id.Text := vfIDExame;
    dmExames.qyExamesHistmat_id.Value := vfIDMat;
    dmExames.qyExamesHisteio_id.Value := vfIDTipo;
    dmExames.qyExamesHisteth_id.Text := vfIDHist;
    dmExames.qyExamesHistehi_quant.Value := vfQuant;
    dmExames.qyExamesHist.Post;
    dmExames.qyExamesHist.Refresh;
  except
    on E: Exception do
    Begin
      MessageDlg('Erro ao gravar Alteração / Inserção!' + #13#10 +
          E.Message,mtError,[mbOk],0);
      dmExames.qyExamesHist.Refresh;
    end;
  end;
end;

{--- Filtra registros da tabela lkProcExamesHist ------------------------------}

procedure FiltrarProcExamesHist(vfcodEio: String);
begin
  dmLookups.lkProcExamesHist.Close;
  dmLookups.lkProcExamesHist.SQL.Clear;
  dmLookups.lkProcExamesHist.SQL.Add('select eth_id, eio_id, eth_descricao from examestipohist ');
  if ((vfCodEio <> '0') and (vfCodEio <> ' '))  then
  begin
    dmLookups.lkProcExamesHist.SQL.Add('where eio_id = ');
    dmLookups.lkProcExamesHist.SQL.Add(QuotedStr(vfCodEio));
  end;
  dmLookups.lkProcExamesHist.SQL.Add(' order by eth_descricao');
  dmLookups.lkProcExamesHist.Open;
  dmLookups.lkProcExamesHist.Refresh;
end;

end.