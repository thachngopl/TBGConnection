unit TBGAbstConnection.View.Principal;

interface

uses
  TBGAbstConnection.View.Interfaces, TBGAbstConnection.Model.Interfaces,
  System.Classes;

Type
  TTBGAbstractConnection = class(TComponent, iTBGConnection)
    private
    FQuery: iQuery;
    FConexao: iConexao;
    FDriver: iDriver;
    procedure SetDriver(const Value: iDriver);
    function GetDriver: iDriver;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iTBGConnection;
    published
      property Driver : iDriver read GetDriver write SetDriver;
  end;

procedure Register;

implementation

{$R Icones.res}

{ TTBGAbstractConnection }

constructor TTBGAbstractConnection.Create;
begin

end;

destructor TTBGAbstractConnection.Destroy;
begin

  inherited;
end;


function TTBGAbstractConnection.GetDriver: iDriver;
begin
  Result := FDriver;
end;

class function TTBGAbstractConnection.New: iTBGConnection;
begin
  Result := Self.Create;
end;


procedure TTBGAbstractConnection.SetDriver(const Value: iDriver);
begin
  FDriver := Value;
end;

procedure Register;
begin
  RegisterComponents('TBGAbstractConnection', [TTBGAbstractConnection]);
end;

end.
