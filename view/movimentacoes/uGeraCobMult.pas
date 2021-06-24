unit uGeraCobMult;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpFormNormal, Vcl.StdCtrls,
  Vcl.Buttons, Data.DB, Vcl.Menus, wwdblook, Vcl.Grids, Wwdbigrd, Wwdbgrid,
  Vcl.DBCtrls, Vcl.ExtCtrls;

type
  TfrmGeraCobMult = class(TfrmTmpFormNormal)
    dsConsulta: TDataSource;
    dsHistRec: TDataSource;
    dsReceber: TDataSource;
    dsRecTiss: TDataSource;
    dsTemp: TDataSource;
    Label1: TLabel;
    cbConvenio: TwwDBLookupCombo;
    Label2: TLabel;
    edNomePaciente: TEdit;
    btFiltrar: TBitBtn;
    btLimpar: TBitBtn;
    btProcedimentos: TBitBtn;
    popTemp: TPopupMenu;
    Excluir1: TMenuItem;
    Label3: TLabel;
    DBGrid1: TwwDBGrid;
    wwDBGrid1: TwwDBGrid;
    Panel1: TPanel;
    Label4: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    DBText6: TDBText;
    btAlterar: TBitBtn;
    btTiss: TBitBtn;
    procedure Selecionar;
    procedure Filtrar;
    procedure FiltrarExamesSelec;
    procedure Limpar(vVez: integer);
    procedure FormActivate(Sender: TObject);
    procedure btProcedimentosClick(Sender: TObject);
    procedure btFiltrarClick(Sender: TObject);
    procedure btLimparClick(Sender: TObject);
    procedure btFecharClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edNomePacienteKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Excluir1Click(Sender: TObject);
    procedure DBGrid1DrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
    procedure btAlterarClick(Sender: TObject);
    procedure btTissClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGeraCobMult: TfrmGeraCobMult;

implementation

{$R *.dfm}

uses dataConsultas, dataFinanceiro, dataLookups, uFuncoesFormatacao,
  uDaoConsultas, uVarGlobal, uDaoExamesProced, uProcedimentosCob, dataExames,
  UFuncoesTISS, uFuncoesDB, uDaoExamesCob, uFuncoesCob, uExameTISS;

procedure TfrmGeraCobMult.Selecionar;
Var
vExiste: boolean;
begin
  vExiste := false;
  if not(dmConsultas.qyConsGeraCobexa_id.IsNull) then
  begin
    if dmConsultas.qyConsGeraCobeco_valor.Value <> 0 then
    begin
      try
        dmConsultas.TempGeraCob.Last;
        repeat
        begin
          if dmConsultas.qyConsGeraCobexa_id.Text = dmConsultas.TempGeraCobexa_id.Text then
            vExiste := true;
          dmConsultas.TempGeraCob.Prior;
        end;
        until dmConsultas.TempGeraCob.Bof = true;
        if vExiste = false then
        begin
          dmConsultas.TempGeraCob.Append;
          dmConsultas.TempGeraCobexa_id.Text := dmConsultas.qyConsGeraCobexa_id.Text;
          dmConsultas.TempGeraCobexa_paciente.Text := dmConsultas.qyConsGeraCobexa_paciente.Text;
          dmConsultas.TempGeraCobexa_valor.Text := LimpaReal(dmConsultas.qyConsGeraCobeco_valor.Text);
          dmConsultas.TempGeraCob.Post;
          edNomePaciente.SetFocus;
        end
        else
        MessageDlg('O exame já foi inserido!', mtWarning, [mbok], 0);
      except
        MessageDlg('O exame não pode ser inserido!', mtError, [mbok], 0);
      end;
    end
    else
      MessageDlg('O exame não pode possuir o valor total zerado!', mtWarning, [mbok], 0);
  end
  else
    MessageDlg('Você deve selecionar um exame válido!', mtWarning, [mbok], 0);
end;

procedure TfrmGeraCobMult.btAlterarClick(Sender: TObject);
Var
vHisID: integer;
vExame: String;
vCodConv, vCodPac, vCodMed: integer;
vValor: real;
vVerifica: Integer;
vOK: boolean;
vCont: integer;
vNomeCli: String;
vCodCli, vCodCob: integer;
vValidaValor: boolean;
vPagoAntec: real;
vTotal: real;
begin
  vTotal := 0;
  FiltrarExamesSelec;
  if MessageDlg('Deseja realmente gerar a cobrança dos exames selecionados!', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    //testa se não existe exame com valor zerado
    vValidaValor := true;
    dmConsultas.qyConsGeraCob.Last;
    repeat
    begin
      dmConsultas.qyConsGeraCob.Edit;
      dmConsultas.qyConsGeraCobeco_gerarcob.Value := true;
      dmConsultas.qyConsGeraCob.Post;
      if TestaValorProced(dmConsultas.qyConsGeraCobexa_id.Text) = false then
      begin
        vValidaValor := false;
        MessageDlg('O exame ' + dmConsultas.qyConsGeraCobexa_id.Text + ' possui o valor zerado!', mtError, [mbok], 0);
      end;
      dmConsultas.qyConsGeraCob.Prior;
    end;
    until dmConsultas.qyConsGeraCob.Bof = true;
    if vValidaValor = true then
    begin
      if not(dmLookups.lkProcCobrancacob_codigo.Value = 0) then //Paciente paga
      begin
        vPagoAntec := 0;
        vValor := 0;
        vVerifica := 0;
        vCont := 0;
        vCodConv := 0;
        vCodCli := 0;
        vHisID := GetCodigo('his_id', 'histrec');
        dmConsultas.qyConsGeraCob.Last;
        vOk := true;
        //if dmExames.lkCobrancacob_codigo.Value = 0 then //Paciente paga
        //vVerifica := dmConsultas.qyConsGeraCobpac_codigo.Value;
        if dmLookups.lkProcCobrancacob_codigo.Value = 1 then //Médico paga
          vVerifica := dmConsultas.qyConsGeraCobmed_codigo.Value;
        if dmLookups.lkProcCobrancacob_codigo.Value = 2 then //Convênio paga
          vVerifica := dmConsultas.qyConsGeraCobcov_codigo.Value;
        //testa para verificar se todos os exames são de um só cliente
        repeat
        begin
          if dmConsultas.qyConsGeraCobeco_gerarcob.Value = true then
          begin
            if dmLookups.lkProcCobrancacob_codigo.Value = 0 then //Paciente paga
              if not dmConsultas.qyConsGeraCobpac_codigo.Value = vVerifica then
                vOK := false;
            if dmLookups.lkProcCobrancacob_codigo.Value = 1 then //Médico paga
              if not dmConsultas.qyConsGeraCobmed_codigo.Value = vVerifica then
                vOK := false;
            if dmLookups.lkProcCobrancacob_codigo.Value = 2 then //Convênio paga
              if not dmConsultas.qyConsGeraCobcov_codigo.Value = vVerifica then
                vOK := false;
            vCont := vCont + 1;
            dmConsultas.qyConsGeraCob.Prior;
          end
          else
            dmConsultas.qyConsGeraCob.Prior;
        end;
        until dmConsultas.qyConsGeraCob.BOF = true;
        if vCont = 0 then
          vOk := false;
        if vOk = true then
        begin

          //Gera histórico
          dmConsultas.qyConsGeraCob.Last;
          repeat
          begin
            if dmConsultas.qyConsGeraCobeco_gerarcob.Value = true then
            begin
              vExame := dmConsultas.qyConsGeraCobexa_id.Text;
              vCodConv := dmConsultas.qyConsGeraCobcov_codigo.Value;
              vCodPac := dmConsultas.qyConsGeraCobpac_codigo.Value;
              vCodMed := dmConsultas.qyConsGeraCobmed_codigo.Value;
              vValor := dmConsultas.qyConsGeraCobeco_valor.Value;
              //Filtra valores pagos antecipadamente
              FiltrarExamesCob('exa_id', '=', vExame, '0', '0');
              vPagoAntec := vPagoAntec + dmFinanceiro.qyExamesCobeco_vlrpago.Value;
              GeraHistMult(vExame, vHisId, vCodConv, vCodPac, vCodMed, vValor);
            end;
            dmConsultas.qyConsGeraCob.Prior;
          end;
          until dmConsultas.qyConsGeraCob.BOF = true;

          //Gera cobrança
          vCodCob := dmLookups.lkProcCobrancacob_codigo.Value;
          if dmLookups.lkProcCobrancacob_codigo.Value = 0 then //Paciente paga
          begin
            vCodCli := dmConsultas.qyConsGeraCobpac_codigo.Value;
            vNomeCli := dmConsultas.qyConsGeraCobexa_paciente.Text;
          end;
          if dmLookups.lkProcCobrancacob_codigo.Value = 1 then //Médico paga
          begin
            vCodCli := dmConsultas.qyConsGeraCobmed_codigo.Value;
            vNomeCli := dmConsultas.qyConsGeraCobexa_medico.Text;
          end;
          if dmLookups.lkProcCobrancacob_codigo.Value = 2 then //Convênio paga
          begin
            vCodCli := dmConsultas.qyConsGeraCobcov_codigo.Value;
            vNomeCli := dmConsultas.qyConsGeraCobexa_convenio.Text;
          end;
          //busca valor total
          vValor := BuscaVlrHist(IntToStr(vHisID));
          if vValor <> -1 then
          begin
            vValor := dmConsultas.QTemp.Fields[0].Value;
            GeraCobMult(vNomeCli, vCodConv, vCodCli, vCodCob, vValor, vHisID, vPagoAntec);
            Limpar(0);
          end
          else
            MessageDlg('Não foi possível gerar a cobrança!', mtError, [mbok], 0);
        end;
      end
      else
        MessageDlg('Não é possível gerar cobranças múltiplas para convênio: Particular!', mtWarning, [mbok], 0);
    end
    else
      MessageDlg('Não é possível gerar cobranças múltiplas com valores zerados!', mtWarning, [mbok], 0);
    dsTemp.DataSet.Close;
    dsTemp.DataSet.Open;
  end;
end;

procedure TfrmGeraCobMult.btFecharClick(Sender: TObject);
begin
  dmConsultas.qyConsGeraCob.Refresh;
  inherited;
end;

procedure TfrmGeraCobMult.btFiltrarClick(Sender: TObject);
begin
  if cbConvenio.Text <> '' then
    Filtrar
  else
    MessageDlg('Você deve selecionar um ' + label1.Caption + '!', mtWarning, [mbOk], 0);
end;

procedure TfrmGeraCobMult.btLimparClick(Sender: TObject);
begin
  Limpar(1);
end;

procedure TfrmGeraCobMult.btProcedimentosClick(Sender: TObject);
begin
  //Envia variável com ID do Convênio
  vgIDConvGeraCob := dmConsultas.qyConsGeraCobcov_codigo.Text;
  FiltrarExamesProced('e.exa_id', '=', dmConsultas.qyConsGeraCobexa_id.Text, '0', '0');
  vgNumExameCob := dmConsultas.qyConsGeraCobexa_id.Text;
  frmProcedimentosCob.Caption := 'Procedimentos do exame: ' + dmConsultas.qyConsGeraCobexa_id.Text;
  frmProcedimentosCob.ShowModal;
end;

procedure TfrmGeraCobMult.btTissClick(Sender: TObject);
begin
  vgExameTISS := dmConsultas.qyConsGeraCobexa_id.Text;
  frmExameTISS.ShowModal;
end;

procedure TfrmGeraCobMult.DBGrid1DblClick(Sender: TObject);
begin
  Selecionar;
end;

procedure TfrmGeraCobMult.DBGrid1DrawDataCell(Sender: TObject;
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

procedure TfrmGeraCobMult.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    Selecionar;
  if key = #27 then
    edNomePaciente.SetFocus;
end;

procedure TfrmGeraCobMult.edNomePacienteKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
    if cbConvenio.Text <> '' then
      Filtrar
    else
      MessageDlg('Você deve selecionar um ' + label1.Caption + '!', mtWarning, [mbOk], 0);
  end;
end;

procedure TfrmGeraCobMult.Excluir1Click(Sender: TObject);
begin
  if MessageDlg('Deseja realmente excluir o registro?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    dmConsultas.TempGeraCob.Delete;
end;

procedure TfrmGeraCobMult.Filtrar;
Var
vNomePac, vCodCli: String;
vCodCob: Integer;

begin
  vCodCob := 2;
  vNomePac := edNomePaciente.Text;
  if vCodCob = 2 then
    vCodCli := dmLookups.lkProcConvenioscov_codigo.Text;
  if vCodCob= 0 then
    vCodCli := dmLookups.lkProcPacientespac_codigo.Text;
  if vCodCob = 1 then
    vCodCli := dmLookups.lkprocMedicosmed_codigo.Text;
  FiltrarGeraCobMult(vNomePac, vCodCob, vCodCli);
  DBGrid1.SetFocus;
end;

procedure TfrmGeraCobMult.FiltrarExamesSelec;
Var
vGeraIDs: String;
begin
  dmConsultas.TempGeraCob.Last;
  //Pega ID's dos exames selecionados
  vGeraIDs := 'and(';
  Repeat
  begin
    vGeraIDs := vGeraIDs + '(e.exa_id = ' + QuotedStr(dmConsultas.TempGeraCobexa_id.Text) + ')';
    dmConsultas.TempGeraCob.Prior;
    if dmConsultas.TempGeraCob.Bof = false then
      vGeraIDs := vGeraIDs + ' or ';
  end;
  Until dmConsultas.TempGeraCob.Bof = true;
  vGeraIDs := vGeraIDs + ')';
  FiltrarExamesSelecDB(vGeraIDs);
end;

procedure TfrmGeraCobMult.FormActivate(Sender: TObject);
begin
  inherited;
  dsConsulta.DataSet := dmConsultas.qyConsGeraCob;
  dsTemp.DataSet.Active := true;
  dsConsulta.DataSet.Active := true;
  dsHistRec.DataSet.Active := true;
  dsReceber.DataSet.Active := true;
  dsRecTiss.DataSet.Active := true;
  Limpar(0);
end;

procedure TfrmGeraCobMult.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dsTemp.DataSet.Close;
  inherited;
end;

procedure TfrmGeraCobMult.FormKeyPress(Sender: TObject; var Key: Char);
begin
  //
end;

procedure TfrmGeraCobMult.Limpar(vVez: integer);
begin
  edNomePaciente.Clear;
  dmLookups.lkProcCobranca.First;
  //limpa cbConvenio
  cbConvenio.Enabled := false;
  cbConvenio.Clear;
  cbConvenio.LookupField := '';
  cbConvenio.Selected.Clear;
  cbConvenio.Hint := '';
  cbConvenio.LookupTable := dmLookups.lkProcConvenios;
  cbConvenio.LookupField := 'cov_descricao';
  cbConvenio.Enabled := true;
  cbConvenio.Hint := 'Selecione o convênio';
  cbConvenio.Text := 'UNIMED';
  cbConvenio.PerformSearch;
  Label1.Caption := 'Convênio';
  FiltrarNaoCobrados(dmLookups.lkProcConvenioscov_codigo.Text);
  cbConvenio.SetFocus;
  if vVez = 1 then
  begin
    if MessageDlg('Deseja apagar também os exames já selecionados?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      dsTemp.DataSet.Close;
      dsTemp.DataSet.Open;
    end;
  end;
end;

end.
