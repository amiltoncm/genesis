unit uProcMovimentos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, 
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpProcura, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Buttons, wwdblook;

type
  TfrmProcMovimentos = class(TfrmTmpProcura)
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
  frmProcMovimentos: TfrmProcMovimentos;

implementation

{$R *.dfm}

uses uDaoMovimentos, dataCadastros, dataLookups, uCadMovimentos;

procedure TfrmProcMovimentos.Limpar;
begin
  ListarMovimentos('mov_descricao', '0');
end;

procedure TfrmProcMovimentos.spLimparClick(Sender: TObject);
begin
  Limpar;
end;

procedure TfrmProcMovimentos.Filtrar;
begin
  FiltrarMovimentos('mov_descricao', 'LIKE', '%' + cbProcura.Text + '%', 'mov_descricao', '0');
end;

procedure TfrmProcMovimentos.Selecionar;
begin
  Try
    if Not(dsProcura.DataSet.FieldByName('mov_descricao').IsNull) then
    begin
      FiltrarMovimentos('mov_descricao', '=', dsProcura.DataSet.FieldByName('mov_descricao').Text, 'mov_descricao', '0');
      frmCadMovimentos.sbPrincipal.Panels[3].Text := 'Ativo';
      Close;
    end
    else
      MessageDlg('Não foram encontrados resultados para a seleção!', mtWarning, [mbOk], 0);
  Except
    MessageDlg('Não foram encontrados resultados para a seleção!', mtWarning, [mbOk], 0);
    cbProcura.SetFocus;
  End;
end;

procedure TfrmProcMovimentos.spProcuraClick(Sender: TObject);
begin
  Filtrar;
end;

procedure TfrmProcMovimentos.btConfirmarClick(Sender: TObject);
begin
  Selecionar;
end;

procedure TfrmProcMovimentos.btFecharClick(Sender: TObject);
begin
  Limpar;
  inherited;
end;

procedure TfrmProcMovimentos.cbProcuraKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    Filtrar;
    GridProcura.SetFocus;
  end;
end;

procedure TfrmProcMovimentos.FormActivate(Sender: TObject);
begin
  inherited;
  //Limpar;
end;

procedure TfrmProcMovimentos.GridProcuraDblClick(Sender: TObject);
begin
  Selecionar;
end;

procedure TfrmProcMovimentos.GridProcuraKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #27 then
    cbProcura.SetFocus;
  if key = #13 then
    Selecionar;
end;

end.
