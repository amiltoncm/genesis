unit uTmpModulos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, ToolWin, ComCtrls, Menus, ExtCtrls, ShellApi, Inifiles,
  ActnList;

type
  TfrmTmpModulos = class(TForm)
    Imagens: TImageList;
    MainMenu1: TMainMenu;
    Cadastros1: TMenuItem;
    Consultas1: TMenuItem;
    Movimentaes1: TMenuItem;
    Relatrios1: TMenuItem;
    teis1: TMenuItem;
    ToolBar1: TToolBar;
    ImgFundoTela: TImage;
    ActionList1: TActionList;
    actFechar: TAction;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    Sair1: TMenuItem;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton8: TToolButton;
    actMaximizaTodas: TAction;
    actMinimizaTodas: TAction;
    actFechaAtiva: TAction;
    actFecharTodas: TAction;
    BalloonHint1: TBalloonHint;
    N1: TMenuItem;
    Janelas1: TMenuItem;
    Maximimzarjanelas1: TMenuItem;
    Minimizarjanelas1: TMenuItem;
    Fecharjanela1: TMenuItem;
    Fecharjanelas1: TMenuItem;
    ToolButton13: TToolButton;
    procedure FormActivate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure actFecharExecute(Sender: TObject);
    procedure actMaximizaTodasExecute(Sender: TObject);
    procedure actMinimizaTodasExecute(Sender: TObject);
    procedure actFechaAtivaExecute(Sender: TObject);
    procedure actFecharTodasExecute(Sender: TObject);

  private

    FClientInstance, FPrevClient: TFarProc;
    Procedure ClientWindow(Var Message: TMessage);

  public
    { Public declarations }
  end;

var
  frmTmpModulos: TfrmTmpModulos;

implementation

uses uVarGlobal, uFuncoesSistema, uSenha, uSobre;

{$R *.dfm}

procedure TfrmTmpModulos.ClientWindow(Var Message: TMessage);
Var
DisplayContext: hDC;
Row, Col: Word;
Begin
  with Message do
  case Msg of
  WM_ERASEBKGND:
  Begin
    DisplayContext := TWMEraseBkGnd(Message).DC;
    For Row := 0 to ClientHeight DIV ImgFundoTela.Picture.Height DO
      For Col := 0 TO ClientWidth  DIV ImgFundoTela.Picture.Width DO
        BitBlt(DisplayContext, Col*ImgFundoTela.Picture.Width,
    Row * ImgFundoTela.Picture.Height,
    ImgFundoTela.Picture.Width, ImgFundoTela.Picture.Height,
    ImgFundoTela.Picture.BitMap.Canvas.Handle, 0, 0, SRCCOPY);
    Result := 1;
  end
  else
    Result := CallWindowProc(FPrevClient, ClientHandle, Msg, wParam, LParam);
  end;
end;

procedure TfrmTmpModulos.FormActivate(Sender: TObject);
begin
  //
end;

procedure TfrmTmpModulos.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
{
  if MessageDlg('Deseja realmente sair do módulo?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    Canclose := true
  else
    Canclose := false;
}
end;

procedure TfrmTmpModulos.FormCreate(Sender: TObject);
var
hSysMenu: HMENU;
vControl: TInifile;
begin
  if hSysMenu <> 0 then
  begin
    EnableMenuItem(hSysMenu, SC_CLOSE,
    MF_BYCOMMAND Or MF_GRAYED);
    DrawMenuBar(Self.Handle);
  end;
  //Carrega variáveis padrões
  Self.Caption := Application.Title + ' - Vs. ' + VersaoSistema(0);
  //Carrega imagem de fundo
  ImgFundoTela.Picture.LoadFromFile(vgFundo);
  FClientInstance := MakeObjectInstance(ClientWindow);
  FPrevClient := Pointer(GetWindowLong(ClientHandle, GWL_WNDPROC));
  SetWindowLong(ClientHandle, GWL_WNDPROC, Longint(FClientInstance));
end;

procedure TfrmTmpModulos.actFecharExecute(Sender: TObject);
begin
  Close;
end;

procedure TfrmTmpModulos.actMaximizaTodasExecute(Sender: TObject);
var
X : Byte;
begin
  try
    for X := 0 to Pred(MDIChildCount) do
      MDIChildren[X].WindowState := wsNormal;
    ActiveMDIChild.WindowState := wsNormal;
  except
  end;
end;

procedure TfrmTmpModulos.actMinimizaTodasExecute(Sender: TObject);
var
X : Byte;
begin
  try
    for X := 0 to Pred(MDIChildCount) do
      MDIChildren[X].WindowState := wsMinimized;
    ActiveMDIChild.WindowState := wsMinimized;
  except
  end;
end;

procedure TfrmTmpModulos.actFechaAtivaExecute(Sender: TObject);
begin
  try
    ActiveMDIChild.Close;
  except
  end;
end;

procedure TfrmTmpModulos.actFecharTodasExecute(Sender: TObject);
var
X : Byte;
begin
  if MDIChildCount > 0 then
    for X := 0 to Pred(MDIChildCount) do
      MDIChildren[X].Close;
end;

end.
