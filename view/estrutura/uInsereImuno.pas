unit uInsereImuno;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpFormNormal, Vcl.StdCtrls,
  Vcl.Buttons, wwdblook, JvExMask, JvToolEdit, Vcl.Menus, Data.DB, Vcl.Mask,
  Vcl.DBCtrls, Vcl.Grids, Wwdbigrd, Wwdbgrid, JvSpin;

type
  TfrmInsereImuno = class(TfrmTmpFormNormal)
    Label2: TLabel;
    dbExame: TDBEdit;
    dsImuno: TDataSource;
    popProcedimento: TPopupMenu;
    Deletar3: TMenuItem;
    dsProcedimentos: TDataSource;
    dsLog: TDataSource;
    Label1: TLabel;
    feBitmap: TJvFilenameEdit;
    Label3: TLabel;
    cbProcedimento: TwwDBLookupCombo;
    seQuantidade: TJvSpinEdit;
    btInserir: TBitBtn;
    Label26: TLabel;
    wwDBGrid2: TwwDBGrid;
    btAlterar: TBitBtn;
    procedure FormActivate(Sender: TObject);
    procedure btAlterarClick(Sender: TObject);
    procedure Deletar3Click(Sender: TObject);
    procedure btInserirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmInsereImuno: TfrmInsereImuno;

implementation

{$R *.dfm}

uses dataFiles, uDaoExamesProced, uVarGlobal, uClassExamesImuno,
  uDaoExamesImunoZEOS, uDaoExames, uDaoExamesLogs, UFuncoesTISS, dataLookups,
  uClassExamesProced, dataFinanceiro, uDaoConvProc, dataExames;

procedure TfrmInsereImuno.btAlterarClick(Sender: TObject);
Var
vExamesImuno: TExamesImuno;
begin
  if FileExists(feBitmap.FileName) then
  begin
    vExamesImuno := TExamesImuno.Create;
    FiltrarExamesImuno('exa_id', '=', vgIDExame, '0', '0');
    vExamesImuno.Exa_id := vgIDExame;
    vExamesImuno.Eim_Exame := feBitmap.FileName;
    if dmFiles.qyExamesImunoexa_id.IsNull then
      SetValuesExamesImuno(vExamesImuno, 0)
    else
      SetValuesExamesImuno(vExamesImuno, 1);
    vExamesImuno.Free;
  end
  else
    MessageDlg('Caminho inválido!', mtWarning, [mbok], 0);
  //altera etapa
  //Verifica se foi inserido procedimento sim = 4 não = 3
  if ((dmExames.qyExamesProcedexa_id.IsNull) or (dmFiles.qyExamesImunoeim_exame.IsNull)) then
    SetEtapaExame(3)
  else
  begin
    SetEtapaExame(4);
    //Grava log de usuário etapa 3
    InsExamesLogs(vgIDExame, '4', vgCodUsuarioLog);
  end;
  MessageDlg('Exame carregado com êxito!', mtInformation, [mbok], 0);
  Close;
end;

procedure TfrmInsereImuno.btInserirClick(Sender: TObject);
Var
vCodConvenio: integer;
vCodTuss: String;
vExamesProced: TExamesProced;
vVlrProced: real;
begin
  if TestaExameCob(dbExame.Text) = 0 then
  begin
    //Grava log de usuário etapa 3
    InsExamesLogs(vgIDExame, '3', vgCodUsuarioLog);
    vCodConvenio := dmExames.qyExamescov_codigo.Value;
    vCodTuss := dmLookups.lkProcProcedimentosprc_tuss.Text;
    vExamesProced := TExamesProced.Create;
    vExamesProced.Exp_id := 0;
    vExamesProced.Exa_id := vgIDExame;
    vExamesProced.Prc_tuss := dmLookups.lkProcProcedimentosprc_tuss.Value;
    vExamesProced.Prc_descricao := dmLookups.lkProcProcedimentosprc_descricao.Value;
    vExamesProced.Exp_quant := seQuantidade.AsInteger;
    //Busca valor do procedimento
    if vCodConvenio > 1 then
    begin
      vVlrProced := GetVlrTotconvProc(vCodConvenio, StrToInt(vCodTuss));
      if vVlrProced <> 0 then
        vExamesProced.Exp_unitario := vVlrProced
      else  //caso o convênio não tenha valor diferenciado, busca valor da tabela padrão
        vExamesProced.Exp_unitario := dmLookups.lkProcProcedimentosprc_vlrtotal.Value;
    end
    else //Traz valor da tabela padrão
      vExamesProced.Exp_unitario := dmLookups.lkProcProcedimentosprc_vlrtotal.Value;
    vExamesProced.Exp_total  := vExamesProced.Exp_quant * vExamesProced.Exp_unitario;
    SetValuesExamesProced(vExamesProced);
    vExamesProced.Free;
    if MessageDlg('Procedimento inserido com sucesso!' +#13 + 'Deseja inserir outro?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      seQuantidade.Value := 1;
      cbProcedimento.Clear;
      cbProcedimento.SetFocus;
    end;
  end
  else
    MessageDlg('Este exame já foi gerado cobrança e não pode ser alterado!', mtWarning, [mbok], 0);
end;

procedure TfrmInsereImuno.Deletar3Click(Sender: TObject);
begin
  if (TestaExameCob(dbExame.text) = 0) then
  begin
    if MessageDlg('Deseja realmente apagar o registro?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      dsProcedimentos.DataSet.Delete;
  end
  else
    MessageDlg('Este exame já foi gerado cobrança e não pode ser alterado!', mtWarning, [mbok], 0);
end;

procedure TfrmInsereImuno.FormActivate(Sender: TObject);
begin
  inherited;
  dsLog.DataSet.Active := True;
  dsProcedimentos.DataSet.Active := True;
  dsImuno.DataSet.Active := True;
  feBitmap.Clear;
  seQuantidade.Value := 1;
  //Filtra tabela ExamesProced
  FiltrarExamesProced('e.exa_id', '=', vgIDExame, '0', '0');
  feBitmap.SetFocus;
end;

end.
