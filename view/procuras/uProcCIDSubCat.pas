unit uProcCIDSubCat;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpProcura, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, wwdblook, Vcl.Buttons, Vcl.DBCtrls, Vcl.ExtCtrls;

type
  TfrmProcCIDSubCat = class(TfrmTmpProcura)
    Panel1: TPanel;
    Label2: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    Label3: TLabel;
    procedure Limpar;
    procedure Filtrar;
    procedure Selecionar;
    procedure btConfirmarClick(Sender: TObject);
    procedure spLimparClick(Sender: TObject);
    procedure spProcuraClick(Sender: TObject);
    procedure btFecharClick(Sender: TObject);
    procedure cbProcuraKeyPress(Sender: TObject; var Key: Char);
    procedure GridProcuraKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure GridProcuraDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProcCIDSubCat: TfrmProcCIDSubCat;

implementation

{$R *.dfm}

uses dataLookups, dataCadastros, uVarGlobal, uDaoCid10subcategorias, dataCid10;

procedure TfrmProcCIDSubCat.Limpar;
begin
  cbProcura.Clear;
  ListarCid10subcategorias('sct_descricao', '0');
  cbProcura.SetFocus;
end;

procedure TfrmProcCIDSubCat.btFecharClick(Sender: TObject);
begin
  Limpar;
  vgSubCat := '0';
  inherited;
end;

procedure TfrmProcCIDSubCat.cbProcuraKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    Filtrar;
    GridProcura.SetFocus;
  end;
end;

procedure TfrmProcCIDSubCat.Filtrar;
begin
  FiltrarCid10subcategorias('sct_descricao', ' like ', '%' + cbProcura.Text + '%', 'sct_descricao', '0');
end;

procedure TfrmProcCIDSubCat.FormActivate(Sender: TObject);
begin
  inherited;
  Limpar;
end;

procedure TfrmProcCIDSubCat.GridProcuraDblClick(Sender: TObject);
begin
  Selecionar;
end;

procedure TfrmProcCIDSubCat.GridProcuraKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #27 then
    cbProcura.SetFocus;
  if key = #13 then
    Selecionar;
end;

procedure TfrmProcCIDSubCat.Selecionar;
begin
  Try
    if Not(dsProcura.DataSet.FieldByName('sct_subcat').IsNull) then
    begin
      FiltrarCid10subcategorias('sct_subcat', '=', dsProcura.DataSet.FieldByName('sct_subcat').Text, 'sct_subcat', '0');
      vgSubCat := dsProcura.DataSet.FieldByName('sct_subcat').Text;
      Close;
    end
    else
      MessageDlg('Não foram encontrados resultados para a seleção!', mtWarning, [mbOk], 0);
  Except
    MessageDlg('Não foram encontrados resultados para a seleção!', mtWarning, [mbOk], 0);
    cbProcura.SetFocus;
  End;
end;

procedure TfrmProcCIDSubCat.spLimparClick(Sender: TObject);
begin
  Limpar;
end;

procedure TfrmProcCIDSubCat.spProcuraClick(Sender: TObject);
begin
  Filtrar;
end;

procedure TfrmProcCIDSubCat.btConfirmarClick(Sender: TObject);
begin
  Selecionar;
end;

end.
