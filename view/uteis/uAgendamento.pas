unit uAgendamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpFormNormal, Vcl.StdCtrls,
  Vcl.Buttons, Data.DB, Vcl.DBCtrls, Vcl.Mask, wwdbdatetimepicker;

type
  TfrmAgendamento = class(TfrmTmpFormNormal)
    Label1: TLabel;
    dbData: TwwDBDateTimePicker;
    Label2: TLabel;
    dbHora: TDBEdit;
    Label4: TLabel;
    dbObs: TDBEdit;
    Label3: TLabel;
    memObs: TDBMemo;
    cbAlerta: TDBCheckBox;
    btAgendar: TBitBtn;
    dsAgendaDia: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btFecharClick(Sender: TObject);
    procedure btAgendarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAgendamento: TfrmAgendamento;

implementation

{$R *.dfm}

uses dataGestao, uPrincipal, uDaoAgendaDia, uVarGlobal;

procedure TfrmAgendamento.btAgendarClick(Sender: TObject);
begin
  Try
  dmGestao.qyAgendaDiaagd_confirma.Text := 'N';
  dmGestao.qyAgendaDiausu_codigo.Text := vgCodUsuarioLog;
  dsAgendaDia.DataSet.Post;
  If Messagedlg('Agendamento efetuado com sucesso!' + #13 + 'Deseja efetuar outro?',
   mtConfirmation,[mbYes, mbno], 0) = mrYes then
  Begin
    dsAgendaDia.DataSet.Insert;
    dbData.SetFocus;
  end
  else
    Close;
  Except
    Messagedlg('Horário reservado!', mterror, [mbok],0);
  end;
end;

procedure TfrmAgendamento.btFecharClick(Sender: TObject);
begin
  dsAgendaDia.DataSet.Cancel;
  inherited;
end;

procedure TfrmAgendamento.FormActivate(Sender: TObject);
begin
  inherited;
  frmAgendamento.Caption := ('Agendamento - ' + vgNomeUsuarioLog);
  dsAgendaDia.DataSet.Active := True;
  InsAgendaDia;
  dbData.SetFocus;
end;

procedure TfrmAgendamento.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmPrincipal.TimerAgenda.Enabled := false;
  if VerificaAgenda(FormatDateTime(vgMaskData, now)) = true then
    frmPrincipal.TimerAgenda.Enabled := true;
  inherited;
end;

procedure TfrmAgendamento.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if dsAgendaDia.DataSet.State in [dsInsert, dsEdit] then
    if Messagedlg('Existem alterações pendentes,'+#13+'deseja salvar?',mtConfirmation,[mbYes, mbNo],0) = mrYes then
      Canclose := False
  else
  Begin
    dsAgendaDia.DataSet.Cancel;
    Canclose := True;
  end;
  inherited;
end;

end.
