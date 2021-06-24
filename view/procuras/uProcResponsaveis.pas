unit uProcResponsaveis;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpProcura, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Buttons, wwdblook;

type
  TfrmProcResponsaveis = class(TfrmTmpProcura)
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
  frmProcResponsaveis: TfrmProcResponsaveis;

implementation

{$R *.dfm}

uses uDaoResponsaveis, dataCadastros, uCadResponsaveis, dataLookups;

procedure TfrmProcResponsaveis.Limpar;
begin
  ListarResponsaveis('res_nome', '0');
end;

procedure TfrmProcResponsaveis.spLimparClick(Sender: TObject);
begin
  Limpar;
end;

procedure TfrmProcResponsaveis.Filtrar;
begin
  FiltrarResponsaveis('res_nome', 'LIKE', '%' + cbProcura.Text + '%', 'res_nome', '0');
end;

procedure TfrmProcResponsaveis.Selecionar;
begin
  Try
    if Not(dsProcura.DataSet.FieldByName('res_nome').IsNull) then
    begin
      FiltrarResponsaveis('res_nome', '=', dsProcura.DataSet.FieldByName('res_nome').Text, 'res_nome', '0');
      frmCadResponsaveis.sbPrincipal.Panels[3].Text := 'Ativo';
      Close;
    end
    else
      MessageDlg('Não foram encontrados resultados para a seleção!', mtWarning, [mbOk], 0);
  Except
    MessageDlg('Não foram encontrados resultados para a seleção!', mtWarning, [mbOk], 0);
    cbProcura.SetFocus;
  End;
end;

procedure TfrmProcResponsaveis.spProcuraClick(Sender: TObject);
begin
  Filtrar;
end;

procedure TfrmProcResponsaveis.btConfirmarClick(Sender: TObject);
begin
  Selecionar;
end;

procedure TfrmProcResponsaveis.btFecharClick(Sender: TObject);
begin
  Limpar;
  inherited;
end;

procedure TfrmProcResponsaveis.cbProcuraKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    Filtrar;
    GridProcura.SetFocus;
  end;
end;

procedure TfrmProcResponsaveis.FormActivate(Sender: TObject);
begin
  inherited;
  //Limpar;
end;

procedure TfrmProcResponsaveis.GridProcuraDblClick(Sender: TObject);
begin
  Selecionar;
end;

procedure TfrmProcResponsaveis.GridProcuraKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #27 then
    cbProcura.SetFocus;
  if key = #13 then
    Selecionar;
end;

end.
