unit uGerenFiles;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpFormNormal, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Grids, Wwdbigrd, Wwdbgrid, Data.DB, Vcl.ExtCtrls, ShellApi,
  Vcl.DBGrids;

type
  TfrmGerenFiles = class(TfrmTmpFormNormal)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    edExame: TEdit;
    dsFiles: TDataSource;
    btAnexar: TBitBtn;
    btAbrir: TBitBtn;
    btExcluir: TBitBtn;
    btCapturar: TBitBtn;
    edArquivo: TEdit;
    spArquivo: TSpeedButton;
    OpenDialog1: TOpenDialog;
    GridArquivos: TDBGrid;
    procedure btAnexarClick(Sender: TObject);
    procedure spArquivoClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btExcluirClick(Sender: TObject);
    procedure btAbrirClick(Sender: TObject);
    procedure btCapturarClick(Sender: TObject);
    procedure GridArquivosDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGerenFiles: TfrmGerenFiles;

implementation

{$R *.dfm}

uses dataGestao, uDaoExamesFiles, uVarGlobal, uFuncoesSeguranca;

procedure TfrmGerenFiles.btAbrirClick(Sender: TObject);
Var
vNomeArq, vExtensao: String;
vArquivo: String;
begin
  vNomeArq := GeraSenhaHex(8);
  vExtensao := dmGestao.qyExamesFilesefi_extensao.Text;
  dmGestao.qyExamesFilesefi_arquivo.SaveToFile(vgDirTemp + '\' + vNomeArq + vExtensao);
  vArquivo := vgDirTemp + '\' + vNomeArq + vExtensao;
  ShellExecute(Handle, 'OPEN', Pchar(vArquivo), nil, nil, SW_SHOWMAXIMIZED);
end;

procedure TfrmGerenFiles.btAnexarClick(Sender: TObject);
Var
vOk: boolean;
vDescricao: String;
begin
  if FileExists(edArquivo.Text) then
  begin
    vOK := InputQuery('Gerenciador de arquivos', 'Digite a descrição do arquivo', vDescricao);
    if vOk then
    begin
      if vDescricao <> '' then
      begin
        InsExamesfiles(vgIDArq, edArquivo.Text, vDescricao);
        MessageDlg('Arquivo anexado com sucesso!', mtInformation, [mbok], 0);
        edArquivo.Clear;
      end
      else
        MessageDlg('A descrição não pode ficar em branco!', mtWarning, [mbok], 0);
    end;
  end
  else
    MessageDlg('Arquivo não encontrado!', mtWarning, [mbok], 0);
end;

procedure TfrmGerenFiles.btCapturarClick(Sender: TObject);
begin
  //frmScanner.ShowModal;
end;

procedure TfrmGerenFiles.btExcluirClick(Sender: TObject);
begin
  MessageDlg('Função indisponível!', mtWarning, [mbok], 0);
end;

procedure TfrmGerenFiles.FormActivate(Sender: TObject);
begin
  inherited;
  edArquivo.Clear;
  edExame.Text := vgIDArq;
  dsFiles.DataSet.Active := True;
  FiltrarExamesFiles('exa_id', '=', vgIDArq, 'efi_sequencia', '0');
end;

procedure TfrmGerenFiles.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  vgIDArq := '0';
end;

procedure TfrmGerenFiles.GridArquivosDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  if odd(dsFiles.DataSet.RecNo) then
    GridArquivos.Canvas.Brush.Color := clSilver
  else
    GridArquivos.Canvas.Brush.Color:= clWhite;
  GridArquivos.Canvas.FillRect(Rect);
  if gdSelected in State then
    with GridArquivos.Canvas do
    begin
      Brush.Color := clHighlight;
      FillRect(Rect);
      //Font.Style := [fsbold];
    end;
  GridArquivos.DefaultDrawDataCell(Rect, Column.Field, State);
end;

procedure TfrmGerenFiles.spArquivoClick(Sender: TObject);
begin
  if OpenDialog1.Execute then
    edArquivo.Text := OpenDialog1.FileName;
end;

end.
