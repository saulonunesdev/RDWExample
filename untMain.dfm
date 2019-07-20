object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'RDW Server'
  ClientHeight = 140
  ClientWidth = 167
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lblPort: TLabel
    Left = 24
    Top = 35
    Width = 24
    Height = 13
    Caption = 'Port:'
  end
  object edtPort: TEdit
    Left = 64
    Top = 32
    Width = 73
    Height = 21
    NumbersOnly = True
    TabOrder = 0
    Text = '8080'
  end
  object btServer: TButton
    Left = 24
    Top = 72
    Width = 113
    Height = 25
    Caption = 'Start Server'
    TabOrder = 1
    OnClick = btServerClick
  end
  object RESTServicePooler: TRESTServicePooler
    Active = False
    CORS = True
    ServicePort = 8082
    ProxyOptions.Port = 8888
    ServerParams.HasAuthentication = False
    ServerParams.UserName = 'testserver'
    ServerParams.Password = 'testserver'
    SSLMethod = sslvSSLv2
    SSLVersions = []
    Encoding = esUtf8
    ServerContext = 'restdataware'
    RootPath = '/'
    SSLVerifyMode = []
    SSLVerifyDepth = 0
    ForceWelcomeAccess = False
    Left = 64
    Top = 32
  end
end
