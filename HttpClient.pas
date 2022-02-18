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
    Button1: TButton;
    procedure BtnGetClick(Sender: TObject);
    procedure BtnPostClick(Sender: TObject);
    procedure BtnPutClick(Sender: TObject);
    procedure BtnDeleteClick(Sender: TObject);
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
procedure TForm1.BtnGetClick(Sender: TObject);                                    // GET Click
begin
  HTTPRequest.MethodString:= 'GET'; // HTTP Method.
  HTTPRequest.URL:= EdtUrl.Text;    // Assign the URL
  HTTPRequest.Execute();            // execute
end;
{______________________________________________________________________________}  // POST Click
procedure TForm1.BtnPostClick(Sender: TObject);
begin

end;
{______________________________________________________________________________}  // PUT Click
procedure TForm1.BtnPutClick(Sender: TObject);
begin

end;
{______________________________________________________________________________}  // DELETE Click
procedure TForm1.BtnDeleteClick(Sender: TObject);
begin

end;
{______________________________________________________________________________}
procedure TForm1.HTTPRequestRequestCompleted(const Sender: TObject;
  const AResponse: IHTTPResponse);
begin
  ResponseMemo.Text:= AResponse.ContentAsString();
end;

end.
