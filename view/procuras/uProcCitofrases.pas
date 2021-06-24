unit uProcCitofrases;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, 
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpProcura, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Buttons, wwdblook;

type
  TfrmProcCitofrases = class(TfrmTmpProcura)
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
  frmProcCitofrases: TfrmProcCitofrases;

implementation

{$R *.dfm}

uses uDaoCitofrases, dataCadastros, dataLookups, uCadCitofrases;

procedure TfrmProcCitofrases.Limpar;
begin
  ListarCitofrases('ctf_frase');
end;

procedure TfrmProcCitofrases.spLimparClick(Sender: TObject);
begin
  Limpar;
end;

procedure TfrmProcCitofrases.Filtrar;
begin
  FiltrarCitofrases('ctf_frase', 'LIKE', cbProcura.Text + '%', 'ctf_frase');
end;

procedure TfrmProcCitofrases.Selecionar;
begin
  Try
    if Not(dsProcura.DataSet.FieldByName('ctf_frase').IsNull) then
    begin
      FiltrarCitofrases('ctf_frase', '=', dsProcura.DataSet.FieldByName('ctf_frase').Text, 'ctf_frase');
      frmCadCitofrases.sbPrincipal.Panels[3].Text := 'Ativo';
      Close;
    end
    else
      MessageDlg('Não foram encontrados resultados para a seleção!', mtWarning, [mbOk], 0);
  Except
    MessageDlg('Não foram encontrados resultados para a seleção!', mtWarning, [mbOk], 0);
    cbProcura.SetFocus;
  End;
end;

procedure TfrmProcCitofrases.spProcuraClick(Sender: TObject);
begin
  Filtrar;
end;

procedure TfrmProcCitofrases.btConfirmarClick(Sender: TObject);
begin
  Selecionar;
end;

procedure TfrmProcCitofrases.btFecharClick(Sender: TObject);
begin
  //Limpar;
  inherited;
end;

procedure TfrmProcCitofrases.cbProcuraKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    Filtrar;
    GridProcura.SetFocus;
  end;
end;

procedure TfrmProcCitofrases.FormActivate(Sender: TObject);
begin
  inherited;
  Limpar;
end;

procedure TfrmProcCitofrases.GridProcuraDblClick(Sender: TObject);
begin
  Selecionar;
end;

procedure TfrmProcCitofrases.GridProcuraKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #27 then
    cbProcura.SetFocus;
  if key = #13 then
    Selecionar;
end;

end.
