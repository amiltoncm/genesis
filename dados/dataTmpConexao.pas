unit dataTmpConexao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, SDEngine, Inifiles;


type
  TdmTmpConexao = class(TDataModule)
    database: TSDDatabase;
    QGeraCodigo: TSDQuery;
    QTemp: TSDQuery;
    procedure DataModuleCreate(Sender: TObject);
    procedure databaseBeforeDisconnect(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmTmpConexao: TdmTmpConexao;

implementation

uses uPrincipal, uErConexao, uFuncoesSistema, uFuncoesString,
  uFuncoesSeguranca, uVarGlobal;

{$R *.dfm}

procedure TdmTmpConexao.databaseBeforeDisconnect(Sender: TObject);
begin
  if database.InTransaction then
    database.Commit;
end;

procedure TdmTmpConexao.DataModuleCreate(Sender: TObject);
Var
vControl: TInifile;
vServer, vUser, vPassword, vLocBase: String;
vServerType, vDialect: String;
Begin
  //Verifica se o Database está conectado
  {$IFDEF DEBUG}
    if database.connected = true then
      MessageDlg('O database ' + database.DatabaseName + ' está conectado!', mtError, [mbok], 0);
  {$ENDIF}
  {$IFDEF RELEASE}
    if database.connected = true then
    begin
      MessageDlg('O database ' + database.DatabaseName + ' está conectado!', mtError, [mbok], 0);
      Application.Terminate;
    end;
  {$ENDIF}
  Try
  database.Connected := false;
  database.Params.Clear;
  if Not FileExists(vgArqIni) then
  Begin
    Messagedlg('Arquivo ' + vgNomeIni + ' não encontrado!' + #13 + #10 + 'Execute o Config para gerá-lo!', mtError, [mbok], 0);
    Application.Terminate;
  end;
  vControl := Tinifile.create(vgArqIni);
  vLocBase := vControl.readstring('Base', 'Base','');
  vServerType := vControl.readstring('Base', 'ServerType','');
  vServer := vControl.readstring('Base', 'Servidor','');
  vUser := vControl.readstring('Base', 'User','');
  vPassword := vControl.readstring('Base', 'Password','');
  vPassword := DecryptMsg((vPassword), Length(vPassword));
  //Firebird ou Interbase
  if vServerType = 'FIREBIRD' then
  begin
    vDialect := vControl.readstring('Firebird', 'Dialect', '');
    database.ServerType := stFirebird;
  end;
  //PostgreSQL
  if vServerType = 'POSTGRESQL' then
    database.ServerType := stPostgreSQL;
  except
    MessageDlg('Não foi possível carregar configuração do banco de dados!', mtError, [mbok], 0);
    MessageDlg('String de configuração: ' + vLocBase + vServer + vServerType + vUser + vPassword + vDialect, mtError, [mbok], 0);
    vControl.Free;
  end;
  Try
    database.RemoteDatabase := vServer + ':' + vLocBase;
    vControl.Free;
    database.Params.Add('USER NAME=' + vUser);
    database.Params.Add('PASSWORD=' + vPassword);
    if vServerType = 'FIREBIRD' then
      database.Params.Add('DIALECT=' + vDialect);
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
