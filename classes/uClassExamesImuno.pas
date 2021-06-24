unit uClassExamesImuno;

interface

uses classes;

Type

  TExamesImuno = class

  private

    FEimID: integer;
    FExaID: String;
    FEimExame: String;
    procedure SetEimID(const Value: integer);
    procedure SetExaID(const Value: String);
    procedure SetEimExame(const Value: String);

  public

  property Eim_id: integer read FEimID write SetEimID;
  property Exa_id: String read FExaID write SetExaID;
  property Eim_Exame: String read FEimExame write SetEimExame;

  end;

implementation

{ TExamesImuno }

procedure TExamesImuno.SetEimExame(const Value: String);
begin
  FEimExame := Value;
end;

procedure TExamesImuno.SetEimID(const Value: integer);
begin
  FEimID := Value;
end;

procedure TExamesImuno.SetExaID(const Value: String);
begin
  FExaID := Value;
end;

end.
