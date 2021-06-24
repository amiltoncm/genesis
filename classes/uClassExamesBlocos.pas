unit uClassExamesBlocos;

interface

uses Classes;

Type

  TExamesBlocos = class

  private

    FEbl_id: Integer;
    FExa_id: String;
    FEbl_seq: Integer;
    FEtg_id: Integer;
    FEbl_laminas: Integer;
    FEbl_fragmentos: Integer;
    procedure SetEbl_Id(const Value: Integer);
    procedure SetExa_id(const Value: String);
    procedure SetEbl_seq(const Value: Integer);
    procedure SetEtg_id(const Value: Integer);
    procedure SetEbl_fragmentos(const Value: Integer);
    procedure SetEbl_laminas(const Value: Integer);

  public

    property Ebl_id: Integer read FEbl_id write SetEbl_Id;
    property Exa_id: String read FExa_id write SetExa_id;
    property Etg_id: Integer read FEtg_id write SetEtg_id;
    property Ebl_seq: Integer read FEbl_seq write SetEbl_seq;
    property Ebl_laminas: Integer read FEbl_laminas write SetEbl_laminas;
    property Ebl_fragmentos: Integer read FEbl_fragmentos write SetEbl_fragmentos;

  end;


implementation

{ TExamesBlocos }

procedure TExamesBlocos.SetEbl_fragmentos(const Value: Integer);
begin
  FEbl_fragmentos := Value;
end;

procedure TExamesBlocos.SetEbl_Id(const Value: Integer);
begin
  FEbl_id := Value;
end;

procedure TExamesBlocos.SetEbl_laminas(const Value: Integer);
begin
  FEbl_laminas := Value;
end;

procedure TExamesBlocos.SetEbl_seq(const Value: Integer);
begin
  FEbl_seq := Value;
end;

procedure TExamesBlocos.SetEtg_id(const Value: Integer);
begin
  FEtg_id := Value;
end;

procedure TExamesBlocos.SetExa_id(const Value: String);
begin
  FExa_id := Value;
end;

end.
