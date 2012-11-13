inherited FCadEstintor: TFCadEstintor
  Width = 544
  Height = 558
  Caption = 'Cadastro de Extintores'
  PixelsPerInch = 96
  TextHeight = 14
  inherited pnControle: TPanel
    Left = 421
    Height = 501
    inherited btnFechar: TBitBtn
      Top = 472
    end
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
      TabOrder = 11
    end
    object btnDuplicar: TBitBtn
      Left = 8
      Top = 216
      Width = 91
      Height = 25
      Caption = '&Duplicar'
      TabOrder = 10
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
  inherited BarraDeStatus: TStatusBar
    Top = 501
    Width = 528
  end
  inherited PageControl: TPageControl
    Width = 421
    Height = 501
    ActivePage = TabSheet1
    inherited tabPesquisa: TTabSheet
      inherited dbgCadastro: TDBGrid
        Top = 143
        Height = 314
        DataSource = dsPesquisa
        Columns = <
          item
            Expanded = False
            FieldName = 'CODIGO'
            Title.Caption = 'C'#243'digo'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 44
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NUMERO_SERIE'
            Title.Caption = 'N'#186' S'#233'rie'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SELO'
            Title.Caption = 'Selo'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ANO_FABRICACAO'
            Title.Caption = 'Fabrica'#231#227'o'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ULTIMA_VISITA'
            Title.Caption = 'Ultima Visita'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 72
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CAPACIDADE'
            Title.Caption = 'Capacidade'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Visible = True
          end>
      end
      inherited GroupBox1: TGroupBox
        Top = 0
        Height = 137
        object Label13: TLabel [0]
          Left = 8
          Top = 20
          Width = 46
          Height = 14
          Caption = 'Clientes'
        end
        object Label23: TLabel [1]
          Left = 8
          Top = 59
          Width = 60
          Height = 14
          Caption = 'N'#186' de S'#233'rie'
        end
        object Label25: TLabel [2]
          Left = 88
          Top = 59
          Width = 24
          Height = 14
          Caption = 'Selo'
        end
        object Label26: TLabel [3]
          Left = 184
          Top = 59
          Width = 57
          Height = 14
          Caption = 'Fabricante'
        end
        object Label33: TLabel [4]
          Left = 8
          Top = 98
          Width = 39
          Height = 14
          Caption = 'C'#243'digo'
        end
        inherited edPesquisa: TComboEdit
          Left = -28
          Top = 56
          Width = 25
          Height = 26
        end
        object dblPesquisaCliente: TDBLookupComboBox
          Left = 8
          Top = 36
          Width = 393
          Height = 20
          Hint = 'Apenas Clientes com extintores'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          KeyField = 'CODIGO'
          ListField = 'DESCRICAO'
          ListSource = dsClientesComExtintores
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnKeyDown = dblPesquisaClienteKeyDown
        end
        object edPesquisaNSerie: TEdit
          Left = 8
          Top = 75
          Width = 65
          Height = 20
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object edPesquisaSelo: TEdit
          Left = 88
          Top = 75
          Width = 81
          Height = 20
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object dblPesquisaFabricante: TDBLookupComboBox
          Left = 184
          Top = 75
          Width = 217
          Height = 20
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          KeyField = 'CODIGO'
          ListField = 'DESCRICAO'
          ListSource = dsFabricante
          ParentFont = False
          TabOrder = 4
          OnKeyDown = dblClienteKeyDown
        end
        object btnPesquisa: TBitBtn
          Left = 326
          Top = 104
          Width = 75
          Height = 25
          Caption = '&Pesquisa'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          OnClick = btnPesquisaClick
        end
        object edPesquisaCodigo: TEdit
          Left = 8
          Top = 114
          Width = 65
          Height = 20
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
      end
    end
    inherited tabCadastro: TTabSheet
      object Label3: TLabel
        Left = 8
        Top = 8
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
      object DBText1: TDBText
        Left = 104
        Top = 8
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
      object Label1: TLabel
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
      object Label2: TLabel
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
      object Label4: TLabel
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
      object Label5: TLabel
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
      object Label6: TLabel
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
      object Label7: TLabel
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
      object Label8: TLabel
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
      object Label9: TLabel
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
      object Label10: TLabel
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
      object Label11: TLabel
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
      object Label12: TLabel
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
      object Label14: TLabel
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
      object Label15: TLabel
        Left = 208
        Top = 299
        Width = 83
        Height = 14
        Caption = 'Press'#227'o Teste:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label16: TLabel
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
      object Label17: TLabel
        Left = 8
        Top = 299
        Width = 79
        Height = 14
        Caption = 'Press'#227'o Trab.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label20: TLabel
        Left = 8
        Top = 40
        Width = 42
        Height = 14
        Caption = 'Cliente:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label21: TLabel
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
      object Label22: TLabel
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
      object dblTipo: TDBLookupComboBox
        Left = 104
        Top = 64
        Width = 97
        Height = 22
        DataField = 'TIPO'
        DataSource = dsCadastro
        KeyField = 'CODIGO'
        ListField = 'TIPO'
        ListSource = dsTipo
        TabOrder = 1
        OnKeyDown = dblTipoKeyDown
      end
      object dblFabricante: TDBLookupComboBox
        Left = 104
        Top = 96
        Width = 249
        Height = 22
        DataField = 'FABRICANTE'
        DataSource = dsCadastro
        KeyField = 'CODIGO'
        ListField = 'DESCRICAO'
        ListSource = dsFabricante
        TabOrder = 2
        OnKeyDown = dblFabricanteKeyDown
      end
      object edAnoFabricacao: TDBEdit
        Left = 104
        Top = 163
        Width = 57
        Height = 22
        CharCase = ecUpperCase
        DataField = 'ANO_FABRICACAO'
        DataSource = dsCadastro
        TabOrder = 4
        OnExit = edAnoFabricacaoExit
        OnKeyPress = edCapacidadeKeyPress
      end
      object edCapacidade: TDBEdit
        Left = 104
        Top = 131
        Width = 57
        Height = 22
        CharCase = ecUpperCase
        DataField = 'CAPACIDADE'
        DataSource = dsCadastro
        TabOrder = 3
        OnKeyPress = edCapacidadeKeyPress
      end
      object edultimaVisita: TDBEdit
        Left = 104
        Top = 195
        Width = 57
        Height = 22
        CharCase = ecUpperCase
        DataField = 'ULTIMA_VISITA'
        DataSource = dsCadastro
        TabOrder = 5
        OnExit = edAnoFabricacaoExit
        OnKeyPress = edCapacidadeKeyPress
      end
      object edNserie: TDBEdit
        Left = 104
        Top = 227
        Width = 57
        Height = 22
        CharCase = ecUpperCase
        DataField = 'NUMERO_SERIE'
        DataSource = dsCadastro
        TabOrder = 6
      end
      object edNManutencao: TDBEdit
        Left = 312
        Top = 131
        Width = 33
        Height = 22
        CharCase = ecUpperCase
        DataField = 'NIVEL_MANUTENCAO'
        DataSource = dsCadastro
        TabOrder = 10
        OnExit = edNManutencaoExit
        OnKeyPress = edNManutencaoKeyPress
      end
      object edPintura: TDBComboBox
        Left = 312
        Top = 163
        Width = 57
        Height = 22
        CharCase = ecUpperCase
        DataField = 'PINTURA'
        DataSource = dsCadastro
        ItemHeight = 14
        Items.Strings = (
          'SIM'
          'N'#195'O')
        TabOrder = 11
      end
      object edSelo: TDBEdit
        Left = 312
        Top = 195
        Width = 89
        Height = 22
        CharCase = ecUpperCase
        DataField = 'SELO'
        DataSource = dsCadastro
        TabOrder = 12
      end
      object edBatelada: TDBEdit
        Left = 312
        Top = 227
        Width = 57
        Height = 22
        CharCase = ecUpperCase
        DataField = 'BATELADA'
        DataSource = dsCadastro
        TabOrder = 13
      end
      object rtObs: TDBRichEdit
        Left = 104
        Top = 323
        Width = 305
        Height = 41
        DataField = 'OBS'
        DataSource = dsCadastro
        TabOrder = 15
      end
      object ednProjeto: TDBEdit
        Left = 104
        Top = 259
        Width = 57
        Height = 22
        CharCase = ecUpperCase
        DataField = 'NUMERO_PROJETO'
        DataSource = dsCadastro
        TabOrder = 7
      end
      object ednLacre: TDBEdit
        Left = 312
        Top = 259
        Width = 57
        Height = 22
        CharCase = ecUpperCase
        DataField = 'NUMERO_LACRE'
        DataSource = dsCadastro
        MaxLength = 6
        TabOrder = 14
        OnKeyPress = edCapacidadeKeyPress
      end
      object edPressaoTeste: TDBEdit
        Left = 312
        Top = 291
        Width = 49
        Height = 22
        TabStop = False
        CharCase = ecUpperCase
        Color = clScrollBar
        DataField = 'PRESSAO_TESTE'
        DataSource = dsCadastro
        ReadOnly = True
        TabOrder = 9
        OnKeyPress = edCapacidadeKeyPress
      end
      object dblPressao: TDBLookupComboBox
        Left = 104
        Top = 291
        Width = 57
        Height = 22
        DataField = 'PRESSAO_TRABALHO'
        DataSource = dsCadastro
        KeyField = 'PT'
        ListField = 'PT'
        ListSource = dsPressao
        TabOrder = 8
      end
      object gbCO2: TGroupBox
        Left = 7
        Top = 369
        Width = 400
        Height = 104
        Caption = '  CO2  '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 16
        object Label27: TLabel
          Left = 114
          Top = 14
          Width = 85
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
          Width = 74
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
        end
      end
      object dblCliente: TDBLookupComboBox
        Left = 104
        Top = 32
        Width = 305
        Height = 22
        Hint = 'Precione a tecla F5 para'#13#10'abrir o cadastro de clientes'
        DataField = 'CLIENTE'
        DataSource = dsCadastro
        KeyField = 'CODIGO'
        ListField = 'DESCRICAO'
        ListSource = dsCliente
        TabOrder = 0
        OnKeyDown = dblClienteKeyDown
      end
    end
    object TabSheet1: TTabSheet
      Caption = '&Teste'
      ImageIndex = 2
      object GroupBox2: TGroupBox
        Left = 8
        Top = 56
        Width = 409
        Height = 67
        Caption = '  Ensaio Cubagem  '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
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
            OnExit = edPvExit
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
      object GroupBox7: TGroupBox
        Left = 8
        Top = 132
        Width = 409
        Height = 66
        Caption = '  Ensaio Press'#227'o A  '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
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
      object GroupBox14: TGroupBox
        Left = 8
        Top = 200
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
      object GroupBox13: TGroupBox
        Left = 8
        Top = 7
        Width = 81
        Height = 41
        Caption = '  PE '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
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
    end
  end
  inherited dsCadastro: TDataSource
    Left = 300
    Top = 332
  end
  object dsTipo: TDataSource [4]
    DataSet = DMPesquisa.cdsTipo
    OnDataChange = dsTipoDataChange
    Left = 412
    Top = 12
  end
  object dsFabricante: TDataSource [5]
    DataSet = DMPesquisa.cdsFabricante
    Left = 412
    Top = 52
  end
  inherited qaux: TIBQuery
    Database = DM.IBDatabase1
    Transaction = DM.IBTransaction1
    Left = 332
    Top = 44
  end
  inherited cdsCadastro: TIBTable
    Database = DM.IBDatabase1
    Transaction = DM.IBTransaction1
    TableName = 'ESTINTOR'
    Left = 372
    Top = 44
  end
  object dsCliente: TDataSource
    DataSet = DMPesquisa.QCliente
    Left = 292
    Top = 4
  end
  object dsMotivo: TDataSource
    DataSet = DMPesquisa.cdsMotivo
    Left = 172
    Top = 367
  end
  object dsPressao: TDataSource
    DataSet = DMPesquisa.cdsPressao
    OnDataChange = dsPressaoDataChange
    Left = 437
    Top = 288
  end
  object dsClientesComExtintores: TDataSource
    DataSet = DMPesquisa.QClientesComExtintor
    Left = 212
    Top = 4
  end
  object QPesquisa: TIBQuery
    Database = DM.IBDatabase1
    Transaction = DM.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    Left = 84
    Top = 236
  end
  object dsPesquisa: TDataSource
    DataSet = QPesquisa
    Left = 140
    Top = 236
  end
end
