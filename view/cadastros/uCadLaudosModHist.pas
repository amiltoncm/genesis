unit uCadLaudosModHist;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpCadastro, Data.DB,
  Vcl.ImgList, Vcl.ActnList, Vcl.ComCtrls, Vcl.ToolWin, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, wwriched, wwrichedspellxp;

type
  TfrmCadLaudosModHist = class(TfrmTmpCadastro)
    lbCodigo: TLabel;
    dbCodigo: TDBEdit;
    lbDescricao: TLabel;
    dbDescricao: TDBEdit;
    pgModelos: TPageControl;
    tsMicro: TTabSheet;
    SpeedButton2: TSpeedButton;
    dbMicro: TwwDBRichEditMSWord;
    tsDiagnostico: TTabSheet;
    SpeedButton1: TSpeedButton;
    dbDiagnostico: TwwDBRichEditMSWord;
    cbCorretor: TCheckBox;
    procedure actGravarExecute(Sender: TObject);
    procedure actNovoExecute(Sender: TObject);
    procedure actAlterarExecute(Sender: TObject);
    procedure actAtualizarExecute(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure actLimparExecute(Sender: TObject);
    procedure actProcurarExecute(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure pgModelosChange(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadLaudosModHist: TfrmCadLaudosModHist;

implementation

{$R *.dfm}

uses dataCadastros, uDaoLaudosModHist, uFuncoesDB, uProcLaudosModHist;

procedure TfrmCadLaudosModHist.actGravarExecute(Sender: TObject);
begin
  if dsCadastro.DataSet.State in [dsInsert] then
    dsCadastro.DataSet.FieldByName('lmh_id').Value := GetCodigo('lmh_id', 'laudosmodhist');
  inherited;
end;

procedure TfrmCadLaudosModHist.actAlterarExecute(Sender: TObject);
begin
  inherited;
  dbDescricao.SetFocus;
end;

procedure TfrmCadLaudosModHist.actAtualizarExecute(Sender: TObject);
begin
  dsCadastro.DataSet.Refresh;
end;

procedure TfrmCadLaudosModHist.actLimparExecute(Sender: TObject);
begin
  ListarLaudosModHist('lmh_descricao', '0');
  sbPrincipal.Panels[3].Text := 'Inativo';
  inherited;
end;

procedure TfrmCadLaudosModHist.actNovoExecute(Sender: TObject);
begin
  inherited;
  dbDescricao.SetFocus;
end;

procedure TfrmCadLaudosModHist.FormActivate(Sender: TObject);
begin
  inherited;
  ListarLaudosModHist('lmh_descricao', '0');
  dbDescricao.SetFocus;
  pgModelos.ActivePage := tsMicro;
end;

procedure TfrmCadLaudosModHist.pgModelosChange(Sender: TObject);
begin
  if pgModelos.ActivePage = tsMicro then
  Begin
    tsMicro.Highlighted := true;
    tsDiagnostico.Highlighted := false;
  end
  else
  Begin
    tsMicro.Highlighted := false;
    tsDiagnostico.Highlighted := true;
  end;
end;

procedure TfrmCadLaudosModHist.SpeedButton1Click(Sender: TObject);
begin
  dbDiagnostico.Execute;
end;

procedure TfrmCadLaudosModHist.SpeedButton2Click(Sender: TObject);
begin
  dbMicro.Execute;
end;

procedure TfrmCadLaudosModHist.actProcurarExecute(Sender: TObject);
begin
  ListarLaudosModHist('lmh_descricao', '0');
  frmProcLaudosModHist.ShowModal;
end;

end.
