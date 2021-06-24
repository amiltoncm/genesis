unit uFuncoesFormatacao;

interface

uses Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
     StdCtrls, ExtCtrls, ComCtrls;

function ValorPorExtenso(vfVlr: Real): String;
function NumerosCit(vfKey: Char ): Char;
function LimpaDoc(vfValor: String): String;
function NumeroReal(vfKey: Char ): Char;
function NumeroRealSP(vfKey: Char ): Char;
function NumerosReg(vfKey : Char ): Char;
function Numeros(vfKey : Char ): Char;
function TrocaVirgPPto(vfValor: String): String;
function LimpaReal(vfValor: String): String;
function RemoveAcento(vfStr: String): String;

implementation

function ValorPorExtenso(vfVlr: Real): String;
const
ctUnidade: array[1..19] of string = ('um', 'dois', 'trÍs', 'quatro', 'cinco',
             'seis', 'sete', 'oito', 'nove', 'dez', 'onze', 'doze', 'treze',
             'quatorze', 'quinze', 'dezesseis', 'dezessete', 'dezoito', 'dezenove');
ctCentena: array[1..9] of string = ('cento', 'duzentos', 'trezentos', 'quatrocentos',
             'quinhentos', 'seiscentos', 'setecentos', 'oitocentos', 'novecentos');
ctDezena: array[2..9] of string = ('vinte', 'trinta', 'quarenta', 'cinquenta',
             'sessenta', 'setenta', 'oitenta', 'noventa');
ctQualificaS: array[0..4] of string = ('', 'mil', 'milh„o', 'bilh„o', 'trilh„o');
ctQualificaP: array[0..4] of string = ('', 'mil', 'milhıes', 'bilhıes', 'trilhıes');
var
vInteiro: Int64;
vResto: Real;
vVlrS, vS, vSaux, vVlrP, vCentavos: string;
vN, vUnid, vDez, vCent, vTam, vI: Integer;
vUmReal, vTem: Boolean;
begin
  if (vfVlr = 0) then
  begin
    valorPorExtenso := 'zero';
    exit;
  end;
  vInteiro := trunc(vfVlr);
  vResto := vfVlr - vInteiro;
  vVlrS := inttostr(vInteiro);
  if (length(vVlrS) > 15) then
  begin
    ValorPorExtenso := 'Erro: valor superior a 999 trilhıes.';
    exit;
  end;
  vS := '';
  vCentavos := IntToStr(Round(vResto * 100));
  vI := 0;
  vUmReal := False;
  vTem := False;
  while (vVlrS <> '0') do
  begin
    vTam := length(vVlrS);
    if (vTam > 3) then
    begin
      vVlrP := copy(vVlrS, vTam - 2, vTam);
      vVlrS := copy(vVlrS, 1, vTam - 3);
    end
    else
    begin
      vVlrP := vVlrS;
      vVlrS := '0';
    end;
    if (vVlrP <> '000') then
    begin
      vSaux := '';
      if (vVlrP = '100') then
        vSaux := 'cem'
    else
    begin
      vN := StrToInt(vVlrP);
      vCent := vN div 100;
      vDez := (vN mod 100) div 10;
      vUnid := (vN mod 100) mod 10;
      if (vCent <> 0) then
        vSaux := ctCentena[vCent];
      if ((vDez <> 0) or (vUnid <> 0)) then
      begin
        if ((vN mod 100) <= 19) then
        begin
          if (length(vSaux) <> 0) then
            vSaux := vSaux + ' e ' + ctUnidade[vN mod 100]
          else vSaux := ctUnidade[vN mod 100];
        end
        else
        begin
          if (Length(vSaux) <> 0) then
            vSaux := vSaux + ' e ' + ctDezena[vDez]
          else
            vSaux := ctDezena[vDez];
          if (vUnid <> 0) then
            if (Length(vSaux) <> 0)then
              vSaux := vSaux + ' e ' + ctUnidade[vUnid]
            else
              vSaux := ctUnidade[vUnid];
          end;
        end;
      end;
      if ((vVlrP = '1') or (vVlrP = '001')) then
      begin
        if (vI = 0) then
          vUmReal := true
        else
          vSaux := vSaux + ' ' + ctQualificaS[vI];
      end
      else
        if (vI <> 0) then
          vSaux := vSaux + ' ' + ctQualificaP[vI];
        if (Length(vS) <> 0) then
          vS := vSaux + ', ' + vS
        else
          vS := vSaux;
      end;
      if (((vI = 0) or (vI = 1)) and (Length(vS) <> 0)) then
        vTem := true;
      vI := vI + 1;
    end;
    if (Length(vS) <> 0) then
    begin
      if (vUmReal) then
        vS := vS + ' real'
      else
        if (vTem) then
          vS := vS + ' reais'
        else
          vS := vS + ' de reais';
      end;
      if (vCentavos <> '0') then
      begin
        if (Length(vS) <> 0) then
          vS := vS + ' e ';
        if (vCentavos = '1') then
          vS := vS + 'um centavo'
        else
        begin
          vN := StrToInt(vCentavos);
          if (vN <= 19) then
            vS := vS + ctUnidade[vN]
          else
          begin
            vUnid := vN mod 10;
            vDez := vN div 10;
            vS := vS + ctDezena[vDez];
            if (vUnid <> 0)  then
              vS := vS + ' e ' + ctUnidade[vUnid];
          end;
          vS := vS + ' centavos';
        end;
      end;
      valorPorExtenso := vS;
end;

function NumerosCit(vfKey: Char ): Char;
begin
  if not ( vfKey in [ '0'..'9', chr(8), chr(67), chr(99)]) then
    Result := #0
  else
    Result := vfKey;
end;

function LimpaDoc(vfValor: String): String;//by Amilton
Var
vValorNotDot: String;
vTamanho, vIndice: Integer;
Begin
  vTamanho := Length(vfValor);
  for vIndice := 1 to vTamanho do
  Begin
    if (vfValor[vIndice] <> '.') and (vfValor[vIndice] <> '-') then
      if (vfValor[vIndice] <> '/') then
        vValorNotDot := vValorNotDot + vfValor[vIndice];
  end;
  Result := vValorNotDot;
end;

function NumeroReal(vfKey: Char): Char;
begin
  if vfKey in [',', '.'] Then
    vfKey := DecimalSeparator;
  if not (vfkey in [ '0'..'9', DecimalSeparator, chr(8)]) then
    Result := #0
  else
    Result := vfKey;
end;

function NumeroRealSP(vfKey: Char): Char;
begin
  if vfKey in [',', '.'] Then
    vfKey := DecimalSeparator;
  if not (vfkey in [ '0'..'9', DecimalSeparator]) then
    Result := #0
  else
    Result := vfKey;
end;

function Numeros(vfKey: Char): Char;
begin
  if not (vfkey in [ '0'..'9', chr(8)]) then
    Result := #0
  else
    Result := vfKey;
end;

function NumerosReg(vfKey : Char):Char;
begin
  if not (vfKey in [ '0'..'9', chr(8), chr(45)]) then
    Result := #0
  else
    Result := vfKey;
end;

function TrocaVirgPPto(vfValor: String): String;
var
vI: integer;
begin
  if vfValor <> '' then
  begin
    for vI := 0 to Length(vfValor) do
    begin
      if vfValor[vI] = ',' then
        vfValor[vI] := '.';
    end;
  end;
  Result := vfValor;
end;

function LimpaReal(vfValor: String): String;
Var
  vValorNotDot: String;
  vTamanho, vIndice: Integer;
Begin
  vTamanho := Length(vfValor);
  for vIndice := 1 to vTamanho do
  Begin
    if (vfValor[vIndice] <> '.') and (vfValor[vIndice] <> '-') then
      vValorNotDot := vValorNotDot + vfValor[vIndice];
  end;
  Result := vValorNotDot;
end;

function RemoveAcento(vfStr: String): String;
const
SComAcento = '‡‚ÍÙ˚„ı·ÈÌÛ˙Á¸¿¬ ‘€√’¡…Õ”⁄«‹';
SSemAcento = 'aaeouaoaeioucuAAEOUAOAEIOUCU';
var
vX : Integer;
Begin
  For vX := 1 to Length(vfStr) do
    if Pos(vfStr[vX], SComAcento) <> 0 Then
      vfStr[vX] := SSemAcento[Pos(vfStr[vX], SComAcento)];
  Result := vfStr;
end;

end.
