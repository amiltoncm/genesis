unit uSelCITTable;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpFormNormal, Vcl.StdCtrls,
  Vcl.Buttons, Data.DB, Vcl.ExtCtrls, Vcl.Grids, Wwdbigrd, Wwdbgrid, Vcl.Mask;

type
  TfrmSelCITTable = class(TfrmTmpFormNormal)
    Label1: TLabel;
    edCitologia: TMaskEdit;
    dbBusca: TwwDBGrid;
    Panel1: TPanel;
    lbEtapa: TLabel;
    lbExameAtual: TLabel;
    Image1: TImage;
    dsTbExame: TDataSource;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    btAlterar: TBitBtn;
    procedure Capturar;
    procedure edCitologiaChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btAlterarClick(Sender: TObject);
    procedure dbBuscaCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure dbBuscaDblClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure dbBuscaKeyPress(Sender: TObject; var Key: Char);
    procedure dbBuscaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    vlFiltra: String[1];

  public
    { Public declarations }
  end;

var
  frmSelCITTable: TfrmSelCITTable;

implementation

{$R *.dfm}

uses dataConsultas, dataExames, uVarGlobal, uDaoExames;

procedure TfrmSelCITTable.btAlterarClick(Sender: TObject);
begin
  Capturar;
end;

procedure TfrmSelCITTable.Capturar;
begin
  //fitra tabela exame e fecha a janela
  FiltrarExamesCitologia('e.exa_id', '=', dmConsultas.tbExamesCitoexa_id.Text,  '= ' + vgIDTpBusca, '0', '1');
  if not (dmExames.qyExamesexa_id.IsNull) then
  begin
    vlFiltra := 'S';
    vgIDExameLaudo := dmExames.qyExamesexa_id.Text;
    Close;
  end
  else
    MessageDlg('Não foi possível carregar o exame!' + #13 + 'Verifique a etapa do exame!', mtWarning, [mbOk], 0)
end;

procedure TfrmSelCITTable.dbBuscaCalcCellColors(Sender: TObject; Field: TField;
  State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
  if (dsTbExame.DataSet.FieldByName('exa_etapa').Text = '2') then
  begin
    AFont.Color := clBlue;
    if vgIDTpBusca = '2' then
      AFont.Style := [ fsBold ];
  end
  else
    if (dsTbExame.DataSet.FieldByName('exa_etapa').Text = '4') then
    begin
      AFont.Color := clMaroon;
      if vgIDTpBusca = '4' then
        AFont.Style := [ fsBold ];
    end
    else
    begin
      AFont.Color := clBlack;
      AFont.Style := [ fsStrikeOut ];
    end;
end;

procedure TfrmSelCITTable.dbBuscaDblClick(Sender: TObject);
begin
  Capturar;
end;

procedure TfrmSelCITTable.dbBuscaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_F4 then
    edCitologia.Setfocus;
end;

procedure TfrmSelCITTable.dbBuscaKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    Capturar;
  if key = #27 then
    edCitologia.SetFocus;
end;

procedure TfrmSelCITTable.edCitologiaChange(Sender: TObject);
begin
  dmConsultas.tbExamesCito.Locate('exa_id', edCitologia.Text, [LOPARTIALKEY, LOCASEINSENSITIVE]);
end;

procedure TfrmSelCITTable.FormActivate(Sender: TObject);
begin
  inherited;
  if vgIDTpBusca = '2' then
  begin
    lbEtapa.Caption := 'Etapa da busca: Captura';
    lbEtapa.Font.Color := clBlue;
  end;
  if vgIDTpBusca = '4' then
  begin
    lbEtapa.Caption := 'Etapa da busca: Preenchimento do laudo';
    lbEtapa.Font.Color := clMaroon;
  end;
  vlFiltra := 'N';
  lbExameAtual.Caption := 'Exame atual: ' + vgIDExameBuscaTb;
  edCitologia.Text := dmExames.qyExamesexa_id.Text;
  dsTbExame.DataSet.Active := true;
  //edCitologia.SetFocus;
  dbBusca.SetFocus;
end;

procedure TfrmSelCITTable.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if vlFiltra = 'N' then
  begin
    if MessageDlg('Não foi possível carregar o exame!' + #13 + 'A busca retorna ao exame: ' + vgIDExameBuscaTb + #13 + #13+ 'Deseja realmente sair?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      //fitra tabela exame e busca o exame atual novamente, e fecha a janela
      FiltrarExamesCitologia('e.exa_id', '=', vgIDExameBuscaTb, '0', '0', '0');
      if dmExames.qyExamesexa_id.IsNull then
        CanClose := false
      else
      begin
        vgIDCaptura := dmExames.qyExamesexa_id.Text;
        CanClose := true;
      end;
    end
    else
      CanClose := false;
  end;
end;

end.
