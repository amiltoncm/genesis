unit uFuncoesSistema;

interface

uses Windows, Forms, Controls, SysUtils, Registry, JPeg, Graphics,
     Dialogs, Inifiles;

procedure Delay(dwMilliseconds: Longint);
procedure SetDataSistema(vfData: TDate);
procedure CriaFormMDI(vfFormClass: TFormClass; Var vfReference);
function RetornaExecutavelSemExtensao: String;
function DiretorioSemBarra(vfNomeDir: String): String;
function VersaoSistema(vfModoVisualizacao: Integer): String;
function UsuarioWin: String;
function TestaCaps: boolean;
function UsuarioLogado: String;
function NomeComputador: String;
procedure ConverterBmpParaJPegD5(vfArquivo: String);
procedure ConverterJPegParaBmpD5(vfArquivo: String);
procedure ConvertJPG_BMP(vfFile: string);
procedure ConvertBMP_JPG(vfFile: string; vfQuality: Integer );
procedure ApagaTemporario(vfDiretorio: String);
function VerificaPropriedadeArquivo(vfArquivo, vfPropriedade: String): String;

implementation


procedure Delay(dwMilliseconds: Longint);
var
iStart, iStop: DWORD;
begin
  iStart := GetTickCount;
  repeat
  begin
    iStop := GetTickCount;
    Application.ProcessMessages;
    Sleep(1);
  end;
  until (iStop - iStart) >= dwMilliseconds;
end;

procedure SetDataSistema(vfData: TDate);
Var
vSt: TSystemTime;
vDataHora: TDateTime;
vHoraMicro: TTime;
begin
  try
    vHoraMicro := Time;
    vDataHora := vfData + vHoraMicro;
    DateTimeToSystemTime(vDataHora, vSt);
    SetLocalTime(vSt);
  Except
    MessageDlg('Não foi possível alterar a hora do sistema operacional!', mtInformation, [mbok], 0);
  end;
end;

procedure CriaFormMDI(vfFormClass: TFormClass; Var vfReference);
Begin
  Try
    Screen.cursor := crHourGlass;
    if TForm(vfReference) = Nil then
      Application.CreateForm(vfFormClass, TForm(vfReference))
    else
    Begin
      If TForm(vfReference).WindowState = wsMinimized then
        TForm(vfReference).WindowState := wsNormal;
      TForm(vfReference).BringToFront;
    end;
  finally
    Screen.Cursor:=crDefault;
  end;
end;

function RetornaExecutavelSemExtensao: String;
var
vTexto: String;
vPosicao: Integer;
begin
  vTexto := Application.ExeName;
  vPosicao := Pos('\', vTexto);
  while vPosicao > 0 do
  begin
    Delete(vTexto, 1, vPosicao);
    vPosicao := Pos('\', vTexto);
  end;
  vPosicao := Pos(UpperCase('.exe'), UpperCase(vTexto));
  Result := Copy(vTexto, 1, vPosicao -1 );
end;

function DiretorioSemBarra(vfNomeDir: String): String;
begin
  if (vfNomeDir[(Length(vfNomeDir))] = '\') and
     ((vfNomeDir[(Length(vfNomeDir) - 1)] = ':') or
     (vfNomeDir[(Length(vfNomeDir) - 1)] <> ':')) then
       DiretorioSemBarra := Copy(vfNomeDir, 1, Length(vfNomeDir) - 1)
  else
    DiretorioSemBarra := vfNomeDir;
end;

function VersaoSistema(vfModoVisualizacao: Integer): String;
var
vInfoSize: DWord;
vVerSize: DWord;
vPcArquivo: PChar;
{$IFDEF VER100} // Delphi 3.0x
vWnd: Integer;
{$ELSE} // Delphi 4.0x
vWnd: Cardinal;
{$ENDIF}
vVerBuf: Pointer;
vFI: PVSFixedFileInfo;
begin
  vPcArquivo := PChar(Application.ExeName);
  Result := 'Não disponível';
  vInfoSize := GetFileVersionInfoSize(vPcArquivo, vWnd);
  if vInfoSize <> 0 then
  begin
    GetMem(vVerBuf, vInfoSize);
    try
      if GetFileVersionInfo(vPcArquivo, vWnd, vInfoSize, vVerBuf) then
        if VerQueryValue(vVerBuf, '\', Pointer(vFI), vVerSize) then
           if vfModoVisualizacao = 0 then
             Result := IntToStr(Trunc((vFI.dwProductVersionMS / 65536))) + '.' + IntToStr(vFI.dwProductVersionMS mod 65536) + '.' + IntToStr(Trunc((vFI.dwProductVersionLS / 65536))) + '.' + IntToStr(vFI.dwProductVersionLS mod 65536)
           else
             Result := IntToStr(Trunc((vFI.dwProductVersionMS / 65536))) + '.' + IntToStr(vFI.dwProductVersionMS mod 65536);
           Result := ' ' + Result;
    finally
      FreeMem(vVerBuf);
    end;
  end;
end;

function TestaCaps: boolean;
Var
vKeyState: TKeyboardState;
begin
  GetKeyboardState(vKeyState);
  if (vKeyState[VK_CAPITAL] = 0) then
    Result := false
  else
    Result := true;
end;

function UsuarioWin: String;
Var
vI: Dword;
vUser: array of char;
begin
  vI := 255;
  SetLength(vUser, vI);
  GetUserName(PCHAR(vUser), vI);
  result := PCHAR(vUser);
end;

function UsuarioLogado: String;
var
vRegistro: TRegistry;
begin
  result := '';
  vRegistro := TRegistry.Create;
  vRegistro.RootKey := HKEY_LOCAL_MACHINE;
  if vRegistro.OpenKey('Network\Logon', false) then
    result := vRegistro.ReadString('username');
  vRegistro.Free;
end;

function NomeComputador: String;
var
vLpBuffer: PChar;
vSize: DWord;
const cBuff_Size = MAX_COMPUTERNAME_LENGTH + 1;
begin
  vSize := cBuff_Size;
  vLpBuffer := StrAlloc(cBuff_Size);
  GetComputerName(vLpBuffer, vSize);
  Result := String(vLpBuffer);
  StrDispose(vLpBuffer);
end;

//--- Delphi 5.0 ---------------------------------------------------------------

procedure ConverterBmpParaJPegD5(vfArquivo: String);
var
vBmp: TBitmap;
vJPeg: TJPegImage;
begin
  vBmp := TBitmap.Create;
  try
    vBmp.LoadFromFile(vfArquivo);
    vJPeg := TJPegImage.Create;
    try
      vJPeg.CompressionQuality := 100; { Qualidade: 100% }
      vJPeg.Assign(vBmp);
      vJPeg.SaveToFile(ChangeFileExt(vfArquivo, '.jpg'));
    finally
      vJPeg.Free;
    end;
  finally
    vBmp.Free;
  end;
end;

procedure ConverterJPegParaBmpD5(vfArquivo: String);
var
vJPeg: TJPegImage;
vBmp: TBitmap;
begin
  vJPeg := TJPegImage.Create;
  try
    vJPeg.LoadFromFile(vfArquivo);
    vBmp := TBitmap.Create;
    try
      vBmp.Assign(vJPeg);
      vBmp.SaveToFile(ChangeFileExt(vfArquivo, '.bmp'));
    finally
      vBmp.Free;
    end;
  finally
    vJPeg.Free;
  end;
end;

// --- Delphi XE2 --------------------------------------------------------------

procedure ConvertJPG_BMP(vfFile: string);
var
vBMP: TBitmap;
vJPG: TJPegImage;
begin
  if ExtractFileExt(vfFile) <> '.jpg' then
  begin
    ShowMessage('Formato diferente de jpg' + #13 + 'Formato atual : ' + ExtractFileExt(vfFile));
    Exit;
  end;
  vJPG := TJPegImage.Create;
  try
   vJPG.LoadFromFile(vfFile);
   vBMP := TBitmap.Create;
   try
    vBMP.Assign(vJPG);
    vBMP.SaveToFile(ChangeFileExt(vfFile, '.bmp'));
   finally
     FreeAndNil(vBMP);
   end;
  finally
   FreeAndNil(vJPG);
  end;
end;

procedure ConvertBMP_JPG(vfFile: string; vfQuality: Integer );
var
vBMP: TBitmap;
vJPG: TJPegImage;
begin
  if ExtractFileExt(vfFile) <> '.bmp' then
  begin
    ShowMessage('Formato diferente de bmp' + #13 + 'Formato atual : ' + ExtractFileExt(vfFile));
    Exit;
  end;
  vBMP := TBitmap.Create;
  try
    vBMP.LoadFromFile(vfFile);
    vJPG := TJPegImage.Create;
    try
     vJPG.CompressionQuality := vfQuality;
     vJPG.Assign(vBMP);
     vJPG.SaveToFile(ChangeFileExt(vfFile, '.jpg'));
    finally
     FreeAndNil(vJPG);
    end;
   finally
     FreeAndNil(vBMP);
   end;
end;

Procedure ApagaTemporario(vfDiretorio: String);
var
vSR: TSearchRec;
vI: integer;
begin
  vI := FindFirst(vfDiretorio + '\*.*', faAnyFile, vSR);
  while vI = 0 do
  begin
    if (vSR.Attr and faDirectory) <> faDirectory then
      if not DeleteFile(vfDiretorio + '\' + vSR.Name) then
        ShowMessage('Não foi possível excluir ' + vfDiretorio + '\' + vSR.Name);
    vI := FindNext(vSR);
  end;
end;

function VerificaPropriedadeArquivo(vfArquivo, vfPropriedade: String): String;
const
cInfoNum = 10;
cInfoStr : Array[1..cInfoNum] of String = ('CompanyName', 'FileDescription',
          'FileVersion', 'InternalName', 'LegalCopyright', 'LegalTradeMarks',
          'OriginalFilename', 'ProductName', 'ProductVersion', 'Comments');
var
vCompanyName: String;
vFileDescription: String;
vFileVersion: String;
vInternalName: String;
vLegalCopyright: String;
vLegalTradeMark: String;
vOriginalFileName: String;
vProductName: String;
vProductVersion: String;
vComments: String;
vS: String;
vLen: Cardinal;
vN: Cardinal;
vBuf: PChar;
vValue: PChar;
begin
  vS := vfArquivo;
  vN := GetFileVersionInfoSize(PChar(vS), vN);
  if vN > 0 then
  begin
    vBuf := AllocMem(vN);
    try
      GetFileVersionInfo(PChar(vS), 0, vN, vBuf);
      if VerQueryValue(vBuf, PChar('StringFileInfo\041604E4\' +
         cInfoStr[1]), Pointer(vValue), vLen) then
        vCompanyName := vValue;
      if VerQueryValue(vBuf, PChar('StringFileInfo\041604E4\' +
         cInfoStr[2]), Pointer(vValue), vLen) then
        vFileDescription := vValue;
      if VerQueryValue(vBuf, PChar('StringFileInfo\041604E4\' +
         cInfoStr[3]), Pointer(vValue), vLen) then
        vFileVersion := vValue;
      if VerQueryValue(vBuf, PChar('StringFileInfo\041604E4\' +
         cInfoStr[4]), Pointer(vValue), vLen) then
        vInternalName := vValue;
      if VerQueryValue(vBuf, PChar('StringFileInfo\041604E4\' +
         cInfoStr[5]), Pointer(vValue), vLen) then
        vLegalCopyright := vValue;
      if VerQueryValue(vBuf, PChar('StringFileInfo\041604E4\' +
         cInfoStr[6]), Pointer(vValue), vLen) then
        vLegalTradeMark := vValue;
      if VerQueryValue(vBuf, PChar('StringFileInfo\041604E4\' +
         cInfoStr[7]), Pointer(vValue), vLen) then
        vOriginalFileName := vValue;
      if VerQueryValue(vBuf, PChar('StringFileInfo\041604E4\' +
         cInfoStr[8]), Pointer(vValue), vLen) then
        vProductName := vValue;
      if VerQueryValue(vBuf, PChar('StringFileInfo\041604E4\' +
         cInfoStr[9]), Pointer(vValue), vLen) then
        vProductVersion := vValue;
      if VerQueryValue(vBuf, PChar('StringFileInfo\041604E4\' +
         cInfoStr[10]), Pointer(vValue), vLen) then
        vComments := vValue;
    finally
      FreeMem(vBuf, vN);
    end;
  end
  else
  begin
    vCompanyName := '';
    vFileDescription := '';
    vFileVersion := '';
    vInternalName := '';
    vLegalCopyright := '';
    vLegalTradeMark := '';
    vOriginalFileName := '';
    vProductName := '';
    vProductVersion := '';
    vComments := '';
  end;
  result := '?????';
  if vfPropriedade = 'CompanyName' then
    result := vCompanyName;
  if vfPropriedade = 'FileDescription' then
    result := vFileDescription;
  if vfPropriedade = 'FileVersion' then
    result := vFileVersion;
  if vfPropriedade = 'InternalName' then
    result := vInternalName;
  if vfPropriedade = 'LegalCopyright' then
    result := vLegalCopyright;
  if vfPropriedade = 'LegalTradeMarks' then
    result := vLegalTradeMark;
  if vfPropriedade = 'OriginalFilename' then
    result := vOriginalFileName;
  if vfPropriedade = 'ProductName' then
    result := vProductName;
  if vfPropriedade = 'ProductVersion' then
    result := vProductVersion;
  if vfPropriedade = 'Comments' then
    result := vComments;
end;

end.
