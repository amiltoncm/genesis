unit uCadcitofrases;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpCadastro, Data.DB,
  Vcl.ImgList, Vcl.ActnList, Vcl.ComCtrls, Vcl.ToolWin, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TfrmCadcitofrases = class(TfrmTmpCadastro)
    Label1: TLabel;
    dbID: TDBEdit;
    Label2: TLabel;
    dbFrase: TDBEdit;
    procedure FormDestroy(Sender: TObject);
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
  frmCadcitofrases: TfrmCadcitofrases;

implementation

{$R *.dfm}

uses dataCadastros, uDaocitofrases, uFuncoesDB, uProcCitofrases;

procedure TfrmCadcitofrases.FormDestroy(Sender: TObject);
begin
  inherited;
  if frmCadcitofrases <> nil then
    frmCadcitofrases := nil;
end;

procedure TfrmCadcitofrases.actGravarExecute(Sender: TObject);
begin
  if dsCadastro.DataSet.State in [dsInsert] then
    dsCadastro.DataSet.FieldByName('ctf_id').Value := GetCodigo('ctf_id', 'citofrases');
  inherited;
end;

procedure TfrmCadcitofrases.actAlterarExecute(Sender: TObject);
begin
  inherited;
  dbFrase.SetFocus;
end;

procedure TfrmCadcitofrases.actAtualizarExecute(Sender: TObject);
begin
  dsCadastro.DataSet.Refresh;
end;

procedure TfrmCadcitofrases.actLimparExecute(Sender: TObject);
begin
  Listarcitofrases('ctf_id');
  sbPrincipal.Panels[3].Text := 'Inativo';
  inherited;
end;

procedure TfrmCadcitofrases.actNovoExecute(Sender: TObject);
begin
  inherited;
  dbFrase.SetFocus;
end;

procedure TfrmCadcitofrases.FormActivate(Sender: TObject);
begin
  inherited;
  Listarcitofrases('ctf_id');
  dbFrase.SetFocus;
end;

procedure TfrmCadcitofrases.actProcurarExecute(Sender: TObject);
begin
  Listarcitofrases('ctf_id');
  frmProccitofrases.ShowModal;
end;

end.
