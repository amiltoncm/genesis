unit uCadLaudosModMacro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpCadastro, Data.DB, 
  Vcl.ImgList, Vcl.ActnList, Vcl.ComCtrls, Vcl.ToolWin, Vcl.StdCtrls, Vcl.Buttons, 
  Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, wwriched, wwrichedspellxp;

type
  TfrmCadLaudosModMacro = class(TfrmTmpCadastro)
    lbCodigo: TLabel;
    dbCodigo: TDBEdit;
    lbDescricao: TLabel;
    dbDescricao: TDBEdit;
    dbModelo: TwwDBRichEditMSWord;
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
  frmCadLaudosModMacro: TfrmCadLaudosModMacro;

implementation

{$R *.dfm}

uses dataCadastros, uDaoLaudosModMacro, uFuncoesDB, uProcLaudosModMacro;

procedure TfrmCadLaudosModMacro.actGravarExecute(Sender: TObject);
begin
  if dsCadastro.DataSet.State in [dsInsert] then
    dsCadastro.DataSet.FieldByName('lmm_id').Value := GetCodigo('lmm_id', 'laudosmodmacro');
  inherited;
end;

procedure TfrmCadLaudosModMacro.actAlterarExecute(Sender: TObject);
begin
  inherited;
  dbDescricao.SetFocus;
end;

procedure TfrmCadLaudosModMacro.actAtualizarExecute(Sender: TObject);
begin
  dsCadastro.DataSet.Refresh;
end;

procedure TfrmCadLaudosModMacro.actLimparExecute(Sender: TObject);
begin
  ListarLaudosModMacro('lmm_descricao', '0');
  sbPrincipal.Panels[3].Text := 'Inativo';
  inherited;
end;

procedure TfrmCadLaudosModMacro.actNovoExecute(Sender: TObject);
begin
  inherited;
  dbDescricao.SetFocus;
end;

procedure TfrmCadLaudosModMacro.FormActivate(Sender: TObject);
begin
  inherited;
  ListarLaudosModMacro('lmm_descricao', '0');
  dbDescricao.SetFocus;
end;

procedure TfrmCadLaudosModMacro.actProcurarExecute(Sender: TObject);
begin
  ListarLaudosModMacro('lmm_descricao', '0');
  frmProcLaudosModMacro.ShowModal;
end;

end.
