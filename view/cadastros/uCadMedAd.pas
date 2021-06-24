unit uCadMedAd;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpFormNormal, Vcl.Mask,
  Vcl.DBCtrls, Vcl.Buttons, Vcl.ActnList, Vcl.StdCtrls, wwdblook, Data.DB;

type
  TfrmCadMedAd = class(TfrmTmpFormNormal)
    Label1: TLabel;
    dsMedAd: TDataSource;
    cbMedico: TwwDBLookupCombo;
    ActionList1: TActionList;
    actGravar: TAction;
    actDeletar: TAction;
    spGrava: TSpeedButton;
    Label2: TLabel;
    dbTitulo: TDBEdit;
    dbNome: TDBEdit;
    spDeletar: TSpeedButton;
    Label3: TLabel;
    dbConselho: TDBEdit;
    dbNumConselho: TDBEdit;
    dbUF: TDBEdit;
    procedure filtrar;
    procedure FormActivate(Sender: TObject);
    procedure actGravarExecute(Sender: TObject);
    procedure actDeletarExecute(Sender: TObject);
    procedure cbMedicoKeyPress(Sender: TObject; var Key: Char);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadMedAd: TfrmCadMedAd;

implementation

{$R *.dfm}

uses dataCadastros, uDaoExamesRespAd, uVarGlobal, dataLookups, dataExames;

procedure TfrmCadMedAd.actDeletarExecute(Sender: TObject);
begin
  if not(dmExames.qyExamesRespAdexa_id.IsNull) then
    dmExames.qyExamesRespAd.Delete;
end;

procedure TfrmCadMedAd.actGravarExecute(Sender: TObject);
begin
  if cbMedico.Text <> '' then
  begin
    filtrar;
    if dmLookups.lkProcMedicosmed_codigo.Text <> dmExames.qyExamesmed_codigo.Text then
    begin
      if dmExames.qyExamesRespAdmed_nome.IsNull then
        InsExamesRespAd(vgExameMedAd, dmLookups.lkProcMedicosmed_codigo.Text)
      else
        UpdExamesRespAd(vgExameMedAd, dmLookups.lkProcMedicosmed_codigo.Text);
      dmExames.qyExamesRespAd.Refresh;
    end
    else
      MessageDlg('Você não pode selecionar o mesmo médico do exame!', mtError, [mbOk], 0);
  end
  else
    MessageDlg('Você deve selecionar um médico!', mtError, [mbOk], 0);
end;

procedure TfrmCadMedAd.cbMedicoKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    actGravar.Execute;
end;

procedure TfrmCadMedAd.filtrar;
begin
  FiltrarExamesRespAd('e.exa_id', '=', vgExameMedAd, '1', '0');
end;

procedure TfrmCadMedAd.FormActivate(Sender: TObject);
begin
  inherited;
  cbMedico.Text := '';
  filtrar;
  dsMedAd.DataSet.Active := true;
  cbMedico.SetFocus;
end;

end.
