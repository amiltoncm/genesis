unit UFuncoesTISS;

interface

uses
  Windows, Messages, SysUtils, Classes, Dialogs, StdCtrls, Graphics, Controls;

function VerificaDadosTISS(vfIDExame: String): Boolean;
procedure GravaPendencias(vfIDExame: String; vfDescricao: String);
procedure FiltraVlrProced(vfConvenio: String; vfData: String);
procedure AtualizaVlrProced(vfConvenio: String);
function TestaExameCob(vfIDExame: String): integer;
function TestaExameTiss(vfIDExame: String): boolean;
function TestaValorProced(vfIDExame: String): boolean;

implementation

uses dataConsultas, dataExames, dataFinanceiro, uFuncoesDB, uPendencias,
  uDaoTissPend, uDaoExames, dataCadastros, uDaoConvenios, uDaoMedicos,
  uDaoExamesProced, uDaoConvProc, uDaoProcedimentos, uDaoExamesCob,
  uDaoResponsaveis, uFuncoesValidacao;

function VerificaDadosTISS(vfIDExame: String): Boolean;
Var
vPendencias: boolean;
vCont: integer;
begin
  vCont := 0;
  vPendencias := false;
  //limpa verifica��o anterior
  LimparPendAnt(vfIDExame);
  //atualiza qyTissPend
  FiltrarTissPend('exa_id', '=', vfIDExame, '0', '50');
  //filtra exame
  FiltrarExames('e.exa_id', '=', vfIDExame, '0', '1');
  if Not(dmExames.qyExamesexa_id.IsNull) then
  begin
    //Verifica necessidade de verificar pend�ncias TISS
    //filtra conv�nio e verifica se exige o TISS
    FiltrarConvenios('c.cov_codigo', '=', dmExames.qyExamescov_codigo.Text, '0', '1');
    if dmCadastros.qyConvenioscov_veriftiss.Text = 'S' then
    begin
      frmPendencias.rePendencias.Clear;
      frmPendencias.rePendencias.Lines.Add('CONV�NIO COM TISS (DADOS OBRIGAT�RIOS).');
      frmPendencias.rePendencias.Lines.Add('--------------------------------------------------------------------------');
      frmPendencias.rePendencias.Lines.Add('');
      //dados obrigat�rios do conv�nio
      if ((dmCadastros.qyConvenioscov_regans.IsNull) or (dmCadastros.qyConvenioscov_regans.text = '0')) then
      begin
        vCont := vCont + 1;
        frmPendencias.rePendencias.Lines.Add('Pend�ncia n.� ' + IntToStr(vCont) + ' - (Conv�nio)');
        frmPendencias.rePendencias.Lines.Add('O n�mero do registro do Conv�nio na ANS  n�o foi preenchida!');
        frmPendencias.rePendencias.Lines.Add('--------------------------------------------------------------------------');
        vPendencias := true;
        GravaPendencias(vfIDExame, '(Conv�nio) - O n�mero do registro do Conv�nio na ANS  n�o foi preenchida!');
      end;
      //C�digo do prestador na operadora
      if dmCadastros.qyConvenioscov_codoperadora.IsNull then
      begin
        vCont := vCont + 1;
        frmPendencias.rePendencias.Lines.Add('Pend�ncia n.� ' + IntToStr(vCont) + ' - (Conv�nio)');
        frmPendencias.rePendencias.Lines.Add('O c�digo de prestador na operadora n�o foi preenchida!');
        frmPendencias.rePendencias.Lines.Add('--------------------------------------------------------------------------');
        vPendencias := true;
        GravaPendencias(vfIDExame, '(Conv�nio) - O c�digo de prestador na operadora n�o foi preenchida!');
      end;
      //Verifica pend�ncias do Paciente / Requisi��o
      if dmExames.qyExamesexa_matricula.Text = '0' then
      begin
        vCont := vCont + 1;
        frmPendencias.rePendencias.Lines.Add('Pend�ncia n.� ' + IntToStr(vCont) + ' - (Requisi��o)');
        frmPendencias.rePendencias.Lines.Add('O n�mero da matr�cula n�o foi preenchida!');
        frmPendencias.rePendencias.Lines.Add('--------------------------------------------------------------------------');
        vPendencias := true;
        GravaPendencias(vfIDExame, '(Requisi��o) - O n�mero da matr�cula n�o foi preenchida!');
      end;
      if dmExames.qyExamesexa_guia.Text = '0' then
      begin
        vCont := vCont + 1;
        frmPendencias.rePendencias.Lines.Add('Pend�ncia n.� ' + IntToStr(vCont) + ' - (Requisi��o)');
        frmPendencias.rePendencias.Lines.Add('O n�mero da guia n�o foi preenchida!');
        frmPendencias.rePendencias.Lines.Add('--------------------------------------------------------------------------');
        vPendencias := true;
        GravaPendencias(vfIDExame, '(Requisi��o) - O n�mero da guia n�o foi preenchida!');
      end;
      //Verifica pend�ncia dos dados dos m�dicos
      //CPF
      FiltrarMedicos('m.med_codigo', '=', dmExames.qyExamesmed_codigo.Text, '0', '1');
      if dmCadastros.qyMedicosmed_cpf.IsNull then
      Begin
        vCont := vCont + 1;
        frmPendencias.rePendencias.Lines.Add('Pend�ncia n.� ' + IntToStr(vCont) + ' - (M�dico)');
        frmPendencias.rePendencias.Lines.Add('CPF do m�dico respons�vel est� em branco em seu cadastro!');
        frmPendencias.rePendencias.Lines.Add('--------------------------------------------------------------------------');
        vPendencias := true;
        GravaPendencias(vfIDExame, '(M�dico) - CPF do m�dico respons�vel est� em branco em seu cadastro!');
      end
      else
        if dmCadastros.qyMedicosmed_cpf.Text = '000.000.000-00' then
        Begin
          vCont := vCont + 1;
          frmPendencias.rePendencias.Lines.Add('Pend�ncia n.� ' + IntToStr(vCont) + ' - (M�dico)');
          frmPendencias.rePendencias.Lines.Add('CPF do m�dico respons�vel est� zerado em seu cadastro!');
          frmPendencias.rePendencias.Lines.Add('--------------------------------------------------------------------------');
          vPendencias := true;
          GravaPendencias(vfIDExame, '(M�dico) - CPF do m�dico respons�vel est� zerado em seu cadastro!');
        end
        else
          if Length(dmCadastros.qyMedicosmed_cpf.Text) <> 14 then
          Begin
            vCont := vCont + 1;
            frmPendencias.rePendencias.Lines.Add('Pend�ncia n.� ' + IntToStr(vCont) + ' - (M�dico)');
            frmPendencias.rePendencias.Lines.Add('CPF do m�dico respons�vel est� irregular em seu cadastro!');
            frmPendencias.rePendencias.Lines.Add('--------------------------------------------------------------------------');
            vPendencias := true;
            GravaPendencias(vfIDExame, '(M�dico) - CPF do m�dico respons�vel est� irregular em seu cadastro!');
          end
          else
            if CPF(dmCadastros.qyMedicosmed_cpf.Text) = false then
            Begin
              vCont := vCont + 1;
              frmPendencias.rePendencias.Lines.Add('Pend�ncia n.� ' + IntToStr(vCont) + ' - (M�dico)');
              frmPendencias.rePendencias.Lines.Add('CPF do m�dico respons�vel est� inv�lido em seu cadastro!');
              frmPendencias.rePendencias.Lines.Add('--------------------------------------------------------------------------');
              vPendencias := true;
              GravaPendencias(vfIDExame, '(M�dico) - CPF do m�dico respons�vel est� inv�lido em seu cadastro!');
            end;
      //Verifica dados do respons�vel
      FiltrarResponsaveis('res_codigo', '=', dmExames.qyExamesres_codigo.Text, '0', '1');
      if dmCadastros.qyResponsaveisres_cpf.IsNull then
      Begin
        vCont := vCont + 1;
        frmPendencias.rePendencias.Lines.Add('Pend�ncia n.� ' + IntToStr(vCont) + ' - (M�dico)');
        frmPendencias.rePendencias.Lines.Add('CPF do respons�vel do laborat�rio est� em branco em seu cadastro!');
        frmPendencias.rePendencias.Lines.Add('--------------------------------------------------------------------------');
        vPendencias := true;
        GravaPendencias(vfIDExame, '(Respons�vel) - CPF do respons�vel do laborat�rio  est� em branco em seu cadastro!');
      end
      else
        if dmCadastros.qyResponsaveisres_cpf.Text = '000.000.000-00' then
        Begin
          vCont := vCont + 1;
          frmPendencias.rePendencias.Lines.Add('Pend�ncia n.� ' + IntToStr(vCont) + ' - (M�dico)');
          frmPendencias.rePendencias.Lines.Add('CPF do respons�vel do laborat�rio est� zerado em seu cadastro!');
          frmPendencias.rePendencias.Lines.Add('--------------------------------------------------------------------------');
          vPendencias := true;
          GravaPendencias(vfIDExame, '(Respons�vel) - CPF do respons�vel do laborat�rio est� zerado em seu cadastro!');
        end
        else
          if Length(dmCadastros.qyResponsaveisres_cpf.Text) <> 14 then
          Begin
            vCont := vCont + 1;
            frmPendencias.rePendencias.Lines.Add('Pend�ncia n.� ' + IntToStr(vCont) + ' - (M�dico)');
            frmPendencias.rePendencias.Lines.Add('CPF do respons�vel do laborat�rio est� irregular em seu cadastro!');
            frmPendencias.rePendencias.Lines.Add('--------------------------------------------------------------------------');
            vPendencias := true;
            GravaPendencias(vfIDExame, '(Respons�vel) - CPF do respons�vel do laborat�rio est� irregular em seu cadastro!');
          end
          else
            if CPF(dmCadastros.qyResponsaveisres_cpf.Text) = false then
            Begin
              vCont := vCont + 1;
              frmPendencias.rePendencias.Lines.Add('Pend�ncia n.� ' + IntToStr(vCont) + ' - (M�dico)');
              frmPendencias.rePendencias.Lines.Add('CPF do respons�vel do laborat�rio est� inv�lido em seu cadastro!');
              frmPendencias.rePendencias.Lines.Add('--------------------------------------------------------------------------');
              vPendencias := true;
              GravaPendencias(vfIDExame, '(Respons�vel) - CPF do respons�vel do laborat�rio est� em branco inv�lido cadastro!');
            end;
    end;
  end;
  Result := vPendencias;
end;

procedure GravaPendencias(vfIDExame: String; vfDescricao: String);
begin
  //Gera hist�rico
  dmFinanceiro.qyTissPend.Insert;
  dmFinanceiro.qyTissPendtpd_id.Value := GetCodigo('tpd_id', 'tisspend');
  dmFinanceiro.qyTissPendexa_id.Text := vfIDExame;
  dmFinanceiro.qyTissPendtpd_descricao.Text := vfDescricao;
  dmFinanceiro.qyTissPend.Post;
end;

procedure FiltraVlrProced(vfConvenio: String; vfData: String);
begin
  //filtra procedimentos de exames n�o gerados cobran�a
  dmConsultas.qyAtualizaProced.Close;
  dmConsultas.qyAtualizaProced.SQL.Clear;
  dmConsultas.qyAtualizaProced.SQL.Add('select E.exa_data, E.cov_codigo, P.exa_id, ');
  dmConsultas.qyAtualizaProced.SQL.Add('P.prc_tuss, P.exp_id, P.exp_quant, P.exp_unitario, ');
  dmConsultas.qyAtualizaProced.SQL.Add('P.exp_total, C.eco_status, C.eco_valor ');
  dmConsultas.qyAtualizaProced.SQL.Add('from examesproced P, exames E, examescob C ');
  dmConsultas.qyAtualizaProced.SQL.Add('where P.exa_id = E.exa_id ');
  dmConsultas.qyAtualizaProced.SQL.Add('and E.cov_codigo = ');
  dmConsultas.qyAtualizaProced.SQL.Add(QuotedStr(vfConvenio));
  dmConsultas.qyAtualizaProced.SQL.Add('and P.exa_id = C.exa_id ');
  dmConsultas.qyAtualizaProced.SQL.Add('and C.eco_status = false ');
  dmConsultas.qyAtualizaProced.SQL.Add('and E.exa_data >= ');
  dmConsultas.qyAtualizaProced.SQL.Add(QuotedStr(vfData));
  dmConsultas.qyAtualizaProced.SQL.Add('order by E.exa_id');
  dmConsultas.qyAtualizaProced.Open;
end;

procedure AtualizaVlrProced(vfConvenio: String);
Var
vNovoValor: real;
vNovaSoma: real;
begin
  vNovoValor := 0;
  vNovaSoma := 0;
  //atualiza valores
  dmConsultas.qyAtualizaProced.Last;
  repeat
  begin
    //filtra tabela examesproced
    FiltrarExamesProced('e.exp_id', '=', dmConsultas.qyAtualizaProcedexp_id.Text, '0', '0');
    //filtra tabela convproc pegando C�digo do Conv�nio e TUSS e busca valor atual do conv�nio
    FiltrarConvProc('c.cov_id', '=', vfConvenio, 'c.prc_tuss', '0');
    if not(dmFinanceiro.qyConvProcprc_tuss.IsNull) then
      vNovoValor := dmFinanceiro.qyConvProccpr_vlrtotal.Value
    else
    begin
      //filtra tabela de pre�o de procedimentos
      FiltrarProcedimentos('prc_tuss', '=', dmExames.qyExamesProcedprc_tuss.Text, '0', '0');
      if not(dmCadastros.qyProcedimentosprc_tuss.IsNull) then
        vNovoValor := dmCadastros.qyProcedimentosprc_tuss.Value
      else
        vNovoValor := 0;
    end;
    //Testa valor e se for diferente atualiza
    if dmConsultas.qyAtualizaProcedexp_unitario.Value <> vNovoValor then
    begin
      //atualiza valor unit�rio do procedimento
      dmExames.qyExamesProced.Edit;
      dmExames.qyExamesProcedexp_unitario.Value := vNovoValor;
      dmExames.qyExamesProcedexp_total.Value := dmExames.qyExamesProcedexp_quant.Value * vNovoValor;
      dmExames.qyExamesProced.Post;
      //atualiza valor total dos procedimentos do exame
      dmConsultas.QTemp.Close;
      dmConsultas.QTemp.SQL.Clear;
      dmConsultas.QTemp.SQL.Add('select sum(eco_valor) from examescob where exa_id = ');
      dmConsultas.QTemp.SQL.Add(QuotedStr(dmConsultas.qyAtualizaProcedexa_id.Text));
      dmConsultas.QTemp.Open;
      if dmConsultas.QTemp.Fields[0].Value <> 0 then
        vNovaSoma := dmConsultas.QTemp.Fields[0].Value
      else
        vNovaSoma := 0;
      FiltrarExamesCob('exa_id', '=', dmConsultas.qyAtualizaProcedexa_id.Text, '0', '0');
      if not(dmFinanceiro.qyExamesCobexa_id.IsNull) then
      begin
        dmFinanceiro.qyExamesCob.Edit;
        dmFinanceiro.qyExamesCobeco_valor.Value := vNovaSoma;
        dmFinanceiro.qyExamesCob.Post;
      end;
    end;
    dmConsultas.qyAtualizaProced.Prior;
  end;
  until dmConsultas.qyAtualizaProced.BOF = true;
  dmConsultas.qyAtualizaProced.Refresh;
  MessageDlg('Procedimentos atualizados com sucesso!', mtWarning, [mbok], 0);
end;

function TestaExameCob(vfIDExame: String): integer;
begin
  //Testa se foi cobran�a deste exame retorna n�mero do hist�rico (his_id)
  dmConsultas.QTemp.Close;
  dmConsultas.QTemp.SQL.Clear;
  dmConsultas.QTemp.SQL.Add('select eco_status, exa_id, his_id from examescob ');
  dmConsultas.QTemp.SQL.Add('where exa_id = ');
  dmConsultas.QTemp.SQL.Add(QuotedStr(vfIDExame));
  dmConsultas.QTemp.Open;
  if not(dmConsultas.QTemp.Fields[0].IsNull) then
    Result := dmConsultas.QTemp.Fields[2].Value
  else
    Result := 0;
end;

function TestaExameTiss(vfIDExame: String): boolean;
Var
vIDHistRec: String;
begin
  //Testa se foi gerado o TISS deste exame
  vIDHistRec := IntToStr(TestaExameCob(vfIDExame));
  if vIDHistRec <> '0' then
  begin
    dmConsultas.QTemp.Close;
    dmConsultas.QTemp.SQL.Clear;
    dmConsultas.QTemp.SQL.Add('select rti_gerado from rectiss ');
    dmConsultas.QTemp.SQL.Add('where rec_codigo = ');
    dmConsultas.QTemp.SQL.Add(vIDHistRec);
    dmConsultas.QTemp.Open;
    if not(dmConsultas.QTemp.Fields[0].IsNull) then
    begin
      if dmConsultas.QTemp.Fields[0].Value = false then
        Result := true
      else
        Result := false;
    end
    else
      Result := false;
  end
  else
  begin
    Result := false;
  end;
end;

function TestaValorProced(vfIDExame: String): boolean;
Var
vResult: boolean;
begin
  vResult := false;
  FiltrarExamesCob('exa_id', '=', vfIDExame, '0', '0');
  if dmFinanceiro.qyExamesCobeco_valor.Value > 0 then
    vResult := true;
  Result := vResult;
end;

end.
