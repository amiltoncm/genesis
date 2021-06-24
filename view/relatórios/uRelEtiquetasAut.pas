unit uRelEtiquetasAut;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, ppPrnabl, ppClass,
  ppCtrls, ppBarCod, ppCache, ppBands, ppDesignLayer, ppParameter, ppComm,
  ppRelatv, ppProd, ppReport, Vcl.Buttons, Vcl.Samples.Spin, Inifiles;

type
  TfrmRelEtiquetasAut = class(TForm)
    Relatorio: TppReport;
    ppParameterList1: TppParameterList;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppDetailBand1: TppDetailBand;
    Label1: TLabel;
    CodBar: TppBarCode;
    lbExame: TppLabel;
    BalloonHint1: TBalloonHint;
    btImprimir: TBitBtn;
    btFechar: TBitBtn;
    cbTpExame: TComboBox;
    seQtdeEx: TSpinEdit;
    Label2: TLabel;
    edInicial: TEdit;
    Label3: TLabel;
    seQtdeEt: TSpinEdit;
    Label4: TLabel;
    edTexto: TEdit;
    Label5: TLabel;
    lbID: TppLabel;
    lbMsg: TppLabel;
    procedure btFecharClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btImprimirClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private

  ComponentePro: TComponent;
  procedure ProCode(Sender: TObject);

  public
    { Public declarations }
  end;

var
  frmRelEtiquetasAut: TfrmRelEtiquetasAut;

implementation

{$R *.dfm}

uses uVarGlobal;

procedure TfrmRelEtiquetasAut.ProCode(Sender: TObject);
begin
  if Assigned(ComponentePro) then
    TEdit(ComponentePro).Color := clWindow; // cor ao sair
  if (ActiveControl is TCustomEdit) or
     (ActiveControl is TComboBox) or
     (ActiveControl is TMemo) then
  begin
    TEdit(ActiveControl).Color := clSkyBlue;  // cor ao focar
    ComponentePro := ActiveControl;
  end;
end;

procedure TfrmRelEtiquetasAut.btImprimirClick(Sender: TObject);
Var
vCont: Integer;
vAno, vTpexame: String;
vAux, vQtdEt: Integer;
vExame: String;
begin
  vAux := StrToInt(edInicial.Text);
  if cbTpExame.ItemIndex = 0 then
    vTpexame := 'C';
  if cbTpExame.ItemIndex = 1 then
    vTpexame := 'H';
  for vCont := 1 to seQtdeEx.Value do
  begin
    for vQtdEt := 1 to seQtdeEt.Value do
    begin
      //Monta ID Exame
      vAno := (FormatDateTime('yy', date));
      vExame := vAno + vTpexame + FormatFloat('0000000', vAux);
      CodBar.Data := vExame;
      lbExame.Caption := vExame;
      lbMsg.Caption := edTexto.Text;
      lbID.Text := IntToStr(vQtdEt);
      Relatorio.Print;
    end;
    vAux := vAux + 1;
  end;
  MessageDlg('Etiqueta(s) enviadas com sucesso!', mtInformation, [mbok], 0);
  if MessageDlg('Deseja imprimir mais etiquetas?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
    Close;
end;

procedure TfrmRelEtiquetasAut.btFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmRelEtiquetasAut.FormActivate(Sender: TObject);
Var
vControl: TInifile;
begin
  Screen.OnActiveControlChange := ProCode;
  vControl := Tinifile.create(vgPath + '\genesis.ini');
  cbTpExame.ItemIndex := vControl.ReadInteger('etiquetas', 'tipo', 0);
  vControl.Free;
  edTexto.Clear;
  edInicial.Text := '1';
  seQtdeEx.Value := 1;
  seQtdeEt.Value := 1;
  cbTpExame.SetFocus;
end;

procedure TfrmRelEtiquetasAut.FormClose(Sender: TObject; var Action: TCloseAction);
Var
vControl: TInifile;
begin
  vControl := Tinifile.create(vgPath + '\genesis.ini');
  vControl.WriteInteger('etiquetas', 'tipo', cbTpExame.ItemIndex);
  vControl.Free;
end;

procedure TfrmRelEtiquetasAut.FormDestroy(Sender: TObject);
begin
  Screen.OnActiveControlChange := nil;
end;

procedure TfrmRelEtiquetasAut.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    Key := #0;
    Perform(Wm_NextDlgCtl, 0, 0);
  end;
  if key = #27 then
    Close;
end;

end.
