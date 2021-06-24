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
  //limpa verificação anterior
  LimparPendAnt(vfIDExame);
  //atualiza qyTissPend
  FiltrarTissPend('exa_id', '=', vfIDExame, '0', '50');
  //filtra exame
  FiltrarExames('e.exa_id', '=', vfIDExame, '0', '1');
  if Not(dmExames.qyExamesexa_id.IsNull) then
  begin
    //Verifica necessidade de verificar pendências TISS
    //filtra convênio e verifica se exige o TISS
    FiltrarConvenios('c.cov_codigo', '=', dmExames.qyExamescov_codigo.Text, '0', '1');
    if dmCadastros.qyConvenioscov_veriftiss.Text = 'S' then
    begin
      frmPendencias.rePendencias.Clear;
      frmPendencias.rePendencias.Lines.Add('CONVÊNIO COM TISS (DADOS OBRIGATÓRIOS).');
      frmPendencias.rePendencias.Lines.Add('--------------------------------------------------------------------------');
      frmPendencias.rePendencias.Lines.Add('');
      //dados obrigatórios do convênio
      if ((dmCadastros.qyConvenioscov_regans.IsNull) or (dmCadastros.qyConvenioscov_regans.text = '0')) then
      begin
        vCont := vCont + 1;
        frmPendencias.rePendencias.Lines.Add('Pendência n.º ' + IntToStr(vCont) + ' - (Convênio)');
        frmPendencias.rePendencias.Lines.Add('O número do registro do Convênio na ANS  não foi preenchida!');
        frmPendencias.rePendencias.Lines.Add('--------------------------------------------------------------------------');
        vPendencias := true;
        GravaPendencias(vfIDExame, '(Convênio) - O número do registro do Convênio na ANS  não foi preenchida!');
      end;
      //Código do prestador na operadora
      if dmCadastros.qyConvenioscov_codoperadora.IsNull then
      begin
        vCont := vCont + 1;
        frmPendencias.rePendencias.Lines.Add('Pendência n.º ' + IntToStr(vCont) + ' - (Convênio)');
        frmPendencias.rePendencias.Lines.Add('O código de prestador na operadora não foi preenchida!');
        frmPendencias.rePendencias.Lines.Add('--------------------------------------------------------------------------');
        vPendencias := true;
        GravaPendencias(vfIDExame, '(Convênio) - O código de prestador na operadora não foi preenchida!');
      end;
      //Verifica pendências do Paciente / Requisição
      if dmExames.qyExamesexa_matricula.Text = '0' then
      begin
        vCont := vCont + 1;
        frmPendencias.rePendencias.Lines.Add('Pendência n.º ' + IntToStr(vCont) + ' - (Requisição)');
        frmPendencias.rePendencias.Lines.Add('O número da matrícula não foi preenchida!');
        frmPendencias.rePendencias.Lines.Add('--------------------------------------------------------------------------');
        vPendencias := true;
        GravaPendencias(vfIDExame, '(Requisição) - O número da matrícula não foi preenchida!');
      end;
      if dmExames.qyExamesexa_guia.Text = '0' then
      begin
        vCont := vCont + 1;
        frmPendencias.rePendencias.Lines.Add('Pendência n.º ' + IntToStr(vCont) + ' - (Requisição)');
        frmPendencias.rePendencias.Lines.Add('O número da guia não foi preenchida!');
        frmPendencias.rePendencias.Lines.Add('--------------------------------------------------------------------------');
        vPendencias := true;
        GravaPendencias(vfIDExame, '(Requisição) - O número da guia não foi preenchida!');
      end;
      //Verifica pendência dos dados dos médicos
      //CPF
      FiltrarMedicos('m.med_codigo', '=', dmExames.qyExamesmed_codigo.Text, '0', '1');
      if dmCadastros.qyMedicosmed_cpf.IsNull then
      Begin
        vCont := vCont + 1;
        frmPendencias.rePendencias.Lines.Add('Pendência n.º ' + IntToStr(vCont) + ' - (Médico)');
        frmPendencias.rePendencias.Lines.Add('CPF do médico responsável está em branco em seu cadastro!');
        frmPendencias.rePendencias.Lines.Add('--------------------------------------------------------------------------');
        vPendencias := true;
        GravaPendencias(vfIDExame, '(Médico) - CPF do médico responsável está em branco em seu cadastro!');
      end
      else
        if dmCadastros.qyMedicosmed_cpf.Text = '000.000.000-00' then
        Begin
          vCont := vCont + 1;
          frmPendencias.rePendencias.Lines.Add('Pendência n.º ' + IntToStr(vCont) + ' - (Médico)');
          frmPendencias.rePendencias.Lines.Add('CPF do médico responsável está zerado em seu cadastro!');
          frmPendencias.rePendencias.Lines.Add('--------------------------------------------------------------------------');
          vPendencias := true;
          GravaPendencias(vfIDExame, '(Médico) - CPF do médico responsável está zerado em seu cadastro!');
        end
        else
          if Length(dmCadastros.qyMedicosmed_cpf.Text) <> 14 then
          Begin
            vCont := vCont + 1;
            frmPendencias.rePendencias.Lines.Add('Pendência n.º ' + IntToStr(vCont) + ' - (Médico)');
            frmPendencias.rePendencias.Lines.Add('CPF do médico responsável está irregular em seu cadastro!');
            frmPendencias.rePendencias.Lines.Add('--------------------------------------------------------------------------');
            vPendencias := true;
            GravaPendencias(vfIDExame, '(Médico) - CPF do médico responsável está irregular em seu cadastro!');
          end
          else
            if CPF(dmCadastros.qyMedicosmed_cpf.Text) = false then
            Begin
              vCont := vCont + 1;
              frmPendencias.rePendencias.Lines.Add('Pendência n.º ' + IntToStr(vCont) + ' - (Médico)');
              frmPendencias.rePendencias.Lines.Add('CPF do médico responsável está inválido em seu cadastro!');
              frmPendencias.rePendencias.Lines.Add('--------------------------------------------------------------------------');
              vPendencias := true;
              GravaPendencias(vfIDExame, '(Médico) - CPF do médico responsável está inválido em seu cadastro!');
            end;
      //Verifica dados do responsável
      FiltrarResponsaveis('res_codigo', '=', dmExames.qyExamesres_codigo.Text, '0', '1');
      if dmCadastros.qyResponsaveisres_cpf.IsNull then
      Begin
        vCont := vCont + 1;
        frmPendencias.rePendencias.Lines.Add('Pendência n.º ' + IntToStr(vCont) + ' - (Médico)');
        frmPendencias.rePendencias.Lines.Add('CPF do responsável do laboratório está em branco em seu cadastro!');
        frmPendencias.rePendencias.Lines.Add('--------------------------------------------------------------------------');
        vPendencias := true;
        GravaPendencias(vfIDExame, '(Responsável) - CPF do responsável do laboratório  está em branco em seu cadastro!');
      end
      else
        if dmCadastros.qyResponsaveisres_cpf.Text = '000.000.000-00' then
        Begin
          vCont := vCont + 1;
          frmPendencias.rePendencias.Lines.Add('Pendência n.º ' + IntToStr(vCont) + ' - (Médico)');
          frmPendencias.rePendencias.Lines.Add('CPF do responsável do laboratório está zerado em seu cadastro!');
          frmPendencias.rePendencias.Lines.Add('--------------------------------------------------------------------------');
          vPendencias := true;
          GravaPendencias(vfIDExame, '(Responsável) - CPF do responsável do laboratório está zerado em seu cadastro!');
        end
        else
          if Length(dmCadastros.qyResponsaveisres_cpf.Text) <> 14 then
          Begin
            vCont := vCont + 1;
            frmPendencias.rePendencias.Lines.Add('Pendência n.º ' + IntToStr(vCont) + ' - (Médico)');
            frmPendencias.rePendencias.Lines.Add('CPF do responsável do laboratório está irregular em seu cadastro!');
            frmPendencias.rePendencias.Lines.Add('--------------------------------------------------------------------------');
            vPendencias := true;
            GravaPendencias(vfIDExame, '(Responsável) - CPF do responsável do laboratório está irregular em seu cadastro!');
          end
          else
            if CPF(dmCadastros.qyResponsaveisres_cpf.Text) = false then
            Begin
              vCont := vCont + 1;
              frmPendencias.rePendencias.Lines.Add('Pendência n.º ' + IntToStr(vCont) + ' - (Médico)');
              frmPendencias.rePendencias.Lines.Add('CPF do responsável do laboratório está inválido em seu cadastro!');
              frmPendencias.rePendencias.Lines.Add('--------------------------------------------------------------------------');
              vPendencias := true;
              GravaPendencias(vfIDExame, '(Responsável) - CPF do responsável do laboratório está em branco inválido cadastro!');
            end;
    end;
  end;
  Result := vPendencias;
end;

procedure GravaPendencias(vfIDExame: String; vfDescricao: String);
begin
  //Gera histórico
  dmFinanceiro.qyTissPend.Insert;
  dmFinanceiro.qyTissPendtpd_id.Value := GetCodigo('tpd_id', 'tisspend');
  dmFinanceiro.qyTissPendexa_id.Text := vfIDExame;
  dmFinanceiro.qyTissPendtpd_descricao.Text := vfDescricao;
  dmFinanceiro.qyTissPend.Post;
end;

procedure FiltraVlrProced(vfConvenio: String; vfData: String);
begin
  //filtra procedimentos de exames não gerados cobrança
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
    //filtra tabela convproc pegando Código do Convênio e TUSS e busca valor atual do convênio
    FiltrarConvProc('c.cov_id', '=', vfConvenio, 'c.prc_tuss', '0');
    if not(dmFinanceiro.qyConvProcprc_tuss.IsNull) then
      vNovoValor := dmFinanceiro.qyConvProccpr_vlrtotal.Value
    else
    begin
      //filtra tabela de preço de procedimentos
      FiltrarProcedimentos('prc_tuss', '=', dmExames.qyExamesProcedprc_tuss.Text, '0', '0');
      if not(dmCadastros.qyProcedimentosprc_tuss.IsNull) then
        vNovoValor := dmCadastros.qyProcedimentosprc_tuss.Value
      else
        vNovoValor := 0;
    end;
    //Testa valor e se for diferente atualiza
    if dmConsultas.qyAtualizaProcedexp_unitario.Value <> vNovoValor then
    begin
      //atualiza valor unitário do procedimento
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
  //Testa se foi cobrança deste exame retorna número do histórico (his_id)
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
