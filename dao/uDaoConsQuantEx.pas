unit uDaoConsQuantEx;

interface

uses
  Windows, Messages, SysUtils, Classes, Dialogs, StdCtrls, Forms,
  Graphics, Controls, DB;

  function Filtrar(vfDataInic: String; vfDataFinal: String): String;

implementation

uses dataConsultas, uConsQuantEx;

function Filtrar(vfDataInic: String; vfDataFinal: String): String;
begin
  dmConsultas.qyConsQuantEx.Close;
  dmConsultas.qyConsQuantEx.SQL.Clear;
  dmConsultas.qyConsQuantEx.SQL.Add('select exa_data, count(exa_id) ');
  dmConsultas.qyConsQuantEx.SQL.Add('from exames where exa_data >= ');
  dmConsultas.qyConsQuantEx.SQL.Add(QuotedStr(vfDataInic));
  dmConsultas.qyConsQuantEx.SQL.Add(' and exa_data <= ');
  dmConsultas.qyConsQuantEx.SQL.Add(QuotedStr(vfDataFinal));
  dmConsultas.qyConsQuantEx.SQL.Add('group by exa_data order by exa_data');
  dmConsultas.qyConsQuantEx.Open;
  //Conta exames
  dmConsultas.QTemp.Close;
  dmConsultas.QTemp.SQL.Clear;
  dmConsultas.QTemp.SQL.Add('select count(exa_id) ');
  dmConsultas.QTemp.SQL.Add('from exames where exa_data >= ');
  dmConsultas.QTemp.SQL.Add(QuotedStr(vfDataInic));
  dmConsultas.QTemp.SQL.Add(' and exa_data <= ');
  dmConsultas.QTemp.SQL.Add(QuotedStr(vfDataFinal));
  dmConsultas.QTemp.Open;
  repeat
  begin
    frmConsQuantEx.mdExames.Insert;
    frmConsQuantEx.mdExamesData.Value := dmConsultas.qyConsQuantExexa_data.Value;
    frmConsQuantEx.mdExamesQuantidade.Value := dmConsultas.qyConsQuantExcount.Value;
    frmConsQuantEx.mdExames.Post;
    dmConsultas.qyConsQuantEx.Next;
  end;
  until dmConsultas.qyConsQuantEx.Eof = true;
  Result := dmConsultas.QTemp.Fields[0].Text;
end;

end.
