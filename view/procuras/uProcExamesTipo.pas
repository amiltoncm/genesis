unit uProcExamesTipo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, 
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpProcura, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Buttons, wwdblook;

type
  TfrmProcExamesTipo = class(TfrmTmpProcura)
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
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProcExamesTipo: TfrmProcExamesTipo;

implementation

{$R *.dfm}

uses uDaoExamesTipo, dataCadastros, dataLookups, uCadExamesTipo;

procedure TfrmProcExamesTipo.Limpar;
begin
  ListarExamesTipo('eio_descricao', '0');
end;

procedure TfrmProcExamesTipo.spLimparClick(Sender: TObject);
begin
  Limpar;
end;

procedure TfrmProcExamesTipo.Filtrar;
begin
  FiltrarExamesTipo('eio_descricao', 'LIKE', '%' + cbProcura.Text + '%', 'eio_descricao', '0');
end;

procedure TfrmProcExamesTipo.Selecionar;
begin
  Try
    if Not(dsProcura.DataSet.FieldByName('eio_descricao').IsNull) then
    begin
      FiltrarExamesTipo('eio_descricao', '=', dsProcura.DataSet.FieldByName('eio_descricao').Text, 'eio_descricao', '0');
      frmCadExamesTipo.sbPrincipal.Panels[3].Text := 'Ativo';
      Close;
    end
    else
      MessageDlg('Não foram encontrados resultados para a seleção!', mtWarning, [mbOk], 0);
  Except
    MessageDlg('Não foram encontrados resultados para a seleção!', mtWarning, [mbOk], 0);
    cbProcura.SetFocus;
  End;
end;

procedure TfrmProcExamesTipo.spProcuraClick(Sender: TObject);
begin
  Filtrar;
end;

procedure TfrmProcExamesTipo.btConfirmarClick(Sender: TObject);
begin
  Selecionar;
end;

procedure TfrmProcExamesTipo.btFecharClick(Sender: TObject);
begin
  Limpar;
  inherited;
end;

procedure TfrmProcExamesTipo.cbProcuraKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    Filtrar;
    GridProcura.SetFocus;
  end;
end;

procedure TfrmProcExamesTipo.FormActivate(Sender: TObject);
begin
  inherited;
  //Limpar;
end;

procedure TfrmProcExamesTipo.FormKeyPress(Sender: TObject; var Key: Char);
begin
  //inherited;

end;

procedure TfrmProcExamesTipo.GridProcuraDblClick(Sender: TObject);
begin
  Selecionar;
end;

procedure TfrmProcExamesTipo.GridProcuraKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #27 then
    cbProcura.SetFocus;
  if key = #13 then
    Selecionar;
end;

end.
