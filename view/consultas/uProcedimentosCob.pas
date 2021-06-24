unit uProcedimentosCob;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpFormNormal, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Mask, wwdbedit, Vcl.ExtCtrls, Data.DB, Vcl.Grids, Wwdbigrd,
  Wwdbgrid, Vcl.DBCtrls;

type
  TfrmProcedimentosCob = class(TfrmTmpFormNormal)
    GridProced: TwwDBGrid;
    dsProcedimentos: TDataSource;
    Panel1: TPanel;
    lbExame: TLabel;
    lbSoma: TLabel;
    lbOrigem: TLabel;
    btInserir: TBitBtn;
    btDeletar: TBitBtn;
    btGravar: TBitBtn;
    btCancelar: TBitBtn;
    btAlterar: TBitBtn;
    dbTUSS: TwwDBEdit;
    dbQuant: TwwDBEdit;
    dbUnitario: TwwDBEdit;
    procedure BuscaValor;
    procedure AtualizaTotal(vfIDExameAt: String);
    procedure btCancelarClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormActivate(Sender: TObject);
    procedure dsProcedimentosDataChange(Sender: TObject; Field: TField);
    procedure btInserirClick(Sender: TObject);
    procedure btAlterarClick(Sender: TObject);
    procedure btDeletarClick(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure btFecharClick(Sender: TObject);
    procedure dsProcedimentosStateChange(Sender: TObject);
    procedure GridProcedDrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure GridProcedKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GridProcedColExit(Sender: TObject);
    procedure dbTUSSExit(Sender: TObject);
    procedure dbQuantExit(Sender: TObject);
    procedure CalculaTotal;
    procedure dbUnitarioExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProcedimentosCob: TfrmProcedimentosCob;

implementation

{$R *.dfm}

uses dataExames, uDaoConvProc, uVarGlobal, dataFinanceiro, uDaoProcedimentos,
  dataCadastros, uDaoExamesProced, uDaoExamesCob, dataConsultas, uFuncoesDB,
  uProcProcedimentos;

procedure TfrmProcedimentosCob.btAlterarClick(Sender: TObject);
begin
  dsProcedimentos.DataSet.Edit;
  GridProced.SetFocus;
end;

procedure TfrmProcedimentosCob.btCancelarClick(Sender: TObject);
begin
  if dsProcedimentos.DataSet.State in [dsEdit, dsInsert] then
    dsProcedimentos.DataSet.Cancel;
  AtualizaTotal(vgNumExameCob);
end;

procedure TfrmProcedimentosCob.btDeletarClick(Sender: TObject);
begin
  if MessageDlg('Deseja realmente apagar o Procedimento?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    dsProcedimentos.DataSet.delete;
    AtualizaTotal(vgNumExameCob);
  end;
end;

procedure TfrmProcedimentosCob.btFecharClick(Sender: TObject);
begin
  if dsProcedimentos.DataSet.State in [dsInsert, dsEdit] then
    dsProcedimentos.DataSet.Cancel;
  AtualizaTotal(vgNumExameCob);
 inherited;
end;

procedure TfrmProcedimentosCob.btGravarClick(Sender: TObject);
begin
  //BuscaValor;
  dmExames.qyExamesProcedexa_id.Text := dmConsultas.qyConsGeraCobexa_id.Text;
  dmExames.qyExamesProcedexp_total.Value := dmExames.qyExamesProcedexp_quant.Value *
                                            dmExames.qyExamesProcedexp_unitario.Value;
  dsProcedimentos.DataSet.Post;
  //Atualiza valor total dos procedimentos
  AtualizaTotal(vgNumExameCob);
end;

procedure TfrmProcedimentosCob.btInserirClick(Sender: TObject);
begin
  dsProcedimentos.DataSet.Append;
  GridProced.SelectedIndex := 0;
  GridProced.SetFocus;
end;

procedure TfrmProcedimentosCob.BuscaValor;
begin
  //Busca valor unitário
  if ((dmExames.qyExamesProcedexp_unitario.IsNull) or (dmExames.qyExamesProcedexp_unitario.Value = 0)) then
  begin
    FiltrarConvXProc(vgIDConvGeraCob, dmExames.qyExamesProcedprc_tuss.Text);
    if Not(dmFinanceiro.qyConvProccov_id.IsNull) then
    begin
      dmExames.qyExamesProcedexp_unitario.Value := dmFinanceiro.qyConvProccpr_vlrtotal.Value;
      lbOrigem.Font.Color := clGreen;
      lbOrigem.Caption := 'Valor de tabela específica do convênio!';
    end
    else
    begin
      FiltrarProcedimentos('prc_tuss', '=', dmExames.qyExamesProcedprc_tuss.Text, '0', '0');
      if (Not(dmCadastros.qyProcedimentosprc_tuss.IsNull) and (dsProcedimentos.DataSet.State in [dsInsert, dsEdit])) then
      begin
        dmExames.qyExamesProcedexp_unitario.Value := dmCadastros.qyProcedimentosprc_vlrtotal.Value;
        lbOrigem.Font.Color := clMaroon;
        lbOrigem.Caption := 'Valor da tabela padrão (Exames particulares)!';
      end
      else
      begin
        lbOrigem.Font.Color := clRed;
        dmExames.qyExamesProcedexp_unitario.Value := 0;
        lbOrigem.Caption := 'Não foi encontrado valores para este Procedimento';
      end;
    end;
    dmExames.qyExamesProcedexp_total.Value := dmExames.qyExamesProcedexp_unitario.Value *
                                              dmExames.qyExamesProcedexp_quant.Value;
  end
  else
  begin
    lbOrigem.Font.Color := clLime;
    lbOrigem.Caption := 'Valor inserido manualmente ou registro alterado!';
  end;
  if dmExames.qyExamesProcedprc_descricao.IsNull then
    dmExames.qyExamesProcedprc_descricao.Text := GetProcDesc(dmExames.qyExamesProcedprc_tuss.Text);
end;

procedure TfrmProcedimentosCob.dbQuantExit(Sender: TObject);
begin
  if dsProcedimentos.DataSet.State in [dsInsert, dsEdit] then
    CalculaTotal;
end;

procedure TfrmProcedimentosCob.CalculaTotal;
begin
  if dsProcedimentos.DataSet.FieldByName('exp_quant').IsNull then
    dsProcedimentos.DataSet.FieldByName('exp_quant').Value := 1;
  if dsProcedimentos.DataSet.FieldByName('exp_unitario').IsNull then
    dsProcedimentos.DataSet.FieldByName('exp_unitario').Value := 0;
  dsProcedimentos.DataSet.FieldByName('exp_total').Value := dsProcedimentos.DataSet.FieldByName('exp_quant').Value *
                                                            dsProcedimentos.DataSet.FieldByName('exp_unitario').Value;
end;

procedure TfrmProcedimentosCob.dbTUSSExit(Sender: TObject);
begin
  BuscaValor;
end;

procedure TfrmProcedimentosCob.dbUnitarioExit(Sender: TObject);
begin
  if dsProcedimentos.DataSet.State in [dsInsert, dsEdit] then
    CalculaTotal;
end;

procedure TfrmProcedimentosCob.dsProcedimentosDataChange(Sender: TObject;
  Field: TField);
begin
  if dsProcedimentos.DataSet.State in [dsInsert, dsEdit] then
  Begin
    btInserir.Enabled := False;
    btAlterar.Enabled := False;
    btDeletar.Enabled := False;
    btGravar.Enabled := True;
    btCancelar.Enabled := True;
  end
  else
  Begin
    btInserir.Enabled := True;
    btAlterar.Enabled := True;
    btDeletar.Enabled := True;
    btGravar.Enabled := False;
    btCancelar.Enabled := False;
  end;
end;

procedure TfrmProcedimentosCob.dsProcedimentosStateChange(Sender: TObject);
begin
  if dsProcedimentos.DataSet.State in [dsInsert] then
  begin
    dmExames.qyExamesProcedexa_id.Text := dmConsultas.qyConsGeraCobexa_id.Text;
    dmExames.qyExamesProcedexp_id.Value := GetCodigo('exp_id', 'examesproced');
  end;
  if dsProcedimentos.DataSet.State in [dsBrowse] then
  begin
    if ((dmExames.qyExamesProcedexp_unitario.IsNull) or (dmExames.qyExamesProcedexp_unitario.Value = 0)) then
    begin
      lbOrigem.Font.Color := clRed;
      lbOrigem.Caption := 'O valor do procedimento não pode ser nulo ou 0!';
    end;
  end;
end;

procedure TfrmProcedimentosCob.FormActivate(Sender: TObject);
begin
  inherited;
  lbExame.Caption := vgNumExameCob;
  dsProcedimentos.DataSet.Active := true;
  lbOrigem.Caption := '';
  AtualizaTotal(vgNumExameCob);
end;

procedure TfrmProcedimentosCob.FormClose(Sender: TObject;
  var Action: TCloseAction);
Var
vTotal: real;
begin
  if not(dsProcedimentos.DataSet.FieldByName('exa_id').IsNull) then
  begin
    dsProcedimentos.DataSet.First;
    repeat
    begin
      vTotal := dsProcedimentos.DataSet.FieldByName('exp_quant').Value *
                dsProcedimentos.DataSet.FieldByName('exp_unitario').Value;
      if vTotal <> dsProcedimentos.DataSet.FieldByName('exp_total').Value then
      begin
        dsProcedimentos.DataSet.Edit;
        dsProcedimentos.DataSet.FieldByName('exp_total').Value := vTotal;
        dsProcedimentos.DataSet.Post;
      end;
      dsProcedimentos.DataSet.Next;
    end;
    until dsProcedimentos.DataSet.Eof = true;
  end;
  AtualizaTotal(vgNumExameCob);
  dmConsultas.qyConsGeraCob.Refresh;
  inherited;
end;

procedure TfrmProcedimentosCob.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if dsProcedimentos.DataSet.State in [dsEdit] then
    dsProcedimentos.DataSet.Cancel;
  if dmExames.qyExamesProcedexa_id.IsNull then
    CanClose := true
end;

procedure TfrmProcedimentosCob.GridProcedColExit(Sender: TObject);
begin
  if ((not(dmExames.qyExamesProcedprc_tuss.IsNull)) and (dmExames.qyExamesProcedexp_unitario.Value = 0)) then
    BuscaValor;
end;

procedure TfrmProcedimentosCob.GridProcedDrawDataCell(Sender: TObject;
  const Rect: TRect; Field: TField; State: TGridDrawState);
begin
  AtualizaTotal(vgNumExameCob);
end;

procedure TfrmProcedimentosCob.GridProcedKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_F4 then
  begin
    if dsProcedimentos.DataSet.State in [dsEdit, dsInsert] then
    begin
      frmProcProcedimentos.ShowModal;
    end
    else
      MessageDlg('A tabela não está em modo de inserção ou edição!', mtWarning, [mbok], 0);
  end;
end;

procedure TfrmProcedimentosCob.AtualizaTotal(vfIDExameAt: String);
Var
vTotal: real;
begin
  vTotal := AtualizaTotalProced(vfIDExameAt);
  UpdVlrExamesCob(vfIDExameAt, vTotal);
  lbExame.Caption := 'Exame: ' + vfIDExameAt;
  lbSoma.Caption := 'Total: R$ ' + dmFinanceiro.qyExamesCobeco_valor.Text;
end;

end.
