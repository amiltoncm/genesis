unit uCadFuncoes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpCadastro, Data.DB, 
  Vcl.ImgList, Vcl.ActnList, Vcl.ComCtrls, Vcl.ToolWin, Vcl.StdCtrls, Vcl.Buttons, 
  Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TfrmCadFuncoes = class(TfrmTmpCadastro)
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
  frmCadFuncoes: TfrmCadFuncoes;

implementation

{$R *.dfm}

uses dataCadastros, uDaoFuncoes, uFuncoesDB, uProcFuncoes;

procedure TfrmCadFuncoes.actGravarExecute(Sender: TObject);
begin
  if dsCadastro.DataSet.State in [dsInsert] then
    dsCadastro.DataSet.FieldByName('fnc_id').Value := GetCodigo('fnc_id', 'funcoes');
  inherited;
end;

procedure TfrmCadFuncoes.actAlterarExecute(Sender: TObject);
begin
  inherited;
  dbDescricao.SetFocus;
end;

procedure TfrmCadFuncoes.actAtualizarExecute(Sender: TObject);
begin
  dsCadastro.DataSet.Refresh;
end;

procedure TfrmCadFuncoes.actLimparExecute(Sender: TObject);
begin
  ListarFuncoes('fnc_descricao', '0');
  sbPrincipal.Panels[3].Text := 'Inativo';
  inherited;
end;

procedure TfrmCadFuncoes.actNovoExecute(Sender: TObject);
begin
  inherited;
  dbDescricao.SetFocus;
end;

procedure TfrmCadFuncoes.FormActivate(Sender: TObject);
begin
  inherited;
  ListarFuncoes('fnc_descricao', '0');
  dbDescricao.SetFocus;
end;

procedure TfrmCadFuncoes.actProcurarExecute(Sender: TObject);
begin
  ListarFuncoes('fnc_descricao', '0');
  frmProcFuncoes.ShowModal;
end;

end.
