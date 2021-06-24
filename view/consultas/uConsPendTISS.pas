unit uConsPendTISS;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpFormMDI, Vcl.StdCtrls,
  Vcl.Buttons, Data.DB, Vcl.Grids, Wwdbigrd, Wwdbgrid;

type
  TfrmConsPendTISS = class(TfrmTmpFormMDI)
    DBGrid1: TwwDBGrid;
    dsConsulta: TDataSource;
    dbConvenios: TBitBtn;
    btLimpar: TBitBtn;
    btAlterar: TBitBtn;
    btImprimir: TBitBtn;
    btFiltrar: TBitBtn;
    procedure FormDestroy(Sender: TObject);
    procedure btAlterarClick(Sender: TObject);
    procedure btFiltrarClick(Sender: TObject);
    procedure btImprimirClick(Sender: TObject);
    procedure btLimparClick(Sender: TObject);
    procedure dbConveniosClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsPendTISS: TfrmConsPendTISS;

implementation

{$R *.dfm}

uses dataConsultas, uDaoConsultas, uCadPacientes, uFuncoesSistema,
  uFuncoesDBEsp, uExamesLog, uRelPendTISS, uCadMedicos, uCadConvenios;

procedure TfrmConsPendTISS.btAlterarClick(Sender: TObject);
begin
  frmCadPacientes.ShowModal;
end;

procedure TfrmConsPendTISS.btFiltrarClick(Sender: TObject);
begin
    FiltrarLogs(dmConsultas.qyConsPendTISSexa_id.Text);
  if dmConsultas.qyConsPendTISSetp_id.Value = 2 then
    FiltrarLogs(dmConsultas.qyConsPendTISSexa_id.Text);
  frmExamesLog.ShowModal;
end;

procedure TfrmConsPendTISS.btImprimirClick(Sender: TObject);
begin
  frmRelPendTISS.ShowModal;
end;

procedure TfrmConsPendTISS.btLimparClick(Sender: TObject);
begin
  frmCadMedicos.ShowModal;
end;

procedure TfrmConsPendTISS.dbConveniosClick(Sender: TObject);
begin
  frmCadConvenios.ShowModal;
end;

procedure TfrmConsPendTISS.FormActivate(Sender: TObject);
begin
  inherited;
  dsConsulta.DataSet.Active := True;
  PendenciasTISS;
end;

procedure TfrmConsPendTISS.FormDestroy(Sender: TObject);
begin
  inherited;
  if frmConsPendTISS <> nil then
    frmConsPendTISS := nil;
end;

end.
