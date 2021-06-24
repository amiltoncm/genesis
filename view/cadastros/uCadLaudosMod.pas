unit uCadLaudosMod;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpCadastro, Data.DB, 
  Vcl.ImgList, Vcl.ActnList, Vcl.ComCtrls, Vcl.ToolWin, Vcl.StdCtrls, Vcl.Buttons, 
  Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, wwriched, wwrichedspellxp;

type
  TfrmCadLaudosMod = class(TfrmTmpCadastro)
    lbCodigo: TLabel;
    dbCodigo: TDBEdit;
    lbDescricao: TLabel;
    dbDescricao: TDBEdit;
    dbModelo: TwwDBRichEditMSWord;
    Label1: TLabel;
    Label2: TLabel;
    wwDBRichEditMSWord1: TwwDBRichEditMSWord;
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
  frmCadLaudosMod: TfrmCadLaudosMod;

implementation

{$R *.dfm}

uses dataCadastros, uDaoLaudosMod, uFuncoesDB, uProcLaudosMod;

procedure TfrmCadLaudosMod.actGravarExecute(Sender: TObject);
begin
  if dsCadastro.DataSet.State in [dsInsert] then
    dsCadastro.DataSet.FieldByName('mod_id').Value := GetCodigo('mod_id', 'laudosmod');
  inherited;
end;

procedure TfrmCadLaudosMod.actAlterarExecute(Sender: TObject);
begin
  inherited;
  dbDescricao.SetFocus;
end;

procedure TfrmCadLaudosMod.actAtualizarExecute(Sender: TObject);
begin
  dsCadastro.DataSet.Refresh;
end;

procedure TfrmCadLaudosMod.actLimparExecute(Sender: TObject);
begin
  ListarLaudosMod('mod_descricao', '0');
  sbPrincipal.Panels[3].Text := 'Inativo';
  inherited;
end;

procedure TfrmCadLaudosMod.actNovoExecute(Sender: TObject);
begin
  inherited;
  dbDescricao.SetFocus;
end;

procedure TfrmCadLaudosMod.FormActivate(Sender: TObject);
begin
  inherited;
  ListarLaudosMod('mod_descricao', '0');
  dbDescricao.SetFocus;
end;

procedure TfrmCadLaudosMod.actProcurarExecute(Sender: TObject);
begin
  ListarLaudosMod('mod_descricao', '0');
  frmProcLaudosMod.ShowModal;
end;

end.
