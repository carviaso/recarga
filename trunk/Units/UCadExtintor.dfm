inherited FCadExtintor: TFCadExtintor
  Height = 503
  Caption = 'Cadastro de Extintores'
  OldCreateOrder = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel [0]
    Left = 8
    Top = 48
    Width = 42
    Height = 14
    Caption = 'C'#243'digo:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBText1: TDBText [1]
    Left = 104
    Top = 48
    Width = 65
    Height = 17
    DataField = 'CODIGO'
    DataSource = dsCadastro
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel [2]
    Left = 8
    Top = 72
    Width = 27
    Height = 14
    Caption = 'Tipo:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel [3]
    Left = 8
    Top = 104
    Width = 60
    Height = 14
    Caption = 'Fabricante:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel [4]
    Left = 8
    Top = 171
    Width = 86
    Height = 14
    Caption = 'Ano Fabrica'#231#227'o:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel [5]
    Left = 8
    Top = 139
    Width = 66
    Height = 14
    Caption = 'Capacidade:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel [6]
    Left = 8
    Top = 203
    Width = 83
    Height = 14
    Caption = 'Ultima Vistoria:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel [7]
    Left = 8
    Top = 235
    Width = 63
    Height = 14
    Caption = 'N'#186' de S'#233'rie:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label8: TLabel [8]
    Left = 208
    Top = 139
    Width = 99
    Height = 14
    Caption = 'Nivel Manuten'#231#227'o:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label9: TLabel [9]
    Left = 208
    Top = 171
    Width = 42
    Height = 14
    Caption = 'Pintura:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label10: TLabel [10]
    Left = 208
    Top = 203
    Width = 27
    Height = 14
    Caption = 'Selo:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label11: TLabel [11]
    Left = 208
    Top = 235
    Width = 49
    Height = 14
    Caption = 'Batelada:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label12: TLabel [12]
    Left = 8
    Top = 323
    Width = 68
    Height = 14
    Caption = 'Observa'#231#227'o:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label14: TLabel [13]
    Left = 8
    Top = 267
    Width = 74
    Height = 14
    Caption = 'N'#186' do Projeto:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label15: TLabel [14]
    Left = 208
    Top = 299
    Width = 84
    Height = 14
    Caption = 'Press'#227'o Teste:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label16: TLabel [15]
    Left = 208
    Top = 267
    Width = 65
    Height = 14
    Caption = 'N'#186' do Lacre:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label17: TLabel [16]
    Left = 8
    Top = 299
    Width = 80
    Height = 14
    Caption = 'Press'#227'o Trab.:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label21: TLabel [17]
    Left = 164
    Top = 171
    Width = 32
    Height = 14
    Caption = '(yyyy)'
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label22: TLabel [18]
    Left = 164
    Top = 203
    Width = 32
    Height = 14
    Caption = '(yyyy)'
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  inherited pnControle: TPanel
    TabOrder = 16
    object btnDuplicar: TBitBtn
      Left = 488
      Top = 8
      Width = 91
      Height = 25
      Caption = '&Duplicar'
      TabOrder = 6
      OnClick = btnDuplicarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF003FFFFFFFFFFF
        FFFF33333333333FFFFF3FFFFFFFFF00000F333333333377777F33FFFFFFFF09
        990F33333333337F337F333FFFFFFF09990F33333333337F337F3333FFFFFF09
        990F33333333337FFF7F33333FFFFF00000F3333333333777773333333FFFFFF
        FFFF3FFFFF3333333F330000033FFFFF0FFF77777F3333337FF30EEE0333FFF0
        00FF7F337FFF333777FF0EEE00033F00000F7F33777F3777777F0EEE0E033000
        00007FFF7F7FF777777700000E00033000FF777773777F3777F3330EEE0E0330
        00FF337FFF7F7F3777F33300000E033000FF337777737F37773333330EEE0300
        03FF33337FFF77777333333300000333333F3333777773333333}
      NumGlyphs = 2
    end
  end
  object dblTipo: TDBLookupComboBox [20]
    Left = 104
    Top = 64
    Width = 97
    Height = 21
    DataField = 'TIPO'
    DataSource = dsCadastro
    KeyField = 'CODIGO'
    ListField = 'TIPO'
    ListSource = dsTipo
    TabOrder = 0
    OnKeyDown = dblTipoKeyDown
  end
  object dblFabricante: TDBLookupComboBox [21]
    Left = 104
    Top = 96
    Width = 249
    Height = 21
    DataField = 'FABRICANTE'
    DataSource = dsCadastro
    KeyField = 'CODIGO'
    ListField = 'DESCRICAO'
    ListSource = dsFabricante
    TabOrder = 1
    OnKeyDown = dblFabricanteKeyDown
  end
  object edAnoFabricacao: TDBEdit [22]
    Left = 104
    Top = 163
    Width = 57
    Height = 21
    CharCase = ecUpperCase
    DataField = 'ANO_FABRICACAO'
    DataSource = dsCadastro
    TabOrder = 3
    OnExit = edAnoFabricacaoExit
  end
  object edCapacidade: TDBEdit [23]
    Left = 104
    Top = 131
    Width = 57
    Height = 21
    CharCase = ecUpperCase
    DataField = 'CAPACIDADE'
    DataSource = dsCadastro
    TabOrder = 2
    OnKeyPress = edCapacidadeKeyPress
  end
  object edultimaVisita: TDBEdit [24]
    Left = 104
    Top = 195
    Width = 57
    Height = 21
    CharCase = ecUpperCase
    DataField = 'ULTIMA_VISITA'
    DataSource = dsCadastro
    TabOrder = 4
  end
  object edNserie: TDBEdit [25]
    Left = 104
    Top = 227
    Width = 57
    Height = 21
    CharCase = ecUpperCase
    DataField = 'NUMERO_SERIE'
    DataSource = dsCadastro
    TabOrder = 5
  end
  object edNManutencao: TDBEdit [26]
    Left = 312
    Top = 131
    Width = 33
    Height = 21
    CharCase = ecUpperCase
    DataField = 'NIVEL_MANUTENCAO'
    DataSource = dsCadastro
    TabOrder = 8
    OnExit = edNManutencaoExit
  end
  object edPintura: TDBComboBox [27]
    Left = 312
    Top = 163
    Width = 57
    Height = 21
    CharCase = ecUpperCase
    DataField = 'PINTURA'
    DataSource = dsCadastro
    ItemHeight = 13
    Items.Strings = (
      'SIM'
      'N'#195'O')
    TabOrder = 9
    OnKeyPress = edPinturaKeyPress
  end
  object edSelo: TDBEdit [28]
    Left = 312
    Top = 195
    Width = 89
    Height = 21
    CharCase = ecUpperCase
    DataField = 'SELO'
    DataSource = dsCadastro
    TabOrder = 10
  end
  object edBatelada: TDBEdit [29]
    Left = 312
    Top = 227
    Width = 57
    Height = 21
    CharCase = ecUpperCase
    DataField = 'BATELADA'
    DataSource = dsCadastro
    TabOrder = 11
  end
  object rtObs: TDBRichEdit [30]
    Left = 104
    Top = 323
    Width = 305
    Height = 41
    DataField = 'OBS'
    DataSource = dsCadastro
    TabOrder = 13
  end
  object ednProjeto: TDBEdit [31]
    Left = 104
    Top = 259
    Width = 57
    Height = 21
    CharCase = ecUpperCase
    DataField = 'NUMERO_PROJETO'
    DataSource = dsCadastro
    TabOrder = 6
  end
  object ednLacre: TDBEdit [32]
    Left = 312
    Top = 259
    Width = 57
    Height = 21
    CharCase = ecUpperCase
    DataField = 'NUMERO_LACRE'
    DataSource = dsCadastro
    MaxLength = 6
    TabOrder = 12
    OnExit = ednLacreExit
  end
  object edPressaoTeste: TDBEdit [33]
    Left = 312
    Top = 291
    Width = 49
    Height = 21
    TabStop = False
    CharCase = ecUpperCase
    Color = clScrollBar
    DataField = 'PRESSAO_TESTE'
    DataSource = dsCadastro
    ReadOnly = True
    TabOrder = 14
  end
  object dblPressao: TDBLookupComboBox [34]
    Left = 104
    Top = 291
    Width = 57
    Height = 21
    DataField = 'PRESSAO_TRABALHO'
    DataSource = dsCadastro
    KeyField = 'PT'
    ListField = 'PT'
    ListSource = dsPressao
    TabOrder = 7
  end
  object gbCO2: TGroupBox [35]
    Left = 7
    Top = 358
    Width = 400
    Height = 104
    Caption = '  CO2  '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 15
    object Label27: TLabel
      Left = 114
      Top = 14
      Width = 86
      Height = 14
      Caption = 'Cubagem Vazio'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label28: TLabel
      Left = 22
      Top = 14
      Width = 36
      Height = 14
      Caption = 'Norma'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label29: TLabel
      Left = 317
      Top = 14
      Width = 33
      Height = 14
      Caption = 'Litros'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label30: TLabel
      Left = 214
      Top = 14
      Width = 88
      Height = 14
      Caption = 'Cubagem Cheio'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label31: TLabel
      Left = 114
      Top = 54
      Width = 75
      Height = 14
      Caption = 'Extintor Vazio'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label32: TLabel
      Left = 214
      Top = 54
      Width = 77
      Height = 14
      Caption = 'Extintor Cheio'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object eddbPesoVazioCo2: TDBEdit
      Left = 114
      Top = 30
      Width = 64
      Height = 22
      DataField = 'PESO_VAZIO_CO2'
      DataSource = dsCadastro
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object eddbNormaCo2: TDBEdit
      Left = 21
      Top = 30
      Width = 64
      Height = 22
      DataField = 'NORMA_CO2'
      DataSource = dsCadastro
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object edLitros: TDBEdit
      Left = 316
      Top = 30
      Width = 64
      Height = 22
      DataField = 'LITROS_CO2'
      DataSource = dsCadastro
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object eddbPesoCheioCo2: TDBEdit
      Left = 214
      Top = 30
      Width = 64
      Height = 22
      DataField = 'PESO_CHEIO_CO2'
      DataSource = dsCadastro
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object DBEdit1: TDBEdit
      Left = 114
      Top = 70
      Width = 64
      Height = 22
      DataField = 'PESO_VAZIO'
      DataSource = dsCadastro
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object DBEdit2: TDBEdit
      Left = 214
      Top = 70
      Width = 64
      Height = 22
      DataField = 'PESO_CHEIO'
      DataSource = dsCadastro
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnExit = ednLacreExit
    end
  end
  object GroupBox2: TGroupBox [36]
    Left = 432
    Top = 104
    Width = 409
    Height = 67
    Caption = '  Ensaio Cubagem  '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 17
    object GroupBox3: TGroupBox
      Left = 16
      Top = 17
      Width = 81
      Height = 41
      Caption = '  PV '
      TabOrder = 0
      object edPv: TDBEdit
        Left = 6
        Top = 13
        Width = 68
        Height = 22
        Color = clScrollBar
        DataField = 'PESO_VAZIO'
        DataSource = dsCadastro
        ReadOnly = True
        TabOrder = 0
        OnExit = edPvExit
      end
    end
    object GroupBox4: TGroupBox
      Left = 104
      Top = 17
      Width = 81
      Height = 41
      Caption = '  PC '
      TabOrder = 1
      object edPc: TDBEdit
        Left = 6
        Top = 13
        Width = 68
        Height = 22
        Color = clScrollBar
        DataField = 'PESO_CHEIO'
        DataSource = dsCadastro
        ReadOnly = True
        TabOrder = 0
        OnExit = edPcExit
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
  object GroupBox7: TGroupBox [37]
    Left = 432
    Top = 180
    Width = 409
    Height = 66
    Caption = '  Ensaio Press'#227'o A  '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 18
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
      object edEt: TDBEdit
        Left = 6
        Top = 13
        Width = 68
        Height = 22
        Color = clScrollBar
        DataField = 'ET'
        DataSource = dsCadastro
        ReadOnly = True
        TabOrder = 0
      end
    end
    object GroupBox10: TGroupBox
      Left = 104
      Top = 15
      Width = 81
      Height = 41
      Caption = ' EP '
      TabOrder = 2
      object edEp: TDBEdit
        Left = 6
        Top = 13
        Width = 68
        Height = 22
        Color = clScrollBar
        DataField = 'EP'
        DataSource = dsCadastro
        ReadOnly = True
        TabOrder = 0
        OnExit = edEpExit
      end
    end
  end
  object GroupBox14: TGroupBox [38]
    Left = 432
    Top = 248
    Width = 409
    Height = 64
    Caption = '  Perca de Massa  '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 19
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
      object DBText2: TDBText
        Left = 8
        Top = 16
        Width = 65
        Height = 17
        Alignment = taRightJustify
        DataField = 'PESO_VAZIO'
        DataSource = dsCadastro
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object GroupBox18: TGroupBox
      Left = 104
      Top = 15
      Width = 81
      Height = 41
      Caption = '  Tara '
      TabOrder = 2
      object edTara: TDBEdit
        Left = 6
        Top = 13
        Width = 68
        Height = 22
        Color = clScrollBar
        DataField = 'TARA'
        DataSource = dsCadastro
        ReadOnly = True
        TabOrder = 0
        OnExit = edTaraExit
      end
    end
  end
  object GroupBox13: TGroupBox [39]
    Left = 432
    Top = 55
    Width = 81
    Height = 41
    Caption = '  PE '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 20
    object Label24: TLabel
      Left = 8
      Top = 16
      Width = 66
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = '9'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  inherited QCadastro: TIBQuery
    Active = True
    SQL.Strings = (
      'select * from ESTINTOR WHERE CLIENTE = 7771')
  end
  inherited UpdateCadastro: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  CODIGO,'
      '  CAPACIDADE,'
      '  FABRICANTE,'
      '  ANO_FABRICACAO,'
      '  ULTIMA_VISITA,'
      '  NUMERO_SERIE,'
      '  NIVEL_MANUTENCAO,'
      '  PINTURA,'
      '  SELO,'
      '  BATELADA,'
      '  OBS,'
      '  FECHAMENTO,'
      '  TIPO,'
      '  PESO_VAZIO,'
      '  PESO_CHEIO,'
      '  TARA,'
      '  ET,'
      '  EP,'
      '  CLIENTE,'
      '  NUMERO_PROJETO,'
      '  NUMERO_LACRE,'
      '  PRESSAO_TRABALHO,'
      '  RS_PERDA,'
      '  RS_EP_ET,'
      '  RS,'
      '  DATA_TESTE,'
      '  PRESSAO_TESTE,'
      '  MOTIVO,'
      '  PESO_VAZIO_CO2,'
      '  NORMA_CO2,'
      '  LITROS_CO2,'
      '  PESO_CHEIO_CO2,'
      '  LOCAL_EXTINTOR,'
      '  CARREGADO,'
      '  ORDEM'
      'from ESTINTOR '
      'where'
      '  CODIGO = :CODIGO')
    ModifySQL.Strings = (
      'update ESTINTOR'
      'set'
      '  CAPACIDADE = :CAPACIDADE,'
      '  FABRICANTE = :FABRICANTE,'
      '  ANO_FABRICACAO = :ANO_FABRICACAO,'
      '  ULTIMA_VISITA = :ULTIMA_VISITA,'
      '  NUMERO_SERIE = :NUMERO_SERIE,'
      '  NIVEL_MANUTENCAO = :NIVEL_MANUTENCAO,'
      '  PINTURA = :PINTURA,'
      '  SELO = :SELO,'
      '  BATELADA = :BATELADA,'
      '  OBS = :OBS,'
      '  FECHAMENTO = :FECHAMENTO,'
      '  TIPO = :TIPO,'
      '  PESO_VAZIO = :PESO_VAZIO,'
      '  PESO_CHEIO = :PESO_CHEIO,'
      '  TARA = :TARA,'
      '  ET = :ET,'
      '  EP = :EP,'
      '  CLIENTE = :CLIENTE,'
      '  NUMERO_PROJETO = :NUMERO_PROJETO,'
      '  NUMERO_LACRE = :NUMERO_LACRE,'
      '  PRESSAO_TRABALHO = :PRESSAO_TRABALHO,'
      '  RS_PERDA = :RS_PERDA,'
      '  RS_EP_ET = :RS_EP_ET,'
      '  RS = :RS,'
      '  DATA_TESTE = :DATA_TESTE,'
      '  PRESSAO_TESTE = :PRESSAO_TESTE,'
      '  MOTIVO = :MOTIVO,'
      '  PESO_VAZIO_CO2 = :PESO_VAZIO_CO2,'
      '  NORMA_CO2 = :NORMA_CO2,'
      '  LITROS_CO2 = :LITROS_CO2,'
      '  PESO_CHEIO_CO2 = :PESO_CHEIO_CO2,'
      '  LOCAL_EXTINTOR = :LOCAL_EXTINTOR,'
      '  CARREGADO = :CARREGADO,'
      '  ORDEM = :ORDEM'
      'where'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into ESTINTOR'
      
        '  (CAPACIDADE, FABRICANTE, ANO_FABRICACAO, ULTIMA_VISITA, NUMERO' +
        '_SERIE, '
      
        '   NIVEL_MANUTENCAO, PINTURA, SELO, BATELADA, OBS, FECHAMENTO, T' +
        'IPO, PESO_VAZIO, '
      
        '   PESO_CHEIO, TARA, ET, EP, CLIENTE, NUMERO_PROJETO, NUMERO_LAC' +
        'RE, PRESSAO_TRABALHO, '
      
        '   RS_PERDA, RS_EP_ET, RS, DATA_TESTE, PRESSAO_TESTE, MOTIVO, PE' +
        'SO_VAZIO_CO2, '
      
        '   NORMA_CO2, LITROS_CO2, PESO_CHEIO_CO2, LOCAL_EXTINTOR, CARREG' +
        'ADO, ORDEM)'
      'values'
      
        '  (:CAPACIDADE, :FABRICANTE, :ANO_FABRICACAO, :ULTIMA_VISITA, :N' +
        'UMERO_SERIE, '
      
        '   :NIVEL_MANUTENCAO, :PINTURA, :SELO, :BATELADA, :OBS, :FECHAME' +
        'NTO, :TIPO, '
      
        '   :PESO_VAZIO, :PESO_CHEIO, :TARA, :ET, :EP, :CLIENTE, :NUMERO_' +
        'PROJETO, '
      
        '   :NUMERO_LACRE, :PRESSAO_TRABALHO, :RS_PERDA, :RS_EP_ET, :RS, ' +
        ':DATA_TESTE, '
      
        '   :PRESSAO_TESTE, :MOTIVO, :PESO_VAZIO_CO2, :NORMA_CO2, :LITROS' +
        '_CO2, :PESO_CHEIO_CO2, '
      '   :LOCAL_EXTINTOR, :CARREGADO, :ORDEM)')
    DeleteSQL.Strings = (
      'delete from ESTINTOR'
      'where'
      '  CODIGO = :OLD_CODIGO')
  end
  object dsClientesComExtintores: TDataSource
    DataSet = DMPesquisa.QClientesComExtintor
    Left = 484
    Top = 44
  end
  object dsCliente: TDataSource
    DataSet = DMPesquisa.QCliente
    Left = 524
    Top = 44
  end
  object dsTipo: TDataSource
    DataSet = DMPesquisa.cdsTipo
    OnDataChange = dsTipoDataChange
    Left = 564
    Top = 44
  end
  object dsFabricante: TDataSource
    DataSet = DMPesquisa.cdsFabricante
    Left = 596
    Top = 44
  end
  object dsPressao: TDataSource
    DataSet = DMPesquisa.cdsPressao
    OnDataChange = dsPressaoDataChange
    Left = 629
    Top = 48
  end
  object dsMotivo: TDataSource
    DataSet = DMPesquisa.cdsMotivo
    Left = 420
    Top = 47
  end
  object dsPesquisa: TDataSource
    Left = 452
    Top = 44
  end
  object qaux: TIBQuery
    Database = DM.IBDatabase1
    Transaction = DM.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    Left = 332
    Top = 44
  end
end
