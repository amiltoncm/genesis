unit uSelConvenio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpFormNormal, Vcl.StdCtrls,
  Vcl.Buttons, wwdbdatetimepicker, wwdblook;

type
  TfrmSelConvenio = class(TfrmTmpFormNormal)
    Label1: TLabel;
    cbConvenio: TwwDBLookupCombo;
    Label2: TLabel;
    edInicio: TwwDBDateTimePicker;
    btAlterar: TBitBtn;
    procedure FormActivate(Sender: TObject);
    procedure btAlterarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSelConvenio: TfrmSelConvenio;

implementation

{$R *.dfm}

uses dataLookups, dataExames, UFuncoesTISS, uAltVlrProced;

procedure TfrmSelConvenio.btAlterarClick(Sender: TObject);
begin
  if cbConvenio.Text <> '' then
  begin
    FiltraVlrProced(dmLookups.lkProcConvenioscov_codigo.Text, edInicio.Text);
    frmAltVlrProced.edCodigo.Text := dmLookups.lkProcConvenioscov_codigo.Text;
    frmAltVlrProced.edDescricao.Text := dmLookups.lkProcConvenioscov_descricao.Text;
    frmAltVlrProced.ShowModal;
    Close;
  end
  else
    MessageDlg('Você deve selecionar o convênio!', mtWarning, [mbok], 0);
end;

procedure TfrmSelConvenio.FormActivate(Sender: TObject);
begin
  inherited;
  cbConvenio.Clear;
  edInicio.Date := now - 30;
  cbConvenio.SetFocus;
end;

end.
