unit uConsTopografiasEx;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpFormNormal, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.Grids, Vcl.DBGrids, Data.DB;

type
  TfrmConsTopografiasEx = class(TfrmTmpFormNormal)
    dsConsulta: TDataSource;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    dtpInicial: TDateTimePicker;
    dtpFinal: TDateTimePicker;
    Label2: TLabel;
    btFiltrar: TBitBtn;
    btLimpar: TBitBtn;
    btImprimir: TBitBtn;
    procedure Limpar;
    procedure Filtrar;
    procedure FormActivate(Sender: TObject);
    procedure btLimparClick(Sender: TObject);
    procedure btFiltrarClick(Sender: TObject);
    procedure btImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsTopografiasEx: TfrmConsTopografiasEx;

implementation

{$R *.dfm}

uses dataConsultas, uDaoConsultas, uRelTopografiasEx;

procedure TfrmConsTopografiasEx.Limpar;
begin
  dtpInicial.Date := now - 30;
  dtpFinal.Date := now;
  FiltrarConsTopografias(FormatDateTime ('dd/MM/yyyy',(dtpInicial.Date)), FormatDateTime ('dd/MM/yyyy',(dtpFinal.Date)));
  dtpInicial.SetFocus;
end;

procedure TfrmConsTopografiasEx.btFiltrarClick(Sender: TObject);
begin
  Filtrar;
end;

procedure TfrmConsTopografiasEx.btImprimirClick(Sender: TObject);
begin
  frmRelTopografiasEx.ShowModal;
end;

procedure TfrmConsTopografiasEx.btLimparClick(Sender: TObject);
begin
  Limpar;
end;

procedure TfrmConsTopografiasEx.Filtrar;
begin
  FiltrarConsTopografias(FormatDateTime ('dd/MM/yyyy',(dtpInicial.Date)), FormatDateTime ('dd/MM/yyyy',(dtpFinal.Date)));
end;

procedure TfrmConsTopografiasEx.FormActivate(Sender: TObject);
begin
  inherited;
  Limpar;
end;

end.
