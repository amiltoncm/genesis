unit uSelImuno;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpFormNormal, Vcl.StdCtrls,
  Vcl.Buttons, Data.DB, Vcl.Grids, Wwdbigrd, Wwdbgrid, Vcl.Mask;

type
  TfrmSelImuno = class(TfrmTmpFormNormal)
    Label1: TLabel;
    edExame: TMaskEdit;
    btFiltrar: TBitBtn;
    btLimpar: TBitBtn;
    DBGrid1: TwwDBGrid;
    dsConsulta: TDataSource;
    btAlterar: TBitBtn;
    procedure Limpar;
    procedure Filtrar;
    procedure Inserir;
    procedure btFiltrarClick(Sender: TObject);
    procedure btLimparClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btAlterarClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSelImuno: TfrmSelImuno;

implementation

{$R *.dfm}

uses dataExames, uDaoExames, uInsereImuno, uVarGlobal;

procedure TfrmSelImuno.Limpar;
begin
  ListarImunos('e.exa_id desc');
  edExame.Clear;
  edExame.SetFocus;
end;

procedure TfrmSelImuno.Filtrar;
begin
  FiltrarImuno(dmExames.qyExamesexa_id.Text);
  if dmExames.qyExamesexa_id.IsNull then
    MessageDlg('Exame não liberado para captura,' + #13 + 'ou não encontrado!!', mtWarning, [mbOk], 0);
end;

procedure TfrmSelImuno.Inserir;
begin
  if not(dmExames.qyExamesexa_id.IsNull) then
  begin
    vgIDExame := dmExames.qyExamesexa_id.Text;
    frmInsereImuno.ShowModal;
  end
  else
    MessageDlg('Você deve selecionar um exame!', mtWarning, [mbok], 0);
end;

procedure TfrmSelImuno.FormActivate(Sender: TObject);
begin
  inherited;
  Limpar;
end;

procedure TfrmSelImuno.btAlterarClick(Sender: TObject);
begin
  Filtrar;
  Inserir;
end;

procedure TfrmSelImuno.btFiltrarClick(Sender: TObject);
begin
  Filtrar;
end;

procedure TfrmSelImuno.btLimparClick(Sender: TObject);
begin
  Limpar;
end;

procedure TfrmSelImuno.DBGrid1DblClick(Sender: TObject);
begin
  edExame.Text := dmExames.qyExamesexa_id.Text;
  Filtrar;
  Inserir;
end;

end.
