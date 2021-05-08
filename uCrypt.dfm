object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 297
  ClientWidth = 773
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Edit1: TEdit
    Left = 272
    Top = 80
    Width = 121
    Height = 21
    TabOrder = 0
    Text = 'Edit1'
  end
  object Edit2: TEdit
    Left = 272
    Top = 107
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'Edit2'
  end
  object Button1: TButton
    Left = 272
    Top = 161
    Width = 121
    Height = 25
    Caption = 'Crypt'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Edit3: TEdit
    Left = 272
    Top = 134
    Width = 121
    Height = 21
    TabOrder = 3
    Text = 'Edit3'
  end
  object Button2: TButton
    Left = 272
    Top = 192
    Width = 121
    Height = 25
    Caption = 'Decrypt'
    TabOrder = 4
    OnClick = Button2Click
  end
end
