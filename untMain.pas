unit untMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,  uRESTDWBase, uDWAbout;

type
  TForm1 = class(TForm)
    edtPort: TEdit;
    lblPort: TLabel;
    btServer: TButton;
    RESTServicePooler: TRESTServicePooler;
    procedure btServerClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses udmServer;

{$R *.dfm}

procedure TForm1.btServerClick(Sender: TObject);
begin
  if btServer.Caption = 'Start Server' then
  Begin
    RESTServicePooler.ServicePort := StrToInt(edtPort.Text);
    RESTServicePooler.Active      := True;
    btServer.Caption := 'Stop Server';
  End
  Else
  Begin
    RESTServicePooler.Active      := False;
    btServer.Caption := 'Start Server';
  End;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  RESTServicePooler.ServerMethodClass := TDMServer;
end;

end.
