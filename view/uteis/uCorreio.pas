unit uCorreio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpFormNormal, Vcl.StdCtrls,
  Vcl.Buttons, wwdblook, Vcl.ExtCtrls, JvGIF, Vcl.ComCtrls, wwriched;

type
  TfrmCorreio = class(TfrmTmpFormNormal)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edMail: TEdit;
    cbEndereco: TwwDBLookupCombo;
    edAssunto: TEdit;
    Panel2: TPanel;
    btEnviar: TBitBtn;
    Label4: TLabel;
    edAnexo: TEdit;
    Image1: TImage;
    memMsg: TwwDBRichEdit;
    pnMensagem: TPanel;
    procedure FormActivate(Sender: TObject);
    procedure btEnviarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCorreio: TfrmCorreio;

implementation

{$R *.dfm}

uses dataCadastros, uVarGlobal, uFuncoesMail, uFuncoesSeguranca;

procedure TfrmCorreio.btEnviarClick(Sender: TObject);
Var
vLstAnexos: TStringList;
begin
  inherited;
  pnMensagem.Visible := true;
  pnMensagem.Repaint;
  frmCorreio.Cursor := crHourGlass;
  memMsg.Cursor := crHourGlass;
  vLstAnexos := TStringList.Create;
  vLstAnexos.Add(vgImgRodape);
  vLstAnexos.Add(edAnexo.Text);
  SendMailIndyMail(cbEndereco.Text, edAssunto.Text, memMsg.Text, vLstAnexos, true,
                  dmCadastros.qyUsuariosMailmai_host.Text, dmCadastros.qyUsuariosMailmai_username.Text,
                  dmCadastros.qyUsuariosMailmai_password.Text,
                  dmCadastros.qyUsuariosMailmai_namefrom.Text, dmCadastros.qyUsuariosMailmai_adressfrom.Text,
                  dmCadastros.qyUsuariosMailmai_door.Value);
  pnMensagem.Visible := false;
  vLstAnexos.Free;
  frmCorreio.Cursor := crDefault;
  memMsg.Cursor := crDefault;
  Close;
end;

procedure TfrmCorreio.FormActivate(Sender: TObject);
begin
  cbEndereco.Clear;
  pnMensagem.Visible := false;
  memMsg.Clear;
  edMail.Text := dmCadastros.qyUsuariosMailmai_adressfrom.Text +
                 '(' + dmCadastros.qyUsuariosMailmai_namefrom.Text + ')';
  inherited;
  edAssunto.Text := 'Exame solicitado';
  memMsg.Lines.Add('Anexo exame solicitado.');
  memMsg.Lines.Add('');
  memMsg.Lines.Add('Atenciosamente');
  memMsg.Lines.Add(vgNomeUsuarioLog);
  cbEndereco.SetFocus;
end;

procedure TfrmCorreio.FormKeyPress(Sender: TObject; var Key: Char);
begin
  //inherited;
  if ((key = #13) and not(memMsg.Focused)) then
  begin
    Key := #0;
    Perform(Wm_NextDlgCtl, 0, 0);
  end;
  if key = #27 then
    Close;
end;

end.
