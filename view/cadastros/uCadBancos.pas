unit uCadBancos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpCadastro, Data.DB, 
  Vcl.ImgList, Vcl.ActnList, Vcl.ComCtrls, Vcl.ToolWin, Vcl.StdCtrls, Vcl.Buttons, 
  Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TfrmCadBancos = class(TfrmTmpCadastro)
    lbCodigo: TLabel;
    dbCodigo: TDBEdit;
    lbDescricao: TLabel;
    dbDescricao: TDBEdit;
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
  frmCadBancos: TfrmCadBancos;

implementation

{$R *.dfm}

uses dataCadastros, uDaoBancos, uProcBancos;

procedure TfrmCadBancos.actAlterarExecute(Sender: TObject);
begin
  inherited;
  dbCodigo.SetFocus;
end;

procedure TfrmCadBancos.actAtualizarExecute(Sender: TObject);
begin
  dsCadastro.DataSet.Refresh;
end;

procedure TfrmCadBancos.actLimparExecute(Sender: TObject);
begin
  ListarBancos('ban_descricao', '0');
  sbPrincipal.Panels[3].Text := 'Inativo';
  inherited;
end;

procedure TfrmCadBancos.actNovoExecute(Sender: TObject);
begin
  inherited;
  dbCodigo.SetFocus;
end;

procedure TfrmCadBancos.FormActivate(Sender: TObject);
begin
  inherited;
  ListarBancos('ban_descricao', '0');
  dbCodigo.SetFocus;
end;

procedure TfrmCadBancos.actProcurarExecute(Sender: TObject);
begin
  ListarBancos('ban_descricao', '0');
  frmProcBancos.ShowModal;
end;

end.
