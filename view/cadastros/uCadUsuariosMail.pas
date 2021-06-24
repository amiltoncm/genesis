unit uCadUsuariosMail;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpFormNormal, Vcl.StdCtrls,
  Vcl.Buttons, Data.DB, Vcl.DBCtrls, Vcl.Mask, Inifiles;

type
  TfrmCadUsuariosMail = class(TfrmTmpFormNormal)
    dsCadastro: TDataSource;
    Label1: TLabel;
    dbAdressFrom: TDBEdit;
    Label2: TLabel;
    dbNameFrom: TDBEdit;
    Label3: TLabel;
    dbHost: TDBEdit;
    Label4: TLabel;
    dbUserName: TDBEdit;
    Label5: TLabel;
    dbPassword: TDBEdit;
    Label6: TLabel;
    cbPorta: TDBComboBox;
    btGravar: TBitBtn;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btGravarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dbAdressFromExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadUsuariosMail: TfrmCadUsuariosMail;

implementation

{$R *.dfm}

uses dataCadastros, uVarGlobal, uFuncoesSeguranca, uFuncoesMail, uFuncoesSistema;

procedure TfrmCadUsuariosMail.btGravarClick(Sender: TObject);
Var
vSenha, vMsg: String;
vLstAnexos: TStringList;
begin
  Try
    vMsg := 'teste de envio de e-mail pelo sistema ' + Application.Title + ' - Vs. ' + VersaoSistema(0) + '!';
    vLstAnexos := TStringList.Create;
    vLstAnexos.Add('0');
    vSenha := dbPassword.Text;
    vSenha := EncryptMsg(vSenha, Length(vSenha));
    dmCadastros.qyUsuariosMailmai_password.Text := vSenha;
    dsCadastro.DataSet.Post;
    if MessageDlg('Dados gravados com sucesso!' + #13#13 + 'Deseja enviar um e-mail de teste?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      SendMailIndyMail('suporte@nextinf.com', 'Teste', 'Teste de envio de e-mail!', vLstAnexos,
                       True, dbHost.Text, dbUserName.Text, vSenha, dbNameFrom.Text, dbUserName.Text, StrToInt(cbPorta.Text));
    Close;
  Except
    on E: Exception do
    Begin
      MessageDlg('Erro ao gravar Alteração / Inserção!' + #13#10 +
          E.Message,mtError,[mbOk],0);
      dsCadastro.DataSet.Refresh;
      Close;
    end;
  end;
end;

procedure TfrmCadUsuariosMail.dbAdressFromExit(Sender: TObject);
begin
  inherited;
  dsCadastro.DataSet.FieldByName('mai_username').Text := dbAdressFrom.Text;
end;

procedure TfrmCadUsuariosMail.FormActivate(Sender: TObject);
Var
vControl: TInifile;
begin
  inherited;
  if dsCadastro.DataSet.State in [dsInsert] then
  begin
    if MessageDlg('Deseja buscar a configuração padrão do provedor?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      vControl := Tinifile.create(vgArqIni);
      dsCadastro.DataSet.FieldByName('mai_host').Text := vControl.ReadString('emails', 'host', '');
      dsCadastro.DataSet.FieldByName('mai_door').Text := vControl.ReadString('emails', 'door', '');
      vControl.Free;
    end;
  end;
  dsCadastro.DataSet.FieldByName('mai_password').Text := DecryptMsg(dsCadastro.DataSet.FieldByName('mai_password').Text, Length(dsCadastro.DataSet.FieldByName('mai_password').Text));
  dbAdressFrom.SetFocus;
end;

procedure TfrmCadUsuariosMail.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  dsCadastro.DataSet.Close;
  inherited;
end;

procedure TfrmCadUsuariosMail.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if dsCadastro.DataSet.State in [dsInsert, dsEdit] then
  begin
    if MessageDlg('Existem informações pendentes que serão perdidas,' + #13 +
                  'deseja fechar assim mesmo?', mtConfirmation, [mbYes, mbNo], 0)
                   = mrYes then
    begin
      dsCadastro.DataSet.Cancel;
      CanClose := True;
    end
    else
      CanClose := False;
  end;
end;

end.
