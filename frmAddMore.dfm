object AddMore: TAddMore
  Left = 192
  Top = 103
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Add more items...'
  ClientHeight = 254
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
    Left = 5
    Top = 4
    Width = 285
    Height = 53
    AutoSize = False
    Caption = 
      'Enter new items, you want do add, to field below. Place each new' +
      'item in separate line. If any given item will be already in the ' +
      'list, it will be ignored. Only new items will be added to the li' +
      'st.'
    WordWrap = True
  end
  object memo: TMemo
    Left = 5
    Top = 60
    Width = 285
    Height = 157
    ScrollBars = ssVertical
    TabOrder = 0
    OnChange = memoChange
  end
  object BitBtn1: TBitBtn
    Left = 5
    Top = 224
    Width = 140
    Height = 25
    Caption = 'Add 0 items'
    TabOrder = 1
    Kind = bkOK
  end
  object BitBtn2: TBitBtn
    Left = 150
    Top = 224
    Width = 140
    Height = 25
    Caption = 'Cancel...'
    TabOrder = 2
    Kind = bkCancel
  end
end
