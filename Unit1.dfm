object Form1: TForm1
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Form1'
  ClientHeight = 297
  ClientWidth = 455
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 30
    Top = 32
    Width = 31
    Height = 13
    Caption = 'Label1'
  end
  object Label2: TLabel
    Left = 30
    Top = 59
    Width = 31
    Height = 13
    Caption = 'Label2'
  end
  object Label3: TLabel
    Left = 30
    Top = 81
    Width = 31
    Height = 13
    Caption = 'Label3'
  end
  object Label4: TLabel
    Left = 30
    Top = 151
    Width = 54
    Height = 19
    Caption = 'Label4'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 30
    Top = 112
    Width = 100
    Height = 13
    Caption = 'G'#246'r'#252'nen G'#252'nl'#252'k Gelir'
  end
  object Label6: TLabel
    Left = 29
    Top = 192
    Width = 64
    Height = 19
    Caption = 'KAYBIN'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 160
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 0
    Text = 'Edit1'
    OnKeyPress = Edit1KeyPress
  end
  object Edit2: TEdit
    Left = 160
    Top = 51
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'Edit2'
    OnKeyPress = Edit2KeyPress
  end
  object Edit3: TEdit
    Left = 160
    Top = 78
    Width = 121
    Height = 21
    TabOrder = 2
    Text = 'Edit3'
    OnKeyPress = Edit3KeyPress
  end
  object Button1: TButton
    Left = 160
    Top = 239
    Width = 89
    Height = 25
    Caption = 'Hesapla'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 160
    Top = 270
    Width = 89
    Height = 25
    Caption = #199'IKI'#350
    TabOrder = 5
    OnClick = Button2Click
  end
  object Edit4: TEdit
    Left = 160
    Top = 105
    Width = 121
    Height = 21
    TabOrder = 3
    Text = '5,10'
    OnKeyPress = Edit4KeyPress
  end
end
