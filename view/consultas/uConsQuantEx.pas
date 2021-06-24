unit uConsQuantEx;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpFormNormal, Vcl.StdCtrls,
  Vcl.Buttons, VCLTee.TeEngine, VCLTee.Series, Vcl.ExtCtrls, VCLTee.TeeProcs,
  VCLTee.Chart, VCLTee.DBChart, wwdbdatetimepicker, Data.DB, Vcl.Grids,
  Vcl.DBGrids, JvMemoryDataset;

type
  TfrmConsQuantEx = class(TfrmTmpFormNormal)
    Label1: TLabel;
    cbDtIni: TwwDBDateTimePicker;
    cbDtfin: TwwDBDateTimePicker;
    btFiltrar: TBitBtn;
    btLimpar: TBitBtn;
    sb2d: TSpeedButton;
    sb3d: TSpeedButton;
    DBChart1: TDBChart;
    Series1: TLineSeries;
    dsConsulta: TDataSource;
    dsQuant: TDataSource;
    btImprimir: TBitBtn;
    DBGrid1: TDBGrid;
    mdExames: TJvMemoryData;
    mdExamesData: TDateField;
    mdExamesQuantidade: TIntegerField;
    procedure Limpar;
    procedure btFiltrarClick(Sender: TObject);
    procedure btLimparClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure sb2dClick(Sender: TObject);
    procedure sb3dClick(Sender: TObject);
    procedure btImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsQuantEx: TfrmConsQuantEx;

implementation

{$R *.dfm}

uses dataConsultas, uDaoConsQuantEx, uVarGlobal;

procedure TfrmConsQuantEx.Limpar;
Var
vQuant: String;
begin
  DBChart1.Title.Text.Clear;
  mdExames.EmptyTable;
  DBChart1.View3D := true;
  sb2d.Down := false;
  sb3d.Down := true;
  cbDtIni.Date := now - 30;
  cbDtfin.Date := now;
  vQuant := Filtrar(FormatDateTime(vgMaskData, cbDtIni.Date), FormatDateTime(vgMaskData, cbDtfin.Date));
  DBChart1.Title.Text.Add('Quant. total de exames no período: ' + vQuant);
  cbDtIni.SetFocus;
end;

procedure TfrmConsQuantEx.sb2dClick(Sender: TObject);
begin
  DBChart1.View3D := false;
end;

procedure TfrmConsQuantEx.sb3dClick(Sender: TObject);
begin
  DBChart1.View3D := true;
end;

procedure TfrmConsQuantEx.btFiltrarClick(Sender: TObject);
Var
vQuant: String;
begin
  DBChart1.Title.Text.Clear;
  mdExames.EmptyTable;
  vQuant := Filtrar(FormatDateTime(vgMaskData, cbDtIni.Date), FormatDateTime(vgMaskData, cbDtfin.Date));
  DBChart1.Title.Text.Add('Quant. total de exames no período: ' + vQuant);
end;

procedure TfrmConsQuantEx.btImprimirClick(Sender: TObject);
begin
  DBChart1.PrintLandscape;
  DBChart1.Print;
end;

procedure TfrmConsQuantEx.btLimparClick(Sender: TObject);
begin
  Limpar;
end;

procedure TfrmConsQuantEx.FormActivate(Sender: TObject);
begin
  inherited;
  mdExames.Active := true;
  dsQuant.DataSet.Active := true;
  Limpar;
end;

end.
