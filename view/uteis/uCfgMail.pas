unit uCfgMail;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpFormNormal, Vcl.StdCtrls,
  Vcl.Buttons, Inifiles, Vcl.Mask, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdExplicitTLSClientServerBase, IdMessageClient,
  IdSMTPBase, IdSMTP, IdServerIOHandler, IdSSL, IdSSLOpenSSL;

type
  TfrmCfgMail = class(TfrmTmpFormNormal)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    edHost: TEdit;
    Label2: TLabel;
    edUserName: TEdit;
    Label3: TLabel;
    mePassword: TMaskEdit;
    Label4: TLabel;
    edNameFrom: TEdit;
    edAdressFrom: TEdit;
    Label5: TLabel;
    cbPorta: TComboBox;
    Label6: TLabel;
    Label7: TLabel;
    cbAuthtype: TComboBox;
    Label8: TLabel;
    cbSslMethod: TComboBox;
    Label9: TLabel;
    cbSslMode: TComboBox;
    Label10: TLabel;
    cbUseTls: TComboBox;
    btAlterar: TBitBtn;
    procedure FormActivate(Sender: TObject);
    procedure btAlterarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCfgMail: TfrmCfgMail;

implementation

{$R *.dfm}

uses uVarGlobal, uFuncoesSeguranca, uFuncoesMail, uFuncoesSistema;

procedure TfrmCfgMail.btAlterarClick(Sender: TObject);
Var
vControl: TInifile;
vSenha, vMsg: String;
vLstAnexos: TStringList;
begin
  try
    vMsg := 'teste de envio de e-mail pelo sistema ' + Application.Title + ' - Vs. ' + VersaoSistema(0) + '!';
    vLstAnexos := TStringList.Create;
    vLstAnexos.Add('0');
    vControl := Tinifile.create(vgArqIni);
    //Dados da conta de e-mail
    vControl.WriteString('emails', 'host', edHost.Text);
    vControl.WriteString('emails', 'username', edUserName.Text);
    vSenha := EncryptMsg((mePassword.Text), Length(mePassword.Text));
    vControl.WriteString('emails', 'password', vSenha);
    vControl.WriteString('emails', 'namefrom', edNameFrom.Text);
    vControl.WriteString('emails', 'adressfrom', edAdressFrom.Text);
    vControl.WriteString('emails', 'door', cbPorta.Text);
    //Dados do provedor
    vControl.WriteString('provedor', 'authtype', IntToStr(cbAuthtype.ItemIndex));
    vControl.WriteString('provedor', 'sslmethod', IntToStr(cbSslMethod.ItemIndex));
    vControl.WriteString('provedor', 'sslmode', IntToStr(cbSslMode.ItemIndex));
    vControl.WriteString('provedor', 'usetls', IntToStr(cbUseTls.ItemIndex));
    vControl.free;
    //Verifica envio
    if MessageDlg('Dados gravados com sucesso!' + #13#13 + 'Deseja enviar um e-mail de teste?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      SendMailIndy(edAdressFrom.Text, 'Teste de envio', vMsg, vLstAnexos, true);
    Close;
  except
    Close;
  end;
end;

procedure TfrmCfgMail.FormActivate(Sender: TObject);
Var
vControl: TInifile;
vSenha: String;
begin
  inherited;
  vControl := Tinifile.create(vgArqIni);
  //Dados da conta de e-mail
  edHost.Text := vControl.ReadString('emails', 'host', '');
  edUserName.Text := vControl.ReadString('emails', 'username', '');
  vSenha := vControl.ReadString('emails', 'password', '');
  mePassword.Text := DecryptMsg((vSenha), Length(vSenha));
  edNameFrom.Text := vControl.ReadString('emails', 'namefrom', '');
  edAdressFrom.Text := vControl.ReadString('emails', 'adressfrom', '');
  cbPorta.Text := vControl.ReadString('emails', 'door', '');
  //Dados do provedor
  cbAuthtype.ItemIndex := StrToInt(vControl.ReadString('provedor', 'authtype', ''));
  cbSslMethod.ItemIndex := StrToInt(vControl.ReadString('provedor', 'sslmethod', ''));
  cbSslMode.ItemIndex := StrToInt(vControl.ReadString('provedor', 'sslmode', ''));
  cbUseTls.ItemIndex := StrToInt(vControl.ReadString('provedor', 'usetls', ''));
  vControl.free;
  btFechar.SetFocus;
end;

end.
