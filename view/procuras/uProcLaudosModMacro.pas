unit uProcLaudosModMacro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, 
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpProcura, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Buttons, wwdblook;

type
  TfrmProcLaudosModMacro = class(TfrmTmpProcura)
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
  frmProcLaudosModMacro: TfrmProcLaudosModMacro;

implementation

{$R *.dfm}

uses uDaoLaudosModMacro, dataCadastros, dataLookups, uCadLaudosModMacro;

procedure TfrmProcLaudosModMacro.Limpar;
begin
  ListarLaudosModMacro('lmm_descricao', '0');
end;

procedure TfrmProcLaudosModMacro.spLimparClick(Sender: TObject);
begin
  Limpar;
end;

procedure TfrmProcLaudosModMacro.Filtrar;
begin
  FiltrarLaudosModMacro('lmm_descricao', 'LIKE', '%' + cbProcura.Text + '%', 'lmm_descricao', '0');
end;

procedure TfrmProcLaudosModMacro.Selecionar;
begin
  Try
    if Not(dsProcura.DataSet.FieldByName('lmm_descricao').IsNull) then
    begin
      FiltrarLaudosModMacro('lmm_descricao', '=', dsProcura.DataSet.FieldByName('lmm_descricao').Text, 'lmm_descricao', '0');
      frmCadLaudosModMacro.sbPrincipal.Panels[3].Text := 'Ativo';
      Close;
    end
    else
      MessageDlg('Não foram encontrados resultados para a seleção!', mtWarning, [mbOk], 0);
  Except
    MessageDlg('Não foram encontrados resultados para a seleção!', mtWarning, [mbOk], 0);
    cbProcura.SetFocus;
  End;
end;

procedure TfrmProcLaudosModMacro.spProcuraClick(Sender: TObject);
begin
  Filtrar;
end;

procedure TfrmProcLaudosModMacro.btConfirmarClick(Sender: TObject);
begin
  Selecionar;
end;

procedure TfrmProcLaudosModMacro.btFecharClick(Sender: TObject);
begin
  Limpar;
  inherited;
end;

procedure TfrmProcLaudosModMacro.cbProcuraKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    Filtrar;
    GridProcura.SetFocus;
  end;
end;

procedure TfrmProcLaudosModMacro.FormActivate(Sender: TObject);
begin
  inherited;
  //Limpar;
end;

procedure TfrmProcLaudosModMacro.GridProcuraDblClick(Sender: TObject);
begin
  Selecionar;
end;

procedure TfrmProcLaudosModMacro.GridProcuraKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #27 then
    cbProcura.SetFocus;
  if key = #13 then
    Selecionar;
end;

end.
