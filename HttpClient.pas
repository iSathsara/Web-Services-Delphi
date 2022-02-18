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
    BtnGet: TButton;
    EdtUrl: TEdit;
    BottomPanel: TPanel;
    ResponseMemo: TMemo;
    HTTPClient: TNetHTTPClient;
    HTTPRequest: TNetHTTPRequest;
    BitBtn1: TBitBtn;
    procedure BtnGetClick(Sender: TObject);
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

procedure TForm1.BtnGetClick(Sender: TObject);
begin
  HTTPRequest.MethodString:= 'GET'; // HTTP Method.
  HTTPRequest.URL:= EdtUrl.Text;    // Assign the URL
  HTTPRequest.Execute();            // execute
end;

procedure TForm1.HTTPRequestRequestCompleted(const Sender: TObject;
  const AResponse: IHTTPResponse);
begin
  ResponseMemo.Text:= AResponse.ContentAsString();
end;

end.
