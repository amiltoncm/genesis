unit uAltVlrProced;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpFormNormal, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Grids, Wwdbigrd, Wwdbgrid, Vcl.ExtCtrls, Data.DB;

type
  TfrmAltVlrProced = class(TfrmTmpFormNormal)
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label1: TLabel;
    edCodigo: TEdit;
    edDescricao: TEdit;
    DBGrid1: TwwDBGrid;
    btAlterar: TBitBtn;
    dsConsulta: TDataSource;
    procedure FormActivate(Sender: TObject);
    procedure btAlterarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAltVlrProced: TfrmAltVlrProced;

implementation

{$R *.dfm}

uses UFuncoesTISS, dataConsultas;

procedure TfrmAltVlrProced.btAlterarClick(Sender: TObject);
begin
  if MessageDlg('Este processo é um pouco demorado, clique em SIM e por favor aguarde!' +
  #13 + 'Deseja continuar?', mtWarning, [mbYes, mbNo], 0) = mrYes then
  begin
    AtualizaVlrProced(edCodigo.Text);
    Close;
  end;
end;

procedure TfrmAltVlrProced.FormActivate(Sender: TObject);
begin
  inherited;
  btAlterar.SetFocus;
end;

end.
