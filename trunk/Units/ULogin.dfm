inherited FLogin: TFLogin
  Left = 297
  Top = 307
  Width = 312
  Height = 189
  Caption = 'Tela de Entreda'
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 296
    Height = 49
    Align = alTop
    Alignment = taLeftJustify
    Caption = '   Sistema de Recarga v2.1'
    Color = clBlack
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 176
      Top = 32
      Width = 124
      Height = 13
      Caption = 'fabiolindemberg@hotmail.com'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -9
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 49
    Width = 296
    Height = 83
    Align = alClient
    TabOrder = 1
    object Label2: TLabel
      Left = 8
      Top = 16
      Width = 34
      Height = 14
      Caption = 'Login:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 8
      Top = 40
      Width = 37
      Height = 14
      Caption = 'Senha:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edNome: TEdit
      Left = 48
      Top = 8
      Width = 241
      Height = 20
      CharCase = ecUpperCase
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      OnEnter = edNomeEnter
      OnExit = edNomeExit
    end
    object edSenha: TEdit
      Left = 48
      Top = 32
      Width = 241
      Height = 20
      Ctl3D = False
      ParentCtl3D = False
      PasswordChar = '*'
      TabOrder = 1
      OnEnter = edNomeEnter
      OnExit = edNomeExit
    end
    object BitBtn1: TBitBtn
      Left = 213
      Top = 56
      Width = 75
      Height = 25
      Caption = 'OK'
      Default = True
      TabOrder = 2
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 136
      Top = 56
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 3
      OnClick = BitBtn2Click
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 132
    Width = 296
    Height = 19
    Panels = <
      item
        Width = 50
      end>
  end
end
