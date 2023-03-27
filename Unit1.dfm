object Form1: TForm1
  Left = 387
  Top = 179
  BorderStyle = bsNone
  Caption = 'WILLETT connector by Alpha'
  ClientHeight = 598
  ClientWidth = 1028
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIForm
  OldCreateOrder = False
  WindowState = wsMaximized
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnPaint = FormPaint
  PixelsPerInch = 96
  TextHeight = 13
  object RzPageControl1: TRzPageControl
    Left = 0
    Top = 0
    Width = 1028
    Height = 598
    ActivePage = TabSheet1
    Align = alClient
    BackgroundColor = clInactiveCaptionText
    BoldCurrentTab = True
    Color = clWhite
    ParentBackgroundColor = False
    ParentColor = False
    TabColors.HighlightBar = clSkyBlue
    TabColors.Shadow = clWhite
    TabColors.Unselected = clSilver
    TabIndex = 0
    TabOrder = 0
    FixedDimension = 19
    object TabSheet1: TRzTabSheet
      Color = clWhite
      Caption = #1056#1072#1073#1086#1095#1072#1103' '#1089#1090#1088#1072#1085#1080#1094#1072
      object RzSplitter1: TRzSplitter
        Left = 0
        Top = 0
        Width = 1024
        Height = 495
        Position = 256
        Percent = 25
        UsePercent = True
        Align = alClient
        Color = 15163726
        TabOrder = 0
        BarSize = (
          256
          0
          260
          495)
        UpperLeftControls = (
          RzLabel1
          lv1)
        LowerRightControls = (
          RzLabel2
          lv2
          mmo1
          waitpanel)
        object RzLabel1: TRzLabel
          Left = 0
          Top = 0
          Width = 256
          Height = 19
          Align = alTop
          Alignment = taCenter
          Caption = #1041#1072#1079#1072' '#1089#1086#1086#1073#1097#1077#1085#1080#1081
          Color = 15163726
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Layout = tlCenter
          BlinkColor = clBtnHighlight
          BorderColor = clSkyBlue
          BorderHighlight = clMedGray
          Rotation = roFlat
          ShadowColor = clOlive
          ShadowDepth = 0
        end
        object lv1: TShellListView
          Left = 0
          Top = 19
          Width = 256
          Height = 476
          AutoContextMenus = False
          AutoNavigate = False
          ObjectTypes = [otFolders, otNonFolders]
          Root = 'C:\Windows'
          Sorted = True
          Align = alClient
          BorderStyle = bsNone
          Color = clWhite
          OnDblClick = lv1DblClick
          DragMode = dmAutomatic
          ReadOnly = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 14497310
          Font.Height = -24
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          HideSelection = False
          OnDragOver = lv2DragOver
          ParentFont = False
          TabOrder = 0
          ViewStyle = vsSmallIcon
        end
        object RzLabel2: TRzLabel
          Left = 0
          Top = 0
          Width = 764
          Height = 19
          Align = alTop
          Alignment = taCenter
          Caption = #1057#1086#1086#1073#1097#1077#1085#1080#1103' '#1075#1086#1090#1086#1074#1099#1077' '#1082' '#1087#1077#1095#1072#1090#1080
          Color = 15163726
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Layout = tlCenter
          BlinkColor = clBtnHighlight
          BorderColor = clSkyBlue
          BorderHighlight = clMedGray
          Rotation = roFlat
          ShadowColor = clOlive
          ShadowDepth = 0
        end
        object lv2: TShellListView
          Left = 0
          Top = 19
          Width = 764
          Height = 476
          AutoContextMenus = False
          ObjectTypes = [otFolders, otNonFolders]
          Root = 'C:\'
          Sorted = True
          Align = alClient
          BorderStyle = bsNone
          OnDblClick = lv2DblClick
          DragMode = dmAutomatic
          ReadOnly = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 12976128
          Font.Height = -32
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          HideSelection = False
          OnDragDrop = lv2DragDrop
          OnDragOver = lv2DragOver
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 0
          ViewStyle = vsSmallIcon
        end
        object mmo1: TMemo
          Left = 368
          Top = 169
          Width = 129
          Height = 64
          Align = alCustom
          Color = 12582908
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = pm2
          TabOrder = 1
          Visible = False
        end
        object waitpanel: TPanel
          Left = 208
          Top = 256
          Width = 150
          Height = 40
          Caption = #1054#1090#1087#1088#1072#1074#1082#1072'...'
          TabOrder = 2
          Visible = False
        end
      end
      object RzPanel3: TRzPanel
        Left = 0
        Top = 495
        Width = 1024
        Height = 80
        Align = alBottom
        BorderOuter = fsNone
        BorderColor = clWhite
        Color = 15163726
        TabOrder = 1
        object RzLabel3: TRzLabel
          Left = 8
          Top = 11
          Width = 289
          Height = 18
          AutoSize = False
          Caption = #1057#1086#1086#1073#1097#1077#1085#1080#1077' '#1086#1090#1087#1088#1072#1074#1083#1077#1085#1085#1086#1077' '#1074' '#1087#1088#1080#1085#1090#1077#1088':'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Microsoft Sans Serif'
          Font.Style = []
          ParentFont = False
          BlinkColor = clBtnHighlight
          BorderColor = clSkyBlue
          BorderHighlight = clMedGray
          Rotation = roFlat
          ShadowColor = clOlive
          ShadowDepth = 0
        end
        object RzLabel4: TRzLabel
          Left = 304
          Top = 5
          Width = 369
          Height = 41
          AutoSize = False
          Caption = '...'
          Color = 15163726
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = 1964542
          Font.Height = -48
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          BlinkColor = clBtnHighlight
          BorderColor = clSkyBlue
          BorderHighlight = clMedGray
          Rotation = roFlat
          ShadowColor = clOlive
          ShadowDepth = 0
        end
        object RzStatusBar2: TRzStatusBar
          Left = 0
          Top = 48
          Width = 1024
          Height = 32
          AutoStyle = False
          BorderInner = fsNone
          BorderOuter = fsNone
          BorderSides = [sdLeft, sdTop, sdRight, sdBottom]
          BorderWidth = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          VisualStyle = vsClassic
          object RzClockStatus1: TRzClockStatus
            Left = 872
            Top = 0
            Width = 152
            Height = 32
            Transparent = False
            Align = alRight
            Color = 15431783
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object RzStatusPane3: TRzStatusPane
            Left = 0
            Top = 0
            Width = 719
            Height = 32
            Transparent = False
            Align = alClient
            Color = 15163726
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWhite
            Font.Height = -17
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            PopupMenu = PopupMenu2
          end
          object RzStatusPane2: TRzStatusPane
            Left = 793
            Top = 0
            Width = 46
            Height = 32
            Align = alRight
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -24
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = RzStatusPane2Click
            Alignment = taCenter
          end
          object RzStatusPane4: TRzStatusPane
            Left = 839
            Top = 0
            Width = 33
            Height = 32
            Transparent = False
            Align = alRight
            Color = 15163726
            ParentColor = False
          end
          object RzStatusPane5: TRzStatusPane
            Left = 719
            Top = 0
            Width = 74
            Height = 32
            Transparent = False
            Align = alRight
            Color = 15163726
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Caption = #1041#1088#1080#1075#1072#1076#1072
          end
        end
        object RzPanel7: TRzPanel
          Left = 887
          Top = 0
          Width = 137
          Height = 48
          Align = alRight
          BorderOuter = fsNone
          Color = 15163726
          TabOrder = 1
        end
      end
      object PAN1: TRzPanel
        Left = 308
        Top = 430
        Width = 477
        Height = 49
        BorderOuter = fsNone
        BorderHighlight = clBlue
        Color = 2319612
        TabOrder = 2
        OnPaint = PAN1Paint
        object RzLabel5: TRzLabel
          Left = 8
          Top = 16
          Width = 294
          Height = 20
          Caption = #1042#1074#1077#1076#1080#1090#1077' '#1080#1076#1077#1085#1090#1080#1092#1080#1082#1072#1090#1086#1088' '#1073#1088#1080#1075#1072#1076#1099
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -17
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Blinking = True
          BlinkColor = clWhite
        end
        object btn4: TRzButton
          Left = 368
          Top = 12
          Width = 97
          Height = 28
          Caption = #1055#1086#1076#1090#1074#1077#1088#1076#1080#1090#1100
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 13053979
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnClick = btn4Click
        end
        object ABox1: TAdvComboBox
          Left = 312
          Top = 8
          Width = 41
          Height = 32
          Color = clWindow
          Version = '1.3.1.0'
          Visible = True
          ButtonWidth = 20
          DropWidth = 0
          Enabled = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -19
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemIndex = -1
          ItemHeight = 24
          Items.Strings = (
            '1'
            '2'
            '3')
          LabelFont.Charset = DEFAULT_CHARSET
          LabelFont.Color = clWindowText
          LabelFont.Height = -11
          LabelFont.Name = 'MS Sans Serif'
          LabelFont.Style = []
          ParentFont = False
          TabOrder = 1
          Text = '1'
        end
      end
    end
    object TabSheet2: TRzTabSheet
      Color = clWhite
      TabVisible = False
      Caption = #1057#1083#1091#1078#1077#1073#1085#1072#1103' '#1089#1090#1088#1072#1085#1080#1094#1072
      object RzPanel4: TRzPanel
        Left = 0
        Top = 483
        Width = 1024
        Height = 92
        Align = alBottom
        TabOrder = 0
      end
      object RzPanel5: TRzPanel
        Left = 757
        Top = 0
        Width = 267
        Height = 483
        Align = alRight
        TabOrder = 1
        object Label1: TLabel
          Left = 143
          Top = 280
          Width = 108
          Height = 13
          Caption = #1054#1090#1074#1077#1090#1099' '#1084#1072#1088#1082#1080#1088#1072#1090#1086#1088#1072
        end
        object RzBitBtn2: TRzBitBtn
          Left = 10
          Top = 24
          Width = 241
          Caption = 'Show error status'
          Color = 14918538
          TabOrder = 0
          OnClick = RzBitBtn2Click
          DisabledIndex = 569
          ImageIndex = 568
        end
        object RzBitBtn3: TRzBitBtn
          Left = 10
          Top = 49
          Width = 241
          Caption = 'Information about firmware'
          Color = 14918538
          TabOrder = 1
          OnClick = RzBitBtn3Click
          DisabledIndex = 571
          ImageIndex = 570
        end
        object rzbtbtn1: TRzBitBtn
          Left = 10
          Top = 74
          Width = 241
          Caption = 'Select TEST MESSAGE'
          Color = 14918538
          TabOrder = 2
          OnClick = rzbtbtn1Click
          Glyph.Data = {
            36060000424D3606000000000000360400002800000020000000100000000100
            08000000000000020000730E0000730E00000001000000000000000000003300
            00006600000099000000CC000000FF0000000033000033330000663300009933
            0000CC330000FF33000000660000336600006666000099660000CC660000FF66
            000000990000339900006699000099990000CC990000FF99000000CC000033CC
            000066CC000099CC0000CCCC0000FFCC000000FF000033FF000066FF000099FF
            0000CCFF0000FFFF000000003300330033006600330099003300CC003300FF00
            330000333300333333006633330099333300CC333300FF333300006633003366
            33006666330099663300CC663300FF6633000099330033993300669933009999
            3300CC993300FF99330000CC330033CC330066CC330099CC3300CCCC3300FFCC
            330000FF330033FF330066FF330099FF3300CCFF3300FFFF3300000066003300
            66006600660099006600CC006600FF0066000033660033336600663366009933
            6600CC336600FF33660000666600336666006666660099666600CC666600FF66
            660000996600339966006699660099996600CC996600FF99660000CC660033CC
            660066CC660099CC6600CCCC6600FFCC660000FF660033FF660066FF660099FF
            6600CCFF6600FFFF660000009900330099006600990099009900CC009900FF00
            990000339900333399006633990099339900CC339900FF339900006699003366
            99006666990099669900CC669900FF6699000099990033999900669999009999
            9900CC999900FF99990000CC990033CC990066CC990099CC9900CCCC9900FFCC
            990000FF990033FF990066FF990099FF9900CCFF9900FFFF99000000CC003300
            CC006600CC009900CC00CC00CC00FF00CC000033CC003333CC006633CC009933
            CC00CC33CC00FF33CC000066CC003366CC006666CC009966CC00CC66CC00FF66
            CC000099CC003399CC006699CC009999CC00CC99CC00FF99CC0000CCCC0033CC
            CC0066CCCC0099CCCC00CCCCCC00FFCCCC0000FFCC0033FFCC0066FFCC0099FF
            CC00CCFFCC00FFFFCC000000FF003300FF006600FF009900FF00CC00FF00FF00
            FF000033FF003333FF006633FF009933FF00CC33FF00FF33FF000066FF003366
            FF006666FF009966FF00CC66FF00FF66FF000099FF003399FF006699FF009999
            FF00CC99FF00FF99FF0000CCFF0033CCFF0066CCFF0099CCFF00CCCCFF00FFCC
            FF0000FFFF0033FFFF0066FFFF0099FFFF00CCFFFF00FFFFFF00000080000080
            000000808000800000008000800080800000C0C0C00080808000191919004C4C
            4C00B2B2B200E5E5E500C8AC2800E0CC6600F2EABF00B59B2400D8E9EC009933
            6600D075A300ECC6D900646F710099A8AC00E2EFF10000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000E8E8E8E8E8E8
            E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E85E5E5E5E
            5E5E5E5E5E5E5E5EE8E8E8E8818181818181818181818181E8E8E8E85ED7D7D7
            D7D7D7D7D7D7D75EE8E8E8E881E8E8E8E8E8E8E8E8E8E881E8E8E8E85ED7E3E3
            E3E3E3E3E3E3D75EE8E8E8E881E8ACACACACACACACACE881E8E8E8E85ED7D7D7
            D7D7D7D7D7D7D75EE8E8E8E881E8E8E8E8E8E8E8E8E8E881E8E8E8E85ED7E3E3
            E3E3E3E3E3E3D75EE8E8E8E881E8ACACACACACACACACE881E8E8E8E85ED7D7D7
            D7D7D7D7D7D7D75EE8E8E8E881E8E8E8E8E8E8E8E8E8E881E8E8E8E85ED7E3E3
            E3E3E3E3E3E3D75EE8E8E8E881E8ACACACACACACACACE881E8E8E8E85ED7D7D7
            D7D7D7D7D7D7D75EE8E8E8E881E8E8E8E8E8E8E8E8E8E881E8E8E8E85ED7E3E3
            E3E3E3E3E3E3D75EE8E8E8E881E8ACACACACACACACACE881E8E8E8E85ED7D7D7
            D7D7D7D7D7D7D75EE8E8E8E881E8E8E8E8E8E8E8E8E8E881E8E8E8E85ED7E3E3
            E3E3E3D75E5E5E5EE8E8E8E881E8ACACACACACE881818181E8E8E8E85ED7D7D7
            D7D7D7D75EE35EE8E8E8E8E881E8E8E8E8E8E8E881E881E8E8E8E8E85ED7D7D7
            D7D7D7D75E5EE8E8E8E8E8E881E8E8E8E8E8E8E88181E8E8E8E8E8E85E5E5E5E
            5E5E5E5E5EE8E8E8E8E8E8E8818181818181818181E8E8E8E8E8E8E8E8E8E8E8
            E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8}
          NumGlyphs = 2
        end
        object RzBitBtn5: TRzBitBtn
          Left = 10
          Top = 99
          Width = 241
          Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1089#1077#1088#1074#1080#1089#1085#1091#1102' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1102
          Color = 14918538
          TabOrder = 3
          DisabledIndex = 567
          ImageIndex = 566
        end
        object RzBitBtn4: TRzBitBtn
          Left = 10
          Top = 124
          Width = 241
          Caption = #1047#1072#1087#1091#1089#1090#1080#1090#1100' PropertyEditor'
          Color = 14918538
          TabOrder = 4
          OnClick = RzBitBtn4Click
          DisabledIndex = 567
          ImageIndex = 566
        end
        object RzButton1: TRzButton
          Left = 10
          Top = 149
          Width = 241
          Caption = #1069#1082#1088#1072#1085#1085#1072#1103' '#1082#1083#1072#1074#1080#1072#1090#1091#1088#1072
          Color = 14918538
          TabOrder = 5
          OnClick = RzButton1Click
        end
        object RzBitBtn1: TRzBitBtn
          Left = 10
          Top = 246
          Width = 241
          Height = 28
          Caption = #1055#1077#1088#1077#1087#1086#1076#1082#1083#1102#1095#1080#1090#1100#1089#1103' '#1082' '#1084#1072#1088#1082#1080#1088#1072#1090#1086#1088#1091
          Color = 4227327
          TabOrder = 6
          OnClick = RzBitBtn1Click
          ImageIndex = 242
        end
        object Memo3: TMemo
          Left = 8
          Top = 296
          Width = 249
          Height = 209
          Align = alCustom
          ScrollBars = ssBoth
          TabOrder = 7
        end
        object RzButton2: TRzButton
          Left = 10
          Top = 175
          Width = 241
          Caption = #1050#1086#1085#1074#1077#1088#1090#1077#1088' '#1082#1080#1088#1080#1083#1083#1080#1094#1099
          Color = 14918538
          TabOrder = 8
          OnClick = N25Click
        end
      end
      object RzPanel6: TRzPanel
        Left = 0
        Top = 0
        Width = 757
        Height = 483
        Align = alClient
        TabOrder = 2
        object lbl1: TLabel
          Left = 8
          Top = 16
          Width = 100
          Height = 13
          Caption = #1057#1086#1076#1077#1088#1078#1080#1084#1086#1077' '#1092#1072#1081#1083#1072
        end
        object lbl2: TLabel
          Left = 8
          Top = 152
          Width = 400
          Height = 13
          Caption = 
            #1060#1072#1081#1083' '#1079#1072#1087#1080#1089#1072#1085#1085#1099#1081' '#1086#1076#1085#1086#1081' '#1089#1090#1088#1086#1082#1086#1081' '#1076#1083#1103' '#1080#1079#1074#1083#1077#1095#1077#1085#1080#1103' '#1076#1083#1103' '#1091#1087#1088#1072#1074#1083#1103#1102#1097#1080#1093' '#1089#1080#1084 +
            #1074#1086#1083#1086#1074
        end
        object lbl3: TLabel
          Left = 8
          Top = 232
          Width = 175
          Height = 13
          Caption = #1060#1072#1081#1083' '#1073#1077#1079' '#1091#1087#1088#1072#1074#1083#1103#1102#1097#1080#1093' '#1089#1080#1084#1074#1086#1083#1086#1074
        end
        object Memo2: TMemo
          Left = 8
          Top = 32
          Width = 641
          Height = 113
          TabOrder = 1
        end
        object Edit1: TEdit
          Left = 8
          Top = 168
          Width = 641
          Height = 21
          TabOrder = 2
        end
        object Memo1: TMemo
          Left = 8
          Top = 248
          Width = 641
          Height = 169
          ScrollBars = ssBoth
          TabOrder = 3
          WordWrap = False
        end
        object Button4: TButton
          Left = 8
          Top = 192
          Width = 641
          Height = 25
          Caption = #1055#1088#1077#1086#1073#1088#1072#1079#1086#1074#1072#1090#1100' '#1089#1090#1088#1086#1082#1091' '#1076#1083#1103' '#1087#1086#1089#1099#1083#1082#1080' '
          TabOrder = 0
          OnClick = Button4Click
        end
        object Button5: TButton
          Left = 8
          Top = 424
          Width = 641
          Height = 25
          Caption = #1055#1086#1089#1083#1072#1090#1100' '#1089#1086#1086#1073#1097#1077#1085#1080#1077' '#1074' WILLETT'
          TabOrder = 4
          OnClick = Button5Click
        end
      end
    end
  end
  object ComPort1: TComPort
    BaudRate = br9600
    Port = 'COM1'
    Parity.Bits = prNone
    StopBits = sbOneStopBit
    DataBits = dbEight
    Events = [evRxChar, evTxEmpty, evRxFlag, evRing, evBreak, evCTS, evDSR, evError, evRLSD, evRx80Full]
    FlowControl.OutCTSFlow = False
    FlowControl.OutDSRFlow = False
    FlowControl.ControlDTR = dtrDisable
    FlowControl.ControlRTS = rtsDisable
    FlowControl.XonXoffOut = False
    FlowControl.XonXoffIn = False
    Left = 200
    Top = 104
  end
  object ComDataPacket1: TComDataPacket
    ComPort = ComPort1
    MaxBufferSize = 1048576
    OnPacket = ComDataPacket1Packet
    Left = 200
    Top = 224
  end
  object PopupMenu1: TPopupMenu
    Left = 113
    Top = 220
    object N3: TMenuItem
      Caption = #1054#1090#1087#1088#1072#1074#1080#1090#1100' '#1089#1086#1086#1073#1097#1077#1085#1080#1077' '#1074' '#1084#1072#1088#1082#1080#1088#1072#1090#1086#1088
      ImageIndex = 88
      OnClick = N3Click
      OnDrawItem = N3DrawItem
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object N11: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1074#1099#1076#1077#1083#1077#1085#1085#1086#1077' '#1089#1086#1086#1073#1097#1077#1085#1080#1077' '#1080#1079' '#1072#1082#1090#1080#1074#1085#1099#1093
      OnClick = N11Click
    end
    object N1: TMenuItem
      Caption = #1054#1095#1080#1089#1090#1080#1090#1100' '#1089#1087#1080#1089#1086#1082' '#1074#1099#1073#1088#1072#1085#1085#1099#1093' '#1089#1086#1086#1073#1097#1077#1085#1080#1081
      OnClick = N1Click
    end
    object N5: TMenuItem
      Caption = '-'
    end
    object PropertyEditor1: TMenuItem
      Caption = #1052#1077#1085#1102' '#1072#1076#1084#1080#1085#1080#1089#1090#1088#1072#1090#1086#1088#1072
      object PropertyEditor2: TMenuItem
        Caption = #1054#1090#1082#1088#1099#1090#1100' '#1088#1077#1076#1072#1082#1090#1086#1088' '#1089#1074#1086#1081#1089#1090#1074' '#1089#1086#1086#1073#1097#1077#1085#1080#1103' PropertyEditor'
        OnClick = PropertyEditor2Click
      end
      object N15: TMenuItem
        Caption = #1047#1072#1087#1091#1089#1090#1080#1090#1100' '#1088#1077#1076#1072#1082#1090#1086#1088' '#1083#1086#1075#1086#1090#1080#1087#1086#1074' LogoEditor'
        OnClick = N15Click
      end
      object N25: TMenuItem
        Caption = #1047#1072#1087#1091#1089#1090#1080#1090#1100' '#1082#1086#1085#1074#1077#1088#1090#1077#1088' '#1082#1080#1088#1080#1083#1083#1080#1094#1099
        OnClick = N25Click
      end
      object N23: TMenuItem
        Caption = #1069#1082#1088#1072#1085#1085#1072#1103' '#1082#1083#1072#1074#1080#1072#1090#1091#1088#1072
        OnClick = N23Click
      end
      object N10: TMenuItem
        Caption = #1055#1086#1082#1072#1079#1072#1090#1100' '#1089#1077#1088#1074#1080#1089#1085#1091#1102' '#1089#1090#1088#1072#1085#1080#1094#1091
        OnClick = N10Click
      end
      object N12: TMenuItem
        Caption = '-'
      end
      object N16: TMenuItem
        Caption = #1054#1090#1087#1088#1072#1074#1080#1090#1100' '#1083#1086#1075#1086#1090#1080#1087' '#1074' '#1084#1072#1088#1082#1080#1088#1072#1090#1086#1088
        OnClick = N16Click
      end
      object N14: TMenuItem
        Caption = '-'
      end
      object N19: TMenuItem
        Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1074' '#1072#1074#1090#1086#1079#1072#1075#1088#1091#1079#1082#1091
        OnClick = N19Click
      end
      object N21: TMenuItem
        Caption = #1059#1073#1088#1072#1090#1100' '#1080#1079' '#1072#1074#1090#1086#1079#1072#1075#1088#1091#1079#1082#1080
        OnClick = N21Click
      end
      object N13: TMenuItem
        Caption = '-'
      end
    end
    object N18: TMenuItem
      Caption = '-'
    end
    object N8: TMenuItem
      Caption = #1042#1099#1093#1086#1076
      OnClick = N8Click
    end
    object N7: TMenuItem
      Caption = #1042#1099#1093#1086#1076' '#1089' '#1089#1086#1093#1088#1072#1085#1077#1085#1080#1077#1084' '#1089#1087#1080#1089#1082#1072' '#1072#1082#1090#1080#1074#1085#1099#1093' '#1089#1086#1086#1073#1097#1077#1085#1080#1081
      OnClick = N7Click
    end
    object N17: TMenuItem
      Caption = #1042#1099#1093#1086#1076' '#1080' '#1074#1099#1082#1083#1102#1095#1077#1085#1080#1077' '#1082#1086#1084#1087#1100#1102#1090#1077#1088#1072
      OnClick = N17Click
    end
  end
  object pm1: TPopupMenu
    Left = 113
    Top = 280
    object N4: TMenuItem
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      OnClick = N4Click
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 113
    Top = 164
    object N6: TMenuItem
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100' '#1089#1077#1088#1074#1080#1089#1085#1091#1102' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1102' '#1086' '#1089#1086#1086#1073#1097#1077#1085#1080#1080
    end
  end
  object OpenDialog: TRzOpenDialog
    Left = 649
    Top = 260
  end
  object tmr1: TTimer
    Interval = 2000
    OnTimer = tmr1Timer
    Left = 489
    Top = 100
  end
  object pm2: TPopupMenu
    Left = 329
    Top = 164
    object Cj1: TMenuItem
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1080' '#1079#1072#1082#1088#1099#1090#1100
    end
  end
end
