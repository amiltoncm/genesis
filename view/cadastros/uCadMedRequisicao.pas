unit uCadMedRequisicao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpFormNormal, Vcl.StdCtrls,
  Vcl.Buttons, Data.DB, wwdbedit, Wwdotdot, Wwdbcomb, Vcl.Mask, Vcl.DBCtrls,
  Vcl.Grids, Vcl.DBGrids;

type
  TfrmCadMedRequisicao = class(TfrmTmpFormNormal)
    Label1: TLabel;
    dbCodigo: TDBEdit;
    Label2: TLabel;
    dbDescricao: TDBEdit;
    Label6: TLabel;
    cbTitulo: TwwDBComboBox;
    Label4: TLabel;
    dbConselho: TDBEdit;
    Label5: TLabel;
    dbNumRegistro: TDBEdit;
    Label18: TLabel;
    cbUfCons: TwwDBComboBox;
    Label3: TLabel;
    dbFone: TDBEdit;
    Label8: TLabel;
    dbCpf: TDBEdit;
    btGravar: TBitBtn;
    dsMedicos: TDataSource;
    dsProcMedicos: TDataSource;
    Label7: TLabel;
    lbFormaBusca: TLabel;
    GridRes: TDBGrid;
    procedure Procurar(vNome: String);
    procedure Limpar;
    procedure FormActivate(Sender: TObject);
    procedure btFecharClick(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure dbDescricaoExit(Sender: TObject);
    procedure dbNumRegistroExit(Sender: TObject);
    procedure GridResDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadMedRequisicao: TfrmCadMedRequisicao;

implementation

{$R *.dfm}

uses dataCadastros, dataLookups, uDaoMedicos, uVarGlobal, uRequisicao,
  uFuncoesDB, uFuncoesValidacao, dataExames, dataConsultas;

procedure TfrmCadMedRequisicao.Procurar(vNome: String);
Var
vEncontrado: BOOL;
vRange: Integer;
Begin
  vRange := Trunc(Length(vNome) * 0.25) + 1;  //a escala padrão é de 25% arredondando para cima
  vEncontrado := false;
  Begin
    FiltrarConsMedCad(vNome, '=', '50');
    if not dmConsultas.qyConsMedicosCad.Fields[0].IsNull then
    Begin
      vEncontrado := true;
      MessageDlg('Foram encontrados homônimos de: ' + vNome + #13 + 'Estimativa 93%', mtWarning, [mbok], 0);
      lbFormaBusca.Caption := 'Igualdade - 93%';
    end;
  end;
  if vEncontrado = false then
  Begin
    FiltrarConsMedCad(vNome, 'like%', '50');
    if not dmConsultas.qyConsMedicosCad.Fields[0].IsNull then
    Begin
      vEncontrado := true;
      MessageDlg('Foram encontrados nomes que começam com: ' + vNome  + #13 + 'Estimativa 65%', mtWarning, [mbok], 0);
      lbFormaBusca.Caption := 'Início do nome - 65%';
    end;
  end;
  if vEncontrado = false then
  Begin
    FiltrarConsMedCad(vNome, '%like%', '50');
    if not dmConsultas.qyConsMedicosCad.Fields[0].IsNull then
    Begin
      vEncontrado := true;
      MessageDlg('Foram encontrados nomes que contém: ' + vNome  + #13 + 'Estimativa 60%', mtWarning, [mbok], 0);
      lbFormaBusca.Caption := 'Contendo - 60%';
    end;
  end;
  if vEncontrado = false then
  Begin
    //utiliza soundex
    FiltrarConsMedCad(vNome, 'soundex', '50');
    if not dmConsultas.qyConsMedicosCad.Fields[0].IsNull then
    Begin
      vEncontrado := true;
      MessageDlg('Foram encontrados nomes com a pronúncia: ' + vNome  + #13 + 'Estimativa 70%', mtWarning, [mbok], 0);
      lbFormaBusca.Caption := 'Fonética - 70%';
    end;
  end;
  if vEncontrado = false then
  Begin
    //utiliza levenshtein
    FiltrarConsMedCad(vNome, 'levenshtein', '50');
    if not dmConsultas.qyConsMedicosCad.Fields[0].IsNull then
    Begin
      vEncontrado := true;
      MessageDlg('Foram encontrados nomes com similaridade à: ' + vNome  + #13 + 'Estimativa 95%', mtWarning, [mbok], 0);
      lbFormaBusca.Caption := 'Similaridade - 95%';
    end;
  end;
  if vEncontrado = true then
    dmConsultas.qyConsMedicosCad.Refresh;
end;

procedure TfrmCadMedRequisicao.Limpar;
begin
  lbFormaBusca.Caption := '';
  FiltrarConsMedCad('0', '=', '0');
  dsProcMedicos.DataSet.Active := true;
  dsMedicos.DataSet.Active := true;
  dsMedicos.DataSet.Insert;
  cbUfCons.ItemIndex := 23;
  dmCadastros.qyMedicosmed_fone.Text := '(00) 0000-0000';
  dmCadastros.qyMedicosmed_nome.Text := vgNomeMed;
  dmCadastros.qyMedicoscos_id.Value := 6;
  dbDescricao.SetFocus;
end;


procedure TfrmCadMedRequisicao.btFecharClick(Sender: TObject);
begin
  dsMedicos.DataSet.Cancel;
  frmRequisicao.cbMedico.Text := '';
  inherited;
end;

procedure TfrmCadMedRequisicao.btGravarClick(Sender: TObject);
Var
vTamDoc: integer;
begin
  if dmCadastros.qyMedicosmed_nome.IsNull then
  begin
    MessageDlg('O campo nome é obrigatório!', mtWarning, [mbOk], 0);
    dbDescricao.SetFocus;
  end
  else
    if dmCadastros.qyMedicosmed_titulo.IsNull then
    begin
      MessageDlg('O campo título é obrigatório!', mtWarning, [mbOk], 0);
      cbTitulo.SetFocus;
    end
    else
      if dmCadastros.qyMedicosmed_numconselho.IsNull then
      begin
        MessageDlg('O campo número do conselho é obrigatório!', mtWarning, [mbOk], 0);
        dbNumRegistro.SetFocus;
      end
      else
        if dmCadastros.qyMedicoscos_uf.IsNull then
        begin
          MessageDlg('O campo uf do conselho é obrigatório!', mtWarning, [mbOk], 0);
          cbUfCons.SetFocus;
        end
        else
          if dmCadastros.qyMedicosmed_fone.IsNull then
          begin
            MessageDlg('O campo telefone é obrigatório!', mtWarning, [mbOk], 0);
            dbfone.SetFocus;
          end
          else
            begin
              if dbDescricao.Text <> '' then
              begin
                //grava dados do novo medico
                dmCadastros.qyMedicosmed_codigo.Value := GetCodigo('med_codigo', 'medicos');
                if not dmCadastros.qyMedicosmed_cpf.IsNull then
                begin
                  vTamDoc := Length(dbCpf.Text);
                  if vTamDoc = 18 then
                    if not CNPJ(dbCpf.Text) then
                      MessageDlg('CNPJ inválido!', mtWarning, [mbok], 0);
                  if vTamDoc = 14 then
                    if not CPF(dbCpf.Text) then
                      MessageDlg('CPF inválido!', mtWarning, [mbok], 0);
            end;
            dmCadastros.qyMedicoscid_codigo.Value := 0;
            dmCadastros.qyMedicos.Post;
            //verifica qual medico cadastra - Medico ou Adicional
            if vgTipoCadMed = 0 then
            begin
              //envia dados para tabela exame
              frmRequisicao.cbMedico.Text := dmCadastros.qyMedicosmed_nome.Text;
              dmExames.qyExamesmed_codigo.Value := dmCadastros.qyMedicosmed_codigo.Value;
              //atualiza lk procura envia dados para a requisicao
              dmLookups.AtualizaLkProcMedico('0');
              frmRequisicao.cbMedico.Text := dmCadastros.qyMedicosmed_nome.Text;
              frmRequisicao.cbMedico.PerformSearch;
            end;
            if vgTipoCadMed = 1 then
            begin
              dmLookups.AtualizaLkProcMedico('1');
              //envia dados para a requisicao
              frmRequisicao.cbMedicoAd.Text := dmCadastros.qyMedicosmed_nome.Text;
              frmRequisicao.cbMedicoAd.PerformSearch;
            end;
            Close;
          end
          else
            MessageDlg('Você deve digitar o nome do médico!', mtWarning, [mbok], 0);
        end;
end;

procedure TfrmCadMedRequisicao.dbDescricaoExit(Sender: TObject);
begin
  Procurar(dbDescricao.Text);
end;

procedure TfrmCadMedRequisicao.dbNumRegistroExit(Sender: TObject);
begin
  FiltrarConsMedReg(dbNumRegistro.Text);
  if not dmConsultas.qyConsMedicosCad.Fields[0].IsNull then
  Begin
    MessageDlg('Foi encontrado CRM: ' +  dbNumRegistro.Text + #13 + 'Estimativa 95%', mtWarning, [mbok], 0);
    lbFormaBusca.Caption := 'Estimativa - 95%';
  end;
end;

procedure TfrmCadMedRequisicao.FormActivate(Sender: TObject);
begin
  inherited;
  Limpar;
end;

procedure TfrmCadMedRequisicao.GridResDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  if odd(dsProcMedicos.DataSet.RecNo) then
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

end.
