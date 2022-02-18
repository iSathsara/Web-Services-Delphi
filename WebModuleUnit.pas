unit WebModuleUnit;

interface

uses
  System.SysUtils, System.Classes, Web.HTTPApp, System.Types;

type
  TWebModule1 = class(TWebModule)
    procedure WebModule1DefaultHandlerAction(Sender: TObject;
      Request: TWebRequest; Response: TWebResponse; var Handled: Boolean);
    procedure WebModule1NumberActionAction(Sender: TObject;
      Request: TWebRequest; Response: TWebResponse; var Handled: Boolean);
    procedure WebModule1InformationAction(Sender: TObject; Request: TWebRequest;
      Response: TWebResponse; var Handled: Boolean);
    procedure WebModule1GetKeyValueAction(Sender: TObject; Request: TWebRequest;
      Response: TWebResponse; var Handled: Boolean);
    procedure WebModule1PosttKeyValueAction(Sender: TObject; Request: TWebRequest;
      Response: TWebResponse; var Handled: Boolean);
    procedure WebModule1PutKeyValueAction(Sender: TObject; Request: TWebRequest;
      Response: TWebResponse; var Handled: Boolean);
    procedure WebModule1DeleteValueAction(Sender: TObject; Request: TWebRequest;
      Response: TWebResponse; var Handled: Boolean);
  private
    { Private declarations }
    function GetParameters(const aActionPath, aRequestPath: String): TStringDynArray;
  public
    { Public declarations }
  end;

var
  WebModuleClass: TComponentClass = TWebModule1;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

uses
  System.Generics.Collections, System.StrUtils, System.SyncObjs;

Var
  // global dictionary variable
  gKeyValueStore: TDictionary<String, String>;
  career, contactUs, documentation : String;
{______________________________________________________________________________}
{______________________________________________________________________________}
{______________________________________________________________________________}  // Parse Parameters of URL
function TWebModule1.GetParameters(const aActionPath,
  aRequestPath: String): TStringDynArray;
Var
  IActionPathLength: Integer;
  IRequestPathLength: Integer;
  IParameter: String;
  IParameters: TStringDynArray;
begin
  Setlength(Result, 0);
  IActionPathLength:= aActionPath.Length;
  IRequestPathLength:= aRequestPath.Length;

  if (IRequestPathLength > IActionPathLength) then begin
    IParameter:= RightStr(aRequestPath, IRequestPathLength - IActionPathLength);
    IParameters:= SplitString(IParameter, '/');
    if (Length(IParameter) > 0) then
      Result:= IParameters;
  end;
end;
{______________________________________________________________________________} // Get Request Executor
procedure TWebModule1.WebModule1DefaultHandlerAction(Sender: TObject;
  Request: TWebRequest; Response: TWebResponse; var Handled: Boolean);
begin
  Response.ContentType := 'text/html; charset=utf-8';
  Response.Content :=
    '<html>' +
    '<head><title>Web Server Application</title></head>' +
    '<body>Web Server is up...</body>' +
    '</html>';
end;
{______________________________________________________________________________} // DELETE Request Executor
procedure TWebModule1.WebModule1DeleteValueAction(Sender: TObject;
  Request: TWebRequest; Response: TWebResponse; var Handled: Boolean);
Var
  IParameters: TStringDynArray;
  IKey: String;
begin
  IParameters:= GetParameters((Sender as TWebActionItem).PathInfo, Request.PathInfo);
  if (Length(IParameters) > 0) then begin
    IKey := IParameters[0];
    Response.ContentType := 'application/json; charset=utf-8';
    gKeyValueStore.Remove(IKey);
    Response.Content := '{"result:[]"}';
    Handled := True;
  end else Handled := False;
end;
{______________________________________________________________________________}  // GET Request Executor.
procedure TWebModule1.WebModule1GetKeyValueAction(Sender: TObject;
  Request: TWebRequest; Response: TWebResponse; var Handled: Boolean);
Var
  IParameters: TStringDynArray;
  IKey: String;
  IValue: String;
begin
  IKey:='';
  { URL: http://localhost:8080/KeyValue/0 }
  IParameters:= GetParameters((Sender as TWebActionItem).PathInfo, Request.PathInfo);

  if Length(IParameters) > 0 then
    IKey:=IParameters[0];

  if not (IKey.IsEmpty) then begin
    Response.ContentType := 'text/html; charset=utf-8';
    gKeyValueStore.TryGetValue(IKey, IValue);
    if not (IValue.IsEmpty) then
      Response.Content := IValue else
      Response.Content := '404 Requesting page not found!';
    Handled:= true;
  end else Handled:= false;

end;
{______________________________________________________________________________}  // POST Request Executor.
procedure TWebModule1.WebModule1PosttKeyValueAction(Sender: TObject;
  Request: TWebRequest; Response: TWebResponse; var Handled: Boolean);
Var
  IParameters: TStringDynArray;
  IKey: String;
  IValue: String;
begin
  IParameters:= GetParameters((Sender as TWebActionItem).PathInfo, Request.PathInfo);
  if Length(IParameters) > 0 then begin
    IKey := IParameters[0];
    IValue :='';

    if Length(IParameters) > 1 then
      IValue := IParameters[1] else
      IValue := Request.Content;

    if not (IValue.IsEmpty) then begin
      Response.ContentType := 'application/json; charset=utf-8';
      gKeyValueStore[IKey] := IValue;             // See difference in PUT
      Response.Content := '{"result":[]}';
      Handled := True;
    end else Handled := False;
  end;

end;
{______________________________________________________________________________}  // PUT Request Executor.
procedure TWebModule1.WebModule1PutKeyValueAction(Sender: TObject;
  Request: TWebRequest; Response: TWebResponse; var Handled: Boolean);
Var
  IParameters: TStringDynArray;
  IKey: String;
  IValue: String;
begin
  IParameters:= GetParameters((Sender as TWebActionItem).PathInfo, Request.PathInfo);
  if Length(IParameters) > 0 then begin
    IKey := IParameters[0];
    IValue :='';

    if Length(IParameters) > 1 then
      IValue := IParameters[1] else
      IValue := Request.Content;

    if not (IValue.IsEmpty) then begin
      Response.ContentType := 'application/json; charset=utf-8';
      gKeyValueStore.AddOrSetValue(IKey, IValue);  // See difference in POST
      Response.Content := '{"result":[]}';
      Handled := True;
    end else Handled := False;
  end;
end;
{______________________________________________________________________________}  // Default GET Request
procedure TWebModule1.WebModule1InformationAction(Sender: TObject;
  Request: TWebRequest; Response: TWebResponse; var Handled: Boolean);
begin
  Response.ContentType := 'text/html; charset=utf-8';
  Response.Content :=
    '<html>'+
    '<header><h2>Your Personal Information</h2></html>'+
    '<body>'+
      '<p>Detailed summary of your personal information</p>'+
      '<ul>'+
        '<li>Name: Isuru Sathsara</li>'+
        '<li>Age : 24 years</li>'+
        '<li>Job Title: Associate Software Engineer</li>'+
        '<li>Company: ITelligence Services Private Limited, Kirulapone</li>'+
      '</ul>'+
    '<footer> All rights received @2022 </footer>'+
    '</body>'+
    '</html>';
end;
{______________________________________________________________________________}  // GET Request - test
procedure TWebModule1.WebModule1NumberActionAction(Sender: TObject;
  Request: TWebRequest; Response: TWebResponse; var Handled: Boolean);
begin
  Response.ContentType := 'application/json; charset=utf-8';
  Response.Content:= Random(100).toString;
end;
{______________________________________________________________________________}
{______________________________________________________________________________}
{______________________________________________________________________________}
initialization                                                                    // Global Initializations

  career :=
  '<html>'+
  '<header><h2>Get to know about us...</h2></html>'+
  '<body>'+
    '<p>We are outstanding software development company in Sri Lanka, which outsource products to European region.</p>'+
    '<p>Your Requirements as follows'+
    '<ul>'+
      '<li>Solid Knowlegde on Delphi</li>'+
      '<li>Strong knowledge on FireDAC, InterBase, SQLite</li>'+
      '<li>Hands-on Experience on Laravel Framework</li>'+
      '<li>Knowledge on AWS and Azure is plus point</li>'+
    '</ul>'+
  '<footer> All rights received @2022 ITelligence Services Pvt Ltd</footer>'+
  '</body>'+
  '</html>';

  contactUs :=
  '<html>'+
  '<header><h2>Contact Us</h2></html>'+
  '<body>'+
    '<p>Hire Any Developer? Just Hangout with Us!</p>'+
    '<p>Our Contacts'+
    '<ul>'+
      '<li>Address: No 141, Maya Avenue, Kirulapone, Colombo 05</li>'+
      '<li>Email: into@itelligence-services.com</li>'+
    '</ul>'+
    '<p>Write Us'+
    '<form>'+
      '<label>Name: </label><input type="text"><br>'+
      '<label>Email: </label><input type="text"/><br>'+
      '<label>Descr: </label><input type="text"/><br>'+
      '<input type="submit">'+
    '</form>'+
  '<footer> All rights received @2022 ITelligence Services Pvt Ltd</footer>'+
  '</body>'+
  '</html>';

  gKeyValueStore := TDictionary<String, String>.Create;
  gKeyValueStore.Add('0','Zero');
  gKeyValueStore.Add('career', career);
  gKeyValueStore.Add('contact',contactUs);

end.
