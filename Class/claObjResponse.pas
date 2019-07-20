unit claObjResponse;

interface

type
  TObjResponse = class
  private
    FCod              : Integer;
    FResponse         : string;
  public
    constructor Create;
    //
    property Cod      : Integer read FCod            write FCod;
    property Response : string  read FResponse       write FResponse;
  end;

implementation

{ TObjResponse }

constructor TObjResponse.Create;
begin
  FCod      := 0;
  FResponse := '';
end;

end.


