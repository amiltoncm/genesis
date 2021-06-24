unit uDetExame;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpFormNormal, Vcl.StdCtrls,
  Vcl.Buttons, Data.DB, Vcl.DBCGrids, wwdbedit, Wwdotdot, Wwdbcomb, wwdblook,
  wwdbdatetimepicker, Vcl.Mask, Vcl.DBCtrls;

type
  TfrmDetExame = class(TfrmTmpFormNormal)
    dsConsExames: TDataSource;
    Label1: TLabel;
    dbExame: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label7: TLabel;
    dbIdade: TDBEdit;
    dbMeses: TDBEdit;
    Label9: TLabel;
    dbMatricula: TDBEdit;
    Label10: TLabel;
    dbGuia: TDBEdit;
    Label13: TLabel;
    cbPrioridade: TwwDBComboBox;
    lbDtEntrega: TLabel;
    dbData: TDBEdit;
    cbTpExame: TwwDBLookupCombo;
    dbConvenio: TDBEdit;
    dbPaciente: TDBEdit;
    dbMedico: TDBEdit;
    dbOrigem: TDBEdit;
    dbDestino: TDBEdit;
    dbDtEntrega: TDBEdit;
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDetExame: TfrmDetExame;

implementation

{$R *.dfm}

uses dataConsultas, dataLookups;

procedure TfrmDetExame.FormActivate(Sender: TObject);
begin
  inherited;
  dsConsExames.DataSet.Active := True;
  btFechar.SetFocus;
end;

end.
