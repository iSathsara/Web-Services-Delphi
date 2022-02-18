object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Client Application'
  ClientHeight = 576
  ClientWidth = 880
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
    Width = 880
    Height = 41
    Align = alTop
    Caption = 'TopPanel'
    TabOrder = 0
    ExplicitWidth = 747
    object EdtUrl: TEdit
      Left = 1
      Top = 1
      Width = 878
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
      ExplicitWidth = 745
    end
  end
  object BottomPanel: TPanel
    Left = 0
    Top = 41
    Width = 880
    Height = 535
    Align = alClient
    Color = clSkyBlue
    ParentBackground = False
    TabOrder = 1
    ExplicitLeft = -1
    ExplicitTop = 46
    DesignSize = (
      880
      535)
    object ResponseMemo: TMemo
      Left = 56
      Top = 6
      Width = 720
      Height = 296
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
      ExplicitWidth = 729
      ExplicitHeight = 203
    end
    object BitBtn1: TBitBtn
      AlignWithMargins = True
      Left = 782
      Top = 487
      Width = 97
      Height = 41
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
      Left = 782
      Top = 6
      Width = 97
      Height = 39
      Cursor = crHandPoint
      Anchors = [akRight]
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
    object BtnPut: TButton
      AlignWithMargins = True
      Left = 782
      Top = 128
      Width = 97
      Height = 39
      Cursor = crHandPoint
      Anchors = [akRight]
      Caption = 'PUT'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = BtnPutClick
    end
    object BtnDel: TButton
      AlignWithMargins = True
      Left = 782
      Top = 192
      Width = 97
      Height = 39
      Cursor = crHandPoint
      Anchors = [akRight]
      Caption = 'DEL'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = BtnDeleteClick
    end
    object BodyMemo: TMemo
      AlignWithMargins = True
      Left = 56
      Top = 308
      Width = 720
      Height = 221
      Anchors = [akLeft, akRight, akBottom]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Lucida Console'
      Font.Style = []
      Lines.Strings = (
        'BodyMemo')
      ParentFont = False
      TabOrder = 5
    end
    object BtnResetBody: TButton
      AlignWithMargins = True
      Left = 782
      Top = 442
      Width = 97
      Height = 39
      Cursor = crHandPoint
      Anchors = [akRight]
      Caption = 'Clear'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object BtnResetResponse: TButton
      AlignWithMargins = True
      Left = 782
      Top = 263
      Width = 98
      Height = 39
      Cursor = crHandPoint
      Anchors = [akRight]
      Caption = 'Reset'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      OnClick = BtnResetResponseClick
    end
    object BtnPost: TButton
      AlignWithMargins = True
      Left = 782
      Top = 67
      Width = 97
      Height = 39
      Cursor = crHandPoint
      Anchors = [akRight]
      Caption = 'POST'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      OnClick = BtnPostClick
    end
  end
  object HTTPClient: TNetHTTPClient
    UserAgent = 'Embarcadero URI Client/1.0'
    Left = 272
    Top = 152
  end
  object HTTPRequest: TNetHTTPRequest
    Asynchronous = True
    Client = HTTPClient
    OnRequestCompleted = HTTPRequestRequestCompleted
    Left = 392
    Top = 153
  end
end
