unit uCadExamesLocais;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpCadastro, Data.DB, 
  Vcl.ImgList, Vcl.ActnList, Vcl.ComCtrls, Vcl.ToolWin, Vcl.StdCtrls, Vcl.Buttons, 
  Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TfrmCadExamesLocais = class(TfrmTmpCadastro)
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
  frmCadExamesLocais: TfrmCadExamesLocais;

implementation

{$R *.dfm}

uses dataCadastros, uDaoExamesLocais, uFuncoesDB, uProcExamesLocais;

procedure TfrmCadExamesLocais.actGravarExecute(Sender: TObject);
begin
  if dsCadastro.DataSet.State in [dsInsert] then
    dsCadastro.DataSet.FieldByName('exl_id').Value := GetCodigo('exl_id', 'exameslocais');
  inherited;
end;

procedure TfrmCadExamesLocais.actAlterarExecute(Sender: TObject);
begin
  inherited;
  dbDescricao.SetFocus;
end;

procedure TfrmCadExamesLocais.actAtualizarExecute(Sender: TObject);
begin
  dsCadastro.DataSet.Refresh;
end;

procedure TfrmCadExamesLocais.actLimparExecute(Sender: TObject);
begin
  ListarExamesLocais('exl_descricao', '0');
  sbPrincipal.Panels[3].Text := 'Inativo';
  inherited;
end;

procedure TfrmCadExamesLocais.actNovoExecute(Sender: TObject);
begin
  inherited;
  dbDescricao.SetFocus;
end;

procedure TfrmCadExamesLocais.FormActivate(Sender: TObject);
begin
  inherited;
  ListarExamesLocais('exl_descricao', '0');
  dbDescricao.SetFocus;
end;

procedure TfrmCadExamesLocais.actProcurarExecute(Sender: TObject);
begin
  ListarExamesLocais('exl_descricao', '0');
  frmProcExamesLocais.ShowModal;
end;

end.
