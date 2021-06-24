unit uProcPacientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpProcura, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, wwdblook, Vcl.Buttons;

type
  TfrmProcPacientes = class(TfrmTmpProcura)
    procedure limpar;
    procedure filtrar;
    procedure selecionar;
    procedure spLimparClick(Sender: TObject);
    procedure spProcuraClick(Sender: TObject);
    procedure btConfirmarClick(Sender: TObject);
    procedure btFecharClick(Sender: TObject);
    procedure cbProcuraKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure GridProcuraDblClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure GridProcuraKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProcPacientes: TfrmProcPacientes;

implementation

{$R *.dfm}

uses dataCadastros, uDaoPacientes, uCadPacientes, dataLookups;

procedure TfrmProcPacientes.limpar;
begin
  ListarPacientes('p.pac_nome', '0');
end;

procedure TfrmProcPacientes.btConfirmarClick(Sender: TObject);
begin
  selecionar;
end;

procedure TfrmProcPacientes.btFecharClick(Sender: TObject);
begin
  limpar;
  inherited;
end;

procedure TfrmProcPacientes.cbProcuraKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    filtrar;
    GridProcura.SetFocus;
  end;
end;

procedure TfrmProcPacientes.filtrar;
begin
  FiltrarPacientes('p.pac_nome', 'LIKE', '%' + cbProcura.Text + '%', 'p.pac_nome', '0');
end;

procedure TfrmProcPacientes.FormActivate(Sender: TObject);
begin
  inherited;
  //limpar;
end;

procedure TfrmProcPacientes.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #27 then
    cbProcura.SetFocus;
  if key = #13 then
    Selecionar;
end;

procedure TfrmProcPacientes.GridProcuraDblClick(Sender: TObject);
begin
  selecionar;
end;

procedure TfrmProcPacientes.GridProcuraKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #27 then
    cbProcura.SetFocus;
  if key = #13 then
    Selecionar;
end;

procedure TfrmProcPacientes.selecionar;
begin
  Try
    if Not(dsProcura.DataSet.FieldByName('pac_codigo').IsNull) then
    begin
      FiltrarPacientes('p.pac_codigo', '=', dsProcura.DataSet.FieldByName('pac_codigo').Text, 'p.pac_nome', '0');
      frmCadPacientes.sbPrincipal.Panels[3].Text := 'Ativo';
      Close;
    end
    else
      MessageDlg('Não foram encontrados resultados para a seleção!', mtWarning, [mbOk], 0);
  Except
    MessageDlg('Não foram encontrados resultados para a seleção!', mtWarning, [mbOk], 0);
    cbProcura.SetFocus;
  end;
end;

procedure TfrmProcPacientes.spLimparClick(Sender: TObject);
begin
  limpar;
end;

procedure TfrmProcPacientes.spProcuraClick(Sender: TObject);
begin
  filtrar;
end;

end.
