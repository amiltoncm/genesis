unit uClassPagar;

interface

Type

  TPagar = class

  private
    FNf: integer;
    FParcela: integer;
    FCodFornecedor: integer;
    FDesconto: real;
    FAcrescimo: real;
    FValor: real;
    FVencimento: TDate;
    FStatus: String;
    FPago: real;
    FEmissao: TDate;
    FSaldo: real;
    procedure SetNf(const Value: integer);
    procedure SetParcela(const Value: integer);
    procedure SetCodFornecedor(const Value: integer);
    procedure SetAcrescimo(const Value: real);
    procedure SetDesconto(const Value: real);
    procedure SetEmissao(const Value: TDate);
    procedure SetPago(const Value: real);
    procedure SetSaldo(const Value: real);
    procedure SetStatus(const Value: String);
    procedure SetValor(const Value: real);
    procedure SetVencimento(const Value: TDate);

  public

    property Nf: integer read FNf write SetNf;
    property Parcela: integer read FParcela write SetParcela;
    property CodFornecedor: integer read FCodFornecedor write SetCodFornecedor;
    property Emissao: TDate read FEmissao write SetEmissao;
    property Vencimento: TDate read FVencimento write SetVencimento;
    property Valor: real read FValor write SetValor;
    property Acrescimo: real read FAcrescimo write SetAcrescimo;
    property Desconto: real read FDesconto write SetDesconto;
    property Pago: real read FPago write SetPago;
    property Saldo: real read FSaldo write SetSaldo;
    property Status: String read FStatus write SetStatus;

  end;

implementation

{ TPagar }

procedure TPagar.SetAcrescimo(const Value: real);
begin
  FAcrescimo := Value;
end;

procedure TPagar.SetCodFornecedor(const Value: integer);
begin
  FCodFornecedor := Value;
end;

procedure TPagar.SetDesconto(const Value: real);
begin
  FDesconto := Value;
end;

procedure TPagar.SetEmissao(const Value: TDate);
begin
  FEmissao := Value;
end;

procedure TPagar.SetNf(const Value: integer);
begin
  FNf := Value;
end;

procedure TPagar.SetPago(const Value: real);
begin
  FPago := Value;
end;

procedure TPagar.SetParcela(const Value: integer);
begin
  FParcela := Value;
end;

procedure TPagar.SetSaldo(const Value: real);
begin
  FSaldo := Value;
end;

procedure TPagar.SetStatus(const Value: String);
begin
  FStatus := Value;
end;

procedure TPagar.SetValor(const Value: real);
begin
  FValor := Value;
end;

procedure TPagar.SetVencimento(const Value: TDate);
begin
  FVencimento := Value;
end;

end.
