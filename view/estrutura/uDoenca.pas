unit uDoenca;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpFormNormal, Vcl.StdCtrls,
  Vcl.Buttons, Data.DB, Vcl.Grids, Vcl.DBGrids, wwdblook, Vcl.Mask, Vcl.DBCtrls;

type
  TfrmDoenca = class(TfrmTmpFormNormal)
    Label15: TLabel;
    dbCodDoenca: TDBEdit;
    cbDoenca: TwwDBLookupCombo;
    btInsereDoenca: TBitBtn;
    DBGrid1: TDBGrid;
    dsExameDoencas: TDataSource;
    dsDoencas: TDataSource;
    SpeedButton1: TSpeedButton;
    procedure FormActivate(Sender: TObject);
    procedure btInsereDoencaClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDoenca: TfrmDoenca;

implementation

{$R *.dfm}

uses dataExames, dataCid10, uVarGlobal, uFuncoesDB, uDaoExamesDoencas;

procedure TfrmDoenca.btInsereDoencaClick(Sender: TObject);
begin
  if cbDoenca.Text <> '' then
  Begin
    Try
    dsExameDoencas.DataSet.Insert;
    dmExames.qyExamesDoencasedo_id.Value := GetCodigo('edo_id','examesdoencas');
    dmExames.qyExamesDoencasexa_id.Text := vgIDExameInsDoenca;
    dmExames.qyExamesDoencassct_subcat.Text := dmCid10.qySubCategoriassct_subcat.Text;
    dsExameDoencas.DataSet.Post;
    dsExameDoencas.DataSet.Refresh;
    if MessageDlg('Doença inserida com sucesso!' + #13 + 'Deseja inserir outra?', mtConfirmation, [mbYes, mbNo],  0) = mrNo then
      Close;
    Except
       MessageDlg('Não foi possível gravar a doença!', mtError, [mbok], 0);
    end;
  end
  else
    MessageDlg('você deve selecionar a doença!', mtWarning, [mbok],0);
end;

procedure TfrmDoenca.FormActivate(Sender: TObject);
begin
  inherited;
  dmCid10.qySubCategorias.Active := true;
  dsDoencas.DataSet.Active := true;
  dsExameDoencas.DataSet.Active := true;
  cbDoenca.Clear;
  cbDoenca.SetFocus;
end;

procedure TfrmDoenca.SpeedButton1Click(Sender: TObject);
begin
  if MessageDlg('Deseja realmente excluir a doença do exame?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    DeleteExamesDoencas;
end;

end.
