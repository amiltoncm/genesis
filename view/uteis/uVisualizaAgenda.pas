unit uVisualizaAgenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpFormMDI, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.DBCtrls, Vcl.Mask, Vcl.ComCtrls, Wwdbigrd, Vcl.Grids, Wwdbgrid,
  Vcl.ExtCtrls, Data.DB, Vcl.DBGrids;

type
  TfrmVisualizaAgenda = class(TfrmTmpFormMDI)
    Calendario: TMonthCalendar;
    btAgendar: TBitBtn;
    Label1: TLabel;
    dbObs: TDBEdit;
    DBMemo1: TDBMemo;
    dsAgendaDia: TDataSource;
    Panel1: TPanel;
    Panel2: TPanel;
    GridAgenda: TDBGrid;
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure CalendarioClick(Sender: TObject);
    procedure btAgendarClick(Sender: TObject);
    procedure GridAgendaDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVisualizaAgenda: TfrmVisualizaAgenda;

implementation

{$R *.dfm}

uses dataGestao, uVarGlobal, uFuncoesDatas, uDaoAgendaDia, uFuncoesSistema,
  uAgendamento;

procedure TfrmVisualizaAgenda.btAgendarClick(Sender: TObject);
begin
  frmAgendamento.ShowModal;
end;

procedure TfrmVisualizaAgenda.CalendarioClick(Sender: TObject);
Var
vData: String;
begin
  vData := FormatDateTime(vgMaskData, (Calendario.Date));
  Panel2.Caption :=  DataExtenso('Data selecionada ', Calendario.Date);
  FiltrarAgendaDiaUsuLog('agd_data', '=', vData, '0', '0');
end;

procedure TfrmVisualizaAgenda.GridAgendaDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if odd(dsAgendaDia.DataSet.RecNo) then
    GridAgenda.Canvas.Brush.Color := clSkyBlue
  else
    GridAgenda.Canvas.Brush.Color:= clInfoBk;
  TDBGrid(Sender).Canvas.font.Color:= clBlack;
  if gdSelected in State then
    with (Sender as TDBGrid).Canvas do
    begin
      Brush.Color := clYellow;
      FillRect(Rect);
      Font.Style := [fsbold];
    end;
  TDBGrid(Sender).DefaultDrawDataCell(Rect, TDbGrid(Sender).columns[datacol].field, State);
end;

procedure TfrmVisualizaAgenda.FormActivate(Sender: TObject);
Var
vData: String;
begin
  inherited;
  frmAgendamento.Caption := ('Agendamento - ' + vgNomeUsuarioLog);
  frmVisualizaAgenda.Caption := 'Agenda Diária - ' + vgNomeUsuarioLog;
  Panel1.Caption :=  DataExtenso('Data atual ', now);
  Panel2.Caption :=  DataExtenso('Data selecionada ', now);
  dsAgendaDia.DataSet.Active := True;
  Calendario.Date := Date;
  vData := DateToStr(Calendario.Date);
  FiltrarAgendaDiaUsuLog('agd_data', '=', vData, '0', '0');
end;

procedure TfrmVisualizaAgenda.FormDestroy(Sender: TObject);
begin
  inherited;
  if frmVisualizaAgenda <> nil then
    frmVisualizaAgenda := nil;
end;

end.
