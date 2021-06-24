unit uExameTISS;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpFormNormal, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask, wwdbedit, Wwdotdot, Wwdbcomb, Data.DB;

type
  TfrmExameTISS = class(TfrmTmpFormNormal)
    pnExame: TPanel;
    Label10: TLabel;
    cbTpAtendimento: TwwDBComboBox;
    btConfigurarTISS: TBitBtn;
    btGravarTISS: TBitBtn;
    btCancelarTISS: TBitBtn;
    dsExamesTISS: TDataSource;
    procedure FormActivate(Sender: TObject);
    procedure btConfigurarTISSClick(Sender: TObject);
    procedure btGravarTISSClick(Sender: TObject);
    procedure btCancelarTISSClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmExameTISS: TfrmExameTISS;

implementation

{$R *.dfm}

uses uVarGlobal, dataExames, uDaoExamesTISS;

procedure TfrmExameTISS.btCancelarTISSClick(Sender: TObject);
begin
  if dsExamesTISS.DataSet.State in [dsInsert, dsEdit] then
    dsExamesTISS.DataSet.Cancel;
end;

procedure TfrmExameTISS.btConfigurarTISSClick(Sender: TObject);
begin
  if dsExamesTISS.DataSet.FieldByName('exa_id').IsNull then
    InsExamesTISS
  else
    EdtExamesTISS;
  cbTpAtendimento.SetFocus;
end;

procedure TfrmExameTISS.btGravarTISSClick(Sender: TObject);
begin
  if dsExamesTISS.DataSet.State in [dsInsert, dsEdit] then
  begin
    dsExamesTISS.DataSet.FieldByName('exa_id').Value := vgExameTISS;
    PostExamesTISS;
  end;
end;

procedure TfrmExameTISS.FormActivate(Sender: TObject);
begin
  inherited;
  pnExame.Caption := 'Exame: ' + vgExameTISS;
  FiltrarExamesTISS('exa_id', '=', vgExameTISS, '0', '0');
  btConfigurarTISS.SetFocus;
end;

procedure TfrmExameTISS.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if dsExamesTISS.DataSet.State in [dsInsert, dsEdit] then
  begin
    if MessageDlg('Existem alterações não gravadas, deseja cancelar?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      CanClose := True
    else
      CanClose := false;
  end;
end;

end.
