unit uClassReceber;

interface

Type

  TReceber = class

  private

    FDesconto: real;
    FAcrescimo: real;
    FCodCliente: Integer;
    FValor: real;
    FIdHist: Integer;
    FCodigo: Integer;
    FCodCob: Integer;
    FVencimento: TDate;
    FStatus: String;
    FPago: real;
    FEmissao: TDate;
    FSaldo: real;
    FCodConvenio: Integer;
    FNome: String;

    procedure SetAcrescimo(const Value: real);
    procedure SetCodCliente(const Value: Integer);
    procedure SetCodCob(const Value: Integer);
    procedure SetCodConvenio(const Value: Integer);
    procedure SetCodigo(const Value: Integer);
    procedure SetDesconto(const Value: real);
    procedure SetEmissao(const Value: TDate);
    procedure SetIdHist(const Value: Integer);
    procedure SetNome(const Value: String);
    procedure SetPago(const Value: real);
    procedure SetSaldo(const Value: real);
    procedure SetStatus(const Value: String);
    procedure SetValor(const Value: real);
    procedure SetVencimento(const Value: TDate);

  public

    property Codigo: Integer read FCodigo write SetCodigo;
    property Emissao: TDate read FEmissao write SetEmissao;
    property Vencimento: TDate read FVencimento write SetVencimento;
    property CodConvenio: Integer read FCodConvenio write SetCodConvenio;
    property CodCliente: Integer read FCodCliente write SetCodCliente;
    property Nome: String read FNome write SetNome;
    property Valor: real read FValor write SetValor;
    property Acrescimo: real read FAcrescimo write SetAcrescimo;
    property Desconto: real read FDesconto write SetDesconto;
    property Pago: real read FPago write SetPago;
    property Saldo: real read FSaldo write SetSaldo;
    property Status: String read FStatus write SetStatus;
    property IdHist: Integer read FIdHist write SetIdHist;
    property CodCob: Integer read FCodCob write SetCodCob;

end;

implementation

{ TReceber }

procedure TReceber.SetAcrescimo(const Value: real);
begin
  FAcrescimo := Value;
end;

procedure TReceber.SetCodCliente(const Value: Integer);
begin
  FCodCliente := Value;
end;

procedure TReceber.SetCodCob(const Value: Integer);
begin
  FCodCob := Value;
end;

procedure TReceber.SetCodConvenio(const Value: Integer);
begin
  FCodConvenio := Value;
end;

procedure TReceber.SetCodigo(const Value: Integer);
begin
  FCodigo := Value;
end;

procedure TReceber.SetDesconto(const Value: real);
begin
  FDesconto := Value;
end;

procedure TReceber.SetEmissao(const Value: TDate);
begin
  FEmissao := Value;
end;

procedure TReceber.SetIdHist(const Value: Integer);
begin
  FIdHist := Value;
end;

procedure TReceber.SetNome(const Value: String);
begin
  FNome := Value;
end;

procedure TReceber.SetPago(const Value: real);
begin
  FPago := Value;
end;

procedure TReceber.SetSaldo(const Value: real);
begin
  FSaldo := Value;
end;

procedure TReceber.SetStatus(const Value: String);
begin
  FStatus := Value;
end;

procedure TReceber.SetValor(const Value: real);
begin
  FValor := Value;
end;

procedure TReceber.SetVencimento(const Value: TDate);
begin
  FVencimento := Value;
end;

end.
