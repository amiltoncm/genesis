unit uCadAgenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpCadastro, Data.DB, 
  Vcl.ImgList, Vcl.ActnList, Vcl.ComCtrls, Vcl.ToolWin, Vcl.StdCtrls, Vcl.Buttons, 
  Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TfrmCadAgenda = class(TfrmTmpCadastro)
    lbCodigo: TLabel;
    dbCodigo: TDBEdit;
    lbDescricao: TLabel;
    dbDescricao: TDBEdit;
    Label1: TLabel;
    dbTelefone: TDBEdit;
    Label2: TLabel;
    dbFax: TDBEdit;
    Label3: TLabel;
    dbCelular: TDBEdit;
    Label4: TLabel;
    dbEmail: TDBEdit;
    Label5: TLabel;
    dbHomePage: TDBEdit;
    Label6: TLabel;
    dbMSN: TDBEdit;
    Label7: TLabel;
    dbSkype: TDBEdit;
    procedure actGravarExecute(Sender: TObject);
    procedure actNovoExecute(Sender: TObject);
    procedure actAlterarExecute(Sender: TObject);
    procedure actAtualizarExecute(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure actLimparExecute(Sender: TObject);
    procedure actProcurarExecute(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadAgenda: TfrmCadAgenda;

implementation

{$R *.dfm}

uses dataCadastros, uDaoAgenda, uFuncoesDB, uProcAgenda;

procedure TfrmCadAgenda.actGravarExecute(Sender: TObject);
begin
  if dsCadastro.DataSet.State in [dsInsert] then
    dsCadastro.DataSet.FieldByName('age_codigo').Value := GetCodigo('age_codigo', 'agenda');
  inherited;
end;

procedure TfrmCadAgenda.actAlterarExecute(Sender: TObject);
begin
  inherited;
  dbDescricao.SetFocus;
end;

procedure TfrmCadAgenda.actAtualizarExecute(Sender: TObject);
begin
  dsCadastro.DataSet.Refresh;
end;

procedure TfrmCadAgenda.actLimparExecute(Sender: TObject);
begin
  ListarAgenda('age_nome', '0');
  sbPrincipal.Panels[3].Text := 'Inativo';
  inherited;
end;

procedure TfrmCadAgenda.actNovoExecute(Sender: TObject);
begin
  inherited;
  dbDescricao.SetFocus;
end;

procedure TfrmCadAgenda.FormActivate(Sender: TObject);
begin
  inherited;
  ListarAgenda('age_nome', '0');
  dbDescricao.SetFocus;
end;

procedure TfrmCadAgenda.actProcurarExecute(Sender: TObject);
begin
  ListarAgenda('age_nome', '0');
  frmProcAgenda.ShowModal;
end;

end.
