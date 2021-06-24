unit uClassHistRec;

interface

Type

  THistRec = class

    private

    FId: integer;
    FItem: integer;
    FExaID: String;
    FData: TDate;
    FIDConv: integer;
    FGercob: String;
    FBaixar: String;
    FValor: real;
    FIDMed: integer;
    FStatus: String;
    FIDPac: integer;

    procedure SetId(const Value: integer);
    procedure SetData(const Value: TDate);
    procedure SetExaID(const Value: String);
    procedure SetItem(const Value: integer);
    procedure SetIDCOnv(const Value: integer);
    procedure SetBaixar(const Value: String);
    procedure SetGercob(const Value: String);
    procedure SetIDMed(const Value: integer);
    procedure SetIDPac(const Value: integer);
    procedure SetStatus(const Value: String);
    procedure SetValor(const Value: real);

    public

    property Id: integer read FId write SetId;
    property Item: integer read FItem write SetItem;
    property Data: TDate read FData write SetData;
    property ExaID: String read FExaID write SetExaID;
    property IDConv: integer read FIDConv write SetIDCOnv;
    property IDPac: integer read FIDPac write SetIDPac;
    property Valor: real read FValor write SetValor;
    property Gercob: String read FGercob write SetGercob;
    property IDMed: integer read FIDMed write SetIDMed;
    property Status: String read FStatus write SetStatus;
    property Baixar: String read FBaixar write SetBaixar;

  end;

implementation

{ THistRec }

procedure THistRec.SetBaixar(const Value: String);
begin
  FBaixar := Value;
end;

procedure THistRec.SetData(const Value: TDate);
begin
  FData := Value;
end;

procedure THistRec.SetExaID(const Value: String);
begin
  FExaID := Value;
end;

procedure THistRec.SetGercob(const Value: String);
begin
  FGercob := Value;
end;

procedure THistRec.SetId(const Value: integer);
begin
  FId := Value;
end;

procedure THistRec.SetIDCOnv(const Value: integer);
begin
  FIDConv := Value;
end;

procedure THistRec.SetIDMed(const Value: integer);
begin
  FIDMed := Value;
end;

procedure THistRec.SetIDPac(const Value: integer);
begin
  FIDPac := Value;
end;

procedure THistRec.SetItem(const Value: integer);
begin
  FItem := Value;
end;

procedure THistRec.SetStatus(const Value: String);
begin
  FStatus := Value;
end;

procedure THistRec.SetValor(const Value: real);
begin
  FValor := Value;
end;

end.
