unit uProcFuncionarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, 
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpProcura, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Buttons, wwdblook;

type
  TfrmProcFuncionarios = class(TfrmTmpProcura)
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
  frmProcFuncionarios: TfrmProcFuncionarios;

implementation

{$R *.dfm}

uses uDaoFuncionarios, dataCadastros, dataLookups, uCadFuncionarios;

procedure TfrmProcFuncionarios.Limpar;
begin
  ListarFuncionarios('fun_nome', '0');
end;

procedure TfrmProcFuncionarios.spLimparClick(Sender: TObject);
begin
  Limpar;
end;

procedure TfrmProcFuncionarios.Filtrar;
begin
  FiltrarFuncionarios('fun_nome', 'LIKE', '%' + cbProcura.Text + '%', 'fun_nome', '0');
end;

procedure TfrmProcFuncionarios.Selecionar;
begin
  Try
    if Not(dsProcura.DataSet.FieldByName('fun_nome').IsNull) then
    begin
      FiltrarFuncionarios('fun_nome', '=', dsProcura.DataSet.FieldByName('fun_nome').Text, 'fun_nome', '0');
      frmCadFuncionarios.sbPrincipal.Panels[3].Text := 'Ativo';
      Close;
    end
    else
      MessageDlg('N�o foram encontrados resultados para a sele��o!', mtWarning, [mbOk], 0);
  Except
    MessageDlg('N�o foram encontrados resultados para a sele��o!', mtWarning, [mbOk], 0);
    cbProcura.SetFocus;
  End;
end;

procedure TfrmProcFuncionarios.spProcuraClick(Sender: TObject);
begin
  Filtrar;
end;

procedure TfrmProcFuncionarios.btConfirmarClick(Sender: TObject);
begin
  Selecionar;
end;

procedure TfrmProcFuncionarios.btFecharClick(Sender: TObject);
begin
  Limpar;
  inherited;
end;

procedure TfrmProcFuncionarios.cbProcuraKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    Filtrar;
    GridProcura.SetFocus;
  end;
end;

procedure TfrmProcFuncionarios.FormActivate(Sender: TObject);
begin
  inherited;
  //Limpar;
end;

procedure TfrmProcFuncionarios.GridProcuraDblClick(Sender: TObject);
begin
  Selecionar;
end;

procedure TfrmProcFuncionarios.GridProcuraKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #27 then
    cbProcura.SetFocus;
  if key = #13 then
    Selecionar;
end;

end.
