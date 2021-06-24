unit uFuncoesExames;

interface

function IsCito(vfCodTp: Integer): boolean;
function IsHisto(vfCodTp: Integer): boolean;
function IsCapturaHib(vfCodTp: Integer): boolean;
function NumerosCit(vfKey: Char): Char;

implementation

function IsCito(vfCodTp: Integer): boolean;
var
vResult: boolean;
begin
  case vfCodTp of
    0: vResult := true; //Citologia especial
    1: vResult := true;  //Citologia
    5: vResult := true;  //Citologia meio líquido
    else
      vResult := false;
  end;
  Result := vResult;
end;

function IsHisto(vfCodTp: Integer): boolean;
var
vResult: boolean;
begin
  case vfCodTp of
    2: vResult := true; //Histologia
    3: vResult := true;  //Revisão (Histologia)
    4: vResult := true; //Imunohistoquímica
    else
      vResult := false;
  end;
  Result := vResult;
end;

function IsCapturaHib(vfCodTp: Integer): boolean;
var
vResult: boolean;
begin
  case vfCodTp of
    6: vResult := true; //Captura híbrida
    else
      vResult := false;
  end;
  Result := vResult;
end;

function NumerosCit(vfKey: Char): Char;
begin
  if not (vfKey in [ '0'..'9', chr(8), chr(67), chr(99)]) then
    Result := #0
  else
    Result := vfKey;
end;

end.
