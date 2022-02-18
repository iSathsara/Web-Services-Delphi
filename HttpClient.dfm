object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Client Application'
  ClientHeight = 377
  ClientWidth = 747
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -20
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 24
  object TopPanel: TPanel
    Left = 0
    Top = 0
    Width = 747
    Height = 41
    Align = alTop
    Caption = 'TopPanel'
    TabOrder = 0
    object EdtUrl: TEdit
      Left = 1
      Top = 1
      Width = 745
      Height = 39
      Cursor = crIBeam
      Hint = 'Type URL'
      Margins.Left = 10
      Margins.Right = 10
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHotLight
      Font.Height = -20
      Font.Name = 'Consolas'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Text = 'https://www.freecodecamp.org/'
      ExplicitLeft = 2
      ExplicitTop = -3
    end
  end
  object BottomPanel: TPanel
    Left = 0
    Top = 41
    Width = 747
    Height = 336
    Align = alClient
    Caption = 'BottomPanel'
    Color = clSkyBlue
    ParentBackground = False
    TabOrder = 1
    DesignSize = (
      747
      336)
    object ResponseMemo: TMemo
      Left = 1
      Top = 1
      Width = 670
      Height = 334
      Align = alLeft
      Anchors = [akLeft, akTop, akRight, akBottom]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Lucida Console'
      Font.Style = []
      Lines.Strings = (
        'ResponseMemo')
      ParentFont = False
      TabOrder = 0
    end
    object BitBtn1: TBitBtn
      AlignWithMargins = True
      Left = 671
      Top = 296
      Width = 75
      Height = 39
      Anchors = [akRight, akBottom]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      Kind = bkClose
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 1
    end
    object BtnGet: TButton
      AlignWithMargins = True
      Left = 671
      Top = 2
      Width = 75
      Height = 39
      Cursor = crHandPoint
      Caption = 'GET'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = BtnGetClick
    end
  end
  object Button1: TButton
    AlignWithMargins = True
    Left = 671
    Top = 88
    Width = 75
    Height = 39
    Cursor = crHandPoint
    Caption = 'POST'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = BtnPostClick
  end
  object HTTPClient: TNetHTTPClient
    UserAgent = 'Embarcadero URI Client/1.0'
    Left = 192
    Top = 120
  end
  object HTTPRequest: TNetHTTPRequest
    Asynchronous = True
    Client = HTTPClient
    OnRequestCompleted = HTTPRequestRequestCompleted
    Left = 304
    Top = 121
  end
end
