unit uCadAcesso;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpCadastro, Data.DB, Vcl.ImgList,
  Vcl.ActnList, Vcl.ComCtrls, Vcl.ToolWin, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TfrmCadAcesso = class(TfrmTmpCadastro)
    Label1: TLabel;
    dbCodigo: TDBEdit;
    Label2: TLabel;
    dbDescricao: TDBEdit;
    procedure actNovoExecute(Sender: TObject);
    procedure actAlterarExecute(Sender: TObject);
    procedure actAtualizarExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure actLimparExecute(Sender: TObject);
    procedure actProcurarExecute(Sender: TObject);
    procedure actGravarExecute(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadAcesso: TfrmCadAcesso;

implementation

{$R *.dfm}

uses dataCadastros, uDaoAcesso, uFuncoesDB, uProcAcesso;

procedure TfrmCadAcesso.actAlterarExecute(Sender: TObject);
begin
  inherited;
  dbDescricao.SetFocus;
end;

procedure TfrmCadAcesso.actAtualizarExecute(Sender: TObject);
begin
  dsCadastro.DataSet.Refresh;
end;

procedure TfrmCadAcesso.actGravarExecute(Sender: TObject);
begin
  if dsCadastro.DataSet.State in [dsInsert] then
    dsCadastro.DataSet.FieldByName('ace_codigo').Value := GetCodigo('ace_codigo', 'acesso');
  inherited;
end;

procedure TfrmCadAcesso.actLimparExecute(Sender: TObject);
begin
  ListarAcesso('ace_descricao', '0');
  sbPrincipal.Panels[3].Text := 'Inativo';
  inherited;
end;

procedure TfrmCadAcesso.actNovoExecute(Sender: TObject);
begin
  inherited;
  dbDescricao.SetFocus;
end;

procedure TfrmCadAcesso.FormActivate(Sender: TObject);
begin
  inherited;
  ListarAcesso('ace_descricao', '0');
  dbDescricao.SetFocus;
end;

procedure TfrmCadAcesso.FormDestroy(Sender: TObject);
begin
  if frmCadAcesso <> nil then
    frmCadAcesso := nil;
end;

procedure TfrmCadAcesso.actProcurarExecute(Sender: TObject);
begin
  ListarAcesso('ace_descricao', '0');
  frmProcAcesso.ShowModal;
end;

end.
