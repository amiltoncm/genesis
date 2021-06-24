unit uVisualizaNomes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpFormNormal, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons;

type
  TfrmVisualizaNomes = class(TfrmTmpFormNormal)
    Label1: TLabel;
    GridNomes: TDBGrid;
    dsNomes: TDataSource;
    btConfirmar: TBitBtn;
    procedure FormActivate(Sender: TObject);
    procedure btFecharClick(Sender: TObject);
    procedure btConfirmarClick(Sender: TObject);
    procedure GridNomesDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVisualizaNomes: TfrmVisualizaNomes;

implementation

{$R *.dfm}

uses dataExames, uRequisicao, dataLookups, uDaoPacientes, uCadPacRequisicao;

procedure TfrmVisualizaNomes.btConfirmarClick(Sender: TObject);
Var
vCodPac: String;
begin
  if not dmExames.QTemp.Fields[0].IsNull then
  begin
    vCodPac := dmExames.QTemp.Fields[0].Text;
    if frmRequisicao <> nil then
    Begin
      FiltrarProcPacientes(vCodPac);
      frmRequisicao.cbPaciente.Text := dmExames.QTemp.Fields[1].Text;
      frmRequisicao.cbPaciente.PerformSearch;
    end;
    Close;
  end
  else
    MessageDlg('Não foi possível carregar o Paciente', mtInformation, [mbok], 0);
end;

procedure TfrmVisualizaNomes.btFecharClick(Sender: TObject);
begin
  inherited;
  Close;
  if MessageDlg('Deseja cadastrar o novo paciente?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    frmCadPacRequisicao.ShowModal
  else
    frmRequisicao.cbPaciente.SetFocus;
end;

procedure TfrmVisualizaNomes.GridNomesDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  if odd(dsNomes.DataSet.RecNo) then
    GridNomes.Canvas.Brush.Color := clSilver
  else
    GridNomes.Canvas.Brush.Color:= clWhite;
  GridNomes.Canvas.FillRect(Rect);
  if gdSelected in State then
    with GridNomes.Canvas do
    begin
      Brush.Color := clHighlight;
      FillRect(Rect);
      //Font.Style := [fsbold];
    end;
  GridNomes.DefaultDrawDataCell(Rect, Column.Field, State);
end;

procedure TfrmVisualizaNomes.FormActivate(Sender: TObject);
begin
  inherited;
  dsNomes.DataSet.Active := true;
end;

end.
