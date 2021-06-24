unit uClassExamesHistMicro;

interface

Type

  TExamesHistMicro = class

  private

    FEhr_ID: Integer;
    FExa_ID: String;
    FEhr_Microscopia: String;
    FEhr_Diagnostico: String;
    FEhr_Complemento: String;
    procedure SetEhr_ID(const Value: Integer);
    procedure SetExa_ID(const Value: String);
    procedure SetEhr_Microscopia(const Value: String);
    procedure SetEhr_Diagnostico(const Value: String);
    procedure SetEhr_Complemento(const Value: String);

  public

    property Ehr_ID: Integer read FEhr_ID write SetEhr_ID;
    property Exa_ID: String read FExa_ID write SetExa_ID;
    property Ehr_Microscopia: String read FEhr_Microscopia write SetEhr_Microscopia;
    property Ehr_Diagnostico: String read FEhr_Diagnostico write SetEhr_Diagnostico;
    property Ehr_Complemento: String read FEhr_Complemento write SetEhr_Complemento;

  end;

implementation

{ TExamesHistMicro }

procedure TExamesHistMicro.SetEhr_Complemento(const Value: String);
begin
  FEhr_Complemento := Value;
end;

procedure TExamesHistMicro.SetEhr_Diagnostico(const Value: String);
begin
  FEhr_Diagnostico := Value;
end;

procedure TExamesHistMicro.SetEhr_ID(const Value: Integer);
begin
  FEhr_ID := Value;
end;

procedure TExamesHistMicro.SetEhr_Microscopia(const Value: String);
begin
  FEhr_Microscopia := Value;
end;

procedure TExamesHistMicro.SetExa_ID(const Value: String);
begin
  FExa_ID := Value;
end;

end.
