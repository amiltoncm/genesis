unit uCadPacRequisicao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpFormNormal, Vcl.StdCtrls,
  Vcl.Buttons, Data.DB, Vcl.Grids, Vcl.DBGrids, wwdbedit, Wwdotdot, Wwdbcomb,
  wwdbdatetimepicker, Vcl.Mask, Vcl.DBCtrls, Vcl.Menus;

type
  TfrmCadPacRequisicao = class(TfrmTmpFormNormal)
    Label1: TLabel;
    dbNome: TDBEdit;
    Label3: TLabel;
    edDtNasc: TwwDBDateTimePicker;
    Label2: TLabel;
    edIdade: TEdit;
    edMeses: TEdit;
    Label4: TLabel;
    cbSexo: TwwDBComboBox;
    Label5: TLabel;
    lbFormaBusca: TLabel;
    GridRes: TDBGrid;
    btGravar: TBitBtn;
    dsPacientes: TDataSource;
    dsProcPacientes: TDataSource;
    popCadastro: TPopupMenu;
    Cadastro1: TMenuItem;
    Label6: TLabel;
    procedure Limpar;
    procedure Procurar(vNome: String);
    procedure FormActivate(Sender: TObject);
    procedure btFecharClick(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure edDtNascExit(Sender: TObject);
    procedure CalculaIdadePag;
    procedure edDtNascKeyPress(Sender: TObject; var Key: Char);
    procedure dbNomeExit(Sender: TObject);
    procedure GridResDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Cadastro1Click(Sender: TObject);
    procedure GridResDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadPacRequisicao: TfrmCadPacRequisicao;

implementation

{$R *.dfm}

uses dataConsultas, uDaoPacientes, dataCadastros, uVarGlobal, uFuncoesDB,
  uRequisicao, dataExames, uFuncoesDatas, uFuncoesSistema, uCadPacientes;

procedure TfrmCadPacRequisicao.btFecharClick(Sender: TObject);
begin
  dsPacientes.DataSet.Cancel;
  if frmRequisicao <> nil then
    frmRequisicao.cbPaciente.Text := '';
  inherited;
end;

procedure TfrmCadPacRequisicao.btGravarClick(Sender: TObject);
begin
  if dbNome.Text <> '' then
  begin
    if cbSexo.Text <> '' then
    begin
      //grava dados do novo paciente
      dmCadastros.qyPacientespac_codigo.Value := GetCodigo('pac_codigo', 'pacientes');
      dmCadastros.qyPacientes.Post;
      //envia dados para tabela exame
      dmExames.qyExamespac_codigo.Value := dmCadastros.qyPacientespac_codigo.Value;
      if edIdade.Text <> '' then
        dmExames.qyExamespac_idade.Text := edIdade.Text;
      //envia dados para a requisicao
      if frmRequisicao <> nil then
      begin
        frmRequisicao.cbPaciente.Text := dmCadastros.qyPacientespac_nome.Text;
        frmRequisicao.cbPaciente.PerformSearch;
        frmRequisicao.edDtNasc.Date := edDtNasc.Date;
        frmRequisicao.edAnos.Text := edIdade.Text;
        frmRequisicao.edMeses.Text := edMeses.Text;
        frmRequisicao.cbSexo.Value := cbSexo.Value;
      end;
      Close;
    end
    else
      MessageDlg('Você deve selecionar o sexo do paciente!', mtWarning, [mbok], 0);
  end
  else
    MessageDlg('Você deve digitar o nome do paciente!', mtWarning, [mbok], 0);
end;

procedure TfrmCadPacRequisicao.Cadastro1Click(Sender: TObject);
begin
  if dsProcPacientes.DataSet.FieldByName('codigo').IsNull then
    MessageDlg('Você deve selecionar um paciente!', mtWarning, [mbOk], 0)
  else
  begin
    vgCadPaciente := dsProcPacientes.DataSet.FieldByName('codigo').Text;
    frmCadPacientes.showmodal;
    dsProcPacientes.DataSet.Refresh;
  end;
end;

procedure TfrmCadPacRequisicao.dbNomeExit(Sender: TObject);
begin
  Procurar(dbNome.Text);
end;

procedure TfrmCadPacRequisicao.CalculaIdadePag;
Var
vDataNasc, vDataExame: TDate;
vIdadeAnos: Integer;
vIdadeFull: String;
begin
  if edDtNasc.Text <> '' then
  begin
    vDataExame := Date;
    vDataNasc := edDtNasc.Date;
    vIdadeAnos := Trunc((vDataExame - vDataNasc) / 365.25);
    vIdadeFull := CalculaIdade(vDataNasc, vDataExame);
    dmExames.qyExamespac_idade.Value := vIdadeAnos;
    dmExames.qyExamespac_meses.Text := vIdadeFull;
    edIdade.Text := IntToStr(vIdadeAnos);
    edMeses.Text := vIdadeFull;
  end;
end;

procedure TfrmCadPacRequisicao.edDtNascExit(Sender: TObject);
Var
vDataNasc, vDataExame: TDate;
vIdadeAnos: Integer;
vIdadeFull: String;
begin
  if edDtNasc.Text <> '' then
  begin
    vDataExame := Date;
    vDataNasc := edDtNasc.Date;
    vIdadeAnos := Trunc((vDataExame - vDataNasc) / 365.25);
    vIdadeFull := CalculaIdade(vDataNasc, vDataExame);
    dmExames.qyExamespac_idade.Value := vIdadeAnos;
    dmExames.qyExamespac_meses.Text := vIdadeFull;
    edIdade.Text := IntToStr(vIdadeAnos);
    edMeses.Text := vIdadeFull;
  end;
end;

procedure TfrmCadPacRequisicao.edDtNascKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #27 then
  begin
    edDtNasc.ClearDateTime;
    edIdade.SetFocus;
  end;
end;

procedure TfrmCadPacRequisicao.FormActivate(Sender: TObject);
begin
  inherited;
  Limpar;
end;

procedure TfrmCadPacRequisicao.GridResDblClick(Sender: TObject);
begin
  if not(dsProcPacientes.DataSet.FieldByName('codigo').IsNull) then
  begin
    dsPacientes.DataSet.Cancel;
    FiltrarPacientes('pac_codigo', '=', dsProcPacientes.DataSet.FieldByName('codigo').Text, '0', '0');
    edDtNasc.Text := dmCadastros.qyPacientespac_dtnasc.Text;
    CalculaIdadePag;
    if dmCadastros.qyPacientespac_sexo.Text = 'F' then
      cbSexo.ItemIndex := 0
    else
      if dmCadastros.qyPacientespac_sexo.Text = 'M' then
        cbSexo.ItemIndex := 1
      else
        cbSexo.ItemIndex := -1;
    if frmRequisicao <> nil then
    begin
      frmRequisicao.cbPaciente.Text := dmCadastros.qyPacientespac_nome.Text;
      frmRequisicao.cbPaciente.PerformSearch;
      frmRequisicao.edDtNasc.Date := edDtNasc.Date;
      frmRequisicao.edAnos.Text := edIdade.Text;
      frmRequisicao.edMeses.Text := edMeses.Text;
      frmRequisicao.cbSexo.Value := cbSexo.Value;
    end;
  end;
  Close;
end;

procedure TfrmCadPacRequisicao.GridResDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  if odd(dsProcPacientes.DataSet.RecNo) then
    GridRes.Canvas.Brush.Color := clSilver
  else
    GridRes.Canvas.Brush.Color:= clWhite;
  GridRes.Canvas.FillRect(Rect);
  if gdSelected in State then
    with GridRes.Canvas do
    begin
      Brush.Color := clHighlight;
      FillRect(Rect);
      //Font.Style := [fsbold];
    end;
  GridRes.DefaultDrawDataCell(Rect, Column.Field, State);
end;

procedure TfrmCadPacRequisicao.Limpar;
begin
  FiltrarConsPacientesCad('', '=', '1');
  lbFormaBusca.Caption := '';
  dsProcPacientes.DataSet.Active := true;
  dsPacientes.DataSet.Active := true;
  dsPacientes.DataSet.Insert;
  dmCadastros.qyPacientespac_nome.Text := vgNomePac;
  edDtNasc.Clear;
  edMeses.Clear;
  dmCadastros.qyPacientespac_sexo.Text := 'F';
  cbSexo.ItemIndex := 0;
  cbSexo.Text := 'Feminino';
  edIdade.Clear;
  cbSexo.Clear;
  dbNome.SetFocus;
end;

procedure TfrmCadPacRequisicao.Procurar(vNome: String);
Var
vEncontrado: BOOL;
Begin
  vEncontrado := false;
  Begin
    FiltrarConsPacientesCad(vNome, '=', '50');
    if not dmConsultas.qyConsPacientesCad.Fields[0].IsNull then
    Begin
      vEncontrado := true;
      MessageDlg('Foram encontrados homônimos de: ' + vNome + #13 + 'Estimativa 93%', mtWarning, [mbok], 0);
      lbFormaBusca.Caption := 'Igualdade - 93%';
    end;
  end;
  if vEncontrado = false then
  Begin
    FiltrarConsPacientesCad(vNome, 'like%', '50');
    if not dmConsultas.qyConsPacientesCad.Fields[0].IsNull then
    Begin
      vEncontrado := true;
      MessageDlg('Foram encontrados nomes que começam com: ' + vNome  + #13 + 'Estimativa 65%', mtWarning, [mbok], 0);
      lbFormaBusca.Caption := 'Início do nome - 65%';
    end;
  end;
  if vEncontrado = false then
  Begin
    FiltrarConsPacientesCad(vNome, '%like%', '50');
    if not dmConsultas.qyConsPacientesCad.Fields[0].IsNull then
    Begin
      vEncontrado := true;
      MessageDlg('Foram encontrados nomes que contém: ' + vNome  + #13 + 'Estimativa 60%', mtWarning, [mbok], 0);
      lbFormaBusca.Caption := 'Contendo - 60%';
    end;
  end;
  if vEncontrado = false then
  Begin
    FiltrarConsPacientesCad(vNome, 'soundex', '50');
    if not dmConsultas.qyConsPacientesCad.Fields[0].IsNull then
    Begin
      vEncontrado := true;
      MessageDlg('Foram encontrados nomes com a pronúncia: ' + vNome  + #13 + 'Estimativa 70%', mtWarning, [mbok], 0);
      lbFormaBusca.Caption := 'Fonética - 70%';
    end;
  end;
  if vEncontrado = false then
  Begin
    //utiliza levenshtein
    FiltrarConsPacientesCad(vNome, 'levenshtein', '50');
    if not dmConsultas.qyConsPacientesCad.Fields[0].IsNull then
    Begin
      vEncontrado := true;
      MessageDlg('Foram encontrados nomes com similaridade à: ' + vNome  + #13 + 'Estimativa 95%', mtWarning, [mbok], 0);
      lbFormaBusca.Caption := 'Similaridade - 95%';
    end;
  end;
  if vEncontrado = true then
    dmConsultas.qyConsPacientesCad.Refresh;
end;

end.
