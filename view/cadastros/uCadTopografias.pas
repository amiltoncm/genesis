unit uCadTopografias;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpCadastro, Data.DB, 
  Vcl.ImgList, Vcl.ActnList, Vcl.ComCtrls, Vcl.ToolWin, Vcl.StdCtrls, Vcl.Buttons, 
  Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TfrmCadTopografias = class(TfrmTmpCadastro)
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
  frmCadTopografias: TfrmCadTopografias;

implementation

{$R *.dfm}

uses dataCadastros, uDaoTopografias, uFuncoesDB, uProcTopografias;

procedure TfrmCadTopografias.actGravarExecute(Sender: TObject);
begin
  if dsCadastro.DataSet.State in [dsInsert] then
    dsCadastro.DataSet.FieldByName('top_id').Value := GetCodigo('top_id', 'topografias');
  inherited;
end;

procedure TfrmCadTopografias.actAlterarExecute(Sender: TObject);
begin
  inherited;
  dbDescricao.SetFocus;
end;

procedure TfrmCadTopografias.actAtualizarExecute(Sender: TObject);
begin
  dsCadastro.DataSet.Refresh;
end;

procedure TfrmCadTopografias.actLimparExecute(Sender: TObject);
begin
  ListarTopografias('top_descricao', '0');
  sbPrincipal.Panels[3].Text := 'Inativo';
  inherited;
end;

procedure TfrmCadTopografias.actNovoExecute(Sender: TObject);
begin
  inherited;
  dbDescricao.SetFocus;
end;

procedure TfrmCadTopografias.FormActivate(Sender: TObject);
begin
  inherited;
  ListarTopografias('top_descricao', '0');
  dbDescricao.SetFocus;
end;

procedure TfrmCadTopografias.actProcurarExecute(Sender: TObject);
begin
  ListarTopografias('top_descricao', '0');
  frmProcTopografias.ShowModal;
end;

end.
