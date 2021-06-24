unit uFuncoesMail;

interface

uses Windows, Classes, Forms, Mapi, SysUtils, Dialogs, IdSMTP,
  IdMessage, IdBaseComponent, IdComponent, IdIOHandler, IdIOHandlerSocket,
  IdIOHandlerStack, IdSSL, IdSSLOpenSSL, IdTCPConnection, IdTCPClient,
  IdExplicitTLSClientServerBase, IdMessageClient, IdSMTPBase, IdAttachmentFile,
  Inifiles, Messages, StdCtrls, Graphics, Controls, DB, JPeg, TlHelp32;

procedure SendMailIndy(vfTo, vfSubject, vfMessage: String; vfAttachment: TStringList; vfMsg: boolean);
procedure SendMailIndyMail(vfTo, vfSubject, vfMessage: String; vfAttachment: TStringList; vfMsg: boolean;
                           vfHost, vfUsername, vfPasswd, vfName, vfAdress: String; vfDoor: Integer);
function EmailTipoMIME(vfTipoMIME: Integer): String;
function SendEMail(Handle: THandle; Mail: TStrings): Cardinal;
function IsRunningProcess(exeFileName: string): Boolean;
function killtask(ExeFileName: string): Integer;

implementation

uses uVarGlobal, uFuncoesSeguranca;

procedure SendMailIndy(vfTo, vfSubject, vfMessage: String; vfAttachment: TStringList; vfMsg: boolean);
var
// objetos necessários para o funcionamento
vAuthSSL: TIdSSLIOHandlerSocketOpenSSL;
vIdSMTP: TIdSMTP;
vIdMessage: TIdMessage;
vIdAttachment: TIdAttachmentFile;
//Configuração do cliente de e-mail
vHost, vUserName, vPasswd, vName, vAdress: String;
vDoor: Integer;
vAuthType, vSSLMethod, vSSLMode, vUseTLS: Integer;
vControl: Tinifile;
//Novo
vNumAnexos: Integer;
vAnexoMIME : Integer;
begin
  try
    //Busca configuração do .ini
    vControl := Tinifile.create(vgArqIni);
    //Configuração de smtp
    vHost := vControl.ReadString('emails', 'Host', '');
    vUsername := vControl.ReadString('emails', 'UserName', '');
    vPasswd := vControl.ReadString('emails', 'Password', '');
    vName := vControl.ReadString('emails', 'NameFrom', '');
    vAdress := vControl.ReadString('emails', 'AdressFrom', '');
    vDoor := StrToInt(vControl.ReadString('emails', 'Door', ''));
    //Configuração do provedor
    vAuthType := vControl.ReadInteger('provedor', 'AuthType', 0);
    vSSLMethod := vControl.ReadInteger('provedor', 'SSLMethod', 0);
    vSSLMode := vControl.ReadInteger('provedor', 'SSLMode', 0);
    vUseTLS := vControl.ReadInteger('provedor', 'UseTLS', 0);
    vControl.Free;
    vIdSMTP := TIdSMTP.Create(nil);
    vIdMessage := TIdMessage.Create(nil);
    // Configuração do SMTP
    vIdSMTP.Host := vHost;
    vIdSMTP.Username := vUserName;
    vIdSMTP.Password := DecryptMsg(vPasswd, Length(vPasswd));
    vIdSMTP.Port := vDoor;
    case vAuthType of
      0: vIdSMTP.AuthType := satNone;
      1: vIdSMTP.AuthType := satDefault;
      2: vIdSMTP.AuthType := satSASL;
    end;
    if (vAuthType = 2) then
    begin
      // Configuração do SSL
      vAuthSSL := TIdSSLIOHandlerSocketOpenSSL.Create(nil);
      vIdSMTP.IOHandler := vAuthSSL;
      case vSSLMethod of
        0: vAuthSSL.SSLOptions.Method := sslvSSLv2;
        1: vAuthSSL.SSLOptions.Method := sslvSSLv23;
        2: vAuthSSL.SSLOptions.Method := sslvSSLv3;
        3: vAuthSSL.SSLOptions.Method := sslvTLSv1;
      end;
      case vSSLMode of
        0: vAuthSSL.SSLOptions.Mode := sslmUnassigned;
        1: vAuthSSL.SSLOptions.Mode := sslmClient;
        2: vAuthSSL.SSLOptions.Mode := sslmServer;
        3: vAuthSSL.SSLOptions.Mode := sslmBoth;
      end;
      case vUseTLS of
        0: vIdSMTP.UseTLS := utNoTLSSupport;
        1: vIdSMTP.UseTLS := utUseImplicitTLS;
        2: vIdSMTP.UseTLS := utUseRequireTLS;
        3: vIdSMTP.UseTLS := utUseExplicitTLS;
      end;
    end;
    // Tentativa de conexão e autenticação
    try
      vIdSMTP.Connect;
      vIdSMTP.Authenticate;
    except
      on E:Exception do
      begin
        MessageDlg('Erro na conexão e/ou autenticação: ' +
                    E.Message, mtWarning, [mbOK], 0);
        Exit;
      end;
    end;
    //Formato do e-mail
    vIdMessage.CharSet := 'ISO-8859-1';
    // Configuração da mensagem - emitente
    vIdMessage.From.Address := vAdress;
    vIdMessage.From.Name := vName;
    vIdMessage.ReplyTo.EMailAddresses := vIdMessage.From.Address;
    // Configuração da mensagem - destinatário
    vIdMessage.Recipients.EMailAddresses := vfTo;
    vIdMessage.Subject := vfSubject;
    vIdMessage.Body.Text := vfMessage;
    vIdMessage.ContentType := 'multipart/mixed';
    // Anexo da mensagem (opcional)
    for vNumAnexos := 0 to Pred(vfAttachment.Count) do
    begin
      if FileExists(vfAttachment.Strings[vNumAnexos]) then
      begin
        try
          vIdAttachment := TIdAttachmentFile.Create(vIdMessage.MessageParts, vfAttachment.Strings[vNumAnexos]);
        except
        end;
      end;
    end;
    // Envio da mensagem
    try
      vIdSMTP.Send(vIdMessage);
      if vfMsg = True then
        MessageDlg('Mensagem enviada com sucesso.', mtInformation, [mbOK], 0);
    except
      On E:Exception do
        MessageDlg('Erro ao enviar a mensagem: ' +
                    E.Message, mtWarning, [mbOK], 0);
    end;
  finally
    // liberação dos objetos da memória
    vIdSMTP.Disconnect;
    FreeAndNil(vIdMessage);
    FreeAndNil(vIdSMTP);
    if vAuthType = 2 then
      FreeAndNil(vAuthSSL);
  end;
end;

procedure SendMailIndyMail(vfTo, vfSubject, vfMessage: String; vfAttachment: TStringList; vfMsg: boolean;
                           vfHost, vfUsername, vfPasswd, vfName, vfAdress: String; vfDoor: Integer);
var
// objetos necessários para o funcionamento
vAuthSSL: TIdSSLIOHandlerSocketOpenSSL;
vIdSMTP: TIdSMTP;
vIdMessage: TIdMessage;
vIdAttachment: TIdAttachmentFile;
//Configuração do cliente de e-mail
vAuthType, vSSLMethod, vSSLMode, vUseTLS: Integer;
vControl: Tinifile;
//Novo
vNumAnexos: Integer;
vAnexoMIME : Integer;
begin
  try
    //Busca configuração do .ini
    vControl := Tinifile.create(vgArqIni);
    //Configuração do provedor
    vAuthType := vControl.ReadInteger('provedor', 'AuthType', 0);
    vSSLMethod := vControl.ReadInteger('provedor', 'SSLMethod', 0);
    vSSLMode := vControl.ReadInteger('provedor', 'SSLMode', 0);
    vUseTLS := vControl.ReadInteger('provedor', 'UseTLS', 0);
    vControl.Free;
    vIdSMTP := TIdSMTP.Create(nil);
    vIdMessage := TIdMessage.Create(nil);
    // Configuração do SMTP
    vIdSMTP.Host := vfHost;
    vIdSMTP.Username := vfUserName;
    vIdSMTP.Password := DecryptMsg(vfPasswd, Length(vfPasswd));
    vIdSMTP.Port := vfDoor;
    case vAuthType of
      0: vIdSMTP.AuthType := satNone;
      1: vIdSMTP.AuthType := satDefault;
      2: vIdSMTP.AuthType := satSASL;
    end;
    if (vAuthType = 2) then
    begin
      // Configuração do SSL
      vAuthSSL := TIdSSLIOHandlerSocketOpenSSL.Create(nil);
      vIdSMTP.IOHandler := vAuthSSL;
      case vSSLMethod of
        0: vAuthSSL.SSLOptions.Method := sslvSSLv2;
        1: vAuthSSL.SSLOptions.Method := sslvSSLv23;
        2: vAuthSSL.SSLOptions.Method := sslvSSLv3;
        3: vAuthSSL.SSLOptions.Method := sslvTLSv1;
      end;
      case vSSLMode of
        0: vAuthSSL.SSLOptions.Mode := sslmUnassigned;
        1: vAuthSSL.SSLOptions.Mode := sslmClient;
        2: vAuthSSL.SSLOptions.Mode := sslmServer;
        3: vAuthSSL.SSLOptions.Mode := sslmBoth;
      end;
      case vUseTLS of
        0: vIdSMTP.UseTLS := utNoTLSSupport;
        1: vIdSMTP.UseTLS := utUseImplicitTLS;
        2: vIdSMTP.UseTLS := utUseRequireTLS;
        3: vIdSMTP.UseTLS := utUseExplicitTLS;
      end;
    end;
    // Tentativa de conexão e autenticação
    try
      vIdSMTP.Connect;
      vIdSMTP.Authenticate;
    except
      on E:Exception do
      begin
        MessageDlg('Erro na conexão e/ou autenticação: ' +
                    E.Message, mtWarning, [mbOK], 0);
        Exit;
      end;
    end;
    //Formato do e-mail
    vIdMessage.CharSet := 'ISO-8859-1';
    // Configuração da mensagem - emitente
    vIdMessage.From.Address := vfAdress;
    vIdMessage.From.Name := vfName;
    vIdMessage.ReplyTo.EMailAddresses := vIdMessage.From.Address;
    // Configuração da mensagem - destinatário
    vIdMessage.Recipients.EMailAddresses := vfTo;
    vIdMessage.Subject := vfSubject;
    vIdMessage.Body.Text := vfMessage;
    vIdMessage.ContentType := 'multipart/mixed';
    // Anexo da mensagem (opcional)
    for vNumAnexos := 0 to Pred(vfAttachment.Count) do
    begin
      if FileExists(vfAttachment.Strings[vNumAnexos]) then
      begin
        try
          vIdAttachment := TIdAttachmentFile.Create(vIdMessage.MessageParts, vfAttachment.Strings[vNumAnexos]);
        except
        end;
      end;
    end;
    // Envio da mensagem
    try
      vIdSMTP.Send(vIdMessage);
      if vfMsg = True then
        MessageDlg('Mensagem enviada com sucesso.', mtInformation, [mbOK], 0);
    except
      On E:Exception do
        MessageDlg('Erro ao enviar a mensagem: ' +
                    E.Message, mtWarning, [mbOK], 0);
    end;
  finally
    // liberação dos objetos da memória
    vIdSMTP.Disconnect;
    FreeAndNil(vIdMessage);
    FreeAndNil(vIdSMTP);
    if vAuthType = 2 then
      FreeAndNil(vAuthSSL);
  end;
end;

function EmailTipoMIME(vfTipoMIME: Integer): String;
begin
  case vfTipoMIME of
    0: result := 'text/plain';
    1: result := 'text/html';
    2: result := 'text/richtext';
    3: result := 'text/x-aiff';
    4: result := 'audio/basic';
    5: result := 'audio/wav';
    6: result := 'image/gif';
    7: result := 'image/jpeg';
    8: result := 'image/pjpeg';
    9: result := 'image/tiff';
    10: result := 'image/x-png';
    11: result := 'image/x-xbitmap';
    12: result := 'image/bmp';
    13: result := 'image/x-jg';
    14: result := 'image/x-emf';
    15: result := 'image/x-wmf';
    16: result := 'video/avi';
    17: result := 'video/mpeg';
    18: result := 'application/postscript';
    19: result := 'application/base64';
    20: result := 'application/macbinhex40';
    21: result := 'application/pdf';
    22: result := 'application/x-compressed';
    23: result := 'application/x-zip-compressed';
    24: result := 'application/x-gzip-compressed';
    25: result := 'application/java';
    26: result := 'application/x-msdownload';
    27: result := 'application/octet-stream';
    28: result := 'multipart/mixed';
    29: result := 'multipart/relative';
    30: result := 'multipart/digest';
    31: result := 'multipart/alternative';
    32: result := 'multipart/related';
    33: result := 'multipart/report';
    34: result := 'multipart/signed';
    35: result := 'multipart/encrypted';
  end;
end;

function SendEMail(Handle: THandle; Mail: TStrings): Cardinal;
type
TAttachAccessArray = array [0..0] of TMapiFileDesc;
PAttachAccessArray = ^TAttachAccessArray;
var
MapiMessage: TMapiMessage;
Receip: TMapiRecipDesc;
Attachments: PAttachAccessArray;
AttachCount: Integer;
i1: integer;
FileName: string;
dwRet: Cardinal;
MAPI_Session: Cardinal;
WndList: Pointer;
begin
  dwRet := MapiLogon(Handle, PAnsiChar(''), PAnsiChar(''), MAPI_LOGON_UI or MAPI_NEW_SESSION, 0, @MAPI_Session);
  if (dwRet <> SUCCESS_SUCCESS) then
  begin
    MessageBox(Handle, PChar('Erro ao tentar enviar o e-mail!'), PChar('Error'), MB_IConerror or MB_OK);
  end
  else
  begin
    FillChar(MapiMessage, SizeOf(MapiMessage), #0);
    Attachments := nil;
    FillChar(Receip, SizeOf(Receip), #0);
    if Mail.Values['to'] <> '' then
    begin
      Receip.ulReserved := 0;
      Receip.ulRecipClass := MAPI_TO;
      Receip.lpszName := StrNew(PAnsiChar(Mail.Values['to']));
      Receip.lpszAddress := StrNew(PAnsiChar('SMTP:' + Mail.Values['to']));
      Receip.ulEIDSize := 0;
      MapiMessage.nRecipCount := 1;
      MapiMessage.lpRecips := @Receip;
    end;
    AttachCount := 0;
    for i1 := 0 to MaxInt do
    begin
      if Mail.Values['attachment' + IntToStr(i1)] = '' then
        break;
      Inc(AttachCount);
    end;
    if AttachCount > 0 then
    begin
      GetMem(Attachments, SizeOf(TMapiFileDesc) * AttachCount);
      for i1 := 0 to AttachCount - 1 do
      begin
        FileName := Mail.Values['attachment' + IntToStr(i1)];
        Attachments[i1].ulReserved := 0;
        Attachments[i1].flFlags := 0;
        Attachments[i1].nPosition := ULONG($FFFFFFFF);
        Attachments[i1].lpszPathName := StrNew(PAnsiChar(FileName));
        Attachments[i1].lpszFileName := StrNew(PAnsiChar(ExtractFileName(FileName)));
        Attachments[i1].lpFileType := nil;
      end;
      MapiMessage.nFileCount := AttachCount;
      MapiMessage.lpFiles := @Attachments^;
    end;
    if Mail.Values['subject'] <> '' then
      MapiMessage.lpszSubject :=
    StrNew(PAnsiChar(Mail.Values['subject']));
    if Mail.Values['body'] <> '' then
      MapiMessage.lpszNoteText := StrNew(PAnsiChar(Mail.Values['body']));
    WndList := DisableTaskWindows(0);
    try
      Result := MapiSendMail(0, 0, MapiMessage, MAPI_DIALOG or MAPI_LOGON_UI, 0);
    finally
      EnableTaskWindows( WndList );
    end;
    for i1 := 0 to AttachCount - 1 do
    begin
      StrDispose(Attachments[i1].lpszPathName);
      StrDispose(Attachments[i1].lpszFileName);
    end;
    if Assigned(MapiMessage.lpszSubject) then
      StrDispose(MapiMessage.lpszSubject);
    if Assigned(MapiMessage.lpszNoteText) then
      StrDispose(MapiMessage.lpszNoteText);
    if Assigned(Receip.lpszAddress) then
      StrDispose(Receip.lpszAddress);
    if Assigned(Receip.lpszName) then
      StrDispose(Receip.lpszName);
    MapiLogOff(MAPI_Session, Handle, 0, 0);
  end;
end;

function IsRunningProcess(exeFileName: string): Boolean;
var
ContinueLoop: BOOL;
FSnapshotHandle: THandle;
FProcessEntry32: TProcessEntry32;
begin
  //É necessário estar declarado TlHelp32 e SysUtils na seção uses.
  FSnapshotHandle := CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0);
  FProcessEntry32.dwSize := SizeOf(FProcessEntry32);
  ContinueLoop := Process32First(FSnapshotHandle, FProcessEntry32);
  Result := False;
  while Integer(ContinueLoop) <> 0 do
  begin
    if ((UpperCase(ExtractFileName(FProcessEntry32.szExeFile)) =
      UpperCase(ExeFileName)) or (UpperCase(FProcessEntry32.szExeFile) =
      UpperCase(ExeFileName))) then
    begin
      Result := True;
    end;
    ContinueLoop := Process32Next(FSnapshotHandle, FProcessEntry32);
  end;
  CloseHandle(FSnapshotHandle);
end;

function killtask(ExeFileName: string): Integer;
const
PROCESS_TERMINATE = $0001;
var
ContinueLoop: BOOL;
FSnapshotHandle: THandle;
FProcessEntry32: TProcessEntry32;
begin
  Result := 0;
  FSnapshotHandle := CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0);
  FProcessEntry32.dwSize := SizeOf(FProcessEntry32);
  ContinueLoop := Process32First(FSnapshotHandle, FProcessEntry32);
  while Integer(ContinueLoop) <> 0 do
  begin
    if ((UpperCase(ExtractFileName(FProcessEntry32.szExeFile)) =
       UpperCase(ExeFileName)) or (UpperCase(FProcessEntry32.szExeFile) =
       UpperCase(ExeFileName))) then
       Result := Integer(TerminateProcess(
                         OpenProcess(PROCESS_TERMINATE,
                                     BOOL(0),
                                     FProcessEntry32.th32ProcessID),
                                     0));
      ContinueLoop := Process32Next(FSnapshotHandle, FProcessEntry32);
  end;
  CloseHandle(FSnapshotHandle);
end;

end.
