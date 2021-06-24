unit dataImagens;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  SDEngine, Db, Inifiles, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, ZSqlUpdate;

type
  TdmImagens = class(TDataModule)
    database: TZConnection;
    qyImagensArq: TZQuery;
    QTemp: TZQuery;
    qyMax: TZQuery;
    qyImagensArqimg_exame: TWideStringField;
    qyImagensArqima_imagem: TBlobField;
    qyMaxmax: TWideMemoField;
    updImagensArq: TZUpdateSQL;
    function TestaDatabaseConect: boolean;
    procedure DataModuleCreate(Sender: TObject);
    procedure qyImagensArqAfterDelete(DataSet: TDataSet);
    procedure qyImagensArqAfterPost(DataSet: TDataSet);
    procedure qyImagensArqBeforeDelete(DataSet: TDataSet);
    procedure qyImagensArqBeforePost(DataSet: TDataSet);
    procedure qyImagensArqPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure qyImagensArqEditError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmImagens: TdmImagens;

implementation

uses uPrincipal, uErConexao, uFuncoesSistema, uVarGlobal, uFuncoesSeguranca;

{$R *.DFM}

function TdmImagens.TestaDatabaseConect: boolean;
begin
  if database.Connected = true then
    Result := true
  else
    Result := false;
end;

procedure TdmImagens.DataModuleCreate(Sender: TObject);
Var
vControl: Tinifile;
vServer, vHost, vUser, vPassword: String;
vServerType: String;
vPort: String;
vProtocol: String;
vClientCodePage: String;
Begin
  if TestaDatabaseConect = true then
  begin
    MessageDlg('O database ' + database.Database + ' está conectado, ' + #13 +
               'A aplicação não pode continuar!', mtError, [mbok], 0);
    Application.Terminate;
  end
  else
  begin
    database.Connected := false;
    if Not FileExists(vgArqIni) then
    Begin
      Messagedlg('Arquivo genesis.ini não encontrado!' + #13 + #10 + 'Execute o Config para gerá-lo!', mtError, [mbok], 0);
      Application.Terminate;
    end;
    vControl := Tinifile.create(vgPath + '\genesis.ini');
    vServerType := vControl.readstring('BaseImg', 'ServerType', '');
    vHost := vControl.readstring('BaseImg', 'BASE', '');
    vServer := vControl.readstring('BaseImg', 'Servidor', '');
    vUser := vControl.readstring('BaseImg', 'User', '');
    vPassword := vControl.readstring('BaseImg', 'Password', '');
    vPassword := DecryptMsg((vPassword), Length(vPassword));
    if vServerType = 'POSTGRESQL' then
    begin
      vPort := vControl.ReadString('PostgreSQL', 'Port', '');
      vProtocol := vControl.ReadString('PostgreSQL', 'Protocol', '');
      vClientCodePage := vControl.ReadString('PostgreSQL', 'clientCodePage', '');
    end;
    //Carrega configuração
    database.HostName := vServer;
    database.Database := vHost;
    database.User := vUser;
    database.Password := vPassword;
    database.Port := StrToInt(vPort);
    database.Protocol := vProtocol;
    database.ClientCodepage := vClientCodePage;
    try
      database.Connected := True;
    except
      on E: Exception do
      begin
        frmErConexao.memLogErro.Lines.Clear;
        frmErConexao.memLogErro.Lines.Add(E.Message);
        frmErConexao.Showmodal;
      end;
    end;
  end;
end;

{--- qyImagensArq -------------------------------------------------------------}

procedure TdmImagens.qyImagensArqAfterDelete(DataSet: TDataSet);
begin
  qyImagensArq.ApplyUpdates;
  database.Commit;
  qyImagensArq.CommitUpdates;
end;

procedure TdmImagens.qyImagensArqAfterPost(DataSet: TDataSet);
begin
  qyImagensArq.ApplyUpdates;
  database.Commit;
  qyImagensArq.CommitUpdates;
end;

procedure TdmImagens.qyImagensArqBeforeDelete(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmImagens.qyImagensArqBeforePost(DataSet: TDataSet);
begin
  database.StartTransaction;
end;

procedure TdmImagens.qyImagensArqPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
  database.Rollback;
end;

procedure TdmImagens.qyImagensArqEditError(DataSet: TDataSet; E: EDatabaseError;
  var Action: TDataAction);
begin
  database.Rollback;
  qyImagensArq.CancelUpdates;
end;

end.
