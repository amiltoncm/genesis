unit uFuncIntegridade;

interface

uses
  Windows, Messages, SysUtils, Classes, Dialogs, StdCtrls, Forms,
  Graphics, Controls, DB, JPeg, Registry;

procedure VerificaIntegridade(vDataInic: TDate);
procedure ExamesSolicCito(vIDExame: String; vData: String);
procedure ExamesSolicHisto(vIDExame: String; vData: String);
procedure Procedimentos(vIDExame: String; vData: String; vTipo: String);
procedure ExamesCito(vIDExame: String; vData: String);
procedure ExamesHisto(vIDExame: String; vData: String);

implementation

uses dataConsultas, uIntegridade;

{
  Verifica exames concluídos que faltam dados para estarem completos.
}

//Função principal que recebe as opções que serão verificadas
procedure VerificaIntegridade(vDataInic: TDate);
begin
  //filtra citologias concluídas
  dmConsultas.qyIntegridade.Close;
  dmConsultas.qyIntegridade.SQL.Clear;
  dmConsultas.qyIntegridade.SQL.Add('select exa_id, exa_data from exames ');
  dmConsultas.qyIntegridade.SQL.Add('where etp_id = 1 ');
  dmConsultas.qyIntegridade.SQL.Add('and exa_etapa >= 4 ');
  dmConsultas.qyIntegridade.SQL.Add('and exa_data >= ');
  dmConsultas.qyIntegridade.SQL.Add(QuotedStr(FormatDateTime('dd/mm/yyyy', vDataInic)));
  dmConsultas.qyIntegridade.SQL.Add(' order by exa_data');
  dmConsultas.qyIntegridade.Open;
  frmIntegridade.dbMemIntegridade.Active := True;
  dmConsultas.qyIntegridade.Last;
  if not(dmConsultas.qyIntegridadeexa_id.IsNull) then
  begin
    repeat
    begin
      ExamesSolicCito(dmConsultas.qyIntegridadeexa_id.text, dmConsultas.qyIntegridadeexa_data.text);
      Procedimentos(dmConsultas.qyIntegridadeexa_id.text, dmConsultas.qyIntegridadeexa_data.text, 'C');
      ExamesCito(dmConsultas.qyIntegridadeexa_id.text, dmConsultas.qyIntegridadeexa_data.text);
      dmConsultas.qyIntegridade.Prior;
    end;
    until dmConsultas.qyIntegridade.BOF = true;
  end;
  //filtra histologias concluídas
  dmConsultas.qyIntegridade.Close;
  dmConsultas.qyIntegridade.SQL.Clear;
  dmConsultas.qyIntegridade.SQL.Add('select exa_id, exa_data from exames ');
  dmConsultas.qyIntegridade.SQL.Add('where etp_id = 2 ');
  dmConsultas.qyIntegridade.SQL.Add('and exa_etapa >= 6 ');
  dmConsultas.qyIntegridade.SQL.Add('and exa_data >= ');
  dmConsultas.qyIntegridade.SQL.Add(QuotedStr(FormatDateTime('dd/mm/yyyy', vDataInic)));
  dmConsultas.qyIntegridade.Open;
  dmConsultas.qyIntegridade.Last;
  if not(dmConsultas.qyIntegridadeexa_id.IsNull) then
  begin
    repeat
    begin
      ExamesSolicHisto(dmConsultas.qyIntegridadeexa_id.text, dmConsultas.qyIntegridadeexa_data.text);
      Procedimentos(dmConsultas.qyIntegridadeexa_id.text, dmConsultas.qyIntegridadeexa_data.text, 'C');
      ExamesHisto(dmConsultas.qyIntegridadeexa_id.text, dmConsultas.qyIntegridadeexa_data.text);
      dmConsultas.qyIntegridade.Prior;
    end;
    until dmConsultas.qyIntegridade.BOF = true;
  end;
end;

//Verifica exames solicitados Citologia
procedure ExamesSolicCito(vIDExame: String; vData: String);
begin
  dmConsultas.qyExamesSolic.Close;
  dmConsultas.qyExamesSolic.SQL.Clear;
  dmConsultas.qyExamesSolic.SQL.Add('select exa_id from examescito where exa_id = ');
  dmConsultas.qyExamesSolic.SQL.Add(QuotedStr(vIDExame));
  dmConsultas.qyExamesSolic.Open;
  if dmConsultas.qyExamesSolic.Fields[0].IsNull then
  begin
    frmIntegridade.dbMemIntegridade.Insert;
    frmIntegridade.dbMemIntegridadeexa_id.Text := vIDExame;
    frmIntegridade.dbMemIntegridadeexa_data.Text := vData;
    frmIntegridade.dbMemIntegridadeexa_tipo.Text := 'Citologia';
    frmIntegridade.dbMemIntegridadeexa_erro.Text := 'Exame(s) solicitado(s) não inserido!';
    frmIntegridade.dbMemIntegridade.Post;
  end;
end;

//Verifica exames solicitados Histologia
procedure ExamesSolicHisto(vIDExame: String; vData: String);
begin
  dmConsultas.qyExamesSolic.Close;
  dmConsultas.qyExamesSolic.SQL.Clear;
  dmConsultas.qyExamesSolic.SQL.Add('select exa_id from exameshist where exa_id = ');
  dmConsultas.qyExamesSolic.SQL.Add(QuotedStr(vIDExame));
  dmConsultas.qyExamesSolic.Open;
  if dmConsultas.qyExamesSolic.Fields[0].IsNull then
  begin
    frmIntegridade.dbMemIntegridade.Insert;
    frmIntegridade.dbMemIntegridadeexa_id.Text := vIDExame;
    frmIntegridade.dbMemIntegridadeexa_data.Text := vData;
    frmIntegridade.dbMemIntegridadeexa_tipo.Text := 'Histologia';
    frmIntegridade.dbMemIntegridadeexa_erro.Text := 'Exame(s) solicitado(s) não inserido!';
    frmIntegridade.dbMemIntegridade.Post;
  end;
end;

//Verifica procedimentos
procedure Procedimentos(vIDExame: String; vData: String; vTipo: String);
begin
  dmConsultas.qyExamesSolic.Close;
  dmConsultas.qyExamesSolic.SQL.Clear;
  dmConsultas.qyExamesSolic.SQL.Add('select exa_id from examesproced where exa_id = ');
  dmConsultas.qyExamesSolic.SQL.Add(QuotedStr(vIDExame));
  dmConsultas.qyExamesSolic.Open;
  if dmConsultas.qyExamesSolic.Fields[0].IsNull then
  begin
    frmIntegridade.dbMemIntegridade.Insert;
    frmIntegridade.dbMemIntegridadeexa_id.Text := vIDExame;
    frmIntegridade.dbMemIntegridadeexa_data.Text := vData;
    if vTipo = 'C' then
      frmIntegridade.dbMemIntegridadeexa_tipo.Text := 'Citologia';
    if vTipo = 'D' then
      frmIntegridade.dbMemIntegridadeexa_tipo.Text := 'Histologia';
    frmIntegridade.dbMemIntegridadeexa_erro.Text := 'Procedimento não inserido!';
    frmIntegridade.dbMemIntegridade.Post;
  end;
end;

procedure ExamesCito(vIDExame: String; vData: String);
begin
  dmConsultas.qyExamesSolic.Close;
  dmConsultas.qyExamesSolic.SQL.Clear;
  dmConsultas.qyExamesSolic.SQL.Add('select exa_id, exa_laudo from exameslaudo where exa_id = ');
  dmConsultas.qyExamesSolic.SQL.Add(QuotedStr(vIDExame));
  dmConsultas.qyExamesSolic.Open;
  if dmConsultas.qyExamesSolic.Fields[1].IsNull then
  begin
    frmIntegridade.dbMemIntegridade.Insert;
    frmIntegridade.dbMemIntegridadeexa_id.Text := vIDExame;
    frmIntegridade.dbMemIntegridadeexa_data.Text := vData;
    frmIntegridade.dbMemIntegridadeexa_tipo.Text := 'Citologia';
    frmIntegridade.dbMemIntegridadeexa_erro.Text := 'Laudo não preenchido!';
    frmIntegridade.dbMemIntegridade.Post;
  end;
end;

procedure ExamesHisto(vIDExame: String; vData: String);
begin
  //Verifica macroscopia
  dmConsultas.qyExamesSolic.Close;
  dmConsultas.qyExamesSolic.SQL.Clear;
  dmConsultas.qyExamesSolic.SQL.Add('select exa_id, ehm_macroscopia from exameshistmacro where exa_id = ');
  dmConsultas.qyExamesSolic.SQL.Add(QuotedStr(vIDExame));
  dmConsultas.qyExamesSolic.Open;
  if dmConsultas.qyExamesSolic.Fields[1].IsNull then
  begin
    frmIntegridade.dbMemIntegridade.Insert;
    frmIntegridade.dbMemIntegridadeexa_id.Text := vIDExame;
    frmIntegridade.dbMemIntegridadeexa_data.Text := vData;
    frmIntegridade.dbMemIntegridadeexa_tipo.Text := 'Histologia';
    frmIntegridade.dbMemIntegridadeexa_erro.Text := 'Macroscopia não preenchida!';
    frmIntegridade.dbMemIntegridade.Post;
  end;
  //Verifica microscopia
  dmConsultas.qyExamesSolic.Close;
  dmConsultas.qyExamesSolic.SQL.Clear;
  dmConsultas.qyExamesSolic.SQL.Add('select exa_id, ehr_microscopia from exameshistmicro where exa_id = ');
  dmConsultas.qyExamesSolic.SQL.Add(QuotedStr(vIDExame));
  dmConsultas.qyExamesSolic.Open;
  if dmConsultas.qyExamesSolic.Fields[1].IsNull then
  begin
    frmIntegridade.dbMemIntegridade.Insert;
    frmIntegridade.dbMemIntegridadeexa_id.Text := vIDExame;
    frmIntegridade.dbMemIntegridadeexa_data.Text := vData;
    frmIntegridade.dbMemIntegridadeexa_tipo.Text := 'Histologia';
    frmIntegridade.dbMemIntegridadeexa_erro.Text := 'Microscopia não preenchida!';
    frmIntegridade.dbMemIntegridade.Post;
  end;
end;

end.
