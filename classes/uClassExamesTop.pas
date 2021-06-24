unit uClassExamesTop;

interface

Type

  TExamesTop = class

  private

    FEtg_top: String;
    FEtg_id: Integer;
    FExa_Id: String;
    FEtg_Reserva: boolean;
    FTop_Id: Integer;
    FTopDescricao: String;
    procedure SetEtg_Id(const Value: Integer);
    procedure SetEtg_Seq(const Value: Integer);
    procedure SetEtg_Top(const Value: String);
    procedure SetExa_Id(const Value: String);
    procedure SetTop_Id(const Value: Integer);
    procedure SetEtg_Reserva(const Value: boolean);
    procedure SetTopDescricao(const Value: String);

  public

    property Exa_Id: String read FExa_Id write SetExa_Id;
    property Etg_Id: Integer read FEtg_Id write SetEtg_Id;
    property Etg_Seq: Integer read FEtg_id write SetEtg_Seq;
    property Top_Id: Integer read FTop_Id write SetTop_Id;
    property Etg_Top: String read FEtg_top write SetEtg_Top;
    property Etg_Reserva: boolean read FEtg_Reserva write SetEtg_Reserva;
    property TopDescricao: String read FTopDescricao write SetTopDescricao;

  end;

implementation

{ TExamesTop }

procedure TExamesTop.SetEtg_Id(const Value: Integer);
begin
  FEtg_Id := Value;
end;

procedure TExamesTop.SetEtg_Reserva(const Value: boolean);
begin
  FEtg_Reserva := Value;
end;

procedure TExamesTop.SetEtg_Seq(const Value: Integer);
begin
  FEtg_id := Value;
end;

procedure TExamesTop.SetEtg_Top(const Value: String);
begin
  FEtg_top := Value;
end;

procedure TExamesTop.SetExa_Id(const Value: String);
begin
  FExa_Id := Value;
end;

procedure TExamesTop.SetTopDescricao(const Value: String);
begin
  FTopDescricao := Value;
end;

procedure TExamesTop.SetTop_Id(const Value: Integer);
begin
  FTop_Id := Value;
end;

end.
