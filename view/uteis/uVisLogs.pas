unit uVisLogs;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpFormNormal, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.FileCtrl, Vcl.ComCtrls, IniFiles, ShellApi;

type
  TfrmVisLogs = class(TfrmTmpFormNormal)
    PageControl: TPageControl;
    tsLogin: TTabSheet;
    memoLog: TMemo;
    tsErroLog: TTabSheet;
    memoErro: TMemo;
    tsWeb: TTabSheet;
    Label1: TLabel;
    FileListBox1: TFileListBox;
    DirectoryListBox1: TDirectoryListBox;
    procedure FormActivate(Sender: TObject);
    procedure PageControlChange(Sender: TObject);
    procedure DirectoryListBox1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVisLogs: TfrmVisLogs;

implementation

{$R *.dfm}

uses uVarGlobal;

procedure TfrmVisLogs.DirectoryListBox1DblClick(Sender: TObject);
begin
  ShellExecute(Handle, 'OPEN', PChar(FileListBox1.FileName), nil, nil, sw_showmaximized);
end;

procedure TfrmVisLogs.FormActivate(Sender: TObject);
Var
vLocArq, vLocArqErro, vDirLogWeb: String;
vControl: TInifile;
begin
  inherited;
  tsLogin.Highlighted := true;
  PageControl.ActivePage := tsLogin;
  memoLog.Clear;
  memoErro.Clear;
  vControl := Tinifile.create(vgArqIni);
  vLocArq := vControl.readstring('Logs', 'conexao', '');
  vLocArqErro := vControl.readstring('Logs', 'erro', '');
  vDirLogWeb := vControl.readstring('BaseWeb', 'DirLog', '');
  vControl.Free;
  memoLog.Lines.Add('Logs de uso do sistema:');
  memoLog.Lines.Add('');
  memoLog.Lines.LoadFromFile(vLocArq);
  memoErro.Lines.Add('Logs de uso do sistema:');
  memoErro.Lines.Add('');
  memoErro.Lines.LoadFromFile(vLocArqErro);
  DirectoryListBox1.Directory := vDirLogWeb;
end;

procedure TfrmVisLogs.PageControlChange(Sender: TObject);
begin
  if PageControl.ActivePage = tsLogin then
  Begin
    tsLogin.Highlighted := true;
    tsErroLog.Highlighted := false;
    tsWeb.Highlighted := false;
  end;
  if PageControl.ActivePage = tsErroLog then
  Begin
    tsLogin.Highlighted := false;
    tsErroLog.Highlighted := true;
    tsWeb.Highlighted := false;
  end;
  if PageControl.ActivePage = tsWeb then
  Begin
    tsLogin.Highlighted := false;
    tsErroLog.Highlighted := false;
    tsWeb.Highlighted := true;
  end;
end;

end.
