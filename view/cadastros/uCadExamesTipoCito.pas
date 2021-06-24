unit uCadExamesTipoCito;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpCadastro, Data.DB, 
  Vcl.ImgList, Vcl.ActnList, Vcl.ComCtrls, Vcl.ToolWin, Vcl.StdCtrls, Vcl.Buttons, 
  Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TfrmCadExamesTipoCito = class(TfrmTmpCadastro)
    lbCodigo: TLabel;
    dbCodigo: TDBEdit;
    lbDescricao: TLabel;
    dbDescricao: TDBEdit;
    dbEtoDescricao: TDBEdit;
    Label1: TLabel;
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
  frmCadExamesTipoCito: TfrmCadExamesTipoCito;

implementation

{$R *.dfm}

uses dataCadastros, uDaoExamesTipoCito, uFuncoesDB, uProcExamesTipoCito;

procedure TfrmCadExamesTipoCito.actGravarExecute(Sender: TObject);
begin
  if dsCadastro.DataSet.State in [dsInsert] then
    dsCadastro.DataSet.FieldByName('eto_id').Value := GetCodigo('eto_id', 'examestipocito');
  inherited;
end;

procedure TfrmCadExamesTipoCito.actAlterarExecute(Sender: TObject);
begin
  inherited;
  dbDescricao.SetFocus;
end;

procedure TfrmCadExamesTipoCito.actAtualizarExecute(Sender: TObject);
begin
  dsCadastro.DataSet.Refresh;
end;

procedure TfrmCadExamesTipoCito.actLimparExecute(Sender: TObject);
begin
  ListarExamesTipoCito('eto_local', '0');
  sbPrincipal.Panels[3].Text := 'Inativo';
  inherited;
end;

procedure TfrmCadExamesTipoCito.actNovoExecute(Sender: TObject);
begin
  inherited;
  dbDescricao.SetFocus;
end;

procedure TfrmCadExamesTipoCito.FormActivate(Sender: TObject);
begin
  inherited;
  ListarExamesTipoCito('eto_local', '0');
  dbDescricao.SetFocus;
end;

procedure TfrmCadExamesTipoCito.actProcurarExecute(Sender: TObject);
begin
  ListarExamesTipoCito('eto_local', '0');
  frmProcExamesTipoCito.ShowModal;
end;

end.
