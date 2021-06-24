unit uClassExamesfrases;

interface

Type TExamesfrases = class

  private
    FIdfrase: Integer;
    FFrase: String;
    FExame: String;
    procedure SetExame(const Value: String);
    procedure SetFrase(const Value: String);
    procedure SetIdfrase(const Value: Integer);

  public

    property Exame: String read FExame write SetExame;
    property Idfrase: Integer read FIdfrase write SetIdfrase;
    property Frase: String read FFrase write SetFrase;

end;

implementation

{ TExamesfrases }

procedure TExamesfrases.SetExame(const Value: String);
begin
  FExame := Value;
end;

procedure TExamesfrases.SetFrase(const Value: String);
begin
  FFrase := Value;
end;

procedure TExamesfrases.SetIdfrase(const Value: Integer);
begin
  FIdfrase := Value;
end;

end.
