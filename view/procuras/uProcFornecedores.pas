unit uProcFornecedores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, 
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpProcura, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Buttons, wwdblook;

type
  TfrmProcFornecedores = class(TfrmTmpProcura)
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
  frmProcFornecedores: TfrmProcFornecedores;

implementation

{$R *.dfm}

uses uDaoFornecedores, dataCadastros, dataLookups, uCadFornecedores;

procedure TfrmProcFornecedores.Limpar;
begin
  ListarFornecedores('for_razao', '0');
end;

procedure TfrmProcFornecedores.spLimparClick(Sender: TObject);
begin
  Limpar;
end;

procedure TfrmProcFornecedores.Filtrar;
begin
  FiltrarFornecedores('for_razao', 'LIKE', '%' + cbProcura.Text + '%', 'for_razao', '0');
end;

procedure TfrmProcFornecedores.Selecionar;
begin
  Try
    if Not(dsProcura.DataSet.FieldByName('for_razao').IsNull) then
    begin
      FiltrarFornecedores('for_razao', '=', dsProcura.DataSet.FieldByName('for_razao').Text, 'for_razao', '0');
      frmCadFornecedores.sbPrincipal.Panels[3].Text := 'Ativo';
      Close;
    end
    else
      MessageDlg('Não foram encontrados resultados para a seleção!', mtWarning, [mbOk], 0);
  Except
    MessageDlg('Não foram encontrados resultados para a seleção!', mtWarning, [mbOk], 0);
    cbProcura.SetFocus;
  End;
end;

procedure TfrmProcFornecedores.spProcuraClick(Sender: TObject);
begin
  Filtrar;
end;

procedure TfrmProcFornecedores.btConfirmarClick(Sender: TObject);
begin
  Selecionar;
end;

procedure TfrmProcFornecedores.btFecharClick(Sender: TObject);
begin
  Limpar;
  inherited;
end;

procedure TfrmProcFornecedores.cbProcuraKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    Filtrar;
    GridProcura.SetFocus;
  end;
end;

procedure TfrmProcFornecedores.FormActivate(Sender: TObject);
begin
  inherited;
  //Limpar;
end;

procedure TfrmProcFornecedores.GridProcuraDblClick(Sender: TObject);
begin
  Selecionar;
end;

procedure TfrmProcFornecedores.GridProcuraKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #27 then
    cbProcura.SetFocus;
  if key = #13 then
    Selecionar;
end;

end.
