unit uSenhaCheque;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpSenhaMaster, Vcl.StdCtrls,
  Vcl.Buttons;

type
  TfrmSenhaCheque = class(TfrmTmpSenhaMaster)
    procedure btOkClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSenhaCheque: TfrmSenhaCheque;

implementation

{$R *.dfm}

uses dataFinanceiro;

procedure TfrmSenhaCheque.btOkClick(Sender: TObject);
begin
  try
    dmFinanceiro.qyCheques.Delete;
    dmFinanceiro.qyCheques.Refresh;
    MessageDlg('Cheque excluído com sucesso!', mtWarning, [mbOk], 0);
    dmFinanceiro.qyCheques.Refresh;
    inherited;
  except
    MessageDlg('Problemas ao excluir o cheque!', mtError, [mbOk], 0);
    dmFinanceiro.qyCheques.Refresh;
    Close;
  end;
end;

end.
