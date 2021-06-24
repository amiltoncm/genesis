unit uCadUf;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpCadastro, Data.DB, 
  Vcl.ImgList, Vcl.ActnList, Vcl.ComCtrls, Vcl.ToolWin, Vcl.StdCtrls, Vcl.Buttons, 
  Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TfrmCadUf = class(TfrmTmpCadastro)
    lbCodigo: TLabel;
    dbCodigo: TDBEdit;
    lbDescricao: TLabel;
    dbDescricao: TDBEdit;
    DBEdit1: TDBEdit;
    Label1: TLabel;
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
  frmCadUf: TfrmCadUf;

implementation

{$R *.dfm}

uses dataCadastros, uDaoUf, uProcUf;

procedure TfrmCadUf.actAlterarExecute(Sender: TObject);
begin
  inherited;
  dbCodigo.SetFocus;
end;

procedure TfrmCadUf.actAtualizarExecute(Sender: TObject);
begin
  dsCadastro.DataSet.Refresh;
end;

procedure TfrmCadUf.actLimparExecute(Sender: TObject);
begin
  ListarUf('uf_sigla', '0');
  sbPrincipal.Panels[3].Text := 'Inativo';
  inherited;
end;

procedure TfrmCadUf.actNovoExecute(Sender: TObject);
begin
  inherited;
  dbCodigo.SetFocus;
end;

procedure TfrmCadUf.FormActivate(Sender: TObject);
begin
  inherited;
  ListarUf('uf_sigla', '0');
  dbCodigo.SetFocus;
end;

procedure TfrmCadUf.actProcurarExecute(Sender: TObject);
begin
  ListarUf('uf_sigla', '0');
  frmProcUf.ShowModal;
end;

end.
