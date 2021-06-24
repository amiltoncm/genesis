unit uBxDupCli;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpFormMDI, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, wwdblook;

type
  TfrmBxDupCli = class(TfrmTmpFormMDI)
    Label2: TLabel;
    cbTpCliente: TwwDBLookupCombo;
    Label1: TLabel;
    cbConvenio: TwwDBLookupCombo;
    Label3: TLabel;
    edID: TEdit;
    btFiltrar: TBitBtn;
    btLimpar: TBitBtn;
    DBGrid1: TDBGrid;
    dsDuplicatas: TDataSource;
    btBaixar: TBitBtn;
    pnStatus: TPanel;
    procedure Baixar;
    procedure Opcao;
    procedure Filtrar;
    procedure Limpar;
    procedure FormActivate(Sender: TObject);
    procedure btFiltrarClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btLimparClick(Sender: TObject);
    procedure btBaixarClick(Sender: TObject);
    procedure cbTpClienteExit(Sender: TObject);
    procedure cbTpClienteKeyPress(Sender: TObject; var Key: Char);
    procedure cbConvenioClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure cbConvenioKeyPress(Sender: TObject; var Key: Char);
    procedure edIDKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBxDupCli: TfrmBxDupCli;

implementation

{$R *.dfm}

uses dataFinanceiro, dataLookups, uDaoReceber, uConfBxDupCli;

procedure TfrmBxDupCli.Baixar;
begin
  FiltrarReceber('r.rec_codigo', '=', dmFinanceiro.qyReceberrec_codigo.Text, '0', '0');
  frmConfBxDupCli.ShowModal;
end;

procedure TfrmBxDupCli.Opcao;
Var
vOpcao: integer;
begin
  vOpcao := dmLookups.lkProcCobrancacob_codigo.Value;
  cbConvenio.Enabled := false;
  cbConvenio.Clear;
  cbConvenio.LookupField := '';
  cbConvenio.Selected.Clear;
  cbConvenio.Hint := '';
  if cbTpCliente.Text <> '' then
  begin
    if vOpcao = 2 then
    begin
      cbConvenio.LookupTable := dmLookups.lkProcConvenios;
      cbConvenio.LookupField := 'cov_descricao';
      cbConvenio.Enabled := true;
      cbConvenio.Hint := 'Selecione o convênio';
      cbConvenio.Text := dmLookups.lkProcConvenioscov_descricao.Text;
      Label1.Caption := 'Convênio';
    end
    else
      if vOpcao = 0 then
      begin
        cbConvenio.LookupTable := dmLookups.lkProcPacientes;
        cbConvenio.LookupField := 'pac_nome';
        cbConvenio.Enabled := true;
        cbConvenio.Text := dmLookups.lkProcPacientespac_nome.Text;
        cbConvenio.Hint := 'Selecione o paciente';
        Label1.Caption := 'Paciente';
      end
      else
        if vOpcao = 1 then
        begin
          cbConvenio.LookupTable := dmLookups.lkProcMedicos;
          cbConvenio.LookupField := 'med_nome';
          cbConvenio.Enabled := true;
          cbConvenio.Hint := 'Selecione o médico';
          Label1.Caption := 'Médico';
          cbConvenio.Text := dmLookups.lkProcMedicosmed_nome.Text;
        end
        else
        begin
          cbConvenio.LookupTable := dmLookups.lkProcConvenios;
          cbConvenio.LookupField := 'cov_descricao';
          cbConvenio.Enabled := true;
          cbConvenio.Hint := 'Selecione o convênio';
          cbConvenio.Text := dmLookups.lkProcConvenioscov_descricao.Text;
          Label1.Caption := 'Convênio';
        end;
    cbConvenio.SetFocus;
    cbConvenio.PerformSearch;
  end
  else
    MessageDlg('Você deve selecionar um responsável pelo pagamento!', mtError, [mbok], 0);
end;

procedure TfrmBxDupCli.btBaixarClick(Sender: TObject);
begin
  Baixar;
end;

procedure TfrmBxDupCli.btFiltrarClick(Sender: TObject);
begin
  if cbConvenio.Text <> '' then
    Filtrar
  else
    MessageDlg('Você deve selecionar um ' + label1.Caption + '!', mtWarning, [mbOk], 0);
end;

procedure TfrmBxDupCli.btLimparClick(Sender: TObject);
begin
  Limpar;
end;

procedure TfrmBxDupCli.cbConvenioClick(Sender: TObject);
begin
  Opcao;
end;

procedure TfrmBxDupCli.cbConvenioKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    edID.SetFocus;
end;

procedure TfrmBxDupCli.cbTpClienteExit(Sender: TObject);
begin
  Opcao;
end;

procedure TfrmBxDupCli.cbTpClienteKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    Opcao;
end;

procedure TfrmBxDupCli.DBGrid1DblClick(Sender: TObject);
begin
  Baixar;
end;

procedure TfrmBxDupCli.edIDKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    btFiltrar.SetFocus;
end;

procedure TfrmBxDupCli.Filtrar;
Var
vIDRec: String;
begin
  pnStatus.Color := clYellow;
  pnStatus.Caption := 'Filtro ativado por ';
  if ((edID.Text <> '')  and (edID.Text <> ' ') and (edID.Text <> '0')) then
    vIDRec := edID.Text
  else
    vIDRec := '0';
  FiltrarAltReceber(dmLookups.lkProcCobrancacob_codigo.Text, vIDRec, '0');
  if dmLookups.lkProcCobrancacob_codigo.Value = 2 then //Convênio paga
    pnStatus.Caption := pnStatus.Caption + 'Convênio';
  if dmLookups.lkProcCobrancacob_codigo.Value = 0 then //Paciente paga
    pnStatus.Caption := pnStatus.Caption + 'Paciente';
  if dmLookups.lkProcCobrancacob_codigo.Value = 1 then //Médico paga
    pnStatus.Caption := pnStatus.Caption + 'Médico';
  if (vIDRec <> '0') then
    pnStatus.Caption := pnStatus.Caption + ' / ID de Exame';
  pnStatus.Caption := pnStatus.Caption + '...';
end;

procedure TfrmBxDupCli.FormActivate(Sender: TObject);
begin
  inherited;
  dsDuplicatas.DataSet.Active := true;
  Limpar;
end;

procedure TfrmBxDupCli.FormDestroy(Sender: TObject);
begin
  inherited;
  if frmBxDupCli <> nil then
    frmBxDupCli := nil;
end;

procedure TfrmBxDupCli.Limpar;
begin
  pnStatus.Caption := 'Filtro desativado...';
  pnStatus.Color := clBtnFace;
  edID.Clear;
  edID.Text := '0';
  dmLookups.lkProcCobranca.First;
  cbTpCliente.Text := dmLookups.lkProcCobrancacob_descricao.Text;
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
  Label1.Caption := 'Convênio';
  //busca duplicatas em aberto
  FiltrarReceber('r.rec_status', '=', 'A', 'r.rec_vencimento', '0');
  cbTpCliente.SetFocus;
end;

end.
