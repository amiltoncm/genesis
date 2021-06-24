unit uFuncoesSeguranca;

interface

function EncryptMsg(vfMsg1: String; vfEncryptNo: Integer): String;
function DecryptMsg(vfMsg1: String; vfDecryptNo: Integer): String;
function GeraSenhaHex(vfDigitos: Integer): String;

implementation

function EncryptMsg(vfMsg1: String; vfEncryptNo: Integer): String;
Var
vResultStr: String;
vTemp: Char;
vI, vEncryptIndex: integer;
begin
  vResultStr := '';
  vTemp := ' ';
  For vI := 1 to Length(vfMsg1) do
  Begin
    For vEncryptIndex := 1 to vfEncryptNo do
    Begin
      vTemp := Succ(vfMsg1[vI]);
      vfMsg1[vI] := vTemp;
    end;
    vResultStr := vResultStr + vTemp;
  end;
  EncryptMsg := vResultStr;
end;

function DecryptMsg(vfMsg1: String; vfDecryptNo: Integer): String;
Var
vResultStr: String;
vTemp: Char;
vI, vDecryptIndex: integer;
begin
  vResultStr := '';
  vTemp := ' ';
  For vI := 1 to Length(vfMsg1) do
  Begin
    For vDecryptIndex := 1 to vfDecryptNo do
    Begin
      vTemp := Pred(vfMsg1[vI]);
      vfMsg1[vI] := vTemp;
    end;
    vResultStr := vResultStr + vTemp;
  end;
  DecryptMsg := vResultStr;
end;

function GeraSenhaHex(vfDigitos: Integer): String;
const
cChar = '0AYVRO1UNS9FJCH2ch8tipbzmwelg3xdqkay7vroun4sfjTIPB6ZMWE5LGXDQK';
var
vP, vQ : Integer;
vSenha: String;
begin
  Randomize;
  vSenha := '';
  for vP := 1 to vfDigitos do
  begin
    vQ := Random(Length(cChar)) + 1;
    vSenha := vSenha + cChar[vQ];
  end;
  Result := vSenha;
end;

end.
