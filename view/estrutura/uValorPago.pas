unit uValorPago;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpFormNormal, Vcl.StdCtrls,
  Vcl.Buttons, Data.DB, Vcl.Mask, Vcl.DBCtrls;

type
  TfrmValorPago = class(TfrmTmpFormNormal)
    Label1: TLabel;
    dbExame: TDBEdit;
    Label2: TLabel;
    dbValor: TDBEdit;
    Label3: TLabel;
    dbPago: TDBEdit;
    dsExamesCob: TDataSource;
    btGravar: TBitBtn;
    procedure FormActivate(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmValorPago: TfrmValorPago;

implementation

{$R *.dfm}

uses dataFinanceiro, uVarGlobal, uRelRecibo;

procedure TfrmValorPago.btGravarClick(Sender: TObject);
begin
  if not(dmFinanceiro.qyExamesCobeco_vlrpago.IsNull) then
  begin
    dsExamesCob.DataSet.Post;
    //Recibo - Vs. 1.1.6.64
    if dmFinanceiro.qyExamesCobeco_vlrpago.Value <> 0 then
    begin
      if MessageDlg('Deseja imprimir o recibo agora?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
        vgIDExRec := dbExame.Text;
        vgValorRec := dbPago.Text;
        frmRelRecibo.ShowModal;
      end;
    end;
    Close;
  end
  else
  begin
    if MessageDlg('O valor pago não pode ser nulo!' +#13 + 'Deseja ZERAR o valor?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      dmFinanceiro.qyExamesCobeco_vlrpago.Value := 0;
      dsExamesCob.DataSet.Post;
    end
    else
      dbPago.SetFocus;
  end;
end;

procedure TfrmValorPago.FormActivate(Sender: TObject);
begin
  inherited;
  dsExamesCob.DataSet.Edit;
  dbPago.SetFocus;
end;

procedure TfrmValorPago.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if dsExamesCob.DataSet.State in [dsEdit] then
  begin
    if MessageDlg('Existem alterações pendentes,' + #13 + 'Deseja cancelar?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      dsExamesCob.DataSet.Cancel;
      canclose := true;
    end
    else
      canclose := false;
  end;
end;

end.
