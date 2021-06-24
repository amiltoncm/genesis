unit uProcLaudosMod;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, 
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpProcura, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Buttons, wwdblook;

type
  TfrmProcLaudosMod = class(TfrmTmpProcura)
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
  frmProcLaudosMod: TfrmProcLaudosMod;

implementation

{$R *.dfm}

uses uDaoLaudosMod, dataCadastros, dataLookups, uCadLaudosMod;

procedure TfrmProcLaudosMod.Limpar;
begin
  ListarLaudosMod('mod_descricao', '0');
end;

procedure TfrmProcLaudosMod.spLimparClick(Sender: TObject);
begin
  Limpar;
end;

procedure TfrmProcLaudosMod.Filtrar;
begin
  FiltrarLaudosMod('mod_descricao', 'LIKE', '%' + cbProcura.Text + '%', 'mod_descricao', '0');
end;

procedure TfrmProcLaudosMod.Selecionar;
begin
  Try
    if Not(dsProcura.DataSet.FieldByName('mod_descricao').IsNull) then
    begin
      FiltrarLaudosMod('mod_descricao', '=', dsProcura.DataSet.FieldByName('mod_descricao').Text, 'mod_descricao', '0');
      frmCadLaudosMod.sbPrincipal.Panels[3].Text := 'Ativo';
      Close;
    end
    else
      MessageDlg('Não foram encontrados resultados para a seleção!', mtWarning, [mbOk], 0);
  Except
    MessageDlg('Não foram encontrados resultados para a seleção!', mtWarning, [mbOk], 0);
    cbProcura.SetFocus;
  End;
end;

procedure TfrmProcLaudosMod.spProcuraClick(Sender: TObject);
begin
  Filtrar;
end;

procedure TfrmProcLaudosMod.btConfirmarClick(Sender: TObject);
begin
  Selecionar;
end;

procedure TfrmProcLaudosMod.btFecharClick(Sender: TObject);
begin
  Limpar;
  inherited;
end;

procedure TfrmProcLaudosMod.cbProcuraKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    Filtrar;
    GridProcura.SetFocus;
  end;
end;

procedure TfrmProcLaudosMod.FormActivate(Sender: TObject);
begin
  inherited;
  //Limpar;
end;

procedure TfrmProcLaudosMod.GridProcuraDblClick(Sender: TObject);
begin
  Selecionar;
end;

procedure TfrmProcLaudosMod.GridProcuraKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #27 then
    cbProcura.SetFocus;
  if key = #13 then
    Selecionar;
end;

end.
