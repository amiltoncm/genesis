unit uProcLaudosModHist;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, 
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpProcura, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Buttons, wwdblook;

type
  TfrmProcLaudosModHist = class(TfrmTmpProcura)
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
  frmProcLaudosModHist: TfrmProcLaudosModHist;

implementation

{$R *.dfm}

uses uDaoLaudosModHist, dataCadastros, dataLookups, uCadLaudosModHist;

procedure TfrmProcLaudosModHist.Limpar;
begin
  ListarLaudosModHist('lmh_descricao', '0');
end;

procedure TfrmProcLaudosModHist.spLimparClick(Sender: TObject);
begin
  Limpar;
end;

procedure TfrmProcLaudosModHist.Filtrar;
begin
  FiltrarLaudosModHist('lmh_descricao', 'LIKE', '%' + cbProcura.Text + '%', 'lmh_descricao', '0');
end;

procedure TfrmProcLaudosModHist.Selecionar;
begin
  Try
    if Not(dsProcura.DataSet.FieldByName('lmh_id').IsNull) then
    begin
      FiltrarLaudosModHist('lmh_id', '=', dsProcura.DataSet.FieldByName('lmh_id').Text, 'lmh_id', '0');
      frmCadLaudosModHist.sbPrincipal.Panels[3].Text := 'Ativo';
      Close;
    end
    else
      MessageDlg('Não foram encontrados resultados para a seleção!', mtWarning, [mbOk], 0);
  Except
    MessageDlg('Não foram encontrados resultados para a seleção!', mtWarning, [mbOk], 0);
    cbProcura.SetFocus;
  End;
end;

procedure TfrmProcLaudosModHist.spProcuraClick(Sender: TObject);
begin
  Filtrar;
end;

procedure TfrmProcLaudosModHist.btConfirmarClick(Sender: TObject);
begin
  Selecionar;
end;

procedure TfrmProcLaudosModHist.btFecharClick(Sender: TObject);
begin
  Limpar;
  inherited;
end;

procedure TfrmProcLaudosModHist.cbProcuraKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    Filtrar;
    GridProcura.SetFocus;
  end;
end;

procedure TfrmProcLaudosModHist.FormActivate(Sender: TObject);
begin
  inherited;
  //Limpar;
end;

procedure TfrmProcLaudosModHist.GridProcuraDblClick(Sender: TObject);
begin
  Selecionar;
end;

procedure TfrmProcLaudosModHist.GridProcuraKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #27 then
    cbProcura.SetFocus;
  if key = #13 then
    Selecionar;
end;

end.
