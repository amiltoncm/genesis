unit uParametros;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpFormNormal, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ComCtrls, JvBaseDlg, JvSelectDirectory, Inifiles, Vcl.Grids,
  wwdblook, wwdbedit, Wwdotdot, Wwdbcomb, Vcl.Mask, Vcl.DBCtrls, Data.DB,
  Vcl.ExtCtrls, Vcl.DBGrids;

type
  TfrmParametros = class(TfrmTmpFormNormal)
    btGravar: TBitBtn;
    sdTemp: TJvSelectDirectory;
    sdTISS: TJvSelectDirectory;
    dsConfig: TDataSource;
    dsTISS: TDataSource;
    dsTpTabela: TDataSource;
    PageControl1: TPageControl;
    tsAtualizacao: TTabSheet;
    Label1: TLabel;
    tsLogin: TTabSheet;
    Label3: TLabel;
    cbBuscaLogin: TComboBox;
    tsTISS: TTabSheet;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    SpeedButton2: TSpeedButton;
    dbLote: TDBEdit;
    dbSequencial: TDBEdit;
    cbVersaoTISS: TwwDBComboBox;
    wwDBLookupCombo1: TwwDBLookupCombo;
    dbTpTabela: TDBEdit;
    edDirTISS: TEdit;
    tsDiretorios: TTabSheet;
    Panel1: TPanel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    edDirLogs: TEdit;
    edLogError: TEdit;
    edLogConection: TEdit;
    Panel2: TPanel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    edLogoFundo: TEdit;
    edLogoRel: TEdit;
    edLogoRodape: TEdit;
    Panel3: TPanel;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    edTemp: TEdit;
    tsBackup: TTabSheet;
    Label23: TLabel;
    edTools: TEdit;
    tsLogs: TTabSheet;
    PageControl: TPageControl;
    tsDebugMem: TTabSheet;
    StringGrid1: TStringGrid;
    TabSheet1: TTabSheet;
    tsLogError: TTabSheet;
    memoLog: TMemo;
    memoErro: TMemo;
    Label24: TLabel;
    edDirImg: TEdit;
    dsModulos: TDataSource;
    DBGrid1: TDBGrid;
    procedure AbrirIni;
    procedure FormActivate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmParametros: TfrmParametros;

implementation

{$R *.dfm}

uses uVarGlobal, dataConfig, dataLookups, uDaoModulos;

procedure TfrmParametros.AbrirIni;
Var
vControl: TInifile;
vLocArq, vLocArqErro: String;
begin
  vControl := Tinifile.create(vgArqIni);
  //Login
  cbBuscaLogin.Text := vControl.Readstring('Usuario','busca','');
  //TISS
  edDirTISS.Text := vControl.Readstring('TISS','diretorio','');
  //Diretórios
  edTemp.Text := vControl.ReadString('Temp', 'Diretorio', '');
  edDirLogs.Text := vControl.ReadString('Logs', 'Diretorio', '');
  edLogError.Text := vControl.ReadString('Logs', 'erro', '');
  edLogConection.Text := vControl.ReadString('Logs', 'conexao', '');
  edDirImg.Text := vControl.ReadString('Imagens', 'Diretorio', '');
  edLogoFundo.Text := vControl.ReadString('Imagens', 'Logo', '');
  edLogoRel.Text := vControl.ReadString('Imagens', 'LogoRel', '');
  edLogoRodape.Text := vControl.ReadString('Imagens', 'LogoPDF', '');
  edTools.Text := vControl.ReadString('Backup', 'Path', '');
  //Carregar logs
  memoLog.Clear;
  memoErro.Clear;
  vLocArq := vControl.readstring('Logs','conexao','');
  vLocArqErro := vControl.readstring('Logs','erro','');
  memoLog.Lines.Add('Logs de uso do sistema:');
  memoLog.Lines.Add('');
  memoLog.Lines.LoadFromFile(vLocArq);
  memoErro.Lines.Add('Logs de uso do sistema:');
  memoErro.Lines.Add('');
  memoErro.Lines.LoadFromFile(vLocArqErro);
  //Variáveis da memória
  StringGrid1.Cells[0, 0] := 'Código do usuário logado';
  StringGrid1.Cells[1, 0] := vgCodUsuarioLog;
  StringGrid1.Cells[0, 1] := 'Nome do usuário logado';
  StringGrid1.Cells[1, 1] := vgNomeUsuarioLog;
  StringGrid1.Cells[0, 2] := 'Path do programa';
  StringGrid1.Cells[1, 2] := vgPath;
  StringGrid1.Cells[0, 3] := 'Arquivo ini do programa';
  StringGrid1.Cells[1, 3] := vgArqIni;
  StringGrid1.Cells[0, 4] := 'Diretório temporário do programa';
  StringGrid1.Cells[1, 4] := vgDirTemp;
  StringGrid1.Cells[0, 5] := 'Diretório das imagens do sistema';
  StringGrid1.Cells[1, 5] := vgDirImagens;
  StringGrid1.Cells[0, 6] := 'Imagem de fundo de tela';
  StringGrid1.Cells[1, 6] := vgFundo;
  StringGrid1.Cells[0, 7] := 'Imagem de rodapé do relatório';
  StringGrid1.Cells[1, 7] := vgImgRodape;
  StringGrid1.Cells[0, 8] := 'Diretório de imagens da captura';
  StringGrid1.Cells[1, 8] := vgDirCaptura;
  vControl.Free;
end;

procedure TfrmParametros.btGravarClick(Sender: TObject);
begin
  inherited;

  if MessageDlg('As alterações terão efeito assim que você reiniciar o sistema!' + #1310 + 'Deseja reiniciar agora?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    Close;
end;

procedure TfrmParametros.FormActivate(Sender: TObject);
begin
  inherited;
  ListarModulos('mod_codigo', '0');
  dsConfig.DataSet.Active := True;
  dsTISS.DataSet.Active := True;
  dsTpTabela.DataSet.Active := True;
  dsModulos.DataSet.Active := True;
  StringGrid1.ColWidths[0] := 200;
  StringGrid1.ColWidths[1] := 350;
  AbrirIni;
  PageControl1.ActivePage := tsAtualizacao;
end;

procedure TfrmParametros.SpeedButton1Click(Sender: TObject);
begin
  sdTemp.InitialDir := edTemp.Text;
  if sdTemp.Execute then
    edTemp.Text := sdTemp.Directory;
end;

procedure TfrmParametros.SpeedButton2Click(Sender: TObject);
begin
  sdTISS.InitialDir := edDirTISS.Text;
  if sdTISS.Execute then
    edDirTISS.Text := sdTISS.Directory;
end;

end.
