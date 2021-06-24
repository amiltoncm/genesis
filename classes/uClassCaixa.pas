unit uClassCaixa;

interface

uses classes;

Type

  TCaixa = class

  private

    FCaiCodigo: Integer;
    FCaiReferencia: String;
    FMovDescricao: String;
    FMovCodigo: Integer;
    FCaiData: TDate;
    FConDescricao: String;
    FCaiValor: real;
    FConCodigo: Integer;
    FCaiDescricao: String;

    procedure SetCaiCodigo(const Value: Integer);
    procedure SetCaiData(const Value: TDate);
    procedure SetCaiDescricao(const Value: String);
    procedure SetCaiReferencia(const Value: String);
    procedure SetCaiValor(const Value: real);
    procedure SetConCodigo(const Value: Integer);
    procedure SetConDescricao(const Value: String);
    procedure SetMovCodigo(const Value: Integer);
    procedure SetMovDescricao(const Value: String);

  public

  property Cai_codigo: Integer read FCaiCodigo write SetCaiCodigo;
  property Cai_data: TDate read FCaiData write SetCaiData;
  property Cai_descricao: String read FCaiDescricao write SetCaiDescricao;
  property Cai_valor: real read FCaiValor write SetCaiValor;
  property Cai_referencia: String read FCaiReferencia write SetCaiReferencia;
  property Mov_codigo: Integer read FMovCodigo write SetMovCodigo;
  property Mov_descricao: String read FMovDescricao write SetMovDescricao;
  property Con_codigo: Integer read FConCodigo write SetConCodigo;
  property Con_descricao: String read FConDescricao write SetConDescricao;

  end;

implementation

{ TCaixa }

procedure TCaixa.SetCaiCodigo(const Value: Integer);
begin
  FCaiCodigo := Value;
end;

procedure TCaixa.SetCaiData(const Value: TDate);
begin
  FCaiData := Value;
end;

procedure TCaixa.SetCaiDescricao(const Value: String);
begin
  FCaiDescricao := Value;
end;

procedure TCaixa.SetCaiReferencia(const Value: String);
begin
  FCaiReferencia := Value;
end;

procedure TCaixa.SetCaiValor(const Value: real);
begin
  FCaiValor := Value;
end;

procedure TCaixa.SetConCodigo(const Value: Integer);
begin
  FConCodigo := Value;
end;

procedure TCaixa.SetConDescricao(const Value: String);
begin
  FConDescricao := Value;
end;

procedure TCaixa.SetMovCodigo(const Value: Integer);
begin
  FMovCodigo := Value;
end;

procedure TCaixa.SetMovDescricao(const Value: String);
begin
  FMovDescricao := Value;
end;

end.
