unit uCadExamesTipoHist;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpCadastro, Data.DB, 
  Vcl.ImgList, Vcl.ActnList, Vcl.ComCtrls, Vcl.ToolWin, Vcl.StdCtrls, Vcl.Buttons, 
  Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, wwdblook;

type
  TfrmCadExamesTipoHist = class(TfrmTmpCadastro)
    lbCodigo: TLabel;
    dbCodigo: TDBEdit;
    lbDescricao: TLabel;
    dbDescricao: TDBEdit;
    Label3: TLabel;
    cbTpExame: TwwDBLookupCombo;
    procedure actGravarExecute(Sender: TObject);
    procedure actNovoExecute(Sender: TObject);
    procedure actAlterarExecute(Sender: TObject);
    procedure actAtualizarExecute(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure actLimparExecute(Sender: TObject);
    procedure actProcurarExecute(Sender: TObject);
    procedure cbTpExameExit(Sender: TObject);
    procedure dsCadastroDataChange(Sender: TObject; Field: TField);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadExamesTipoHist: TfrmCadExamesTipoHist;

implementation

{$R *.dfm}

uses dataCadastros, uDaoExamesTipoHist, uFuncoesDB, dataLookups,
  uProcExamesTipoHist;

procedure TfrmCadExamesTipoHist.actGravarExecute(Sender: TObject);
begin
  if dsCadastro.DataSet.State in [dsInsert] then
    dsCadastro.DataSet.FieldByName('eth_id').Value := GetCodigo('eth_id', 'examestipohist');
  inherited;
  dsCadastro.DataSet.Refresh;
  cbTpExame.Text := dmCadastros.qyExamesTipoHisteio_descricao.Text;
end;

procedure TfrmCadExamesTipoHist.actAlterarExecute(Sender: TObject);
begin
  inherited;
  dbDescricao.SetFocus;
end;

procedure TfrmCadExamesTipoHist.actAtualizarExecute(Sender: TObject);
begin
  dsCadastro.DataSet.Refresh;
end;

procedure TfrmCadExamesTipoHist.actLimparExecute(Sender: TObject);
begin
  ListarExamesTipoHist('eth_descricao', '0');
  sbPrincipal.Panels[3].Text := 'Inativo';
  inherited;
end;

procedure TfrmCadExamesTipoHist.actNovoExecute(Sender: TObject);
begin
  inherited;
  dbDescricao.SetFocus;
end;

procedure TfrmCadExamesTipoHist.FormActivate(Sender: TObject);
begin
  inherited;
  ListarExamesTipoHist('eth_descricao', '0');
  dbDescricao.SetFocus;
end;

procedure TfrmCadExamesTipoHist.actProcurarExecute(Sender: TObject);
begin
  ListarExamesTipoHist('eth_descricao', '0');
  frmProcExamesTipoHist.ShowModal;
end;

procedure TfrmCadExamesTipoHist.cbTpExameExit(Sender: TObject);
begin
  if dmCadastros.qyExamesTipoHist.State in [dsEdit, dsInsert] then
  begin
    dmCadastros.qyExamesTipoHisteio_id.Value := dmLookups.lkProcExamesTipoeio_id.Value;
    cbTpExame.Text := dmLookups.lkProcExamesTipoeio_descricao.Text;
  end;
end;

procedure TfrmCadExamesTipoHist.dsCadastroDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  cbTpExame.Text := dmCadastros.qyExamesTipoHisteio_descricao.Text;
end;

end.
