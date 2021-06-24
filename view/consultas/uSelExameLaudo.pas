unit uSelExameLaudo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpFormNormal, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Grids, Wwdbigrd, Wwdbgrid, Data.DB, Vcl.Mask;

type
  TfrmSelExameLaudo = class(TfrmTmpFormNormal)
    Label1: TLabel;
    edCitologia: TMaskEdit;
    btFiltrar: TBitBtn;
    btLimpar: TBitBtn;
    dsConsulta: TDataSource;
    DBGrid1: TwwDBGrid;
    btAlterar: TBitBtn;
    procedure filtrar;
    procedure limpar;
    procedure selecionar;
    procedure FormActivate(Sender: TObject);
    procedure btLimparClick(Sender: TObject);
    procedure btAlterarClick(Sender: TObject);
    procedure edCitologiaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btFiltrarClick(Sender: TObject);
    procedure edCitologiaKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1DrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);

  private
    vlCaptura: String;
    vlExameSel: String;

  public
    { Public declarations }
  end;

var
  frmSelExameLaudo: TfrmSelExameLaudo;

implementation

{$R *.dfm}

uses dataExames, uDaoExames, uVarGlobal, uFuncoesSistema,
  uExameLaudo, uFuncoesDBEsp;

procedure TfrmSelExameLaudo.btAlterarClick(Sender: TObject);
begin
  selecionar;
end;

procedure TfrmSelExameLaudo.btFiltrarClick(Sender: TObject);
begin
  vlExameSel := edCitologia.Text;
  filtrar;
end;

procedure TfrmSelExameLaudo.btLimparClick(Sender: TObject);
begin
  limpar;
end;

procedure TfrmSelExameLaudo.DBGrid1DblClick(Sender: TObject);
begin
  edCitologia.Text := dmExames.qyExamesexa_id.Text;
  vlExameSel := dmExames.qyExamesexa_id.Text;
  filtrar;
  selecionar;
end;

procedure TfrmSelExameLaudo.DBGrid1DrawDataCell(Sender: TObject;
  const Rect: TRect; Field: TField; State: TGridDrawState);
begin
  if odd(dsConsulta.DataSet.RecNo) then
    DBGrid1.Canvas.Brush.Color := clGray
  else
    DBGrid1.Canvas.Brush.Color:= clWhite;
  DBGrid1.Canvas.FillRect(Rect);
  DBGrid1.Canvas.font.Color:= clBlack;
  if gdSelected in State then
    with DBGrid1.Canvas do
    begin
      Brush.Color := clYellow;
      FillRect(Rect);
      Font.Style := [fsbold];
    end;
  DBGrid1.DefaultDrawDataCell(Rect, Field, State);
end;

procedure TfrmSelExameLaudo.edCitologiaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_F4 then
  Begin
    vlExameSel := edCitologia.Text;
    filtrar;
 end;
end;

procedure TfrmSelExameLaudo.edCitologiaKeyPress(Sender: TObject; var Key: Char);
begin
  key := NumerosCit(key);
end;

procedure TfrmSelExameLaudo.filtrar;
begin
  FiltrarExamesCitologia('e.exa_id', '=', vlExameSel, '0', 'e.exa_id', '100');
  if dmExames.qyExamesexa_id.IsNull then
      MessageDlg('Exame não liberado ou não encontrado: ' + #13 + edCitologia.Text,
                 mtWarning, [mbok],0);
end;

procedure TfrmSelExameLaudo.FormActivate(Sender: TObject);
begin
  inherited;
  dsConsulta.DataSet.Active := true;
  limpar;
end;

procedure TfrmSelExameLaudo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  if dmExames.qyExamesexa_id.IsNull then
    if frmExameLaudo <> nil then
      frmExameLaudo.Close;
end;

procedure TfrmSelExameLaudo.limpar;
begin
  FiltrarExamesCitologia('e.exa_etapa', '=', '4', '0', 'e.exa_id desc', '100');
  edCitologia.Clear;
  edCitologia.SetFocus;
end;

procedure TfrmSelExameLaudo.selecionar;
begin
  vlExameSel := dmExames.qyExamesexa_id.Text;
  if not(dmExames.qyExamesexa_id.IsNull) then
  begin
    FiltrarExamesCitologia('e.exa_id', '=', vlExameSel, '0', 'e.exa_id', '100');
    //Carrega ID na variável global
    vgIDExameLaudo := vlExameSel;
    Close;
    frmExameLaudo.ShowModal;
  end
  else
    MessageDlg('Exame não liberado ou não encontrado: ' + #13 + vlExameSel, mtWarning, [mbok],0);
end;

end.
