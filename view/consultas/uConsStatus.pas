unit uConsStatus;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpFormNormal, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Mask;

type
  TfrmConsStatus = class(TfrmTmpFormNormal)
    Label1: TLabel;
    edStatus: TMaskEdit;
    btFiltrar: TBitBtn;
    meStatus: TMemo;
    procedure filtrar;
    procedure FormActivate(Sender: TObject);
    procedure edStatusKeyPress(Sender: TObject; var Key: Char);
    procedure btFiltrarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsStatus: TfrmConsStatus;

implementation

{$R *.dfm}

uses uDaoConsultas;

procedure TfrmConsStatus.Filtrar;
begin
  StatusExames(edStatus.Text);
end;

procedure TfrmConsStatus.btFiltrarClick(Sender: TObject);
begin
  filtrar;
end;

procedure TfrmConsStatus.edStatusKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    filtrar;
end;

procedure TfrmConsStatus.FormActivate(Sender: TObject);
begin
  inherited;
  edStatus.Clear;
  meStatus.Clear;
  edStatus.SetFocus;
end;

end.
