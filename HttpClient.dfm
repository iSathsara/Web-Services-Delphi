object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Client Application'
  ClientHeight = 614
  ClientWidth = 953
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
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 947
    Height = 41
    Align = alTop
    Caption = 'TopPanel'
    Color = clMenuHighlight
    Padding.Top = 5
    Padding.Bottom = 5
    ParentBackground = False
    TabOrder = 0
    ExplicitLeft = 0
    ExplicitTop = 0
    ExplicitWidth = 880
    object EdtUrl: TEdit
      AlignWithMargins = True
      Left = 50
      Top = 6
      Width = 794
      Height = 29
      Cursor = crIBeam
      Hint = 'Type URL'
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alRight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHotLight
      Font.Height = -17
      Font.Name = 'Consolas'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Text = 'https://www.google.com/'
      StyleName = 'Windows'
      ExplicitLeft = 56
    end
    object BtnDefaultUrl: TButton
      AlignWithMargins = True
      Left = 844
      Top = 6
      Width = 102
      Height = 29
      Cursor = crHandPoint
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alRight
      Caption = 'localhost'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BtnDefaultUrlCkick
      ExplicitLeft = 855
      ExplicitTop = 2
      ExplicitWidth = 97
      ExplicitHeight = 39
    end
  end
  object BottomPanel: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 50
    Width = 947
    Height = 561
    Align = alClient
    Color = clSkyBlue
    ParentBackground = False
    TabOrder = 1
    ExplicitLeft = 8
    DesignSize = (
      947
      561)
    object lblResponseMessage: TLabel
      Left = 56
      Top = 12
      Width = 124
      Height = 16
      Caption = 'Response Message'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblBodyRequest: TLabel
      Left = 56
      Top = 334
      Width = 90
      Height = 16
      Anchors = [akLeft, akBottom]
      Caption = 'Request Body'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      ExplicitTop = 308
    end
    object ResponseMemo: TMemo
      Left = 56
      Top = 34
      Width = 787
      Height = 287
      Anchors = [akLeft, akTop, akRight, akBottom]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Lucida Console'
      Font.Style = []
      Lines.Strings = (
        'Response goes here...')
      ParentFont = False
      TabOrder = 0
      ExplicitWidth = 744
      ExplicitHeight = 275
    end
    object BitBtn1: TBitBtn
      AlignWithMargins = True
      Left = 849
      Top = 528
      Width = 97
      Height = 26
      Cursor = crHandPoint
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
      Left = 846
      Top = 38
      Width = 97
      Height = 39
      Cursor = crHandPoint
      Anchors = [akRight]
      Caption = 'GET'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = BtnGetClick
      ExplicitLeft = 852
      ExplicitTop = 39
    end
    object BtnPut: TButton
      AlignWithMargins = True
      Left = 849
      Top = 198
      Width = 97
      Height = 39
      Cursor = crHandPoint
      Anchors = [akRight]
      Caption = 'PUT'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = BtnPutClick
    end
    object BtnDel: TButton
      AlignWithMargins = True
      Left = 849
      Top = 282
      Width = 97
      Height = 39
      Cursor = crHandPoint
      Anchors = [akRight]
      Caption = 'DEL'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = BtnDeleteClick
    end
    object BodyMemo: TMemo
      AlignWithMargins = True
      Left = 56
      Top = 356
      Width = 787
      Height = 199
      Anchors = [akLeft, akRight, akBottom]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Lucida Console'
      Font.Style = []
      Lines.Strings = (
        'Request Body goes here...')
      ParentFont = False
      TabOrder = 5
      ExplicitTop = 330
      ExplicitWidth = 720
    end
    object BtnResetBody: TButton
      AlignWithMargins = True
      Left = 752
      Top = 327
      Width = 91
      Height = 29
      Cursor = crHandPoint
      Anchors = [akRight, akBottom]
      Caption = '&Clear'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnClick = BtnResetBodyClick
      ExplicitLeft = 709
      ExplicitTop = 315
    end
    object BtnResetResponse: TButton
      AlignWithMargins = True
      Left = 752
      Top = 5
      Width = 91
      Height = 28
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Caption = '&Reset'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      OnClick = BtnResetResponseClick
      ExplicitLeft = 709
    end
    object BtnPost: TButton
      AlignWithMargins = True
      Left = 849
      Top = 114
      Width = 97
      Height = 39
      Cursor = crHandPoint
      Anchors = [akRight]
      Caption = 'POST'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
      OnClick = BtnPostClick
    end
  end
  object HTTPClient: TNetHTTPClient
    UserAgent = 'Embarcadero URI Client/1.0'
    Left = 656
    Top = 144
  end
  object HTTPRequest: TNetHTTPRequest
    Asynchronous = True
    Client = HTTPClient
    OnRequestCompleted = HTTPRequestRequestCompleted
    Left = 752
    Top = 145
  end
end
