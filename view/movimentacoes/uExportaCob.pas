unit uExportaCob;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpFormNormal, Vcl.StdCtrls,
  Vcl.Buttons, Data.DB, Vcl.Grids, Wwdbigrd, Wwdbgrid, ppParameter, ppCtrls,
  ppBands, ppPrnabl, ppClass, ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB,
  ppDBPipe, ComObj, ppDesignLayer;

type
  TfrmExportaCob = class(TfrmTmpFormNormal)
    dsExportacao: TDataSource;
    btVisualizar: TBitBtn;
    btExportar: TBitBtn;
    GridExportacao: TwwDBGrid;
    Label1: TLabel;
    dbExportacao: TppDBPipeline;
    Relatorio: TppReport;
    ppParameterList2: TppParameterList;
    ppDesignLayers2: TppDesignLayers;
    ppDesignLayer2: TppDesignLayer;
    ppDetailBand2: TppDetailBand;
    ppTitleBand2: TppTitleBand;
    ppSummaryBand2: TppSummaryBand;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppDBText5: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppLabel25: TppLabel;
    ppDBCalc2: TppDBCalc;
    procedure FormActivate(Sender: TObject);
    procedure btExportarClick(Sender: TObject);
    procedure GridExportacaoTitleButtonClick(Sender: TObject;
      AFieldName: string);
    procedure btVisualizarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmExportaCob: TfrmExportaCob;

implementation

{$R *.dfm}

uses dataConsultas;

procedure TfrmExportaCob.btExportarClick(Sender: TObject);
Var
vLinha, vColuna : integer;
vPlanilha : variant;
vValorCampo : string;
begin
  if MessageDlg('Deseja exportar em planilha do excel?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    vPlanilha:= CreateoleObject('Excel.Application');
    vPlanilha.WorkBooks.add(1);
    vPlanilha.caption := 'Contas à receber';
    vPlanilha.visible := true;
    dmConsultas.qyExportaCob.ApplyUpdates;
    dmConsultas.qyExportaCob.First;
    for vLinha := 0 to dmConsultas.qyExportaCob.RecordCount - 1 do
    begin
      for vColuna := 1 to dmConsultas.qyExportaCob.FieldCount do
      begin
        vValorCampo := dmConsultas.qyExportaCob.Fields[vColuna - 1].AsString;
        vPlanilha.cells[vLinha + 2, vColuna] := vValorCampo;
      end;
      dmConsultas.qyExportaCob.Next;
    end;
    for vColuna := 1 to dmConsultas.qyExportaCob.FieldCount do
    begin
      vValorCampo := dmConsultas.qyExportaCob.Fields[vColuna - 1].DisplayLabel;
      vPlanilha.cells[1, vColuna] := vValorCampo;
    end;
    vPlanilha.columns.Autofit;
    MessageDlg('Exportação realizada com sucesso!', mtInformation, [mbok], 0);
  end
  else
  begin
    Relatorio.DeviceType := 'HTMLFile';
    Relatorio.ShowPrintDialog := True;
    Relatorio.Print;
    MessageDlg('Exportação realizada com sucesso!', mtInformation, [mbok], 0);
  end;
end;

procedure TfrmExportaCob.btVisualizarClick(Sender: TObject);
begin
  Relatorio.DeviceType := 'Screen';
  Relatorio.ShowPrintDialog := True;
  Relatorio.Print;
end;

procedure TfrmExportaCob.FormActivate(Sender: TObject);
begin
  inherited;
  dsExportacao.DataSet.Active := true;
end;

procedure TfrmExportaCob.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dsExportacao.DataSet.Active := false;
  inherited;
end;

procedure TfrmExportaCob.GridExportacaoTitleButtonClick(Sender: TObject;
  AFieldName: string);
begin
  dmConsultas.qyExportaCob.SortRecords(AFieldName, '', '');
end;

end.
