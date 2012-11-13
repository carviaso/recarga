inherited FTeste: TFTeste
  Left = 488
  Top = 165
  Width = 425
  Height = 469
  Caption = 'FTeste'
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object Label1: TLabel
    Left = 112
    Top = 416
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
  object gbCubagem: TGroupBox
    Left = 3
    Top = 67
    Width = 409
    Height = 67
    Caption = '  Ensaio Cubagem  '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object GroupBox3: TGroupBox
      Left = 16
      Top = 17
      Width = 81
      Height = 41
      Caption = '  PV '
      TabOrder = 0
      object edPV: TEdit
        Left = 8
        Top = 13
        Width = 64
        Height = 22
        TabOrder = 0
        OnChange = edPVChange
        OnExit = edPVExit
        OnKeyPress = edEPKeyPress
      end
    end
    object GroupBox4: TGroupBox
      Left = 104
      Top = 17
      Width = 81
      Height = 41
      Caption = '  PC '
      TabOrder = 1
      object edPC: TEdit
        Left = 8
        Top = 13
        Width = 64
        Height = 22
        TabOrder = 0
        OnExit = edPVExit
        OnKeyPress = edEPKeyPress
      end
    end
    object GroupBox5: TGroupBox
      Left = 192
      Top = 17
      Width = 81
      Height = 41
      Caption = '  PC - PV '
      TabOrder = 2
      object lbPvPc: TLabel
        Left = 8
        Top = 16
        Width = 66
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
    object GroupBox6: TGroupBox
      Left = 280
      Top = 17
      Width = 121
      Height = 41
      TabOrder = 3
      object lbResultadoCubagem: TLabel
        Left = 64
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
      object Label18: TLabel
        Left = 11
        Top = 16
        Width = 39
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = '0,68%'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label19: TLabel
        Left = 63
        Top = 16
        Width = 9
        Height = 16
        Alignment = taRightJustify
        Caption = 'V'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
  object gbAltaPressao: TGroupBox
    Left = 3
    Top = 198
    Width = 409
    Height = 66
    Caption = '  Ensaio Press'#227'o A  '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    object GroupBox8: TGroupBox
      Left = 304
      Top = 15
      Width = 97
      Height = 41
      Caption = '  (ep / et) * 100  '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object lbResultadoAltaPressao: TLabel
        Left = 24
        Top = 16
        Width = 66
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = '0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object GroupBox9: TGroupBox
      Left = 16
      Top = 15
      Width = 81
      Height = 41
      Caption = '  ET '
      TabOrder = 1
      object edET: TEdit
        Left = 8
        Top = 13
        Width = 64
        Height = 22
        TabOrder = 0
        OnExit = edETExit
        OnKeyPress = edEPKeyPress
      end
    end
    object GroupBox10: TGroupBox
      Left = 104
      Top = 15
      Width = 81
      Height = 41
      Caption = ' EP '
      TabOrder = 2
      object edEP: TEdit
        Left = 8
        Top = 13
        Width = 64
        Height = 22
        TabOrder = 0
        OnExit = edETExit
        OnKeyPress = edEPKeyPress
      end
    end
  end
  object gbPercaMassa: TGroupBox
    Left = 3
    Top = 133
    Width = 409
    Height = 64
    Caption = '  Perca de Massa  '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    object GroupBox17: TGroupBox
      Left = 328
      Top = 15
      Width = 73
      Height = 41
      Caption = '  Perda  '
      TabOrder = 0
      object lbPercaMassa: TLabel
        Left = 8
        Top = 16
        Width = 50
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = '0%'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object GroupBox15: TGroupBox
      Left = 16
      Top = 16
      Width = 81
      Height = 41
      Caption = '  PV '
      TabOrder = 1
      object edPVleitura: TEdit
        Left = 8
        Top = 13
        Width = 64
        Height = 22
        Color = clSilver
        ReadOnly = True
        TabOrder = 0
      end
    end
    object GroupBox18: TGroupBox
      Left = 104
      Top = 15
      Width = 81
      Height = 41
      Caption = '  Tara '
      TabOrder = 2
      object edTara: TEdit
        Left = 8
        Top = 13
        Width = 64
        Height = 22
        TabOrder = 0
        OnExit = edETExit
        OnKeyDown = FormKeyDown
        OnKeyPress = edEPKeyPress
      end
    end
  end
  object gbResultado: TGroupBox
    Left = 3
    Top = 267
    Width = 409
    Height = 135
    Caption = ' Resultado  '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnEnter = gbResultadoEnter
    object lbMotivo: TLabel
      Left = 9
      Top = 89
      Width = 37
      Height = 14
      Caption = 'Motivo'
    end
    object mmMotivo: TMemo
      Left = 8
      Top = 33
      Width = 393
      Height = 49
      Color = clWhite
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 2
    end
    object dblMotivo: TDBLookupComboBox
      Left = 9
      Top = 105
      Width = 326
      Height = 22
      DataField = 'MOTIVO'
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
    object rbAprovado: TRadioButton
      Left = 6
      Top = 15
      Width = 113
      Height = 17
      Caption = 'Aprovado'
      TabOrder = 0
      OnClick = rbAprovadoClick
    end
    object rbReprovado: TRadioButton
      Left = 134
      Top = 15
      Width = 113
      Height = 17
      Caption = 'Reprovado'
      TabOrder = 1
    end
    object BitBtn1: TBitBtn
      Left = 338
      Top = 103
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
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333033333
        33333333373F33333333333330B03333333333337F7F33333333333330F03333
        333333337F7FF3333333333330B00333333333337F773FF33333333330F0F003
        333333337F7F773F3333333330B0B0B0333333337F7F7F7F3333333300F0F0F0
        333333377F73737F33333330B0BFBFB03333337F7F33337F33333330F0FBFBF0
        3333337F7333337F33333330BFBFBFB033333373F3333373333333330BFBFB03
        33333337FFFFF7FF3333333300000000333333377777777F333333330EEEEEE0
        33333337FFFFFF7FF3333333000000000333333777777777F33333330000000B
        03333337777777F7F33333330000000003333337777777773333}
      NumGlyphs = 2
    end
  end
  object btnCancelar: TBitBtn
    Left = 257
    Top = 405
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 6
    OnClick = btnCancelarClick
  end
  object btnAtualizar: TBitBtn
    Left = 336
    Top = 405
    Width = 75
    Height = 25
    Caption = 'Atualizar'
    TabOrder = 5
    OnClick = btnAtualizarClick
  end
  object gbEnsaioPressao: TGroupBox
    Left = 4
    Top = -2
    Width = 409
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
      Left = 104
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
        OnChange = edPVChange
        OnExit = edPVExit
        OnKeyPress = edPVKeyPress
      end
    end
    object GroupBox12: TGroupBox
      Left = 16
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
      Left = 328
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
  object edMotivos: TEdit
    Left = 12
    Top = 408
    Width = 93
    Height = 22
    Color = clSilver
    ReadOnly = True
    TabOrder = 7
  end
  object dsMotivo: TDataSource
    DataSet = DMPesquisa.cdsMotivo
    Left = 362
    Top = 271
  end
  object dsPressao: TDataSource
    DataSet = DMPesquisa.cdsPressao
    OnDataChange = dsPressaoDataChange
    Left = 393
    Top = 288
  end
end
