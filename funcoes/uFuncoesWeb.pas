unit uFuncoesWeb;

interface

uses
  WinInet, Winapi.Windows, UrlMon;

function ConectadoWeb: boolean;
function DownloadFile(vfSource, vfDest: string): Boolean;

implementation

function ConectadoWeb: boolean;
var
flags : DWORD;
begin
  // verifica se está conectado a internet usando a API do Windows, é preciso declarar a uses WinInet.
  if not InternetGetConnectedState(@flags, 0) then
    result := false
  else
    result := true;
end;

function DownloadFile(vfSource, vfDest: string): Boolean;
Begin
  try
    Result :=  UrlDownloadToFile(nil, PChar(vfSource), PChar(vfDest), 0, nil) = 0;
  except
    Result := False;
  end;
end;

end.

