unit uClassConsDivExames;

interface

Type
  TConsDivExames = class

  private

    FCodPaciente: String;
    FNomePaciente: String;
    FCodMedico: String;
    FCodTpExame: String;
    FCodOrigem: String;
    FCodConvenio: String;
    FOrganizar: String;
    FTipoDeBusca: Integer;
    FIDExame: String;
    FDataInicio: String;
    FRegistros: String;
    FOrdem: String;
    FDataFinal: String;

    procedure SetCodConvenio(const Value: String);
    procedure SetCodMedico(const Value: String);
    procedure SetCodOrigem(const Value: String);
    procedure SetCodPaciente(const Value: String);
    procedure SetCodTpExame(const Value: String);
    procedure SetNomePaciente(const Value: String);
    procedure SetDataFinal(const Value: String);
    procedure SetDataInicio(const Value: String);
    procedure SetIDExame(const Value: String);
    procedure SetOrdem(const Value: String);
    procedure SetOrganizar(const Value: String);
    procedure SetRegistros(const Value: String);
    procedure SetTipoDeBusca(const Value: Integer);

  public

  property CodOrigem: String read FCodOrigem write SetCodOrigem;
  property CodTpExame: String read FCodTpExame write SetCodTpExame;
  property CodConvenio: String read FCodConvenio write SetCodConvenio;
  property CodPaciente: String read FCodPaciente write SetCodPaciente;
  property NomePaciente: String read FNomePaciente write SetNomePaciente;
  property CodMedico: String read FCodMedico write SetCodMedico;
  property DataInicio: String read FDataInicio write SetDataInicio;
  property DataFinal: String read FDataFinal write SetDataFinal;
  property IDExame: String read FIDExame write SetIDExame;
  property TipoDeBusca: Integer read FTipoDeBusca write SetTipoDeBusca;
  property Organizar: String read FOrganizar write SetOrganizar;
  property Ordem: String read FOrdem write SetOrdem;
  property Registros: String read FRegistros write SetRegistros;

  end;

implementation

{ TConsDivExames }

procedure TConsDivExames.SetCodConvenio(const Value: String);
begin
  FCodConvenio := Value;
end;

procedure TConsDivExames.SetCodMedico(const Value: String);
begin
  FCodMedico := Value;
end;

procedure TConsDivExames.SetCodOrigem(const Value: String);
begin
  FCodOrigem := Value;
end;

procedure TConsDivExames.SetCodPaciente(const Value: String);
begin
  FCodPaciente := Value;
end;

procedure TConsDivExames.SetCodTpExame(const Value: String);
begin
  FCodTpExame := Value;
end;

procedure TConsDivExames.SetDataFinal(const Value: String);
begin
  FDataFinal := Value;
end;

procedure TConsDivExames.SetDataInicio(const Value: String);
begin
  FDataInicio := Value;
end;

procedure TConsDivExames.SetIDExame(const Value: String);
begin
  FIDExame := Value;
end;

procedure TConsDivExames.SetNomePaciente(const Value: String);
begin
  FNomePaciente := Value;
end;

procedure TConsDivExames.SetOrdem(const Value: String);
begin
  FOrdem := Value;
end;

procedure TConsDivExames.SetOrganizar(const Value: String);
begin
  FOrganizar := Value;
end;

procedure TConsDivExames.SetRegistros(const Value: String);
begin
  FRegistros := Value;
end;

procedure TConsDivExames.SetTipoDeBusca(const Value: Integer);
begin
  FTipoDeBusca := Value;
end;

end.
