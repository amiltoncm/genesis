unit uCadUsuarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpCadastro, Vcl.ImgList, Vcl.ActnList,
  Data.DB, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.ToolWin, Vcl.StdCtrls, Vcl.Buttons,
  wwdbedit, Wwdotdot, Wwdbcomb, wwdblook, Vcl.Mask, Vcl.DBCtrls;

const
InputBoxMessage = WM_USER + 200;

type
  TfrmCadUsuarios = class(TfrmTmpCadastro)
    Label1: TLabel;
    dbCodigo: TDBEdit;
    Label2: TLabel;
    dbUsuario: TDBEdit;
    Label3: TLabel;
    dbSenha: TDBEdit;
    cbAcesso: TwwDBLookupCombo;
    Label5: TLabel;
    cbAtivo: TwwDBComboBox;
    Label9: TLabel;
    cbExpPdf: TwwDBComboBox;
    Label4: TLabel;
    dbGrpAcesso: TDBEdit;
    dbNomeComp: TDBEdit;
    Label6: TLabel;
    btEmails: TBitBtn;
    Label7: TLabel;
    wwDBComboBox1: TwwDBComboBox;
    procedure InputBoxSetPasswordChar(var Msg: TMessage); Message InputBoxMessage;
    procedure actNovoExecute(Sender: TObject);
    procedure actAlterarExecute(Sender: TObject);
    procedure actGravarExecute(Sender: TObject);
    procedure dbGrpAcessoChange(Sender: TObject);
    procedure cbAcessoExit(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dbUsuarioExit(Sender: TObject);
    procedure actLimparExecute(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure actProcurarExecute(Sender: TObject);
    procedure actAtualizarExecute(Sender: TObject);
    procedure actFecharExecute(Sender: TObject);
    procedure btEmailsClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadUsuarios: TfrmCadUsuarios;

implementation

{$R *.dfm}

uses dataCadastros, uFuncoesSeguranca, dataLookups, uFuncoesDB, uDaoUsuarios,
  uProcUsuarios, uDaoUsuariosMail, uCadUsuariosMail, uFuncoesDBEsp;

procedure TfrmCadUsuarios.InputBoxSetPasswordChar(var Msg: TMessage);
Var
hInputForm, hEdit: HWND;
Begin
  hInputForm := Screen.Forms[0].Handle;
  if (hInputForm <> 0) then
  Begin
    hEdit := FindWindowEx(hInputForm, 0, 'TEdit', nil);
    SendMessage(hEdit, EM_SETPASSWORDCHAR, Ord('*'),0);
  end;
end;

procedure TfrmCadUsuarios.actAlterarExecute(Sender: TObject);
Var
vSenha: String;
begin
  vSenha := dmCadastros.qyUsuariosusu_senha.Text;
  inherited;
  dmCadastros.qyUsuariosusu_senha.Text := DecryptMsg((vSenha), Length(vSenha));
  dbUsuario.SetFocus;
end;

procedure TfrmCadUsuarios.actAtualizarExecute(Sender: TObject);
begin
  dsCadastro.DataSet.Refresh;
end;

procedure TfrmCadUsuarios.actExcluirExecute(Sender: TObject);
begin
  if MessageDlg('Usuarios não podem ser excluídos!' + #13#13 + 'Deseja inativá-lo?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    dsCadastro.DataSet.Edit;
    dsCadastro.DataSet.FieldByName('usu_ativo').Value := 'N';
    dsCadastro.DataSet.Post;
  end;
end;

procedure TfrmCadUsuarios.actFecharExecute(Sender: TObject);
begin
  Close;
end;

procedure TfrmCadUsuarios.actGravarExecute(Sender: TObject);
Var
vSenha: string;
vOK: Boolean;
begin
  if (cbAcesso.Text <> '') then
  begin
    dmCadastros.qyUsuariosace_codigo.Value := dmLookups.lkProcAcessoace_codigo.Value;
    PostMessage(Handle, InputBoxMessage, 0, 0);
    vOK := InputQuery('Confirmação da senha', 'Digite a senha novamente', vSenha);
    if vOK then
    Begin
      if vSenha = dbSenha.Text then
      Begin
        dmCadastros.qyUsuariosusu_senha.Text := EncryptMsg((vSenha), Length(vSenha));
        if dsCadastro.DataSet.State in [dsInsert] then
        Begin
          dmCadastros.qyUsuariosusu_codigo.Value := GetCodigo('usu_codigo','usuarios');
          dmCadastros.qyUsuariosusu_ativo.text := 'S';
        end;
        inherited;
      end
      else
      Begin
        Messagedlg('A senha não foi confirmada!', mtError, [mbok],0);
        dbUsuario.SetFocus;
      end;
    end;
  end
  else
    Messagedlg('Você deve selecionar o grupo de acesso!', mtError, [mbok],0);
end;

procedure TfrmCadUsuarios.actLimparExecute(Sender: TObject);
begin
  inherited;
  ListarUsuarios('usu_nome', '0');
end;

procedure TfrmCadUsuarios.actNovoExecute(Sender: TObject);
begin
  inherited;
  cbAcesso.Text := dsCadastro.DataSet.FieldByName('ace_descricao').Text;
  dbUsuario.SetFocus;
end;

procedure TfrmCadUsuarios.actProcurarExecute(Sender: TObject);
begin
  inherited;
  ListarUsuarios('usu_nome', '0');
  frmProcUsuarios.ShowModal;
end;

procedure TfrmCadUsuarios.btEmailsClick(Sender: TObject);
begin
  if dsCadastro.DataSet.State in [dsBrowse] then
  begin
    if dsCadastro.DataSet.FieldByName('usu_exppdf').Text = 'S' then
    begin
      FiltrarUsuariosMail('usu_codigo', '=', dsCadastro.DataSet.FieldByName('usu_codigo').Text, '0', '1');
      if dmCadastros.qyUsuariosMailusu_codigo.IsNull then
      begin
        dmCadastros.qyUsuariosMail.Insert;
        dmCadastros.qyUsuariosMailusu_codigo.Value := dsCadastro.DataSet.FieldByName('usu_codigo').Value;
      end
      else
        dmCadastros.qyUsuariosMail.Edit;
      frmCadUsuariosMail.ShowModal;
    end
    else
      MessageDlg('para possuir e-mail o usuário deve exportar PDF!', mtWarning, [mbOk], 0);
  end
  else
    MessageDlg('Você deve gravar as alterações antes de cadastrar os dados de e-mail!', mtInformation, [mbOk], 0);
end;

procedure TfrmCadUsuarios.cbAcessoExit(Sender: TObject);
begin
  if dsCadastro.DataSet.State in [dsInsert, dsEdit] then
    if cbAcesso.Text <> '' then
      dmCadastros.qyUsuariosace_codigo.Value := dmLookups.lkProcAcessoace_codigo.Value;
end;

procedure TfrmCadUsuarios.dbGrpAcessoChange(Sender: TObject);
begin
  cbAcesso.Text := dbGrpAcesso.Text;
end;

procedure TfrmCadUsuarios.dbUsuarioExit(Sender: TObject);
begin
  if dsCadastro.DataSet.State in [dsInsert] then
  begin
    if UserExists(dmCadastros.qyUsuariosusu_nome.Text) = false then
    begin
      if dmCadastros.qyUsuariosusu_nomecomp.IsNull then
        dmCadastros.qyUsuariosusu_nomecomp.Text := dmCadastros.qyUsuariosusu_nome.Text;
    end
    else
      MessageDlg('Já existe o nome de usuário no cadastro, por favor escolha outro!',
        mtWarning, [mbOk], 0);
  end;
end;

procedure TfrmCadUsuarios.FormActivate(Sender: TObject);
begin
  dmLookups.lkProcAcesso.Active := True;
  inherited;
  ListarUsuarios('usu_nome', '0');
  btNovo.SetFocus;
end;

procedure TfrmCadUsuarios.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TfrmCadUsuarios.FormDestroy(Sender: TObject);
begin
  inherited;
  if frmCadUsuarios <> nil then
    frmCadUsuarios := nil;
end;

end.
