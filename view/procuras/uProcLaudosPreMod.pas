unit uProcLaudosPreMod;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, 
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpProcura, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Buttons, wwdblook;

type
  TfrmProcLaudosPreMod = class(TfrmTmpProcura)
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
  frmProcLaudosPreMod: TfrmProcLaudosPreMod;

implementation

{$R *.dfm}

uses uDaoLaudosPreMod, dataCadastros, dataLookups, uCadLaudosPreMod;

procedure TfrmProcLaudosPreMod.Limpar;
begin
  ListarLaudosPreMod('lpm_codigo');
end;

procedure TfrmProcLaudosPreMod.spLimparClick(Sender: TObject);
begin
  Limpar;
end;

procedure TfrmProcLaudosPreMod.Filtrar;
begin
  FiltrarLaudosPreMod('lpm_descricao', 'LIKE', cbProcura.Text + '%', 'lpm_codigo');
end;

procedure TfrmProcLaudosPreMod.Selecionar;
begin
  Try
    if Not(dsProcura.DataSet.FieldByName('lpm_descricao').IsNull) then
    begin
      FiltrarLaudosPreMod('lpm_descricao', '=', dsProcura.DataSet.FieldByName('lpm_descricao').Text, 'lpm_codigo');
      frmCadLaudosPreMod.sbPrincipal.Panels[3].Text := 'Ativo';
      Close;
    end
    else
      MessageDlg('Não foram encontrados resultados para a seleção!', mtWarning, [mbOk], 0);
  Except
    MessageDlg('Não foram encontrados resultados para a seleção!', mtWarning, [mbOk], 0);
    cbProcura.SetFocus;
  End;
end;

procedure TfrmProcLaudosPreMod.spProcuraClick(Sender: TObject);
begin
  Filtrar;
end;

procedure TfrmProcLaudosPreMod.btConfirmarClick(Sender: TObject);
begin
  Selecionar;
end;

procedure TfrmProcLaudosPreMod.btFecharClick(Sender: TObject);
begin
  //Limpar;
  inherited;
end;

procedure TfrmProcLaudosPreMod.cbProcuraKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    Filtrar;
    GridProcura.SetFocus;
  end;
end;

procedure TfrmProcLaudosPreMod.FormActivate(Sender: TObject);
begin
  inherited;
  Limpar;
end;

procedure TfrmProcLaudosPreMod.GridProcuraDblClick(Sender: TObject);
begin
  Selecionar;
end;

procedure TfrmProcLaudosPreMod.GridProcuraKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #27 then
    cbProcura.SetFocus;
  if key = #13 then
    Selecionar;
end;

end.
