object Form1: TForm1
  Left = 260
  Top = 189
  Width = 616
  Height = 474
  Caption = #1050#1088#1077#1089#1090#1080#1082#1080'-'#1053#1086#1083#1080#1082#1080
  Color = clCream
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -33
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 37
  object Label1: TLabel
    Left = 24
    Top = 80
    Width = 78
    Height = 37
    Caption = #1057#1095#1077#1090':'
  end
  object Label2: TLabel
    Left = 24
    Top = 128
    Width = 49
    Height = 37
    Caption = #1061' - '
  end
  object Label3: TLabel
    Left = 24
    Top = 176
    Width = 53
    Height = 37
    Caption = #1054' - '
  end
  object Xwin: TLabel
    Left = 96
    Top = 128
    Width = 18
    Height = 37
    Caption = '0'
  end
  object Owin: TLabel
    Left = 96
    Top = 176
    Width = 18
    Height = 37
    Caption = '0'
  end
  object Label4: TLabel
    Left = 176
    Top = 8
    Width = 249
    Height = 37
    Caption = #1050#1088#1077#1089#1090#1080#1082#1080'-'#1053#1086#1083#1080#1082#1080
  end
  object Turn: TLabel
    Left = 24
    Top = 24
    Width = 9
    Height = 37
    Visible = False
  end
  object Table: TStringGrid
    Left = 192
    Top = 80
    Width = 201
    Height = 201
    ColCount = 3
    DefaultColWidth = 65
    DefaultRowHeight = 65
    FixedCols = 0
    RowCount = 3
    FixedRows = 0
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -33
    Font.Name = 'MS Sans Serif'
    Font.Pitch = fpVariable
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnSelectCell = TableSelectCell
  end
  object Button1: TButton
    Left = 440
    Top = 128
    Width = 97
    Height = 33
    Caption = #1053#1072#1079#1072#1076
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = Button1Click
  end
  object restart: TButton
    Left = 440
    Top = 80
    Width = 97
    Height = 33
    Caption = #1047#1072#1085#1086#1074#1086
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = restartClick
  end
end
