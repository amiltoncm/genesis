unit uProcTopografias;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, 
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpProcura, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Buttons, wwdblook;

type
  TfrmProcTopografias = class(TfrmTmpProcura)
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
  frmProcTopografias: TfrmProcTopografias;

implementation

{$R *.dfm}

uses uDaoTopografias, dataCadastros, dataLookups, uCadTopografias;

procedure TfrmProcTopografias.Limpar;
begin
  ListarTopografias('top_descricao', '0');
end;

procedure TfrmProcTopografias.spLimparClick(Sender: TObject);
begin
  Limpar;
end;

procedure TfrmProcTopografias.Filtrar;
begin
  FiltrarTopografias('top_descricao', 'LIKE', '%' + cbProcura.Text + '%', 'top_descricao', '0');
end;

procedure TfrmProcTopografias.Selecionar;
begin
  Try
    if Not(dsProcura.DataSet.FieldByName('top_descricao').IsNull) then
    begin
      FiltrarTopografias('top_descricao', '=', dsProcura.DataSet.FieldByName('top_descricao').Text, 'top_descricao', '0');
      frmCadTopografias.sbPrincipal.Panels[3].Text := 'Ativo';
      Close;
    end
    else
      MessageDlg('Não foram encontrados resultados para a seleção!', mtWarning, [mbOk], 0);
  Except
    MessageDlg('Não foram encontrados resultados para a seleção!', mtWarning, [mbOk], 0);
    cbProcura.SetFocus;
  End;
end;

procedure TfrmProcTopografias.spProcuraClick(Sender: TObject);
begin
  Filtrar;
end;

procedure TfrmProcTopografias.btConfirmarClick(Sender: TObject);
begin
  Selecionar;
end;

procedure TfrmProcTopografias.btFecharClick(Sender: TObject);
begin
  Limpar;
  inherited;
end;

procedure TfrmProcTopografias.cbProcuraKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    Filtrar;
    GridProcura.SetFocus;
  end;
end;

procedure TfrmProcTopografias.FormActivate(Sender: TObject);
begin
  inherited;
  //Limpar;
end;

procedure TfrmProcTopografias.GridProcuraDblClick(Sender: TObject);
begin
  Selecionar;
end;

procedure TfrmProcTopografias.GridProcuraKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #27 then
    cbProcura.SetFocus;
  if key = #13 then
    Selecionar;
end;

end.
