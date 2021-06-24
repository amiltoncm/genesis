unit uProcMateriais;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, 
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpProcura, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Buttons, wwdblook;

type
  TfrmProcMateriais = class(TfrmTmpProcura)
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
  frmProcMateriais: TfrmProcMateriais;

implementation

{$R *.dfm}

uses uDaoMateriais, dataCadastros, dataLookups, uCadMateriais;

procedure TfrmProcMateriais.Limpar;
begin
  ListarMateriais('mat_descricao', '0');
end;

procedure TfrmProcMateriais.spLimparClick(Sender: TObject);
begin
  Limpar;
end;

procedure TfrmProcMateriais.Filtrar;
begin
  FiltrarMateriais('mat_descricao', 'LIKE', '%' + cbProcura.Text + '%', 'mat_descricao', '0');
end;

procedure TfrmProcMateriais.Selecionar;
begin
  Try
    if Not(dsProcura.DataSet.FieldByName('mat_descricao').IsNull) then
    begin
      FiltrarMateriais('mat_descricao', '=', dsProcura.DataSet.FieldByName('mat_descricao').Text, 'mat_descricao', '0');
      frmCadMateriais.sbPrincipal.Panels[3].Text := 'Ativo';
      Close;
    end
    else
      MessageDlg('Não foram encontrados resultados para a seleção!', mtWarning, [mbOk], 0);
  Except
    MessageDlg('Não foram encontrados resultados para a seleção!', mtWarning, [mbOk], 0);
    cbProcura.SetFocus;
  End;
end;

procedure TfrmProcMateriais.spProcuraClick(Sender: TObject);
begin
  Filtrar;
end;

procedure TfrmProcMateriais.btConfirmarClick(Sender: TObject);
begin
  Selecionar;
end;

procedure TfrmProcMateriais.btFecharClick(Sender: TObject);
begin
  Limpar;
  inherited;
end;

procedure TfrmProcMateriais.cbProcuraKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    Filtrar;
    GridProcura.SetFocus;
  end;
end;

procedure TfrmProcMateriais.FormActivate(Sender: TObject);
begin
  inherited;
  //Limpar;
end;

procedure TfrmProcMateriais.GridProcuraDblClick(Sender: TObject);
begin
  Selecionar;
end;

procedure TfrmProcMateriais.GridProcuraKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #27 then
    cbProcura.SetFocus;
  if key = #13 then
    Selecionar;
end;

end.
