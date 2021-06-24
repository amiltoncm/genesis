unit uSelCIT;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpFormNormal, Vcl.StdCtrls,
  Vcl.Buttons, SDEngine, Data.DB, Wwdbigrd, Vcl.Grids, Wwdbgrid, Vcl.Mask,
  JvBaseDlg, JvBrowseFolder, JvSelectDirectory;

type
  TfrmSelCIT = class(TfrmTmpFormNormal)
    Label1: TLabel;
    edCitologia: TMaskEdit;
    btFiltrar: TBitBtn;
    btLimpar: TBitBtn;
    DBGrid1: TwwDBGrid;
    DBGrid1IButton: TwwIButton;
    memLog: TMemo;
    btUpload: TBitBtn;
    btAlterar: TBitBtn;
    btEtapa: TBitBtn;
    BitBtn1: TBitBtn;
    dsConsulta: TDataSource;
    dsLog: TDataSource;
    SDScript1: TSDScript;
    JvSelectDirectory1: TJvSelectDirectory;
    Label2: TLabel;
    procedure Ordenar;
    procedure ignorar;
    procedure filtrar;
    procedure filtrarCIT;
    procedure filtrarFaixa;
    procedure limpar;
    procedure selecionar;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edCitologiaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edCitologiaKeyPress(Sender: TObject; var Key: Char);
    procedure btFiltrarClick(Sender: TObject);
    procedure btLimparClick(Sender: TObject);
    procedure DBGrid1CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1DrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
    procedure DBGrid1TitleButtonClick(Sender: TObject; AFieldName: string);
    procedure btUploadClick(Sender: TObject);
    procedure btAlterarClick(Sender: TObject);
    procedure btEtapaClick(Sender: TObject);
    procedure btFecharClick(Sender: TObject);

  private
    vlCaptura: String;
    vlExame: String;
    vlOrdemSQL: String;
    vlExameInic: String;
    vlExameFin: String;

  public
    { Public declarations }
  end;

var
  frmSelCIT: TfrmSelCIT;

implementation

{$R *.dfm}

uses dataExames , uDaoExames, uDaoExamesLogs, uVarGlobal, uDaoImagens, uDaoImagensZEOS,
  uFuncoesFormatacao, uFuncoesSistema;

procedure TfrmSelCIT.Ordenar;
begin
  if vlOrdemSQL = 'desc' then
  begin
    OrdenarSelCit('e.exa_id');
    vlOrdemSQL := '';
  end
  else
  begin
    OrdenarSelCit('e.exa_id desc');
    vlOrdemSQL := 'desc';
  end;
end;

procedure TfrmSelCIT.Ignorar;
begin
  FiltrarCitologias('e.exa_id', '=', vlExame, 'e.exa_id', '0');
  if dmExames.qyExamesexa_id.IsNull then
    MessageDlg('Não foi possível localizar exame!', mtWarning, [mbOk], 0)
  else
  Begin
    //pula direto para o preenchimento do laudo
    SetEtapaExame(4);
    InsExamesLogs(dmExames.qyExamesexa_id.Text, '3', vgCodUsuarioLog);
    MessageDlg('Etapa ignorada com sucesso!' + #13 + 'O laudo pode ser preenchido!',
                mtInformation, [mbOk], 0 );
    //log de usuário etapa
    vlCaptura := 'N';
    //atualiza novamente a tabela
    limpar;
  end;
end;

procedure TfrmSelCIT.filtrar;
begin
  vlExame := dmExames.qyExamesexa_id.Text;
  FiltrarCitologias('e.exa_id', '=', vlExame, '0', '1');
  if dmExames.qyExamesexa_id.IsNull then
    MessageDlg('Exame não liberado para captura,' + #13 + 'ou não encontrado!!', mtWarning, [mbOk], 0);
end;

procedure TfrmSelCIT.filtrarCIT;
begin
  vlExame := edCitologia.Text;
  FiltrarCitologias('e.exa_id', '=', vlExame, '0', '1');
  if dmExames.qyExamesexa_id.IsNull then
    MessageDlg('Exame não liberado para captura,' + #13 + 'ou não encontrado!!', mtWarning, [mbOk], 0);
end;

procedure TfrmSelCIT.filtrarFaixa;
Var
vContInic, vContFin: integer;
begin
  try
  if ((edCitologia.Text = '') or (edCitologia.Text = '          ')) then
  begin
    vlExameInic := InputBox('Aviso', 'Digite a faixa inicial', '');
    vlExameFin := InputBox('Aviso', 'Digite a faixa final', vlExameInic);
  end
  else
  begin
    vlExameInic := InputBox('Aviso', 'Digite a faixa inicial', edCitologia.Text);
    vlExameFin := InputBox('Aviso', 'Digite a faixa final', edCitologia.Text);
  end;
  //Retira espaços em branco
  vlExameInic := Trim(AnsiUpperCase(vlExameInic));
  vlExameFin := Trim(AnsiUpperCase(vlExameFin));
  //Conta caracteres
  vContInic := Length(vlExameInic);
  vContFin := Length(vlExameFin);
  if ((vContInic = 10) and (vContFin = 10)) then
    FiltrarCitologiasFaixa('e.exa_id', 'between', vlExameInic, vlExameFin, '2', 'e.exa_id', '0')
  else
  begin
    if vContInic <> 10 then
      MessageDlg('A sequência inicial não possui 10 caracteres!', mtError, [mbok], 0);
    if vContFin <> 10 then
      MessageDlg('A sequência final não possui 10 caracteres!', mtError, [mbok], 0);
  end;
  except
    limpar;
  end;
end;

procedure TfrmSelCIT.limpar;
begin
  memLog.Clear;
  FiltrarCitologias('e.exa_id', '=', '0', '0', '0');
  vlOrdemSQL := 'desc';
  vlCaptura :=  'N';
  edCitologia.Clear;
  edCitologia.SetFocus;
end;

procedure TfrmSelCIT.selecionar;
begin
  FiltrarCitologias('e.exa_id', '=', vlExame, '0', '1');
  if dmExames.qyExamesexa_id.IsNull then
    MessageDlg('Não foi possível carregar para captura!', mtWarning, [mbOk], 0)
  else
  Begin
    vlCaptura := 'S';
    Close;
  end;
end;

procedure TfrmSelCIT.btAlterarClick(Sender: TObject);
begin
  selecionar;
end;

procedure TfrmSelCIT.btEtapaClick(Sender: TObject);
begin
  if messageDlg('Deseja realmente ingnorar a etapa da captura?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    vlExame := dmExames.qyExamesexa_id.Text;
    Ignorar;
  end;
end;

procedure TfrmSelCIT.btFecharClick(Sender: TObject);
begin
  vlCaptura := 'N';
  inherited;
end;

procedure TfrmSelCIT.btFiltrarClick(Sender: TObject);
begin
  vlExame := edCitologia.Text;
  filtrarCIT;
end;

procedure TfrmSelCIT.btLimparClick(Sender: TObject);
begin
  limpar;
end;

procedure TfrmSelCIT.btUploadClick(Sender: TObject);
Var
vDir: String;
vImg: String;
begin
  FiltrarImagens('img_exame', '=', QuotedStr('0'), '0', '1');
  vDir := '';
  vImg := '';
  JvSelectDirectory1.InitialDir := vgDirCaptura;
  if MessageDlg('Deseja realmente fazer upload das imagens?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    filtrarFaixa;
    memLog.Clear;
    dmExames.qyExames.Last;
    if not(dmExames.qyExamesexa_id.IsNull) then
    begin
      if JvSelectDirectory1.Execute then
      begin
        vDir := JvSelectDirectory1.Directory;
        repeat
        begin
          vImg := vDir + '\' + dmExames.qyExamesexa_id.Text + '.jpg';
          if FileExists(vImg) then
          begin
            if TestImg(dmExames.qyExamesexa_id.Text) = false then
            begin
              InsImagensZEOS(dmExames.qyExamesexa_id.Text, vImg);
              SDScript1.SQL.Clear;
              SDScript1.SQL.Add('update exames set exa_etapa = 4 where exa_id = ' + QuotedStr(dmExames.qyExamesexa_id.Text));
              SDScript1.ExecSQL;
              memLog.Lines.Add(dmExames.qyExamesexa_id.Text);
              InsExamesLogs(dmExames.qyExamesexa_id.Text, '3', vgCodUsuarioLog);
            end
            else
            begin
              if MessageDlg('O exame ' + dmExames.qyExamesexa_id.Text + ' já possui imagem, ' + #13 +
                            'Deseja substituir?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
              begin
                FiltrarImagensZEOS('img_exame', '=', dmExames.qyExamesexa_id.Text, '0', '1');
                UpdImagensZEOS(dmExames.qyExamesexa_id.Text, vImg);
                SDScript1.SQL.Clear;
                SDScript1.SQL.Add('update exames set exa_etapa = 4 where exa_id = ' + QuotedStr(dmExames.qyExamesexa_id.Text));
                SDScript1.ExecSQL;
                memLog.Lines.Add(dmExames.qyExamesexa_id.Text);
                InsExamesLogs(dmExames.qyExamesexa_id.Text, '3', vgCodUsuarioLog);
              end;
            end;
          end;
          dmExames.qyExames.Prior;
        end;
        until dmExames.qyExames.Bof = true;
        MessageDlg('Processo concluído com sucesso!', mtInformation, [mbok], 0);
        FiltrarCitologiasFaixa('e.exa_id', 'between', vlExameInic, vlExameFin, '2', 'e.exa_id', '0')
      end;
    end
    else
      MessageDlg('O filtro não obteve exames!', mtWarning, [mbok], 0);
  end;
end;

procedure TfrmSelCIT.DBGrid1CalcCellColors(Sender: TObject; Field: TField;
  State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
  if dmExames.qyExamesexa_etapa.Value = 2 then
  begin
    AFont.Color := clBlue;
    //AFont.Style := [ fsStrikeOut ];
  end;
  if dmExames.qyExamesexa_etapa.Value = 4 then
  begin
    AFont.Color := clRed;
    AFont.Style := [ fsStrikeOut ];
  end;
end;

procedure TfrmSelCIT.DBGrid1DblClick(Sender: TObject);
begin
  vlExame := dmExames.qyExamesexa_id.Text;
  filtrar;
  selecionar;
end;

procedure TfrmSelCIT.DBGrid1DrawDataCell(Sender: TObject; const Rect: TRect;
  Field: TField; State: TGridDrawState);
begin
  if dmExames.qyExamesexa_etapa.Value = 2 then
    DBGrid1.Canvas.Font.Color := clRed;
  if dmExames.qyExamesexa_etapa.Value = 4 then
    DBGrid1.Canvas.Font.Color := clBlue;
end;

procedure TfrmSelCIT.DBGrid1TitleButtonClick(Sender: TObject;
  AFieldName: string);
begin
  if AFieldName = 'exa_id' then
    Ordenar;
end;

procedure TfrmSelCIT.edCitologiaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_TAB then
    btFiltrar.SetFocus;
  if ((key = VK_F4) or (key = VK_RETURN)) then
  Begin
    vlExame := edCitologia.Text;
    filtrarCIT;
    btFiltrar.SetFocus;
  end;
end;

procedure TfrmSelCIT.edCitologiaKeyPress(Sender: TObject; var Key: Char);
begin
  key := NumerosCit(key);
end;

procedure TfrmSelCIT.FormActivate(Sender: TObject);
begin
  inherited;
  dsLog.DataSet.Active := true;
  dsConsulta.DataSet.Active := true;
  limpar;
end;

procedure TfrmSelCIT.FormClose(Sender: TObject; var Action: TCloseAction);
Var
vExtra: String;
begin
  if vlCaptura = 'S' then
  begin
    vgTipoCaptura := 'C';
    vgIDCaptura := dmExames.qyExamesexa_id.Text;
    // Carrega módulo de captura enviando parâmetro User
    vExtra := vgPath + '\Captura.exe';
    if FileExists(vExtra) then
    begin
      WinExec(PAnsiChar(vExtra + ' U ' + vgCodUsuarioLog + ' 0'), 0)
    end
    else
      Messagedlg('Módulo Captura não instalado!', mtInformation,[mbok],0);
  end;
end;

procedure TfrmSelCIT.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #27) then
  begin
    if not(edCitologia.Focused) then
      inherited
    else
    begin
      edCitologia.Clear;
      btLimpar.SetFocus;
    end;
  end;
end;

end.
