unit uCadContas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpCadastro, Data.DB, 
  Vcl.ImgList, Vcl.ActnList, Vcl.ComCtrls, Vcl.ToolWin, Vcl.StdCtrls, Vcl.Buttons, 
  Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, wwdbedit, Wwdotdot, Wwdbcomb, wwdblook;

type
  TfrmCadContas = class(TfrmTmpCadastro)
    lbCodigo: TLabel;
    dbCodigo: TDBEdit;
    lbDescricao: TLabel;
    dbDescricao: TDBEdit;
    Label5: TLabel;
    cbBanco: TwwDBLookupCombo;
    dbBanco: TDBEdit;
    Label4: TLabel;
    dbObs: TDBEdit;
    Label3: TLabel;
    wwDBComboBox1: TwwDBComboBox;
    procedure actGravarExecute(Sender: TObject);
    procedure actNovoExecute(Sender: TObject);
    procedure actAlterarExecute(Sender: TObject);
    procedure actAtualizarExecute(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure actLimparExecute(Sender: TObject);
    procedure actProcurarExecute(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadContas: TfrmCadContas;

implementation

{$R *.dfm}

uses dataCadastros, uDaoContas, uFuncoesDB, dataLookups, uProcContas;

procedure TfrmCadContas.actGravarExecute(Sender: TObject);
begin
  if dsCadastro.DataSet.State in [dsInsert] then
    dsCadastro.DataSet.FieldByName('con_codigo').Value := GetCodigo('con_codigo', 'contas');
  inherited;
end;

procedure TfrmCadContas.actAlterarExecute(Sender: TObject);
begin
  inherited;
  dbDescricao.SetFocus;
end;

procedure TfrmCadContas.actAtualizarExecute(Sender: TObject);
begin
  dsCadastro.DataSet.Refresh;
end;

procedure TfrmCadContas.actLimparExecute(Sender: TObject);
begin
  ListarContas('con_descricao', '0');
  sbPrincipal.Panels[3].Text := 'Inativo';
  inherited;
end;

procedure TfrmCadContas.actNovoExecute(Sender: TObject);
begin
  inherited;
  dbDescricao.SetFocus;
end;

procedure TfrmCadContas.FormActivate(Sender: TObject);
begin
  inherited;
  ListarContas('con_descricao', '0');
  dbDescricao.SetFocus;
end;

procedure TfrmCadContas.actProcurarExecute(Sender: TObject);
begin
  ListarContas('con_descricao', '0');
  frmProcContas.ShowModal;
end;

end.
