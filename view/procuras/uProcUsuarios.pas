unit uProcUsuarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpProcura, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, wwdblook, Vcl.Buttons;

type
  TfrmProcUsuarios = class(TfrmTmpProcura)
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
    procedure GridProcuraKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProcUsuarios: TfrmProcUsuarios;

implementation

{$R *.dfm}

uses dataCadastros, uDaoUsuarios, dataLookups, uCadUsuarios;

procedure TfrmProcUsuarios.limpar;
begin
  ListarUsuarios('u.usu_nome', '0');
end;

procedure TfrmProcUsuarios.btConfirmarClick(Sender: TObject);
begin
  selecionar;
end;

procedure TfrmProcUsuarios.btFecharClick(Sender: TObject);
begin
  limpar;
  inherited;
end;

procedure TfrmProcUsuarios.cbProcuraKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    filtrar;
    GridProcura.SetFocus;
  end;
end;

procedure TfrmProcUsuarios.filtrar;
begin
  FiltrarUsuarios('u.usu_nome', 'LIKE', '%' + cbProcura.Text + '%', 'u.usu_nome', '0');
end;

procedure TfrmProcUsuarios.FormActivate(Sender: TObject);
begin
  inherited;
  //limpar;
end;

procedure TfrmProcUsuarios.GridProcuraDblClick(Sender: TObject);
begin
  selecionar;
end;

procedure TfrmProcUsuarios.GridProcuraKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #27 then
    cbProcura.SetFocus;
  if key = #13 then
    Selecionar;
end;

procedure TfrmProcUsuarios.selecionar;
begin
  Try
    if Not(dsProcura.DataSet.FieldByName('usu_nome').IsNull) then
    begin
      FiltrarUsuarios('u.usu_codigo', '=', dsProcura.DataSet.FieldByName('usu_codigo').Text, 'u.usu_nome', '0');
      frmCadUsuarios.sbPrincipal.Panels[3].Text := 'Ativo';
      Close;
    end
    else
      MessageDlg('Não foram encontrados resultados para a seleção!', mtWarning, [mbOk], 0);
  Except
    MessageDlg('Não foram encontrados resultados para a seleção!', mtWarning, [mbOk], 0);
    cbProcura.SetFocus;
  end;
end;

procedure TfrmProcUsuarios.spLimparClick(Sender: TObject);
begin
  limpar;
end;

procedure TfrmProcUsuarios.spProcuraClick(Sender: TObject);
begin
  filtrar;
end;

end.
