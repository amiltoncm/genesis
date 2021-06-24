unit uFuncoesDB;

interface

uses SysUtils, Dialogs, ClipBrd;

procedure GetFielsTable(vfTableName: String);
function GetCodigo(vfCampo, vfTabela: String): Integer;
function GetCodigoComposto(vfCampo, vfTabela, vfCampoKey, vfValorKey: String): Integer;
function GetCodCidade(vfCidade, vfUF: String): integer;
function GetCodUF(vfSigla: String): String;
function VerificaCEP(vfCEP: String; vfUF: String): boolean;

implementation

uses dataTmpConexao, dataConsultas, uFuncoesFormatacao;

procedure GetFielsTable(vfTableName: String);
begin
  dmConsultas.qyCampos.Close;
  dmConsultas.qyCampos.SQL.Clear;
  dmConsultas.qyCampos.SQL.Add('SELECT * FROM information_schema.columns ');
  dmConsultas.qyCampos.SQL.Add('WHERE table_name = ');
  dmConsultas.qyCampos.SQL.Add(QuotedStr(vfTableName));
  dmConsultas.qyCampos.SQL.Add(' order by ordinal_position');
  dmConsultas.qyCampos.Open;
end;

function GetCodigo(vfCampo, vfTabela: String): Integer;
Var
vCodigo: Integer;
begin
  dmTmpConexao.QGeraCodigo.Close;
  dmTmpConexao.QGeraCodigo.Sql.Clear;
  dmTmpConexao.QGeraCodigo.Sql.Add('select max(');
  dmTmpConexao.QGeraCodigo.Sql.Add(vfCampo);
  dmTmpConexao.QGeraCodigo.Sql.Add(') from ');
  dmTmpConexao.QGeraCodigo.Sql.Add(vfTabela);
  dmTmpConexao.QGeraCodigo.Open;
  if dmTmpConexao.QGeraCodigo.Fields[0].Text <> '' then
     vCodigo := StrToInt(dmTmpConexao.QGeraCodigo.Fields[0].Text) + 1
  else
     vCodigo := 1;
  Result := vCodigo;
end;

function GetCodigoComposto(vfCampo, vfTabela, vfCampoKey, vfValorKey: String): Integer;
Var
vCodigo: Integer;
begin
  dmTmpConexao.QGeraCodigo.Close;
  dmTmpConexao.QGeraCodigo.Sql.Clear;
  dmTmpConexao.QGeraCodigo.Sql.Add('select max(');
  dmTmpConexao.QGeraCodigo.Sql.Add(vfCampo);
  dmTmpConexao.QGeraCodigo.Sql.Add(') from ');
  dmTmpConexao.QGeraCodigo.Sql.Add(vfTabela);
  dmTmpConexao.QGeraCodigo.SQL.Add(' where ' + vfCampoKey + ' = ' + QuotedStr(vfValorKey));
  dmTmpConexao.QGeraCodigo.Open;
  if dmTmpConexao.QGeraCodigo.Fields[0].Text <> '' then
     vCodigo := StrToInt(dmTmpConexao.QGeraCodigo.Fields[0].Text) + 1
  else
     vCodigo := 1;
  Result := vCodigo;
end;

function GetCodCidade(vfCidade, vfUF: String): integer;
begin
  dmTmpConexao.QTemp.Close;
  dmTmpConexao.QTemp.SQL.Clear;
  dmTmpConexao.QTemp.SQL.Add('select cid_codigo from cidades where cid_municipio = ');
  dmTmpConexao.QTemp.SQL.Add(QuotedStr(vfCidade));
  dmTmpConexao.QTemp.SQL.Add(' and uf_sigla = ');
  dmTmpConexao.QTemp.SQL.Add(QuotedStr(vfUF));
  dmTmpConexao.QTemp.Open;
  if dmTmpConexao.QTemp.Fields[0].IsNull then
  begin
    MessageDlg('Código da cidade não encontrado!', mtWarning, [mbok], 0);
    Result := (4202404);
  end
  else
    Result := (dmTmpConexao.QTemp.Fields[0].Value);
end;

function GetCodUF(vfSigla: String): String;
begin
  dmConsultas.QTemp.Close;
  dmConsultas.QTemp.SQL.Clear;
  dmConsultas.QTemp.SQL.Add('select uf_codigo from uf where uf_sigla = ');
  dmConsultas.QTemp.SQL.Add(QuotedStr(vfSigla));
  dmConsultas.QTemp.Open;
  Result := dmConsultas.QTemp.Fields[0].Text;
end;

function VerificaCEP(vfCEP: String; vfUF: String): boolean;
Var
vCEPInt: Integer;
vResult: boolean;
Begin
  Try
  vResult := true;
  //limpa mascara e converte em inteiro
  vCEPInt := StrToInt(LimpaReal(vfCEP));
  if vfUF = 'SC' then
  Begin
    if (vCEPInt >= 88000000) and (vCEPInt <= 99999000) then
      vResult := true
    else
      vResult := false;
  end
  else
    if vfUF = 'AC' then
    Begin
      if (vCEPInt >= 69900000) and (vCEPInt <= 69999000) then
        vResult := true
      else
        vResult := false;
    end
    else
      if vfUF = 'AL' then
      Begin
        if (vCEPInt >= 57000000) and (vCEPInt <= 57999000) then
          vResult := true
        else
          vResult := false;
      end
      else
        if vfUF = 'AM' then
        Begin
          if (vCEPInt >= 69400000) and (vCEPInt <= 69899000) then
            vResult := true
          else
            vResult := false;
        end
        else
          if vfUF = 'AP' then
          Begin
            if (vCEPInt >= 68900000) and (vCEPInt <= 68999000) then
              vResult := true
            else
              vResult := false;
          end
          else
            if vfUF = 'BA' then
            Begin
              if (vCEPInt >= 40000000) and (vCEPInt <= 48999000) then
                vResult := true
              else
                vResult := false;
            end
            else
              if vfUF = 'CE' then
              Begin
                if (vCEPInt >= 60000000) and (vCEPInt <= 63999000) then
                  vResult := true
                else
                  vResult := false;
              end
              else
                if vfUF = 'DF' then
                Begin
                  if (vCEPInt >= 70000000) and (vCEPInt <= 73999000) then
                    vResult := true
                  else
                    vResult := false;
                end
                else
                  if vfUF = 'ES' then
                  Begin
                    if (vCEPInt >= 29000000) and (vCEPInt <= 29999000) then
                      vResult := true
                    else
                      vResult := false;
                  end
                  else
                    if vfUF = 'GO' then
                    Begin
                      if (vCEPInt >= 74000000) and (vCEPInt <= 76999000) then
                        vResult := true
                      else
                        vResult := false;
                    end
                    else
                      if vfUF = 'MA' then
                      Begin
                        if (vCEPInt >= 65000000) and (vCEPInt <= 65999000) then
                          vResult := true
                        else
                          vResult := false;
                      end
                      else
                        if vfUF = 'MG' then
                        Begin
                          if (vCEPInt >= 30000000) and (vCEPInt <= 39999000) then
                            vResult := true
                          else
                            vResult := false;
                        end
                        else
                          if vfUF = 'MS' then
                          Begin
                            if (vCEPInt >= 79000000) and (vCEPInt <= 79999000) then
                              vResult := true
                            else
                              vResult := false;
                          end
                          else
                            if vfUF = 'MT' then
                            Begin
                              if (vCEPInt >= 78000000) and (vCEPInt <= 78899000) then
                                vResult := true
                              else
                                vResult := false;
                            end
                            else
                              if vfUF = 'PA' then
                              Begin
                                if (vCEPInt >= 66000000) and (vCEPInt <= 68899000) then
                                  vResult := true
                                else
                                  vResult := false;
                              end
                              else
                                if vfUF = 'PB' then
                                Begin
                                  if (vCEPInt >= 58000000) and (vCEPInt <= 58999000) then
                                    vResult := true
                                  else
                                    vResult := false;
                                end
                                else
                                  if vfUF = 'PE' then
                                  Begin
                                    if (vCEPInt >= 50000000) and (vCEPInt <= 56999000) then
                                      vResult := true
                                    else
                                      vResult := false;
                                  end
                                  else
                                    if vfUF = 'PI' then
                                    Begin
                                      if (vCEPInt >= 64000000) and (vCEPInt <= 64999000) then
                                        vResult := true
                                      else
                                        vResult := false;
                                    end
                                    else
                                      if vfUF = 'PR' then
                                      Begin
                                        if (vCEPInt >= 80000000) and (vCEPInt <= 87999000) then
                                          vResult := true
                                        else
                                          vResult := false;
                                      end
                                      else
                                        if vfUF = 'RJ' then
                                        Begin
                                          if (vCEPInt >= 20000000) and (vCEPInt <= 28999000) then
                                            vResult := true
                                          else
                                            vResult := false;
                                        end
                                        else
                                          if vfUF = 'RN' then
                                          Begin
                                            if (vCEPInt >= 59000000) and (vCEPInt <= 59999000) then
                                              vResult := true
                                            else
                                              vResult := false;
                                          end
                                          else
                                            if vfUF = 'RO' then
                                            Begin
                                              if (vCEPInt >= 78900000) and (vCEPInt <= 78999000) then
                                                vResult := true
                                              else
                                                vResult := false;
                                            end
                                            else
                                              if vfUF = 'RR' then
                                              Begin
                                                if (vCEPInt >= 69300000) and (vCEPInt <= 69399000) then
                                                  vResult := true
                                                else
                                                  vResult := false;
                                              end
                                              else
                                                if vfUF = 'RS' then
                                                Begin
                                                  if (vCEPInt >= 90000000) and (vCEPInt <= 99999000) then
                                                    vResult := true
                                                  else
                                                    vResult := false;
                                                end
                                                else
                                                  if vfUF = 'SE' then
                                                  Begin
                                                    if (vCEPInt >= 49000000) and (vCEPInt <= 49999000) then
                                                      vResult := true
                                                    else
                                                      vResult := false;
                                                  end
                                                  else
                                                    if vfUF = 'SP' then
                                                    Begin
                                                      if (vCEPInt >= 01001000) and (vCEPInt <= 19999000) then
                                                        vResult := true
                                                      else
                                                        vResult := false;
                                                      end
                                                      else
                                                        if vfUF = 'TO' then
                                                        Begin
                                                          if (vCEPInt >= 77000000) and (vCEPInt <= 77999000) then
                                                            vResult := true
                                                          else
                                                            vResult := false;
                                                        end;
  Result := vResult;
  Except
    Result := true;
  end;
end;

end.
