unit uClassExamesProced;

interface

uses Classes;

Type

  TExamesProced = class

    private

      FExp_id: integer;
      FExa_id: String;
      FPrc_tuss: integer;
      FPrc_descricao: String;
      FExp_quant: integer;
      FExp_unitario: real;
      FExp_total: real;

      procedure SetExp_id(const Value: integer);
      procedure SetExa_id(const Value: String);
      procedure SetPrc_tuss(const Value: integer);
      procedure SetPrc_descricao(const Value: String);
      procedure SetExp_quant(const Value: integer);
      procedure SetExp_unitario(const Value: real);
      procedure SetExp_total(const Value: real);

    public

      property Exp_id: integer read FExp_id write SetExp_id;
      property Exa_id: String read FExa_id write SetExa_id;
      property Prc_tuss: integer read FPrc_tuss write SetPrc_tuss;
      property Prc_descricao: String read FPrc_descricao write SetPrc_descricao;
      property Exp_quant: integer read FExp_quant write SetExp_quant;
      property Exp_unitario: real read FExp_unitario write SetExp_unitario;
      property Exp_total: real read FExp_total write SetExp_total;

  end;

implementation

{ TExamesProced }

procedure TExamesProced.SetExa_id(const Value: String);
begin
  FExa_id := Value;
end;

procedure TExamesProced.SetExp_id(const Value: integer);
begin
  FExp_id := Value;
end;

procedure TExamesProced.SetExp_quant(const Value: integer);
begin
  FExp_quant := Value;
end;

procedure TExamesProced.SetExp_total(const Value: real);
begin
  FExp_total := Value;
end;

procedure TExamesProced.SetExp_unitario(const Value: real);
begin
  FExp_unitario := Value;
end;

procedure TExamesProced.SetPrc_descricao(const Value: String);
begin
  FPrc_descricao := Value;
end;

procedure TExamesProced.SetPrc_tuss(const Value: integer);
begin
  FPrc_tuss := Value;
end;

end.
