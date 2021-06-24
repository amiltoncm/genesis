unit uSelHistologia;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpFormNormal, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Grids, Wwdbigrd, Wwdbgrid, Data.DB, Vcl.Mask;

type
  TfrmSelHistologia = class(TfrmTmpFormNormal)
    Label1: TLabel;
    btFiltrar: TBitBtn;
    dsConsulta: TDataSource;
    dsLog: TDataSource;
    btLimpar: TBitBtn;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label8: TLabel;
    Label6: TLabel;
    Label4: TLabel;
    btTodos: TBitBtn;
    btAlterar: TBitBtn;
    edHistologia: TMaskEdit;
    DBGrid1: TwwDBGrid;
    procedure limpar;
    procedure filtrar;
    procedure selecionar;
    procedure FormActivate(Sender: TObject);
    procedure btFiltrarClick(Sender: TObject);
    procedure btLimparClick(Sender: TObject);
    procedure btAlterarClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure edHistologiaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btTodosClick(Sender: TObject);
    procedure DBGrid1CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSelHistologia: TfrmSelHistologia;

implementation

{$R *.dfm}

uses uVarGlobal, dataExames, uDaoExames, uDaoExamesLogs, uRelHistologia,
  uFuncoesSistema, uDaoExamesHist, uDaoExamesHistMacro, uMacroscopia, uCorte,
  uMicroscopia, uRevisao;

procedure TfrmSelHistologia.FormActivate(Sender: TObject);
begin
  inherited;
  dsLog.DataSet.Active := true;
  dsConsulta.DataSet.Active := true;
  if vgEtapaHist = 'corte' then
    btTodos.Visible := true
  else
    btTodos.Visible := false;
  limpar;
end;

procedure TfrmSelHistologia.limpar;
Begin
  Self.Caption := 'Seleciona histologia' + ' - ' + '[' + vgEtapaHist + ']';
  edHistologia.Clear;
  FiltrarExamesHisto('e.exa_id', '>', '0', vgNumEtapa, 'e.exa_id desc', '500');
  edHistologia.SetFocus;
end;

procedure TfrmSelHistologia.btAlterarClick(Sender: TObject);
begin
  selecionar;
end;

procedure TfrmSelHistologia.btFiltrarClick(Sender: TObject);
begin
  filtrar;
end;

procedure TfrmSelHistologia.btLimparClick(Sender: TObject);
begin
  limpar;
end;

procedure TfrmSelHistologia.btTodosClick(Sender: TObject);
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
        dmExames.qyExames.Edit;
        dmExames.qyExamesexa_etapa.Value := 4;
        dmExames.qyExames.Post;
      end;
      until dmExames.qyExames.Eof = true;
      dmExames.qyExames.Refresh;
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

procedure TfrmSelHistologia.DBGrid1CalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
  if dmExames.qyExamesexa_etapa.text = '02' Then //requisição
    DBGrid1.Canvas.Font.Color := clBlack;
  if dmExames.qyExamesexa_etapa.text = '03' Then //macroscopia
    DBGrid1.Canvas.Font.Color := clMaroon;
  if dmExames.qyExamesexa_etapa.text = '04' Then //corte
    DBGrid1.Canvas.Font.Color := clGreen;
  if dmExames.qyExamesexa_etapa.text = '05' Then //microscopia
    DBGrid1.Canvas.Font.Color := clNavy;
  if dmExames.qyExamesexa_etapa.text = '06' Then //revisão
    DBGrid1.Canvas.Font.Color := clPurple;
  if dmExames.qyExamesexa_etapa.text = '07' Then //aguardando impressão
    DBGrid1.Canvas.Font.Color := clRed;
  if dmExames.qyExamesexa_etapa.text = '08' Then //laudo impresso
    DBGrid1.Canvas.Font.Color := clGray;
  if dmExames.qyExamesexa_etapa.text = '09' Then //enviado e-mail
    DBGrid1.Canvas.Font.Color := clAqua;
end;

procedure TfrmSelHistologia.DBGrid1DblClick(Sender: TObject);
begin
  edHistologia.Text := dmExames.qyExamesexa_id.Text;
  selecionar;
end;

procedure TfrmSelHistologia.edHistologiaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_F4 then
    filtrar;
end;

procedure TfrmSelHistologia.filtrar;
Begin
  if edHistologia.Text <> '          ' then
  Begin
    FiltrarExamesHisto('e.exa_id', '=', edHistologia.Text, vgNumEtapa, 'e.exa_id desc', '1');
    if dmExames.qyExamesexa_id.IsNull then
      MessageDlg('Exame não encontrado ou não liberado!', mtWarning, [mbok], 0);
  end
  else
    MessageDlg('Você deve digitar ou selecionar um exame válido!', mtError, [mbok], 0);
end;

procedure TfrmSelHistologia.selecionar;
Begin
  if dsConsulta.DataSet.FieldByName('exa_etapa').Value < 20 then
  begin
    edHistologia.Text := dmExames.qyExamesexa_id.Text;
    //filtra a tabela de exames
    FiltrarExamesHisto('e.exa_id', '=', edHistologia.Text, vgNumEtapa, 'e.exa_id desc', '1');
    if ((dmExames.qyExamesetp_id.Value = 2) or (dmExames.qyExamesetp_id.Value = 3) or (dmExames.qyExamesetp_id.Value = 4)) then
    Begin
      //filtra a tabela de Histologia
      FiltrarExamesHist('h.exa_id', '=', edHistologia.Text, 'h.ehi_id', '1');
      //filtra a tabela ExamesHistMacro
      FiltrarExamesHistMacro('exa_id', '=', edHistologia.Text, '0', '1');
      Close;
      if vgEtapaHist = 'macroscopia' then
      Begin
        if frmMacroscopia <> nil then
          frmMacroscopia.ShowModal;
      end;
      if vgEtapaHist = 'corte' then
      Begin
        if frmCorte <> nil then
          frmCorte.ShowModal;
      end;
      if vgEtapaHist = 'microscopia' then
      Begin
        if frmMicroscopia <> nil then
          frmMicroscopia.ShowModal;
      end;
      if vgEtapaHist = 'revisao' then
      Begin
        vgIDExame := edHistologia.Text;
        frmRevisao.ShowModal;
      end;
      if vgEtapaHist = 'relatorio' then
      Begin
        //envia ID do exame para VarGlobal
        vgIDCaptura := edHistologia.Text;
        vgIDExame := edHistologia.Text;
        Close;
        frmRelHistologia.ShowModal;
      end;
    end
    else
      MessageDlg('O exame selecionado não é uma HISTOLOGIA / IMUNOHISTOQUÍMICA!' + #13 + 'por favor verifique!', mtWarning, [mbok],0);
  end
  else
    MessageDlg('O exame está finalizado!', mtWarning, [mbok], 0);
end;

end.
