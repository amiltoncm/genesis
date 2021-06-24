unit uExamesLog;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpFormNormal, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Grids, Wwdbigrd, Wwdbgrid, Data.DB, Vcl.ExtCtrls;

type
  TfrmExamesLog = class(TfrmTmpFormNormal)
    Panel5: TPanel;
    Label29: TLabel;
    lbEtapaAtual: TLabel;
    Label30: TLabel;
    lbUltAlt: TLabel;
    dsExamesLog: TDataSource;
    wwDBGrid1: TwwDBGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmExamesLog: TfrmExamesLog;

implementation

{$R *.dfm}

end.
