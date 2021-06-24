unit uDoencaNew;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpFormNormal, Vcl.StdCtrls,
  Vcl.Buttons, Data.DB, Vcl.Grids, Wwdbigrd, Wwdbgrid, wwdblook, Vcl.Mask,
  Vcl.DBCtrls, Vcl.DBGrids;

type
  TfrmDoencaNew = class(TfrmTmpFormNormal)
    Label1: TLabel;
    dbGridDadosClin: TwwDBGrid;
    Label2: TLabel;
    dsHistologia: TDataSource;
    cbDoenca: TwwDBLookupCombo;
    btInsereDoenca: TBitBtn;
    Label3: TLabel;
    dsDoencas: TDataSource;
    DBGrid1: TDBGrid;
    SpeedButton1: TSpeedButton;
    procedure FormActivate(Sender: TObject);
    procedure dsHistologiaDataChange(Sender: TObject; Field: TField);
    procedure SpeedButton1Click(Sender: TObject);
    procedure btInsereDoencaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDoencaNew: TfrmDoencaNew;

implementation

{$R *.dfm}

uses uVarGlobal, dataLookups, uDaoMatCid, dataExames, uDaoExamesDoencas;

procedure TfrmDoencaNew.btInsereDoencaClick(Sender: TObject);
begin
  InsExamesDoencas(vgIDExameInsDoenca, dmLookups.lkProcMatCidsct_subcat.Text,
                   dsHistologia.DataSet.FieldByName('mat_id').Text);
end;

procedure TfrmDoencaNew.dsHistologiaDataChange(Sender: TObject; Field: TField);
begin
  if dsHistologia.DataSet.FieldByName('mat_id').IsNull then
    FiltrarLkMatCid('mat_id', '=', '0', '0', '0')
  else
    FiltrarLkMatCid('mat_id', '=', dsHistologia.DataSet.FieldByName('mat_id').Text, '0', '0');
end;

procedure TfrmDoencaNew.FormActivate(Sender: TObject);
begin
  dmLookups.lkProcMatCid.Active := True;
  FiltrarExamesDoencas('exa_id', '=', vgIDExameInsDoenca, 'sct_subcat', '0');
  inherited;
  Self.Caption := Self.Caption + ' - Exame: ' + vgIDExameInsDoenca;
  dsHistologia.DataSet.Active := True;
end;

procedure TfrmDoencaNew.SpeedButton1Click(Sender: TObject);
begin
  if MessageDlg('Deseja realmente excluir a doença selecionada?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    dsDoencas.DataSet.Delete;
end;

end.
