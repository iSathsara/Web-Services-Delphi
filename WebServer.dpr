program WebServer;
{$APPTYPE GUI}

uses
  Vcl.Forms,
  Web.WebReq,
  IdHTTPWebBrokerBridge,
  WebServerForm in 'WebServerForm.pas' {Form2},
  WebModuleUnit in 'WebModuleUnit.pas' {WebModule1: TWebModule};

{$R *.res}

begin
  if WebRequestHandler <> nil then
    WebRequestHandler.WebModuleClass := WebModuleClass;
  Application.Initialize;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
