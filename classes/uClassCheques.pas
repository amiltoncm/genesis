unit uClassCheques;

interface

Type

  TCheques = class

    private
    FChqLancamento: integer;
    FBanCodigo: integer;
    FChqConta: String;
    FChqNumCheque: String;
    FChqVencimento: Tdate;
    FChqReferente: String;
    FChqEmissao: TDate;
    FChqEndosso: String;
    FChqDoc: String;
    FChqEstado: String;
    FChqTelefone: String;
    FChqTitular: String;
    FChqValor: real;
    FChqRepasse: String;
    procedure SetChqLancamento(const Value: integer);
    procedure SetBanCodigo(const Value: integer);
    procedure SetChqConta(const Value: String);
    procedure SetChqNumCheque(const Value: String);
    procedure SetChqDoc(const Value: String);
    procedure SetChqEmissao(const Value: TDate);
    procedure SetChqEndosso(const Value: String);
    procedure SetChqEstado(const Value: String);
    procedure SetChqReferente(const Value: String);
    procedure SetChqRepasse(const Value: String);
    procedure SetChqTelefone(const Value: String);
    procedure SetChqTitular(const Value: String);
    procedure SetChqValor(const Value: real);
    procedure SetChqVencimento(const Value: Tdate);

    public

    property Chq_lancamento: integer read FChqLancamento write SetChqLancamento;
    property Ban_codigo: integer read FBanCodigo write SetBanCodigo;
    property Chq_conta: String read FChqConta write SetChqConta;
    property Chq_numcheque: String read FChqNumCheque write SetChqNumCheque;
    property Chq_emissao: TDate read FChqEmissao write SetChqEmissao;
    property Chq_vencimento: Tdate read FChqVencimento write SetChqVencimento;
    property Chq_titular: String read FChqTitular write SetChqTitular;
    property Chq_endosso: String read FChqEndosso write SetChqEndosso;
    property Chq_valor: real read FChqValor write SetChqValor;
    property Chq_referente: String read FChqReferente write SetChqReferente;
    property Chq_telefone: String read FChqTelefone write SetChqTelefone;
    property Chq_doc: String read FChqDoc write SetChqDoc;
    property Chq_Repasse: String read FChqRepasse write SetChqRepasse;
    property Chq_estado: String read FChqEstado write SetChqEstado;

  end;

implementation

{ TCheques }

procedure TCheques.SetBanCodigo(const Value: integer);
begin
  FBanCodigo := Value;
end;

procedure TCheques.SetChqConta(const Value: String);
begin
  FChqConta := Value;
end;

procedure TCheques.SetChqDoc(const Value: String);
begin
  FChqDoc := Value;
end;

procedure TCheques.SetChqEmissao(const Value: TDate);
begin
  FChqEmissao := Value;
end;

procedure TCheques.SetChqEndosso(const Value: String);
begin
  FChqEndosso := Value;
end;

procedure TCheques.SetChqEstado(const Value: String);
begin
  FChqEstado := Value;
end;

procedure TCheques.SetChqLancamento(const Value: integer);
begin
  FChqLancamento := Value;
end;

procedure TCheques.SetChqNumCheque(const Value: String);
begin
  FChqNumCheque := Value;
end;

procedure TCheques.SetChqReferente(const Value: String);
begin
  FChqReferente := Value;
end;

procedure TCheques.SetChqRepasse(const Value: String);
begin
  FChqRepasse := Value;
end;

procedure TCheques.SetChqTelefone(const Value: String);
begin
  FChqTelefone := Value;
end;

procedure TCheques.SetChqTitular(const Value: String);
begin
  FChqTitular := Value;
end;

procedure TCheques.SetChqValor(const Value: real);
begin
  FChqValor := Value;
end;

procedure TCheques.SetChqVencimento(const Value: Tdate);
begin
  FChqVencimento := Value;
end;

end.
