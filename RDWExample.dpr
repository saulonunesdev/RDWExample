program RDWExample;

uses
  Vcl.Forms,
  untMain in 'untMain.pas' {Form1},
  udmServer in 'udmServer.pas' {DMServer: TDataModule},
  claObjResponse in 'Class\claObjResponse.pas',
  claObjTest in 'Class\claObjTest.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDMServer, DMServer);
  Application.Run;
end.
