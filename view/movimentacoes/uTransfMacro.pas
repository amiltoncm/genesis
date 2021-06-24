unit uTransfMacro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpFormNormal, Vcl.StdCtrls,
  Vcl.Buttons, wwdbedit, Wwdotdot, Wwdbcomb, Vcl.DBCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.Mask;

type
  TfrmTransfMacro = class(TfrmTmpFormNormal)
    Label1: TLabel;
    edHistologia: TMaskEdit;
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
    procedure btAlterarClick(Sender: TObject);
    procedure btFiltrarClick(Sender: TObject);
    procedure edHistologiaKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTransfMacro: TfrmTransfMacro;

implementation

{$R *.dfm}

uses dataExames, uDaoExames, dataConsultas, UFuncoesTISS, uDaoExamesLogs,
  uDaoExamesObs, uVarGlobal;

procedure TfrmTransfMacro.btAlterarClick(Sender: TObject);
Var
vEtapaOrigigem, vEtapaDestino: String;
begin
  if edHistologia.Text <> '' then
  Begin
    if (StrToInt(cbEtapa.Value)) <= (dmExames.qyExamesexa_etapa.Value) then
    Begin
      if TestaExameCob(edHistologia.Text) = 0 then
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

procedure TfrmTransfMacro.btFiltrarClick(Sender: TObject);
begin
  inherited;
  if edHistologia.Text <> '' then
  Begin
    FiltrarExamesHisto('e.exa_id', '=', edHistologia.Text, '0', '0', '0');
    if not(dmExames.qyExamesexa_id.IsNull) then
      //verifica status da etapa do exame
      lbEtapa.Caption := VerificaEtapaHisto(dmExames.qyExamesexa_id.Text)
    else
      MessageDlg('Exame não localizado!', mtInformation, [mbok], 0);
  end;
end;

procedure TfrmTransfMacro.edHistologiaKeyPress(Sender: TObject; var Key: Char);
var
vTamanho: Integer;
begin
  vTamanho := Length(edHistologia.Text);
  if vTamanho = 3 then
    key := #67;
end;

procedure TfrmTransfMacro.FormActivate(Sender: TObject);
begin
  inherited;
  dsExames.DataSet.Active := true;
  dsLog.DataSet.Active := true;
  Limpar;
end;

procedure TfrmTransfMacro.Limpar;
begin
  lbEtapa.Caption := '';
  cbEtapa.ItemIndex := 0;
  edHistologia.Clear;
  //limpa a tabela de exames
  FiltrarExames('e.exa_id', '=', '0', '0', '0');
  edHistologia.SetFocus;
end;

end.
