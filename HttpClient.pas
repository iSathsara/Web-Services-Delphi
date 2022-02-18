unit HttpClient;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.Net.URLClient,
  System.Net.HttpClient, System.Net.HttpClientComponent, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.Buttons;

type
  TForm1 = class(TForm)
    TopPanel: TPanel;
    EdtUrl: TEdit;
    BottomPanel: TPanel;
    ResponseMemo: TMemo;
    HTTPClient: TNetHTTPClient;
    HTTPRequest: TNetHTTPRequest;
    BitBtn1: TBitBtn;
    BtnGet: TButton;
    BtnPost: TButton;
    BtnPut: TButton;
    BtnDel: TButton;
    BodyMemo: TMemo;
    BtnResetBody: TButton;
    BtnResetResponse: TButton;
    procedure BtnGetClick(Sender: TObject);
    procedure BtnPostClick(Sender: TObject);
    procedure BtnPutClick(Sender: TObject);
    procedure BtnDeleteClick(Sender: TObject);
    procedure BtnResetResponseClick(Sender: TObject);
    procedure BtnResetBodyClick(Sender: TObject);
    procedure HTTPRequestRequestCompleted(const Sender: TObject;
      const AResponse: IHTTPResponse);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
{______________________________________________________________________________}
{______________________________________________________________________________}
{______________________________________________________________________________}
// Get Click
procedure TForm1.BtnGetClick(Sender: TObject);
begin
  HTTPRequest.MethodString:= 'GET'; // HTTP Method.
  HTTPRequest.URL:= EdtUrl.Text;    // Assign the URL
  HTTPRequest.Execute();            // execute
end;
{______________________________________________________________________________}
// Post Click
procedure TForm1.BtnPostClick(Sender: TObject);
Var
  IContentStream: TStringStream;
begin
  // Get Memo input -> encode into utf8, then assign into IContentStream
  IContentStream:= TStringStream.Create(BodyMemo.Lines.Text, TEncoding.UTF8);
  IContentStream.Seek(0,TSeekOrigin.soBeginning);
  HTTPRequest.Post(EdtUrl.Text, IContentStream, nil, nil);
end;
{______________________________________________________________________________}
// Put Click
procedure TForm1.BtnPutClick(Sender: TObject);
Var
  IContentStream: TStringStream;
begin
  IContentStream:= TStringStream.Create(BodyMemo.Lines.Text, TEncoding.UTF8);
  IContentStream.Seek(0,TSeekOrigin.soBeginning);
  HTTPRequest.Put(EdtUrl.Text, IContentStream, nil, nil);
end;
{______________________________________________________________________________}
// Delete Click
procedure TForm1.BtnDeleteClick(Sender: TObject);
begin

end;
{______________________________________________________________________________}
// Reset Body
procedure TForm1.BtnResetBodyClick(Sender: TObject);
begin
  BodyMemo.Lines.Text:=EmptyStr;
end;
// Reset Response
procedure TForm1.BtnResetResponseClick(Sender: TObject);
begin
  ResponseMemo.Lines.Text:=EmptyStr;
end;
{______________________________________________________________________________}
procedure TForm1.HTTPRequestRequestCompleted(const Sender: TObject;
  const AResponse: IHTTPResponse);
begin
  ResponseMemo.Text:= AResponse.ContentAsString();
end;

end.
