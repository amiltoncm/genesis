unit uProcExamesTipoCito;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, 
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpProcura, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Buttons, wwdblook;

type
  TfrmProcExamesTipoCito = class(TfrmTmpProcura)
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
  frmProcExamesTipoCito: TfrmProcExamesTipoCito;

implementation

{$R *.dfm}

uses uDaoExamesTipoCito, dataCadastros, dataLookups, uCadExamesTipoCito;

procedure TfrmProcExamesTipoCito.Limpar;
begin
  ListarExamesTipoCito('eto_descricao', '0');
end;

procedure TfrmProcExamesTipoCito.spLimparClick(Sender: TObject);
begin
  Limpar;
end;

procedure TfrmProcExamesTipoCito.Filtrar;
begin
  FiltrarExamesTipoCito('eto_local', 'like', '%' + cbProcura.Text + '%', 'eto_local', '0');
end;

procedure TfrmProcExamesTipoCito.Selecionar;
begin
  Try
    if Not(dsProcura.DataSet.FieldByName('eto_descricao').IsNull) then
    begin
      FiltrarExamesTipoCito('eto_descricao', '=', dsProcura.DataSet.FieldByName('eto_descricao').Text, 'eto_descricao', '0');
      frmCadExamesTipoCito.sbPrincipal.Panels[3].Text := 'Ativo';
      Close;
    end
    else
      MessageDlg('Não foram encontrados resultados para a seleção!', mtWarning, [mbOk], 0);
  Except
    MessageDlg('Não foram encontrados resultados para a seleção!', mtWarning, [mbOk], 0);
    cbProcura.SetFocus;
  End;
end;

procedure TfrmProcExamesTipoCito.spProcuraClick(Sender: TObject);
begin
  Filtrar;
end;

procedure TfrmProcExamesTipoCito.btConfirmarClick(Sender: TObject);
begin
  Selecionar;
end;

procedure TfrmProcExamesTipoCito.btFecharClick(Sender: TObject);
begin
  Limpar;
  inherited;
end;

procedure TfrmProcExamesTipoCito.cbProcuraKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    Filtrar;
    GridProcura.SetFocus;
  end;
end;

procedure TfrmProcExamesTipoCito.FormActivate(Sender: TObject);
begin
  inherited;
  //Limpar;
end;

procedure TfrmProcExamesTipoCito.GridProcuraDblClick(Sender: TObject);
begin
  Selecionar;
end;

procedure TfrmProcExamesTipoCito.GridProcuraKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #27 then
    cbProcura.SetFocus;
  if key = #13 then
    Selecionar;
end;

end.
