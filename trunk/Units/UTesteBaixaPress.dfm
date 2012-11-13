inherited FTesteBaixaPress: TFTesteBaixaPress
  Width = 324
  Height = 214
  Caption = 'Teste'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 14
  object lbMotivo: TLabel
    Left = 3
    Top = 68
    Width = 37
    Height = 14
    Caption = 'Motivo'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 172
    Top = 119
    Width = 39
    Height = 14
    Cursor = crHandPoint
    Caption = 'Limpar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = Label1Click
    OnMouseEnter = Label1MouseEnter
    OnMouseLeave = Label1MouseLeave
  end
  object gbEnsaioPressao: TGroupBox
    Left = 3
    Top = 1
    Width = 310
    Height = 67
    Caption = '  Ensaio press'#227'o  '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object GroupBox11: TGroupBox
      Left = 95
      Top = 17
      Width = 81
      Height = 41
      Caption = '  P.Teste '
      TabOrder = 1
      object edPressaoTeste: TEdit
        Left = 8
        Top = 13
        Width = 64
        Height = 22
        TabOrder = 0
      end
    end
    object GroupBox12: TGroupBox
      Left = 7
      Top = 17
      Width = 81
      Height = 41
      Caption = '  P.Trab '
      TabOrder = 0
      object dblPressao: TDBLookupComboBox
        Left = 12
        Top = 13
        Width = 57
        Height = 22
        KeyField = 'PT'
        ListField = 'PT'
        ListSource = dsPressao
        TabOrder = 0
      end
    end
    object GroupBox19: TGroupBox
      Left = 231
      Top = 17
      Width = 73
      Height = 41
      TabOrder = 2
      object Label2: TLabel
        Left = 8
        Top = 16
        Width = 50
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = '0.000'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
  object btnCancelar: TBitBtn
    Left = 159
    Top = 151
    Width = 73
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 1
    OnClick = btnCancelarClick
  end
  object btnAtualizar: TBitBtn
    Left = 238
    Top = 151
    Width = 73
    Height = 25
    Caption = 'Atualizar'
    TabOrder = 2
    OnClick = btnAtualizarClick
  end
  object dblMotivo: TDBLookupComboBox
    Left = 3
    Top = 84
    Width = 309
    Height = 22
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    KeyField = 'MOTIVO'
    ListField = 'MOTIVO'
    ListSource = dsMotivo
    ParentFont = False
    TabOrder = 3
  end
  object BitBtn1: TBitBtn
    Left = 4
    Top = 108
    Width = 63
    Height = 23
    Caption = 'Add'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = BitBtn1Click
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333333333333333333333333FFF333333333333000333333333
      3333777FFF3FFFFF33330B000300000333337F777F777773F333000E00BFBFB0
      3333777F773333F7F333000E0BFBF0003333777F7F3337773F33000E0FBFBFBF
      0333777F7F3333FF7FFF000E0BFBF0000003777F7F3337777773000E0FBFBFBF
      BFB0777F7F33FFFFFFF7000E0BF000000003777F7FF777777773000000BFB033
      33337777773FF733333333333300033333333333337773333333333333333333
      3333333333333333333333333333333333333333333333333333333333333333
      3333333333333333333333333333333333333333333333333333}
    NumGlyphs = 2
  end
  object edMotivos: TEdit
    Left = 72
    Top = 111
    Width = 93
    Height = 22
    Color = clSilver
    ReadOnly = True
    TabOrder = 5
  end
  object dsPressao: TDataSource
    DataSet = DMPesquisa.cdsPressao
    OnDataChange = dsPressaoDataChange
    Left = 112
    Top = 10
  end
  object dsMotivo: TDataSource
    DataSet = DMPesquisa.cdsMotivo
    Left = 58
    Top = 103
  end
end
