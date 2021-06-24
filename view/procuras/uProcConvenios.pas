unit uProcConvenios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, 
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpProcura, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Buttons, wwdblook;

type
  TfrmProcConvenios = class(TfrmTmpProcura)
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
  frmProcConvenios: TfrmProcConvenios;

implementation

{$R *.dfm}

uses uDaoConvenios, dataCadastros, dataLookups, uCadConvenios;

procedure TfrmProcConvenios.Limpar;
begin
  ListarConvenios('cov_descricao', '0');
end;

procedure TfrmProcConvenios.spLimparClick(Sender: TObject);
begin
  Limpar;
end;

procedure TfrmProcConvenios.Filtrar;
begin
  FiltrarConvenios('cov_descricao', 'LIKE', '%' + cbProcura.Text + '%', 'cov_descricao', '0');
end;

procedure TfrmProcConvenios.Selecionar;
begin
  Try
    if Not(dsProcura.DataSet.FieldByName('cov_descricao').IsNull) then
    begin
      FiltrarConvenios('cov_descricao', '=', dsProcura.DataSet.FieldByName('cov_descricao').Text, 'cov_descricao', '0');
      frmCadConvenios.sbPrincipal.Panels[3].Text := 'Ativo';
      Close;
    end
    else
      MessageDlg('Não foram encontrados resultados para a seleção!', mtWarning, [mbOk], 0);
  Except
    MessageDlg('Não foram encontrados resultados para a seleção!', mtWarning, [mbOk], 0);
    cbProcura.SetFocus;
  End;
end;

procedure TfrmProcConvenios.spProcuraClick(Sender: TObject);
begin
  Filtrar;
end;

procedure TfrmProcConvenios.btConfirmarClick(Sender: TObject);
begin
  Selecionar;
end;

procedure TfrmProcConvenios.btFecharClick(Sender: TObject);
begin
  Limpar;
  inherited;
end;

procedure TfrmProcConvenios.cbProcuraKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    Filtrar;
    GridProcura.SetFocus;
  end;
end;

procedure TfrmProcConvenios.FormActivate(Sender: TObject);
begin
  inherited;
  //Limpar;
end;

procedure TfrmProcConvenios.GridProcuraDblClick(Sender: TObject);
begin
  Selecionar;
end;

procedure TfrmProcConvenios.GridProcuraKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #27 then
    cbProcura.SetFocus;
  if key = #13 then
    Selecionar;
end;

end.
