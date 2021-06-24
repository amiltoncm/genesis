unit uDaoTestes;

interface

uses
  Windows, Messages, SysUtils, Classes, Dialogs, StdCtrls, Forms,
  Graphics, Controls, DB;

function TestaUltimaDataExame: TDate;

implementation

uses dataTmpConexao;

function TestaUltimaDataExame: TDate;
begin
  dmTmpConexao.QTemp.Close;
  dmTmpConexao.QTemp.SQL.Clear;
  dmTmpConexao.QTemp.SQL.Add('select max(exa_data) from exames');
  dmTmpConexao.QTemp.Open;
  Result := TDate(dmTmpConexao.QTemp.Fields[0].Value);
end;

end.
