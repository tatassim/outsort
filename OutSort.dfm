object Form1: TForm1
  Left = 202
  Top = 127
  Width = 504
  Height = 457
  Caption = 'Form1'
  Color = 11060735
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 48
    Top = 56
    Width = 431
    Height = 46
    Caption = 
      #1040#1085#1072#1083#1080#1079' '#1088#1072#1073#1086#1090#1099' '#1076#1074#1091#1093#1087#1091#1090#1077#1074#1086#1075#1086' '#1076#1074#1091#1093#1092#1072#1079#1085#1086#1075#1086' '#13#10'                       ' +
      ' '#1087#1088#1086#1089#1090#1086#1075#1086' '#1089#1083#1080#1103#1085#1080#1103' '
    Color = clWhite
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clRed
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsItalic]
    ParentColor = False
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 40
    Top = 136
    Width = 164
    Height = 54
    Caption = #1042#1074#1077#1076#1080#1090#1077' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#13#10'        '#1101#1083#1077#1084#1077#1085#1090#1086#1074' '#13#10'         '#1074' '#1092#1072#1081#1083#1072#1093
    Color = clWhite
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clRed
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsItalic]
    ParentColor = False
    ParentFont = False
  end
  object lbl3: TLabel
    Left = 304
    Top = 144
    Width = 170
    Height = 18
    Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1087#1088#1086#1093#1086#1076#1086#1074
    Color = clWhite
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clRed
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsItalic]
    ParentColor = False
    ParentFont = False
  end
  object lbl4: TLabel
    Left = 296
    Top = 200
    Width = 81
    Height = 14
    Caption = #1044#1083#1103' 1 '#1092#1072#1081#1083#1072
    Color = clWhite
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clRed
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsUnderline]
    ParentColor = False
    ParentFont = False
  end
  object lbl5: TLabel
    Left = 384
    Top = 192
    Width = 101
    Height = 28
    Caption = #1044#1083#1103' '#1086#1073#1088#1072#1090#1085#1086#1075#1086' '#13#10'       '#1092#1072#1081#1083#1072
    Color = clWhite
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clRed
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsUnderline]
    ParentColor = False
    ParentFont = False
  end
  object ActionMainMenuBar1: TActionMainMenuBar
    Left = 0
    Top = 0
    Width = 488
    Height = 29
    Caption = 'ActionMainMenuBar1'
    ColorMap.HighlightColor = clWhite
    ColorMap.BtnSelectedColor = clBtnFace
    ColorMap.UnusedColor = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMenuText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Spacing = 0
  end
  object edt1: TEdit
    Left = 80
    Top = 224
    Width = 65
    Height = 32
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
  end
  object edt2: TEdit
    Left = 80
    Top = 280
    Width = 65
    Height = 32
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
  object btn1: TButton
    Left = 192
    Top = 224
    Width = 89
    Height = 25
    Caption = #1057#1086#1088#1090#1080#1088#1086#1074#1072#1090#1100' '
    TabOrder = 3
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 192
    Top = 280
    Width = 89
    Height = 25
    Caption = #1057#1086#1088#1090#1080#1088#1086#1074#1072#1090#1100
    TabOrder = 4
    OnClick = btn2Click
  end
  object edt3: TEdit
    Left = 320
    Top = 224
    Width = 65
    Height = 32
    Enabled = False
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
  end
  object edt4: TEdit
    Left = 320
    Top = 280
    Width = 65
    Height = 32
    Enabled = False
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
  end
  object edt5: TEdit
    Left = 408
    Top = 224
    Width = 65
    Height = 32
    Enabled = False
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 7
  end
  object edt6: TEdit
    Left = 408
    Top = 280
    Width = 65
    Height = 32
    Enabled = False
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 8
  end
end
