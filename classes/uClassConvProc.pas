unit uClassConvProc;

interface

uses Classes;

Type

  TConvProc = class

  private

    FCovId: Integer;
    FCprvlroper: real;
    FCprvlrfilme: real;
    FCprvlrhora: real;
    FCprvlrtotal: real;
    FPrctuss: Integer;
    FPrcDescricao: String;
    procedure SetCovId(const Value: Integer);
    procedure SetCprvlrfilme(const Value: real);
    procedure SetCprvlrhora(const Value: real);
    procedure SetCprvlroper(const Value: real);
    procedure SetCprvlrtotal(const Value: real);
    procedure SetPrctuss(const Value: Integer);
    procedure SetPrcDescricao(const Value: String);

  public

  property Cov_id: Integer read FCovId write SetCovId;
  property Prc_tuss: Integer read FPrctuss write SetPrctuss;
  property Prc_descricao: String read FPrcDescricao write SetPrcDescricao;
  property Cpr_vlrhora: real read FCprvlrhora write SetCprvlrhora;
  property Cpr_vlroper: real read FCprvlroper write SetCprvlroper;
  property Cpr_vlrfilme: real read FCprvlrfilme write SetCprvlrfilme;
  property Cpr_vlrtotal: real read FCprvlrtotal write SetCprvlrtotal;

  end;


implementation

{ TConvProc }

procedure TConvProc.SetCovId(const Value: Integer);
begin
  FCovId := Value;
end;

procedure TConvProc.SetCprvlrfilme(const Value: real);
begin
  FCprvlrfilme := Value;
end;

procedure TConvProc.SetCprvlrhora(const Value: real);
begin
  FCprvlrhora := Value;
end;

procedure TConvProc.SetCprvlroper(const Value: real);
begin
  FCprvlroper := Value;
end;

procedure TConvProc.SetCprvlrtotal(const Value: real);
begin
  FCprvlrtotal := Value;
end;

procedure TConvProc.SetPrcDescricao(const Value: String);
begin
  FPrcDescricao := Value;
end;

procedure TConvProc.SetPrctuss(const Value: Integer);
begin
  FPrctuss := Value;
end;

end.
