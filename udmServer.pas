unit udmServer;

interface

uses
  System.SysUtils, System.Classes, uDWAbout, uRESTDWServerEvents, uDWJSONObject,
  uDWDatamodule, System.Json, REST.Json, uDWJsonTools, System.StrUtils,
  claObjResponse, claObjTest;

type
  TDMServer = class(TServerMethodDataModule)
    DWSE: TDWServerEvents;
    procedure DWSEEventsobjGetReplyEvent(var Params: TDWParams;
      var Result: string);
    procedure DWSEEventsobjPostReplyEvent(var Params: TDWParams;
      var Result: string);
    procedure DWSEEventsobjPutReplyEvent(var Params: TDWParams;
      var Result: string);
    procedure DWSEEventsobjDeleteReplyEvent(var Params: TDWParams;
      var Result: string);
  private
    { Private declarations }

    ObjResponse : TObjResponse;
    ObjTest     : TObjTest;
  public
    { Public declarations }
  end;

var
  DMServer: TDMServer;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDMServer.DWSEEventsobjDeleteReplyEvent(var Params: TDWParams;
  var Result: string);
begin
  Try
    ObjResponse := TObjResponse.Create;
    ObjTest     := TObjTest.Create;
    ObjTest     := TJson.JsonToObject<TObjTest>(TJSONObject.ParseJSONValue(TEncoding.ASCII.GetBytes(Params.ItemsString['set'].AsString), 0) as TJSONObject);
    if ObjTest = nil then
    Begin
      ObjResponse.Cod      := 99;
      ObjResponse.Response := 'Invalid Json';
    End
    Else
    Begin
      ObjTest.DoSomenthing;
      ObjResponse.Cod      := ObjTest.TestInt;
      ObjResponse.Response := ObjTest.TestString;
    End;
    Result := TJson.ObjectToJsonString(ObjResponse);
  Finally
    FreeAndNil(ObjResponse);
    FreeAndNil(ObjTest);
  End;
end;

procedure TDMServer.DWSEEventsobjGetReplyEvent(var Params: TDWParams;
  var Result: string);
begin
  Try
    ObjResponse          := TObjResponse.Create;
    ObjResponse.Cod      := 0;
    ObjResponse.Response := 'Get Okay';
    Result := TJson.ObjectToJsonString(ObjResponse);
  Finally
    FreeAndNil(ObjResponse);
  End;
end;

procedure TDMServer.DWSEEventsobjPostReplyEvent(var Params: TDWParams;
  var Result: string);
begin
  Try
    ObjResponse := TObjResponse.Create;
    ObjTest     := TObjTest.Create;
    ObjTest     := TJson.JsonToObject<TObjTest>(TJSONObject.ParseJSONValue(TEncoding.ASCII.GetBytes(Params.ItemsString['set'].AsString), 0) as TJSONObject);
    if ObjTest = nil then
    Begin
      ObjResponse.Cod      := 99;
      ObjResponse.Response := 'Invalid Json';
    End
    Else
    Begin
      ObjTest.DoSomenthing;
      ObjResponse.Cod      := ObjTest.TestInt;
      ObjResponse.Response := ObjTest.TestString;
    End;
    Result := TJson.ObjectToJsonString(ObjResponse);
  Finally
    FreeAndNil(ObjResponse);
    FreeAndNil(ObjTest);
  End;
end;

procedure TDMServer.DWSEEventsobjPutReplyEvent(var Params: TDWParams;
  var Result: string);
begin
  Try
    ObjResponse := TObjResponse.Create;
    ObjTest     := TObjTest.Create;
    ObjTest     := TJson.JsonToObject<TObjTest>(TJSONObject.ParseJSONValue(TEncoding.ASCII.GetBytes(Params.ItemsString['set'].AsString), 0) as TJSONObject);
    if ObjTest = nil then
    Begin
      ObjResponse.Cod      := 99;
      ObjResponse.Response := 'Invalid Json';
    End
    Else
    Begin
      ObjTest.DoSomenthing;
      ObjResponse.Cod      := ObjTest.TestInt;
      ObjResponse.Response := ObjTest.TestString;
    End;
    Result := TJson.ObjectToJsonString(ObjResponse);
  Finally
    FreeAndNil(ObjResponse);
    FreeAndNil(ObjTest);
  End;
end;

end.
