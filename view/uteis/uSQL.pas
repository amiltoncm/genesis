unit uSQL;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpForm, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids, Data.DB, Vcl.ExtCtrls, wwdblook, Vcl.Menus;

type
  TfrmSQL = class(TfrmTmpForm)
    dsSQL: TDataSource;
    memo: TMemo;
    GridSQL: TDBGrid;
    OpenDialog: TOpenDialog;
    SpeedButton1: TSpeedButton;
    btExecutar: TBitBtn;
    btLimpar: TBitBtn;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Panel2: TPanel;
    Label3: TLabel;
    lbSGDB: TLabel;
    cbTabelas: TwwDBLookupCombo;
    Label4: TLabel;
    DBGrid1: TDBGrid;
    dsCampos: TDataSource;
    lbRegistros: TLabel;
    procedure Executar;
    procedure ContarRegistros;
    procedure FormActivate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SpeedButton1Click(Sender: TObject);
    procedure btLimparClick(Sender: TObject);
    procedure btExecutarClick(Sender: TObject);
    procedure GridSQLDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure cbTabelasChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSQL: TfrmSQL;

implementation

{$R *.dfm}

uses dataConsultas, uFuncoesDB;

procedure TfrmSQL.Executar;
begin
  Try
    dmConsultas.SQL.Close;
    dmConsultas.SQL.SQL.Clear;
    dmConsultas.SQL.SQL.Add(memo.Text);
    dmConsultas.SQL.Open;
  Except
    on E: Exception do
      MessageDlg(E.Message, mtWarning, [mbOk], 0);
  end;
end;

procedure TfrmSQL.ContarRegistros;
begin
  dmConsultas.QTemp.Close;
  dmConsultas.QTemp.SQL.Clear;
  dmConsultas.QTemp.SQL.Add('select count(' + dmConsultas.qyCamposcolumn_name.Text +
                            ') from ' + cbTabelas.Text);
  dmConsultas.QTemp.Open;
  //Verifica tamanho físico
  dmConsultas.qyTamFisico.Close;
  dmConsultas.qyTamFisico.SQL.Clear;
  dmConsultas.qyTamFisico.SQL.Add('SELECT esquema, tabela, ');
  dmConsultas.qyTamFisico.SQL.Add('pg_size_pretty(pg_relation_size(esq_tab)) AS tamanho, ');
  dmConsultas.qyTamFisico.SQL.Add('pg_size_pretty(pg_total_relation_size(esq_tab)) AS tamanho_total ');
  dmConsultas.qyTamFisico.SQL.Add('FROM (SELECT tablename AS tabela, ');
  dmConsultas.qyTamFisico.SQL.Add('schemaname AS esquema, schemaname|| ');
  dmConsultas.qyTamFisico.SQL.Add(QuotedStr('.'));
  dmConsultas.qyTamFisico.SQL.Add('||tablename AS esq_tab FROM pg_catalog.pg_tables ');
  dmConsultas.qyTamFisico.SQL.Add('WHERE tablename = ');
  dmConsultas.qyTamFisico.SQL.Add(QuotedStr(cbTabelas.Text));
  dmConsultas.qyTamFisico.SQL.Add('AND schemaname NOT IN (');
  dmConsultas.qyTamFisico.SQL.Add(QuotedStr('pg_catalog'));
  dmConsultas.qyTamFisico.SQL.Add(',');
  dmConsultas.qyTamFisico.SQL.Add(QuotedStr('information_schema'));
  dmConsultas.qyTamFisico.SQL.Add(',');
  dmConsultas.qyTamFisico.SQL.Add(QuotedStr('pg_toast'));
  dmConsultas.qyTamFisico.SQL.Add(') ) AS x');
  dmConsultas.qyTamFisico.SQL.Add('ORDER BY pg_total_relation_size(esq_tab) DESC;');
  dmConsultas.qyTamFisico.Open;
  lbRegistros.Caption := dmConsultas.QTemp.Fields[0].Text + ' registro(s) na tabela' +
                         ' - Tamanho físico: ' + dmConsultas.qyTamFisicotamanho.Value +
                         ' - Total: ' + dmConsultas.qyTamFisicotamanho_total.Value;
end;

procedure TfrmSQL.btExecutarClick(Sender: TObject);
begin
  Executar;
end;

procedure TfrmSQL.btLimparClick(Sender: TObject);
begin
  memo.Clear;
  dmConsultas.SQL.Close;
  dmConsultas.SQL.SQL.Clear;
end;

procedure TfrmSQL.cbTabelasChange(Sender: TObject);
begin
  if cbTabelas.Text <> '' then
  begin
    GetFielsTable(cbTabelas.Text);
    memo.Lines.Clear;
    memo.Lines.Add('select * from ' + cbTabelas.Text + ' order by ' +
                   dmConsultas.qyCamposcolumn_name.Text);
    Executar;
    ContarRegistros;
  end;
end;

procedure TfrmSQL.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if not(odd(dsCampos.DataSet.RecNo)) then
  begin
    if not (gdSelected in State) then
    begin
      DBGrid1.Canvas.Brush.Color := clMoneyGreen;
      DBGrid1.Canvas.FillRect(Rect);
      DBGrid1.DefaultDrawDataCell(rect,Column.Field,state);
    end;
  end;
end;

procedure TfrmSQL.GridSQLDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  if odd(dsSQL.DataSet.RecNo) then
    GridSQL.Canvas.Brush.Color := clSilver
  else
    GridSQL.Canvas.Brush.Color:= clWhite;
  GridSQL.Canvas.FillRect(Rect);
  if gdSelected in State then
    with GridSQL.Canvas do
    begin
      Brush.Color := clHighlight;
      FillRect(Rect);
      //Font.Style := [fsbold];
    end;
  GridSQL.DefaultDrawDataCell(Rect, Column.Field, State);
end;

procedure TfrmSQL.FormActivate(Sender: TObject);
begin
  inherited;
  lbSGDB.Caption := 'genesis';
  dmConsultas.qyTabelas.Active := True;
  cbTabelas.Text := dmConsultas.qyTabelastablename.Text;
  GetFielsTable(cbTabelas.Text);
  memo.Lines.Clear;
  memo.Lines.Add('select * from ' + cbTabelas.Text + ' order by ' +
                 dmConsultas.qyCamposcolumn_name.Text);
  Executar;
  ContarRegistros;
  dsCampos.DataSet.Active := True;
  memo.SetFocus;
end;

procedure TfrmSQL.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If Key = VK_F9 Then
    Executar;
end;

procedure TfrmSQL.SpeedButton1Click(Sender: TObject);
begin
  if OpenDialog.execute then
    memo.Lines.LoadFromFile(OpenDialog.Filename);
end;

end.
