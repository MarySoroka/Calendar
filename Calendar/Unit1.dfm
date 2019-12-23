object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 501
  ClientWidth = 1093
  Color = clMedGray
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  DesignSize = (
    1093
    501)
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 0
    Height = 501
    ExplicitLeft = 648
    ExplicitTop = 16
    ExplicitHeight = 100
  end
  object Splitter2: TSplitter
    Left = 3
    Top = 0
    Height = 501
    ExplicitLeft = 568
    ExplicitTop = 208
    ExplicitHeight = 100
  end
  object StringGrid1: TStringGrid
    Left = 8
    Top = 48
    Width = 497
    Height = 265
    Cursor = crArrow
    Anchors = []
    BevelEdges = []
    BiDiMode = bdLeftToRight
    ColCount = 8
    DefaultColWidth = 60
    DefaultRowHeight = 40
    DoubleBuffered = False
    FixedColor = clRed
    RowCount = 6
    GradientEndColor = clFuchsia
    GradientStartColor = clBlack
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSizing, goColSizing, goRowMoving, goColMoving, goEditing, goTabs, goRowSelect, goThumbTracking, goFixedColClick]
    ParentBiDiMode = False
    ParentColor = True
    ParentDoubleBuffered = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    Touch.InteractiveGestures = []
    Touch.InteractiveGestureOptions = []
    Touch.ParentTabletOptions = False
    Touch.TabletOptions = []
    StyleElements = [seFont]
    OnClick = StringGrid1Click
  end
  object Button1: TButton
    Left = 144
    Top = 1
    Width = 177
    Height = 41
    Caption = 'Calendar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object ListBox1: TListBox
    Left = 511
    Top = 64
    Width = 242
    Height = 249
    ItemHeight = 13
    TabOrder = 2
  end
  object ComboBox1: TComboBox
    Left = 511
    Top = 48
    Width = 242
    Height = 21
    TabOrder = 3
    Text = 'ComboBox1'
  end
  object Calendar1: TComboBox
    Left = 335
    Top = 8
    Width = 145
    Height = 21
    TabOrder = 4
    Text = 'Calendar1'
  end
end
