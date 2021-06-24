unit uCadCidades;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpCadastro, Data.DB, 
  Vcl.ImgList, Vcl.ActnList, Vcl.ComCtrls, Vcl.ToolWin, Vcl.StdCtrls, Vcl.Buttons, 
  Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, wwdblook;

type
  TfrmCadCidades = class(TfrmTmpCadastro)
    lbCodigo: TLabel;
    dbCodigo: TDBEdit;
    lbDescricao: TLabel;
    dbDescricao: TDBEdit;
    Label3: TLabel;
    cbSigla: TwwDBLookupCombo;
    dbEstado: TDBEdit;
    Label4: TLabel;
    dbCepPadrao: TDBEdit;
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
  frmCadCidades: TfrmCadCidades;

implementation

{$R *.dfm}

uses dataCadastros, uDaoCidades, uProcCidades;

procedure TfrmCadCidades.actAlterarExecute(Sender: TObject);
begin
  inherited;
  dbCodigo.SetFocus;
end;

procedure TfrmCadCidades.actAtualizarExecute(Sender: TObject);
begin
  dsCadastro.DataSet.Refresh;
end;

procedure TfrmCadCidades.actLimparExecute(Sender: TObject);
begin
  ListarCidades('cid_cidade', '0');
  sbPrincipal.Panels[3].Text := 'Inativo';
  inherited;
end;

procedure TfrmCadCidades.actNovoExecute(Sender: TObject);
begin
  inherited;
  dbCodigo.SetFocus;
end;

procedure TfrmCadCidades.FormActivate(Sender: TObject);
begin
  inherited;
  ListarCidades('cid_cidade', '0');
  dbCodigo.SetFocus;
end;

procedure TfrmCadCidades.actProcurarExecute(Sender: TObject);
begin
  ListarCidades('cid_cidade', '0');
  frmProcCidades.ShowModal;
end;

end.
