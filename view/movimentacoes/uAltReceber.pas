unit uAltReceber;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpFormNormal, Vcl.StdCtrls,
  Vcl.Buttons, Data.DB, wwdbdatetimepicker, Vcl.Grids, Wwdbigrd, Wwdbgrid,
  wwdblook, JvBaseDlg, JvCalc;

const
InputBoxMessage = WM_USER + 200;

type
  TfrmAltReceber = class(TfrmTmpFormNormal)
    Label2: TLabel;
    cbTpCliente: TwwDBLookupCombo;
    Label1: TLabel;
    cbConvenio: TwwDBLookupCombo;
    btFiltrar: TBitBtn;
    btLimpar: TBitBtn;
    wwDBGrid1: TwwDBGrid;
    cbVencimento: TwwDBDateTimePicker;
    dsReceber: TDataSource;
    SpeedButton1: TSpeedButton;
    btAvancar: TBitBtn;
    JvCalculator1: TJvCalculator;
    procedure Limpar;
    procedure Filtrar;
    procedure Opcao;
    procedure FormActivate(Sender: TObject);
    procedure btFecharClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure btAvancarClick(Sender: TObject);
    procedure btFiltrarClick(Sender: TObject);
    procedure btLimparClick(Sender: TObject);
    procedure cbTpClienteExit(Sender: TObject);
    procedure cbTpClienteKeyPress(Sender: TObject; var Key: Char);
    procedure cbConvenioClick(Sender: TObject);
    procedure cbVencimentoChange(Sender: TObject);
    procedure wwDBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAltReceber: TfrmAltReceber;

implementation

{$R *.dfm}

uses dataFinanceiro, dataLookups, uDaoReceber, uConfAltReceber;

procedure TfrmAltReceber.FormActivate(Sender: TObject);
begin
  inherited;
  dsReceber.DataSet.Active := true;
  Limpar;
end;

procedure TfrmAltReceber.Limpar;
begin
  dmLookups.lkProcCobranca.First;
  cbTpCliente.Text := dmLookups.lkProcCobrancacob_descricao.Text;
  cbTpCliente.PerformSearch;
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

procedure TfrmAltReceber.btAvancarClick(Sender: TObject);
begin
  if not (dsReceber.DataSet.State in [dsEdit]) then
    dsReceber.DataSet.Edit;
  frmConfAltReceber.ShowModal;
end;

procedure TfrmAltReceber.btFecharClick(Sender: TObject);
begin
  if dsReceber.DataSet.State in [dsEdit] then
    dsReceber.DataSet.Cancel;
  inherited;
end;

procedure TfrmAltReceber.btFiltrarClick(Sender: TObject);
begin
  Filtrar;
end;

procedure TfrmAltReceber.btLimparClick(Sender: TObject);
begin
  Limpar;
end;

procedure TfrmAltReceber.cbConvenioClick(Sender: TObject);
begin
  Opcao;
end;

procedure TfrmAltReceber.cbTpClienteExit(Sender: TObject);
begin
  Opcao;
end;

procedure TfrmAltReceber.cbTpClienteKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    cbConvenio.SetFocus;
end;

procedure TfrmAltReceber.cbVencimentoChange(Sender: TObject);
begin
  if dsReceber.DataSet.State in [dsEdit] then
    dsReceber.DataSet.Post;
end;

procedure TfrmAltReceber.Filtrar;
Var
vCodCliente: String;
vCodCob: String;
begin
  if dmLookups.lkProcCobrancacob_codigo.Value = 2 then //Convênio paga
  begin
    vCodCob := '002';
    vCodCliente := dmLookups.lkProcConvenioscov_codigo.Text;
  end;
  if dmLookups.lkProcCobrancacob_codigo.Value = 0 then //Paciente paga
  begin
    vCodCob := '000';
    vCodCliente := dmLookups.lkProcPacientespac_codigo.Text;
  end;
  if dmLookups.lkProcCobrancacob_codigo.Value = 1 then //Médico paga
  begin
    vCodCob := '001';
    vCodCliente := dmLookups.lkProcMedicosmed_codigo.Text;
  end;
  FiltrarAltReceber(vCodCob, '0', vCodCliente);
end;

procedure TfrmAltReceber.Opcao;
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
      Label1.Caption := 'Convênio';
    end
    else
      if vOpcao = 0 then
      begin
        cbConvenio.LookupTable := dmLookups.lkProcPacientes;
        cbConvenio.LookupField := 'pac_nome';
        cbConvenio.Enabled := true;
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
      end
        else
          MessageDlg('Responsável inválido, por favor verifique!', mtError, [mbok], 0);
  end
  else
    MessageDlg('Você deve selecionar um responsável pelo pagamento!', mtError, [mbok], 0);
end;

procedure TfrmAltReceber.SpeedButton1Click(Sender: TObject);
begin
  JvCalculator1.Execute;
end;

procedure TfrmAltReceber.wwDBGrid1DblClick(Sender: TObject);
begin
  if not (dsReceber.DataSet.State in [dsEdit]) then
    dsReceber.DataSet.Edit;
  frmConfAltReceber.ShowModal;
end;

end.
