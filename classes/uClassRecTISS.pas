unit uClassRecTISS;

interface

Type

  TRecTISS = class

    private

    FID: integer;
    FGerado: boolean;
    FNGuias: integer;
    FLote: integer;
    FRecCodigo: integer;

    procedure SetID(const Value: integer);
    procedure SetGerado(const Value: boolean);
    procedure SetLote(const Value: integer);
    procedure SetNGuias(const Value: integer);
    procedure SetRecCodigo(const Value: integer);

    public

    property ID: integer read FID write SetID;
    property RecCodigo: integer read  FRecCodigo write SetRecCodigo;
    property Gerado: boolean read FGerado write SetGerado;
    property Lote: integer read FLote write SetLote;
    property NGuias: integer read FNGuias write SetNGuias;

  end;

implementation

{ TRecTISS }

procedure TRecTISS.SetGerado(const Value: boolean);
begin
  FGerado := Value;
end;

procedure TRecTISS.SetID(const Value: integer);
begin
  FID := Value;
end;

procedure TRecTISS.SetLote(const Value: integer);
begin
  FLote := Value;
end;

procedure TRecTISS.SetNGuias(const Value: integer);
begin
  FNGuias := Value;
end;

procedure TRecTISS.SetRecCodigo(const Value: integer);
begin
  FRecCodigo := Value;
end;

end.
