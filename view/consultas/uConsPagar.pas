unit uConsPagar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpFormNormal, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Data.DB, Vcl.Mask, wwdbedit, Wwdotdot,
  Wwdbcomb, wwdblook;

type
  TfrmConsPagar = class(TfrmTmpFormNormal)
    Label1: TLabel;
    cbFornecedor: TwwDBLookupCombo;
    Label2: TLabel;
    cbStatus: TwwDBComboBox;
    btFiltrar: TBitBtn;
    btLimpar: TBitBtn;
    dsConsulta: TDataSource;
    DBGrid1: TDBGrid;
    procedure FormActivate(Sender: TObject);
    procedure btFiltrarClick(Sender: TObject);
    procedure btLimparClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsPagar: TfrmConsPagar;

implementation

{$R *.dfm}

uses dataConsultas, dataLookups, uDaoPagar;

procedure TfrmConsPagar.btFiltrarClick(Sender: TObject);
Var
vCodForn: String;
begin
  if cbFornecedor.Text = '' then
    vCodForn := '0'
  else
    vCodForn := dmLookups.lkProcFornecedoresfor_codigo.Text;
  FiltrarConsPagar(vCodForn, cbStatus.Value);
end;

procedure TfrmConsPagar.btLimparClick(Sender: TObject);
begin
  LimparConsPagar;
end;

procedure TfrmConsPagar.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if dmConsultas.qyConsPagarpag_status.Text = 'A' then
    Dbgrid1.Canvas.Font.Color:= clRed
  else
    Dbgrid1.Canvas.Font.Color:= clBlue;
  Dbgrid1.DefaultDrawDataCell(Rect, dbgrid1.columns[datacol].field, State);
end;

procedure TfrmConsPagar.FormActivate(Sender: TObject);
begin
  inherited;
  cbFornecedor.Text := '';
  cbStatus.Value := 'A';
  dsConsulta.DataSet.Active := True;
  LimparConsPagar;
  cbFornecedor.SetFocus;
end;

end.
