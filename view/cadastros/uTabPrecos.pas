unit uTabPrecos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpFormNormal, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Menus, Vcl.Grids, Wwdbigrd, Wwdbgrid, wwdblook, Vcl.ExtCtrls,
  Data.DB, Vcl.Mask, Vcl.DBCtrls;

type
  TfrmTabPrecos = class(TfrmTmpFormNormal)
    Label1: TLabel;
    dbCodigo: TDBEdit;
    Label2: TLabel;
    dbDescricao: TDBEdit;
    dsTabela: TDataSource;
    dsProcedimentos: TDataSource;
    dsConvenio: TDataSource;
    MainMenu1: TMainMenu;
    Tabela1: TMenuItem;
    Inserirtodaatabelapelovalorpadro1: TMenuItem;
    Inserirprocedimentosnovospelovalordatabelapadro1: TMenuItem;
    N1: TMenuItem;
    Fechar1: TMenuItem;
    Panel1: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label3: TLabel;
    edVlrHora: TEdit;
    edVlrOper: TEdit;
    edVlrFilme: TEdit;
    edVlrTotal: TEdit;
    btInserir: TBitBtn;
    cbProcedimento: TwwDBLookupCombo;
    wwDBGrid1: TwwDBGrid;
    popProcedimentos: TPopupMenu;
    Deletar1: TMenuItem;
    procedure Limpa;
    procedure Calcula(vHora, vOper, vFilme: String);
    procedure FormActivate(Sender: TObject);
    procedure edVlrHoraKeyPress(Sender: TObject; var Key: Char);
    procedure edVlrOperKeyPress(Sender: TObject; var Key: Char);
    procedure edVlrFilmeKeyPress(Sender: TObject; var Key: Char);
    procedure edVlrHoraExit(Sender: TObject);
    procedure edVlrOperExit(Sender: TObject);
    procedure edVlrFilmeExit(Sender: TObject);
    procedure btInserirClick(Sender: TObject);
    procedure Deletar1Click(Sender: TObject);
    procedure Inserirtodaatabelapelovalorpadro1Click(Sender: TObject);
    procedure Inserirprocedimentosnovospelovalordatabelapadro1Click(
      Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTabPrecos: TfrmTabPrecos;

implementation

{$R *.dfm}

uses dataFinanceiro, dataCadastros, uDaoConvProc, dataLookups,
  uFuncoesFormatacao, uDaoProcedimentos, dataExames, uClassConvProc, uVarGlobal;

procedure TfrmTabPrecos.edVlrFilmeExit(Sender: TObject);
begin
  if edVlrFilme.Text = '' then
    edVlrFilme.Text := '0,00';
  edVlrFilme.Text := FormatFloat(vgMaskReal, StrToFloat(edVlrFilme.Text));
  Calcula(edVlrHora.Text, edVlrOper.Text, edVlrFilme.Text);
end;

procedure TfrmTabPrecos.edVlrFilmeKeyPress(Sender: TObject; var Key: Char);
begin
  key := NumeroReal(key);
end;

procedure TfrmTabPrecos.edVlrHoraExit(Sender: TObject);
begin
  if edVlrHora.Text = '' then
    edVlrHora.Text := '0,00';
  edVlrHora.Text := FormatFloat(vgMaskReal, StrToFloat(edVlrHora.Text));
  Calcula(edVlrHora.Text, edVlrOper.Text, edVlrFilme.Text);
end;

procedure TfrmTabPrecos.edVlrHoraKeyPress(Sender: TObject; var Key: Char);
begin
  key := NumeroReal(key);
end;

procedure TfrmTabPrecos.edVlrOperExit(Sender: TObject);
begin
  if edVlrOper.Text = '' then
    edVlrOper.Text := '0,00';
  edVlrOper.Text := FormatFloat(vgMaskReal, StrToFloat(edVlrOper.Text));
  Calcula(edVlrHora.Text, edVlrOper.Text, edVlrFilme.Text);
end;

procedure TfrmTabPrecos.edVlrOperKeyPress(Sender: TObject; var Key: Char);
begin
  key := NumeroReal(key);
end;

procedure TfrmTabPrecos.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmTabPrecos.FormActivate(Sender: TObject);
begin
  inherited;
  Limpa;
  dsConvenio.DataSet.Active := true;
  dsTabela.DataSet.Active := true;
  dsProcedimentos.DataSet.Active := true;
end;

procedure TfrmTabPrecos.Inserirprocedimentosnovospelovalordatabelapadro1Click(
  Sender: TObject);
Var
vConvProc: TConvProc;
begin
  if MessageDlg('Deseja realmente inserir Procedimentos adicionados da tabela padrão?',
   mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    //Limpa tabela procedimentos
    ListarProcedimentos('prc_tuss', '0');
    //Insere procedimentos padrões
    repeat
    begin
      FiltrarConvProc('c.prc_tuss', '=', dmCadastros.qyProcedimentosprc_tuss.Text, '0', '0');
      if dmFinanceiro.qyConvProccov_id.IsNull then
      begin
        vConvProc := TConvProc.Create;
        vConvProc.Cov_id := StrToInt(dbCodigo.Text);
        vConvProc.Prc_tuss := dmCadastros.qyProcedimentosprc_tuss.Value;
        vConvProc.Cpr_vlrhora := dmCadastros.qyProcedimentosprc_vlrhora.Value;
        vConvProc.Cpr_vlroper := dmCadastros.qyProcedimentosprc_vlroper.Value;
        vConvProc.Cpr_vlrfilme := dmCadastros.qyProcedimentosprc_vlrfilme.Value;
        vConvProc.Cpr_vlrtotal := dmCadastros.qyProcedimentosprc_vlrtotal.Value;
        SetValuesConvProc(vConvProc, 0);
        vConvProc.Free;
      end;
      dmCadastros.qyProcedimentos.Next;
    end;
    until dmCadastros.qyProcedimentos.Eof = true;
    FiltrarConvProc('c.cov_id', '=', dbCodigo.text, 'c.prc_tuss', '0');
    MessageDlg('Exames inseridos com sucesso!', mtInformation, [mbok], 0);
  end;
end;

procedure TfrmTabPrecos.Inserirtodaatabelapelovalorpadro1Click(Sender: TObject);
Var
vConvProc: TConvProc;
begin
  if MessageDlg('Deseja realmente inserir toda a tabela padrão?' + #13 + #13 +
   'Caso opte por sim todos os dados serão apagados, e inseridos os valores padrões!',
   mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    //Apaga os dados já inseridos
    DeleteConvProc(dbCodigo.text);
    //Insere procedimentos padrões
    ListarProcedimentos('prc_tuss', '0');
    //Insere procedimentos padrões
    dmCadastros.qyProcedimentos.First;
    repeat
    begin
      vConvProc := TConvProc.Create;
      vConvProc.Cov_id := StrToInt(dbCodigo.Text);
      vConvProc.Prc_tuss := dmCadastros.qyProcedimentosprc_tuss.Value;
      vConvProc.Prc_descricao := dmCadastros.qyProcedimentosprc_descricao.Value;
      vConvProc.Cpr_vlrhora := dmCadastros.qyProcedimentosprc_vlrhora.Value;
      vConvProc.Cpr_vlroper := dmCadastros.qyProcedimentosprc_vlroper.Value;
      vConvProc.Cpr_vlrfilme := dmCadastros.qyProcedimentosprc_vlrfilme.Value;
      vConvProc.Cpr_vlrtotal := dmCadastros.qyProcedimentosprc_vlrtotal.Value;
      SetValuesConvProc(vConvProc, 0);
      vConvProc.Free;
      dmCadastros.qyProcedimentos.Next;
    end;
    until dmCadastros.qyProcedimentos.Eof = true;
    MessageDlg('Exames inseridos com sucesso!', mtInformation, [mbok], 0);
  end;
end;

procedure TfrmTabPrecos.Limpa;
begin
  cbProcedimento.Clear;
  edVlrHora.Text := '0,00';
  edVlrOper.Text := '0,00';
  edVlrFilme.Text := '0,00';
  edVlrTotal.Text := '0,00';
  cbProcedimento.SetFocus;
end;

procedure TfrmTabPrecos.btInserirClick(Sender: TObject);
Var
vConvProc: TConvProc;
begin
  if cbProcedimento.Text <> '' then
  begin
    if edVlrTotal.Text <> '0,00' then
    begin
      vConvProc := TConvProc.Create;
      vConvProc.Cov_id := StrToInt(dbCodigo.Text);
      vConvProc.Prc_tuss := dmLookups.lkProcProcedimentosprc_tuss.Value;
      vConvProc.Prc_descricao := dmLookups.lkProcProcedimentosprc_descricao.Text;
      vConvProc.Cpr_vlrhora := StrToFloat(LimpaReal(edVlrHora.Text));
      vConvProc.Cpr_vlroper := StrToFloat(LimpaReal(edVlrOper.Text));
      vConvProc.Cpr_vlrfilme := StrToFloat(LimpaReal(edVlrFilme.Text));
      vConvProc.Cpr_vlrtotal := StrToFloat(LimpaReal(edVlrTotal.Text));
      SetValuesConvProc(vConvProc, 0);
      vConvProc.Free;
      Limpa;
    end
    else
      MessageDlg('O valor do procedimento não pode ser ZERO!', mtWarning, [mbOk], 0);
  end
  else
    MessageDlg('Você deve selecionar um procedimento!', mtError, [mbok], 0);
end;

procedure TfrmTabPrecos.Calcula(vHora, vOper, vFilme: String);
Var
vTotal: real;
begin
  vTotal := StrToFloat(LimpaReal(vHora)) + StrToFloat(LimpaReal(vOper)) + StrToFloat(LimpaReal(vFilme));
  edVlrTotal.Text := FormatFloat(vgMaskReal, vTotal);
end;

procedure TfrmTabPrecos.Deletar1Click(Sender: TObject);
begin
  if MessageDlg('Deseja realmente apagar o registro?', mtConfirmation, [mbYes, mbno], 0) = mrYes then
    dsTabela.Dataset.Delete;
end;

end.
