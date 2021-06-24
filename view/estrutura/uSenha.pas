unit uSenha;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpForm, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Imaging.jpeg, Vcl.ExtCtrls, Inifiles, Vcl.Imaging.pngimage;

type
  TfrmSenha = class(TfrmTmpForm)
    Image1: TImage;
    Label1: TLabel;
    edUsuario: TEdit;
    Label2: TLabel;
    edSenha: TEdit;
    lbCaps: TLabel;
    btLogin: TBitBtn;
    procedure Login;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure edSenhaEnter(Sender: TObject);
    procedure edSenhaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edSenhaKeyPress(Sender: TObject; var Key: Char);
    procedure edSenhaKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edSenhaMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure btFecharClick(Sender: TObject);
    procedure btLoginClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    vlLoginOK: Char;
    vlTentativa: integer;

  public
    { Public declarations }
  end;

var
  frmSenha: TfrmSenha;

implementation

{$R *.dfm}

uses uFuncoesSistema, uVarGlobal, dataCadastros, uFuncoesSeguranca, uDaoUsuarios,
  uFuncoesLogs, uDaoConsDivExames;

procedure TfrmSenha.Login;
Var
vUser, vPassword: String;
begin
  vlTentativa := vlTentativa + 1;
  vUser := edUsuario.Text;
  vPassword := EncryptMsg((edSenha.Text), Length(edSenha.Text));
  if FiltLoginUsuarios(vUser, vPassword) = true then
  Begin
    //Atribui o código do usuário na variável global (uVarGlobal)
    vgCodUsuarioLog := dmCadastros.qyUsuariosUSU_CODIGO.text;
    vgNomeUsuarioLog := dmCadastros.qyUsuariosUSU_NOME.text;
    vgExpPdf := dmCadastros.qyUsuariosusu_exppdf.Text;
    vlLoginOK := 'S';
    //Grava log de login
    GravaLog('Login', '');
    Close;
  end
  else
  Begin
    MessageDlg('Login ou Senha inválidos!' + #13 + 'Por favor tente novamente!', mtWarning, [mbok],0);
    edSenha.Clear;
    edUsuario.SetFocus;
    if vlTentativa = 3 then
    Begin
      //grava log de erro login
      GravaLog('Erro', 'Erro de login');
      MessageDlg('Você excedeu o número de tentativas!', mtError, [mbok],0);
      Close;
    end;
  end;
end;

procedure TfrmSenha.btFecharClick(Sender: TObject);
begin
  GravaLog('Erro', 'Cancelamento de login');
  vlLoginOK := 'N';
  Close;
end;

procedure TfrmSenha.btLoginClick(Sender: TObject);
begin
  Login;
end;

procedure TfrmSenha.edSenhaEnter(Sender: TObject);
begin
  if TestaCaps = true then
    lbCaps.Visible := true
  else
    lbCaps.Visible := false;
end;

procedure TfrmSenha.edSenhaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if TestaCaps = true then
    lbCaps.Visible := true
  else
    lbCaps.Visible := false;
end;

procedure TfrmSenha.edSenhaKeyPress(Sender: TObject; var Key: Char);
begin
  if TestaCaps = true then
    lbCaps.Visible := true
  else
    lbCaps.Visible := false;
  if key = #13 then
    Login
end;

procedure TfrmSenha.edSenhaKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if TestaCaps = true then
    lbCaps.Visible := true
  else
    lbCaps.Visible := false;
end;

procedure TfrmSenha.edSenhaMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
Var
vKeyState: TKeyboardState;
begin
   GetKeyboardState(vKeyState);
   if (vKeyState[VK_CAPITAL] = 0) then
      edSenha.Hint := 'Digite a senha para o acesso!'+#13+'O CAPS está DESATIVADO!'
   else
      edSenha.Hint := 'Digite a senha para o acesso!'+#13+'O CAPS está ATIVADO!'
end;

procedure TfrmSenha.FormActivate(Sender: TObject);
Var
vControl: TInifile;
vUser, vBuscaUser: String;
begin
  inherited;
  frmSenha.Caption := 'Acesso - '+ RetornaExecutavelSemExtensao + ' Vs. ' + VersaoSistema(0);
  vControl := Tinifile.create(vgArqini);
  vBuscaUser := vControl.readstring('usuario', 'busca','');
  if vBuscaUser = 'windows' then
  begin
    vUser := UsuarioWin;
    if vUser = '' then
      vUser := vControl.readstring('usuario', 'ultimo','');
  end;
  if vBuscaUser = 'ultimo' then
    vUser := vControl.readstring('usuario', 'ultimo','');
  vControl.Free;
  edUsuario.Clear;
  edUsuario.Text := vUser;
  edSenha.Clear;
  vlLoginOK := 'N';
  vlTentativa := 0;
  edSenha.SetFocus;
  btFechar.Repaint;
  btLogin.Repaint;
  Image1.Repaint;
  frmSenha.Repaint;
end;

procedure TfrmSenha.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if vlLoginOK = 'N' then
  Application.Terminate
  else
    FiltrarConsDivExames('0');
end;

procedure TfrmSenha.FormCreate(Sender: TObject);
var
vHSysMenu: HMENU;
begin
  vHSysMenu := GetSystemMenu(Self.Handle, False);
  if vHSysMenu <> 0 then
  begin
    EnableMenuItem(vHSysMenu, SC_CLOSE,
    MF_BYCOMMAND Or MF_GRAYED);
    DrawMenuBar(Self.Handle);
  end;
end;

procedure TfrmSenha.FormKeyPress(Sender: TObject; var Key: Char);
begin
  //inherited;

end;

end.
