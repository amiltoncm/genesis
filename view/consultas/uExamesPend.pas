unit uExamesPend;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpFormMDI, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Menus, Data.DB, Vcl.Grids, Wwdbigrd, Wwdbgrid, Vcl.ComCtrls;

type
  TfrmExamesPend = class(TfrmTmpFormMDI)
    pgExames: TPageControl;
    tsCitologia: TTabSheet;
    DBGrid1: TwwDBGrid;
    tsHistologia: TTabSheet;
    wwDBGrid1: TwwDBGrid;
    tsImuno: TTabSheet;
    wwDBGrid2: TwwDBGrid;
    popLogs: TPopupMenu;
    VisualizaLOGS1: TMenuItem;
    dsConsCito: TDataSource;
    dsConsHisto: TDataSource;
    dsConsImuno: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    dtpDataFil: TDateTimePicker;
    btFiltrar: TBitBtn;
    procedure FormActivate(Sender: TObject);
    procedure pgExamesChange(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure DBGrid1CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure wwDBGrid1CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure VisualizaLOGS1Click(Sender: TObject);
    procedure btFiltrarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmExamesPend: TfrmExamesPend;

implementation

{$R *.dfm}

uses dataConsultas, uExamesLog, uFuncoesDBEsp, uDaoExamesPend, uVarGlobal;

procedure TfrmExamesPend.btFiltrarClick(Sender: TObject);
Var
vData: String;
begin
  vData := FormatDateTime(vgMaskData, dtpDataFil.Date);
  ConsCitoEtapas(vData);
  ConsHistoEtapas(vData);
  ConsImunoEtapas(vData);
end;

procedure TfrmExamesPend.DBGrid1CalcCellColors(Sender: TObject; Field: TField;
  State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
  if (dsConsCito.DataSet.FieldByName('exa_data').Value > (now - 7)) then
    aFont.Color := clBlack
  else
    AFont.Color := clRed;
end;

procedure TfrmExamesPend.FormActivate(Sender: TObject);
Var
vData: String;
begin
  inherited;
  vData := FormatDateTime(vgMaskData, (now));
  ConsCitoEtapas(vData);
  ConsHistoEtapas(vData);
  ConsImunoEtapas(vData);
  pgExames.ActivePage := tsCitologia;
  tsCitologia.Highlighted := true;
  btFechar.SetFocus;
end;

procedure TfrmExamesPend.FormDestroy(Sender: TObject);
begin
  inherited;
  if frmExamesPend <> nil then
    frmExamesPend := nil;
end;

procedure TfrmExamesPend.pgExamesChange(Sender: TObject);
begin
  if pgExames.ActivePage = tsCitologia then
  Begin
    tsCitologia.Highlighted := true;
    tsHistologia.Highlighted := false;
    tsImuno.Highlighted := false;
  end;
  if pgExames.ActivePage = tsHistologia then
  Begin
    tsCitologia.Highlighted := false;
    tsHistologia.Highlighted := true;
    tsImuno.Highlighted := false;
  end;
  if pgExames.ActivePage = tsImuno then
  Begin
    tsCitologia.Highlighted := false;
    tsHistologia.Highlighted := false;
    tsImuno.Highlighted := true;
  end;
end;

procedure TfrmExamesPend.VisualizaLOGS1Click(Sender: TObject);
begin
  if pgExames.ActivePage = tsCitologia then
    FiltrarLogs(dmConsultas.qyConsCitoEtapasexa_id.Text);
  if pgExames.ActivePage = tsHistologia then
    FiltrarLogs(dmConsultas.qyConsHistoEtapasexa_id.Text);
  if pgExames.ActivePage = tsImuno then
    FiltrarLogs(dmConsultas.qyConsImunoEtapasexa_id.Text);
  frmExamesLog.ShowModal;
end;

procedure TfrmExamesPend.wwDBGrid1CalcCellColors(Sender: TObject; Field: TField;
  State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
  if (dsConsHisto.DataSet.FieldByName('exa_data').Value > (now - 7)) then
    aFont.Color := clBlack
  else
    AFont.Color := clRed;
end;

end.
