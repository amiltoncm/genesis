unit uEditMatGuia;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpFormNormal, Vcl.StdCtrls,
  Vcl.Buttons, Data.DB, Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls;

type
  TfrmEditMatGuia = class(TfrmTmpFormNormal)
    Panel1: TPanel;
    DBText1: TDBText;
    Label1: TLabel;
    Label9: TLabel;
    dbMatricula: TDBEdit;
    Label10: TLabel;
    dbGuia: TDBEdit;
    dsExames: TDataSource;
    btConfirmar: TBitBtn;
    Panel2: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    sbInsertSenha: TSpeedButton;
    sbEditSenha: TSpeedButton;
    sbDeleteSenha: TSpeedButton;
    sbPostSenha: TSpeedButton;
    sbCancelSenha: TSpeedButton;
    dbSenha: TDBEdit;
    dbData: TDBEdit;
    dsSenha: TDataSource;
    procedure FormActivate(Sender: TObject);
    procedure btConfirmarClick(Sender: TObject);
    procedure btFecharClick(Sender: TObject);
    procedure dbMatriculaExit(Sender: TObject);
    procedure dbGuiaExit(Sender: TObject);
    procedure sbInsertSenhaClick(Sender: TObject);
    procedure sbDeleteSenhaClick(Sender: TObject);
    procedure sbEditSenhaClick(Sender: TObject);
    procedure sbPostSenhaClick(Sender: TObject);
    procedure sbCancelSenhaClick(Sender: TObject);
    procedure dsSenhaStateChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEditMatGuia: TfrmEditMatGuia;

implementation

{$R *.dfm}

uses dataExames, uDaoExamesAut;

procedure TfrmEditMatGuia.btConfirmarClick(Sender: TObject);
begin
  if dbMatricula.Text = '' then
    dmExames.qyExamesexa_matricula.Text := '0';
  if dbGuia.Text = '' then
    dmExames.qyExamesexa_guia.Text := '0';
  dsExames.DataSet.Post;
  Close;
end;

procedure TfrmEditMatGuia.btFecharClick(Sender: TObject);
begin
  dsExames.DataSet.Cancel;
  Close;
end;

procedure TfrmEditMatGuia.dbGuiaExit(Sender: TObject);
begin
  if dbGuia.Text = '' then
    dmExames.qyExamesexa_guia.Text := '0';
end;

procedure TfrmEditMatGuia.dbMatriculaExit(Sender: TObject);
begin
  if dbMatricula.Text = '' then
    dmExames.qyExamesexa_matricula.Text := '0';
end;

procedure TfrmEditMatGuia.dsSenhaStateChange(Sender: TObject);
begin
  if dsSenha.DataSet.State in [dsInsert, dsEdit] then
  begin
    sbInsertSenha.Enabled := false;
    sbEditSenha.Enabled := false;
    sbDeleteSenha.Enabled := false;
    sbPostSenha.Enabled := true;
    sbCancelSenha.Enabled := true;
  end
  else
  begin
    sbInsertSenha.Enabled := true;
    sbEditSenha.Enabled := true;
    sbDeleteSenha.Enabled := true;
    sbPostSenha.Enabled := false;
    sbCancelSenha.Enabled := false;
  end;
end;

procedure TfrmEditMatGuia.FormActivate(Sender: TObject);
begin
  inherited;
  dsExames.DataSet.Edit;
  FiltrarExamesAut('exa_id', '=', dmExames.qyExamesexa_id.Text, '0', '1');
  dbMatricula.SetFocus;
end;

procedure TfrmEditMatGuia.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if dsExames.DataSet.State in [dsEdit] then
    dsExames.DataSet.Cancel;
  if dsSenha.DataSet.State in [dsEdit, dsInsert] then
    dsSenha.DataSet.Cancel;
end;

procedure TfrmEditMatGuia.sbCancelSenhaClick(Sender: TObject);
begin
  dsSenha.DataSet.Cancel;
end;

procedure TfrmEditMatGuia.sbDeleteSenhaClick(Sender: TObject);
begin
  if not(dsSenha.DataSet.FieldByName('exa_id').IsNull) then
    dsSenha.DataSet.Delete;
end;

procedure TfrmEditMatGuia.sbEditSenhaClick(Sender: TObject);
begin
  if dsSenha.DataSet.FieldByName('exa_id').IsNull then
    dsSenha.DataSet.Insert
  else
    dsSenha.DataSet.Edit;
  dsSenha.DataSet.FieldByName('exa_id').Text := dmExames.qyExamesexa_id.Text;
  dsSenha.DataSet.FieldByName('aut_data').Value := now;
  dbSenha.SetFocus;
end;

procedure TfrmEditMatGuia.sbInsertSenhaClick(Sender: TObject);
begin
  if dsSenha.DataSet.FieldByName('exa_id').IsNull then
    dsSenha.DataSet.Insert
  else
    dsSenha.DataSet.Edit;
  dsSenha.DataSet.FieldByName('exa_id').Text := dmExames.qyExamesexa_id.Text;
  dsSenha.DataSet.FieldByName('aut_data').Value := now;
  dbSenha.SetFocus;
end;

procedure TfrmEditMatGuia.sbPostSenhaClick(Sender: TObject);
begin
  try
    dsSenha.DataSet.Post;
  except
    on E: Exception do
    Begin
      MessageDlg('Erro ao gravar Alteração / Inserção!' + #13#10 +
          E.Message, mtError, [mbOk], 0);
      dsSenha.DataSet.Refresh;
    end;
  end;
end;

end.
