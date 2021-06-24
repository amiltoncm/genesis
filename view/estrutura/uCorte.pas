unit uCorte;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpFormNormal, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ActnList, Data.DB, Vcl.ComCtrls, wwriched, wwrichedspellxp,
  Vcl.Grids, Wwdbigrd, Wwdbgrid, wwdbedit, Wwdotdot, Wwdbcomb, wwdblook,
  wwdbdatetimepicker, Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls;

type
  TfrmCorte = class(TfrmTmpFormNormal)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label6: TLabel;
    Label9: TLabel;
    Label7: TLabel;
    Label10: TLabel;
    Label13: TLabel;
    lbDtEntrega: TLabel;
    Label16: TLabel;
    SpeedButton1: TSpeedButton;
    dbExame: TDBEdit;
    dbMatricula: TDBEdit;
    dbIdade: TDBEdit;
    dbMeses: TDBEdit;
    dbGuia: TDBEdit;
    dbTitulo: TDBEdit;
    dbConselho: TDBEdit;
    dbNumConselho: TDBEdit;
    btAlterar: TBitBtn;
    Panel3: TPanel;
    btGravar: TBitBtn;
    btCancelar: TBitBtn;
    Panel2: TPanel;
    Label14: TLabel;
    Label15: TLabel;
    painelTopografia: TPanel;
    Label18: TLabel;
    GridTop: TwwDBGrid;
    painelBlocos: TPanel;
    Label17: TLabel;
    wwDBGrid2: TwwDBGrid;
    meMacroscopia: TwwDBRichEditMSWord;
    dsExames: TDataSource;
    dsExTopografias: TDataSource;
    dsBlocos: TDataSource;
    dsLog: TDataSource;
    dsHistologia: TDataSource;
    dsMacroscopia: TDataSource;
    dsProcExames: TDataSource;
    ActionList1: TActionList;
    actAlternaExame: TAction;
    dbData: TDBEdit;
    dbTpExame: TDBEdit;
    dbConvenio: TDBEdit;
    dbPaciente: TDBEdit;
    dbDataNasc: TDBEdit;
    dbMedico: TDBEdit;
    dbOrigem: TDBEdit;
    dbDestino: TDBEdit;
    dbPriporidade: TDBEdit;
    dbDtEntrega: TDBEdit;
    cbResponsavel: TwwDBLookupCombo;
    GridProcExames: TwwDBGrid;
    wwDBGrid1: TwwDBGrid;
    Label19: TLabel;
    procedure FindID;
    procedure AlternaExame;
    procedure InitCorte(vfIDExame: String);
    procedure CancelaDataSets;
    procedure ExecutaFiltro(vfCodEio: String);
    procedure LimpaFiltro;
    procedure cbResponsavelExit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure cbTopografiaKeyPress(Sender: TObject; var Key: Char);
    procedure meMacroscopiaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure actAlternaExameExecute(Sender: TObject);
    procedure meMacroscopiaKeyPress(Sender: TObject; var Key: Char);
    procedure GridProcExamesDblClick(Sender: TObject);
    procedure btAlterarClick(Sender: TObject);
    procedure dsExamesStateChange(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCorte: TfrmCorte;

implementation

{$R *.dfm}

uses dataExames, dataConsultas, uDaoExames, uDaoExamesProced, uDaoExamesHist,
  uDaoExamesHistMacro, uDaoExamesTop, uDaoExamesBlocos, dataLookups,
  uDaoResponsaveis, uDaoExamesTipo, uFuncoesDB, uDaoExamesLogs, uVarGlobal,
  uAltExame;

procedure TfrmCorte.actAlternaExameExecute(Sender: TObject);
begin
  AlternaExame;
end;

procedure TfrmCorte.AlternaExame;
Begin
  if GridProcExames.Visible = true then
  begin
    GridProcExames.Visible := false;
  end
  else
  begin
    FiltrarProcExames('e.etp_id', '=', '2', '3', 'e.exa_id desc', '0');
    if dmConsultas.qyProcExamesexa_id.IsNull then
      MessageDlg('Não existem exames disponíveis nesta etapa!', mtWarning, [mbOk], 0)
    else
      GridProcExames.Visible := true;
  end;
end;

procedure TfrmCorte.InitCorte(vfIDExame: String);
begin
  //filtra exames procedimentos
  FiltrarExamesProced('e.exa_id', '=', vfIDExame, '0', '0');
  //filtra a tabela de Histologia
  FiltrarExamesHist('h.exa_id', '=', vfIDExame, '0', '0');
  //filtra a tabela ExamesHistMacro
  FiltrarExamesHistMacro('exa_id', '=', vfIDExame, '0', '0');
  //fitra topografias
  FiltrarExamesTop('e.exa_id', '=', vfIDExame, 'e.etg_id', '0');
  //Filtra blocos
  FiltrarExamesBlocos('e.exa_id', '=', vfIDExame, 'e.etg_id, e.ebl_seq', '0');
  //limpa filtro das tabelas Exames
  LimpaFiltro;
  //testa se o campo responsável é nulo
  if not dmExames.qyExamesres_codigo.IsNull then
  Begin
    FiltrarProcResponsaveis(dmExames.qyExamesres_codigo.Text);
    cbResponsavel.Text := dmLookups.lkProcResponsaveisres_nome.Text;
  end;
  if cbResponsavel.Text = '' then
    cbResponsavel.SetFocus
  else
    meMacroscopia.SetFocus;
end;

procedure TfrmCorte.btAlterarClick(Sender: TObject);
begin
  vgIDExameSel := dmExames.qyExamesexa_id.Text;
  frmAltExame.ShowModal;
end;

procedure TfrmCorte.btCancelarClick(Sender: TObject);
begin
  CancelaDataSets;
  Close;
end;

procedure TfrmCorte.btGravarClick(Sender: TObject);
begin
  if dsHistologia.DataSet.State in [dsInsert] then
  Begin
    dmExames.qyExamesHistehi_id.Value := GetCodigo('ehi_id', 'exameshist');
    dmExames.qyExamesHistexa_id.Text := dbExame.Text;
    dmExames.qyExamesHist.Post;
  end;
  //grava log de usuário
  InsExamesLogs(dmExames.qyExamesexa_id.Text, '4', vgCodUsuarioLog);
  //atualiza a etapa do exame
  SetEtapaExame(4);
  if dsHistologia.DataSet.State in [dsEdit] then
    PostExamesHist(dbExame.Text);
  if dsExTopografias.DataSet.State in [dsEdit, dsInsert] then
    PostExamesTop;
  if dsBlocos.DataSet.State in [dsEdit, dsInsert] then
    PostExamesBlocos;
  if MessageDlg('Alterações gravadas com sucesso!' + #13 + 'Deseja sair do corte?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    Close
  else
    FindID;
end;

procedure TfrmCorte.CancelaDataSets;
begin
  if dsHistologia.DataSet.State in [dsEdit] then
    dmExames.qyExamesHist.Cancel;
  if dsExTopografias.DataSet.State in [dsEdit, dsInsert] then
    dmExames.qyExamesTop.Cancel;
  if dsBlocos.DataSet.State in [dsEdit, dsInsert] then
    dmExames.qyExamesBlocos.Cancel;
end;

procedure TfrmCorte.cbResponsavelExit(Sender: TObject);
begin
  SetExamesResp(dmLookups.lkProcResponsaveisres_codigo.Value);
end;

procedure TfrmCorte.cbTopografiaKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    if dsHistologia.DataSet.FieldByName('ehi_id').IsNull then
      MessageDlg('É necessário selecionar um dado clínico!', mtWarning, [mbOk], 0)
    else
      SetValuesTopografia(dbExame.Text, dmLookups.lkProcTopografiastop_id.Text, 'T-01000',
                          dsHistologia.DataSet.FieldByName('eha_id').Value);
  end;
end;

procedure TfrmCorte.dsExamesStateChange(Sender: TObject);
begin
  if dsExames.DataSet.State in [dsEdit] then
    btAlterar.Enabled := false
  else
    btAlterar.Enabled := true;
end;

procedure TfrmCorte.ExecutaFiltro(vfCodEio: String);
begin
  FiltrarProcExamesHist(vfCodEio);
end;

procedure TfrmCorte.FormActivate(Sender: TObject);
begin
  inherited;
  GridProcExames.Visible := false;
  dsLog.DataSet.Active := true;
  //abre os datasets
  dsExames.DataSet.Active := true;
  dsHistologia.DataSet.Active := true;
  dsMacroscopia.DataSet.Active := true;
  dsExTopografias.DataSet.Active := true;
  dsProcExames.DataSet.Active := true;
  if dbExame.Text <> '' then
    InitCorte(dbExame.Text);
end;

procedure TfrmCorte.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_F4 then
    FindID;
end;

procedure TfrmCorte.FindID;
Var
vIDExame: String;
vOk: boolean;
begin
  vOK := InputQuery('Busca exame', 'Digite o ID do exame:', vIDExame);
  if vOK then
  begin
    vIDExame := UpperCase(vIDExame);
    if vIDExame <> '' then
    begin
      //filtra a tabela de exames
      FiltrarExamesHisto('e.exa_id', '=', vIDExame, '0', 'e.exa_id desc', '0');
      //filtra a tabela de Histologia
      FiltrarExamesHist('h.exa_id', '=', vIDExame, 'h.ehi_id', '0');
      //filtra a tabela ExamesHistMacro
      FiltrarExamesHistMacro('exa_id', '=', vIDExame, '0', '0');
      if ((dmExames.qyExamesetp_id.Value = 2) or (dmExames.qyExamesetp_id.Value = 3)) then
        InitCorte(vIDExame)
      else
      begin
        MessageDlg('ID inválido, ou etapa inválida para o exame digitado ou !', mtWarning, [mbok], 0);
        InitCorte('0');
      end;
    end
    else
      MessageDlg('ID inválido!', mtWarning, [mbok], 0);
  end;
end;

procedure TfrmCorte.FormKeyPress(Sender: TObject; var Key: Char);
begin
  //inherited;
  if key = #27 then
    Close;
end;

procedure TfrmCorte.GridProcExamesDblClick(Sender: TObject);
Var
vExame: String;
begin
  if MessageDlg('Deseja realmente alternar para o outro exame?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    vExame := dmConsultas.qyProcExamesexa_id.Text;
    FiltrarExames('e.exa_id', '=', vExame, '0', '0');
    if dmConsultas.qyProcExamesexa_id.IsNull then
      MessageDlg('Exames inexistente!', mtWarning, [mbOk], 0)
    else
    begin
      CancelaDataSets;
      InitCorte(vExame);
      GridProcExames.Visible := false;
    end;
  end
  else
    GridProcExames.Visible := false;
end;

procedure TfrmCorte.LimpaFiltro;
begin
  FiltrarProcExamesTipo('0');
  FiltrarProcExamesHist('0');
end;

procedure TfrmCorte.meMacroscopiaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_F4 then
  begin
    if dsMacroscopia.DataSet.State in [dsEdit, dsInsert] then
      PostExamesHistMacro(dbExame.Text);
  end;
end;

procedure TfrmCorte.meMacroscopiaKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #9 then
    key := #0;
end;

end.
