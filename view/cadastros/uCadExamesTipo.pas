unit uCadExamesTipo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpCadastro, Data.DB, 
  Vcl.ImgList, Vcl.ActnList, Vcl.ComCtrls, Vcl.ToolWin, Vcl.StdCtrls, Vcl.Buttons, 
  Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TfrmCadExamesTipo = class(TfrmTmpCadastro)
    lbCodigo: TLabel;
    dbCodigo: TDBEdit;
    lbDescricao: TLabel;
    dbDescricao: TDBEdit;
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
  frmCadExamesTipo: TfrmCadExamesTipo;

implementation

{$R *.dfm}

uses dataCadastros, uDaoExamesTipo, uFuncoesDB, uProcExamesTipo;

procedure TfrmCadExamesTipo.actGravarExecute(Sender: TObject);
begin
  if dsCadastro.DataSet.State in [dsInsert] then
    dsCadastro.DataSet.FieldByName('eio_id').Value := GetCodigo('eio_id', 'examestipo');
  inherited;
end;

procedure TfrmCadExamesTipo.actAlterarExecute(Sender: TObject);
begin
  inherited;
  dbDescricao.SetFocus;
end;

procedure TfrmCadExamesTipo.actAtualizarExecute(Sender: TObject);
begin
  dsCadastro.DataSet.Refresh;
end;

procedure TfrmCadExamesTipo.actLimparExecute(Sender: TObject);
begin
  ListarExamesTipo('eio_descricao', '0');
  sbPrincipal.Panels[3].Text := 'Inativo';
  inherited;
end;

procedure TfrmCadExamesTipo.actNovoExecute(Sender: TObject);
begin
  inherited;
  dbDescricao.SetFocus;
end;

procedure TfrmCadExamesTipo.FormActivate(Sender: TObject);
begin
  inherited;
  ListarExamesTipo('eio_descricao', '0');
  dbDescricao.SetFocus;
end;

procedure TfrmCadExamesTipo.actProcurarExecute(Sender: TObject);
begin
  ListarExamesTipo('eio_descricao', '0');
  frmProcExamesTipo.ShowModal;
end;

end.
