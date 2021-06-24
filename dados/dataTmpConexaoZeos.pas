unit dataTmpConexaoZeos;

interface

uses
  System.SysUtils, System.Classes, Vcl.Dialogs, Inifiles, Vcl.Forms,
  Data.Win.ADODB, Data.DB, Data.SqlExpr, ZAbstractConnection, ZConnection;

type
  TdmTmpConexaoZeos = class(TDataModule)
    database: TZConnection;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmTmpConexaoZeos: TdmTmpConexaoZeos;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}

uses uErConexao, uFuncoesSistema, uVarGlobal, uFuncoesSeguranca;

{$R *.dfm}

procedure TdmTmpConexaoZeos.DataModuleCreate(Sender: TObject);
Var
vControl: TInifile;
vServer, vUser, vPassword, vLocBase: String;
vServerType, vDialect: String;
vProtocol, vPort, vClientCodePage: String;
Begin
  //Verifica se o Database está conectado
  {$IFDEF RELEASE}
    if database.connected = true then
      MessageDlg('O database ' + database.Database + ' está conectado!', mtError, [mbok], 0);
  {$ENDIF}
  {$IFDEF RELEASE}
    if database.connected = true then
    begin
      MessageDlg('O database ' + database.Database + ' está conectado!', mtError, [mbok], 0);
      Application.Terminate;
    end;
  {$ENDIF}
  Try
  database.Connected := false;
  if Not FileExists(vgArqIni) then
  Begin
    Messagedlg('Arquivo ' + RetornaExecutavelSemExtensao + '.ini não encontrado!' + #13 + #10 + 'Execute o Config para gerá-lo!', mtError, [mbok], 0);
    Application.Terminate;
  end;
  vControl := Tinifile.create(vgArqIni);
  vLocBase := vControl.readstring('Base', 'Base','');
  vServerType := vControl.readstring('Base', 'ServerType','');
  vServer := vControl.readstring('Base', 'Servidor','');
  vUser := vControl.readstring('Base', 'User','');
  vPassword := vControl.readstring('Base', 'Password','');
  vPassword := DecryptMsg((vPassword), Length(vPassword));
  //PostgreSQL
  if vServerType = 'POSTGRESQL' then
  begin
    vProtocol := vControl.readstring('PostgreSQL', 'Protocol','');
    vPort := vControl.readstring('PostgreSQL', 'Port','');
    vClientCodePage := vControl.readstring('PostgreSQL', 'ClientCodePage','');
    database.Protocol := vProtocol;
    database.Port := StrToInt(vPort);
    database.ClientCodepage := vClientCodePage;
  end;
  except
    MessageDlg('Não foi possível carregar configuração do banco de dados!', mtError, [mbok], 0);
    MessageDlg('String de configuração: ' + vLocBase + vServer + vServerType + vUser + vPassword + vDialect, mtError, [mbok], 0);
    vControl.Free;
  end;
  Try
    vControl.Free;
    database.Database := vLocBase;
    database.HostName := vServer;
    database.User := vUser;
    database.Password := vPassword;
    database.Connected := True;
  Except
    on E: Exception do
    Begin
      frmErConexao.memLogErro.Lines.Clear;
      frmErConexao.memLogErro.Lines.Add(E.Message);
      frmErConexao.Showmodal;
    end;
  end;
end;

end.
