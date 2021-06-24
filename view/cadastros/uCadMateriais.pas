unit uCadMateriais;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpCadastro, Data.DB, 
  Vcl.ImgList, Vcl.ActnList, Vcl.ComCtrls, Vcl.ToolWin, Vcl.StdCtrls, Vcl.Buttons, 
  Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TfrmCadMateriais = class(TfrmTmpCadastro)
    lbCodigo: TLabel;
    dbCodigo: TDBEdit;
    lbDescricao: TLabel;
    dbDescricao: TDBEdit;
    Panel1: TPanel;
    Label1: TLabel;
    dsMatCid: TDataSource;
    DBGrid1: TDBGrid;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    DBText1: TDBText;
    DBText2: TDBText;
    procedure actGravarExecute(Sender: TObject);
    procedure actNovoExecute(Sender: TObject);
    procedure actAlterarExecute(Sender: TObject);
    procedure actAtualizarExecute(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure actLimparExecute(Sender: TObject);
    procedure actProcurarExecute(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure dsCadastroDataChange(Sender: TObject; Field: TField);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadMateriais: TfrmCadMateriais;

implementation

{$R *.dfm}

uses dataCadastros, uDaoMateriais, uFuncoesDB, uProcMateriais, uDaoMatCid,
  uProcCIDSubCat, uVarGlobal;

procedure TfrmCadMateriais.actGravarExecute(Sender: TObject);
begin
  if dsCadastro.DataSet.State in [dsInsert] then
    dsCadastro.DataSet.FieldByName('mat_id').Value := GetCodigo('mat_id', 'materiais');
  inherited;
end;

procedure TfrmCadMateriais.actAlterarExecute(Sender: TObject);
begin
  inherited;
  dbDescricao.SetFocus;
end;

procedure TfrmCadMateriais.actAtualizarExecute(Sender: TObject);
begin
  dsCadastro.DataSet.Refresh;
end;

procedure TfrmCadMateriais.actLimparExecute(Sender: TObject);
begin
  ListarMateriais('mat_descricao', '0');
  sbPrincipal.Panels[3].Text := 'Inativo';
  inherited;
end;

procedure TfrmCadMateriais.actNovoExecute(Sender: TObject);
begin
  inherited;
  dbDescricao.SetFocus;
end;

procedure TfrmCadMateriais.FormActivate(Sender: TObject);
begin
  inherited;
  ListarMateriais('mat_descricao', '0');
  FiltrarMatCid('m.mat_id', '=', dsCadastro.DataSet.FieldByName('mat_id').Text, 'm.sct_subcat', '0');
  dbDescricao.SetFocus;
end;

procedure TfrmCadMateriais.SpeedButton1Click(Sender: TObject);
begin
  InsMatCid;
  dsMatCid.DataSet.FieldByName('mat_id').Value := dsCadastro.DataSet.FieldByName('mat_id').Value;
  vgSubCat := '0';
  frmProcCIDSubCat.ShowModal;
  if vgSubCat <> '0' then
  begin
    dsMatCid.DataSet.FieldByName('sct_subcat').Value := vgSubCat;
    PostMatCid;
  end
  else
    dsMatCid.DataSet.Cancel;
end;

procedure TfrmCadMateriais.SpeedButton2Click(Sender: TObject);
begin
  if MessageDlg('Deseja realmente apagar o CID relacionado?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    DelMatCid;
end;

procedure TfrmCadMateriais.actProcurarExecute(Sender: TObject);
begin
  ListarMateriais('mat_descricao', '0');
  frmProcMateriais.ShowModal;
end;

procedure TfrmCadMateriais.dsCadastroDataChange(Sender: TObject; Field: TField);
begin
  if dsCadastro.DataSet.FieldByName('mat_id').IsNull then
    FiltrarMatCid('m.mat_id', '=', '0', '0', '0')
  else
    FiltrarMatCid('m.mat_id', '=', dsCadastro.DataSet.FieldByName('mat_id').Text, '0', '0');
end;

end.
