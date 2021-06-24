unit uCadProcedimentos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpCadastro, Data.DB, 
  Vcl.ImgList, Vcl.ActnList, Vcl.ComCtrls, Vcl.ToolWin, Vcl.StdCtrls, Vcl.Buttons, 
  Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TfrmCadProcedimentos = class(TfrmTmpCadastro)
    lbCodigo: TLabel;
    dbCodigo: TDBEdit;
    lbDescricao: TLabel;
    dbDescricao: TDBEdit;
    Label3: TLabel;
    dbAMR: TDBEdit;
    Label4: TLabel;
    dbDescAnt: TDBEdit;
    Label5: TLabel;
    dbVlrHora: TDBEdit;
    Label6: TLabel;
    dbVlrOper: TDBEdit;
    Label7: TLabel;
    dbVlrFilme: TDBEdit;
    Label8: TLabel;
    dbVlrTotal: TDBEdit;
    function calcular(vVlrHora, vVlrOper, vVrlFilme: real): real;
    procedure actNovoExecute(Sender: TObject);
    procedure actAlterarExecute(Sender: TObject);
    procedure actAtualizarExecute(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure actLimparExecute(Sender: TObject);
    procedure actProcurarExecute(Sender: TObject);
    procedure dbVlrHoraExit(Sender: TObject);
    procedure dbVlrOperExit(Sender: TObject);
    procedure dbVlrFilmeExit(Sender: TObject);
    procedure dbDescricaoExit(Sender: TObject);
    procedure dbCodigoExit(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadProcedimentos: TfrmCadProcedimentos;

implementation

{$R *.dfm}

uses dataCadastros, uDaoProcedimentos, uProcProcedimentos, uFuncoesFormatacao;

function TfrmCadProcedimentos.calcular(vVlrHora, vVlrOper, vVrlFilme: real): real;
Begin
  result := vVlrHora + vVlrOper + vVrlFilme;
end;

procedure TfrmCadProcedimentos.actAlterarExecute(Sender: TObject);
begin
  inherited;
  dbCodigo.SetFocus;
end;

procedure TfrmCadProcedimentos.actAtualizarExecute(Sender: TObject);
begin
  dsCadastro.DataSet.Refresh;
end;

procedure TfrmCadProcedimentos.actLimparExecute(Sender: TObject);
begin
  ListarProcedimentos('prc_descricao', '0');
  sbPrincipal.Panels[3].Text := 'Inativo';
  inherited;
end;

procedure TfrmCadProcedimentos.actNovoExecute(Sender: TObject);
begin
  inherited;
  dbCodigo.SetFocus;
end;

procedure TfrmCadProcedimentos.FormActivate(Sender: TObject);
begin
  inherited;
  ListarProcedimentos('prc_descricao', '0');
  dbCodigo.SetFocus;
end;

procedure TfrmCadProcedimentos.actProcurarExecute(Sender: TObject);
begin
  ListarProcedimentos('prc_descricao', '0');
  frmProcProcedimentos.ShowModal;
end;

procedure TfrmCadProcedimentos.dbCodigoExit(Sender: TObject);
begin
  inherited;
  if dsCadastro.DataSet.State in [dsInsert] then
    if dbCodigo.Text <> '' then
      dmCadastros.qyProcedimentosprc_amr.Text := dmCadastros.qyProcedimentosprc_tuss.Text;
end;

procedure TfrmCadProcedimentos.dbDescricaoExit(Sender: TObject);
begin
  if dmCadastros.qyProcedimentos.State in [dsInsert, dsEdit] then
    dmCadastros.qyProcedimentosprc_descant.Text := dmCadastros.qyProcedimentosprc_descricao.Text;
end;

procedure TfrmCadProcedimentos.dbVlrFilmeExit(Sender: TObject);
begin
  try
    if dsCadastro.DataSet.State in [dsEdit, dsinsert] then
      dmCadastros.qyProcedimentosprc_vlrtotal.Value := calcular(StrTofloat(LimpaReal(dbVlrHora.Text)),
      StrTofloat(LimpaReal(dbVlrOper.Text)), StrTofloat(LimpaReal(dbVlrFilme.Text)));
    except
      MessageDlg('Verifique o preenchimento dos valores!', mtWarning, [mbok], 0);
  end;
end;

procedure TfrmCadProcedimentos.dbVlrHoraExit(Sender: TObject);
begin
  try
    if dsCadastro.DataSet.State in [dsEdit, dsinsert] then
      dmCadastros.qyProcedimentosprc_vlrtotal.Value := calcular(StrTofloat(LimpaReal(dbVlrHora.Text)),
      StrTofloat(LimpaReal(dbVlrOper.Text)), StrTofloat(LimpaReal(dbVlrFilme.Text)));
  except
    MessageDlg('Verifique o preenchimento dos valores!', mtWarning, [mbok], 0);
  end;
end;

procedure TfrmCadProcedimentos.dbVlrOperExit(Sender: TObject);
begin
  try
    if dsCadastro.DataSet.State in [dsEdit, dsinsert] then
      dmCadastros.qyProcedimentosprc_vlrtotal.Value := calcular(StrTofloat(LimpaReal(dbVlrHora.Text)),
      StrTofloat(LimpaReal(dbVlrOper.Text)), StrTofloat(LimpaReal(dbVlrFilme.Text)));
    except
      MessageDlg('Verifique o preenchimento dos valores!', mtWarning, [mbok], 0);
  end;
end;

end.
