unit uConsReceber;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpFormNormal, Vcl.StdCtrls,
  Vcl.Buttons, Data.DB, Vcl.Mask, wwdbedit, Wwdotdot, Wwdbcomb, Vcl.ExtCtrls,
  Vcl.Grids, Wwdbigrd, Wwdbgrid, Vcl.DBCtrls;

type
  TfrmConsReceber = class(TfrmTmpFormNormal)
    dsConsulta: TDataSource;
    dsExames: TDataSource;
    dsObs: TDataSource;
    Label1: TLabel;
    edDescricao: TEdit;
    Label2: TLabel;
    cbStatus: TwwDBComboBox;
    btFiltrar: TBitBtn;
    btLimpar: TBitBtn;
    btEditar: TBitBtn;
    DBGrid1: TwwDBGrid;
    Label8: TLabel;
    Label9: TLabel;
    Label5: TLabel;
    Label10: TLabel;
    edCodigo: TEdit;
    btExportar: TBitBtn;
    btVoltar: TBitBtn;
    Bevel1: TBevel;
    Label6: TLabel;
    edNumExame: TEdit;
    btAlterar: TBitBtn;
    Label3: TLabel;
    GridExames: TwwDBGrid;
    Label4: TLabel;
    wwDBGrid1: TwwDBGrid;
    Label7: TLabel;
    DBText1: TDBText;
    btExcluir: TBitBtn;
    btMatGuia: TBitBtn;
    procedure Limpar;
    procedure Filtrar;
    procedure FormActivate(Sender: TObject);
    procedure dsConsultaDataChange(Sender: TObject; Field: TField);
    procedure btFiltrarClick(Sender: TObject);
    procedure btLimparClick(Sender: TObject);
    procedure DBGrid1CalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure btAlterarClick(Sender: TObject);
    procedure GridExamesCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
    procedure btExcluirClick(Sender: TObject);
    procedure btVoltarClick(Sender: TObject);
    procedure btExportarClick(Sender: TObject);
    procedure btEditarClick(Sender: TObject);
    procedure btMatGuiaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsReceber: TfrmConsReceber;

implementation

{$R *.dfm}

uses dataConsultas, UFuncoesTISS, uFuncoesCob, dataFinanceiro, dataExames,
  uDaoReceber, uDaoConsultas, uConfAltReceber, uConfCobranca, uEditMatGuia,
  uDaoExames, uDaoRecTISS, uDaoRecObs, uDaoExamesCito, uDaoExamesCob,
  uDaoHistRec, uExportaCob;

procedure TfrmConsReceber.FormActivate(Sender: TObject);
begin
  inherited;
  Limpar;
end;

procedure TfrmConsReceber.GridExamesCalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
  if (dsExames.DataSet.FieldByName('his_status').Text = 'N') then
    aFont.Color := clBlack
  else
    if (dsExames.DataSet.FieldByName('his_status').Text = 'S') then
      AFont.Color := clGreen;
  if edNumExame.Text <> '' then
  begin
    if (dsExames.DataSet.FieldByName('exa_id').Text = edNumExame.Text) then
    Begin
      AFont.Color := clRed;
      AFont.Style := [ fsunderline ];
    end
    else
    begin
      if (dsExames.DataSet.FieldByName('his_status').Text = 'N') then
        aFont.Color := clBlack
      else
        if (dsExames.DataSet.FieldByName('his_status').Text = 'S') then
          AFont.Color := clGreen;
    end;
  end;
end;

procedure TfrmConsReceber.Limpar;
begin
  edDescricao.Clear;
  edNumExame.Clear;
  cbStatus.ItemIndex := 2;
  //Listar tabela receber
  ListarConsReceber('T', 'rec_vencimento, rec_codigo', '0');
  //Filtra tabela histrec
  if not(dmConsultas.qyConsReceberhis_id.IsNull) then
    FiltrarConsRecExames(dmConsultas.qyConsReceberhis_id.Text)
  else
    FiltrarConsRecExames('0');
  //filtra tabela recobs
  if not(dmConsultas.qyConsReceberrec_codigo.IsNull) then
    FiltrarConsRecObs(dmConsultas.qyConsReceberrec_codigo.Text)
  else
    FiltrarConsRecObs('0');
  edDescricao.SetFocus;
end;

procedure TfrmConsReceber.btAlterarClick(Sender: TObject);
begin
  if edNumExame.Text <> '' then
  begin
    edDescricao.Clear;
    //filtra tabela histrec conforme número de exame
    FiltrarConsRecExamesID(edNumExame.Text);
    //filtra tabela receber buscando apenas a cobrança conforme histrec
    if not(dmConsultas.qyConsRecExameshis_id.IsNull) then
      FiltrarConsReceber(dmConsultas.qyConsRecExameshis_id.Text)
    else
      FiltrarConsReceber('0');
    //filtra tabela recobs
    if not(dmConsultas.qyConsReceberrec_codigo.IsNull) then
      FiltrarConsRecObs(dmConsultas.qyConsReceberrec_codigo.Text)
    else
      FiltrarConsRecObs('0');
    if (dmConsultas.qyConsRecExameshis_id.IsNull) then
    begin
      MessageDlg('Ainda não foi gerado cobrança do exame: ' + edNumExame.Text, mtInformation, [mbok], 0);
      Limpar;
    end
  end
  else
    MessageDlg('Você deve digitar o número de algum exame!', mtWarning, [mbOk], 0);
end;

procedure TfrmConsReceber.btEditarClick(Sender: TObject);
begin
  if dmConsultas.qyConsReceberrec_status.Text = 'A' then
  begin
    if MessageDlg('Deseja realmente alterar valores da cobrança?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      FiltrarReceber('r.rec_codigo', '=', dmConsultas.qyConsReceberrec_codigo.Text, '0', '0');
      frmConfAltReceber.ShowModal;
      dmConsultas.qyConsReceber.Refresh;
    end;
  end
  else
    MessageDlg('A cobrança já foi baixada e não pode ser alterada!', mtWarning, [mbok], 0);
end;

procedure TfrmConsReceber.btExcluirClick(Sender: TObject);
begin
  if dmConsultas.qyConsReceberrec_status.Text = 'A' then
  begin
    if (TestaExameTiss(dmConsultas.qyConsRecExamesexa_id.Text) = true) then
    begin
      if messagedlg('Deseja realmente o exame ' + dmConsultas.qyConsRecExamesexa_id.Text + ' da cobrança ' + dmConsultas.qyConsReceberrec_codigo.Text + '?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        ExcluiCobPkg(dmConsultas.qyConsRecExamesexa_id.Text);
    end
    else
      if MessageDlg('O TISS da cobrança ' + dmConsultas.qyConsReceberrec_codigo.Text + ' já foi gerada!' + #13 + 'Deseja excluir assim mesmo?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        ExcluiCobPkg(dmConsultas.qyConsRecExamesexa_id.Text);
  end
  else
    MessageDlg('A cobrança ' + dmConsultas.qyConsReceberrec_codigo.Text + ' já foi baixada e não pode ser alterada!', mtWarning, [mbok], 0);
end;

procedure TfrmConsReceber.btExportarClick(Sender: TObject);
begin
  FiltrarExportaCob(dmConsultas.qyConsReceberhis_id.Text);
  frmExportaCob.ShowModal;
end;

procedure TfrmConsReceber.btFiltrarClick(Sender: TObject);
begin
  Filtrar;
end;

procedure TfrmConsReceber.btLimparClick(Sender: TObject);
begin
  Limpar;
end;

procedure TfrmConsReceber.btMatGuiaClick(Sender: TObject);
begin
  if dmConsultas.qyConsReceberrec_status.Text = 'A' then
  begin
    if MessageDlg('Deseja realmente alterar Guia / Matrícula do exame?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      FiltrarExames('e.exa_id', '=', dmConsultas.qyConsRecExamesexa_id.Text, '0', '0');
      if not(dmExames.qyExamesexa_id.IsNull) then
        frmEditMatGuia.ShowModal;
    end;
  end
  else
    MessageDlg('A cobrança já foi baixada e não pode ser alterada!', mtWarning, [mbok], 0);
end;

procedure TfrmConsReceber.btVoltarClick(Sender: TObject);
Var
vNovoVlrPago, vNovoValor: real;
begin
  if dmConsultas.qyConsReceberrec_codigo.Text <> '' then
  begin
    if TestaExameTiss(dmConsultas.qyConsRecExamesexa_id.Text) = true then
    begin
      if dmConsultas.qyConsReceberrec_status.Text = 'A' then
      begin
        if messageDlg('Deseja realmente cancelar a cobrança?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        begin
          vNovoVlrPago := 0;
          vNovoValor := 0;
          //Excluir RecTiss
          FiltrarRecTISS('rec_codigo', '=', dmConsultas.qyConsReceberrec_codigo.Text, '0', '0');
          if not(dmFinanceiro.qyRecTissrec_codigo.IsNull) then
            dmFinanceiro.qyRecTiss.delete;
          //Excluir RecObs
          FiltrarRecObs('rec_codigo', '=', dmConsultas.qyConsReceberrec_codigo.Text, '0', '0');
          if not(dmFinanceiro.qyRecObsrec_codigo.IsNull) then
            ExcluirRecObs(dmConsultas.qyConsReceberrec_codigo.Text);
           //Voltar campos examescob (editar)
          FiltrarExamesCob('his_id', '=', dmConsultas.qyConsReceberrec_codigo.Text, '0', '0');
          if not(dmFinanceiro.qyExamesCobhis_id.IsNull) then
            BackExamesCob(dmConsultas.qyConsReceberrec_codigo.Text);
          //deletar histrec
          FiltrarHistRec('h.his_id', '=', dmConsultas.qyConsReceberrec_codigo.Text, '0', '0');
          if not(dmFinanceiro.qyHistRechis_id.IsNull) then
            ExcluirHistRec(dmConsultas.qyConsReceberrec_codigo.Text);
          //excluir cobrança
          dmFinanceiro.QTemp.Close;
          dmFinanceiro.QTemp.SQL.Clear;
          dmFinanceiro.QTemp.SQL.Add('select sum(eco_vlrpago) from examescob ');
          dmFinanceiro.QTemp.SQL.Add('where his_id = ');
          dmFinanceiro.QTemp.SQL.Add(QuotedStr(dmConsultas.qyConsReceberhis_id.Text));
          dmFinanceiro.QTemp.Open;
          if not(dmFinanceiro.QTemp.Fields[0].IsNull) then
            vNovoVlrPago := dmFinanceiro.QTemp.Fields[0].Value
          else
            vNovoValor := 0;
          FiltrarReceber('r.rec_codigo', '=', dmConsultas.qyConsReceberrec_codigo.Text, '0', '0');
          EdtReceber;
          dmFinanceiro.qyReceberrec_valor.Value := vNovoValor;
          dmFinanceiro.qyReceberrec_acrescimo.Value := 0;
          dmFinanceiro.qyReceberrec_desconto.Value := 0;
          dmFinanceiro.qyReceberrec_pago.Value := vNovoVlrPago;
          dmFinanceiro.qyReceberrec_saldo.Value := vNovoValor - vNovoVlrPago;
          if vNovoValor = 0 then
          begin
            dmFinanceiro.qyReceberrec_status.Text := 'E';
            InsRecObs;
            dmFinanceiro.qyRecObsrob_data.Value := now;
            dmFinanceiro.qyRecObsrec_codigo.Text := dmConsultas.qyConsReceberrec_codigo.Text;
            dmFinanceiro.qyRecObsrob_obs.Text := 'Excluído título: todo os exames foram excluídos!';
            PostRecObs;
          end;
          PostReceber;
          //abre janela para confirmação
          frmConfCobranca.ShowModal;
          dsExames.DataSet.Refresh;
          dsConsulta.DataSet.Refresh;
          dsObs.DataSet.Refresh;
        end;
      end
      else
        MessageDlg('A cobrança ' + dmConsultas.qyConsReceberrec_codigo.Text + ' já foi baixada e não pode ser alterada!', mtWarning, [mbok], 0);
    end
    else
      MessageDlg('A Guia do TISS da cobrança ' + dmConsultas.qyConsReceberrec_codigo.Text + ' já foi gerada e não pode ser alterada!', mtWarning, [mbok], 0);
    end
      else
        MessageDlg('Não existe cobrança selecionada!', mtWarning, [mbok], 0);
end;

procedure TfrmConsReceber.DBGrid1CalcCellColors(Sender: TObject; Field: TField;
  State: TGridDrawState; Highlight: Boolean; AFont: TFont; ABrush: TBrush);
begin
  if (dsConsulta.DataSet.FieldByName('rec_status').Text = 'A') then
    aFont.Color := clBlack
  else
    if (dsConsulta.DataSet.FieldByName('rec_status').Text = 'P') then
      AFont.Color := clGreen;
        if (dsConsulta.DataSet.FieldByName('rec_status').Text = 'E') then
        begin
          AFont.Color := clRed;
          AFont.Style := [ fsStrikeOut ];
        end;
end;

procedure TfrmConsReceber.dsConsultaDataChange(Sender: TObject; Field: TField);
begin
  //filtra tabela histrec
  if not(dmConsultas.qyConsReceberhis_id.IsNull) then
    FiltrarConsRecExames(dmConsultas.qyConsReceberhis_id.Text)
  else
    FiltrarConsRecExames('0');
  //filtra tabela recobs
  if not(dmConsultas.qyConsReceberrec_codigo.IsNull) then
    FiltrarConsRecObs(dmConsultas.qyConsReceberrec_codigo.Text)
  else
    FiltrarConsRecObs('0');
end;

procedure TfrmConsReceber.Filtrar;
Var
vStatus: String;
begin
  if cbStatus.ItemIndex = 0 then
    vStatus := 'A';
  if cbStatus.ItemIndex = 1 then
    vStatus := 'P';
  if cbStatus.ItemIndex = 2 then
    vStatus := 'T';
  edNumExame.Clear;
  //filtra tabela receber
  FiltrarConsReceberPar(edDescricao.Text, vStatus);
  //filtra tabela histrec
  if not(dmConsultas.qyConsReceberhis_id.IsNull) then
    FiltrarConsRecExames(dmConsultas.qyConsReceberhis_id.Text)
  else
    FiltrarConsRecExames('0');
  //filtra tabela recobs
  if not(dmConsultas.qyConsReceberrec_codigo.IsNull) then
    FiltrarConsRecObs(dmConsultas.qyConsReceberrec_codigo.Text)
  else
    FiltrarConsRecObs('0');
end;

end.
