unit uTransfCito;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpFormNormal, wwdbedit,
  Wwdotdot, Wwdbcomb, Vcl.DBCtrls, Vcl.ExtCtrls, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  Vcl.Buttons;

type
  TfrmTransfCito = class(TfrmTmpFormNormal)
    Label1: TLabel;
    edCitologia: TMaskEdit;
    btFiltrar: TBitBtn;
    dsExames: TDataSource;
    dsLog: TDataSource;
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText6: TDBText;
    DBText5: TDBText;
    Label8: TLabel;
    lbEtapa: TLabel;
    Label9: TLabel;
    cbEtapa: TwwDBComboBox;
    btAlterar: TBitBtn;
    procedure Limpar;
    procedure FormActivate(Sender: TObject);
    procedure btFiltrarClick(Sender: TObject);
    procedure btAlterarClick(Sender: TObject);
    procedure edCitologiaKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTransfCito: TfrmTransfCito;

implementation

{$R *.dfm}

uses dataExames, uDaoExames, dataGestao, dataConsultas, UFuncoesTISS,
  uDaoExamesLogs, uVarGlobal, uDaoExamesObs;

procedure TfrmTransfCito.btAlterarClick(Sender: TObject);
Var
vEtapaOrigigem, vEtapaDestino: String;
begin
  if edCitologia.Text <> '' then
  Begin
    if (StrToInt(cbEtapa.Value)) <= (dmExames.qyExamesexa_etapa.Value) then
    Begin
      if (TestaExameCob(edCitologia.Text) = 0) then
      begin
        if MessageDlg('Deseja realmente transferir o exame de volta a ' + cbEtapa.Text + '?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        Begin
          vEtapaOrigigem := dmExames.qyExamesexa_etapa.Text;
          vEtapaDestino := FormatFloat('00', (StrToFloat(cbEtapa.Value)));
          //edita a etapa
          SetEtapaExame(StrToInt(cbEtapa.Value));
          //grava log
          InsExamesLogs(dmExames.qyExamesexa_id.Text, '11', vgCodUsuarioLog);
          //insere observação de etapa -> etapa
          InsExamesObs(dmExames.qyExamesexa_id.Text, 'Exame transferido por: ' + vgNomeUsuarioLog +
                       ' de: ' + vEtapaOrigigem + ' para: ' + vEtapaDestino);
          if MessageDlg('Exame transferido com sucesso!' + #13 + 'Deseja sair da transferência?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
            Close
          else
            Limpar;
        end;
      end
      else
        MessageDlg('Este exame já foi gerado cobrança e não pode ser alterado!', mtWarning, [mbok], 0);
    end
    else
      MessageDlg('O exame não pode ser enviado para a frente!', mtError, [mbok], 0);
  end;
end;

procedure TfrmTransfCito.btFiltrarClick(Sender: TObject);
begin
  if edCitologia.Text <> '' then
  Begin
    FiltrarExamesCitologia('e.exa_id', '=', edCitologia.Text, '0', '0', '0');
    if not(dmExames.qyExamesexa_id.IsNull) then
      //verifica status da etapa do exame
      lbEtapa.Caption := VerificaEtapaCito(dmExames.qyExamesexa_id.Text)
    else
      MessageDlg('Exame não localizado!', mtInformation, [mbok], 0);
  end;
end;

procedure TfrmTransfCito.edCitologiaKeyPress(Sender: TObject; var Key: Char);
var
vTamanho: Integer;
begin
  vTamanho := Length(edCitologia.Text);
  if vTamanho = 3 then
    key := #67;
end;

procedure TfrmTransfCito.FormActivate(Sender: TObject);
begin
  inherited;
  dsExames.DataSet.Active := true;
  dsLog.DataSet.Active := true;
  Limpar;
end;

procedure TfrmTransfCito.Limpar;
begin
  lbEtapa.Caption := '';
  cbEtapa.ItemIndex := 0;
  edCitologia.Clear;
  //limpa a tabela de exames
  FiltrarExames('e.exa_id', '=', '0', '0', '1');
  edCitologia.SetFocus;
end;

end.
