unit uClassExamescoleta;

interface

Type TExamescoleta = class

  private
    FExame: String;
    FData: String;
    FNomeMae: String;
    procedure SetData(const Value: String);
    procedure SetExame(const Value: String);
    procedure SetNomeMae(const Value: String);

  public

    property Exame: String read FExame write SetExame;
    property Data: String read FData write SetData;
    property NomeMae: String read FNomeMae write SetNomeMae;

end;

implementation

{ TExamescoleta }

procedure TExamescoleta.SetData(const Value: String);
begin
  FData := Value;
end;

procedure TExamescoleta.SetExame(const Value: String);
begin
  FExame := Value;
end;

procedure TExamescoleta.SetNomeMae(const Value: String);
begin
  FNomeMae := Value;
end;

end.
