object FPrompt: TFPrompt
  Left = 660
  Top = 293
  Width = 180
  Height = 110
  BorderStyle = bsSizeToolWin
  Caption = 'FPrompt'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 32
    Height = 13
    Caption = 'Label1'
  end
  object Edit1: TEdit
    Left = 8
    Top = 24
    Width = 155
    Height = 21
    TabOrder = 0
    Text = 'Edit1'
  end
  object BitBtn1: TBitBtn
    Left = 8
    Top = 48
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 88
    Top = 48
    Width = 75
    Height = 25
    Caption = 'Confirmar'
    Default = True
    TabOrder = 2
    OnClick = BitBtn2Click
  end
end
