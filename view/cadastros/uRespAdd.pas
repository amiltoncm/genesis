unit uRespAdd;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpFormNormal, Vcl.StdCtrls,
  Vcl.Buttons, Data.DB, Vcl.Grids, wwDataInspector, wwdblook, Vcl.ExtCtrls;

type
  TfrmRespAdd = class(TfrmTmpFormNormal)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    edExame: TEdit;
    cbResponsavel: TwwDBLookupCombo;
    wwDataInspector1: TwwDataInspector;
    SpeedButton2: TSpeedButton;
    dsExamesResp: TDataSource;
    procedure FormActivate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRespAdd: TfrmRespAdd;

implementation

{$R *.dfm}

uses dataExames, dataLookups, uDaoExamesResp, uVarGlobal;

procedure TfrmRespAdd.FormActivate(Sender: TObject);
begin
  inherited;
  dmLookups.lkProcResponsaveis.Active := True;
  dmLookups.lkProcResponsaveis.Refresh;
  cbResponsavel.Text := dmLookups.lkProcResponsaveisres_nome.Text;
  cbResponsavel.PerformSearch;
  FiltrarExamesResp('exa_id', '=', vgNumeExameRespAd, '0', '0');
  dsExamesResp.DataSet.Active := True;
  edExame.Text := vgNumeExameRespAd;
  cbResponsavel.SetFocus;
end;

procedure TfrmRespAdd.SpeedButton1Click(Sender: TObject);
begin
  if dmExames.qyExamesRespexa_id.IsNull then
  begin
    if cbResponsavel.Text <> '' then
    begin
      InsExamesResp(vgNumeExameRespAd, dmLookups.lkProcResponsaveisres_codigo.Text);
      Close;
    end
    else
      MessageDlg('Você deve selecionar um responsável!', mtWarning,  [mbok], 0);
  end
  else
    MessageDlg('Responsável existente, por favor exclua primeiro!', mtWarning,  [mbok], 0);
end;

procedure TfrmRespAdd.SpeedButton2Click(Sender: TObject);
begin
  if not(dmExames.qyExamesRespexa_id.IsNull) then
    if MessageDlg('Deseja excluir o responsável adicional?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      dmExames.qyExamesResp.Delete;
end;

end.
