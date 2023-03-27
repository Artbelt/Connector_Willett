object Form1: TForm1
  Left = 714
  Top = 281
  BorderStyle = bsDialog
  Caption = 'FILE_COPY ( Connector_A '#169'2010)'
  ClientHeight = 220
  ClientWidth = 295
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnPaint = FormPaint
  PixelsPerInch = 96
  TextHeight = 13
  object btn1: TButton
    Left = 16
    Top = 8
    Width = 265
    Height = 33
    Caption = 'Messages R-R-R-R-R-R'
    TabOrder = 0
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 8
    Top = 56
    Width = 273
    Height = 33
    Caption = 'Settings R-R-R-R-R-R'
    TabOrder = 1
    OnClick = btn2Click
  end
  object RzButton1: TRzButton
    Left = 8
    Top = 96
    Width = 273
    Height = 41
    Caption = 'Notices  R-R-R-R-R-R'
    TabOrder = 2
    OnClick = RzButton1Click
  end
  object edt1: TEdit
    Left = 152
    Top = 176
    Width = 129
    Height = 32
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    Text = '24'
    OnKeyPress = edt1KeyPress
  end
  object edt2: TEdit
    Left = 8
    Top = 176
    Width = 121
    Height = 32
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    Text = '1601'
  end
end
