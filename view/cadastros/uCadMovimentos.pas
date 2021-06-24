unit uCadMovimentos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpCadastro, Data.DB, 
  Vcl.ImgList, Vcl.ActnList, Vcl.ComCtrls, Vcl.ToolWin, Vcl.StdCtrls, Vcl.Buttons, 
  Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, wwdbedit, Wwdotdot, Wwdbcomb;

type
  TfrmCadMovimentos = class(TfrmTmpCadastro)
    lbCodigo: TLabel;
    dbCodigo: TDBEdit;
    lbDescricao: TLabel;
    dbDescricao: TDBEdit;
    Label3: TLabel;
    wwDBComboBox1: TwwDBComboBox;
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
  frmCadMovimentos: TfrmCadMovimentos;

implementation

{$R *.dfm}

uses dataCadastros, uDaoMovimentos, uFuncoesDB, uProcMovimentos;

procedure TfrmCadMovimentos.actGravarExecute(Sender: TObject);
begin
  if dsCadastro.DataSet.State in [dsInsert] then
    dsCadastro.DataSet.FieldByName('mov_codigo').Value := GetCodigo('mov_codigo', 'movimentos');
  inherited;
end;

procedure TfrmCadMovimentos.actAlterarExecute(Sender: TObject);
begin
  inherited;
  dbDescricao.SetFocus;
end;

procedure TfrmCadMovimentos.actAtualizarExecute(Sender: TObject);
begin
  dsCadastro.DataSet.Refresh;
end;

procedure TfrmCadMovimentos.actLimparExecute(Sender: TObject);
begin
  ListarMovimentos('mov_descricao', '0');
  sbPrincipal.Panels[3].Text := 'Inativo';
  inherited;
end;

procedure TfrmCadMovimentos.actNovoExecute(Sender: TObject);
begin
  inherited;
  dbDescricao.SetFocus;
end;

procedure TfrmCadMovimentos.FormActivate(Sender: TObject);
begin
  inherited;
  ListarMovimentos('mov_descricao', '0');
  dbDescricao.SetFocus;
end;

procedure TfrmCadMovimentos.actProcurarExecute(Sender: TObject);
begin
  ListarMovimentos('mov_descricao', '0');
  frmProcMovimentos.ShowModal;
end;

end.
