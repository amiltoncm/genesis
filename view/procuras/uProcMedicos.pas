unit uProcMedicos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, 
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpProcura, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Buttons, wwdblook;

type
  TfrmProcMedicos = class(TfrmTmpProcura)
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
  frmProcMedicos: TfrmProcMedicos;

implementation

{$R *.dfm}

uses uDaoMedicos, dataCadastros, dataLookups, uCadMedicos;

procedure TfrmProcMedicos.Limpar;
begin
  ListarMedicos('med_nome', '0');
end;

procedure TfrmProcMedicos.spLimparClick(Sender: TObject);
begin
  Limpar;
end;

procedure TfrmProcMedicos.Filtrar;
begin
  FiltrarMedicos('med_nome', 'LIKE', '%' + cbProcura.Text + '%', 'med_nome', '0');
end;

procedure TfrmProcMedicos.Selecionar;
begin
  Try
    if Not(dsProcura.DataSet.FieldByName('med_nome').IsNull) then
    begin
      FiltrarMedicos('med_nome', '=', dsProcura.DataSet.FieldByName('med_nome').Text, 'med_nome', '0');
      frmCadMedicos.sbPrincipal.Panels[3].Text := 'Ativo';
      Close;
    end
    else
      MessageDlg('Não foram encontrados resultados para a seleção!', mtWarning, [mbOk], 0);
  Except
    MessageDlg('Não foram encontrados resultados para a seleção!', mtWarning, [mbOk], 0);
    cbProcura.SetFocus;
  End;
end;

procedure TfrmProcMedicos.spProcuraClick(Sender: TObject);
begin
  Filtrar;
end;

procedure TfrmProcMedicos.btConfirmarClick(Sender: TObject);
begin
  Selecionar;
end;

procedure TfrmProcMedicos.btFecharClick(Sender: TObject);
begin
  Limpar;
  inherited;
end;

procedure TfrmProcMedicos.cbProcuraKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    Filtrar;
    GridProcura.SetFocus;
  end;
end;

procedure TfrmProcMedicos.FormActivate(Sender: TObject);
begin
  inherited;
  //Limpar;
end;

procedure TfrmProcMedicos.GridProcuraDblClick(Sender: TObject);
begin
  Selecionar;
end;

procedure TfrmProcMedicos.GridProcuraKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #27 then
    cbProcura.SetFocus;
  if key = #13 then
    Selecionar;
end;

end.
