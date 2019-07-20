unit claObjTest;

interface

type
  TObjTest = class
  private
    FTestInt            : Integer;
    FTestString         : String;
    FTestBool           : Boolean;
  public
    constructor Create;
    procedure DoSomenthing;
    //
    property TestInt    : Integer read FTestInt          write FTestInt;
    property TestString : string  read FTestString       write FTestString;
    property TestBool   : Boolean read FTestBool         write FTestBool;
  end;

implementation

{ TObjTest }

constructor TObjTest.Create;
begin
  FTestInt      := 0;
  FTestString   := '';
  FTestBool     := False;
end;

procedure TObjTest.DoSomenthing;
begin
  //DoSomething;
end;

end.


