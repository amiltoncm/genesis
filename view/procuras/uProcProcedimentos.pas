unit uProcProcedimentos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, 
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpProcura, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Buttons, wwdblook;

type
  TfrmProcProcedimentos = class(TfrmTmpProcura)
    procedure Limpar;
    procedure Filtrar;
    procedure Selecionar;
    procedure FormActivate(Sender: TObject);
    procedure spLimparClick(Sender: TObject);
    procedure spProcuraClick(Sender: TObject);
    procedure btConfirmarClick(Sender: TObject);
    procedure cbProcuraKeyPress(Sender: TObject; var Key: Char);
    procedure GridProcuraKeyPress(Sender: TObject; var Key: Char);
    procedure btFecharClick(Sender: TObject);
    procedure GridProcuraDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProcProcedimentos: TfrmProcProcedimentos;

implementation

{$R *.dfm}

uses uDaoProcedimentos, dataCadastros, dataLookups, uCadProcedimentos,
  uProcedimentosCob, dataExames;

procedure TfrmProcProcedimentos.Limpar;
begin
  ListarProcedimentos('prc_descricao', '0');
end;

procedure TfrmProcProcedimentos.spLimparClick(Sender: TObject);
begin
  Limpar;
end;

procedure TfrmProcProcedimentos.Filtrar;
begin
  FiltrarProcedimentos('prc_descricao', 'LIKE', '%' + cbProcura.Text + '%', 'prc_descricao', '0');
end;

procedure TfrmProcProcedimentos.Selecionar;
begin
  Try
    if Not(dsProcura.DataSet.FieldByName('prc_tuss').IsNull) then
    begin
      FiltrarProcedimentos('prc_tuss', '=', dsProcura.DataSet.FieldByName('prc_tuss').Text, 'prc_tuss', '0');
      frmCadProcedimentos.sbPrincipal.Panels[3].Text := 'Ativo';
      if frmProcedimentosCob <> nil then
        if frmProcedimentosCob.dsProcedimentos.DataSet.State in [dsInsert, dsEdit] then
        begin
          dmExames.qyExamesProcedprc_tuss.Value := dmCadastros.qyProcedimentosprc_tuss.Value;
          dmExames.qyExamesProcedprc_descricao.Value := dmCadastros.qyProcedimentosprc_descricao.Value;
        end;
      Close;
    end
    else
      MessageDlg('Não foram encontrados resultados para a seleção!', mtWarning, [mbOk], 0);
  Except
    MessageDlg('Não foram encontrados resultados para a seleção!', mtWarning, [mbOk], 0);
    cbProcura.SetFocus;
  End;
end;

procedure TfrmProcProcedimentos.spProcuraClick(Sender: TObject);
begin
  Filtrar;
end;

procedure TfrmProcProcedimentos.btConfirmarClick(Sender: TObject);
begin
  Selecionar;
end;

procedure TfrmProcProcedimentos.btFecharClick(Sender: TObject);
begin
  Limpar;
  inherited;
end;

procedure TfrmProcProcedimentos.cbProcuraKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    Filtrar;
    GridProcura.SetFocus;
  end;
end;

procedure TfrmProcProcedimentos.FormActivate(Sender: TObject);
begin
  inherited;
  Limpar;
end;

procedure TfrmProcProcedimentos.GridProcuraDblClick(Sender: TObject);
begin
  Selecionar;
end;

procedure TfrmProcProcedimentos.GridProcuraKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #27 then
    cbProcura.SetFocus;
  if key = #13 then
    Selecionar;
end;

end.
