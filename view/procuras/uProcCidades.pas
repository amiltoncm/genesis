unit uProcCidades;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, 
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpProcura, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Buttons, wwdblook;

type
  TfrmProcCidades = class(TfrmTmpProcura)
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
  frmProcCidades: TfrmProcCidades;

implementation

{$R *.dfm}

uses uDaoCidades, dataCadastros, dataLookups, uCadCidades;

procedure TfrmProcCidades.Limpar;
begin
  ListarCidades('cid_cidade', '0');
end;

procedure TfrmProcCidades.spLimparClick(Sender: TObject);
begin
  Limpar;
end;

procedure TfrmProcCidades.Filtrar;
begin
  FiltrarCidades('cid_cidade', 'LIKE', '%' + cbProcura.Text + '%', 'cid_cidade', '0');
end;

procedure TfrmProcCidades.Selecionar;
begin
  Try
    if Not(dsProcura.DataSet.FieldByName('cid_cidade').IsNull) then
    begin
      FiltrarCidades('cid_cidade', '=', dsProcura.DataSet.FieldByName('cid_cidade').Text, 'cid_cidade', '0');
      frmCadCidades.sbPrincipal.Panels[3].Text := 'Ativo';
      Close;
    end
    else
      MessageDlg('Não foram encontrados resultados para a seleção!', mtWarning, [mbOk], 0);
  Except
    MessageDlg('Não foram encontrados resultados para a seleção!', mtWarning, [mbOk], 0);
    cbProcura.SetFocus;
  End;
end;

procedure TfrmProcCidades.spProcuraClick(Sender: TObject);
begin
  Filtrar;
end;

procedure TfrmProcCidades.btConfirmarClick(Sender: TObject);
begin
  Selecionar;
end;

procedure TfrmProcCidades.btFecharClick(Sender: TObject);
begin
  Limpar;
  inherited;
end;

procedure TfrmProcCidades.cbProcuraKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    Filtrar;
    GridProcura.SetFocus;
  end;
end;

procedure TfrmProcCidades.FormActivate(Sender: TObject);
begin
  inherited;
  //Limpar;
end;

procedure TfrmProcCidades.GridProcuraDblClick(Sender: TObject);
begin
  Selecionar;
end;

procedure TfrmProcCidades.GridProcuraKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #27 then
    cbProcura.SetFocus;
  if key = #13 then
    Selecionar;
end;

end.
