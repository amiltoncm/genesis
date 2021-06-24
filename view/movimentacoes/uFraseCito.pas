unit uFraseCito;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpFormNormal, Vcl.StdCtrls,
  Vcl.Buttons, wwdblook, Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TfrmFraseCito = class(TfrmTmpFormNormal)
    Label1: TLabel;
    cbFrasesCito: TwwDBLookupCombo;
    Label2: TLabel;
    dsFraseCito: TDataSource;
    sbInsereFrase: TSpeedButton;
    sbDeletaClin: TSpeedButton;
    DBGrid1: TDBGrid;
    procedure FormActivate(Sender: TObject);
    procedure sbInsereFraseClick(Sender: TObject);
    procedure sbDeletaClinClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFraseCito: TfrmFraseCito;

implementation

{$R *.dfm}

uses dataLookups, uDaoExamesFrases, uClassExamesfrases, uVarGlobal, dataExames;

procedure TfrmFraseCito.FormActivate(Sender: TObject);
begin
  inherited;
  dsFraseCito.DataSet.Active := True;
  cbFrasesCito.Clear;
  cbFrasesCito.SetFocus;
end;

procedure TfrmFraseCito.sbDeletaClinClick(Sender: TObject);
begin
  if MessageDlg('Deseja realmente excluir a frase selecionada?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    dsFraseCito.DataSet.Delete;
end;

procedure TfrmFraseCito.sbInsereFraseClick(Sender: TObject);
Var
vExameFrase: TExamesfrases;
begin
  if cbFrasesCito.Text <> '' then
  begin
    vExameFrase := TExamesfrases.Create;
    InsExamesFrases;
    vExameFrase.Exame := vgExameFrase;
    vExameFrase.Idfrase := dmLookups.lkProcCitofrasesctf_id.Value;
    SetValuesExamesFrases(vExameFrase);
    PostExamesFrases;
    vExameFrase.Free;
  end
  else
    MessageDlg('Você deve selecionar uma frase!', mtWarning, [mbOk], 0);
end;

end.
