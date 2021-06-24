unit uCadLaudosPreMod;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpCadastro, Vcl.ImgList, Vcl.ActnList,
  Data.DB, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.ToolWin, Vcl.StdCtrls, Vcl.Buttons,
  wwriched, wwrichedspellxp, Vcl.Mask, Vcl.DBCtrls;

type
  TfrmCadLaudosPreMod = class(TfrmTmpCadastro)
    dbCodigo: TDBEdit;
    dbDescricao: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    dbMemModelo: TDBMemo;
    dbMemDiag: TDBMemo;
    procedure Limpar;
    procedure actNovoExecute(Sender: TObject);
    procedure actAlterarExecute(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure actProcurarExecute(Sender: TObject);
    procedure actAtualizarExecute(Sender: TObject);
    procedure actGravarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadLaudosPreMod: TfrmCadLaudosPreMod;

implementation

{$R *.dfm}

uses dataCadastros, uDaoLaudosPreMod, uFuncoesDB, uProcLaudosPreMod;

procedure TfrmCadLaudosPreMod.Limpar;
begin
  ListarLaudosPreMod('lpm_codigo');
  sbPrincipal.Panels[3].Text := 'Inativo';
  inherited;
end;

procedure TfrmCadLaudosPreMod.actAlterarExecute(Sender: TObject);
begin
  inherited;
  dbDescricao.SetFocus;
end;

procedure TfrmCadLaudosPreMod.actAtualizarExecute(Sender: TObject);
begin
  dsCadastro.DataSet.Refresh;
end;

procedure TfrmCadLaudosPreMod.actGravarExecute(Sender: TObject);
begin
  if dsCadastro.DataSet.State in [dsInsert] then
    dsCadastro.DataSet.FieldByName('lpm_codigo').Value := GetCodigo('lpm_codigo', 'laudospremod');
  inherited;
end;

procedure TfrmCadLaudosPreMod.actNovoExecute(Sender: TObject);
begin
  inherited;
  dbDescricao.SetFocus;
end;

procedure TfrmCadLaudosPreMod.actProcurarExecute(Sender: TObject);
begin
  ListarLaudosPreMod('lpm_descricao');
  frmProcLaudosPreMod.ShowModal;
end;

procedure TfrmCadLaudosPreMod.FormActivate(Sender: TObject);
begin
  inherited;
  ListarLaudosPreMod('lpm_descricao');
  dbDescricao.SetFocus;
end;

end.
