unit uProcExamesLocais;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, 
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpProcura, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Buttons, wwdblook;

type
  TfrmProcExamesLocais = class(TfrmTmpProcura)
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
  frmProcExamesLocais: TfrmProcExamesLocais;

implementation

{$R *.dfm}

uses uDaoExamesLocais, dataCadastros, dataLookups, uCadExamesLocais;

procedure TfrmProcExamesLocais.Limpar;
begin
  ListarExamesLocais('exl_descricao', '0');
end;

procedure TfrmProcExamesLocais.spLimparClick(Sender: TObject);
begin
  Limpar;
end;

procedure TfrmProcExamesLocais.Filtrar;
begin
  FiltrarExamesLocais('exl_descricao', 'LIKE', '%' + cbProcura.Text + '%', 'exl_descricao', '0');
end;

procedure TfrmProcExamesLocais.Selecionar;
begin
  Try
    if Not(dsProcura.DataSet.FieldByName('exl_descricao').IsNull) then
    begin
      FiltrarExamesLocais('exl_descricao', '=', dsProcura.DataSet.FieldByName('exl_descricao').Text, 'exl_descricao', '0');
      frmCadExamesLocais.sbPrincipal.Panels[3].Text := 'Ativo';
      Close;
    end
    else
      MessageDlg('Não foram encontrados resultados para a seleção!', mtWarning, [mbOk], 0);
  Except
    MessageDlg('Não foram encontrados resultados para a seleção!', mtWarning, [mbOk], 0);
    cbProcura.SetFocus;
  End;
end;

procedure TfrmProcExamesLocais.spProcuraClick(Sender: TObject);
begin
  Filtrar;
end;

procedure TfrmProcExamesLocais.btConfirmarClick(Sender: TObject);
begin
  Selecionar;
end;

procedure TfrmProcExamesLocais.btFecharClick(Sender: TObject);
begin
  Limpar;
  inherited;
end;

procedure TfrmProcExamesLocais.cbProcuraKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    Filtrar;
    GridProcura.SetFocus;
  end;
end;

procedure TfrmProcExamesLocais.FormActivate(Sender: TObject);
begin
  inherited;
  //Limpar;
end;

procedure TfrmProcExamesLocais.GridProcuraDblClick(Sender: TObject);
begin
  Selecionar;
end;

procedure TfrmProcExamesLocais.GridProcuraKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #27 then
    cbProcura.SetFocus;
  if key = #13 then
    Selecionar;
end;

end.
