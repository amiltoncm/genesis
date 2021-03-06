unit uProcAcesso;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, 
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpProcura, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Buttons, wwdblook;

type
  TfrmProcAcesso = class(TfrmTmpProcura)
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
  frmProcAcesso: TfrmProcAcesso;

implementation

{$R *.dfm}

uses uDaoAcesso, dataCadastros, dataLookups, uCadAcesso;

procedure TfrmProcAcesso.Limpar;
begin
  ListarAcesso('ace_descricao', '0');
end;

procedure TfrmProcAcesso.spLimparClick(Sender: TObject);
begin
  Limpar;
end;

procedure TfrmProcAcesso.Filtrar;
begin
  FiltrarAcesso('ace_descricao', 'LIKE', '%' + cbProcura.Text + '%', 'ace_descricao', '0');
end;

procedure TfrmProcAcesso.Selecionar;
begin
  Try
    if Not(dsProcura.DataSet.FieldByName('ace_descricao').IsNull) then
    begin
      FiltrarAcesso('ace_descricao', '=', dsProcura.DataSet.FieldByName('ace_descricao').Text, 'ace_descricao', '0');
      frmCadAcesso.sbPrincipal.Panels[3].Text := 'Ativo';
      Close;
    end
    else
      MessageDlg('N?o foram encontrados resultados para a sele??o!', mtWarning, [mbOk], 0);
  Except
    MessageDlg('N?o foram encontrados resultados para a sele??o!', mtWarning, [mbOk], 0);
    cbProcura.SetFocus;
  End;
end;

procedure TfrmProcAcesso.spProcuraClick(Sender: TObject);
begin
  Filtrar;
end;

procedure TfrmProcAcesso.btConfirmarClick(Sender: TObject);
begin
  Selecionar;
end;

procedure TfrmProcAcesso.btFecharClick(Sender: TObject);
begin
  Limpar;
  inherited;
end;

procedure TfrmProcAcesso.cbProcuraKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    Filtrar;
    GridProcura.SetFocus;
  end;
end;

procedure TfrmProcAcesso.FormActivate(Sender: TObject);
begin
  inherited;
  //Limpar;
end;

procedure TfrmProcAcesso.GridProcuraDblClick(Sender: TObject);
begin
  Selecionar;
end;

procedure TfrmProcAcesso.GridProcuraKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #27 then
    cbProcura.SetFocus;
  if key = #13 then
    Selecionar;
end;

end.
