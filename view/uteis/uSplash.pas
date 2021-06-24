unit uSplash;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Inifiles, Registry, ComCtrls, Gauges;

type
  TfrmSplash = class(TForm)
    Image1: TImage;
    lbSistema: TLabel;
    lbHost: TLabel;
    lbVersao: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    lbRegistro: TLabel;
    Label9: TLabel;
    lbNSerie: TLabel;
    Label11: TLabel;
    lbSGDB: TLabel;
    lbStatus: TLabel;
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSplash: TfrmSplash;

implementation

uses uFuncoesSistema, uFuncoesSeguranca;

{$R *.DFM}

procedure TfrmSplash.FormActivate(Sender: TObject);
Var
vPath: String;
vControl: Tinifile;
vSistema: string;
vBDados, vVersao, vRegistro, vBanco, vNSerie, vHost: String;
vFig : thandle;
begin
  vFig := loadlibrary('Genesis.dll');
  if vFig <> 0 then
  Begin
    Image1.Picture.Bitmap.LoadFromResourceName(vFig, 'Splash');
  end
  else
  Begin
    Messagedlg('Arquivo Genesis.dll não encontrado!', mterror, [mbok], 0);
    Application.Terminate;
  end;
  FreeLibrary(vFig);
  vPath := DiretorioSemBarra(ExtractFileDir(Application.ExeName));
  //função busca versão
  vVersao := VersaoSistema(0);
  //pega dados no arquivo INI
  vControl := Tinifile.create(vPath+'\Genesis.ini');
  vSistema := vControl.readstring('Splash', 'Sistema','');
  vRegistro := vControl.readstring('Splash', 'Registro','');
  vNSerie := vControl.readstring('Splash', 'Serial','');
  vRegistro := DecryptMsg(vRegistro, Length(vRegistro));
  vBDados := vControl.readstring('Base', 'ServerType','');
  vHost := vControl.readstring('Base', 'Servidor','');
  if vBDados = 'INTERBASE' then
    vBanco := vControl.readstring('Interbase', 'Versao','');
  if vBDados = 'POSTGRESQL' then
    vBanco := vControl.readstring('PostgreSQL', 'Versao','');
  if vBDados = 'FIREBIRD' then
    vBanco := vControl.readstring('FIREBIRD', 'Versao','');
  if vBDados = 'MYSQL' then
    vBanco := vControl.readstring('MYSQL', 'Versao','');
  vBanco := vBdados + ' Vs. ' + vBanco;
  vControl.Free;
  lbSistema.Caption := vSistema;
  lbHost.Caption := vHost;
  lbVersao.Caption := vVersao;
  lbNSerie.Caption := vNSerie;
  lbSGDB.Caption := vBanco;
  if vRegistro <> '' then
    lbRegistro.Caption := vRegistro
  else
    lbRegistro.Caption := 'SOFTWARE NÃO REGISTRADO';
end;

end.
