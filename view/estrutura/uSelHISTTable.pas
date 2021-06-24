unit uSelHISTTable;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpFormNormal, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Grids, Wwdbigrd, Wwdbgrid, Vcl.ExtCtrls, Data.DB, Vcl.Mask;

type
  TfrmSelHISTTable = class(TfrmTmpFormNormal)
    Label1: TLabel;
    edHistologia: TMaskEdit;
    dsTbExame: TDataSource;
    Panel1: TPanel;
    lbEtapa: TLabel;
    lbExameAtual: TLabel;
    Image1: TImage;
    dbBusca: TwwDBGrid;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label2: TLabel;
    btAlterar: TBitBtn;
    procedure Capturar;
    procedure edHistologiaChange(Sender: TObject);
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
  frmSelHISTTable: TfrmSelHISTTable;

implementation

{$R *.dfm}

uses dataConsultas, uVarGlobal, dataExames, uDaoExames;

procedure TfrmSelHISTTable.btAlterarClick(Sender: TObject);
begin
  Capturar;
end;

procedure TfrmSelHISTTable.Capturar;
Var
vExame: String;
begin
  vExame := dmConsultas.tbExamesHistexa_id.Text;
  //fitra tabela exame e fecha a janela
  if vgIDTpBusca = '2' then
    FiltrarExamesHisto('e.exa_id', '=', vExame, '2', '0', '0');
  if vgIDTpBusca = '4' then
    FiltrarExamesHisto('e.exa_id', '=', vExame, '4', '0', '0');
  if vgIDTpBusca = '5' then
    FiltrarExamesHisto('e.exa_id', '=', vExame, '5', '0', '0');
  if not (dmExames.qyExamesexa_id.IsNull) then
  begin
    vlFiltra := 'S';
    vgIDCaptura := dmExames.qyExamesexa_id.Text;
    Close;
  end
  else
    MessageDlg('Não foi possível carregar o exame!' + #13 + 'Verifique a etapa do exame!', mtWarning, [mbOk], 0)
end;

procedure TfrmSelHISTTable.dbBuscaCalcCellColors(Sender: TObject; Field: TField;
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
      if (dsTbExame.DataSet.FieldByName('exa_etapa').Text = '5') then
      begin
        AFont.Color := clGreen;
        if vgIDTpBusca = '5' then
          AFont.Style := [ fsBold ];
      end
        else
        begin
          AFont.Color := clBlack;
          AFont.Style := [ fsStrikeOut ];
        end;
end;

procedure TfrmSelHISTTable.dbBuscaDblClick(Sender: TObject);
begin
  Capturar;
end;

procedure TfrmSelHISTTable.dbBuscaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_F4 then
    edHistologia.Setfocus;
end;

procedure TfrmSelHISTTable.dbBuscaKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    Capturar;
  if key = #27 then
    edHistologia.SetFocus;
end;

procedure TfrmSelHISTTable.edHistologiaChange(Sender: TObject);
begin
  dmConsultas.tbExamesHist.Locate('exa_id', edHistologia.Text, [LOPARTIALKEY, LOCASEINSENSITIVE]);
end;

procedure TfrmSelHISTTable.FormActivate(Sender: TObject);
begin
  inherited;
  if vgIDTpBusca = '2' then
  begin
    lbEtapa.Caption := 'Etapa da busca: Macroscopia';
    lbEtapa.Font.Color := clBlue;
  end;
  if vgIDTpBusca = '4' then
  begin
    lbEtapa.Caption := 'Etapa da busca: Microscopia';
    lbEtapa.Font.Color := clMaroon;
  end;
  if vgIDTpBusca = '5' then
  begin
    lbEtapa.Caption := 'Etapa da busca: Revisão';
    lbEtapa.Font.Color := clGreen;
  end;
  vlFiltra := 'N';
  lbExameAtual.Caption := 'Exame atual: ' + vgIDExameBuscaTb;
  edHistologia.Text := dmExames.qyExamesexa_id.Text;
  dsTbExame.DataSet.Active := true;
  dbBusca.SetFocus;
end;

procedure TfrmSelHISTTable.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if vlFiltra = 'N' then
  begin
    if MessageDlg('Não foi possível carregar o exame!' + #13 + 'A busca retorna ao exame: ' + vgIDExameBuscaTb + #13 + #13+ 'Deseja realmente sair?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      //fitra tabela exame e busca o exame atual novamente, e fecha a janela
      FiltrarExames('e.exa_id', '=', vgIDExameBuscaTb, '0', '0');
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
