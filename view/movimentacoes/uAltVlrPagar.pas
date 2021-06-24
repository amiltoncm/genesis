unit uAltVlrPagar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpFormNormal, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Mask, JvExMask, JvToolEdit, JvBaseEdits;

type
  TfrmAltVlrPagar = class(TfrmTmpFormNormal)
    Label1: TLabel;
    btConfirmar: TBitBtn;
    edValor: TJvCalcEdit;
    procedure FormActivate(Sender: TObject);
    procedure btConfirmarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAltVlrPagar: TfrmAltVlrPagar;

implementation

{$R *.dfm}

uses dataFinanceiro;

procedure TfrmAltVlrPagar.btConfirmarClick(Sender: TObject);
begin
  dmFinanceiro.qyPagar.Edit;
  dmFinanceiro.qyPagarpag_valor.Text := edValor.Text;
  dmFinanceiro.qyPagarpag_saldo.Text := edValor.Text;
  dmFinanceiro.qyPagar.Post;
  Messagedlg('Valor alterado corretamente!', mtInformation, [mbok], 0);
  Close;
end;

procedure TfrmAltVlrPagar.FormActivate(Sender: TObject);
begin
  inherited;
  edValor.Text := dmFinanceiro.qyPagarpag_valor.Text;
  edValor.SetFocus;
end;

end.
