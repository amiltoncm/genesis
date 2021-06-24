unit uProcAgenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, 
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpProcura, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Buttons, wwdblook;

type
  TfrmProcAgenda = class(TfrmTmpProcura)
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
  frmProcAgenda: TfrmProcAgenda;

implementation

{$R *.dfm}

uses uDaoAgenda, dataCadastros, dataLookups, uCadAgenda;

procedure TfrmProcAgenda.Limpar;
begin
  ListarAgenda('age_nome', '0');
end;

procedure TfrmProcAgenda.spLimparClick(Sender: TObject);
begin
  Limpar;
end;

procedure TfrmProcAgenda.Filtrar;
begin
  FiltrarAgenda('age_nome', 'LIKE', '%' + cbProcura.Text + '%', 'age_nome', '0');
end;

procedure TfrmProcAgenda.Selecionar;
begin
  Try
    if Not(dsProcura.DataSet.FieldByName('age_nome').IsNull) then
    begin
      FiltrarAgenda('age_nome', '=', dsProcura.DataSet.FieldByName('age_nome').Text, 'age_nome', '0');
      frmCadAgenda.sbPrincipal.Panels[3].Text := 'Ativo';
      Close;
    end
    else
      MessageDlg('Não foram encontrados resultados para a seleção!', mtWarning, [mbOk], 0);
  Except
    MessageDlg('Não foram encontrados resultados para a seleção!', mtWarning, [mbOk], 0);
    cbProcura.SetFocus;
  End;
end;

procedure TfrmProcAgenda.spProcuraClick(Sender: TObject);
begin
  Filtrar;
end;

procedure TfrmProcAgenda.btConfirmarClick(Sender: TObject);
begin
  Selecionar;
end;

procedure TfrmProcAgenda.btFecharClick(Sender: TObject);
begin
  Limpar;
  inherited;
end;

procedure TfrmProcAgenda.cbProcuraKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    Filtrar;
    GridProcura.SetFocus;
  end;
end;

procedure TfrmProcAgenda.FormActivate(Sender: TObject);
begin
  inherited;
  //Limpar;
end;

procedure TfrmProcAgenda.GridProcuraDblClick(Sender: TObject);
begin
  Selecionar;
end;

procedure TfrmProcAgenda.GridProcuraKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #27 then
    cbProcura.SetFocus;
  if key = #13 then
    Selecionar;
end;

end.
