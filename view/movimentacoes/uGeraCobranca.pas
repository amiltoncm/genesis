unit uGeraCobranca;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpFormNormal, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Grids, Wwdbigrd, Wwdbgrid, wwdblook, Data.DB;

type
  TfrmGeraCobranca = class(TfrmTmpFormNormal)
    dsRecTiss: TDataSource;
    dsConsulta: TDataSource;
    dsHistRec: TDataSource;
    dsReceber: TDataSource;
    cbConvenio: TwwDBLookupCombo;
    btFiltrar: TBitBtn;
    btLimpar: TBitBtn;
    btProcedimentos: TBitBtn;
    DBGrid1: TwwDBGrid;
    btCortesia: TBitBtn;
    btAlterar: TBitBtn;
    Label1: TLabel;
    procedure Filtrar;
    procedure Limpar;
    procedure FiltrarCob(vfIDExame: String);
    procedure FormActivate(Sender: TObject);
    procedure btLimparClick(Sender: TObject);
    procedure btFiltrarClick(Sender: TObject);
    procedure btAlterarClick(Sender: TObject);
    procedure btCortesiaClick(Sender: TObject);
    procedure btProcedimentosClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGeraCobranca: TfrmGeraCobranca;

implementation

{$R *.dfm}

uses dataFinanceiro, dataConsultas, dataExames, dataLookups, uDaoConsultas,
  uDaoReceber, uFuncoesCob, uDaoExamesCob, uProcedimentosCob, uDaoExamesProced,
  uVarGlobal;

procedure TfrmGeraCobranca.btAlterarClick(Sender: TObject);
Var
vTipoExame, vEtapa: integer;
vExame, vNomeCli: String;
vCodConv, vCodCli, vCodCob, vCodPac, vCodMed: Integer;
vValor, vRecebido: real;
begin
  FiltrarCob(dmConsultas.qyConsGeraCobexa_id.Text);
  if not(dmConsultas.qyConsGeraCobexa_id.IsNull) then
  begin
    //inicializa variáveis
    vCodCli := 0;
    vCodCob := 0;
    vTipoExame := dmConsultas.qyConsGeraCobetp_id.Value;
    vEtapa := dmConsultas.qyConsGeraCobexa_etapa.Value;
    vExame := dmConsultas.qyConsGeraCobexa_id.Text;
    vCodConv := dmConsultas.qyConsGeraCobcov_codigo.Value;
    vCodPac := dmConsultas.qyConsGeraCobpac_codigo.Value;
    vCodMed := dmConsultas.qyConsGeraCobmed_codigo.Value;
    if vCodConv = 0 then //Caso seja particular
    begin
      vCodCli := dmConsultas.qyConsGeraCobpac_codigo.Value;
      vNomeCli := dmConsultas.qyConsGeraCobexa_paciente.Text;
      vCodCob := vCodConv;
    end;
    if vCodConv = 1 then //Caso seja particular, e o médico pague
    begin
      vCodCli := dmConsultas.qyConsGeraCobmed_codigo.Value;
      vNomeCli := dmConsultas.qyConsGeraCobexa_medico.Text;
      vCodCob := vCodConv;
    end;
    if vCodConv > 1 then //Caso seja conveniado
    begin
      vCodCli := dmConsultas.qyConsGeraCobcov_codigo.Value;
      vNomeCli := dmConsultas.qyConsGeraCobexa_convenio.Text;
      vCodCob := 2;
    end;
    vValor := dmConsultas.qyConsGeraCobeco_valor.Value;
    vRecebido := dmConsultas.qyConsGeraCobeco_vlrpago.Value;
    if vValor > 0 then
    begin
      if ((vTipoExame = 0) or (vTipoExame = 1) or (vTipoExame = 5)) then
      begin
        if (((vTipoExame = 0) and (vEtapa >= 6)) or ((vTipoExame = 1) and (vEtapa >= 6)) or
            (vTipoExame = 5) and (vEtapa >= 6)) then
          GeraCobranca(vExame, vNomeCli, vCodConv, vCodCli, vCodCob, vCodPac, vCodMed, vValor, vRecebido)
        else
          MessageDlg('A Citologia não foi impressa!', mtWarning, [mbOk], 0);
      end;
      if ((vTipoExame = 2) or (vTipoExame = 3)) then
      begin
        if (vEtapa >= 8) then
          GeraCobranca(vExame, vNomeCli, vCodConv, vCodCli, vCodCob, vCodPac, vCodMed, vValor, vRecebido)
        else
          MessageDlg('A Histologia não foi impressa!', mtWarning, [mbOk], 0);
      end;
      if ((vTipoExame = 4) or (vTipoExame = 6)) then
      begin
        if (vEtapa = 5) then
          GeraCobranca(vExame, vNomeCli, vCodConv, vCodCli, vCodCob, vCodPac, vCodMed, vValor, vRecebido)
        else
          MessageDlg('A Imuno / Captura não foi concluída!', mtWarning, [mbOk], 0);
      end;
    end
    else
      MessageDlg('Não foram gerados valores para cobrança!' + #13 +
       'Verifique a etapa do exame, ou os procedimentos selecionados!',
       mtWarning, [mbok], 0);
    end
  else
    MessageDlg('Não é possível gerar cobrança com a tabela vazia!', mterror, [mbok], 0);
end;

procedure TfrmGeraCobranca.btCortesiaClick(Sender: TObject);
Var
vExame: String;
begin
  if MessageDlg('Deseja realmente baixar como cortesia?' + #13 + 'Caso opte por SIM não será gerado cobrança!',
   mtWarning, [mbYes, mbNo], 0) = mrYes then
  begin
    vExame := dmConsultas.qyConsGeraCobexa_id.Text;
    FiltrarExamesCob('exa_id', '=', vExame, '0', '0');
    if not dmFinanceiro.qyExamesCobexa_id.IsNull then
    begin
      dmFinanceiro.qyExamesCob.Edit;
      dmFinanceiro.qyExamesCobeco_status.Value := true;
      dmFinanceiro.qyExamesCob.Post;
      dmConsultas.qyConsGeraCob.Refresh;
      MessageDlg('Exame baixado com sucesso!', mtInformation, [mbok], 0);
    end
    else
      MessageDlg('Não foi possível baixar o exame!', mtError, [mbok], 0);
  end;
end;

procedure TfrmGeraCobranca.btFiltrarClick(Sender: TObject);
begin
  if cbConvenio.Text <> '' then
    Filtrar
  else
    MessageDlg('Você deve selecionar um convênio!', mtWarning, [mbOk], 0);
end;

procedure TfrmGeraCobranca.btLimparClick(Sender: TObject);
begin
  Limpar;
end;

procedure TfrmGeraCobranca.btProcedimentosClick(Sender: TObject);
begin
  FiltrarExamesProced('exa_id', '=', dmConsultas.qyConsGeraCobexa_id.Text, '0', '0');
  vgNumExameCob := dmConsultas.qyConsGeraCobexa_id.Text;
  vgIDConvGeraCob := dmConsultas.qyConsGeraCobcov_codigo.Text;
  frmProcedimentosCob.Caption := 'Procedimentos do exame: ' + dmConsultas.qyConsGeraCobexa_id.Text;
  frmProcedimentosCob.ShowModal;
end;

procedure TfrmGeraCobranca.Filtrar;
begin
  FiltrarGeraCobranca(dmLookups.lkProcConvenios.Text);
end;

procedure TfrmGeraCobranca.Limpar;
begin
  cbConvenio.Clear;
  LimparGeraCobranca;
  //Filtra a tabela Receber
  FiltrarReceber('r.rec_codigo', '=', '0', '0', '0');
  cbConvenio.SetFocus;
end;

procedure TfrmGeraCobranca.FiltrarCob(vfIDExame: String);
begin
  FiltrarCobGeraCobranca(vfIDExame);
end;

procedure TfrmGeraCobranca.FormActivate(Sender: TObject);
begin
  inherited;
  dsConsulta.DataSet.Active := true;
  dsHistRec.DataSet.Active := true;
  dsReceber.DataSet.Active := true;
  dsRecTiss.DataSet.Active := true;
  Limpar;
end;

end.
