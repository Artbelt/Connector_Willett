object Form3: TForm3
  Left = 520
  Top = 263
  BorderStyle = bsNone
  Caption = 'Form3'
  ClientHeight = 55
  ClientWidth = 473
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object rzpnl1: TRzPanel
    Left = 0
    Top = 0
    Width = 473
    Height = 55
    Align = alClient
    Color = 4227327
    TabOrder = 0
    object lbl1: TRzLabel
      Left = 16
      Top = 16
      Width = 315
      Height = 20
      Caption = #1042#1074#1077#1076#1080#1090#1077' '#1080#1076#1077#1085#1090#1080#1092#1080#1082#1072#1090#1086#1088' '#1073#1088#1080#1075#1072#1076#1099' ->'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edt1: TRzEdit
      Left = 344
      Top = 12
      Width = 25
      Height = 28
      Text = 'A'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object rzbtbtn1: TRzBitBtn
      Left = 376
      Top = 12
      Width = 89
      Height = 28
      TabOrder = 1
      Kind = bkClose
    end
  end
end
