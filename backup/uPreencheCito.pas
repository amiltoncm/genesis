unit uPreencheCito;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTmpFormNormal, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Mask, wwdbedit, Wwdotdot, Wwdbcomb, Vcl.ExtCtrls;

type
  TfrmPreencheCito = class(TfrmTmpFormNormal)
    Label21: TLabel;
    btInserir: TBitBtn;
    pnLaudo: TPanel;
    pnFrase1: TPanel;
    lbLinha1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    cbSuperficiais: TCheckBox;
    cbIntermediaria: TCheckBox;
    cbParabasais: TCheckBox;
    cbMaioria: TCheckBox;
    cbQuantidades: TCheckBox;
    cbMetaplasicas: TCheckBox;
    cbCom: TCheckBox;
    cbSem: TCheckBox;
    pnFrase2: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label1: TLabel;
    cbRaros: TCheckBox;
    cbEsparsos: TCheckBox;
    cbEscassos: TCheckBox;
    cbPequeno: TCheckBox;
    cbPequena: TCheckBox;
    cbModerada: TCheckBox;
    cbAcentuada: TCheckBox;
    cbOcasionais: TCheckBox;
    cbEsparsas: TCheckBox;
    cbEscassas: TCheckBox;
    cbFrequentes: TCheckBox;
    cbGrandQuant: TCheckBox;
    pnFrase3: TPanel;
    lbMicroflora: TLabel;
    Label9: TLabel;
    cbLactobacilos: TCheckBox;
    cbDiscreta: TCheckBox;
    cbEscassa: TCheckBox;
    cbBacterias: TCheckBox;
    cbCelulasPista: TCheckBox;
    cbSupracitoplasticos: TCheckBox;
    cbNaoExistem: TCheckBox;
    cbEfeitos: TCheckBox;
    cbNotamSe: TCheckBox;
    cbBlastoconideos: TCheckBox;
    cbPseudoHifas: TCheckBox;
    cbProtozoarios: TCheckBox;
    cbCom2: TCheckBox;
    cbSem2: TCheckBox;
    pnFrase4: TPanel;
    Label10: TLabel;
    Label12: TLabel;
    cbClasse: TwwDBComboBox;
    pnDiagnostico: TPanel;
    pnDiag1: TPanel;
    Label11: TLabel;
    cbDentro: TCheckBox;
    cbEpiteliais: TCheckBox;
    cbSatisfatorias: TCheckBox;
    cbObs: TCheckBox;
    edObs: TEdit;
    cbASCUSDiag: TCheckBox;
    cbNIC_HPV: TCheckBox;
    pnDiag2: TPanel;
    Label13: TLabel;
    cbDiscreto: TCheckBox;
    cbModerado: TCheckBox;
    cbAcentuado: TCheckBox;
    pnDiag3: TPanel;
    Label14: TLabel;
    cbMetaplasia: TCheckBox;
    pnDiag4: TPanel;
    Label15: TLabel;
    cbAspectos: TCheckBox;
    cbFlora: TCheckBox;
    pnDiag5: TPanel;
    Label16: TLabel;
    cbVaginose: TCheckBox;
    pnDiag6: TPanel;
    Label17: TLabel;
    cbCandida: TCheckBox;
    cbCandidiase: TCheckBox;
    cbConideos: TCheckBox;
    pnDiag7: TPanel;
    Label18: TLabel;
    cbTrichomonas: TCheckBox;
    pnDiag8: TPanel;
    Label19: TLabel;
    cbEfeito: TCheckBox;
    cbSemelhante: TCheckBox;
    pnDiag9: TPanel;
    Label20: TLabel;
    Label8: TLabel;
    cbEutrofia: TCheckBox;
    cbHipotrofia: TCheckBox;
    cbAtrofia: TCheckBox;
    cbAbrir: TCheckBox;
    cbPadrao: TComboBox;
    procedure VerificaChk(vOpcao: Integer);
    procedure btInserirClick(Sender: TObject);
    procedure cbObsClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure cbRarosClick(Sender: TObject);
    procedure cbEsparsosClick(Sender: TObject);
    procedure cbEscassosClick(Sender: TObject);
    procedure cbPequenoClick(Sender: TObject);
    procedure cbOcasionaisClick(Sender: TObject);
    procedure cbEsparsasClick(Sender: TObject);
    procedure cbEscassasClick(Sender: TObject);
    procedure cbFrequentesClick(Sender: TObject);
    procedure cbGrandQuantClick(Sender: TObject);
    procedure cbCom2Click(Sender: TObject);
    procedure cbSem2Click(Sender: TObject);
    procedure cbEscassaClick(Sender: TObject);
    procedure cbLactobacilosClick(Sender: TObject);
    procedure cbBacteriasClick(Sender: TObject);
    procedure cbSupracitoplasticosClick(Sender: TObject);
    procedure cbNaoExistemClick(Sender: TObject);
    procedure cbEfeitosClick(Sender: TObject);
    procedure cbNotamSeClick(Sender: TObject);
    procedure cbBlastoconideosClick(Sender: TObject);
    procedure cbPseudoHifasClick(Sender: TObject);
    procedure cbProtozoariosClick(Sender: TObject);
    procedure cbDiscretaClick(Sender: TObject);
    procedure cbCelulasPistaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPreencheCito: TfrmPreencheCito;

implementation

{$R *.dfm}

uses uExameLaudo, dataExames;

procedure TfrmPreencheCito.VerificaChk(vOpcao: Integer);
begin
  //Primeira parte da frase
  if vOpcao = 1 then
  begin
    if cbEscassa.Checked = true then
    begin
      cbLactobacilos.Checked := false;
      cbCom2.Checked := false;
      cbSem2.Checked := false;
      cbDiscreta.Checked := false;
      cbBacterias.Checked := false;
      cbCelulasPista.Checked := false;
      cbSupracitoplasticos.Checked := false;
    end;
    if cbLactobacilos.Checked = true then
    begin
      cbEscassa.Checked := false;
      cbBacterias.Checked := false;
      cbCelulasPista.Checked := false;
      cbSupracitoplasticos.Checked := false;
    end;
    if cbBacterias.Checked = true then
    begin
      cbEscassa.Checked := false;
      cbLactobacilos.Checked := false;
      cbCom2.Checked := false;
      cbSem2.Checked := false;
      cbDiscreta.Checked := false;
      cbSupracitoplasticos.Checked := false;
    end;
    if cbSupracitoplasticos.Checked = true then
    begin
      cbEscassa.Checked := false;
      cbLactobacilos.Checked := false;
      cbCom2.Checked := false;
      cbSem2.Checked := false;
      cbDiscreta.Checked := false;
      cbBacterias.Checked := false;
      cbCelulasPista.Checked := false;
    end;
  end;
  //Segunda parte da frase
  if vOpcao = 2 then
  begin
    if cbNaoExistem.Checked = true then
    begin
      cbNotamSe.Checked := false;
      cbBlastoconideos.Checked := false;
      cbPseudoHifas.Checked := false;
      cbProtozoarios.Checked := false;
    end;
    if cbNotamSe.Checked = true then
    begin
      cbNaoExistem.Checked := false;
      cbEfeitos.Checked := false;
      cbProtozoarios.Checked := false;
    end;
    if cbProtozoarios.Checked = true then
    begin
      cbNaoExistem.Checked := false;
      cbEfeitos.Checked := false;
      cbNotamSe.Checked := false;
      cbBlastoconideos.Checked := false;
      cbPseudoHifas.Checked := false;
    end;
  end;
end;

procedure TfrmPreencheCito.btInserirClick(Sender: TObject);
Var
vExame: String;
vFraseLaudo01, vFraseLaudo02, vFraseLaudo03, vFraseLaudo04: String;
vFraseDiag01, vFraseDiag02, vFraseDiag03, vFraseDiag04, vFraseDiag05: String;
vFraseDiag06, vFraseDiag07, vFraseDiag08, vFraseDiag09, vFraseDia10: String;
vTam: integer;
begin
  //--- Limpa frases -----------------------------------------------------------
  vFraseLaudo01 := '';
  vFraseLaudo02 := '';
  vFraseLaudo03 := '';
  vFraseLaudo04 := '';
  vFraseDiag01 := '';
  vFraseDiag02 := '';
  vFraseDiag03 := '';
  vFraseDiag04 := '';
  vFraseDiag05 := '';
  vFraseDiag06 := '';
  vFraseDiag07 := '';
  vFraseDiag08 := '';
  vFraseDiag09 := '';
  vFraseDia10 := '';

  //--- Testa se o laudo já foi preenchido -------------------------------------
  vExame := dmExames.qyExamesexa_id.text;
  dmExames.qyExamesLaudo.Close;
  dmExames.qyExamesLaudo.SQL.Clear;
  dmExames.qyExamesLaudo.SQL.Add('select exa_id, exa_laudo, exa_diagnostico from exameslaudo where exa_id = ');
  dmExames.qyExamesLaudo.SQL.Add(QuotedStr(vExame));
  dmExames.qyExamesLaudo.Open;
  if dmExames.qyExamesLaudoexa_id.IsNull then
  begin
    dmExames.qyExamesLaudo.Insert;
    dmExames.qyExamesLaudoexa_id.Text := vExame;
  end
  else
    dmExames.qyExamesLaudo.Edit;
  frmExameLaudo.meLaudo.Clear;
  frmExameLaudo.meDiagnostico.Clear;
  dmExames.qyExamesLaudoexa_laudo.Clear;
  dmExames.qyExamesLaudoexa_diagnostico.Clear;

//--- Monta laudo --------------------------------------------------------------

  //--- Monta frase 1 - Laudo --------------------------------------------------

  vFraseLaudo01 := 'A amostra é composta por células';
  if cbSuperficiais.Checked = true then
  begin
    if cbIntermediaria.Checked = true then
      vFraseLaudo01 := vFraseLaudo01 + ' superficiais e intermediárias'
    else
      vFraseLaudo01 := vFraseLaudo01 + ' superficiais';
  end
  else
    if cbIntermediaria.Checked = true then
      vFraseLaudo01 := vFraseLaudo01 + ' intermediárias';
  if cbParabasais.Checked = true then
    vFraseLaudo01 := vFraseLaudo01 + ' parabasais';
  if cbMaioria.Checked = true then
    vFraseLaudo01 := vFraseLaudo01 + ' em sua maioria';
  if cbQuantidades.Checked = true then
    vFraseLaudo01 := vFraseLaudo01 + ' em quantidades decrescentes nesta ordem';
  if cbCom.Checked = true then
    vFraseLaudo01 := vFraseLaudo01 + ' com células endocervicais';
  if cbSem.Checked = true then
    vFraseLaudo01 := vFraseLaudo01 + ' sem células endocervicais';
  if cbMetaplasicas.Checked = true then
    vFraseLaudo01 := vFraseLaudo01 + ' e metaplásicas';
  vFraseLaudo01 := vFraseLaudo01 + '.';

  //Padrão ASCUS
  if cbPadrao.ItemIndex = 1 then
  begin
    vFraseLaudo01 := vFraseLaudo01 + ' Existem células escamosas, sobretudo intermediárias, com discretos aumento de volume e hipercromasia do núcleo, que é vesiculoso ou denso, por vezes duplo, com halo claro.';
  end;
  //Padrão de Queratinação
  if cbPadrao.ItemIndex = 2 then
  begin
    vFraseLaudo01 := vFraseLaudo01 + ' Escamas anucleadas frequentes e em grupamentos também estão presentes.';
  end;
  //Padrão Bócio
  if cbPadrao.ItemIndex = 3 then
  begin
    vFraseLaudo01 := vFraseLaudo01 + ' Os esfregaços contêm hemácias e, quase que exclusivamente os secos ao ar, células foliculares, ';
    vFraseLaudo01 := vFraseLaudo01 + '  entremeadas por de Hürthle, com núcleo vesiculoso ou denso formando blocos e lençóis, macro e microfolículos;';
    vFraseLaudo01 := vFraseLaudo01 + ' há material compatível com colóide, histiócitos vacuolados e pequeno número de linfócitos pequenos típicos e neutrófilos, sem permeação dos grupos epiteliais.';
  end;
  //Padrão HPV Alto grau
  if cbPadrao.ItemIndex = 4 then
  begin
    vFraseLaudo01 := vFraseLaudo01 + ' Existe discariose moderada e acentuada.';
  end;

  if vFraseLaudo01 <> 'A amostra é composta por células.' then
    frmExameLaudo.meLaudo.Lines.Add(vFraseLaudo01);

//------------------------------------------------------------------------------

  //--- Monta frase 2 - Laudo --------------------------------------------------

  //--- Linha 4 ----------------------------------------------------------------
  vFraseLaudo02 := 'Há';
  if cbRaros.Checked = true then
    vFraseLaudo02 := vFraseLaudo02 + ' raros neutrófilos'
  else
    if cbEsparsos.Checked = true then
      vFraseLaudo02 := vFraseLaudo02 + ' esparsos neutrófilos'
    else
      if cbEscassos.Checked = true then
        vFraseLaudo02 := vFraseLaudo02 + ' escassos neutrófilos'
      else
        if cbPequeno.Checked = true then
          vFraseLaudo02 := vFraseLaudo02 + ' pequeno número de neutrófilos';

  //--- Linha 5 ----------------------------------------------------------------
  if cbPequena.Checked = true then
  begin
    if ((cbPequena.Checked = true) and (cbModerada.Checked = true)) then
      vFraseLaudo02 := vFraseLaudo02 + ' pequena a moderada quantidade de células inflamatórias'
    else
      vFraseLaudo02 := vFraseLaudo02 + ' pequena quantidade de células inflamatórias';
  end
  else
    if cbModerada.Checked = true then
    begin
      if cbModerada.Checked = true then
        vFraseLaudo02 := vFraseLaudo02 + ' moderada quantidade de células inflamatórias';
    end
    else
      begin
        if cbAcentuada.Checked = true then
          vFraseLaudo02 := vFraseLaudo02 + ' acentuada quantidade de células inflamatórias';
      end;

  //--- Linha 6 ----------------------------------------------------------------
  if cbOcasionais.Checked = true then
    vFraseLaudo02 := vFraseLaudo02 + ' e ocasionais de hemácias'
  else
    if cbEsparsas.Checked = true then
      vFraseLaudo02 := vFraseLaudo02 + ' e esparsas de hemácias'
    else
      if cbEscassas.Checked = true then
        vFraseLaudo02 := vFraseLaudo02 + ' e escassas hemácias'
      else
     if cbFrequentes.Checked = true then
        vFraseLaudo02 := vFraseLaudo02 + ' e frequentes hemácias'
     else
       if cbGrandQuant.Checked = true then
         vFraseLaudo02 := vFraseLaudo02 + ' e grande número de hemácias';
  vFraseLaudo02 := vFraseLaudo02 + '.';
  if vFraseLaudo02 <> 'Há.' then
  begin
    frmExameLaudo.meLaudo.Lines.Add('');
    frmExameLaudo.meLaudo.Lines.Add(vFraseLaudo02);
  end;

//------------------------------------------------------------------------------

  //--- Monta frase 3 - Laudo --------------------------------------------------
  if cbEscassa.Checked = true then
  begin
    vFraseLaudo03 := vFraseLaudo03 + 'A microflora é escassa de difícil classificação.' + #13;
    if cbNaoExistem.Checked = true then
    begin
      if cbEfeitos.Checked = true then
        vFraseLaudo03 := vFraseLaudo03 + 'Não existem protozoários, fungos ou efeitos citopáticos virais nesta amostra.' +#13
      else
        vFraseLaudo03 := vFraseLaudo03 + 'Não existem protozoários ou fungos.' + #13;
    end;
    if cbNotamSe.Checked = true then
    begin
      vFraseLaudo03 := vFraseLaudo03 + 'Notam-se';
      if cbBlastoconideos.Checked = true then
        vFraseLaudo03 := vFraseLaudo03 + ' blastoconideos' + #13;
      if cbPseudoHifas.Checked = true then
        vFraseLaudo03 := vFraseLaudo03 + ' pseudo-hifas de fungos sugestivos de "candida sp"' + #13;
      vFraseLaudo03 := vFraseLaudo03 + '.';
    end;
    if cbProtozoarios.Checked = true then
      vFraseLaudo03 := vFraseLaudo03 + 'Notam-se protozoários sugestivos de "Trichomonas vaginalis".';
    frmExameLaudo.meLaudo.Lines.Add('');
    frmExameLaudo.meLaudo.Lines.Add(vFraseLaudo03);
  end
  else
  begin
    vFraseLaudo03 := 'A microflora é constituída por';

    //--- Linha 7 ----------------------------------------------------------------
    if cbLactobacilos.Checked = true then
    Begin
      vFraseLaudo03 := vFraseLaudo03 + ' lactobacilos';
      if cbCom2.Checked = true then
        vFraseLaudo03 := vFraseLaudo03 + ' com';
      if cbSem2.Checked = true then
        vFraseLaudo03 := vFraseLaudo03 + ' sem';
      vFraseLaudo03 := vFraseLaudo03 + ' citólise';
      if cbDiscreta.Checked = true then
        vFraseLaudo03 := vFraseLaudo03 + ' discreta';
      vFraseLaudo03 := vFraseLaudo03 + '.' + #13;
    end;

    //--- Linha 8 ----------------------------------------------------------------

    //--- Linha 9 ----------------------------------------------------------------
    if cbBacterias.Checked = true then
    begin
      vFraseLaudo03 := vFraseLaudo03 + ' bactérias cocoides e bacilos curtos';
      if cbCelulasPista.Checked = true then
        vFraseLaudo03 := vFraseLaudo03 + ' com ocasionais células-pista';
      vFraseLaudo03 := vFraseLaudo03 + '.' + #13;
    end;

    //--- Linha 10 ---------------------------------------------------------------
    if cbSupracitoplasticos.Checked = true then
      vFraseLaudo03 := vFraseLaudo03 + ' bacilos supracitoplasmáticos com células-pista.' + #13;

    //--- Linha 11 ---------------------------------------------------------------
    if ((cbNaoExistem.Checked = true) and (cbEfeitos.Checked = false)) then
      vFraseLaudo03 := vFraseLaudo03 + 'Não existem protozoários ou fungos.' + #13;
    if ((cbNaoExistem.Checked = true) and (cbEfeitos.Checked = true)) then
      vFraseLaudo03 := vFraseLaudo03 + 'Não existem protozoários, fungos ou efeitos citopáticos virais nesta amostra.' + #13;

    //--- Linha 12 ---------------------------------------------------------------
    if cbNotamSe.Checked = true then
    begin
      vFraseLaudo03 := vFraseLaudo03 + 'Notam-se';
      if cbBlastoconideos.Checked = true then
        vFraseLaudo03 := vFraseLaudo03 + ' blastoconídeos';
      if cbPseudoHifas.Checked = false then
        vFraseLaudo03 := vFraseLaudo03 +  ' de fungos sugestivos de "Candida sp"';
      if cbPseudoHifas.Checked = true then
      begin
        if cbBlastoconideos.Checked = true then
          vFraseLaudo03 := vFraseLaudo03 + ' e pseudo-hifas de fungos sugestivos de "Candida sp"'
        else
          vFraseLaudo03 := vFraseLaudo03 + ' pseudo-hifas de fungos sugestivos de "Candida sp"';
      end;
      vFraseLaudo03 := vFraseLaudo03 + '.';
    end;

    //--- Linha 13 ---------------------------------------------------------------
    if cbProtozoarios.Checked = true then
      vFraseLaudo03 := vFraseLaudo03 + ' Notam-se protozoários sugestivos de "Trichomonas vaginalis".';

    //--- Insere frase 03 --------------------------------------------------------
    if vFraseLaudo03 <> 'A microflora é constituída por' then
    begin
      frmExameLaudo.meLaudo.Lines.Add('');
      frmExameLaudo.meLaudo.Lines.Add(vFraseLaudo03);
    end;
  end;

//-------------------------------------------------------------------------------------------------------------------------

  //--- Monta frase 4 - Laudo --------------------------------------------------
  if cbClasse.Text <> '' then
  begin
    vFraseLaudo04 := #13 + 'A presente amostra corresponde a Classe ' + cbClasse.Value +
    ' de Papanicolaou.';
    frmExameLaudo.meLaudo.Lines.Add('');
    frmExameLaudo.meLaudo.Lines.Add(vFraseLaudo04);
  end;

  //--- Diagnóstico ------------------------------------------------------------

  //--- Monta frase 1 - Diagnóstico --------------------------------------------
  frmExameLaudo.meDiagnostico.Clear;
  vFraseDiag01 := 'Amostra satisfatória';

  //Padrão ASCUS - Vs. 1.2.0.25
  if cbPadrao.ItemIndex = 1 then
  begin
    vFraseDiag01 := vFraseDiag01 + ' com alterações epiteliais escamosas de significado indeterminado ("ASCUS") sugestivas de lesão de BAIXO GRAU.';
  end;

  //Padrão Queratinação - Vs. 1.2.0.25
  if cbPadrao.ItemIndex = 2 then
  begin
    vFraseDiag01 := vFraseDiag01 + ' com alterações epiteliais escamosas decorrentes de reparo tissular (QUERATINIZAÇÃO).';
  end;

  //Padrão HPV alto Grau - Vs. 1.2.0.25
  if cbPadrao.ItemIndex = 4 then
  begin
    vFraseDiag01 := vFraseDiag01 + ' , com lesão epitelial escamosa de ALTO GRAU: NEOPLASIA INTRAEPITELIAL CERVICAL II e III (displasia moderada e acentuada / carcinoma de células escamosas "in situ").';
  end;

  //Padrão ASCUS - Vs. 1.2.0.18
  if cbNIC_HPV.Checked = true then
  begin
    vFraseDiag01 := vFraseDiag01 + ' com lesão epitelial escamosa de BAIXO GRAU:' +#13 +
                                   'NEOPLASIA INTRAEPITELIAL CERVICAL I (displasia discreta)/ASPECTOS ASSOCIADOS À INFECÇÃO PELO PAPILOMAVÍRUS HUMANO.';
  end;

  if cbDentro.Checked = true then
    vFraseDiag01 := vFraseDiag01 + ' dentro dos padrões de normalidade';

  if cbEpiteliais.Checked = true then
    vFraseDiag01 := vFraseDiag01 + ' com células epiteliais dentro dos padrões de normalidade';

  if cbSatisfatorias.Checked = true then
    vFraseDiag01 := vFraseDiag01 + ' (esfregaço vaginal) dentro dos padrões de normalidade';

  if cbObs.Checked = true then
    vFraseDiag01 := vFraseDiag01 + edObs.Text;

  vTam := Length(vFraseDiag01);
  if vFraseDiag01[vTam] <> '.' then
    vFraseDiag01 := vFraseDiag01 + '.';

  if vFraseDiag01 <> 'Amostra satisfatória.' then
  begin
    frmExameLaudo.meDiagnostico.Lines.Add(vFraseDiag01);
  end;

  //--- Monta frase 2 - Diagnóstico --------------------------------------------
  if ((cbDiscreto.Checked = true) and (cbModerado.Checked = true) and (cbAcentuado.Checked = true)) then
    vFraseDiag02 := 'Componente inflamatório discreto, moderado e acentuado'
  else
    if ((cbDiscreto.Checked = true) and (cbModerado.Checked = true)) then
      vFraseDiag02 := 'Componente inflamatório discreto a moderado'
    else
      if ((cbDiscreto.Checked = true) and (cbAcentuado.Checked = true)) then
        vFraseDiag02 := 'Componente inflamatório discreto e acentuado'
      else
        if ((cbModerado.Checked = true) and (cbAcentuado.Checked = true)) then
          vFraseDiag02 := 'Componente inflamatório moderado e acentuado'
        else
          if cbDiscreto.Checked = true then
            vFraseDiag02 := 'Componente inflamatório discreto'
          else
            if cbModerado.Checked = true then
              vFraseDiag02 := vFraseDiag02 + 'Componente inflamatório moderado'
            else
              if cbAcentuado.Checked = true then
                vFraseDiag02 := vFraseDiag02 + 'Componente inflamatório acentuado';
  vFraseDiag02 := vFraseDiag02 + '.';
  if vFraseDiag02 <> '.' then
  begin
    frmExameLaudo.meDiagnostico.Lines.Add('');
    frmExameLaudo.meDiagnostico.Lines.Add(vFraseDiag02);
  end;

  //--- Monta frase 3 - Diagnóstico --------------------------------------------
  if cbMetaplasia.Checked = true then
  begin
    frmExameLaudo.meDiagnostico.Lines.Add('');
    frmExameLaudo.meDiagnostico.Lines.Add('Metaplasia escamosa.');
  end;

  //--- Monta frase 4 - Diagnóstico --------------------------------------------
  if cbFlora.Checked = true then
  begin
    frmExameLaudo.meDiagnostico.Lines.Add('');
    vFraseDiag04 := 'Flora bacteriana mista';
    if cbAspectos.Checked = true then
      vFraseDiag04 := vFraseDiag04 + ' com aspectos sugestivos de vaginose bacteriana';
  end;
  vFraseDiag04 := vFraseDiag04 + '.';
  if vFraseDiag04 <> '.' then
  begin
    frmExameLaudo.meLaudo.Lines.Add('');
    frmExameLaudo.meDiagnostico.Lines.Add(vFraseDiag04);
  end;

  //--- Monta frase 5 - Diagnóstico --------------------------------------------
  if cbVaginose.Checked = true then
  begin
    frmExameLaudo.meDiagnostico.Lines.Add('');
    frmExameLaudo.meDiagnostico.Lines.Add('Vaginose bacteriana (bacilos ' +
    'supracitoplasmáticos sugestivos de "Gardnerella"/Mobiluncus).');
  end;

  //--- Monta frase 6 - Diagnóstico --------------------------------------------
  if cbCandida.Checked = true then
    vFraseDiag06 := '"Candida".';
  if cbCandidiase.Checked = true then
    vFraseDiag06 := vFraseDiag06 + ' Candidíase.';
  if cbConideos.Checked = true then
    vFraseDiag06 := vFraseDiag06 + ' Conídeos.';
  if vFraseDiag06 <> '' then
  begin
    frmExameLaudo.meDiagnostico.Lines.Add('');
    frmExameLaudo.meDiagnostico.Lines.Add(vFraseDiag06);
  end;

  //--- Monta frase 7 - Diagnóstico --------------------------------------------
  if cbTrichomonas.Checked = true then
  begin
    frmExameLaudo.meDiagnostico.Lines.Add('');
    frmExameLaudo.meDiagnostico.Lines.Add('"Trichomonas vaginalis".');
  end;

  //--- Monta frase 8 - Diagnóstico --------------------------------------------
  if cbEfeito.Checked = true then
  begin
    vFraseDiag08 := 'Efeito estrogênico diminuído';
    if cbSemelhante.Checked = true then
      vFraseDiag08 := vFraseDiag08 + '(semelhante à 2ª fase do ciclo)';
    vFraseDiag08 := vFraseDiag08 + '.';
    if vFraseDiag08 <> '.' then
    begin
      frmExameLaudo.meDiagnostico.Lines.Add('');
      frmExameLaudo.meDiagnostico.Lines.Add(vFraseDiag08);
    end;
  end;

  //--- Monta frase 9 - Diagnóstico --------------------------------------------
  vFraseDiag09 := 'Padrão de';
  if cbEutrofia.Checked = true then
    vFraseDiag09 := vFraseDiag09 + ' eutrofia';
  if cbHipotrofia.Checked = true then
    vFraseDiag09 := vFraseDiag09 + ' hipotrofia';
  if cbAtrofia.Checked = true then
    vFraseDiag09 := vFraseDiag09 + ' atrofia';
  vFraseDiag09 := vFraseDiag09 + '.';
  if vFraseDiag09 <> 'Padrão de.' then
  begin
    frmExameLaudo.meDiagnostico.Lines.Add('');
    frmExameLaudo.meDiagnostico.Lines.Add(vFraseDiag09);
  end;

  //--- Testa e grava alterações -----------------------------------------------
  if frmExameLaudo.meLaudo.text <> '' then
  begin
    dmExames.qyExamesLaudo.Post;
    if cbAbrir.Checked = true then
    begin
      Close;
      frmExameLaudo.meLaudo.Execute;
      frmExameLaudo.meDiagnostico.Execute;
    end
    else
      Close;
  end
  else
    MessageDlg('Você deve selecionar alguma opção para o preenchimento!', mtWarning, [mbok], 0);
end;

procedure TfrmPreencheCito.cbBacteriasClick(Sender: TObject);
begin
  if cbBacterias.Checked = true then
  begin
    cbEscassa.Checked := false;
    cbLactobacilos.Checked := false;
    cbSupracitoplasticos.Checked := false;
  end;
  VerificaChk(1);
end;

procedure TfrmPreencheCito.cbBlastoconideosClick(Sender: TObject);
begin
  if cbNotamSe.Checked = false then
    cbBlastoconideos.Checked := false;
end;

procedure TfrmPreencheCito.cbCelulasPistaClick(Sender: TObject);
begin
  if cbBacterias.Checked = false then
    cbCelulasPista.Checked := false;
end;

procedure TfrmPreencheCito.cbCom2Click(Sender: TObject);
begin
  cbSem2.Checked := false;
  if cbLactobacilos.Checked = false then
    cbCom2.Checked := false;
end;

procedure TfrmPreencheCito.cbDiscretaClick(Sender: TObject);
begin
  if cbLactobacilos.Checked = false then
    cbDiscreta.Checked := false;
end;

procedure TfrmPreencheCito.cbEfeitosClick(Sender: TObject);
begin
  if cbNaoExistem.Checked = false then
    cbEfeitos.Checked := false;
end;

procedure TfrmPreencheCito.cbEscassaClick(Sender: TObject);
begin
  if cbEscassa.Checked = true then
  begin
    cbLactobacilos.Checked := false;
    cbBacterias.Checked := false;
    cbSupracitoplasticos.Checked := false;
  end;
  VerificaChk(1);
end;

procedure TfrmPreencheCito.cbEscassasClick(Sender: TObject);
begin
  cbEsparsas.Checked := false;
  cbOcasionais.Checked := false;
  cbFrequentes.Checked := false;
  cbGrandQuant.Checked := false;
end;

procedure TfrmPreencheCito.cbEscassosClick(Sender: TObject);
begin
  cbRaros.Checked := false;
  cbEsparsos.Checked := false;
  cbPequeno.Checked := false;
end;

procedure TfrmPreencheCito.cbEsparsasClick(Sender: TObject);
begin
  cbOcasionais.Checked := false;
  cbEscassas.Checked := false;
  cbFrequentes.Checked := false;
  cbGrandQuant.Checked := false;
end;

procedure TfrmPreencheCito.cbEsparsosClick(Sender: TObject);
begin
  cbRaros.Checked := false;
  cbEscassos.Checked := false;
  cbPequeno.Checked := false;
end;

procedure TfrmPreencheCito.cbFrequentesClick(Sender: TObject);
begin
  cbEsparsas.Checked := false;
  cbEscassas.Checked := false;
  cbOcasionais.Checked := false;
  cbGrandQuant.Checked := false;
end;

procedure TfrmPreencheCito.cbGrandQuantClick(Sender: TObject);
begin
  cbEsparsas.Checked := false;
  cbEscassas.Checked := false;
  cbFrequentes.Checked := false;
  cbOcasionais.Checked := false;
end;

procedure TfrmPreencheCito.cbLactobacilosClick(Sender: TObject);
begin
  if cbLactobacilos.Checked = true then
  begin
    cbEscassa.Checked := false;
    cbBacterias.Checked := false;
    cbSupracitoplasticos.Checked := false;
  end;
  VerificaChk(1);
end;

procedure TfrmPreencheCito.cbNaoExistemClick(Sender: TObject);
begin
  if cbNaoExistem.Checked = true then
  begin
    cbNotamSe.Checked := false;
    cbProtozoarios.Checked := false;
  end;
  VerificaChk(2);
end;

procedure TfrmPreencheCito.cbNotamSeClick(Sender: TObject);
begin
  if cbNotamSe.Checked = true then
  begin
    cbNaoExistem.Checked := false;
    cbProtozoarios.Checked := false;
  end;
  VerificaChk(2);
end;

procedure TfrmPreencheCito.cbObsClick(Sender: TObject);
begin
  if cbObs.Checked = true then
    edObs.Enabled := true;
  if cbObs.Checked = false then
    edObs.Enabled := false;
end;

procedure TfrmPreencheCito.cbOcasionaisClick(Sender: TObject);
begin
  cbEsparsas.Checked := false;
  cbEscassas.Checked := false;
  cbFrequentes.Checked := false;
  cbGrandQuant.Checked := false;
end;

procedure TfrmPreencheCito.cbPequenoClick(Sender: TObject);
begin
  cbRaros.Checked := false;
  cbEsparsos.Checked := false;
  cbEscassos.Checked := false;
end;

procedure TfrmPreencheCito.cbProtozoariosClick(Sender: TObject);
begin
  if cbProtozoarios.Checked = true then
  begin
    cbNotamSe.Checked := false;
    cbNaoExistem.Checked := false;
  end;
  VerificaChk(2);
end;

procedure TfrmPreencheCito.cbPseudoHifasClick(Sender: TObject);
begin
  if cbNotamSe.Checked = false then
    cbPseudoHifas.Checked := false;
end;

procedure TfrmPreencheCito.cbRarosClick(Sender: TObject);
begin
  cbEsparsos.Checked := false;
  cbEscassos.Checked := false;
  cbPequeno.Checked := false;
end;

procedure TfrmPreencheCito.cbSem2Click(Sender: TObject);
begin
  cbCom2.Checked := false;
  if cbLactobacilos.Checked = false then
    cbSem2.Checked := false;
end;

procedure TfrmPreencheCito.cbSupracitoplasticosClick(Sender: TObject);
begin
  if cbSupracitoplasticos.Checked = true then
  begin
    cbEscassa.Checked := false;
    cbLactobacilos.Checked := false;
    cbBacterias.Checked := false;
  end;
  VerificaChk(1);
end;

procedure TfrmPreencheCito.FormActivate(Sender: TObject);
Var
vI: integer;
begin
  inherited;
  for vI := 0 to ComponentCount - 1 do
  begin
    if (Components[vI] is TCheckBox) then
      (Components[vI] as TCheckBox).Checked := false;
  end;
  cbClasse.ItemIndex := -1;
  edObs.Clear;
  edObs.Enabled := false;
  cbPadrao.ItemIndex := 0;
end;

end.
