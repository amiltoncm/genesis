unit uSelImprimeCit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpFormNormal, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Grids, Wwdbigrd, Wwdbgrid, Data.DB, Vcl.Mask;

type
  TfrmSelImprimeCit = class(TfrmTmpFormNormal)
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
    procedure btFiltrarClick(Sender: TObject);
    procedure btAlterarClick(Sender: TObject);
    procedure edCitologiaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btLimparClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure edCitologiaKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);

  private
    vlCaptura: String;
    vlExame: String;

  public
    { Public declarations }
  end;

var
  frmSelImprimeCit: TfrmSelImprimeCit;

implementation

{$R *.dfm}

uses dataExames, uVarGlobal, uRelLaudoFinal, uFuncoesSistema, uFuncoesExames,
  uDaoExames;

procedure TfrmSelImprimeCit.btAlterarClick(Sender: TObject);
begin
  selecionar;
end;

procedure TfrmSelImprimeCit.btFiltrarClick(Sender: TObject);
begin
  vlExame := edCitologia.Text;
  filtrar;
end;

procedure TfrmSelImprimeCit.btLimparClick(Sender: TObject);
begin
  limpar;
end;

procedure TfrmSelImprimeCit.DBGrid1DblClick(Sender: TObject);
begin
  edCitologia.Text := dmExames.qyExamesexa_id.Text;
  vlExame := dmExames.qyExamesexa_id.Text;
  filtrar;
  selecionar;
end;

procedure TfrmSelImprimeCit.DBGrid1DrawDataCell(Sender: TObject;
  const Rect: TRect; Field: TField; State: TGridDrawState);
begin
  if odd(dsConsulta.DataSet.RecNo) then
    DBGrid1.Canvas.Brush.Color := clSilver
  else
    DBGrid1.Canvas.Brush.Color:= clWhite;
  DBGrid1.Canvas.FillRect(Rect);
  DBGrid1.Canvas.font.Color:= clBlack;
  if gdSelected in State then
    with DBGrid1.Canvas do
    begin
      Brush.Color := clYellow;
      FillRect(Rect);
      //Font.Style := [fsItalic];
    end;
  DBGrid1.DefaultDrawDataCell(Rect, Field, State);
end;

procedure TfrmSelImprimeCit.edCitologiaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_F4 then
  Begin
    vlExame := edCitologia.Text;
    filtrar;
  end;
end;

procedure TfrmSelImprimeCit.edCitologiaKeyPress(Sender: TObject; var Key: Char);
begin
  key := NumerosCit(key);
end;

procedure TfrmSelImprimeCit.filtrar;
begin
  FiltrarExamesCitologia('e.exa_id', '=', edCitologia.Text, '>= 5', '0', '1');
  if dmExames.qyExamesexa_id.IsNull then
      MessageDlg('Exame não liberado ou não encontrado: ' + #13 + edCitologia.Text, mtWarning, [mbok],0);
end;

procedure TfrmSelImprimeCit.FormActivate(Sender: TObject);
begin
  inherited;
  dsConsulta.DataSet.Active := true;
  limpar;
end;

procedure TfrmSelImprimeCit.limpar;
begin
  FiltrarExamesCitologia('e.exa_etapa', '>=', '5', '0', 'e.exa_id desc', '100');
  edCitologia.Clear;
  edCitologia.SetFocus;
end;

procedure TfrmSelImprimeCit.selecionar;
begin
  if edCitologia.Text <> '          ' then
  begin
    vlExame := dmExames.qyExamesexa_id.Text;
    FiltrarExamesCitologia('e.exa_id', '=', edCitologia.Text, '>= 5', '0', '1');
    if not(dmExames.qyExamesexa_id.IsNull) then
    Begin
      //envia ID do exame para o uVarGlobal
      vgIDCaptura := dmExames.qyExamesexa_id.Text;
      vgIDExame := dmExames.qyExamesexa_id.Text;
      vgImagemExame := vlExame;
      Close;
      frmRelLaudoFinal.ShowModal;
    end
    else
      MessageDlg('Exame não liberado ou não encontrado: ' + #13 + vlExame, mtWarning, [mbok],0);
  end
  else
    MessageDlg('Você deve selecionar ou digitar o ID de um exame!', mtWarning, [mbok],0);
end;

end.
