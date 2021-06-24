unit uIntegridade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpFormNormal, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Grids, Wwdbigrd, Wwdbgrid, Data.DB, JvMemoryDataset;

type
  TfrmIntegridade = class(TfrmTmpFormNormal)
    DBGrid1: TwwDBGrid;
    dbMemIntegridade: TJvMemoryData;
    dsMemory: TDataSource;
    dbMemIntegridadeexa_id: TStringField;
    dbMemIntegridadeexa_data: TDateField;
    dbMemIntegridadeexa_tipo: TStringField;
    dbMemIntegridadeexa_erro: TStringField;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmIntegridade: TfrmIntegridade;

implementation

{$R *.dfm}

uses uVarGlobal;

procedure TfrmIntegridade.FormActivate(Sender: TObject);
begin
  inherited;
  Self.Caption := 'Integridade - Data início: ' + vgDataIntegridade;
end;

procedure TfrmIntegridade.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dbMemIntegridade.Active := false;
  inherited;
end;

end.
