unit uSobre;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpForm, Vcl.StdCtrls, Vcl.Buttons,
  Inifiles, Vcl.ExtCtrls, ShellApi, Vcl.Imaging.pngimage;

type
  TfrmSobre = class(TfrmTmpForm)
    Panel1: TPanel;
    ImgBase: TImage;
    lbBase: TLabel;
    ImgSobre: TImage;
    lbSoftware: TLabel;
    Label2: TLabel;
    lbVersao: TLabel;
    lbCliente: TLabel;
    lbRegistro: TLabel;
    lbDtFile: TLabel;
    Image1: TImage;
    lbSQL: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ImgBaseClick(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure lbSQLClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSobre: TfrmSobre;

implementation

{$R *.dfm}

uses uVarGlobal, uFuncoesSistema, uFuncoesSeguranca, uSQL;

procedure TfrmSobre.FormActivate(Sender: TObject);
Var
vSerial, vDateFile, vImgBase, vRegistro: String;
vControl: TInifile;
begin
  inherited;
  lbSoftware.Caption := Application.Title;
  vDateFile := DateTimeToStr
    (FileDateToDateTime(FileAge(vgPath + '\' + RetornaExecutavelSemExtensao +
    '.exe')));
  lbDtFile.Caption := vDateFile;
  vControl := TInifile.create(vgArqIni);
  lbBase.Caption := vControl.ReadString('Base', 'ServerType', '');
  vSerial := vControl.ReadString('Splash', 'Serial', '');
  vRegistro := vControl.ReadString('Splash', 'Registro', '');
  vImgBase := vControl.ReadString('Imagens', 'LogoBase', '');
  vControl.free;
  lbCliente.Caption := DecryptMsg(vRegistro, Length(vRegistro));
  // Pega a Versão via função;
  lbVersao.Caption := VersaoSistema(0);
  lbRegistro.Caption := vSerial;
  ImgBase.Picture.LoadFromFile(vImgBase);
  ImgBase.Hint := ImgBase.Hint + #13 + lbBase.Caption;
end;

procedure TfrmSobre.FormCreate(Sender: TObject);
Var
  hSysMenu: HMENU;
begin
  hSysMenu := GetSystemMenu(Self.Handle, False);
  if hSysMenu <> 0 then
  begin
    EnableMenuItem(hSysMenu, SC_CLOSE, MF_BYCOMMAND Or MF_GRAYED);
    DrawMenuBar(Self.Handle);
  end;
end;

procedure TfrmSobre.Image1Click(Sender: TObject);
begin
  ShellExecute(Handle, 'OPEN', Pchar('www.microsoft.com.br'), nil, nil,
    sw_ShowNormal);
end;

procedure TfrmSobre.ImgBaseClick(Sender: TObject);
begin
  if lbBase.Caption = 'FIREBIRD' then
    ShellExecute(Handle, 'OPEN', Pchar('www.firebirdsql.org'), nil, nil,
      sw_ShowNormal);
  if lbBase.Caption = 'MYSQL' then
    ShellExecute(Handle, 'OPEN', Pchar('www.mysql.com'), nil, nil,
      sw_ShowNormal);
  if lbBase.Caption = 'POSTGRESQL' then
    ShellExecute(Handle, 'OPEN', Pchar('www.postgresql.com'), nil, nil,
      sw_ShowNormal);
end;

procedure TfrmSobre.lbSQLClick(Sender: TObject);
begin
  frmSql.ShowModal;
end;

end.
