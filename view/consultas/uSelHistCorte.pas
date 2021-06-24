unit uSelHistCorte;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpConsultasNormal, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Wwdbigrd, Wwdbgrid,
  Vcl.ComCtrls, wwriched, wwrichedspellxp, Vcl.Mask, Vcl.DBCtrls;

type
  TfrmSelHistCorte = class(TfrmTmpConsultasNormal)
    edHistologia: TMaskEdit;
    dsLog: TDataSource;
    dsTopografia: TDataSource;
    dsBlocos: TDataSource;
    dsObs: TDataSource;
    Label13: TLabel;
    dbObservacoes: TwwDBRichEditMSWord;
    btTodos: TBitBtn;
    Label11: TLabel;
    Label12: TLabel;
    btObs: TBitBtn;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Panel1: TPanel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    DBText6: TDBText;
    wwDBGrid1: TwwDBGrid;
    GridTop: TwwDBGrid;
    procedure limpar;
    procedure filtrar;
    procedure selecionar;
    procedure FormActivate(Sender: TObject);
    procedure btFiltrarClick(Sender: TObject);
    procedure btLimparClick(Sender: TObject);
    procedure btSelecionarClick(Sender: TObject);
    procedure GridConsultaDblClick(Sender: TObject);
    procedure edHistologiaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btTodosClick(Sender: TObject);
    procedure GridConsultaDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dsConsultaDataChange(Sender: TObject; Field: TField);
    procedure dsTopografiaDataChange(Sender: TObject; Field: TField);
    procedure btObsClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSelHistCorte: TfrmSelHistCorte;

implementation

{$R *.dfm}

uses dataExames, uVarGlobal, uDaoExames, uDaoExamesHist, uDaoExamesHistMacro,
  uCorte, uDaoExamesLogs, uDaoExamesTop, uDaoExamesObs, uDaoExamesBlocos,
  uObsExames;

procedure TfrmSelHistCorte.FormActivate(Sender: TObject);
begin
  inherited;
  edHistologia.SetFocus;
  dsLog.DataSet.Active := true;
  dsConsulta.DataSet.Active := true;
  dsTopografia.DataSet.Active := true;
  dsBlocos.DataSet.Active := true;
  dsObs.DataSet.Active := true;
  if vgEtapaHist = 'corte' then
    btTodos.Visible := true
  else
    btTodos.Visible := false;
  limpar;
end;

procedure TfrmSelHistCorte.GridConsultaDblClick(Sender: TObject);
begin
  edHistologia.Text := dmExames.qyExamesexa_id.Text;
  selecionar;
end;

procedure TfrmSelHistCorte.GridConsultaDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if dmExames.qyExamesexa_etapa.text = '02' Then //requisição
    GridConsulta.Canvas.Font.Color := clBlack;
  if dmExames.qyExamesexa_etapa.text = '03' Then //macroscopia
    GridConsulta.Canvas.Font.Color := clMaroon;
  if dmExames.qyExamesexa_etapa.text = '04' Then //corte
    GridConsulta.Canvas.Font.Color := clGreen;
  if dmExames.qyExamesexa_etapa.text = '05' Then //microscopia
    GridConsulta.Canvas.Font.Color := clNavy;
  if dmExames.qyExamesexa_etapa.text = '06' Then //revisão
    GridConsulta.Canvas.Font.Color := clPurple;
  if dmExames.qyExamesexa_etapa.text = '07' Then //aguardando impressão
    GridConsulta.Canvas.Font.Color := clRed;
  if dmExames.qyExamesexa_etapa.text = '08' Then //laudo impresso
    GridConsulta.Canvas.Font.Color := clGray;
  if dmExames.qyExamesexa_etapa.text = '09' Then //enviado e-mail
    GridConsulta.Canvas.Font.Color := clAqua;
  if gdSelected in State then
    with GridConsulta.Canvas do
    begin
      Brush.Color := clYellow;
      FillRect(Rect);
      //Font.Style := [fsbold];
    end;
  GridConsulta.Canvas.FillRect(Rect);
  GridConsulta.DefaultDrawDataCell(Rect, GridConsulta.columns[datacol].field, State);
end;

procedure TfrmSelHistCorte.limpar;
Begin
  dsTopografia.DataSet.Active := True;
  dsBlocos.DataSet.Active := True;
  dsObs.DataSet.Active := True;
  Self.Caption := 'Seleciona histologia' + ' - ' + '[' + vgEtapaHist + ']';
  edHistologia.Clear;
  //adaptado para reimpressão
  if ((vgNumEtapa = '5') or (vgNumEtapa = '6')) then
    FiltrarExamesHisto('e.exa_etapa', '>=', vgNumEtapa, '0', 'e.exa_id desc', '0')
  else
    FiltrarExamesHisto('e.exa_etapa', '=', vgNumEtapa, '0', 'e.exa_id desc', '0');
  edHistologia.SetFocus;
end;

procedure TfrmSelHistCorte.btFiltrarClick(Sender: TObject);
begin
  filtrar;
end;

procedure TfrmSelHistCorte.btLimparClick(Sender: TObject);
begin
  limpar;
end;

procedure TfrmSelHistCorte.btObsClick(Sender: TObject);
begin
  if not(dsConsulta.DataSet.FieldByName('exa_id').IsNull) then
  begin
    vgExaLog := dsConsulta.DataSet.FieldByName('exa_id').Text;
    frmObsExames.ShowModal;
  end;
end;

procedure TfrmSelHistCorte.btSelecionarClick(Sender: TObject);
begin
  selecionar;
end;

procedure TfrmSelHistCorte.btTodosClick(Sender: TObject);
begin
  if not(dmExames.qyExamesexa_id.IsNull) then
  begin
    if MessageDlg('Deseja realmente alterar todos para a MICROSCOPIA?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      dmExames.qyExames.Prior;
      repeat
      begin
        //grava log de usuário
        InsExamesLogs(dmExames.qyExamesexa_id.Text, '4', vgCodUsuarioLog);
        //altera etapa do exame
        SetEtapaExame(4);
        dmExames.qyExames.Next;
      end;
      until dmExames.qyExames.Eof = true;
      MessageDlg('Alterações gravadas com sucesso!', mtInformation, [mbok], 0);
      Close;
    end;
  end
  else
  begin
    MessageDlg('Não é possível executar esta ação com a tabela vazia!', mtWarning, [mbok], 0);
    close;
  end;
end;

procedure TfrmSelHistCorte.dsConsultaDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  //Fitra topografias
  FiltrarExamesTop('e.exa_id', '=', dsConsulta.DataSet.FieldByName('exa_id').Text, 'e.etg_id', '0');
  //Filtra blocos
  FiltrarExamesBlocos('e.exa_id', '=', dsConsulta.DataSet.FieldByName('exa_id').Text, 'e.etg_id, e.ebl_seq', '0');
  //Filtra Obs
  FiltrarExamesObs('exa_id', '=', (QuotedStr(dmExames.qyExamesexa_id.Text)), '0', '0');
end;

procedure TfrmSelHistCorte.dsTopografiaDataChange(Sender: TObject;
  Field: TField);
begin
  //filtra blocos - Bloco interligado com topografia
  if not dmExames.qyExamesTopetg_id.IsNull then
    FiltrarExamesBlocosEtg('e.exa_id', '=', (QuotedStr(dsConsulta.DataSet.FieldByName('exa_id').Text)),
                           (QuotedStr(dsTopografia.DataSet.FieldByName('etg_id').Text)), 'etg_id, ebl_seq', '0')
  else
    FiltrarExamesBlocosEtg('e.exa_id', '=', (QuotedStr(dsConsulta.DataSet.FieldByName('exa_id').Text)),
                           '0', 'etg_id, ebl_seq', '0')
end;

procedure TfrmSelHistCorte.edHistologiaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_F4 then
    filtrar;
end;

procedure TfrmSelHistCorte.filtrar;
Var
vHistologia: String;
Begin
  vHistologia := edHistologia.Text;
  if vHistologia <> '' then
  Begin
    edHistologia.Clear;
    //adaptado para reimpressão
    FiltrarHistCorte(vHistologia);
    if dmExames.qyExamesexa_id.IsNull then
      MessageDlg('Exame não encontrado ou não liberado!', mtWarning, [mbok], 0);
  end
  else
    MessageDlg('Você deve digitar ou selecionar um exame válido!', mtError, [mbok], 0);
end;

procedure TfrmSelHistCorte.selecionar;
Var
vHistologia: String;
begin
  edHistologia.Text := dmExames.qyExamesexa_id.Text;
  vHistologia := edHistologia.Text;
  //filtra a tabela de exames
  FiltrarExamesHisto('e.exa_id', '=', vHistologia, '0', 'e.exa_id desc', '0');
  if ((dmExames.qyExamesetp_id.Value = 2) or (dmExames.qyExamesetp_id.Value = 3)) then
  begin
    //filtra a tabela de Histologia
    FiltrarExamesHist('h.exa_id', '=', vHistologia, 'h.ehi_id', '0');
    //filtra a tabela ExamesHistMacro
    FiltrarExamesHistMacro('exa_id', '=', vHistologia, '0', '0');
    if vgEtapaHist = 'corte' then
    begin
      if frmCorte <> nil then
        frmCorte.ShowModal;
    end;
    Limpar;
  end
  else
    MessageDlg('O exame selecionado não é uma HISTOLOGIA!' + #13 + 'por favor verifique!', mtWarning, [mbok],0);
end;

end.
