object Details: TDetails
  Left = 192
  Top = 103
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Detailed information...'
  ClientHeight = 234
  ClientWidth = 296
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 15
    Top = 160
    Width = 266
    Height = 41
    AutoSize = False
    Caption = 
      'You can provided this information only in this moment! After cre' +
      'ating nad saving the file, another edit will not be possible.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Layout = tlCenter
    WordWrap = True
  end
  object Label2: TLabel
    Left = 4
    Top = 144
    Width = 56
    Height = 13
    Caption = 'Warning!'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Panel5: TPanel
    Left = 36
    Top = 4
    Width = 225
    Height = 17
    Caption = 'File details:'
    TabOrder = 7
  end
  object Panel6: TPanel
    Left = 4
    Top = 50
    Width = 93
    Height = 17
    Caption = 'Author:'
    TabOrder = 8
  end
  object Panel7: TPanel
    Left = 4
    Top = 74
    Width = 93
    Height = 17
    Caption = 'Mode:'
    TabOrder = 9
  end
  object Panel8: TPanel
    Left = 4
    Top = 98
    Width = 93
    Height = 17
    Caption = 'Creation date:'
    TabOrder = 10
  end
  object Panel12: TPanel
    Left = 4
    Top = 122
    Width = 93
    Height = 17
    Caption = 'Short description:'
    TabOrder = 11
  end
  object BitBtn1: TBitBtn
    Left = 8
    Top = 206
    Width = 137
    Height = 25
    Caption = 'Create new file'
    Enabled = False
    TabOrder = 5
    Kind = bkOK
  end
  object BitBtn2: TBitBtn
    Left = 152
    Top = 206
    Width = 137
    Height = 25
    Caption = 'Cancel'
    TabOrder = 6
    Kind = bkCancel
  end
  object Panel3: TPanel
    Left = 4
    Top = 24
    Width = 260
    Height = 21
    BevelOuter = bvNone
    BorderStyle = bsSingle
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 12
  end
  object Button1: TButton
    Left = 271
    Top = 24
    Width = 21
    Height = 21
    Caption = '...'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 100
    Top = 48
    Width = 192
    Height = 21
    Enabled = False
    MaxLength = 50
    TabOrder = 1
  end
  object Edit2: TEdit
    Left = 100
    Top = 96
    Width = 192
    Height = 21
    Enabled = False
    MaxLength = 30
    TabOrder = 3
  end
  object Edit3: TEdit
    Left = 100
    Top = 120
    Width = 192
    Height = 21
    Enabled = False
    MaxLength = 200
    TabOrder = 4
  end
  object SpinEdit1: TSpinEdit
    Left = 100
    Top = 72
    Width = 192
    Height = 22
    Enabled = False
    MaxLength = 1
    MaxValue = 3
    MinValue = 1
    TabOrder = 2
    Value = 1
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = '*.nam'
    Filter = 'GenName files (*.nam)|*.nam|All files (*.*)|*.*'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofPathMustExist, ofEnableSizing]
    Title = 'Save as...'
  end
end
