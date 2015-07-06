object Edytor: TEdytor
  Left = 201
  Top = 27
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'GenName 1.00 - Dictionary files editor'
  ClientHeight = 680
  ClientWidth = 800
  Color = clBtnFace
  Font.Charset = EASTEUROPE_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 416
    Top = 358
    Width = 3
    Height = 13
  end
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 800
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    Font.Charset = EASTEUROPE_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Panel1: TPanel
      Left = 4
      Top = 2
      Width = 792
      Height = 34
      Anchors = [akLeft, akTop, akRight, akBottom]
      BevelInner = bvLowered
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 144
    Top = 8
    Width = 185
    Height = 17
    Caption = 'Panel2'
    TabOrder = 0
    Visible = False
  end
  object pnlBottom: TPanel
    Left = 0
    Top = 624
    Width = 800
    Height = 56
    Align = alBottom
    BevelOuter = bvNone
    Font.Charset = EASTEUROPE_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object sts1: TPanel
      Left = 4
      Top = 2
      Width = 792
      Height = 22
      Anchors = [akLeft, akTop, akRight]
      BevelInner = bvLowered
      Ctl3D = False
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
    end
    object BitBtn2: TBitBtn
      Left = 4
      Top = 28
      Width = 120
      Height = 25
      Caption = 'Create new...'
      TabOrder = 1
      TabStop = False
      OnClick = BitBtn2Click
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        888888888888888888888800000000000888880FFFFFFFFF0888880FFFFFFFFF
        0888880FFFFFFFFF0888880FFFFFFFFF0888880FFFFFFFFF0888880FFFFFFFFF
        0888880FFFFFFFFF0888880FFFFFFFFF0888880FFFFFF0000888880FFFFFF0F0
        8888880FFFFFF008888888000000008888888888888888888888}
    end
    object BitBtn3: TBitBtn
      Left = 128
      Top = 28
      Width = 120
      Height = 25
      Caption = 'Save changes'
      TabOrder = 2
      TabStop = False
      OnClick = BitBtn3Click
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        8888880000000000000880330000008803088033000000880308803300000088
        0308803300000000030880333333333333088033000000003308803088888888
        0308803088888888030880308888888803088030888888880308803088888888
        0008803088888888080880000000000000088888888888888888}
    end
    object BitBtn1: TBitBtn
      Left = 676
      Top = 28
      Width = 120
      Height = 25
      Anchors = [akTop, akRight]
      Cancel = True
      Caption = 'Close window'
      TabOrder = 3
      TabStop = False
      OnClick = BitBtn1Click
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033338833333333333333333F333333333333
        0000333911833333983333333388F333333F3333000033391118333911833333
        38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
        911118111118333338F3338F833338F3000033333911111111833333338F3338
        3333F8330000333333911111183333333338F333333F83330000333333311111
        8333333333338F3333383333000033333339111183333333333338F333833333
        00003333339111118333333333333833338F3333000033333911181118333333
        33338333338F333300003333911183911183333333383338F338F33300003333
        9118333911183333338F33838F338F33000033333913333391113333338FF833
        38F338F300003333333333333919333333388333338FFF830000333333333333
        3333333333333333333888330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
  end
  object pnlMain: TPanel
    Left = 0
    Top = 41
    Width = 800
    Height = 583
    Align = alClient
    BevelOuter = bvNone
    Font.Charset = EASTEUROPE_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    object pnlA: TPanel
      Left = 0
      Top = 0
      Width = 190
      Height = 583
      Align = alLeft
      BevelOuter = bvNone
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object cap1: TLabel
        Left = 4
        Top = 4
        Width = 182
        Height = 16
        Alignment = taCenter
        Anchors = [akLeft, akTop, akRight]
        AutoSize = False
        Caption = 'Male names:'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object cnt1: TLabel
        Left = 4
        Top = 565
        Width = 182
        Height = 16
        Alignment = taCenter
        Anchors = [akLeft, akRight, akBottom]
        AutoSize = False
        Caption = '0 items'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object List1: TListBox
        Left = 4
        Top = 22
        Width = 180
        Height = 520
        TabStop = False
        Anchors = [akLeft, akTop, akRight, akBottom]
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ItemHeight = 16
        ParentFont = False
        PopupMenu = popList
        Sorted = True
        TabOrder = 0
        OnContextPopup = List1ContextPopup
      end
      object Edit1: TEdit
        Left = 4
        Top = 544
        Width = 180
        Height = 21
        Hint = 
          'Click with right mouse button to enter a non-Latin character (i.' +
          'e. from German or French alphabet)'
        Anchors = [akLeft, akRight, akBottom]
        ParentShowHint = False
        PopupMenu = popEdit
        ShowHint = True
        TabOrder = 1
        OnContextPopup = Edit1ContextPopup
        OnKeyUp = Edit1KeyUp
      end
    end
    object pnlB: TPanel
      Left = 190
      Top = 0
      Width = 190
      Height = 583
      Align = alLeft
      BevelOuter = bvNone
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object cap2: TLabel
        Left = 4
        Top = 4
        Width = 182
        Height = 16
        Alignment = taCenter
        Anchors = [akLeft, akTop, akRight]
        AutoSize = False
        Caption = 'Female names:'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object cnt2: TLabel
        Left = 4
        Top = 565
        Width = 182
        Height = 16
        Alignment = taCenter
        Anchors = [akLeft, akRight, akBottom]
        AutoSize = False
        Caption = '0 items'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object List2: TListBox
        Left = 4
        Top = 22
        Width = 180
        Height = 520
        TabStop = False
        Anchors = [akLeft, akTop, akRight, akBottom]
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ItemHeight = 16
        ParentFont = False
        PopupMenu = popList
        Sorted = True
        TabOrder = 0
        OnContextPopup = List2ContextPopup
      end
      object Edit2: TEdit
        Left = 4
        Top = 544
        Width = 180
        Height = 21
        Hint = 
          'Click with right mouse button to enter a non-Latin character (i.' +
          'e. from German or French alphabet)'
        Anchors = [akLeft, akRight, akBottom]
        ParentShowHint = False
        PopupMenu = popEdit
        ShowHint = True
        TabOrder = 1
        OnContextPopup = Edit2ContextPopup
        OnKeyUp = Edit2KeyUp
      end
    end
    object pnlC: TPanel
      Left = 420
      Top = 0
      Width = 190
      Height = 583
      Align = alRight
      BevelOuter = bvNone
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      object cap4: TLabel
        Left = 4
        Top = 4
        Width = 182
        Height = 16
        Alignment = taCenter
        Anchors = [akLeft, akTop, akRight]
        AutoSize = False
        Caption = 'Titles or prefixes:'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object cnt4: TLabel
        Left = 4
        Top = 565
        Width = 182
        Height = 16
        Alignment = taCenter
        Anchors = [akLeft, akRight, akBottom]
        AutoSize = False
        Caption = '0 items'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object List4: TListBox
        Left = 4
        Top = 22
        Width = 180
        Height = 520
        TabStop = False
        Anchors = [akLeft, akTop, akRight, akBottom]
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ItemHeight = 16
        ParentFont = False
        PopupMenu = popList
        Sorted = True
        TabOrder = 0
        OnContextPopup = List4ContextPopup
      end
      object Edit4: TEdit
        Left = 4
        Top = 544
        Width = 180
        Height = 21
        Hint = 
          'Click with right mouse button to enter a non-Latin character (i.' +
          'e. from German or French alphabet)'
        Anchors = [akLeft, akRight, akBottom]
        ParentShowHint = False
        PopupMenu = popEdit
        ShowHint = True
        TabOrder = 1
        OnContextPopup = Edit4ContextPopup
        OnKeyUp = Edit4KeyUp
      end
    end
    object pnlD: TPanel
      Left = 610
      Top = 0
      Width = 190
      Height = 583
      Align = alRight
      BevelOuter = bvNone
      Font.Charset = EASTEUROPE_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      object cap3: TLabel
        Left = 4
        Top = 4
        Width = 182
        Height = 16
        Alignment = taCenter
        Anchors = [akLeft, akTop, akRight]
        AutoSize = False
        Caption = 'Surnames:'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object cnt3: TLabel
        Left = 4
        Top = 565
        Width = 182
        Height = 16
        Alignment = taCenter
        Anchors = [akLeft, akRight, akBottom]
        AutoSize = False
        Caption = '0 items'
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object List3: TListBox
        Left = 4
        Top = 22
        Width = 180
        Height = 520
        TabStop = False
        Anchors = [akLeft, akTop, akRight, akBottom]
        Font.Charset = EASTEUROPE_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ItemHeight = 16
        ParentFont = False
        PopupMenu = popList
        Sorted = True
        TabOrder = 0
        OnContextPopup = List3ContextPopup
      end
      object Edit3: TEdit
        Left = 4
        Top = 544
        Width = 180
        Height = 21
        Hint = 
          'Click with right mouse button to enter a non-Latin character (i.' +
          'e. from German or French alphabet)'
        Anchors = [akLeft, akRight, akBottom]
        ParentShowHint = False
        PopupMenu = popEdit
        ShowHint = True
        TabOrder = 1
        OnContextPopup = Edit3ContextPopup
        OnKeyUp = Edit3KeyUp
      end
    end
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 3000
    OnTimer = Timer1Timer
    Left = 72
    Top = 8
  end
  object popEdit: TPopupMenu
    Left = 8
    Top = 8
    object N2: TMenuItem
      Caption = 'ä'
      OnClick = menuclick
    end
    object N4: TMenuItem
      Caption = 'ö'
      OnClick = menuclick
    end
    object N5: TMenuItem
      Caption = 'ü'
      OnClick = menuclick
    end
    object N3: TMenuItem
      Caption = 'Ä'
      OnClick = menuclick
    end
    object N8: TMenuItem
      Caption = 'Ö'
      OnClick = menuclick
    end
    object N9: TMenuItem
      Caption = 'Ü'
      OnClick = menuclick
    end
    object N1: TMenuItem
      Caption = 'ß'
      OnClick = menuclick
    end
    object test1: TMenuItem
      Break = mbBarBreak
      Caption = 'è'
      OnClick = menuclick
    end
    object N10: TMenuItem
      Caption = 'ì'
      OnClick = menuclick
    end
    object N11: TMenuItem
      Caption = 'ò'
      OnClick = menuclick
    end
    object N12: TMenuItem
      Caption = 'ø'
      OnClick = menuclick
    end
    object N17: TMenuItem
      Caption = 'š'
      OnClick = menuclick
    end
    object N18: TMenuItem
      Caption = 'ž'
      OnClick = menuclick
    end
    object N14: TMenuItem
      Caption = 'È'
      OnClick = menuclick
    end
    object N15: TMenuItem
      Caption = 'Ì'
      OnClick = menuclick
    end
    object N16: TMenuItem
      Caption = 'Ò'
      OnClick = menuclick
    end
    object N19: TMenuItem
      Caption = 'Ø'
      OnClick = menuclick
    end
    object N20: TMenuItem
      Caption = 'Š'
      OnClick = menuclick
    end
    object N21: TMenuItem
      Caption = 'Ž'
      OnClick = menuclick
    end
    object N6: TMenuItem
      Break = mbBarBreak
      Caption = 'á'
      OnClick = menuclick
    end
    object N23: TMenuItem
      Caption = 'ç'
      OnClick = menuclick
    end
    object N27: TMenuItem
      Caption = 'º'
      OnClick = menuclick
    end
    object N7: TMenuItem
      Caption = 'é'
      OnClick = menuclick
    end
    object N13: TMenuItem
      Caption = 'ú'
      OnClick = menuclick
    end
    object N22: TMenuItem
      Caption = 'Á'
      OnClick = menuclick
    end
    object N24: TMenuItem
      Caption = 'Ç'
      OnClick = menuclick
    end
    object N25: TMenuItem
      Caption = 'É'
      OnClick = menuclick
    end
    object N28: TMenuItem
      Caption = 'ª'
      OnClick = menuclick
    end
    object N26: TMenuItem
      Caption = 'Ú'
      OnClick = menuclick
    end
  end
  object popList: TPopupMenu
    Left = 40
    Top = 8
    object mnuDelete: TMenuItem
      Bitmap.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000CE0E0000D80E00001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777777777777777777777777777777770F77770F7777777777777000F777777
        0F7777000F777770F777777000F77700F7777777000F700F77777777700000F7
        7777777777000F7777777777700000F777777777000F70F77777770000F77700
        F77770000F7777700F77700F7777777700F77777777777777777}
      Caption = 'Delete selected item'
      OnClick = mnuDeleteClick
    end
    object mnuModify: TMenuItem
      Bitmap.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000C40E0000C40E00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
        00003333330FFFFFFFF000300000FF0F00F0E00BFBFB0FFFFFF0E0BFBF000FFF
        F0F0E0FBFBFBF0F00FF0E0BFBF00000B0FF0E0FBFBFBFBF0FFF0E0BF0000000F
        FFF0000BFB00B0FF00F03330000B0FFFFFF0333330B0FFFF000033330B0FF00F
        0FF03330B00FFFFF0F033309030FFFFF00333330330000000333}
      Caption = 'Modify selected item'
      OnClick = mnuModifyClick
    end
    object MenuItem1: TMenuItem
      Caption = '-'
    end
    object mnuAddMore: TMenuItem
      Bitmap.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000CE0E0000D80E00001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777777777777777777744477777777777774447700000000077444777777777
        7777777777777777777777777777777777774447777777777777444770000000
        0077444777777777777777777777777777777777777777777777444777777777
        7777444770000000007744477777777777777777777777777777}
      Caption = 'Add few items at once'
      OnClick = mnuAddMoreClick
    end
  end
end
