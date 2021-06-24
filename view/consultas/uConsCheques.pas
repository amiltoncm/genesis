unit uConsCheques;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpConsultasNormal, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, wwdbedit, Wwdotdot,
  Wwdbcomb, wwdbdatetimepicker;

type
  TfrmConsCheques = class(TfrmTmpConsultasNormal)
    Label2: TLabel;
    edInicio: TwwDBDateTimePicker;
    Label3: TLabel;
    edFinal: TwwDBDateTimePicker;
    Label4: TLabel;
    cbEstado: TwwDBComboBox;
    Label5: TLabel;
    Label6: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure btLimparClick(Sender: TObject);
    procedure btFiltrarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsCheques: TfrmConsCheques;

implementation

{$R *.dfm}

uses dataFinanceiro, uDaoCheques, uVarGlobal;

procedure TfrmConsCheques.btFiltrarClick(Sender: TObject);
begin
  if edParametro.Text <> '' then
  begin
    FiltrarConsCheques(edParametro.Text, FormatDateTime(vgMaskData, edInicio.Date),
                       FormatDateTime(vgMaskData, edFinal.Date), cbEstado.Value);
  end
  else
    MessageDlg('É necessário preencher um titular!', mtWarning, [mbok], 0);
end;

procedure TfrmConsCheques.btLimparClick(Sender: TObject);
begin
  ListarCheques('c.chq_vencimento', '0');
  inherited;
end;

procedure TfrmConsCheques.FormActivate(Sender: TObject);
begin
  edParametro.Clear;
  cbEstado.ItemIndex := 0;
  edInicio.Date := now;
  edFinal.Date := now;
  ListarCheques('c.chq_vencimento', '0');
  inherited;
end;

end.
