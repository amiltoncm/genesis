unit uProcExamesTipoHist;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, 
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpProcura, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Buttons, wwdblook;

type
  TfrmProcExamesTipoHist = class(TfrmTmpProcura)
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
  frmProcExamesTipoHist: TfrmProcExamesTipoHist;

implementation

{$R *.dfm}

uses uDaoExamesTipoHist, dataCadastros, dataLookups, uCadExamesTipoHist;

procedure TfrmProcExamesTipoHist.Limpar;
begin
  ListarExamesTipoHist('t.eth_descricao', '0');
end;

procedure TfrmProcExamesTipoHist.spLimparClick(Sender: TObject);
begin
  Limpar;
end;

procedure TfrmProcExamesTipoHist.Filtrar;
begin
  FiltrarExamesTipoHist('t.eth_descricao', 'LIKE', '%' + cbProcura.Text + '%', 'eth_descricao', '0');
end;

procedure TfrmProcExamesTipoHist.Selecionar;
begin
  Try
    if Not(dsProcura.DataSet.FieldByName('eth_descricao').IsNull) then
    begin
      FiltrarExamesTipoHist('eth_descricao', '=', dsProcura.DataSet.FieldByName('eth_descricao').Text, 'eth_descricao', '0');
      frmCadExamesTipoHist.sbPrincipal.Panels[3].Text := 'Ativo';
      Close;
    end
    else
      MessageDlg('Não foram encontrados resultados para a seleção!', mtWarning, [mbOk], 0);
  Except
    MessageDlg('Não foram encontrados resultados para a seleção!', mtWarning, [mbOk], 0);
    cbProcura.SetFocus;
  End;
end;

procedure TfrmProcExamesTipoHist.spProcuraClick(Sender: TObject);
begin
  Filtrar;
end;

procedure TfrmProcExamesTipoHist.btConfirmarClick(Sender: TObject);
begin
  Selecionar;
end;

procedure TfrmProcExamesTipoHist.btFecharClick(Sender: TObject);
begin
  Limpar;
  inherited;
end;

procedure TfrmProcExamesTipoHist.cbProcuraKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    Filtrar;
    GridProcura.SetFocus;
  end;
end;

procedure TfrmProcExamesTipoHist.FormActivate(Sender: TObject);
begin
  inherited;
  //Limpar;
end;

procedure TfrmProcExamesTipoHist.GridProcuraDblClick(Sender: TObject);
begin
  Selecionar;
end;

procedure TfrmProcExamesTipoHist.GridProcuraKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #27 then
    cbProcura.SetFocus;
  if key = #13 then
    Selecionar;
end;

end.
