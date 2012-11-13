inherited FCadastroCilindro: TFCadastroCilindro
  Left = 382
  Top = 204
  Width = 694
  Height = 407
  Caption = 'Cadastro Cilindro'
  PixelsPerInch = 96
  TextHeight = 14
  inherited pnControle: TPanel
    Left = 579
    Height = 352
    inherited btnFechar: TBitBtn
      Top = 320
    end
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
      TabOrder = 11
    end
    object btnImprimir: TBitBtn
      Left = 8
      Top = 208
      Width = 91
      Height = 25
      Caption = '&Imprimir'
      TabOrder = 10
      OnClick = btnImprimirClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
        8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
        8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
        8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
    end
  end
  inherited BarraDeStatus: TStatusBar
    Top = 352
    Width = 686
    Height = 21
  end
  inherited PageControl: TPageControl
    Width = 579
    Height = 352
    ActivePage = tabCadastro
    inherited tabPesquisa: TTabSheet
      inherited dbgCadastro: TDBGrid
        Top = 136
        Width = 561
        Height = 185
        Columns = <
          item
            Expanded = False
            FieldName = 'CODIGO_CILINDRO'
            Title.Caption = 'C'#243'digo'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NUMERO_RELATORIO'
            Title.Caption = 'Relat'#243'rio'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NUMERO_CILINDRO'
            Title.Caption = 'N'#186' Cilindro'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PROPRIETARIO'
            Title.Caption = 'Propriet'#225'rio'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VEICULO'
            Title.Caption = 'Ve'#237'culo'
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
            FieldName = 'NORMA'
            Title.Caption = 'Norma'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
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
          end
          item
            Expanded = False
            FieldName = 'TARA'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FABRICANTE'
            Title.Caption = 'Fabricante'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIPO_GAS'
            Title.Caption = 'Tipo G'#225's'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ROSCA'
            Title.Caption = 'Rosca'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MASSA'
            Title.Caption = 'Massa'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PERDA'
            Title.Caption = 'Perda'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRESSAO'
            Title.Caption = 'Press'#227'o'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ET'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EP'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ET_EP'
            Title.Caption = 'ET/EP'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EE'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MOTIVO_REPROVACAO'
            Title.Caption = 'Motivo'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OBS'
            Title.Caption = 'Obs'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FONE'
            Title.Caption = 'Fone'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CPF_CNPJ'
            Title.Caption = 'CPF/CNPJ'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PLACA'
            Title.Caption = 'Placa'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PESO_VAZIO'
            Title.Caption = 'Peso Vazio'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
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
            FieldName = 'NC'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RESULTADO'
            Title.Caption = 'Resultado'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Visible = True
          end>
      end
      inherited GroupBox1: TGroupBox
        Width = 561
        Height = 121
        Font.Style = []
        object Label26: TLabel [0]
          Left = 16
          Top = 24
          Width = 55
          Height = 14
          Caption = 'Propriet'#225'rio'
        end
        object Label27: TLabel [1]
          Left = 344
          Top = 24
          Width = 50
          Height = 14
          Caption = 'N'#186' Cilindro'
        end
        object Label28: TLabel [2]
          Left = 424
          Top = 24
          Width = 21
          Height = 14
          Caption = 'Selo'
        end
        object Label3: TLabel [3]
          Left = 16
          Top = 64
          Width = 57
          Height = 14
          Caption = 'N'#186' Relat'#243'rio'
        end
        inherited edPesquisa: TComboEdit
          Left = 120
          Top = -8
          Width = 17
          ButtonWidth = 0
          Visible = False
        end
        object edPesNCilindro: TEdit
          Left = 344
          Top = 40
          Width = 73
          Height = 20
          TabOrder = 1
        end
        object edPesSelo: TEdit
          Left = 424
          Top = 40
          Width = 129
          Height = 20
          TabOrder = 2
        end
        object BitBtn1: TBitBtn
          Left = 470
          Top = 64
          Width = 84
          Height = 25
          Caption = 'Pesquisa'
          TabOrder = 3
          OnClick = BitBtn1Click
        end
        object edPesquisaNRelatorio: TEdit
          Left = 16
          Top = 80
          Width = 73
          Height = 20
          TabOrder = 4
        end
        object dblPesquisaCliente: TDBLookupComboBox
          Left = 16
          Top = 41
          Width = 321
          Height = 20
          Hint = 'Apenas Clientes com extintores'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          KeyField = 'CODIGO'
          ListField = 'DESCRICAO'
          ListSource = dsCliente
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
          OnKeyDown = dblPesquisaClienteKeyDown
        end
      end
    end
    inherited tabCadastro: TTabSheet
      object Label4: TLabel
        Left = 8
        Top = 49
        Width = 36
        Height = 14
        Caption = 'Ve'#237'culo'
      end
      object Label5: TLabel
        Left = 453
        Top = 49
        Width = 26
        Height = 14
        Caption = 'Placa'
      end
      object Label6: TLabel
        Left = 8
        Top = 89
        Width = 50
        Height = 14
        Caption = 'N'#186' Cilindro'
      end
      object Label7: TLabel
        Left = 72
        Top = 89
        Width = 54
        Height = 14
        Caption = 'Fabrica'#231#227'o'
      end
      object Label8: TLabel
        Left = 136
        Top = 89
        Width = 31
        Height = 14
        Caption = 'Norma'
      end
      object Label9: TLabel
        Left = 197
        Top = 89
        Width = 57
        Height = 14
        Caption = 'Capacidade'
      end
      object Label10: TLabel
        Left = 263
        Top = 89
        Width = 22
        Height = 14
        Caption = 'Tara'
      end
      object Label11: TLabel
        Left = 323
        Top = 89
        Width = 51
        Height = 14
        Caption = 'Fabricante'
      end
      object Label12: TLabel
        Left = 512
        Top = 89
        Width = 43
        Height = 14
        Caption = 'Tipo G'#225's'
      end
      object Label15: TLabel
        Left = 136
        Top = 160
        Width = 32
        Height = 14
        Caption = 'Massa'
      end
      object Label16: TLabel
        Left = 314
        Top = 160
        Width = 53
        Height = 14
        Caption = 'Selo Imetro'
      end
      object Label17: TLabel
        Left = 193
        Top = 160
        Width = 38
        Height = 14
        Caption = 'Perda%'
      end
      object Label18: TLabel
        Left = 410
        Top = 160
        Width = 20
        Height = 14
        Caption = 'NC.:'
      end
      object Label33: TLabel
        Left = 482
        Top = 160
        Width = 82
        Height = 14
        Caption = 'N'#250'mero Relat'#243'rio'
      end
      object Label34: TLabel
        Left = 8
        Top = 8
        Width = 22
        Height = 14
        Caption = 'Data'
      end
      object Label2: TLabel
        Left = 128
        Top = 8
        Width = 98
        Height = 14
        Caption = 'Propriet'#225'rio / Oficina'
      end
      object Label1: TLabel
        Left = 8
        Top = 280
        Width = 34
        Height = 14
        Caption = 'Modelo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object dblCliente: TDBLookupComboBox
        Left = 128
        Top = 24
        Width = 441
        Height = 22
        DataField = 'CLIENTE'
        DataSource = dsCadastro
        KeyField = 'CODIGO'
        ListField = 'DESCRICAO'
        ListSource = dsCliente
        TabOrder = 1
        OnKeyDown = dblClienteKeyDown
      end
      object edNRelatorio: TDBEdit
        Left = 482
        Top = 176
        Width = 79
        Height = 22
        DataField = 'NUMERO_RELATORIO'
        DataSource = dsCadastro
        ReadOnly = True
        TabOrder = 15
      end
      object edPerda: TDBEdit
        Left = 193
        Top = 176
        Width = 115
        Height = 22
        DataField = 'PERDA'
        DataSource = dsCadastro
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 19
      end
      object edData: TDBDateEdit
        Left = 8
        Top = 24
        Width = 112
        Height = 21
        DataField = 'DATA'
        DataSource = dsCadastro
        NumGlyphs = 2
        TabOrder = 0
        OnExit = edDataExit
      end
      object edVeiculo: TDBEdit
        Left = 8
        Top = 64
        Width = 438
        Height = 22
        CharCase = ecUpperCase
        DataField = 'VEICULO'
        DataSource = dsCadastro
        TabOrder = 2
      end
      object edPlaca: TDBEdit
        Left = 453
        Top = 64
        Width = 115
        Height = 22
        CharCase = ecUpperCase
        DataField = 'PLACA'
        DataSource = dsCadastro
        TabOrder = 3
      end
      object edNCilindro: TDBEdit
        Left = 8
        Top = 104
        Width = 51
        Height = 22
        DataField = 'NUMERO_CILINDRO'
        DataSource = dsCadastro
        TabOrder = 4
      end
      object edFabricante: TDBEdit
        Left = 72
        Top = 104
        Width = 51
        Height = 22
        DataField = 'DATA_FABRICACAO'
        DataSource = dsCadastro
        TabOrder = 5
        OnExit = edFabricanteExit
      end
      object edNorma: TDBEdit
        Left = 136
        Top = 104
        Width = 51
        Height = 22
        CharCase = ecUpperCase
        DataField = 'NORMA'
        DataSource = dsCadastro
        TabOrder = 6
      end
      object edCapacidade: TDBEdit
        Left = 197
        Top = 104
        Width = 54
        Height = 22
        DataField = 'CAPACIDADE'
        DataSource = dsCadastro
        TabOrder = 7
      end
      object edTipoGas: TDBEdit
        Left = 512
        Top = 104
        Width = 54
        Height = 22
        CharCase = ecUpperCase
        DataField = 'TIPO_GAS'
        DataSource = dsCadastro
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 10
      end
      object dblFabricante: TDBLookupComboBox
        Left = 323
        Top = 104
        Width = 183
        Height = 22
        DataField = 'FABRICANTE'
        DataSource = dsCadastro
        KeyField = 'CODIGO'
        ListField = 'DESCRICAO'
        ListSource = dsFabricante
        TabOrder = 9
      end
      object GroupBox2: TGroupBox
        Left = 8
        Top = 136
        Width = 121
        Height = 70
        Caption = '  Verifica'#231#245'es  '
        TabOrder = 11
        object Label13: TLabel
          Left = 8
          Top = 16
          Width = 31
          Height = 14
          Caption = 'Rosca'
        end
        object Label14: TLabel
          Left = 72
          Top = 16
          Width = 33
          Height = 14
          Caption = 'Interna'
        end
        object Bevel1: TBevel
          Left = 59
          Top = 17
          Width = 2
          Height = 51
        end
        object Bevel2: TBevel
          Left = 0
          Top = 31
          Width = 120
          Height = 2
        end
        object cbxRosca: TDBComboBox
          Left = 6
          Top = 40
          Width = 50
          Height = 22
          DataField = 'ROSCA'
          DataSource = dsCadastro
          ItemHeight = 14
          Items.Strings = (
            'C'
            'NC')
          TabOrder = 0
          OnExit = cbxRoscaExit
        end
        object cbxInterna: TDBComboBox
          Left = 66
          Top = 40
          Width = 50
          Height = 22
          DataField = 'INTERNA'
          DataSource = dsCadastro
          ItemHeight = 14
          Items.Strings = (
            'C'
            'NC')
          TabOrder = 1
          OnExit = cbxInternaExit
        end
      end
      object edSelo: TDBEdit
        Left = 314
        Top = 176
        Width = 90
        Height = 22
        DataField = 'SELO'
        DataSource = dsCadastro
        TabOrder = 13
      end
      object edNC: TDBEdit
        Left = 410
        Top = 176
        Width = 68
        Height = 22
        DataField = 'NC'
        DataSource = dsCadastro
        TabOrder = 14
      end
      object GroupBox3: TGroupBox
        Left = 8
        Top = 208
        Width = 561
        Height = 70
        Caption = '  Ensaio Hidrost'#225'tico  '
        TabOrder = 16
        object Label19: TLabel
          Left = 8
          Top = 16
          Width = 40
          Height = 14
          Caption = 'Press'#227'o'
        end
        object Label20: TLabel
          Left = 83
          Top = 16
          Width = 12
          Height = 14
          Caption = 'ET'
        end
        object Bevel3: TBevel
          Left = 59
          Top = 18
          Width = 2
          Height = 51
        end
        object Bevel4: TBevel
          Left = 0
          Top = 31
          Width = 561
          Height = 2
        end
        object Bevel5: TBevel
          Left = 118
          Top = 18
          Width = 2
          Height = 51
        end
        object Bevel6: TBevel
          Left = 179
          Top = 18
          Width = 2
          Height = 51
        end
        object Bevel7: TBevel
          Left = 243
          Top = 18
          Width = 2
          Height = 51
        end
        object Bevel8: TBevel
          Left = 313
          Top = 18
          Width = 2
          Height = 51
        end
        object Bevel9: TBevel
          Left = 374
          Top = 18
          Width = 2
          Height = 51
        end
        object Label21: TLabel
          Left = 143
          Top = 16
          Width = 12
          Height = 14
          Caption = 'EP'
        end
        object Label22: TLabel
          Left = 198
          Top = 16
          Width = 27
          Height = 14
          Caption = 'ET/EP'
        end
        object Label23: TLabel
          Left = 274
          Top = 16
          Width = 12
          Height = 14
          Caption = 'EE'
        end
        object Label24: TLabel
          Left = 321
          Top = 16
          Width = 48
          Height = 14
          Caption = 'Resultado'
        end
        object Label25: TLabel
          Left = 383
          Top = 16
          Width = 93
          Height = 14
          Caption = 'Motivo Reprova'#231#227'o'
        end
        object edPressao: TDBEdit
          Left = 9
          Top = 40
          Width = 41
          Height = 22
          DataField = 'PRESSAO'
          DataSource = dsCadastro
          TabOrder = 0
        end
        object edET: TDBEdit
          Left = 69
          Top = 40
          Width = 41
          Height = 22
          DataField = 'ET'
          DataSource = dsCadastro
          TabOrder = 1
        end
        object edEP: TDBEdit
          Left = 128
          Top = 40
          Width = 41
          Height = 22
          DataField = 'EP'
          DataSource = dsCadastro
          TabOrder = 2
        end
        object edETEP: TDBEdit
          Left = 186
          Top = 40
          Width = 50
          Height = 22
          DataField = 'ET_EP'
          DataSource = dsCadastro
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 3
        end
        object edEE: TDBEdit
          Left = 254
          Top = 40
          Width = 50
          Height = 22
          DataField = 'EE'
          DataSource = dsCadastro
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 4
        end
        object cbxMotivoReprovacao: TDBComboBox
          Left = 381
          Top = 40
          Width = 174
          Height = 22
          DataField = 'MOTIVO_REPROVACAO'
          DataSource = dsCadastro
          ItemHeight = 14
          Items.Strings = (
            'Corros'#227'o'
            'Rosca'
            'Perca Massa'
            'Teste Hidrost'#225'tico')
          TabOrder = 6
          OnExit = cbxMotivoReprovacaoExit
          OnKeyPress = cbxMotivoReprovacaoKeyPress
        end
        object cbxResultado: TDBComboBox
          Left = 320
          Top = 40
          Width = 50
          Height = 22
          DataField = 'RESULTADO'
          DataSource = dsCadastro
          ItemHeight = 14
          Items.Strings = (
            'C'
            'NC')
          ReadOnly = True
          TabOrder = 5
        end
      end
      object RLReport1: TRLReport
        Left = 344
        Top = 360
        Width = 794
        Height = 1123
        DataSource = dsCadastro
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Margins.BottomMargin = 5.000000000000000000
        object RLBand1: TRLBand
          Left = 38
          Top = 38
          Width = 718
          Height = 1036
          object RLDraw59: TRLDraw
            Left = 0
            Top = 158
            Width = 718
            Height = 22
          end
          object RLDraw57: TRLDraw
            Left = 0
            Top = 392
            Width = 317
            Height = 81
          end
          object RLDraw7: TRLDraw
            Left = 0
            Top = 238
            Width = 80
            Height = 56
          end
          object RLDraw49: TRLDraw
            Left = 0
            Top = 714
            Width = 718
            Height = 38
          end
          object RLDraw1: TRLDraw
            Left = 0
            Top = 55
            Width = 718
            Height = 49
          end
          object RLMemo1: TRLMemo
            Left = 2
            Top = 58
            Width = 714
            Height = 44
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -21
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Lines.Strings = (
              'Relat'#243'rio de inspe'#231#227'o peri'#243'dica em cilindros de a'#231'o'
              ' sem costura para gases, conforme a NBR 12274')
            ParentFont = False
          end
          object RLDraw2: TRLDraw
            Left = 0
            Top = 0
            Width = 561
            Height = 56
          end
          object RLDraw3: TRLDraw
            Left = 560
            Top = 0
            Width = 158
            Height = 56
          end
          object RLDraw4: TRLDraw
            Left = 0
            Top = 103
            Width = 718
            Height = 19
          end
          object RLLabel1: TRLLabel
            Left = 2
            Top = 104
            Width = 714
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'Dados do propriet'#225'rio'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDraw5: TRLDraw
            Left = 0
            Top = 121
            Width = 718
            Height = 38
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
          end
          object rlProprietario: TRLLabel
            Left = 8
            Top = 124
            Width = 388
            Height = 14
            Caption = 
              'Propriet'#225'rio: __________________________________________________' +
              '____'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object lbFonePropri: TRLLabel
            Left = 408
            Top = 124
            Width = 147
            Height = 14
            Caption = 'Fone: ___________________'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object lbCpfCnpj: TRLLabel
            Left = 568
            Top = 124
            Width = 142
            Height = 14
            Caption = 'CPF: ___________________'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel5: TRLLabel
            Left = 8
            Top = 141
            Width = 42
            Height = 14
            Caption = 'Veiculo:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText4: TRLDBText
            Left = 55
            Top = 141
            Width = 461
            Height = 16
            AutoSize = False
            DataField = 'VEICULO'
            DataSource = dsCadastro
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel6: TRLLabel
            Left = 568
            Top = 141
            Width = 41
            Height = 14
            Caption = 'PLACA:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText5: TRLDBText
            Left = 622
            Top = 141
            Width = 91
            Height = 16
            AutoSize = False
            DataField = 'PLACA'
            DataSource = dsCadastro
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDraw6: TRLDraw
            Left = 0
            Top = 219
            Width = 718
            Height = 20
          end
          object RLLabel7: TRLLabel
            Left = 2
            Top = 221
            Width = 714
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'Dados do Cilindro'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDraw8: TRLDraw
            Left = 79
            Top = 238
            Width = 80
            Height = 56
          end
          object RLDraw9: TRLDraw
            Left = 158
            Top = 238
            Width = 80
            Height = 56
          end
          object RLDraw10: TRLDraw
            Left = 237
            Top = 238
            Width = 80
            Height = 56
          end
          object RLDraw12: TRLDraw
            Left = 395
            Top = 238
            Width = 162
            Height = 56
          end
          object RLDraw14: TRLDraw
            Left = 316
            Top = 238
            Width = 80
            Height = 56
          end
          object RLDraw11: TRLDraw
            Left = 556
            Top = 238
            Width = 162
            Height = 56
          end
          object RLDraw15: TRLDraw
            Left = 0
            Top = 293
            Width = 80
            Height = 23
          end
          object RLDraw16: TRLDraw
            Left = 79
            Top = 293
            Width = 80
            Height = 23
          end
          object RLDraw17: TRLDraw
            Left = 158
            Top = 293
            Width = 80
            Height = 23
          end
          object RLDraw18: TRLDraw
            Left = 237
            Top = 293
            Width = 80
            Height = 23
          end
          object RLDraw19: TRLDraw
            Left = 395
            Top = 293
            Width = 162
            Height = 23
          end
          object RLDraw20: TRLDraw
            Left = 316
            Top = 293
            Width = 80
            Height = 23
          end
          object RLDraw21: TRLDraw
            Left = 556
            Top = 293
            Width = 162
            Height = 23
          end
          object RLDraw13: TRLDraw
            Left = 0
            Top = 315
            Width = 159
            Height = 34
          end
          object RLDraw22: TRLDraw
            Left = 0
            Top = 348
            Width = 80
            Height = 23
          end
          object RLDraw23: TRLDraw
            Left = 79
            Top = 348
            Width = 80
            Height = 23
          end
          object RLDraw24: TRLDraw
            Left = 0
            Top = 370
            Width = 80
            Height = 23
          end
          object RLDraw25: TRLDraw
            Left = 79
            Top = 370
            Width = 80
            Height = 23
          end
          object RLDraw26: TRLDraw
            Left = 158
            Top = 315
            Width = 80
            Height = 56
          end
          object RLDraw27: TRLDraw
            Left = 158
            Top = 370
            Width = 80
            Height = 23
          end
          object RLDraw28: TRLDraw
            Left = 237
            Top = 315
            Width = 80
            Height = 56
          end
          object RLDraw29: TRLDraw
            Left = 237
            Top = 370
            Width = 80
            Height = 23
          end
          object RLDraw30: TRLDraw
            Left = 316
            Top = 315
            Width = 402
            Height = 158
          end
          object RLDraw31: TRLDraw
            Left = 0
            Top = 472
            Width = 718
            Height = 28
          end
          object RLLabel8: TRLLabel
            Left = 2
            Top = 477
            Width = 714
            Height = 18
            Alignment = taCenter
            AutoSize = False
            Caption = 'Teste Hidrost'#225'tico'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDraw32: TRLDraw
            Left = 0
            Top = 499
            Width = 80
            Height = 56
          end
          object RLDraw33: TRLDraw
            Left = 0
            Top = 554
            Width = 80
            Height = 23
          end
          object RLDraw34: TRLDraw
            Left = 79
            Top = 554
            Width = 80
            Height = 23
          end
          object RLDraw35: TRLDraw
            Left = 79
            Top = 499
            Width = 80
            Height = 56
          end
          object RLDraw36: TRLDraw
            Left = 158
            Top = 499
            Width = 80
            Height = 56
          end
          object RLDraw37: TRLDraw
            Left = 158
            Top = 554
            Width = 80
            Height = 23
          end
          object RLDraw38: TRLDraw
            Left = 237
            Top = 499
            Width = 80
            Height = 34
          end
          object RLDraw39: TRLDraw
            Left = 237
            Top = 554
            Width = 80
            Height = 23
          end
          object RLDraw40: TRLDraw
            Left = 316
            Top = 499
            Width = 80
            Height = 56
          end
          object RLDraw41: TRLDraw
            Left = 316
            Top = 554
            Width = 80
            Height = 23
          end
          object RLDraw42: TRLDraw
            Left = 395
            Top = 499
            Width = 162
            Height = 56
          end
          object RLDraw43: TRLDraw
            Left = 395
            Top = 554
            Width = 162
            Height = 23
          end
          object RLDraw44: TRLDraw
            Left = 556
            Top = 499
            Width = 162
            Height = 56
          end
          object RLDraw45: TRLDraw
            Left = 556
            Top = 554
            Width = 162
            Height = 23
          end
          object RLDraw46: TRLDraw
            Left = 237
            Top = 532
            Width = 80
            Height = 23
          end
          object RLDraw47: TRLDraw
            Left = 0
            Top = 576
            Width = 718
            Height = 20
          end
          object RLDraw48: TRLDraw
            Left = 0
            Top = 595
            Width = 718
            Height = 120
          end
          object mmTexto2: TRLMemo
            Left = 2
            Top = 597
            Width = 712
            Height = 106
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Lines.Strings = (
              
                'Observa'#231#227'o: Caso o cilindro sofra corros'#227'o excessiva, morsas, co' +
                'rtes, queimaduras por chamas ou por arco el'#233'trico, o mesmo deve ' +
                'sofrer o processo de teste novamente. Caso n'#227'o, o cilindro deve ' +
                'ser requalificado novamente no m'#234's de MMMM de AAAA')
            ParentFont = False
          end
          object RLMemo3: TRLMemo
            Left = 3
            Top = 717
            Width = 712
            Height = 32
            Alignment = taCenter
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Lines.Strings = (
              
                'Declaro para os devidos fins, que o cilindro acima relacionado, ' +
                'foi submetido '#224' inspe'#231#227'o e teste hidrost'#225'tico conforme determina' +
                ' as normas NBR a Regra Espec'#237'fica NIE-DINOP-040 do IMETRO.')
            ParentFont = False
          end
          object RLDraw50: TRLDraw
            Left = 0
            Top = 751
            Width = 272
            Height = 21
          end
          object RLDraw51: TRLDraw
            Left = 271
            Top = 751
            Width = 282
            Height = 21
          end
          object RLDraw52: TRLDraw
            Left = 552
            Top = 751
            Width = 166
            Height = 21
          end
          object RLDraw53: TRLDraw
            Left = 0
            Top = 771
            Width = 347
            Height = 187
          end
          object RLDraw54: TRLDraw
            Left = 346
            Top = 771
            Width = 372
            Height = 187
          end
          object RLDraw55: TRLDraw
            Left = 0
            Top = 957
            Width = 718
            Height = 60
          end
          object RLDraw56: TRLDraw
            Left = 0
            Top = 1016
            Width = 718
            Height = 20
          end
          object RLLabel9: TRLLabel
            Left = 5
            Top = 1018
            Width = 708
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'Site www.prevencao.com.br - Email preven'#231#227'o@prevencao-pe.com.br'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLMemo4: TRLMemo
            Left = 2
            Top = 960
            Width = 712
            Height = 48
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Lines.Strings = (
              
                'Os resultados apresentados no presente documento t'#234'm significa'#231#227 +
                'o restrita e se aplicam ao material em quest'#227'o.'
              
                'A representa'#231#227'o do documento s'#243' poder'#225' ser feita integralmente s' +
                'em nenhuma altera'#231#227'o.')
            ParentFont = False
          end
          object RLLabel10: TRLLabel
            Left = 3
            Top = 257
            Width = 74
            Height = 16
            Caption = 'N'#250'mero do'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel11: TRLLabel
            Left = 19
            Top = 351
            Width = 42
            Height = 16
            Caption = 'Rosca'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel12: TRLLabel
            Left = 81
            Top = 274
            Width = 75
            Height = 16
            Caption = 'Fabrica'#231#227'o'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel13: TRLLabel
            Left = 103
            Top = 258
            Width = 33
            Height = 16
            Caption = 'Data'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel14: TRLLabel
            Left = 165
            Top = 258
            Width = 66
            Height = 16
            Caption = 'Norma de'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel15: TRLLabel
            Left = 160
            Top = 274
            Width = 75
            Height = 16
            Caption = 'Fabrica'#231#227'o'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel16: TRLLabel
            Left = 237
            Top = 258
            Width = 80
            Height = 16
            Caption = 'Capacidade'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel17: TRLLabel
            Left = 256
            Top = 274
            Width = 39
            Height = 16
            Caption = '(dm3)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel18: TRLLabel
            Left = 339
            Top = 258
            Width = 33
            Height = 16
            Caption = 'Tara'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel19: TRLLabel
            Left = 341
            Top = 274
            Width = 27
            Height = 16
            Caption = '(kg)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel20: TRLLabel
            Left = 443
            Top = 258
            Width = 72
            Height = 16
            Caption = 'Fabricante'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel21: TRLLabel
            Left = 595
            Top = 258
            Width = 80
            Height = 16
            Caption = 'Tipo de G'#225's'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText6: TRLDBText
            Left = 5
            Top = 297
            Width = 70
            Height = 16
            Alignment = taCenter
            AutoSize = False
            DataField = 'NUMERO_CILINDRO'
            DataSource = dsCadastro
          end
          object RLDBText7: TRLDBText
            Left = 84
            Top = 297
            Width = 70
            Height = 16
            Alignment = taCenter
            AutoSize = False
            DataField = 'DATA_FABRICACAO'
            DataSource = dsCadastro
          end
          object RLDBText8: TRLDBText
            Left = 163
            Top = 297
            Width = 70
            Height = 16
            Alignment = taCenter
            AutoSize = False
            DataField = 'NORMA'
            DataSource = dsCadastro
          end
          object RLDBText9: TRLDBText
            Left = 242
            Top = 297
            Width = 70
            Height = 16
            Alignment = taCenter
            AutoSize = False
            DataField = 'CAPACIDADE'
            DataSource = dsCadastro
          end
          object RLDBText10: TRLDBText
            Left = 320
            Top = 297
            Width = 70
            Height = 16
            Alignment = taCenter
            AutoSize = False
            DataField = 'TARA'
            DataSource = dsCadastro
          end
          object RLDBText11: TRLDBText
            Left = 400
            Top = 297
            Width = 154
            Height = 16
            Alignment = taCenter
            AutoSize = False
            DataField = 'FABRICANTE'
            DataSource = dsCadastro
            BeforePrint = RLDBText11BeforePrint
          end
          object RLDBText12: TRLDBText
            Left = 600
            Top = 297
            Width = 70
            Height = 16
            Alignment = taCenter
            AutoSize = False
            DataField = 'TIPO_GAS'
            DataSource = dsCadastro
          end
          object RLLabel22: TRLLabel
            Left = 39
            Top = 321
            Width = 82
            Height = 16
            Alignment = taCenter
            Caption = 'Verifica'#231#245'es'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel23: TRLLabel
            Left = 94
            Top = 351
            Width = 49
            Height = 16
            Caption = 'Interna'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel24: TRLLabel
            Left = 164
            Top = 321
            Width = 68
            Height = 16
            Alignment = taCenter
            Caption = 'Massa(Kg)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel25: TRLLabel
            Left = 160
            Top = 353
            Width = 76
            Height = 16
            Alignment = taCenter
            Caption = 'Peso Vazio'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel26: TRLLabel
            Left = 256
            Top = 321
            Width = 42
            Height = 16
            Alignment = taCenter
            Caption = 'Perda'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel27: TRLLabel
            Left = 266
            Top = 353
            Width = 22
            Height = 16
            Alignment = taCenter
            Caption = '(%)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText13: TRLDBText
            Left = 163
            Top = 374
            Width = 70
            Height = 16
            Alignment = taCenter
            AutoSize = False
            DataField = 'MASSA'
            DataSource = dsCadastro
          end
          object RLDBText14: TRLDBText
            Left = 242
            Top = 374
            Width = 70
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'PERDA'
            DataSource = dsCadastro
            BeforePrint = RLDBText14BeforePrint
          end
          object RLLabel28: TRLLabel
            Left = 15
            Top = 506
            Width = 54
            Height = 16
            Caption = 'Press'#227'o'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel29: TRLLabel
            Left = 6
            Top = 522
            Width = 69
            Height = 16
            Caption = '(KGF/cm2)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel30: TRLLabel
            Left = 109
            Top = 506
            Width = 20
            Height = 16
            Caption = 'ET'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel31: TRLLabel
            Left = 100
            Top = 522
            Width = 38
            Height = 16
            Caption = '(cm3)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel32: TRLLabel
            Left = 180
            Top = 522
            Width = 38
            Height = 16
            Caption = '(cm3)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel33: TRLLabel
            Left = 189
            Top = 506
            Width = 21
            Height = 16
            Caption = 'EP'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel34: TRLLabel
            Left = 249
            Top = 506
            Width = 59
            Height = 16
            Caption = 'EP/ET(%)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel35: TRLLabel
            Left = 256
            Top = 535
            Width = 40
            Height = 16
            Caption = '< 10%'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel36: TRLLabel
            Left = 347
            Top = 502
            Width = 20
            Height = 16
            Alignment = taCenter
            Caption = 'EE'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel37: TRLLabel
            Left = 320
            Top = 518
            Width = 74
            Height = 16
            Alignment = taCenter
            Caption = 'EE = ET-EP'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel38: TRLLabel
            Left = 338
            Top = 534
            Width = 38
            Height = 16
            Alignment = taCenter
            Caption = '(cm3)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel39: TRLLabel
            Left = 443
            Top = 518
            Width = 68
            Height = 16
            Alignment = taCenter
            Caption = 'Resultado'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel40: TRLLabel
            Left = 574
            Top = 518
            Width = 126
            Height = 16
            Alignment = taCenter
            Caption = 'Motivo Reprova'#231#227'o'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText15: TRLDBText
            Left = 5
            Top = 558
            Width = 70
            Height = 16
            Alignment = taCenter
            AutoSize = False
            DataField = 'PRESSAO'
            DataSource = dsCadastro
          end
          object RLDBText16: TRLDBText
            Left = 84
            Top = 558
            Width = 70
            Height = 16
            Alignment = taCenter
            AutoSize = False
            DataField = 'ET'
            DataSource = dsCadastro
          end
          object RLDBText17: TRLDBText
            Left = 163
            Top = 558
            Width = 70
            Height = 16
            Alignment = taCenter
            AutoSize = False
            DataField = 'EP'
            DataSource = dsCadastro
          end
          object RLDBText18: TRLDBText
            Left = 242
            Top = 558
            Width = 70
            Height = 16
            Alignment = taCenter
            AutoSize = False
            DataField = 'ET_EP'
            DataSource = dsCadastro
          end
          object RLDBText19: TRLDBText
            Left = 321
            Top = 558
            Width = 70
            Height = 16
            Alignment = taCenter
            AutoSize = False
            DataField = 'EE'
            DataSource = dsCadastro
          end
          object RLDBText20: TRLDBText
            Left = 401
            Top = 558
            Width = 150
            Height = 16
            Alignment = taCenter
            AutoSize = False
            DataField = 'RESULTADO'
            DataSource = dsCadastro
            BeforePrint = RLDBText22BeforePrint
          end
          object RLDBText21: TRLDBText
            Left = 561
            Top = 558
            Width = 154
            Height = 16
            Alignment = taCenter
            AutoSize = False
            DataField = 'MOTIVO_REPROVACAO'
            DataSource = dsCadastro
          end
          object RLDBText22: TRLDBText
            Left = 5
            Top = 754
            Width = 82
            Height = 16
            DataField = 'RESULTADO'
            DataSource = dsCadastro
            BeforePrint = RLDBText22BeforePrint
          end
          object RLDBText23: TRLDBText
            Left = 277
            Top = 754
            Width = 144
            Height = 16
            DataField = 'SELO'
            DataSource = dsCadastro
            Text = 'Selo do IMETRO: '
          end
          object RLDBText24: TRLDBText
            Left = 572
            Top = 754
            Width = 48
            Height = 16
            DataField = 'NC'
            DataSource = dsCadastro
            Text = 'NC: '
          end
          object rlEmpresa: TRLLabel
            Left = 4
            Top = 1
            Width = 544
            Height = 24
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -21
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object rlEndereco: TRLLabel
            Left = 4
            Top = 25
            Width = 544
            Height = 13
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object rlComplemento: TRLLabel
            Left = 4
            Top = 38
            Width = 544
            Height = 13
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText26: TRLDBText
            Left = 565
            Top = 21
            Width = 150
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'DATA'
            DataSource = dsCadastro
            Text = 'Data: '
            BeforePrint = RLDBText26BeforePrint
          end
          object RLDBText27: TRLDBText
            Left = 564
            Top = 38
            Width = 150
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'NUMERO_RELATORIO'
            DataSource = dsCadastro
            Text = 'N'#186' Relat'#243'rio: '
          end
          object RLLabel41: TRLLabel
            Left = 32
            Top = 403
            Width = 103
            Height = 16
            Caption = 'Calculo da Perda'
          end
          object RLLabel42: TRLLabel
            Left = 12
            Top = 427
            Width = 143
            Height = 16
            Caption = 'P(%) = 1 - Massa x 100'
          end
          object RLLabel43: TRLLabel
            Left = 79
            Top = 443
            Width = 76
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = True
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Caption = 'Tara'
          end
          object RLLabel44: TRLLabel
            Left = 176
            Top = 427
            Width = 57
            Height = 16
            Caption = 'Aprovado'
          end
          object RLLabel45: TRLLabel
            Left = 9
            Top = 774
            Width = 138
            Height = 16
            Caption = 'Responsavel Tecnico'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object rlRespTecnico: TRLLabel
            Left = 3
            Top = 875
            Width = 334
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = True
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object rlCrea: TRLLabel
            Left = 3
            Top = 891
            Width = 334
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object rlTexto1: TRLLabel
            Left = 1
            Top = 579
            Width = 49
            Height = 14
            Caption = 'Press'#227'o'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object rliLimiteRosca: TRLImage
            Left = 316
            Top = 318
            Width = 402
            Height = 153
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Center = True
            Picture.Data = {
              0A544A504547496D616765C5240000FFD8FFE000104A46494600010101006000
              600000FFDB00430006040506050406060506070706080A100A0A09090A140E0F
              0C1017141818171416161A1D251F1A1B231C1616202C20232627292A29191F2D
              302D283025282928FFDB0043010707070A080A130A0A13281A161A2828282828
              2828282828282828282828282828282828282828282828282828282828282828
              28282828282828282828282828FFC0001108009800C103012200021101031101
              FFC4001C0000020203010100000000000000000000000605070203040801FFC4
              005D100001030303010404050D06110D01000001020304000511061221310713
              22411415516116237181D30817242526323335549196A1B3429495A3C1F02737
              4445525362638293A2B1B4D1D2D4E136465564657374757683A4B2D5F1FFC400
              1B01010002030101000000000000000000000003050104060207FFC4003C1100
              02010301030904070803000000000000010203041105122151061314314161A1
              B1C11671819122345372D1D2F0233233424392A2E1526282FFDA000C03010002
              110311003F00F54D14514014640F3A2BE639CE4D0101AC756DAB48DB1C9B7675
              C386DC710C329DCEBA1B4952B68E0703CC903240CF23385D35AD82CEC425DEAE
              2D5BDC991CC96599070E29200240033950C8181924F033511A9FB2ED3FA9A3CF
              F5B99AF4F9980E4F0E80F25095652848C6C0803C3B7660F24E54A528E36EB0DD
              27EBDBF5F2E4245B8AA1A6D96B7595B4B2CB3BB72DCC1DC9EF14BC100A480942
              73939000907FB47D1EC428D2DDD430131A4465CC69C2E70B692ADAA50F7EEF0E
              3AE78C678A904EABB2AA637153393DF3A0775942821D25BEF0250B236A95B3C5
              B412AC738A89D35D9CD834EDE21DC6036FA9E850BD06325E585A59495A9C5AD3
              919DEB52D5B944F9E060715945ECFAD2C7A990A7EE12235A65BF3E3477DFDE9F
              4875D5B9DEACE372D492E2C249278273B8F3407640D73A6AE1EA8F43BBC6745D
              94EA2091901F53470B482475048E0F5F2ACADFAD74F5C6E11A144B9B2E4996B7
              11153B543D23BB04AD4D9230B48DA7C49253C63350337B27D3F3215F23BAF5C4
              2AEB2244853A1E4EE8E5F5214F25A05252028A00390A382467071594FECC205C
              66CB9571BD5E642E4DADCB394E63B694475927080DB49C104F07CC0C1C8E2809
              D89ACF4FCB96E4762E6D6E4B6E3A1D58521A5A5BC778A438A010B08C8DC524ED
              CF38A85B2F6976FBA5E9BB71B65CE105435DC152A618ED3488E8C65D3F1A55DD
              EE504858494A8E4A49482A1C96DD07759FA5459B56DF9E75B8F2995454C16D84
              B61A61614CEE4299C64E125493B93948C6066B3B976536EBABD767AE97ABE4B7
              EE498C1E716B6124161414DA9212D00307394E369C9246402006FB2DFADD7A54
              A4407D45F8AA0890C3CD2D97592A194EE6D6029391C824608E99A87BCF68BA52
              CB227B174BC371DF80B4224B6A69C2A6CAC020E024E4608248C8008C91915236
              0D370ECB3EE9706DD9126E373712E4A92F94EE584276B69C242521294F03033E
              6493CD2E3FD9759DD85706533AE6D3D70BAA6F12A4A54D171D752ADC842B7365
              25B490084EDF2F3C9C813775D6FA76D52DE8F3AE6DA16C06CC85210B7111BBC2
              037DF2D20A5ADD918DE5391C8E2BAB585FE3697D3372BCCBF1371192E06C1C17
              17D1080403CA945291C1E4D40B9D9B599CB75CADAEC9B8AED371B82EE532129E
              4943CE2B69292BDBDE046F485E0281CE4125276D4B6B0D291754B16D665CB991
              91026B53DB118B602DC6FEF4282D0A053EEE28089B9768B6ED3CD406F56B4EDA
              EE2FC34CC931DA4AA422220A92DF89C4A46FF8C5A11E104E540E36F8AB367B51
              D1CF05166F4DAF6C84C6212CBA48528A42558DBF8325C400E7DE12B4F8B915D1
              70D0B6FB86A9917C9D2E73EB7D119B544516BB80961C0EB607837E038379F172
              4E0E460547C7ECC6D0C3505289B722E47BCAAFCEBCA534572A592AF13BF178C0
              0A200404E383D79A03B751F689A7F4ECCB847B9BD292AB7B4DBB294DC471C4B4
              1C38686529E779C80465208C120900F45C75C58ED30997EEEFBF09C5C44CD723
              B91D6B7A3B241F1BA840516C020A493C6E18CE6A226F65F6B9B729339EB9DDBB
              E7EEED5E480A67087DA414200CB7F78011E139FBD1CF5CF6ABB3FB7FC3491A95
              99B31A9921C6DD75AEEE3B882A42128F0A96D29C4652900EC5A7A7960500C573
              BC5BED96872E93E5B31EDEDA02D4FB8AC270701383E6492001E64803AD2B8ED1
              6D3EB8B8447165A8F0911D2B53CCBEDC85487CA8B6C22396B72D45082AF0E55C
              8F0F52257566948FA89EB54854F9F6F976C9064C67E196C94A8A0A4829710B41
              183E69C8F2239CC15AFB30876BD42BBD41BF5EDB9CE499325C528C65EF2F96CB
              883B99276FC4B60608200E0F26806AB0DFED97E138DAA4A9FF004192A89232D2
              D1DDBC900A907701C8DC338E878EB9A85ED6491D96EB1193F89A67EC175DFA2B
              4B45D236216B832A64A6C3CE3E5D98A4ADD52D6A2A51514A539E49E4F3EFAE0E
              D687F42ED61E5F69A6607FEC2E806FA28A28028A5A8DAA7D63AB64596CD104B6
              6DFE1B94D53DDDB71DC2014B481825C590727184A47055BBC35C7ABF584AD2D0
              AF132E16A6BD1982C356D5FA6A53EB079CC82D9047C56D5019512460EEF22280
              71A294E16BFB0487DC88653C9B934E770E4230DF0FF79B02D412D9405A804904
              9008008271915CE8ED3F49B8EC46D37191BA5BEEC58F98124075D6CE16DA496F
              0540F18EA4F03278A01D28AAEEF9DAB5A23D8A1CDB0469F7A9570754C428CD43
              908EF9C42CA5C4A95DD128290952882376124806A42DFDA369F7E65C623B3DCE
              F60BCA6E4ACDBA4B4DC5006E1DF2D68DADF19F1294127191EC003A52B6BBB85E
              A3B36DB7E998CA55CAE3292C996A60B8CC264789D79CE893848C049524A8AB83
              C5745B759D8EE1728501894EA254E654FC44488AF30242120125B2E212164020
              E1249C73D39A613D0D008577B8EA5B4DD6040925C7EDB210FB92AEF0EDCB756C
              9270D32D328DFB48DC0EF585A4849C83CD2A9D41DA44896C32D5B6432A45C9E8
              6585C2485160B796E538F9CB2B09E49420B7B8E1215E5563D83510BB5F750DB7
              D154CFAA24371CB8A5E7BD2B6D2E6718E30143DBEDA60A010A4DD6FB3AFF0075
              B4A5170B498E53EAE7DAB799099986C952DD7549EE5282481DDEE6D7E03E21B8
              0A8591A9358DC2D90571AD73ADD75957236E718F57953305A2520C8754A07BDC
              04A9692DA8363BC095156DC9B5E8A0298ED1CCBD73DA5D9F44DB6E7323DA588E
              B9F7B314B65053C86DB5052485655C142B72485025276D475C9AD76276A3B5E8
              AB4274D86A62136C8F060B2DC77D1B92173243CB6CA1436A400DB67BCC1C149D
              B9ABAAD167B659632A3D9EDD0EDEC295BCB71584B492AF6E1200CFBEBBA80F30
              6B495A9A3F68178BE4D44A66FECB6DD9F4DA1BB5F7DDE39B0A9F94D37B892DF8
              579500E948792083B4032D67D49AE655AEE971D33A85CBFBED4B6E0396E30F71
              80B5801721C52E3B2E2F690AC34840092A192424A6AFBBBD9ED97A8A98D78B74
              3B8474AFBC4B52984BA80AC11B805023382467DE6B6DBA043B6426E1DB624789
              11B184311DB0DA10339E12000280A66C2BED383B796E4BD733095736E04471E6
              23F7ECB00EE765805002F78C2529E5082B39C06F95FD2966D7D6E6D3766AD935
              ABDEA6B896E74F750CB926DB0592021B0952420AD612AF8C29D9C24919208F47
              E071C0E28A02BDEC5C6AF5E9D91235C3D24C879F262C790DB695C7653E109594
              25254A38C92473C1F33561514500507A514501F33E2C7BA947B59E3B2ED63FF9
              34CFD82E9BCE7CA93FB5907EB5FACB8FEB3CCFD82FFE358038514515902FFC16
              8AC5D65DC6D32A5DB24CD7D0FCDF4628526514A768DC9712B09E07250124F992
              6B1B8697B5C87E0CCB889534DB9D5CC6DB79D5BC82E9481DE775C82A4E329091
              84924A402698A8F3A01034E691D2724BD2ECB266F7CA71F329499AF372038F16
              D6B4B8490EB4BF8B6B8F0AB0901591C54A5AF4069BB67ABFD121292AB7C67634
              426438A31C3AA2A7168255E171449CB830AC719C714B7DBE6FB5E86B85E2D32E
              4DB6ED9619F498AB5216E27BC07628A7A81E2C1EA9CAB0405281D36BB3C66930
              58D4171D4F05D94C36B6E4FAFA42A2B8B5282436970AC10E12A4E10A1CE7092B
              DA48F5B3F4549826348E808B65BBC29A5A6988F6C8AB896C80DBCA7DB8FBDC52
              DD7F7AC03DEB9B80381C00464EEE25FE0469E3A627581C83DE5B67BAB7A5A0BC
              BEF24B8A505296B7010B528903927A003A0C5693A1A11DBF6DF528C0FF00A6A4
              F3F2F8E84E858495157AE3531C8E41BDC9C7FF007AC6E04A47D3F6D6AF3EB653
              45FB8A5AEE10FBCE15F748F34B69FBD6C1C0CEC037606738A97E307A52B2743C
              14A0A45D352740028DEE56463FC3A50D3D64F58417DE9179BFA9C4CC991C7777
              8941212892E2138CAF9C2529193D719F3355DA9EA96DA5D155AE1BC378DCB3BF
              7BE3DC7B841CDE1133A09D275F768A8EF784DC232BBBEB8CC56C6ECFBF6E31E5
              B6AC0C81E7543E8AB121DD6FADDB55C2F4943329848522EB212A5E5949F190B0
              558F224F9E3C853AFC1A6729FB6BA878EBF6E6573F2FC655357E58E9B6F3E6E7
              B59C27B97149AEDE0C9236F392C961E47B45191ED154AE9780F4ED4DAB61CABB
              DF951E0CA65B8F8BC4A05092CA5453F84E795679C9E719F2A693A71823F195FC
              718FC732FF003FE1295B963A6D09F373DACE13FDDE293E3DE655B4D9609201C1
              2334647B4557E34EC6F0933EFC4818CFAEA673D3AFC6FBBF59AFA8D3B1921204
              EBF120E726F730E471C7E17DDF2F5A8FDB7D278CBFB7FD8E8D31FF0023DB5F37
              0F68FCF489EA18B85054BBD907FEDA9831F261DA5BBE425C7D69A6A146B85F04
              698996A928F5C4B20A508494F3DE64614A1D08CE79CE054B47963A5D66D45CB2
              937FBBD8965F6F71876F348B8323DA28C8F6D220B145030655E8FBFD7533E96B
              155822AB3F665F0023040BD4C1EDFEFBEFFD5507B71A57FDFF00B57E632ADA63
              EE47B45191EDAA8357C35C19FA599833AF4DA26DE198AF9F5C4B3B9B52564A79
              709E76E7230463AD3E7C0EB690332AFC3036FE3D9DF4DD7DF5D1E9BA85BEA541
              5C506F65E7AD2CEEF8B219C1C1E18C791EDA323DA2977E085BB39F4ABE7F0DCD
              FA6A15A46DFC624DEFF86E6FD2D6F623C7C3FD9E46027AF2314A1DAC7F4AED62
              4107ED34CC7F885D42F699686AC9A12F170B74EBE313186429A73D732D5B4EE0
              33853841EBECACF56BCE3FD83DE1D7D4B71D734DBCA5AD672A5131559249EB93
              CD65C3E8A9A60B228A28AF0028A28A02B5FAA1F3F5ADB8E139F8D6727D9F1829
              F2CE10F58E0EE48285C7465270720A4706907EA89CFD6BE7E0A87C731C03C1F1
              8EBEEFE5C53FD9770B3C1DE8085FA3B7948E893B471C56C4BF831F7BF431DA43
              376597626996F4B2DA4C143880AB74927BA4379255DCA80DC8572300EE478400
              1192AA90B35F62DCCA99DAF449EDA77BB0650087DA1B8A7714E4E524A480B492
              9563851A952474A8FBC59A0DE1961A9EC97030F264B4A4AD485B6E2738525492
              0A4F2470790483C135AE6491AAF74790AB5CB213B41B9DC309F67D98F7153E87
              AF56675F33D5EB5B52500A1F65B025B7D4ABBC6D2025C00720B602BA24214793
              1702CB1AE101CB8E97BF49661CCDF218421B69C8E9714B52964A5480E72B52B7
              237820E40DB8C0E6F951A4D7D56D2346DDACA927BF77635C1F126A13509658A9
              A0C8F873AFC73BFD3A393C718F474E39F6F5E31ECE4D3E5571A1ED1A81CD6FAE
              DB8B7AB425D6E647EF9D5DA9C525C51647DEA4490538C6304ABA678CE29BA7E9
              7D5F290D86757DB61A92A24AA3D909DC3D877BEAE3E4C571979C8ED46E2BED47
              652C456F7C22970E28D88DC412177428FBBBD7C4839F4C8FE2E718EE13C7F9FF
              0038A7BAA9F45D9F52CDF5DC88DA8A241968BA3F1A53E9B61717314D1D81C585
              3C508C8C7850900607269D9A81AA5A650DFC20B4BCA4800B8ED9D7B95C753B64
              819EBD001549ABD94637324EB4731C45AFA59CC524FF00971D6B892D396EEA18
              A8A8411B51F39BB59CF1C7DAA7783FBE6BE88DA8F9CDDAD1D0FF005ADDEBE5FD
              51FCFDD557D161F6B1FF002FCA7BDAEE26A9435284ABB43D1814012133963AE4
              10DA067E4C28FE715DD2A06A691116D26FF6E8CEA8001E62D4ADC9E7A80B7D49
              FCE0D27EA3B65E6DB77D30E4FBEA2E12E45C1105998A82A6DC8A973AA806DD4B
              6AC94A01DC83D79C818369A4E9F1AD5F9B8568B9494A297D2CEF8B5FF14B1BF8
              FC0F1525859C168D15C16BD337F888703FAA1B9EA5E3064DB5202319CED0DAD1
              D7DF9E83A5772EC9775B251EB586852860ADB80A053EF19748CFB3208F683563
              2E436A69E138BF8BFC0F1D26027F681F8D743E5BDC9F8431F2AE323C0E607E7C
              1FF07CFA55AC0F033F252B45D1914C980FDDA6CEBBBF01EF488EB98A6D3DDB9C
              80ADAD21092403C6E071E5CD342867E6AFA3727F4DA9A65946DAB34E49BEAEAD
              EFBF06A559A9CB28CAB159C0C7B6B03BF77038F6F5ACD47815764424F6C8ADBD
              9A6A2C02418D8183FDD0A8BD4DFD202E9CE7EE65EFF45554A76C69DDD9A6A104
              1C08D90071D140D446A327EB01740A2777C19773FBD4D4CF1CCAF7BF240B3E8A
              28A8405145140565F545A8A7B2E9E3FB27981FE58CFEAF97F96AB887DAD6AD30
              DB8E9366650968210A6212C2D380318DCF14FF0093FEB1647D51615F5ABB96C0
              9CF7ACF27FEF07F3F9F3CF4AF3EB04FA3B63D88C8E33E5515ED69D3A30517DAF
              D0E8F93D6342F273E7E39D9C637FBFDC3E1ED5757723D2E2856DC0FB192467A7
              3FFF0069CB417680C6A27215B6ED7EB9DB6FAF0080DF771CB0FB80127BA5F73E
              C1F7ABC1F21BB1934AE4679270927C581F9B9AC5E68BA16971B4B89570772428
              7B3078E6ABA9DE4E2FE96F474179C9CB5AD0FD8AD892E1BFE659DADBE1BDF359
              298D1D70D4D2AC51D8EE644C8EB8CC25323BC503B3777497424248212A073FBA
              1E6DD03B369260392C6A8D6CC4E900BCE467EE4CB64BA401859690A48E806415
              6074E955AF671AEEE5A6A59B5CEBB478D60D89EE5C9ECAA40617B800DB650A49
              4A4824F8CED4E0631C8378A675E5490513ADA5040231057C8C7B7BEAC5D6BB63
              66D2B89ECE7B9F9A58388B9B1AD6F55D29ADE8A3BB3463E136BED4F6D857DD68
              D16E425521F55C5A696D8420367BD212ADEB0B4ED4EDE0A739230336D1ECD0E0
              7DDB6B6E98FC680678C67847CFF2D74311EE9126CF990645A199539C43921CF5
              7BA4B9B521233F1FD768038C7C86BA972B5114A426E36907CF36D731D7FF0011
              5A9ED6691F6CBE52FC08798A9C04EEC8E398B66BCB1DE3EF21BBD4D421E90ADC
              EBA03A46E70F9AB39C9F3EBE74F349F61D397FB337392C5F6DAEFA64C7A6ACBB
              6B70E16E2B7280FB23A54A7A2EA4C0FB7167CE793EAA73A7EF9AF946ABCD5D5E
              D5AD4EA4766526D75F6FC0DE866314B04E514BEA89AA771DB7BB204FB0D9DD27
              FD2ABE187AAF9C5F2C63D99B33BFEF55A3D1A1F6B1FF002FCA7ADAEE18690FB5
              4868B8BFA3A12DE90D17AFD1C031DD534E0012BCA92B1D081CFB7D9533E87AB7
              8FB7B62FE057BFDEAA36F5A6750DE1DB6392EF9650BB74D6E7325167747C6209
              201CCA3C73CF43EF1569A24A8595FD2B8AB563B317BF1B5C3EE9E2AE65169218
              D1D9D44008F847ABCFCB7C91FED57D3D9CC43D351EB003DD7C91FED56BEFB597
              95EB4F7F02BDFEF74BB70D7BAB2C5A997687AD902FEA5424CC4AE144971CB795
              A93B541B4C9273B782760E0F5AFADD8EBD617F5799B6A9B52EBC61AF348D0952
              94565A19D5D9DC3C1FBA1D5D939FEBEC9E33FE156E8DA39E87BFD5BAB754474A
              CEE525725B9793F2C86DC29F90103E7A544F699A9F9FB86793D0E3171FFF003E
              AA6D55DA1DCB5DAD5DE38EC5B5252A4082D25686DC4AB1F85278788C75C048F6
              026AD2AD454D659B1656552F2A7370C7EBCC74D69AF57099763695D6F7DBACE0
              E16D4F29882233452707C42302B3ECD9C7F743182AB13B45D691E4B6F2F51BF2
              021414A69E8B1F6383FB13B5B0AC1F7107DF4AC0606074AFB55D3BA9C9E56E3B
              1B6D0AD68C3135B4F8BF41B75976A17FBD699B8DBE6B36A4C79280959698712A
              0323A12E11FAAAD6D4FF00D21AEC3D9A69D07F7A9AF37DE066DCF719E07CDCD7
              A4353E3EB0B76093E11A69EC7EF55558DB5494E8664FB5F9239CD72DA95B578C
              292C2C67C5967D14515214A145145015A7D5118FAD6DCB39FC2B38C67FB60FE7
              CD79EE33796DB201E100E149EBC738AF437D50C4A7B2DB991D7BD63F689AF3DB
              5E361A21637042719EA78FF8D6AEA2FF00654FDF2F43AEE49A4E757FF3EA6794
              A9CC00B2B1E793C7F3E959A30178C28807A9CF5FE66BE652139278CE323F9FC9
              D2B05780F053CE329F6FBEA9FACEDF3B3BCE794EC888EC5931F722430EA4B6B5
              A3BD436738DE5052A076F5FBD27D98E2BD3D639626DAA3C8F4D8538AC1CC885F
              81590483B7C4AE0104753D2BCCD389F457140A94A014B1DD0F1123C80F3E3E5F
              CD57E7656B52F41DA8B8A88A56D51262A1284F2B27052900255CF880FDD66B90
              E585152B7A75BB53C7CD7CFB389C872828A8578CD76A1B28A28AF9F142145145
              00515CF71991EDD6F953A6B9DD458CD2DF79CC13B509054A381C9C007A571E9B
              BFDAF535A9BB958E5A65C25A9494B894A93C83820850047CE2A4546A3A6EAA8B
              D94F19C6ECF0CF131959C1294514546642962F7A6664DD41EB7B66A0B8D9E518
              A21AFD150D2C3880B2B048710AC1CA8F4F2A67AC558E09CF07CAB6EC6FABD855
              E7ADA5B32EACE13F3C9E6515358656DAFE36A8B7E97BA2C6A6BE5D98534A69D8
              C1B86D61A58C28A95DCEEC60AB9402738E3A914959DBEE6D919BEFBBF4A5036A
              F6EDCA7C8607B071EDAB7BB6E7DA5588C4721CFDAEA495CDDE5B88D12A18EF51
              82970E529212E0E8AF0A81CD55A33800E3F357D5344BDBABCB3556EA5B4DB7BF
              096EF87E08BFD0ADE34DCE71EE5FADFE9EA1451455A9D11C379C7ABDDC923A63
              1E75E8FD52ADFD845DCE00CE9B74E0003FA98D79C6F39F573B848574EBE5CF5A
              F46EA61FD01EEF93FF0036DEF3EA7D14D5C59FD5FE3E88E23949F5A8FDD5E6CB
              4A8A28A98E7C28A28A02B2FAA297B3B2F9E0148DCF303919CF8C1FE4AF3E47DC
              96DB490428800FB7181C62BD09F5456DFAD6DC7239EF59C7F8C1FF001AF3CC65
              04B683C8F08E87AD6B6A3FC1A7EF7E8759C95789D4F87A9B8B9E121684E3A601
              C63F9E682B4EC505272ADDC82715F0AD3D12003D09C75FE7CD629520127691EC
              C1AA8C1D9B9EFC64D8B210938249574F774F92ADEEC39C59D3321B0CC50D2242
              F2FA5EDCFBAB2727BC463C381809C9C9481C018269D5A92521290481D093D2A4
              B44DCA3B7A8A447446B8B535963BD4DCEDB164C87639C8DA85B690A42DA5E71F
              7A391CAB38C57EA7A5CB54B695BC1E25D6B3DDEEF5CFB8A0E514B1414F3B93FD
              7BFC7E1BCF4BD155527586A45379125256521407C0CB9E083E79EF3A7BFE5A95
              6D9ED6A4341F86744AE3B890B67BF8F3D874A4F4DCDA8650AF6A49E3CEB8AF62
              B547D91F99C8749816051484985DB12F0529D078201F17A68F3F78F9FDB5AE42
              7B5781B1D9F1F4B3D177942FD5CD38E3A9EB856D7DF61046401F7F9F10E0F387
              B13AA708FCC7498160E71C83823CF19FD5497D8D003B30D3A00C7D8DC8F61DC7
              3F366B89574D74D0DEE424242792556E8638F6FE35A56ECD6E1ABA2767F644C2
              8AD88288C0216A831959193FBA5DC9B3D73D509F92B723C8FD495ACA96165CA2
              FAF8292F5479E910CE4BAA8AAB17AE9D6E429A735EE856CA40052E43782D2AE4
              14A809040208C1C13FE6CF33BDA314636F681A0D593803D0A4E7DDD1E3E7E7E5
              D6B53D89D53847E67AE9302DB23208048F78F2AC1D50EEB20F0AC0047BF807F5
              D54435DEA1B8389674DEA1D1D787C02A71B896AB8BEA4278F114B3DE280E4724
              01920649AF8AD45DA5AC105AB2A7CBC3A76F60FCA0960F3F363DB9ACAE44EA99
              EA8FCC2B9A62F76B729173D6515C47A6A55110E34A44B1B1B5249494B8CA0F3E
              D056700E30338CD2B573BF3AE779D4332E77475B92549EE10FA9C2B7084288C0
              1B10129CEE3B42127DA339AE8F2F7D77B696CED2842DDFF2AC6EF1F13B5D2A1B
              36D16D633BC0F1451456C162715E31EAE77233D3E6E6BD1BA9B6FD622EE10494
              8D36F60E304FD8AAEA2BCE37938B7B9C919E3815E8BD404ABB04BB6E002869A7
              B3FBD9557167F57F8FA2388E527D6A3F7579B2D5A28A2A639F0A28A280ACBEA8
              CDFF005AD9E10011DF31B89F21DE0F7FC955B44EC8F55C88ED39145AC345B4A8
              2A5495B7B811C1012DAFE7CE3FD57BEB8D311F5769F76D331F7A3B4E2D0BEF19
              03702939F306A21BD217D6A321A46B7BB0D89DA3EC68F8E381D519FD75EAA53A
              7569C54BAD37E38372D2FEB59E5D178CE3C0AAA37627AB1F4AD4FDD6C5108E12
              86D2EC90AF79510DE3E4C1F96A46D3D875D537164DDAFF0009C82397531A1AD0
              E1E9C24A9640F3E483F2558DF046F98FF9717ACE3AF731FE8EB21A46F3B013AD
              AF9DE7EEB0DC6093CE7A775C7E7A87A2D2EEF1257ABDE379751F80B63B15B284
              90AB8DC49C7046CEBF9AB644EC62C31E6332952EE2EB8CE4A077C5ADAA231B82
              9A285823DCA1E79CD300D1F75CA4AB5B6A02475C08E01F9BBAF97F3D7D77475C
              159DBAD35224918C8547C8FE26BD468538BCAC7891D5D46EAB45C2736D3398F6
              656250F1AEEEA0719CDE67F5FDF150A7B16B1F882673C5254A50EF6DB6F7D5CF
              3CB8EC6538AF954A513E64F5A614E8BB86E56FD6DA94A4E380B8E3CBAF0D57D5
              68A98A490759EA70704050763F1D7FBD7BFF00CDECA936571F33485F4F631630
              7898B18EB9B3DA4E7FF8752BA7BB33B6D827197126BF928536A437060C6DC0FB
              54C476D4479E3763DD5D49D113039BBE1AEAA23FB12FB040FE268F8112B23EEC
              F55E33E5218E7F8AA6CAE3E609C6ECACA2477899938254428B61F2127F97F5D2
              47631666DDECC34D3A65CE654626406DF294F2B51C8193EDFF00801C54D8D152
              82919D65AA891E65F63E86937B20D20ECFECD34EC94EA9D45142A3E43115F6D0
              D20851E002D938C8F69FCD4C2E209E91D8D6927DE71E711752B5951CFACDFE09
              3938F179D693D8B68F7078C5D96472375C9E38E9FDD7BAA595A05E247DD9EAEE
              3FEB8DFD1D7C3D9FBA4A89D67ABBC4727131AE3F8AA6CAE20E1B4763DA4AD4FA
              9D6633F20A80CA6694CA471E612EA540138EA003EF15DEF766FA714D29B16F84
              827385A6D9089493E782CE323AF22B15767AE94E06B5D629F789CDE7F6758ABB
              3C70EDFBB4D6181E5E9AD73C83FDABDDFAE9B2B882019EC434CB05D2D4ABAB6A
              71656E6C53290A51EA7096B03E40001D0015F1EEC62C4185066E7750E9490953
              8E34A00F91290D8C8CF9023E5153A7B3951DF9D67AC8E4E7067A38E074F8BE28
              3D9D2BAFC31D5FEECCF6FE8EA3742937BCDD86A37508A8C26D2422FD6425050C
              EA98E467902D673FB7A83BAF63DAA5A94B45AAE164951C2461D925D61455E7E0
              4A5631D7F7556A7D6ED41449D65AC08E98F4F6F8FE2EB4ABB38575F861AC3EFB
              77E304FD1F4F774AC746A24B1D5EF23FD47E053BAC3B2FBE5A74B4CB8CE97682
              DC76C38E25975D51EA061396C6793E78AB4B516D4F60D76C1E4E9B7BFD1955BA
              7F65D1E7C57234ED51AB6430E7856D2E7A4A56339E4777CD6FED0ADA8B77645A
              96230B529A8D6394DA4AC02A212C287278E7E6A95429D3A7B10E3935AEAEEA5D
              CD54AAF2F182C9A28A2BC9AC1451450051451401451450051451401456A95219
              8915E9329D6D88ECA0B8E38E28252848192A24F0001C92696256B78AD4554E62
              D578996842438E5C63C605A0D9C1EF1292A0E388C1DDB9B42811C8CD00D94568
              8B20C888CBE597592E212BEEDD185A3201C2867823A1A89B5EA68D71BBDFA033
              16683665210FBE5ADCD38B5237EC6CA492A5253B729C0237278E6809D3D45237
              6209D9D9569B4F4223118DD9C78D5D7DFED1E478F2A9CB4EA366EBA86F3698F0
              E62556953687A4A823B85AD69DC108505125401048206323DA2BA74CD96269BB
              143B45B839E8711BD8DEF3B958C93C90393CD0129457C0A07A7C9F25415E752C
              6B65F6CB6A54695264DD5C71B6FD1F610D6C485296E02A0424023900F5038246
              409EA2B5A1E6D5BF6A81D876AB07383E62B666802BE2920A483D3CF15F68A035
              A5213C0C0F7015AD67041CFEAE95B95F30CF9D6A5F519F9B26B00D6AEB838F6F
              4A51ED573F5B0D5E3CBD4F33F62BA6D50DC3DD4A3DAAE0F663ABFD9EA799FB15
              D640F54514500ABF0F2D1F91EA4FD1CB8FD051F0F2D1F91EA4FD1CB8FD051450
              07C3CB47E47A93F472E3F4147C3CB47E47A93F472E3F41451401F0F2D1F91EA4
              FD1CB8FD051F0F2D1F91EA4FD1CB8FD05145007C3CB47E47A93F472E3F4147C3
              CB47E47A93F472E3F41451402E768376B3EB0D2172B12BE13C2131094F7E8D35
              7156DC282B94F7237038C1191904D65035DCD5C4546936A976E5A58096DF8D62
              BA484A56001F82311BC27A91E338C014514024B3059913B4B4FBAB7747A6DAD2
              644E74E9AB9ADE9F313CB4B5BE580AEE82BC61BC6D4101202804EDE95C386F76
              7BF06A5AAF5217709E89B7994BD2D720A9395871DC619FBE2A4A5215E1DA8C63
              05228A280D164B6408D22DD71B8317672F50E73F7091398D337143F7171654A4
              256E88E14CB40ABC4D2772480074C8247B3DB2DDA5DB66DBEBB46A2726AA5CAB
              9234C5CD852C38E053C864A19CC7DC80946E6C7440E39C828A030BADADA55DAE
              D72B14ABCDA5D7FBA8F11985A4AE3192CC5DC16FA37219C871C5019700DC368C
              70709F92EC705778D4374B74ABE5AA5CE4B4CC336ED23718A63B097038E23736
              D856E708014BFBEC0C8E0ED051406EB9D934F5D26C972441BD42B6CC662477AD
              7034CDC5A642197C3EB2A525849756B5242428846D4A94793D6C6B6EABD3D6F4
              BE98569BE450FBCA90E8674C5C101C71472A5AB0C72A27A93C9A28A03A4EBDB6
              7942D49FA3970FA0AFA75E5AF23EC2D498279FB9CB871FC4514501839AF2D8A1
              C41D499FFD3970FA0AD6AD736D38FB07527CFA76E1F41451406956B6B7F940D4
              BEFF00B9DB87D05406BFD4ECDDB42EA2B740B5EA47A5CCB6C98ECB7F07E7A772
              D6D2929192C80392393C5145016CD1451407FFD9}
            Transparent = False
            BeforePrint = rliLimiteRoscaBeforePrint
          end
          object rliCorrosao: TRLImage
            Left = 346
            Top = 807
            Width = 149
            Height = 139
            AutoSize = True
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Picture.Data = {
              0A544A504547496D616765CB1D0000FFD8FFE000104A46494600010101006000
              600000FFDB00430006040506050406060506070706080A100A0A09090A140E0F
              0C1017141818171416161A1D251F1A1B231C1616202C20232627292A29191F2D
              302D283025282928FFDB0043010707070A080A130A0A13281A161A2828282828
              2828282828282828282828282828282828282828282828282828282828282828
              28282828282828282828282828FFC0001108008B009503012200021101031101
              FFC4001C0000010501010100000000000000000000050002030406010708FFC4
              00421000010303030203020B0605030500000001020304000511061221314113
              51611422071517325371758196B3D32337425291B116247292A15582C1334345
              63F0FFC4001801000301010000000000000000000000000001020304FFC4001E
              11010002020301010100000000000000000001110231122141135171FFDA000C
              03010002110311003F00FA51E5BA1E730EAC0DC7033D39A8CADE0705E733F5D3
              DE1FB670F4F78D31C18EFDBCEB0B96D514EF88E7775CFF0071A6BAEB81070F39
              9FF51A894A246479F5AAF365B71A33AFBEE21B61B495AD6A380903A9268ECBA5
              BDEE93FF00ACE7DCB35C2F3A0F2F3BFEE35888F7BD4D7B70C8B2C38116D5D599
              13B7AD7213D9694248DA93D79EC450CD5AC6A091150DDC350C5B7301971F7971
              DA2DA7DD29C20657BCE42944907B01DE9D4FE8B86BEF3AB6DD6746665CB2F1E1
              11DB5EE756AFE54A41C927A5084FC2221871B55DEDD76B5C374808932938464F
              40AC12539F5ACBFC19592DD66BA4A664B29666BE10A8E89AFB6B924277648401
              EE67838C9FAF8AA5AB2DC926E715C4EA3B8B452511545DDECB9272729DA90080
              0ACF278E140741555E26DEC0898E2C0525F59079185939A94497B38F1578FACD
              7926969D7ED3AAB9416F4F3B2A1B4E2548698961C31C94051402AE48C11F7E7A
              E78F4BB4CE45C2DD1663095A5B90D25D485F0A0143383EB4A62604097B43DD3C
              55FDCA34C325DECF398FF51AAA66C64C911D72191208C868AC051FBBAD4A40EB
              CF031476127B4BDD9D731FEA3484977232F39FEE34C1C76A61C858C6691AC87D
              EE7F6AE63FD4735C53CF7D339F728D47E9480279CD2B34ADBAF1564BCE7D5B8E
              2A5F1DCC03E22FFDD51A063BD2E38E98FAEA6664E20234EA94BF84DD4654544F
              C4F6DEA7FF00BA752AE69BE3E13351FD916DFCE9D4AB7C74CB2D8CC895892E24
              36AE16467EFA8D4F151CEC57F4AE4AE1F7CE4F0B3D3EBA842B24E49C76ACFD69
              6954E9E7DC20D79AEACB8B57876E499972447B245588663A99DFE3CA4FBE4909
              C28A520A7DD0464A4E78EBE86ACA8704D64B5168D5CCBC3574B5DC8DB65252A0
              AC4743A093C15807A2C8C02AEA4003B538A82951F15F8B36D0EBB22E735B9B1D
              4C89311012C37E214EC5ED1C242780924138564938A8E5439909169B1B9321F8
              E4AD4D4891016FE5CDEB215BD4ADA16A072479838E08A1D1AF0D69BBD5CAD377
              BFFB4782988E20CC4E108F7C97021291804276903CF154626AAB7DBB52072DF7
              592FC25B8A5381E71D756F29C56EDAD300008E49F788FEF4E8AD6DF5DBD9B92D
              D792199F16DF22429C94971125524A485AF09206368C8C13C7CCC60D1BBA89F3
              ECD6EB42233A1CB9A03AF2DE3E2A61212125437672B56E3C673DFB0A1B3EF33D
              71EDEE5E2DD748EC31203C892EB01D53A8C292E25D4363DCCA1671F57A50FB35
              83535E994C833D56AB5A8283109CDEBDA8DC76828CA40012123073919E3934E8
              96EEF7E6E0C8172B9B863C6BDBE869B5C42428C3692A525CC8F782945601E842
              7A7205177AD169B7E9845C2C6C4E308A11214DB73E4232C1F7945237F5DA49C7
              1415A759B36A18A94CE8F785B6943325F7B621B82C95840420246D4A94A5F43D
              918A33AA7C5B7198FC00A9116E90A40706D0B4A1C4324B6471F3484A860F19C6
              0727204ABD25659288EFC7B5449709E429E75E71C71721CCA728D8B27273EA7C
              A9B15A549B6C91A42E93D87E291E1C7960A90AF421D1BF69C14E73C107CAA94F
              B39B70B75A2D2FC87AE0F30A56245CDD6D284A76F29093C2B9C0C0036850AD0C
              579CB1DB6E174D4AFC743CF3A16433B941B484A5296939E55CE4E38E567039A5
              66BDA6AF6CDE61950525B9AC1F0E547CE54CBA38524FDE0E0F7C5165AC0C1158
              18E98D7BD4A5D9915767716C1752944A5332A4A372405389463DDEC0139CD63E
              4CBB93B7082F18376B4DAA6BCB8ECB7165B8870286D00A919DB9CEE3EA33FCBC
              942DEDE95655C9AB0D0079EF5E576FB9AB4C4A8A1DBBBB718CE9433344A95B9C
              8EAC90979209C86D5CA88F2C1E95EA0CED5A414105246411DC546514A84FDA98
              7D3B7AD393B520E38AE7519A950369A39F84BD464FFD22DBF9D3A952D35FBCCD
              47F645B7F3A752ADF1D31CB6292D4049781FE73FDEA12E01D31CFA54F31A4994
              E951382B3C0FFF007AD40A69200C13E783CD673B5C178A3FAD6475D4F7DD541B
              05B65FB25C2E8B5243C9EAD368495A9431DCE303EB3E5546FDF185F2FB3E086A
              7A2CD6F084AFD85D436EC878A12BDBB8A861212B1C773DEA8DC2D56CD3CC372E
              D16B526E88538F31256E1752E84A32B4789C91B9B2BDA318DC93E4335105322E
              34FBD02C52A059EDEDA0C775892D3AA70154E71B525677F912538C9EE73D2AC3
              F25FBF4588FC34A635CADEFA5D7634A4A8042D4C9050AFFB5DCE47A501D2B385
              95A45CEEDF1D4866665C6E6BEB4AD869A7545C492949F74F2028EDC039C1C56A
              B4F4EB33CFCD16B9EC4B90F3CA79F29782D44F03FDA06D48C760291DA82B56C6
              558AD9363B0B96E4F5A194C78EB4A8A56465409240F770727D39C54502C1A7EE
              4F4A8E2024A61BDB551C2D65804A7702139D99DAA04E0704FDF51406AD76CF8C
              A4487E0CE4C796B7D9F6646E7DB5BEA50285004E49242474CE3D299A0C4B6DD7
              E3DB633712C6D3F84C69614994C853695104723952B3C9380AEDD0321055DD36
              592F415DBA426DD182021D65ADC869928013C0C9277EE4E1209039381CD5C852
              58F61445B587E3BAFB4B759F1A339B5B2A2A3EF64000673EE9238181C62B38F3
              2CB3165DCED3AB16CA5A52DA98F4901E4AD68E83070010091848E78EBDCA5BAF
              716DD6B865DBA48BCBB3D598812D27C5707036E0600C13C956319C1E94508549
              0EA34AC58D1AD604BBCBEBDCEA5C696A7666DF9D95A41DA72B182AF7474FAA29
              9362DDB52489302E11D37386530A1B4F02B015BF2F29281C9041D854071B15CE
              39AB285C1B0DD9FB84CB5DC63992AF0D731F710E34D0512AC642C9424A8F9632
              47A50FB46CB3DB6CAB6D36B0DC386CC87DE7828BA8439BFC5292127952B181DC
              850F2A0219E1D9F3D7A6AE96E6C3AA83ECF16ECF30A578AFF87EFE091C701447
              3FC07CEB417493713A9A02EDAA0E415C7792A5249536A747294AB1F33B7BDF58
              F2A7A9FBBA0BD1A1AAD326425D7560BF2D7B9095AD45BCA4209E13C6323A706A
              8AD4B9A265BF4849B5B6C86D0DB8A65CC7B328EFDCA094A79511B71CF54F6C72
              00DD4B6A725FC56B72C51E0C4852DA9D2A438E23680AC175384E49E4F24E07BB
              E55A8F8341186938E984B2E430F480C2B939478EBDBD79E98A8AEB1D1EC97080
              C216EC972232DCA90F10125A515A0B847425202C91819E07D51E8642EC0DB1A6
              2636E17986DC79A9207EC9E6FC4CF07A850DE0118FEB533370A88A9B6CD2A19E
              B5DC64F1CD463AF1DA9C178F4359A8234D023E1335267FE916DFCE9D4A969A56
              EF84BD4671FF00C45B7F3A752AE8C74C72D8BCB044874F1F3CF1F7D509F25A85
              0DF99255B588EDA9D591CE1291927FA0A21280321DCFF39FEF43AE901AB85BE5
              C27D4B0D49696CACA4F212A041C1F3E6B3BED74F3476DD76D536E122540763C2
              BACB6A6830E704B8CA3C24B6370523046D1B8E0E738E2A48D7BBB2B485960DAD
              9B722E3354A8C307C3F01692A2BFD96DC7BA94F3C8E4F4E40AB50EDAD4197259
              77505CA3BB125350E2A96E8F055865A5212A4602790AC11C6EE4F07A07D136F6
              99F847B8A5953B29110C852DD715BC256BF0D3BB7600F11452E671D3A7622AE1
              2D57C64F59B4FC7830AD336E5EC2C984B525011B96DA0049293C94ABAE467029
              DF134998A2862742805B5143C6046097424E141BDE5476F0524F1CF1D28DDE97
              716A3A5CB4B319F701CA9A7D651BC63B28670738EA0F7E9D685E9C9731C952BE
              34B40873D4E21B71D67DE6DD48415255BB8C81C8F4240A9375897A720A65C484
              989BE0B7E2BAC308054035C8E3BA9271EA0914CD436A952E3AAE7A7243916E6A
              0871216A296DDC0C6168E99DA48E9E5E5C594C608D5A85B894ECF645960B69C6
              D2569F1779EE4E1BC7D4BAB90E53F26405A9C8698C0BA8284A8A9654970A41CF
              000C0E460F271DB9078CD69B6E234966CF334AAE147709532A7929792E282369
              2E11909594A7BF5F3A3F320BD125BB3ED4C32F3EA652D18EA5F861412A52814A
              B0707DF5678E78E46392063BA6621D44A586827058DA9DAAEBCE719CF4EFDAA9
              396B7DF9BE3CC9EEED65EF12386496B6A720942C03858E31C8CE09A7628E66E4
              1D890BE338AA86ECB70B1E03A42B0B0147191C10424907BF1E758D4C3B7B9A79
              4C5EEDC5DB85A92DC174A09DEB60109F1538E4A7628ABA70411D456BAE489D70
              94A8A8CC38400509AD389538A38F9A94A92769E4FBDCF4E3AF00EFD6E43F01DB
              86A3889F8C595A1A8EF5ADC521DC2D41294051239DCA239E39CD1001F50D9ADD
              677E3A23DA9D55B56D2A425C696E879D93900254E2429606C52FAF0727A55A81
              32D5A722C19CCB6AB3B72F2A7EDAA6373CB56C5040CE41032856320E49ED9AD2
              5AED3708B01A31EEF2D2B284FEC6E0943FE1923E6E53B4923A6771A1D72B15F1
              EBBC5B929EB0B92E3A54843A623A0A5273C63C5E7BFD5934AC52790875222A6E
              16E992DB8D05D2E38D3B943A929C786A41395A9407439C13D4E73416F57790E6
              96F6EF8BE5D91EB3290F30642B787140A91E167AA811C67D47D74565D921DE23
              3B32F578933D3142FC4621AFC369253F3D2108F78F423049343A3DA6D2893637
              189CFBFA76449263C7797B9289212AD982A1BB6FBABF749F9D8A46F464E7033D
              A9DC74FEF5DE3760524E31C542C234C71F095A8FEC8B6FE74EA55DD33FBCBD47
              F645B7F3A752ADF1D31CB63521BCC878F3F38FF7A854DE0F3DEACBEA1ED0E67B
              28D315C8383594B4A79EEB78536D6D5D6E315A6E7DAA4B5BAE1056AD8AE10125
              C42FAE76240C7A647354AC56C6E3D9A0225A1B910EEA832A7BDD007D412B4AB8
              C04A3DD238EE53E668CFC28BF23FC3A9B7C575B6157077D99C7DD56D4B2D6C5A
              DC51FF00B10A1F7D0FF835810635B66086E19B15A90A623CB751CADB0846E095
              63946F0BE9C71E9571A4CED7244DB5DB6C1667EFB2D6D38DB6D942587DD216B4
              84E784925C191FC59F5EB47DE69A9AC3785BA1048712A6DC523EAE9D47A1E292
              E721D8B2FE2F535265308243097003BB076A4FF2E48C7359EB28D470AD9323C8
              82C3B2BC52EB2E17F0DA8BAADEA07BE1054A1EA00C50042D11D88B3654A72EC6
              6BCF2931B73AA6C6D292AC360240E72A57AFF4A17A9ACB608A4CC99687A638F2
              8A5096B7A895925410003C6E529473C0CF5ED55B5DB13EE9F148D3AC4490E226
              B6EBD2B782192D9CA770EA464ABFB77AD4D8A6AE759E1C97C32975D6C1586961
              690AEE011C119CD1AD06660DC6EF064BF0A4454B3887B6DCC21E2FA1D7501654
              95384056EC04F04F404FD5A2B6BCDDD34DC75DC36AD2FC702405A36024A70B04
              1E9DF8A17A392DC4B12DCBA25D626AA429C96B9402017D5804A4F4DA7200238C
              71D73572C5758529B98CC06DA36AB78432DBEDAC2D0BC2324271D92368EFCE7C
              A89101CA6B4A26C30E538EB29B317F7B0971D506BC41B87009F4571D3BE28A6A
              88D3274310E04489250EABF6DED0F29B08C6149C6D1BB39030474C554BA41BBD
              CDD4C9B3DF4436144A420C50AD838CFCEEAADC9C73D013C5599C9449431697A7
              C88F74524144B6995202D694E4ED246C248DC7664F19F2CD2910AB75B05D6669
              CB74454F4B8F476590FB2B24224388DA4A8BA3F689394E411839EB9A9DBB24BF
              F067C5126E0BF6B534A419292494E493819E4800EDE4E71DF351C5D076B88A65
              515EB8B250828586E5AD21DC8EAAE7AE7278C726A6B63736DB2E6439D3932A1B
              680F34F3A40790925594AFCC0DBC2B8A56A50B4D9040891EE769B54666E88058
              7DA4B8A4A5F424ED3B4E7193B4292559F23D49AA77D8F749BA766397D1123257
              212A69B2FA4260A52838752B0012ADFEF63C8E3CEAB21CFF0017EA27A25BA7BF
              1ECCD255E29425281246EC2C32A1CA90559DEACFF2F9E6AF2AD7A56D770930A1
              5BCA2635154EF8D1DB2F38DF20718DCADE3724F4E87347A04B4A6B7B3DFD0C32
              D484B5717139319790A0A032402783D0F4ED5AC1CE0F6AF286E24D8EDA6CB0CB
              EE313E430FB525EE5C624254DB8EA1C049C12941700F535EB29F9A3BD4E511E1
              E3DEC1B4CFEF2F527D916DFCE9D4ABBA6BF797A8F1FF0048B6FE74EA55B61A65
              96C6642BFCD3BD7E71FEF5178839FF00CD3E604890F73FC47FBD555383384D67
              5DB466F57A4CB951633715129D43322536CAC8DAEA92DF8610ACF621E3FD2B27
              6B6C690B6352112E68434A6BDAA138D61A73C45ED2A64119490771DA39E39032
              0D57BA5C2E537585C2E88BAB565B5446CC08F224B3B92FAC93BC241383EF36AE
              41FE14F1D6B970D3EB89AD2D769B73DE25B5E0DCE530EAD4E2A3ADB7028BBCF4
              DF8DBD792B3C55D21B816D72DDA9DA936A8AC88939244F5009494A93B9485F5C
              92A2B503C1EDD31CCADCA79BB2955F5A7B7BCF3C8F090D29D506CAD7B010D83F
              C0073FF39AA129BD5864BE61BD664B04ABC24BA870A929EC491DFBFDF8F5A32B
              72726D417E0B0E5C12D825A4BA420ABB80A23207DD52700B2D889A591267DBAD
              4B2C2DA0A9223A9084B686813BB6923270A3D339DA3A511B8ADD836F75BB342F
              1A5105C6D9036214A52B24951C0EA4AB19C9FBE83687B91BD41B9C7B8496A648
              4C9752F3691B9A6D0A5A92942558F79384923BE08CF6A27A82F4F5A9A75516DE
              ECA532D78EE10084EDCE36A48072BF4C6300924777D87513D99EDB61F86A7AD7
              31B42D97F66F42C280202D27949F5231D39CF14998F062DD9A896B94CC27D292
              F3B0DB4A76BA8271B8A78C1C8EA3EFCF14193AA9B72E96C8F6B65D66DFCB4EF8
              D194CB5C8F700511C28004818C1040CE71524BB343D4A1EBAB50DCF685043719
              6EBA58DC949510E2168DCA014167191CED4E451FD21788B996DB7DD94F30B95E
              CEEBAF470820A9F4ABF681200CE082A28FFB479D57D0AD5DD165431A919FF311
              5CC30EA882A52368C1EA4E46543270481EA6AADB34E0857289F17B52E03AD10E
              3CE17CBCCC849F9C8C156771273B8A474FBA88DFA24FBC470E5B5D72DB7280EA
              8B2B71214DB84B7FF293BF19C641078A5B5432EE5D96ECDBADCAD5AB184A03E9
              73D996CA94D8484A5233C6E08237648E338391CD45794C5D57AC0AA34C48B3B2
              CFB04B702B678CE789BFC141C0CF213939E8703A9A3DAA1D6E138C39022B7235
              32A22DA6C3632108C02A5A801929053C0C724E0753405564B6CE6986EC76C8D6
              EBBDB5C6C16EE2819524B670A56C27279DD9EB94734E048D5ACB0D3112D56A8D
              322486247B52D9656850690A709DAE281DBB549512120938E9D2ACA9A9FA6F49
              5D5E4FB3ADD69C71E6D0D9DA96DBDC09C1564EEC6E5739E4E3A62A06350C0B2B
              565B047931E54B2D34C1515ED49013B527201F78A800075E49ED55E129B870A7
              3D7E6263563722786EB73DCF11495A16A0A079E72140248E54103D3326AFA60B
              A9D34C16E1C38F21BBB36963D9D5BFC449284AD6A24E7796CB99DD8381D057A4
              A33DF358CD3D635C9BA44BA88A6D56E632E46B6A529412B520A0B8E81C056D38
              09E718EBD456D123A102A7238E8274E7EF3351FD8F6DFCE9D4A969BFDE66A3FB
              1EDBF9D3A956D869965B13980890EFAAD58FEB558A42527A55A978329EE73EF1
              E3EFA815CE0E38A85B18AB24F81396E5BA1C39817E2F84EBF216DFB3871656A0
              5012A0AF794791838E3D68045D573A2EADBB0B8E9F95EDAD4666384C6505B7B5
              2A715BCAC8012085E79FE5FE9EA3D3B75ED587F84BB5BBEC6E5CE34A7A332A68
              44B8069BF14B91893C849E3292A27239C1573C629C4DECA7AD042354CD87718C
              2E4AB9426FFF006A19B7F8DE3B609270B4A8E54125233C74C907346ED9A9224D
              BAADF6750C76E2920B9025B1E1BAD9DB8E0A949201383C83FF00340A5BCAB8C0
              459EDF162CC6A201ECB2DB94A64466568018F7FA95E0F23B84E7B8140EE0C424
              2E0266DA94C488ED6C71924C95B8B5B8A4B4CB61DC81BB62979232060023A53A
              B27A5FC553531E4C6624C64C17D25B6D1199F016C24F1B92A05595007C872074
              A7C3B448B6A21350A6497502495CA7253A5C5B88F0D490327A7BDE1F031D0FAD
              67D4B9D6DF88ED909EDEBB6456D7705B695B842029B1B424704A807319048092
              473D4F69FD4F0EF93AEAC4504B7054805DE816149CF7E8410A047A52302B96A2
              752136ABCD9933C3AD179F0D2480A682507725041C90A52863767F679EE055CB
              74A17F88F16D97AD5A7E027DC770A6D4F2529385B652A1B509012790A073D062
              A58DAE2C1ED4CC289216FB29296D5290952DA6C9E1216E1EE4E067D68C5C5F9C
              EC7BA4188CB6CC8114984E2940A5C51491CA48E36AB1907230A1E78A34216A12
              D2D350986A62256519538EB8038A4E321580393D3CBCEB22DA27E9FBE45B25B6
              EBED7ED49714D4590C6EF646C648595A4E4A46368071927A8A9ED1A2AD1A657F
              1ABF21E74C46CBBBDE093E1E11B49DC121446DCFBB9C0F2C8142E15EEE96ABBC
              644D8ADCBBD5DE33AF88E1612B6F69CB6CE7F85013BCE48E55BB9A983FEB326F
              FEC379BD42B6469527511F119727A93B96EB9E2A5384206421212145209C0C0A
              D8DE2F31ACCEC29575B6130229F063DCCC80E950523850039248183FD79A1561
              929BADEA54F75B6513D41C1707207885098C10406BC4076A9DDC5B20A707093C
              F622C6A60E5B988B7FB42E74296AFF00291D8DA9D8D84A9196DB18594E09C294
              79EA31C554958AB31A23774BC4B5BFBEDB6E5B13588D11A434DBCE29254D2320
              654A076F39214543818AD440D34BBBC866E9A9D6E3CF2B6BADDB8AF2C4557618
              FE2501D49E324F155B4F59A55D5515FBB42106DB0CB6B81052B3B8147CD5BA7A
              92004E13923AE6B72063A62A3295630E803CB9A78C80327BD71239FF00C57064
              D42A0234DFEF3351FD916DFCE9D4A969B18F84CD47F645B7F3A752AE8C34C72D
              8A4B1FE69EE3F8CFF7A88F975A7CA3FE65FCFF003ABFBD463907BFA5428DCF1C
              702B80820A55D29C4E78E41AE707B0FAB14063AF3A0E0CA6DFF8B1F7ADCA795E
              22D96F0B8EE2F1D54D1F74F41D314019D23AAE35C613EC3F645188D08EDA9D4B
              8E129C92167764EE192073C05280C026BD4C74E95C2390714E2643048937DD38
              FBD26ED6E8D3E3BE417E55B9B29751B46015A0F2A00791E00AC85F2F50A4CE5D
              C1932A36977DE4C890EED525135C40DAA6D08E09DD91BB3C1F0C9EC73ED453BB
              D7BD6235A683897A8F2E55BD262DE17B568790B5242D69391B8038EDD7A8EB4E
              263D2986726CCB3C6D676E8D061B6EDB6F509BF6886DC64A50A05CCB6E94E393
              EF127A10067B5568FA8A7A22BEB8921C9F6F69290B504012E1465A927DD707CE
              2500679CA4E09E455C9F70BAAB42B563870EEF1A586430F489F096A4AD1B4850
              0A4EEC67381D7FB1A2B64B0BFA963056A5B7AA35B63368621C142D6DA4EDC852
              D49C24F384ED0AE8074F357FA6BF3A2B971B259A24844A8715E98152D996FF00
              88B2D212B56D5289390A294679E86AB26FDA5AC97C9D252E445392121D54B43A
              1F716B2A214D848CA800003E5CFA5682D9A46C101695316A8E5C1C788E23C451
              FBD5935A009006024247A0C54D9C430965B74EBFB8B94E2A45A2C2938850A193
              1D4E27B38B29C1008E89E3B7DFA88363B7DB88762C46D2F91B4BA7DE7143B02B
              3927FAD1607033DA98F74E0F1E94AEE4E8F6B3B4024E2A54F913CD35AC6D03D3
              BD3B19EF532A8731CF5E291CE075A58E7815DC0C77CD200DA6BF799A8FEC8B6F
              E74EA55DD37FBCCD47F645B7F3A752AE8C350CB2D88CA1896F11FCE7FBD33A1F
              3FAEABABE0F2C4A24A9ED4249E493A86E1FAF4BE4EAC3F4DA83F10DC3F5E9711
              6B03A7AFA5738F3A83E4EEC3F4DA83F10DC3F5E97C9D587E9B507E21B87EBD1C
              472594E3A935DC6791E7D6AAFC9DD8BE9B507E21B87EBD2F93CB17D36A1FC437
              0FD7A388E4B381DF8352808E39E73547E4F2C5F4FA87F10DC3F5E97C9E58BE9F
              50FE21B87EBD2E07C97541BC1C63753329C753554FC1E588F57B50FE21B87EBD
              2F93AB0FD36A0FC4370FD7A380E6B43664E31EB4F0474354BE4EEC5F4DA83F10
              DC3F5E97C9DD8BE9B50FE21B87EBD2F99F35F0307CC531EF987BD54F93CB1FD3
              EA1FC4570FD7AE1F83BB11EAF6A0FC4370FD7A3E65CC41AF980E31F75498C73F
              F14307C1E58C747F50FE21B87EBD2F93DB1FD3EA1FC4570FD7A3E727CC446064
              E690567EAA1DF27B63FA7D43F88AE1FAF4BE4F6C7F4FA87F115C3F5E97CE4738
              41A73F799A8FEC8B6FE74EA546B4F696B5E9F952E4DB93355225A1B6DE765CF7
              E52D496CACA120BAB510017167031F38D2AD718A8A44CDCBFFD9}
            BeforePrint = rliCorrosaoBeforePrint
          end
          object rlCorrosao: TRLLabel
            Left = 353
            Top = 784
            Width = 136
            Height = 16
            Alignment = taCenter
            Caption = 'Corros'#227'o Localizada'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            BeforePrint = rlCorrosaoBeforePrint
          end
          object rliRosca: TRLImage
            Left = 495
            Top = 771
            Width = 218
            Height = 172
            AutoSize = True
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = True
            Picture.Data = {
              0A544A504547496D616765F3220000FFD8FFE000104A46494600010101006000
              600000FFDB00430006040506050406060506070706080A100A0A09090A140E0F
              0C1017141818171416161A1D251F1A1B231C1616202C20232627292A29191F2D
              302D283025282928FFDB0043010707070A080A130A0A13281A161A2828282828
              2828282828282828282828282828282828282828282828282828282828282828
              28282828282828282828282828FFC000110800AC00DA03012200021101031101
              FFC4001D000100020301010101000000000000000000050603040708020109FF
              C400461000020104010204030504070506070000010203000405111206210713
              31411422511523326181164271912433525695A1D217376275B3082582B1C1D1
              63657283A2C2E1FFC4001C010100010501010000000000000000000000010203
              0405060708FFC400391100020102030505050509010000000000000102031104
              0521123141517106618191B11314C1E1F024323334D1151722234253A1A2D2F1
              FFDA000C03010002110311003F00F54D2B572990B5C5584B797F2F956F1E8121
              4B3331215555402599988555504B120004902A11FAE3A7D33573897BD916FEDA
              786DA58DAD66016598EA34E5C3892DBD8D1FC3B6FC209A02CB4A562BAB886D2D
              66B9BB9A382DE1432492C8C151140D96627B0000D92680A2F8C9D6192E8DC574
              FCD885B632E4B356F8D91A7B596EBCB8E457259628D959D8711A50767D00D915
              098AF1752DE4CA5A672CE5B8B9B5C859E2ED0DADB35A4F7F7172A5D57E12E183
              DB851FBF2BF17E2C54FEED5D5ED30BD73638DBABFC7DE3478FBF8EFED16EE29A
              D5D268F6639429E248D36C03B1DF4C01040667A17A6F337579757F8A89AEEEDE
              DA596E2277865F32DCB1864574219645E6C03A90DC4F124800501143C4BC60B8
              E9FB79EC2FADAE7337573691C57135AC46192DEE16DE4562D300C79B7658CBB3
              004806A54756C473995B26C6DF47638A7F2EF72D2C96F1DA40440939E5CA5126
              82489B3C3409F5D024623E1FF4E35B58C0F6972F159FC40457BFB86F356E2412
              4EB36DFEF95DC02CB27207D08D76A653C3EE98CBE5E5C8E5719F1D2CB30B9920
              B9B8965B67944421121B76631161180BCB86FB0F7EF406A7871E2258F5E7C5FC
              0E23378CF87860B95FB52D961F3E29B9F97247A66E4A7CB6F9BD3E9BAAD5B788
              7975CA16BA314969F6EBE245AC780BD4010DF1B547F8E2E60D81A7238F720A7C
              A4EC5D7A5FA2307D2F746E30D15F4527C2A59013646E6E1161424A2049246501
              76DC743E5E4C06B91DC28CFF00443A374E3B5CC36F7B93B8B7479AD2EA185EF8
              CF248E22B9650825F39642A51F61D470D10280D4C8F8CFD2B639DC962A46B992
              E2CA1BD9770989FCC6B452D3461049E623008FA32AA2B7025588209DBC7F89F6
              77B8892FD7039B8BEE71F716F049F0DE65D477B298A029A98A8DB03B0ECA40AD
              AEA5F0DF0599872D2476FF000F92BDB2BBB486E19E4963B46B942B2C91425BCB
              466276C5029625B67E624E2E88F0BFA7FA57A76DB190C32DC48A969E7CCF3CDA
              965B694CC8EA8CEC231E733C9C174BB63BDD018B27E27D9E33229677D81CDC4C
              F7B0E2D64FE8CCA6F65B759E3B6ED313C88755E5AF2C31EEE17E6ACB88F14301
              98E9D199C5A5F5CDB7D9E2FDA35882C80B4AF1476E1598729A4963963555E40B
              26B639272DBC8F4BF4AB7541CBE4EDE5F8E8EEADEF435CDC4E2D0DCB2FC3C2EB
              1B379066D2AA8D02E0F03D8B292B9C2748E330DD4F969B19158DA5DBC97B95B8
              5B7921919E0DEE61A01C152864564FDE3E62125B910352C7C49B4BFC459DD59E
              07A81AFAE720D8C38A9ADE3B6BB8661034FA759644400C4A1C10C76197DF6053
              FA4FC72B593A2BA6B25D4D6373364B270DCDDDDAE1AD4CD1D85B437062371327
              332245A1F8B4DB2AFAF4D55AECBA03A33A87A796E218F257B8DCB7979012CD96
              BD2D372B7310725E5E6394321423B6D74181E200CA3C26E8B5C65AE3E1C4CB6F
              6D6D6B35927C3DF5C44ED6F2B9924864759034919624F17240D9D01B34065F17
              BAD7F613A364C94096D2E4AE268ECAC22BA93CA85E790F6E6E74155543392C54
              6908E4BB06B174FF0088F699EE97E9ECA627197D91BBCC5ABDCAD859B461E211
              32A4FB799A252124754DEF6DB05411B22D5061ECA1BAB0BA5495EE6C6D5ECE09
              6599E4711398CB062C49724C3192CDB6EDEBDCEE03ACBA5FA564C466F23D436F
              2C768C92DDE42786E2789DA310224A09898318CC70C61A31F2B796A4A9201A03
              53A93C43B4E9A8B333DF5A5F5EC76590367E559C31ABA85B05BC7625E501C08C
              39DFCA7D1429D7268F6F19BA67ECACA5E430E4A796CA6B4863B28E153717A2ED
              55AD9A04E5F3F9884B04D87015B92A91AADBB7C7F4067F018B6B38ADA7C467A6
              61662D9A448E493E024B7650148F2F56D1C89C4F10A54F60F5B49E16F472433C
              71E1F879BF064C8B7530911AD1385BB46E1F946C8BDB9210482764ECD01B78EE
              B7B1BDF0FAEFAB9AC7256B656B0DD4D35A5CC2A9729F0ECEB2214E5A0DB8D868
              9FA6F554AB4F17E6B6EACEA8C775061AE6D56CEF7198FC65846B1B5E4F3DDC6C
              DC1D84C61FDD2C0F35017D4F2ED57FB1E8FC35974DE470314173262F21E7FC4C
              5717B3CECFE703E6FCEEE5872DB13A23BB13EA49A8A1E17F497F4E6931F7335C
              5ECD6F7335D4F91B996E3CD837E4C8B3348644650C4065607475E9DA80CD90EB
              076F0D33BD4D8EB296DEE71F6B7EEB6B7C14959AD8CA8CAFE5B9047388FE16EE
              3DEA6B3394F80C8E0ADB96BED1BD6B5D795CF7AB79A5F5E4387F55EBA6FA6BE6
              E4B8ADFA5F11074BDCF4F2DBCAF89B949E39E296E2591E4133334BCA4662E4B1
              7724F2DF7F5AC38FE91C558DCDBCE8725712DBCC2E216BDCA5D5D7972797247B
              5F3646D7C9348081D8EC13DC0200A8617C6BE9CC9DEE3ED5ACB2F6725E5D5ADA
              0371146444F750F9D6A5B848DDA55E4071DF12A79F0EC4D67A6FFED01632DA49
              719CC7DCA63E1C2BE5CE4161585AE3577F0CB1C76C24978EDC85E4D28EE09215
              4835D02DFC2DE8EB7B9827870FC65826B2B88DBE2A63C64B38CC76C7F1FEE212
              35E8DEADB3DE907859D1506213169D3F6C6C96CA5C78477776F224944CC858B1
              63A9073524ED0ECA95D9A0257A2BAB31BD618A96FB12FB586636F3279B14BE5C
              8155B5CE2778DBE5743B566037A3A6040B0547E130F6585B57B7B04942BB9924
              92699E79657D01C9E490B3B9D0550589D2AA81D80024280AE6731D33F57F4F65
              63C6437D15A47716ECFC944B6A66316A540DA1A011D5B47969BB06D91509E227
              4AE53A920B7BD8E511CD8EB7C808EC207E7F12F244D1C0C24629E5C8068F2FDD
              2ECA1BF7EAFD4A8B03839C2F8997188B7C7DFD9DFCD7F653440DF419A5B78EEA
              DA18554C4B22B79BB99C48CCECAADB31824000C7253E26FD3330F48E4EFEFEF1
              AE93151BDC9CB4A5E5486399EE2E0C4B2738964F24447B005D958B3B6F5D9A95
              2C9B94193A6B398BB6C9DEE3AFA5C9DF5DE4CDD1B6BA95B8A59BC91996D91598
              A162919552DA0BC885282AD3D31657361878E1BD58E39CBC92186199A68E10CE
              58468EC031550743B003D00550146EDFCD3416FE65B402770E8190B15D21601D
              86812485E4C175DC803B6F75F188C959E631D0DF636759ED65078B8041041219
              483DD5810415201041040208A920DBA529500555713D250FD8A9639A1E77939A
              B9CBC4209E445E4D7B2DC43CB895E5C79A12ADB5E4BEFA06AD54A0388748F843
              9BC374BF5763EF72B15D647278FBDB28AEFCE5097AF3B3913DCA88049E62ED74
              5A59F5CE40BA07463EE3C0892D7AD66BFC0C184B4C2FDA78C9228097F3058C36
              F24577037C87979DCC7252C44837CCEFD7BFD280E21D33E10E561E8C8B17D512
              6232D776B6B8F4844ECF3C6CF697B75308CB3A6D6368664879053C54B8E24001
              B6BACFC31CAE6313F0B1D974FE42464CEC6872133A8B57BEBA13433C7F72FB91
              14107F0F73D9BDEBB2D280E158AF08F396395C65C5DFD8993F261C146973732B
              89B19F02C8674B60626DACBC18FE28FBB9D8F7337E36745DDF5A667116B6988B
              1BF64C4E5238E7BF9648A0B39A5F8744976B1B869002E55081BE25810501AEB5
              4A038A9F0AB391F55437F77758DEA0D7D8BC3259291D6EECBE09D5A7F2414937
              E771663F789F348DBDFA99BC8745D974F7869E23338B1B4BECD2656F2F2FFE76
              052433B445C852DA48DD76AAA7479E812493D3EAABE2C7FBACEB2FF92DEFFD07
              A02890F8519FB6C5F4B58633A922C65963F1ED0DCDADBC4488EF9AC67B76BC82
              4D860794AADE58E009E7213CD8EE1713E09649AD3E0F251612C71AF8CC6632F6
              C31D3CBE5E45A0BB8E69AE65611C644A634755ECC76E7E75F7EFF4A038AF5BF8
              2B0E70751363ADF1B6B2E4A6548CAC9242AB6B163BCAB784841A0AB76B1CA500
              E244684ECAAA8D43E16F554795872776D84EA0C90870AC97792BC9566B296C99
              5A7485CC3212B332B12DB43B918953EFDD6940294A500A52940294A500A52940
              294A500A81BFB6B9C4DD4992C6867B3E324B7B64A1E46934ACC0C080E84858F7
              1AD36FEBDEA7A9529D8182C2F2DF216715D59CAB35BCA3923AFBFF00EC7D883D
              C1ACF553EB47BBE9EC7657A870A237B8580BDCC1732BF94E117E570A37A71AD7
              6E3C87663F2A91038EBBF152FEC20BA8E3E8C8D6642FC268EF23913B0D2B21EE
              181E5BFA761EDB35AA6DC7681D2A95CFCAF8A9E52EA4E88326CF21C2EB5AF6D7
              7AF9965F14608249654E8B7088588437409D77EDBFFCB63F8D4AA4DF15E60E85
              4AE558BCE788B7F8B82F226E95513C0B2C692C538605B44ABE9BB10363B7B8FD
              46EFDA5E21967DFECAF1D1E2545C024F6F5DEF5EFDFBFAFA569659EE5919383C
              446EBBFE45DF633E4748A5729B7EA1EBF9EFAFF1A9FB36B736D1452998F9AC3E
              7E5A50001FD83BD8F71EBEDB2F75E2230016EBA7D76C092164D81AF41B5D7AF7
              EE3F51E9553CEF2C8BB4B1305E2F8EBC87B19F23A6D2B975B3F888AEBE765B0E
              E8A0EFEE8ED89DFF00C035AF97BFF307D290B7886A7EF3318971BF78BDBE9D90
              77FCFF00CA9FB7729E38B87FB7FC8F633E4751AAAF8B1FEEB3ACBFE4B7BFF41E
              AAD05FF5D4F3DCD9AE5717CED0F169BE1CAB4859548EDA206B7EA06BEA0FB41F
              8883AD87417549BDCCD8CB67F665C892358402D1F90FCBF73618FF001D54BCEB
              2CBA8AC4C1B7C35E3BB811ECA7BEC76FA5720BABCEBDB4BFC4DBDD751E3D05F5
              D7C2232DA2B7CC51DC161C3D7E4D6C6877EE3DC5863C3F88446A5EA6C6A924F7
              4B30743B007457F893FC75DB559F84AD431B4FDAE1EAC651E7F48A65171D197E
              A573D7C17884D0E97ABECD243FBC2C633AFE69DF7FE5F9D61B9B2EBCC5AA5EDF
              753DA4F6D1CB009224B48D79299143F72BDB609FE1ED596B0F776525E6458E91
              4A52B1C814A52805294A014A52805294A014A5280AE788D1B4BD0B9C447085AD
              5C722A0E86BBF63F956CDCD95C5ADE7DA78D45567567BDB35405EF18200BC58B
              AAAC838AAF26D82A029D00ACBADE233F97D0D9B62CAA3E19B65BD3FF003AB040
              8B1C11A26F8AA8037EBAD7BD5D7F84BABF440FC8678E732089C318DCC6E3D0AB
              0F623DBB107F3041F422BF672441210092149000D9F4F6AD1BDB399263758C91
              219C90D2C663052E75A1A63D886E234181EDB1B0C001596D2EBED0B1919629AD
              E5DBC6D14A42BC6C363BE89037D88237D883EF56F4B829FD247974B61FE656D5
              9C436BAD1D201EDD87F01D854B540F4B5E245696983BC260CC58DA46B3DB48A1
              5885014BA6BB32120775EDDC6F47B54CDCDC43696F25C5D4D1416F129792595C
              22228F5249EC07E66BE79C6D0A90C54E9CA2D4B69E96EFE46DA2D38A641E3A30
              BD779C7F52F6365DC6B5D9EE7B1EDEBEFB24F623E82AC354CB4CCE3AD7A83239
              9B9BA821C4DFC505BDB5E3EC472B45E7173CCFCA17E60149D063F877B05AE7A3
              F4AAF30A3521522E69FDD8AF28C535E1B9F788B4D68295F5C1F40F16D1FCAB5F
              21756F8DB392EF213476B6B18DBCD330445EFAEE4F6F5207F135891A1564ECA2
              DF813744561998E7BA8176C504D110744007C94D8F5D13D81F4DF71BDF6D6A78
              9DFEED7AB3FE5177FF0045EB158750D9DADE5E4D9033D9D95FCE25B49EF21781
              64F916329A9002ADCA324020720C0AEF759FC4F461E1B75602AC3FEE8BB3E9FF
              00C16ADA7B9D7A78BA5B706B58F0E564FC9EF28DA4E2ECCDACDB22750F47B387
              661952142F6EE6D2E0773F40093F9EB5EF5D02A84823CE751E3063278267C264
              1A4BCECFC50FC3C91940EA0AF983CF53C09DEB7BABED7A8763A854A196463562
              D3BB7AF230B10D39E82A07ADD1DFA765F2C90E27B76007BEA643A3F954F54275
              9E8E05C37BDC5BEBD3D7CE43EF5D7E1FF163D57A9611374A52AC814A52805294
              A014A52805294A014A5280AF788640E86CE963C40B49093C82FB7D491DEA7E2F
              EAD35C75A1F87D3F4A80F10E630743675C217FE8722F1048276A47A8F4F5AF38
              DD6464CC4703E77CDBD3A0F1FC64AF308D5B5B081B7A040EFDFBEBBEF42AD627
              12B0F4A2DA6EEDFC0DB6579455CCB6953696CF33D5F55DEA5BEC4E2AEE2B9B9C
              CE3F1391915141BAB848C5C44AFB3190C7B8F9980600952E75EA41E11D337B84
              C7641172583C564AC5CA4730B8B4590C6396F947F29EE36C7881F36BD46B66ED
              6BD211E7BA9AD333D218EC1E2FA66285ECD97E0DA31908D987981E25119015E2
              0BC5B6AEBFF0B106286223563B512D6619656CBEA6C555A707C196E1D77D0799
              B002FF003DD36C927DDB5BDD5FDB49ADFEE901D94EF5EC4EEBE0758786C23E03
              A8BA3C270F2F8FC75B6B8FF675CBD3F2ABBC68B1C6A91AAA2280AAAA34001EC0
              57ED5E35C72DE98930B96EA2EAABEC3BD8DED93DEC2239ED9A3922622DA2DF12
              BBEE189D9FAF6F635651696C37AB68003BDFDDAF7DFAFB7BD4562C21EB4EB464
              9198FC740AEBC0808DF0701D6F5A3D883D8F6FCBDE72BC43B458AAF0CCEB4633
              6927CD9B2A514E09D8C62188040228F51EB87CA3E5D1D8D7D3BF7AFC5B781159
              5618D558F220281B3F5ACB4AD1BC5D77FD6FCD97765722AD8BCF617A7BAFF3EF
              9FCE6171AB35ADAF90973710C0FADC9CBBB104EC81EFE9C7EA29E26F5DF47DEF
              86DD5905A754E02E2E66C45DC5147164617776685C05501B6493A000F53529D2
              379137887D4967C95664B2B39381EC594B4C390DFA80763B680FA6C927F7C71B
              9C8DB784FD50D8BC7C57CCF8FB88E747B8F24C70B44C1E55DA90C501E5C36BB0
              0E8EF40FBAE44DBCB68393D5C51ACABF7D9271F885D1723058FABFA75D89D00B
              9384EFFF00CAA631F99C664AC92F31D91B2BBB47242CF04EB22310483A6075EA
              08FD0D6A745E57239CE97C7E4F338697097D728647C7CB2F98F08E478F23A1DC
              AF16208046F446C1AAC78851743E3679AFB37D3B85C9672E23E6AB2D944F34C1
              74A0BB9524281AEE77D974A1880B5B5728C55E5B88A74E5564A10576CBB9C8D9
              06E26F2D836F5AF357F2FCFF0031FCC546F5A8DF4FC8BCB8879A05275BEC654F
              E55E5ABEB2C7CF753CAD89C5C4F2C9E6AAC1671C491A9EE15500D000686FD4F7
              27649A95C7E52F5F2B87865BB95A1F8CB7560F21D71120D76DEBB6FD07B6EAC6
              0F1F09E22114B8AB1D1D5ECC626861DE22725A2BB5C7A723D594A52B20E64529
              4A014A52805294A014A52805294A02B7E2448F1F41678C4ACCE6D245D28D9EE3
              47B7BFAFA579CA3E6AF6EB3C91B385560CECE3D3BFBFD7FF004AF45789C10F87
              D9FF0037F07C23FBFBFB7F9D79CCC6BC4A88C170AA8A0B8047CA37DB7DC8FD7D
              FD6B5F9AFE153EB2F489DAF63ED7ABE06491E5916464B8D2A13EAE47207647EB
              EB569E80EB0FD9CBF0F93C8416187BB78D269E70D2451BF2551C8731E596078F
              99DC0F94B0D2EEAACACB195756261D91C493A23D481BD76EDAFCCEBEB58AF920
              B9824B3692E144F13DA158A25766597B3F0F91C8241E21950B69B4A18B053A6A
              35A5466A513A0CF6846B60669ADDAAEEFAF91E8AFF0068FD0FFDF2E9BFF1483F
              D54FF68FD0FF00DF2E9BFF001483FD55FCD9B8112CF20B7779210C423BA04665
              DF62541201D7B6CFF1358EBA94EFA9E547BC311D73D251F53F594AFD518258A7
              CA47242E721081228B1B552CA79771C9586C7BA91ED531FB7FD1DFDECE9FFF00
              1287FD55FCF7A571798762E863B133C4CAAB4E4EF6B2326189714958FE847EDF
              F477F7B3A7FF00C4A1FF00553F6FFA3BFBD9D3FF00E250FF00AABF9EF4AC3FDD
              FE1FFBD2F2455EF4F91EF8E9AEBBE9187C41CFDCCBD55818EDE5C5E3E38E56C8
              C215D965BC2CA0F2D1203A923DB90FA8AB5DEF891D2C2D9C623A870393C8B909
              6F670E4E12D348C4055014B31EE7D1559B5F8559B4A7F9B9572F0C7A8B1DD399
              4C8CD956BD48EE2D5628A4B48CBB248B710CAA4859626D7DD11B575209041AEC
              70785597E1618787F16CD97F931E52DB95D9EDDB9EADEAD36AE53038AB46D1FB
              F966C84AB17FC453E093901EBAE4BBD7A8F5AE3194CF5E750CB2E56F64779AE4
              8D31564D47DF8A2A9F44F5D0FE24EC924C5E1BAF2CBAAADAF3178ABACDC93C16
              724A9CAD6F022760BCD99B252AAA2965662E8CA402086240390B4802ADC32CB2
              A8D3B852A19B5DC85DF6EFB3AFCEAC6635549AA69F5F81D8763F0CA7527564B7
              6ED3E21D999536E1B435AEFB5FCAB3E2543E5F1FB52CA2EE0D8F6FEB147A7B8E
              FE95ADDB5E8775B18A5DE6B1675B02F602743B81E62FA7BFF2EF56B2E5F6AA7D
              57A9D7E6EBEC357A33D6D4A52B7678E8A52940294A500A52940294A500A52940
              573C477F2FA0B3EDC8AFF43946C1D6FE53DBF5F4FD6BCE2207F2A25903088A20
              52BA600EBEA077EE4FF1DD7A3BC473C7A0B3FDA420D9C8088C1274575EDDF5F5
              F6D6F7DABCD1010B1C44CEE38A2842A093AD0EFDF5F5AD766AAF4A1D5FC0EDFB
              1F77ED7C0D955923541295641B50848507EBBDE88F623F4AFB081607678965B5
              23EF6391955193476BCF5DB7A00B6881EA77D8D7D5D59C60F26B95DB7E025740
              8F4F6FD2B1C5E6C25046E410E1E360DC240CA411C581F94ECF63BFCFB6EB45A4
              96F3AFAE955A328A7BD33CEFD731CF1F58E6BE2DE379E4BB9256647E40F362DD
              FE7720F7EEACC594EC31E40D41D5CBC5B4857ADEEE48565E73AACD34AE0AACB2
              B0DBB2028A7886DAECECB32336FE6D0A6D74F866DD1837C91E39516CC9A14A52
              AF940A55F72996B99FC1FC0C12EDEDE2BBBBC7C71166F2D0234570250BBD0977
              712216FEC68687A9A155BA5373BDD5ACDA258A52957083A778276FCDF3974B6F
              179D0C288972CC0B287E61A10A41D734E44BE86847C39012107A52A1244608F9
              7B0DB0D0FD6A91E17E3AD7F66A0BE86FEF67712C91CF079E121B695C828A22D9
              6666480B190E9480146CA315BB2B32FE12477DF63EF5CF625ED569C973F4D0F4
              9EC8D2D9C24A7CDF77FEF99F26B25813F6DE206F872BD841707F0FDE0AF8ACD8
              D03EDBC4B170812F606D91B1FD628FFD77FA55FCBBF354FAA3759C7E4AAF467A
              E294A56E8F1C14A52805294A014A52805294A014A5280ADF8931897A0B3CA78E
              BE1243DD790EC37E95E745511471C12DB471A7004A8E44A1D7B91EBEFE95E8AF
              12C13D039E0ADA26D5C7A81B1AEE367D363B7EB5E6E48EE6081A36900D468AE7
              6072D0D0D7D7D0FF002AD7E6AAF461D5FC0ED7B1EAEEAF80765037242BC8FF00
              E1008EC4687F3F6AC96EE58C2B1DBA1901055B89F4DFA9EFDFBD7E3A316669F8
              9DEFEF49D83F4D6BF307FCFE95F7145C95925D205258FC84723DB5BFA0F9BF2E
              C7F8EB46D9DC49AB6A731F157A4F337525B66ADCDFE4A09646B558DE43349171
              D3E953F12A6E4238EB40E893F789BE7A7A7B341954E232219890A0DB3F723D75
              DBDB55EBFE89B3C0EF2BFB53637F93679217816D717717512050C033AC0AC449
              BDF76D0D04E3DC356E677A0FA173E6D1B136B8EC19B5FC473987BD80CC3B6963
              F32583607121B5CBB151F2823974386DA74E2D34D7D7C4F1FCC692A58AA90E4D
              9E353D3B9A0A58E1F22147A9F857EDDF5F4FAF6AC7F626578AB7D997DC586D4F
              C3BE88FA8ED5EBD93C2BC02CE1467BA1D78F2215B1AE4293ADF637BDFB8F5604
              FD49F7F9B6C65AF4BDE8B3C739C849C44FE6F4F5B62618BB100065BA7964E5D8
              B720C17E65D283B3593B33EE30F43CCD90B3B88FC37C5593DB4897C997BD91E0
              2844A13C9B61C9975B0BB5700FA6C37D2AB52E27250CBE5CD8FBB8E4D91C5A16
              07606CF6D7D3BD7ABAFAFEEA3EA9864B8B3CF987ECE982729704ECFB7849202A
              797C4109BDF2624AE800ADBB55A4AB730417175D3192927688A73967BF476EC0
              6D96CED4DB827436633AD7E7B154C69CA09F892CF10BD9DCA6B9DB4CBB3A1B42
              36740EBF9107F515FA2C2ECC4D28B5B8F2D57917F2CE80FA93AF4AF6FDA47668
              E5C74BE4E3468C12EB799CE615767401B50760B761BD9E4DF9EF72DFC31C33D9
              C5E5F4861B88440A64C66CB6C6F91E772AE747B9E6037D46F7552BBD16F22C8E
              0DD1300B4E91C4417104D0DFADB9624BACB1C90BC8D24654FAA37DE30651B1D8
              6F4DCD566C8200D8237DC7E75B1D4F82B2C2F57E40D9E26D6C382C7031B78562
              41F2292A007603B9EFF331DEFBF6D0D7F7FD01FD0FA573F595AA3EA7ABF6763B
              180A69BDFAFD6E049E3AEE46C1D56CE2B97DB78908DC59AF6003637BFBC5FCC7
              F97FFDAD3E6A07CBA3FC3D7F957DE27536631A9CC726BC80328074E3CC5EC48F
              6FFDAB272E5F6AA7D517F389C7DCAAAE7167AFA94A56E4F2014A52805294A014
              A52805294A014A5280AD78951ACBD059D56275F0AEDF2EB675DF437EE75AD7BD
              53AE7C18C2640433C39BCFDAC65178C513C1C40D0D0D3C24FE87F5AE9D91B2B7
              C8D8CF67791F996D3A18E44E4576A7D46C688FD2AB27C39E9720A9B09F89F55F
              8EB8E27BEF5AE7AD7E5575468CE0954BDD36D697E5DEB917E9626B514D529357
              E4EC695B784DD1D6D2C32478FBD2D0B73412656EDD41FF00E9694823F23DAAC4
              BD2BD3CAC1970389041D822CE3EDFE550EDE1AF4A1209C6CBB002F6BD9C761FF
              008FBD7CAF861D20082714CDA3B1CEEE76D7623DDFE86A854A8ADDE8BF521E22
              ABDF37E6CB15960B1162C5AC715616CC405261B7442402481D87A6C9FE758723
              D3180C9AC4B92C1E2EF162DF962E2D239026C0075B075B000FD2A0DFC2FE9078
              CA3620F061A602EA61CBB6BBE9FBFA7BD7C49E167474B1BA4989675720B72BC9
              C93AF4D9E7BD7E5E955FF2D2B293B74F9969B6F56C92FD83E903ADF4AE03B7FF
              002E87FD35BD67D3381B188476584C65BC6092122B48D06CFAF603DEA063F0C3
              A423E5C314E390D1FE993FE7FF001FE7BFCCF7F5AF84F0ABA35240EB886E43DF
              E2E73EFCBFB7F5EFFC6A1C69F37E5F30BBCCB7586C545D7583B68F1B6696E319
              7EE22581426C4D67DF881ADF7F5F5F5FCEA7474E610204186C6841E8BF0A9A1F
              E5546C8F871D2AFD6F8981F1B2989EC2F252BF173FE257B6507F1F6ECEDDBF33
              5292F84BD133372970BC9B972D9BB9F7BD6BD79FD363F535118D3E2DF97CC752
              C52F4B74FCDC7CDC1629F81E4BCACE33A3A2363B7D091FAD074B74F82DAC1628
              72D96FE871F7DFAEFB7E42AB0BE0EF4122055E9F8C2F22DA17337A9EFF00DBFA
              F7AC90F849D110B030E138107638DDCE3DC1FEDFE42A7669F16FCBE609D4E8CE
              9745D274DE1546C9D0B1887AF7FECD7E1E8CE9A0CAD1E0719132B720D0DB2467
              7F9950363F23DAABF1F83BD071B724C0461B7B27E266EFD80EFF003F7EC07AD6
              47F08FA19D42B6063D0DE80B8987FF00BD52E149EFF45FA95C6ACD6E9346E673
              C3AE9DCBD8A5AC96D25B2AB87E76D21473ADF624EFB7CDFE43E82A9F9FF0C30B
              80B487238FBCC92B417303AC52488E87522EFB950DEDBFC5EB562FF643D0DAD0
              C1281F4175301FCB9D66B7F0ABA32DE78A6830C12589C3A30BA9BB303B07F1F7
              EFF5AAE8D3C3539C6A3BE8F92FD4BD1C5D649C76DD9F7977A529568C514A5280
              5294A014A52805294A014A52805294A014A52805294A014A528080BDDFEDF61B
              B1D7D997DDFF00FBB6953F51F3E3E497A86CB242E4AC56F6B3DBB5BF0FC66478
              583F2DF6E3E530D6BBF3F51AEF2140294A500A52940294A500A52940294A500A
              52940294A500A52940294A500A52940294A500AA55B67DECBC43CCDA750DEDBD
              859CAB69061A3B9748BE29883E698893B76E6F1A151DC693B7CC3775A501405C
              DE4F171C5061B00AB8E2D75756D6D1DB344EB670C4BB431920ACD25C3FC80291
              E59D90186AB42CBA6041D236782BFB36BC76C74F6B7F702067BA49EFA60B2BC5
              21D0F28319DDF477C563237EFD3A940525F39D4016E5E3B26296F737732C6D66
              ED2CD6900E1C34180134B2EDA3201568C6F44F6A8AB6EBAEA033E1D67E9AC8F9
              57F04724D34763218ED249A588468C4904F089CB49A047204023440E974A9BEB
              7072EC2E472169167F318FC2645EE72305DE4DA5B8B46495E5B611416F6E5020
              625D10B11A076CC137DF8DD7A77F689C73EA06C620F2E2FBBB489F7CFCA4F30F
              22E401E6799A1A3F2F1EFBD93394A80294A500A52940294A500A52940294A501
              FFD9}
            BeforePrint = rliRoscaBeforePrint
          end
          object RLDBText29: TRLDBText
            Left = 84
            Top = 374
            Width = 70
            Height = 16
            Alignment = taCenter
            AutoSize = False
            DataField = 'INTERNA'
            DataSource = dsCadastro
          end
          object RLLabel2: TRLLabel
            Left = 235
            Top = 427
            Width = 12
            Height = 16
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Caption = '<'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsUnderline]
            ParentFont = False
          end
          object RLLabel4: TRLLabel
            Left = 248
            Top = 427
            Width = 11
            Height = 16
            Caption = '5'
          end
          object RLDraw58: TRLDraw
            Left = 0
            Top = 179
            Width = 718
            Height = 41
          end
          object lbRazao: TRLLabel
            Left = 8
            Top = 183
            Width = 414
            Height = 14
            Caption = 
              'Raz'#227'o Social: __________________________________________________' +
              '_______'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object lbCnpj: TRLLabel
            Left = 432
            Top = 183
            Width = 160
            Height = 14
            Caption = 'CNPJ: _____________________'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object lbFone: TRLLabel
            Left = 601
            Top = 183
            Width = 111
            Height = 14
            Caption = 'Fone: _____________'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel50: TRLLabel
            Left = 2
            Top = 161
            Width = 714
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'Dados da Oficina'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lbEndereco: TRLLabel
            Left = 8
            Top = 203
            Width = 703
            Height = 14
            Caption = 
              'Endere'#231'o: ______________________________________________________' +
              '______________________________________________________'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel3: TRLLabel
            Left = 29
            Top = 373
            Width = 50
            Height = 16
            Alignment = taJustify
            Caption = 'ROSCA'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            BeforePrint = RLLabel3BeforePrint
          end
          object RLLabel46: TRLLabel
            Left = 12
            Top = 274
            Width = 54
            Height = 16
            Caption = 'Cilindro'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object rliSelo: TRLImage
            Left = 347
            Top = 772
            Width = 369
            Height = 185
            Picture.Data = {
              0A544A504547496D6167653A6D0000FFD8FFE000104A46494600010101012C01
              2C0000FFDB00430006040506050406060506070706080A100A0A09090A140E0F
              0C1017141818171416161A1D251F1A1B231C1616202C20232627292A29191F2D
              302D283025282928FFDB0043010707070A080A130A0A13281A161A2828282828
              2828282828282828282828282828282828282828282828282828282828282828
              28282828282828282828282828FFC000110800B0016903012200021101031101
              FFC4001D000002020301010100000000000000000006070305010204080009FF
              C4005E10000103020305040409030B1108030101010203040511061221000713
              31F022415161147181911516173293A1B1D1D22352E10833426263729294C1D3
              F12425263435364353555665738283A3B3D445465464747595A24484C2B2E2FF
              C4001B01000203010101000000000000000000000203000104050607FFC4003C
              1100010302030408030801040301000000010002110321041231054151F01322
              617191A1B1D11581E1144252536272C1F13206162492344354C2FFDA000C0301
              0002110311003F00B9DF8C892C4BA2B9125BAC296DA54EA90E14925441D2C7BB
              96C263E1CA1D7A154614C95263BC5B2FA56E1585052B2E5209D6F6E7DD71B1CE
              F8B0BB958850AA14D94A57A2B482EB453709196F9877F81F51BF2DA8F09BC1C6
              5984FAC8921294C7793F354A173AF81EFBFD83936991950BA655A52AAB265EFE
              988521F7131A27112CB00909BF0546E4779E66FEAD7662E3FC5AE616621B8DC6
              4BE1F5A926EAB65B01D7B3DCA48C27D3BF54930A94D95B728A94DA88D0B5C120
              281F01603D87973D8CB7E8AB53A969EFE2AFFF00F3D75A0E36D096911C176F61
              E1E9E2718CA5544827F85C837BEE7F9353F49B7DF2BEE5FF00B988FA43F76CA9
              49D6C469B7C45AC4588F1DB9F2617D0FFDBFB3FF002FCCFBA6C1DEEB847F735B
              F5710EDA9DEC38ABDA9C8BFEFCECAB4DAD757B3636C013A991E3CA6EA4E4364A
              DC45DC75014B4A2C6F941428286BAA7427C7626B7A4304ACD8AD8D81C3D3351B
              47311B812AF3E565D1FF0066A2DFEB0F5E1D5ADBA37B4EA093F06A351FE30F5D
              7AADCAD54686297456DA7E1FE49C6BD20142125403F73705B24F63C163DBDFBC
              EAC61F993A3B60446A34944C8AF3858485B373F9272E948D0585B4B804DC9D8C
              5102E1CB07D93084C7D94C5F79DDEF165D1F2BAE5FFB989FA43B606F75C27FB9
              89FA4DB9A2D570CFA536DBCDC75C48F5169A6C706E5C650C2919CD85C82E5944
              733B72A1E6624E799AC4BA52EA8986E258753180434E1524A731CB624A6F94DA
              C2FB19A663FC94182C14C1C31169D5DCDB7F0ED569F2BAE0E74C4FD21DBEF95D
              76FF00DCC4FF000FAEBD9B0F392E91F1EA8EFA8C45436D2C89AE21B0195B8076
              D4136B5BD9B5D53E75092EC43537A96ECE099399D6184A1B0929FC9857632956
              6E4729B77DF6A6B27EF22AB80C0D3008C31322753DBEDE62CBA46F6D76FEE60F
              A4EBAF65B1F2B6B245A9834FDD3AF2EAD61BA7CCA7378F0C898B8EB82942F521
              0A413C12122C10137CD6FD8F3D8818A961F74C979B54069C7A245C80B6D21417
              75F101BB6A466E57B245C5B6B6D32EFBCAAB603054888C393201D4EF3A7CB552
              1DECA8F3A58FA4EBAFAB4F95755B5A68FA4FD1D7DBC54E91455C28ED3AE53047
              F477C4B6DD6D21E5BE4AB2292BCBA0F9B620802C74DB9A4AE8CB8D31F6A4404F
              A540623B2DE5B2DB7BB01648B766D9544ABBEFB0BA8E6139958C0E033653873E
              278C7D7B95BFCABAADFDCD1F49B6E9DEDA826C6980FF00B7B73091851752A42D
              97E2F06049E0B81C6328799C96CEAE79CE649373F9FE5B71617F8169C787557E
              9AFDE736E67B058E1E47330B91CAF96E3D5B414729B142707802C2EFB3BA46EB
              CEA7F8BFCD5C7CAE1EFA67FC4EBAF6DFE3BDDFF467FC4FD1D7BEF4F49AA501F2
              DBB536D809F4F6C94B8C3615C30D2C5C8424029CE51716D7BEFB73C47A0B739A
              995997477571E3385298D1C282DC51CA80B48012BB5CAB4EE02FB5E43F8917C3
              B0209070E6476BAE780FE7BC2BFF0095C3FE4DFF0089D75F5CEDEF4A43ACADD6
              A8CEB8D37AAD692484F7EA6DA72DA9DB4525532AEAC3EFD3F8AEB8D4B6972590
              A4B6C58A9C458A48194DAE39D86D1D29787C5366C49932187EA0A78F15B60843
              36FD6F29E6804826DE0403CB68299DE503B0580896D03BBF14DC49B767A856BF
              2B649FEE67FC4DB29DED9B5C533FE275D7B2D4624D1BE05292AA71882959385C
              34FA47A67E75ED9B9F7DED6DA2C2B2A88AA4438555111B79C96B754FAD00A9B0
              8E114851B7CD559C4DBCF68186633261D9D810C2FF00B39B18D4F69F28D15FB9
              BDA079D3353A7EB9FA3AF569B6837B3AEB4C27FDE7E8F5F57BF1A65504A5ACA6
              9829E1127D31A5B49E3AD64AF26436BDBE65B29B0D6FB50E147A1A29325295D3
              5BAA990D10B9E84A9B2C58E60330239DAF6D6DCB6034A489289BB3F0258E7740
              4446F3BC91E513BEC422C1BDA1717A628FFBDFD1D7DB30DEF24937A528DFF75F
              D1B53255439387D6C25DA5373951DD0176C802CC9B8B122E3B1CAFADB4DB7812
              B0F43A4C76A6A29F21D11B80F94252A512A904296936F9C1B3707C86D6CA5160
              529D82C044FD9DD331127C7B95C0DEEA797C16AFA5FD1B6AADEF2013FD6A5FD2
              FE8EBDF7E35AE891DB5B3064509C750F464A9C90DA0A16DA5901C22E09D55AE9
              ADF6D1D9985BD024B10D10C8704D5325D69370411C20544671DF96C7D7B33A23
              7EB258C1E00C4619DE2784DD769DEF23BE94BFA51F775EFBE0EF7917D696BFA5
              FD1B5156DEA2AA8F52E01A72A2961814F43484890973B39F390337E75F31B1EE
              D80B2F7AB97DBB29E0B4C4AE8E1762ECFC434B8D22D8E24F007E87B5368EF7DB
              FF0025AFE947DDB63E57DBE6296BD3F751F76CA651D4696F2DBED15F3458F86C
              19CF15A7FDBBB3FF002FCCFBA77E1ADE0B75C9CFB1E82B652D30B7D47383709E
              600B79EC36DEFC20BADA1C4502ACA42C0503F93D41FF006BCFEBF5DE9F74F6F8
              C52F372F4176FEF4ECBAA21068B4FB0E6C37AF8F646D7940198AE57C0F0B531C
              FA0D0434341D7DD7A230FEF0175682896C618AFADB5936521A694343A9B958E8
              F3F1B518BA47F9AD88FE81AFE73AFB38F74A3FB078245AFF0095D7FDE2BAEEF6
              7790E25355461F9870F08AAAB25BBC7126FC32A1DC6D6E62FD72653208D178EC
              75114710FA4DD1A48F02AB062C7ADFDED6211FFEBB7FCE6D938ADEB7F7B5883E
              81BFC7D5FDFC7BAC9B89AA144952317250892652D2CB5E8C5852100DAC45C823
              C08274EF3CF6DF1B49C4ECD5A908C3061F04A1F72489683C370A72644671AA49
              CCBB1F2D6FB35C007655902E9F8D8F72F8B3887E81BFE73ABFBF74E2879474C3
              95EF6B2DFF0039D5FDF754B7E44AA6C67E64611A4B880A7190E070214798CC34
              3EBEFBF9EAB5C4389F1145DE39A7C578884DBD18263A63B4B694CB85214B75E2
              E666D5994B091975B26D9B36B1ADCC7280A697536F4310899832AB4F7A995684
              F488EA532E38DA3528295699564DF911F6F8AE7818B7FCB327FF009077EFD98F
              BEF6C3F46E11CDF94852D3D8173AA51C85F53AF8FDE433E2B47FCC89F4E7EFDB
              7E11C18D9E2915DD10B6DE0621AF0C47129D4D4B4A2DC7692D3698E8754AEC82
              35209F75B6195E25C5D856B6CCBAFC0408125C0858F4542065275CAB48B950E7
              624EC78EBADB1BCE47A4E5497A03686547BD764903DC0EBECD8C2B505B9B4398
              CCB69B7A325A5ACE709375A4664123D607B76EAD3A4D34F32CD59E597DC839CA
              F4E91BD0A14064211052F292B1C3054AB36A37B9F9BA8EEB72E7AECC6C5385E0
              E256586EA0A7D0960A8A784A09D48B6B71E5E5F700D1A8EE3DBC5A7D512E2021
              A5BC1E64F349E128248F6653DDCEF7F06E27DDD7E8FABCB4E163C82F03B174B0
              956A5177494CC1097E775541FF001B3BDAEA7F0F5F67DF25541FF193BE947E1D
              983DDE1D75D72CDB4DB01685D4F8CE3BF34F8A5E39BABA1250487275FF00D6A7
              F0ED86F75F413A17275CFEEA9FC3B309FD1A51DBCBB8FF001E62C878FAB50666
              20730D448CAB5352A845C664241D0A96124D88D6F650074B0B6D6CA25F532B78
              2876CE3409354F8A727C95D04FF859FF004A9FC3D7BAF93BACA113FAF4ED79FE
              553F87AF3D2F50E6F66251297478D524FC35587E0FA63CAA514A9A2D8B82E5D6
              53CEC7B235BDC5BB8F64ADF0D08AA84DD2A2546AD26AECAA4331E23414E21B49
              505150246A0A162C2FF34FB5BD013B90FC6B1BF9A7C5757C955074BBB3FE953F
              87AFB7EF92BA11FF000D3EFF00EB13F876ABA6EFBB0F541AA3B8CC2AA04D52A0
              AA7339DB40CAE0E1EAAEDFCDFCAA7C4E874F1DAA7BEAC3F4EA754E6BD0EA4A6A
              9F53F82DD094364976CB39876FE6FE4CEBCF51A6D0E1DDC14F8D6375E94F8AB1
              F92BA1EBF979F6FF00589FC3B7DF25742B5F8D3FE953F87AFB3866EF8A9B1699
              0A60A1D74A64B6E3E12A8E96F23682AED294A504DC849200373A788DB597BE7A
              1A1CA2370699589EE5622AA54544661254729582923303705B572D34BDFC2740
              E9D14F8DE37F34AB01BAAA15EE5FA87D227F0F5F667E4AE87A8E3D407FBD4FE1
              EBDF6AE6F7D7871FC394DA9C562A0FBF50946147A7B6DA4BEA7465B8B66B5BB6
              8D6FDE3FD9E86F7BB46770D8AAC7A6D616E7A57A1AA1FA380EB6ED81ED124252
              9FDB5FECECC341C3729F1AC6FE69533BBADA2E616913F5F17127BFF7BD7D5B65
              3BACA1AD3A48A87D2234FF00EBD7D96780B1BD371C40912698D4865711E31DF6
              1F48CC858B77A4904798FD1B14A4906E2F7F5F3EBAF3CCF963C87231B631A45A
              A94087753433FF00E4547E911F876D7E4A6899759351FA447E0EBED61A48234F
              76DF1FAFAEBAD58034DC2AF8CE3BF34A5E7C95D14FFF009150FA447E1EBDD7C7
              C955134FEAAA87D223F0F5EEBD862BC7B0E850A5BCDC39131D8D35305C6D2528
              BAD4DF12E09362329F79F78A7CB3A75BE199FF00C61AFBFAF7DCB20DEB5E1F19
              B5B10DCD45CE70EC57A3755464A4DA5D475D34753AFF00F5EBEDC0DD4D1B9195
              50B7EFD1F876A3F96748FF00BB550FE30CFE2EBEDC9DF423FCD9A87F1867F16D
              0307253BA4DB7FAFC15C1DD4D1AFFDB53FF868FC3B67E4A28D6BFA54FF00E1A3
              F0F5F652FCB3A09BFC5AA8D87EEECFE2DAF9CC7B5269D536E6129E149213FDB7
              1ED722FA1CFDD637F0B1BDADA58A53A25D4C5ED7A519DCE13C5731DD6518920C
              99FCEDF3D1F87AF76DB0DD45189FEDB9E6FDF9D1F87AF7DA08BBCA912A9CA9ED
              6179FE8B9CB614A951D3755C68015EBF387777FAEFD2AC7F3D896F30EE179C95
              B560E6699182524AB280545CB5C9074BDF4F2BEC0CA4FDE153B1FB51A60BDD21
              67E49E8DDD2EA1FC347E1DB6F927A3774CA87976D3F876C2778B30C911D5846A
              8978B6A7321911C1012E70CFECFB9408B79786D2B9BC19A854949C2951518F97
              8A132A32B2E6240E4E6BF355EA02E74D99D093B92CED1DA83EF951FC9351B422
              5CFF00E123F0EDA9DD351F97A64F23F7C8FC3D7BAF37CA24B0F34CAB0B4F4BCE
              B81B434A99142947885BD0172E466045F97B3689ADE44B7511568C25552994F7
              01A25F8FDA592401FAE68094A85CE86C7CEF5D09E0AC6D0DABAE772D3E49A916
              FEDD9FFC24FE1EBDD7C2774D47D3FAB27DFF007C8FC3D7DB58E6FA184A8A7E2D
              D574363F9563F1F5EFBEBF2D31FF00CDBAAFD233F8FAFB47205A3A6DB7FABC15
              AFC9351FBA64EFE123F0F5F6E8BDD35202491327DC7ED91F876AD56FA583FF00
              76AABF4ACFE3DB55EF9D85A48F8B754D7F7563F1ED4582158ADB6FF5F8222A2E
              088187CCB97164CA71E54671BCAE2925241B1BE839E836F3D5090451A9E0E968
              EDDC7FB2367A61ADE23189AA4E53052A6C37151D6EA56EADB52484D811D95120
              F6BAEF5BE0AA54397821121F642D6DB0429EF4A4B7E8E12D24A3B0755E651236
              8D6B8B729E755D0D8F89AD4F1352A62E734017D7F8E744CBC238A28F84F7714B
              9B5E9A22B0E2DC6D1D852D4A571166C02413D731B1655A152F1E60B7633724BB
              4CA9B20A1F60D8DAE0A542E3982068477588F04DE2698FD27763862A701E5C7A
              8C594FFA3B8DBAD055D6549294B6B07884DED648B8B7B98D87244FA36E860BF4
              EA6C96EA2DC74911A5A0ADC4A94E7696B4A0026D752CA40074B7A9ECA60530E1
              AAF2BB50FF00CDAA3F53BD511E12C2945C2B15F8F87E1A6221D5053A02D4BBA8
              0B0F9C4F76DCB8C703D131849A5BB5E8E64A602DC536D66B2579D36215DF6D12
              7423548F51D7005531054624F4E28A7B10E5B0F2509E025410A0A425560544E6
              292AB150D09E5DFB566F5B11D7F0F4480BC3F0552132165B7DF4C45CA2C5D480
              0F0D06E4655387D6903F65B4876789BAC222119D36045A653A3C1A7329622474
              06DA693A84A472039F5EBD42F10EED29D58AFB95932DF8F35C991E515A129D43
              6100B64F35215C26CD8936526E399CC538625CD9F8729B2AAD1FD1A7BF1D0E3E
              CE52322CA45C58EA39F23CAF6D7BC16B98AF15C5DE40A5D3E94991484BACA567
              D15D5296DAF8414E074760594E2C5B5FD6C93A1BED199B3183752D0A5DF4341E
              A4A9B3739A9D3869A9FD6D3CB5FE5FBC857C032BFF001E9FE123EED8DF7CACA5
              DA62D241BAE993D174241558B4396A2FCF95FEF23DF14A37E633FC33F7EDB30E
              F0C6DCACF5C124595C6F2C5322C4A34A9B424CE7780D59C1256D106C3B93A13A
              0E7E5B098DE0B28ABA605429B222C7717643AA96A74027928A4E96BFBB63ADE8
              AC358568EA5B0A5B7C26BB76D0103C7D57D94F8AA3C2A9C669C712A4A5090A52
              80B2B9DC81ECDBA4CFF14B7EA8AE062B8CC6F5A9B4665971C75DBA5D742EC941
              E19205BF647CFBAFB3A91D75ECFE8EEF2E5256C9FD513192DA8A6D22E6FDEAE0
              EB6F6EDEA2472EBAEEFABBADA7271CDEB03D8B5D2D0AF89CBCF975D75A612EA3
              F3BEAD93DFAA531A55F0961B80DD0DD119E9CEADB71F02EA425291A26E3426FC
              F98B69E5E598D5EC4D5598DC762A7579725E5654B6990E2D4B51EE02F7275D95
              4B0CEA83303089CF00C2FD0675C4A9B2073D92D8B77575DA9D4EB46998ACB349
              AC1BC9872D8E3F0F52486CA8F67526D6CB6D35D340AA16E67781361876A58897
              4D708BA5954A71D50F5E5361EC27603DE261FC758064A054EA939511E559A951
              E5B85B591DC75B8361C8FB2FB5B2843FAAF13DCA67B5C272D57716D70E926913
              E29721C1305C1508BC642EEA52B8805C65502B55AF7E43C0ED598AF045430754
              F094CA1B558764C08CEC77EA34B84DBDF394E28A7D1F409D5C50BF2B1D7506E3
              1FA9E77935CF8E51283569D227C19D76D1E90E1714CAC26E92926E6C72DADCB9
              1D2D7DBD5C5A5116D0F5FD1F579582A3EBD17C3AE14018E0BCDF8277455C9781
              A8EF499428F59835672A51DB92D712C9506800B00E86ED036F7ED792B71B3A76
              1AAB53A462261C913EAC8AA29FF44205C25C05397377F12FECDAE6BF26B6DEF2
              67332DDC44DC60E431486A96D6661E49078DC52464B66B5CA88205ADE55AC63F
              DE0BCD7E4E80CA16A712952D74F7ECD1E1BAA536466054525081981B76B972D9
              9D25775C10AA1A2CAD3787BA3998A31426AD1EA90D0DAA0184A66645E386BB24
              676C5C00AD6E3C0EBEAD30E6E824522B38367395665D1408CEB0A40608E36753
              A6E0DF4B713EAEEEEA5A9EF531B41721C77A8F1112E534B7DA6CC07C972D1997
              8369485DEE14E29055E2390B5B69F1063BC6931350A733469309C65F57E563C5
              7B3A50992C84597F34E6415936EE1DC362CB5000D955D5375495DDD2CBC1B82E
              95320D45532B947AA19D13830D6B4BA55C3EC2920922C5A0737B399D2CD5BB3A
              F62AC2B87A654F10C993516E499CE44ACB0A2D00B08B345BCC6C065B5AFAE6EE
              EECD631FE34994DA8B0BA3BB1785254812A3C1900048438A4B635CE4AD4DA505
              4027285F2D45BA6662DC7CEA9A946825098F354D260B4D3C1C5DA2A9C216ACD9
              549CC426F6B120F7F3A73AB762B86EA8B3745809EC091AAACBF363CC33A4F1C1
              619E12502D6B65D6DEA1EAD796CC1B7D7D75D5C3375F5FADE238135DAE42431C
              2710965E4B0E30974140528647093D9515249E46C7CEE6DC355CDEDD747F4F7F
              3AB36A1792FD531A44596A3B26FF0056DB17136D4D8F7F5D7DFF0016D5E57DB5
              534AD74FAFAEADE5B0B73B740A58A4FD5E982B759AC53DE925B65EC46D04A93D
              AC8041CC743E60FBFDF669DD1C329B8AAC83FEE93F7F5EEBC919A7062B96A528
              293F19921B0157B7F5BAE40F6F85BBBCACCC032848F669D757E4391D35012448
              DCB6E1369E2708C2CA0F804CEEF64B0F923866FF00D7491F469DBE3BA289DD54
              91F443EFD9A03C3AEBAF5EC7973D94C6822EB51DBFB43F33C87B2542B74D0813
              7AB3F7F0E127EFDACE6E04726C511E462092A6B8AA7EC1840EDAAF7371ADBB47
              4E5AF9E953BFDC5D56C1F46A6C8A2C96233D2A5F014B790160272DEF620E9EC3
              B41BA9AC623AAB5549955C5544AE45699EC2200199A5F3BAC6449008BF3F3F03
              B3053A990BC69F340EDB78B7B8667C91A585BC95CD3F0139061BB1A1D69D6DA7
              6E144466CA8836B8CD6CD6361F76BAF52B06CA5C97642EB454E3A415854264A5
              6428A8129B58904DEFCF5F55D1D8337878E7141084634C3D4F90A778488F3DB4
              36B51D2C47E4C837CD6B5EE6C74F137DF06F2EA748C5B170BE1F990698F96C3D
              2AA332C50C8209CB620EB6D791249000E773387AC1C1B296EDAF5DC4B8913FB5
              BEC8EC60D966F7AEBA54A24F13D15BCF62BE21015CEC55ADB96BE7AEC7064AF4
              BF491885C0F15A5C2A4C5685C80B1A802C74717A77DF68F7453E7D4F0BADEA9E
              20A7D7E407D4049876CA94E5164A86549041CDCC6B7F3D7A37890319CD4416B0
              55420D3B55994F494E757765091955FB6F70F6AC0A81D967D557C52BC4C8FF00
              AB7D9683054853AD3A6BCA53EDB81C43861B456939F8960AB5ED9AE6DCBECDB7
              6B05CF6C3611889F096F86509F456CA525B3749039037EFEFB9BDEFA896E6B19
              E24ABC9C5D49C4298F51A8D0DCC8872384A03CA0560A2E05B5281636EFD7BB6D
              3763BC1C4F88F7AD58A1E21848A6B11E097D307282A69799A02EBB5D570B27FD
              AF7B852A80904E9DA84ED5C41DE3FEADF657133752CC990A75CAAA82D5CC3715
              084FB9361D7AAF01DD0C603FBAEF7D08FBF6977CBBC57F0B4514EC3AD097885E
              695238797388EC2412A7563D40D81F33FBEB9DCF6229F8B37754EABD58B6A9B2
              0BC165B4E5072B8A48D3D4074755BA87533AD2DDBF8F6F5454F21EC87FE49225
              F4AC3BF423EFDBEF9258A0695778F97047DFB34B86A2472EBA1D72C70D5E5D7F
              4ED9A1DC133E3F8FFCDF21EC9554BC1ED617C65056DCB5C82FC1962CA404E5B1
              6BD7F9DFD3DE1F80E4C41829B40A716A6BB056944DE1077365692A5000FCDB24
              F302FDAF2BECDDC40D28E2EA46973E83379FAD8FBFEDF3D943BBF6DF1810CB29
              88862330AE13EB6D6B75B5969208480728B829D55E76E476D54E62FC3DD6BD9B
              887E25F52AD632E31D9D82C35DD68D1766246243DBA6A218B86D8AE709F794B5
              3A853BE8C332BB61B490544F2F2EFEED98384E92C5777374EA5B739D8C254248
              E3C647016D2C9CC42522D6CAAD2DDE079EDDDBAE0A7705425AB52A53AA24FF00
              AC57E9FAFDB698CAA52A8786A6D421C64C890C84E56D64E5ED2C249558136172
              A36BE80FB41955F90300DEB8DB4C0FB65527F11F553617C3F030EC5763531C92
              A6DD567571E4ADF20DADA159240F2DB9317E0F878A64D3173E44B6DA84B5A8B4
              C3CB6C3C149B5945241D08491EAF3D7937798A2562535844EA72E9EFD39F4467
              5959B90E640562FC88B9362398B1EFD60DE46329385DDA64585163BB22A254DB
              4E485283687388D2466CA926D6714AFF0067CF660CF9AFAAC16DC8BA9B059A75
              3E3C28A16186101B6C2D6566C395C9B93EDBFDE372B04D3E462B935D9736A0A7
              5D534B6D94CB71B69A2816364A55620D812083DFCEFADDE18A9B959C3B4CA93C
              C2A3B92E3B6F29A37EC15241B6BAF7F78FB755FE20DE2CE81BC61875AA6C771A
              F486194ACB8B0EAC381B24A465CBFE1091DAE4CB9720D8ED603E4866AA5B7AEA
              DF204BB4A71BCC6CBA6D41272EA756879FF2FE9ABF8307E731F487EFDAC77C2C
              17696B6CDC67A6CF4DD36BEAD01A03DFCBC3BB97755FC1B0FC1AFE02FF000ECD
              A4E70604AAAD04A32C5B5BA5C6A043A7D4E5A590E456D5FAC2D6506C2CA0A1A7
              5E1B2A84AC2F50ADB71115C4495DC252D2985361D50E4331D0FA873EED8EF16D
              0DAADD4296C3CE14349A721D70A79948B0B0F3371B2FF1A6EB613B0153B0FBEE
              C6A833F950852B324A53A93E208D48F76DDCA54CB9B2167798EB1D16452E928D
              EF50AA226706A4E3B62C04E60ED90403FB536EFF002F6EDE801A279F5D0FABCB
              4F36B295237C1462E5F3197742BC464EE3E5CBD9B7A250B5D876BEAEBAB795F8
              9B42A06B9AB6516C8290FF00AACA2C99F0F0BC2851DC7DE7E4BA86D2D8B92BB2
              02536F3B9F77B077E06C3140DCAE14557B153CDAAB4F272294819940917E0B43
              BC9B6A7CBB80D8D379D89E8D84296D576B2D21F9718A9101B201529C501708E7
              9741AABB87AC0528777386A56F86B323186359097A9CCBA5962032BB274D72D8
              1BA522E34E66FEAB8D2AB9A8CBACD1AF6F628E6C3BB5714FFD5255855790EC2A
              5C46E8E958CD1DCBA9D5A7BFB60800F3B6961DF7DA4DF5EFA2978830C8A25062
              264A663485C976424D9924660840FCF49B76B9696D6E7607DFD6055E10C60EBD
              0E3F0E8F3D45E8C523B283CD4DE9CAC4E83C08D97F46A3542B751660D2E23D2A
              53AA09436D26E4DCDB5F01E674DB6D36527B4546840E2E060A34DC16BBDAC3A7
              21500FAAF617B76143EDDBDDD6F693D7F2FD7DFDE8FDD2608A46EBBE0C76BCFA
              5CC515A5FA23694F68357198A1207EF7557A80D3E73B5C2422E39E9D7D7D77E1
              C5D50E748D02260216D6EBAEBF9727CB6833AFF3BEAEBAF6DB256AB73FABAEBD
              B6C46B88B04DCA57CEC38CEC9664B8C34B90C660D3AA402A466D1594F317B0BD
              BC36948EFEBAEBD5107167BEDECDB05C5F8EBEADA74E0A994AA8A8E2DC394D96
              E449F5EA5C594D9016CBD2DB42D17008B82411DDD72E618EB090B7F64D45B7FE
              B9AFC5EAFD1DCBCC73B8DA7E2DC533EB722B12E3B92CA54A69B692529B2529D0
              FF00B37F6FAAEB0DE66E0A4E1FA0AAA78766C8A9966EA90C2DB01793F392073B
              778F779ECA6683E01741280870D02F49A71DE121FF0079A883FF00DE6BF17ABF
              4776C9C7784B4B627A27F1E6BF175F67E78DD40804EDE8CDDDEE0E9B8A305D2A
              B4FD6E647766B5C45348692A093723427D5B68A986A74C4B9C961E4EE5E9AA4D
              5A9D598CA91499F166B095642B8CEA5C4855AF625279D88D36EC2360EDD66038
              DBBFA148A6449AECC43D20C82E3A8092094A45AC3F7BF5EC58F2D414024802DE
              1B61A8E6B0C8B84C68252F19CDF191FCCABA7E34F645EF61F070FE527DFE7AB1
              BBBAEBBFEBF3D564B79C89569D29E0EAD86B127115C1654E9427D0122E52904F
              CE3DE3BFC0EC4CAC5D02C6E2A5FF00C5C9F3FDCFC8F44ED752A4C403A220D44C
              8398F5AF5D79E49D7AEBAF78BFC6F800EA9A8DFBFF00AD724F8FEE7EBE89B64E
              30A777FC236FFDAE4FF37D7BF6CD4DC40D0AB2D427BE9ABD3602E92D57B0949A
              FD314A5AD4EB2337015C87679126FE2396C0DB99A1D421E23C6389E0E1D954DA
              2B911C6E1531F0A4ADE5821400075FD811CB42BB0BD8D9C4718538F3F847FF00
              8B93FCDED818C29DA585475E5FD6B93FCDF98DB537105ACCB94AA2C9332BCD58
              B6950F15B34CA5E0EDDDD528B59320711E75B521084804105474B5F52A205B29
              F1B02FDE461C5D137BD0B10D728327105064C44B4F8663F1CA5C4B792E527BFB
              20EB6D2F6D468EC462FA4E50AB54797F93248FFF008F2EBBB2716D2AFCAA1A7F
              A364FF0037E5D776915DD681C9419071496DD1C7AE608C218CB13B1876596A64
              964D3E94A0A0E96C38A04DAC4D80706B6D721EED762BDEE634C511305D19BC39
              449C2A95989C47D6CB2B7150AE946648005C2AEB20136B5BC7930062CA57FA43
              FF008D93FCDF5F644317534A6F9AA16FFDB647F37B26A5539B339B289ADE052D
              F703258A1D1AA14D6B0D57A34A4B0B9B266CD8DC332D69B0C891E3DAD1373DE7
              BCDC470CE28AA47DF755314BF84310262552326225A115456D9FC90CC6E0023B
              1EE577F22F638BE9801ED543FF008D91FCDED838BE980905750EFF00FB36479F
              EE7E47A3B4389EB17161BA8196894A6DE06EB3152EAF8B310D27103694D41877
              891C344B8E3393F590A37E6004E9E5E5726FD4D347AD52B00A456242FD1DD595
              4586E3391518675E6B9E67312081DDEDB1305E31A58362E4FD7FD1D23CFF0073
              F23F5F89B6FF001C299CB3D43CFF00ADD23CFF0073EBDF61389716652D3E0AF2
              09994516D3C7AEBAE7F776C32717D33F64E4FF006D3DFF00E6FAF7DB66B17531
              4AFD7271D0FF00D9EFFF0037D7D8A6B8CC652AE3B545880DB1751C0FD9419DF6
              B1F76C93C04CB6309372D129B61498EE224278EA42DC42984E40948D15DA274F
              7E9B3824D52355314D39509325419872C385C8CE361372D5B552473CA7DDB2C3
              77B125BBBB57571A6CF8CDA1A515A1942D4DAC709B3DAB100681435F1DB486DB
              E4BBDB0DF97A493139478F8FF69AFBA81FD8353CDFBDCBFD22BEEEBBAE715536
              5D5B0F4E834DA83B4D9AF22CD4A6890A6940DC1D3D563E57F651EEB494E04A71
              079A9CFF0098AFBBFA7B8A82D5F9DF575D5BCAF8FA50C85CEDA4D9C655FDCEF5
              55D85A84AA1457995D5AA553538B0A2B9EE87149D2D60401A6DC58C70D49C40F
              D33D1EB952A5478EB70BE982E9694FA549B019872B2803C8E971DFB5FE750E4A
              E7E5D756F2BFD997CF37D9B4389BCC2C391629B13D0A9F1E2FA43F2784808E33
              EBCEE396EF51EF27F97CF5199584264AC5CFD5DDC49586E215B2B660477F2349
              291652542C73255607FDA573B8B94711407CEFA875D7AED82B5FE71F6F5D6BE7
              6831306429912FB7D09CF495209233D3A722E9173AB6069AEA75F1FBCC5E84BF
              CE67E93F4EDAEFA471692A6D6A576E04D46801372D81A036B9D7BEDAF86B6E3F
              828F80FA45FDDB6CA555B901294F691A229C434EAA1349A852A2A5FF00EA46DA
              582EA5174F78D4F9DFD636AD98DCB4719A5C7536A52149528B89205C5B90373E
              3CBDDB76EF302060CA41360AB342FE561B25B17C19546AB3354A1E60E1209424
              D8939ADED07416E877A93DCD698595F7194E88FE1C760E22808911D2E29B91C4
              61DB025B275579EBAF2EE36D9A23975D7F4F9EBE6D4CA94FEFFA96C3CA596987
              D21A41E494F0EF7F6DC9BEDE95C9A5C72EF1D7B7EBF31B70B69365C0ADD40D97
              9E7F55E870D170F2C005AE3BC147F6C52923EA0AF7FB4AC371DBCD5EEFEAAFB3
              3195C9A3CC29E3B68B666D4340E26FCCD89046971B7A9B79946C395BC32E47C5
              CFB5169F9C14C85BA1B2DAEC6C52A3A5F5E46FEDFD9235FDC86156E928AC271F
              466E92EB9C36A4ADA414155ED97367009D0FBBD763C1D461A391E10D569CD213
              B8E2DC038C290A6E4D4E8D3219CAA5B33169490798252BB1BF9FAFCF607AFEF3
              F016EFE0BF1F07C3852A79565E1416C21BCC3BD6E5ACA03CAFECD834EE370E26
              0C599F1FE308B290B5B2E965195D4A012B20F135B006FE16DAB216E770FCDC50
              682CE32299A63B52582B869CB212E24A870FF29755922E74E47660A74818930A
              892AB777D8A2AD8D37E140A8D6E4719CF482528E4865012A395209D07BC93E3B
              7B3CEB6F78FBFAFE9496E670560AC358827354DAEC7AD6216925B502A482C8E4
              A0848275EE26E6DCBD6EC0000001A75D75AA314E692034594603A959007701EC
              EBD5F5795F0A4822C00F2B75D69E5B7DD75D7E9FB9F5D75F5E6701051A872E52
              6FCFAEBAD3E3D1DA6500A1E1E7B42A161E23AEBAD73399974460CADDB0083717
              1E7D7F2FDFB70BD54A78ACA694E48693505B3E909615A296DDC82A1E3ADEFE17
              D6DDDDAD1D144F5D7AFEFDBCB3FAABAA13293BC2C393A9D21C8D2D8879DB75B3
              652541C575D5B6DB85A42A43503CE5BAB3DFFEE64AFD2313E118DDAD57360B49
              E7DE5C6C7BEE91E647780DDDC48B6E930D5F422377FEFD5D75A50EE437AF171D
              C010AA25B8F885845DD686897D23FC2207DA3BBD5F35ACC34D4768371DA434D8
              2484A0048B93726C3CEFD7275573837A37EE400027305293ECEBAEB968A02F7B
              0BF9ED9E5B60E9B66D510497C5F57A953A8F889DA64C5C3715890321C6820A82
              3D15B246A0FEC93DFAFB3607F8CF89BBB12D47F82D69FF00D3C86CC6A7328A8D
              4A7469C86DF8CAC5CEA436B0142C2213AFB75D7F97538730AE1F420AD5498094
              A45C92D27AEBDE554691C177365E3F0787A45988A598CEABCFE313E27BE9892A
              23D49647FF00C6D918A7145ADF192A3FC067F075A786CF48F87F0D4A4297169F
              4C75093625B42543DE3AFA89C8C35878B5C4F832016C8B8506D363EDEBEECA1C
              40D3C9753E2BB30FFE8489F8D38A2FFDF1D43F80CFE0D8D5C9929A81E96BC635
              5E1A52D36EA018E561C520A94400D5CA7B49F55942FB319BC31871442134BA7A
              9797358369BDBC7AFAB96D2270B61E5E609A5403636366926C7F936D0C7968B8
              0564C46D0D9D548CB48B63845D2BB0D54AAD5161D725629AAA53E98967307A33
              7C268A492E1CCD6B6B27416DA2A84DADC7C36894C63398ED41010EBAD0547FD6
              D648164F0EE081C327F7DFB5D9B1F14A81AFF5A217D10EBAF76BF1530F9247C1
              30491CFF002434EB5FD1DC7D21222128E3701D2660C3122D6F0D77A57A25576E
              CB8E62EA93711CA7A64717347395E20129B70EF6173A73D39ED64DB95335292C
              2B12D59B65A6DD534B54988448CAE212950CAC92010B51E46FE3CF6384E1EC2E
              A94A8C9A7D34C848B96C253980F31CFAF76CBC39861B9086574FA6A5F5FCD6D4
              94852BD43D87EBF61673C39F04B7E2B04EFBA79F9A5FB2FD45E861E5634A930B
              43614FA56639C854E84A48FC98240485923C81EFDB25DAB26AE513313D4E1406
              52B2A5B9222294E8CE128526CD6971DAD46A069B3026E1CC2F0632E4CDA7D363
              C746AA75D094253EB274DBE9B40C32C942E643A7A0AF449742466D390BF3EEEB
              9D679BE50ABED58204F54F95BCFD523EA95FC5502A12629C4F3165970A33A50C
              90A00E841C9C8D81F7786DCE9C578A81046249F71FB933FCDF561E1B3CE5616C
              38C238AED36021AD3B4A48005FCFDBF5FA8ED8185B0DA51C4729B052D0198ACA
              000078DFAFBB317106217499B536606DE849E7B523862DC5606989277D133E5F
              B9F90F76D918BF15D85B124EFA267F9BF57BB67A3785B0C3CC87DAA6C05B5627
              3A0029B7AC69D7BF66B0961B75016D52A0AD27914A0107AEBCD9D753E2BB2BFF
              009FD3DD2CB769892BF51C54B8753ABC89B15505E70B6EB6D8B2925001052907
              F6476A0DDE53D8730899CF4490A2C45580FADF42180782001948BA943377788E
              5B35E551A9D49C5F4D34D86CC62ED3E685F0D36CD653045FEBD965BB96E42B03
              BB9115111D51541C70250B8A9B340F68285C1D06A083CB6734584F3AA982C453
              A956B3F0E32B4E5B7AE89B5BAA1FD82D375D3F2B7FA4575D684557AA42A3D31F
              A8559F6E24465214EBAE9B25209B6BED36F6FB877753FDE253BBB577FE62BAFE
              8D3877E05B46ECAAC5D2E00171F2A90E70CA17C76F2AB36555803626C926C34F
              2553130170369DB175BF73BD4A25A0E22A3623449F812A31A7263A825D530BCC
              1248240BF2F1FAFCEDD1509D129AD716A12988AD95650B79C08493E17279ECA5
              FD4C5350FD0EB119A7642DA61D6CB687247183495051C80E44F686B7B69CADB7
              5EFE96C30FD0E52D98B32432892510E5C154A6969B379964022C5272017E6576
              D8AA61C1A991616BED29ACDAD2B4256DA92A4100A540E8478F5FD194C961B4DD
              6EB682161BED280ED122C3D77B0B7ABD5B086E992C35BBCA2A223AE3ACA5B58C
              CE37C32085AB3272DCE50937005F4007B13B559344677893232674A8D557B113
              4E3CC870649084BF182105B3DE0A96A0A16364AC6BCB60A3426A16F056F74365
              32F7E0D8768A5BB2ACE429681905CDCA5005877F777F87ACC9F0427F363FBC7D
              FB43BF368BF43E1F6AEE439491945CEA11CB5F3F1FBCD87A227C1AFA43F7EDBE
              90EA084A7EB75698F6988A9E1186132323CCB48586C91DA16EE0799EB9EC9E99
              164C992B88DA9C7646894E9F37D63B80D4ECCBC7D3EA91E3535AA4C99287551D
              010DB4AB5CDBBFC469DFE7B27710D6F1CE1CA826AB53724C9A72D603A95142DB
              3E29397441F0B5B6EB530E2D90B31237AF9A893227EA83A64B790B54696F82D3
              96BA6DC2B117F116E5EA3B7A711F375EBAB7D5EE403D3A71DEAD163B4EF0E122
              4E45B6900159CA4DCF7F3E5B3EE3AEE2C79DBAEBFA471F1EE87B5A782D9444B4
              90977BE2A5CB79CC3B548F48556A2532697A5D3D28CEA71050A19820E8A293AD
              BC7BB9ECB4DE0E1954AA451AB384A8158874B6EA325E990170AEF36B70207110
              C2AE9CA02081A003BADDCCCDEAE29AB61F951C52E54288DB4C2A529125B2A335
              41C42780DF82883DDAEA395B41DAB638C47F06D5E5C1A9C03204FF004462991E
              2F1654509901ABA9248CC5405EDA6AA16F2AA199AD0428FD6EAB28980A354E36
              0688FC0AB49A38A84E932913E1F00B776EE02909D1082B4683406F6F2D8918A6
              B14ADF54859C3F21D6DDA730D5365371733518A10B4A939F922E2C9F70EFD8EE
              8B57A82697871AAD53A5FC273D81E92586AEDC77020295C437EC5CDC0E7AE9DD
              B2BEAFBC5AF3358AD4444FA546409463B2A75BBFA0A53238599DD75CC3B43973
              DA4BDEE23BD5580425BAAA355D1BC5C3722550AA111B8EE49F4948A67A3B3194
              5B504A43BAA9CB9B12546DDA005F6F50F3EBAF1FAFDE918F8FAB92AA30D02A74
              B8CCCCA1A662829A04467CB6855944AEF725570956516527524ECCFC0754955B
              C254EA854384653E8515F0925292428A79126C74D7522F7B12398E2438C38A8C
              8DCAFF00AEBAFD3A38BCA9BDAFEDEBAFAF63D75D73F3D627CF601BF78EBAFE9C
              750C34C2601753255717DBE500526E3F97681B5949BFBC75D7F24F9B30BF76C3
              4DC1DAA8442F3BEF277E958C238DAA945894A80FB11569425C74AC295742546F
              63E27A3B2337AD8FE6EF0AA90A6CE86C455C664B2032490A19AF7D7D7B7A4B1F
              0C56E63498ED1A9EFB9122BAC3A90635D1210D30B75D466B6A56A536D837E68B
              0E5B09B31B1EBAA4473067213293110B74C300B04064BAA1A0D4A9D524F825A5
              9EED3AD472300817EF497C92BCDB499F3293518F3E9B21C8F2E3AC38DBAD9B29
              2A1DE367B47FD5335F6A3348768B4E75E4A005B99969CCA03536074F1B7E8B1A
              51A955FAB5192EC9455E2542454984291E8AA6F80CADD5172E16D8164B62D704
              8040BEDC86162F8D25F7170E7A69AEF10AD498A1F79B63D2C2014A0B632BA968
              2880335C1CD616B0373D953FC879AA0D2344CADCAE39958FF0ABF559D11988E3
              52D71C21A24820250ABEBDFDAFAB63D5F23E7B07EEB9B98DD12689499498A673
              A60996D70DE547EC84958B037B855B3006D6BF917AB91DB9D5233984D6F6A526
              145B8AAC4D4ACDD29C6524239683D197A1F693CEFCFDF0EF74A6B3BC0C23862A
              AF3E8A14B4BF22432D28A3D256849284123CC72FDB789076FB07174566A01C29
              C8319CAC8900683D1DCE76F5F7EC5BBC4C154EC69163B53DC7D8911561D8F263
              A825C695DF63EC07D97F3D9951E29B81769F451A099091B164E18730BEF0D186
              28955A2C86E9A80FC796BD2D9B421249524D88EFB58FBC4AA327119C02706380
              88B4D64565D9009B2A32D085B68E5F9EE1F6DBF376F40D0F74D43A740AE465CB
              AA495561A0CC97DF7C29CCA0DC58E5E7E641E5EB1B15D4307D327E145D01D4B8
              98AA88886A791943C5B400076ADCF41DDDFEF3A789A645AEA1611AA494992DE0
              AAAEEBF18BA548A7CBA331027A802458309CA4DAFE20FF00BBD893773587F0C6
              EFDDC572E8D52A9CEC45537652DA82CF11C4214559491F9B64923F7E3D875893
              77748C4182A9D866639253060A594B2E2149E200DA72037B5AE537074EFD8AA9
              3018A5D2E240889CB1E2B2865B07B9294803EA1B53AAB4B623FAD550695152A6
              2EAB448D2D51E5405C9642CB2FA72BAC9239287711FC9EE4F6E5609A2EF37785
              4F767499A5831AF264AF338BD166EA3E22FE5CBBBB9DEEA7336A48514DC5B30E
              63AEBC96984F74D0F0E6255571AAFD7254B7092FA5F7C1448B823F29A5D56BDF
              53CC7AEC0C70874EF56E06CBCEB8654A462DA1D42634E88ABC4056310A43A7D2
              4050FC9D8F8917E40EA6F7B1DBBB78FC38158C6EAAFC3A97C6535243D4C9C337
              0DB602F4D6E00196C069E034B1D9DD4EDC850E0D5633C9A9555CA64697E9AD53
              16F02C25CEE36B795BC6C2C4F3B5B57375902BD8A4D56B155AA4B825E4BE294B
              7BFA942D2900767C34E5A7878EDABA7666079DC8321555BC575EC40377F869FD
              5CAB496E5CD45B9B4CA02D608EEB93EF1B737EA84A6E15561C7EAF889B5B9571
              18C5A7369794925C3720A520D8D89B926FA0F79A230E487B7A2E620942F12353
              131220CC2C16A5A94E1B731A6517F33B51EF0B75F0B1AD66154E4D5AA509F88D
              06DA4C6524252428AB38B8B856A35BFEC47B321AA1AF6DE05D30349052C17437
              EAB5DDD6611C5CA7D710D31D7DE8EA7149257956A4A4906F701291E562073D47
              A9CEBD3B07E1FC352E5BAAA3AF16AE9EB19C82A6006884DFC3F28AE5E5E03674
              CFDD1C2A8D268D1D75CACA2A14A5B8A62A3C605FB2CDCA4AADCAFCBC35F6F44A
              DCFD01DC09130D32F4B6511A47A5B7312A1C6E377AC9B5B506D61E56F13A0576
              183DBFCA02C3A207DDDE17A74CAD6F23062B8EE61F624C775A8E9788CA6EA565
              0AD4D894A41EFD39F8EFB898E293BCFC474F7A9CFE1F52E1B6E33475BEA7D396
              E33399CE875B5BF7C7C3637A5EEA215370ED46043ADD61B9F5090994FD4D2FDA
              42969BDBB43BBB47CCE63AF2BF6601DDC46C295A9F587EAB3EAF5596D86552A6
              2B328360836BF7F24EB7EE1EDA355A43AEA652AD310280C5D4807F650277DAC6
              C9CC02B8C9C0E03A88C5659595072329C7160329C81B50164D944937B731CF66
              FE2304E32A291CBD0670FAD8FBB656EED5A786ED9D790CA168434B19BD15C756
              9BB2D83DA4A804F31CC1B589EEB6CA68D3BBDD7A2D8AE0D1527F4FAA69EEA4FF
              0060B4EF5BBFF315D75A5A6338354A961B9D130FCF453AA8E200664AD19820DC
              13A5BBC022F6D39F76953BA7D30353FB85DC3FF115D75A5BE2DAFC6C31419356
              9AD3EEB0C140E1C7466716A528212948B8B9248F0FAB44539B42E76D3FFCCABF
              B9DEA83B73D45AEE1F8F596F143725739E9414996ECDF490F37639427965CB63
              A5873E5A6953FAA225A61D2A99213499B25E417B24F8D21D6043D1370B53609B
              2F416D01CBCC6C698331845C6311D934E81528D19B500872631C34BD7CC2E8D4
              DC029B1FE5EE230472500A079DF68FAC595A5C1620D05B643BBAF4B2777742E0
              7A1E431810221516D26E49482492483A12493981EFE6B6A9E1EC50ADE2BB5366
              9553708AB34B6242263298A220280A0A649B925398DF9DCA6DE1B3AA9AB84B82
              D2A9663AA21BE431F2941D4DED6D39DFDBF58E398F2891F112A8B5172453E697
              784CFA5B0A6DB907BB86BD52ABDFC7BFDEE6B8E72F6894045A0A1CDFAB7C6A17
              0BB57721CA4F605CEA11CB5E7AF8F7FB4F77A3A3F31AFA43F7ED5FBF64716861
              173DA8928682E7508E5AEBEFFBCEDF072FFC627E94FDFB3E938E4081FAAEAC4B
              546625729C24A901B762A594A8E9954426D7F5D88F6ED34B8ED3D4A96D494A57
              154CB816924116B1B1B1EFBDADE76DA1DE34B8D0A9949549A3C09C4B28399F49
              24EBA0D3D5DF7E7B00D4B1E7A057531EA1496A3D3D45390B6EA941B1F9C1274D
              3C80FBFB746A64616C6AB2D56E66E45DA9A1B92F7814CAA32F842A3CA1C6695C
              949CB6041F1B11A745A957AE52E84CB4ED5EA11A136E2B2A16FB8101479D813D
              FD7AD42AC4CD35BD4A4D163B399D53A12F3D988B5D2541361CFB8EBE3CB624DF
              1D3A5D4CD063C08EB7DEE33A421035B046BB79EDA026AB41E0BADB3E936ABC53
              71804813C113BB8D304CD532A975BA1BAB6579DA538FB6722B9664DCE87D5FA4
              6AD62AC00DCA724B756C3C990EA82DC743AD052D435049E648D3AE4BEC2944AB
              52D1293228D392B754D290FB2D216A094A89522CA23455C7B873BEC4404B530C
              36AC22F709B750E86C21053A3CB5948B9E595480081AD803A11B298E66512E5D
              7AFB258C796B1E1C38C8F745E37818448D312D23F8DA3EFEBECAD77126EF9FF4
              B2F54F0E39E9797D233B8D1E365E59EFF3ADA5AFB0FB315F6273134E1DA94D90
              D30964A9E43680BEDE6528EAAE69B27FDA36B69B68CC17E340113E2D4E534C34
              EA23B8A6DBCE0ADC70F68E6D46528F51479EC4324D9C96765B3F1F98F7EEF1EC
              440AC43BBB538F38AA8E192E3CD869D515B375A05AC951EF02C34F2F2DAC63E3
              9C191986D88F88688D32D8094A1129B09480340003A0EBD62DC1939AEAC3538A
              44F329294B0D8EC71CB96273589CBD9B5BFDAB69B44E3530B6C0561996D2805A
              D6EA596C943CB42C29C4EBAD94A04036D00E476B7648BB900D9827FC8788F746
              2778184BBF12D23F8DA3EFEBCFBE3771EE1352401892904DFF00F168FBFAF1EF
              2BE4D32A09C42B986893D0D18463F14476F3A9CE1E5E29466CA0DEE79F773E7B
              764D8B25EA5CF8ED61F9CCBEEF2744640CE7841054A095809254951200207AEF
              B2DDD139A4129E764B1A5B150198DE2DE7CF046631E614B6989291FC6D1F7F5F
              66C8C7B85072C4748B787A5A3EFD97D4EA5CF8F47851D7449E85B24F15B4456D
              697FF2B9B31528DC10904683BB98D76BA4979B9B2DC561A9AEB4FADBECAE2A3B
              081C5CC002B503F393A7236E4365B69D2B1CCAAAECB6B490D783AEF1C7DAFF00
              5459F1F70911A624A3FF001C6FEFDB031DE13FF3928DFC71BFBFAFB17B0E2D55
              2C446E6D0A63A1B88B69CB464769D2E28A55EC4587B36EAE14A7AA729F7F0C4B
              E0AA485B2911D2AC88097803626D705C41B72ECFAB67CD2FC4A9DB20367AE0C7
              68E3DFF3475F1EF098E58928FF00C71BFBFAFB3231DE13D3FB25A37F1D6FEFF5
              7E8EE02814D75A72519940AA4EF49425871D319A6886F2104802FDAB907983D8
              0736A76C2A8CF2A25310FD16A2A8ED06C3D0D111B02ED8375673AF6CF3B7EDAF
              7B0DA750E8551D94C063A41E5C3BFD611FA71DE13B698968DFC75BFBFAFB3E38
              EB09FF009CB46FE3ADFDFB027A13AA98F49186EA315E7830A71621B6F6ADE60B
              4807280160249200D41D2DB2FB1761CAAA60D625268926347E1BCE84F0AC1A45
              946DEA03ECD84E4110994B635378717550204EEF0D5306903D1D388A4C8ABD3E
              9A226297E432ECD014D1CCC0194D969D4F11479DF4EFDAD1CC5654A24636C1FC
              B9F00F8FFEABAFAF60EC511664DA5D662B4DB8FACE2821A6902E72FA2851D07A
              C9F56D251E90B668AD44A8E1E9EF2B884B894C14EA38885660B3A821295A6DFB
              6F2D89EE0EEABACB2E0B6736BD1E94BE0E688F39D514A7152824018D707DEFFF
              00873AF2FF00CCF5A78692378B1FB0071AE0DFE2EAFF00A9F3EB51B0F4885C46
              E428E199F77895B91D5051954A2DA53F3F429014952B41DE469B626C12EC7A8B
              630F4E538F30A421DF8310855F33A523436484852413637C9A5AC365B0319A3B
              D13FE140C4BBCC7BF3E304FF001A9FBFF7EB833F8BABFEA76C8C56F5EC71AE0C
              F630AFFA9D84A1D34B506026461C9EEBD1B2A827D0100254942C7CED4A815141
              3716EC7237DBEA752CC55D547C5E9E1A91290F32930428A5B055741D74E60697
              E5B373B38AB3B1DA261FA775EF1C7E68BC62B77FCF4C1A7D4C11E1FF0099EB4F
              67DF1A9D245B1A60DFA13E5FF99EBD9A0E486DC115463E0F7D6F942B4720A729
              52CA54BBD8720AE201E56E5DD999112FC5989461798CBAB6C2107E0D49B805DE
              674B5C2923CB29F0D8A59C5286C93625DE63DD117C687BBB19E0DFA15797FE67
              AF6699F8CF20816C65837E855FF51D7D82755A4B129153C9866A21D96D84A562
              02501A520129CA06A0156875BD8733CB692041437062B2F61894979A8DC32E8A
              72564AC86F5D45FB95CFF386D2593728BE1032E60EF4E1DFC6DE68A86279194D
              F1860EFA257FD46D0A31348D2F8B7087D1ABCBF77EB4D86114A8CE45699770EC
              C45DB4A7326962ED0058514DC7CFB96DCED1D7F29EBDB47A9111F8A1A386EA11
              D795E1C414F0AD5D04936D3E62B281E57B5B653F21DE3C9137648DEEE7C5158C
              4CFDC7F65B842FFEACF97EEFD69EC9138A24286B8BF075EDADDA57FD475F510F
              5C1425A619185652D94344387D0024A95C1081FB1BFCE04DEFECDB12290D38D5
              443B409EF3925B286DC4D292D068273A93A0F3CA09D0D927BB68320D1DE8AFE1
              13ABB99EFF009A34189A49FF00BDB83BF80AFE7FAF6EBF7C6691FE7760FF00A3
              57FD475F68C3D062AA7B8E1C3128A4ACA8ACD21002DBE2295C1CBC81CBA67E7A
              6D1AA9D05E75BE2E149A91C031486E9A9B80AB02E7217232AADDFA9D7664B388
              4BF84F6F3E28AE04A555ABACC876BF429CB8B19F48629E2CB21792E4DDC56832
              FD7B29704D0DC998297515CD75B8B1E38FC830952D4A50427E75B44A751A93DC
              74D36BBDDAD1A5D371AA553203D13353A494971928CD65357B5C798F7EDA6EEA
              9ED2F76EF4EF45297D0C2D09948E2AD4A1C24DD19504048D4F69571AF2D3683A
              E27B3DD74B02C1B3EB55A6C7CFF8891075E7B4A68EEA34C0B4EF5B9FF315D75A
              4BBCE86ED4303D52346A4355975494144175C2DA5D21693A9041D2D9AC08BE5B
              7A943882605601C2D4F66B4AA7BAB79F53E84970153278C92AEC0E760AB03A12
              3CB428A9419951DC3882C30FD6A52984361965E5254B29793A254A049CB61A91
              7212395C5D6D19435DDCB83B4AF8CAC3F53BD541FA9EE07A0C5C41C58669D28C
              B421708C3718E1242559557592559AEAEF36B77DF6B4DF2BD5964520D0EA5E82
              4977880D4D9861CF9847EB88567B6BCAD6BF7DC6DC7FA9F68552A1D067B75785
              2223CE3882943CC250A232F8A5473F31A903DBDE41BCBC14317B30C892869C86
              1C284AA232FF0010A8274BBA9565F9A351E3AF76C355EDFB4171D3E8B1B41C90
              A6DCEAA3A376F461083C96723960F2D2B503C55E6ED000285EF636D45BCF657D
              5A5C36F7B921F931E9936622AACC66E04F54876590A28FCAB29D5B4A466CC343
              A24EBE2E3C0B16A30B07D2A356D2D26A0CB010EA5A4A5294DB90013648B0B72D
              2E34F25555F0D6299BBD8F84442AC46A4B12D0A4BB1AA02CF20117BA54E00947
              325213A8046CCA350748E936BA170EA8461BED64C9A229002C954299F345CFCC
              4F21FA7EDB98FE0F1E0D7D2ABF16DBEF7DB2ED25D6CA9CEDD3A78B8173FAD785
              F53CFC3D9DDF7A02FF003FEB5FE1D9B4AA750142F175AEF81B9030E52DE430B5
              3212D8CE917B1173ECD95788CC6A9C447A4327B09B9BE846A2FAFB2DB3AB18E2
              3A5C1A2B14FA829F710E328E204339B2781073020FAAFB29E354B084AC4488CA
              9D3882E04B4992D0421C55F4048D7EA4EDDA69B2CA45D54C32C2BF5464400141
              4C84DFCD5C0FAB67F564038B70E6834F49FF0097D75C9512A0D17E56E812D4E3
              A8AB975232B62E95D926D9FC0DBF9366C55BFBECC3A3FF0051FF002C75D69CBC
              61978EE5A69E8A9F176279B4AAF3F119930A3A5BA7B929961E614B5CC5843A48
              4A82804E4C89274370A3CB420320EF131138BC28B5BF09D893C23D36422282D3
              79E416EC541CB23B37B73ED1B1B7711E39F8C2C63FA0CAA6AE77C0EDA996E4B6
              C2AE9505AD79EEDDBB7D948B904140D6DCEDC5BC19F888D0B0ABB4333D5254EA
              152598F1F84A74D9360AD15C3173C8E9CB51A6C861680D046BF544E9BC2E4AB6
              3DC4B872030E4C2C5524AEA9210E88F0948E1C38CB2979CB024826E0DCE89CC7
              9F75D636C6751A3E3083021BD09119D6E2A9965D616B72729D7CB6B4B6B04049
              42405723CFDD40C46C4B3DDAF3722A388623E2B6843096D2128311724A0F0C94
              EA90D282AE3416493B48C419F5C818E9BAF375298233CEB94A0FB6421B282E96
              96CA80173F339137D36BCCC904EEFA2ABE8A19FBD4AC2A933852A2352EACD062
              3218446715696A75FCE82906E6CD341561E3E1CBBEA1BD342E9D515C69D4F873
              10F4072334FB656AF477D0C152942E2F94BABD7F6B6F323D4E9B8BF8F4353EAC
              488A71A9A96EA9E8E0492DE46BF5D094F65BCFC6B136ECFA86D6B8E2662A6717
              D77E091507212A9CE08BC369210D381A045AE83C451583A055C1CDA585CB48A7
              3103FA852EBE97BCBAC479989234754399223392188AC331565C61E4CA4B2CA5
              76278999273D8007B079DF5FA1EF32AD36B5496585436D7223C7E25395195C62
              B57152F282AFA06D6D0B82390E77E7088F88D34DF4C8753C42B92AA1CA792CBC
              800AA5A4E540282807358A881CCE5BF206FCAE0DE149A6B6F5064CFB229603C6
              6C6097CBDC67D4A29052095D9B422D6E4E5EC799A229C6E562532374D8825E27
              C1916A7509111E94E28857A30484A344D926CB56A34E763CAE07799585B4034F
              01CBAD3DC36473CE63F455B15C6842A096172DB1008406D08499494F6145B22C
              5A2492338001279EB67449D8D9E9943F4A158CC5B8A1695456D2C28874895C75
              1170A09F9A5360AD08BDCEC9752CDD6042B984DEB0B1D05BAFD1F5786DF581EE
              1D75D5B45CEF0EA55B7AA14D6F0EA6AC94479A589298CD583DA34A1DB29504A4
              05A85C80090A17D36ABC3B331399B51873DEABFF005654596E348908E1A50D85
              B8E3896D2520E8D376CD99409526D63B064B492AF326DDBD43AEBA1A7D6B75D7
              8756D12B8AEA98DCC0AF314635C2F3757BC67BD082498A593D845926E90E8002
              802482926C0E9B3750C7C8F86F8ABABA64A20AF85961B4B6F8D76B83C2B0ED15
              02E85F30343A5858852044E60AA53A2C3DDD7F27D5E5A0F6F093FD81E24FFDB6
              4FFCA575D69694A98A934D8AFBAD3A871C692B521C464524902E08EE3E5FA2D5
              3BC1741C0B88FB26DF06C8F0FF0014AEBA1B243DB9A251418429010E2312C842
              D290DFC68CC8161ADE9D724F8EA7EDDA7C518FA5523154BA4C5A2FA5B1121AA5
              BCFA5C502801B5AC13D82902E84A7555EEA16075DB398A314B80A2C9F8C28526
              C07F9346A7DB7DA9F1A620AB41C6B360C6A7C6553E5C271056E42CDE90EA63BA
              A4B6579B555C246429B10542F7D0E9EAB9C3B90890ABA9BBDFA84DC3FE991E89
              19728CC6E2B6843AE94F69B0BD470F3DD3A0D1241234246A6CAB1BD4934A76B1
              15CA336B9F4A4B8FBEDA5F2102384345B702B27EC94E2401DD94F86A2950C494
              D9F4D3399C394FA9455CC6D6E39F07E6060B0D47E213A7EC56EAC026E06523BB
              623DE0CB545ADD6E052A2529E90ED1E20430F440A0BCF283402D5DE80142C9F3
              BEBDE4DA6C1F779B2998F1525437B12A8F1A13955A0D90FC50EA9C61C56569D5
              38E25A4282D01402B85F3ADA1B731626C1FDE5AE2D331055244082DD3E9AB7D8
              6522682FBAEB6E86805232F612A246B73616F2D8262CAAFC888C52E998529905
              4E5456C2E0AA221496A2A1B65F425C2A200B29E5A89D4DCE809E7C154AC4F6BE
              1AAC40A552DFABA6B2EB24B74C438F36DB41F5852BB409376906E6C74B8CC6DB
              5E461E7B50C9467237C45CA444A840A5C771A14D4D4A525D99C3291C52D169AE
              C9CEA0A41F0EEF11B12E3DC6B230BD4A3C76604692DBB025CDCCB925B58F476C
              ACA42729E7D917BFE772B0D9675EADC7721541FA4D0A8F58AA3150617010C538
              AF207194C875C1CC9B9CC2F616363EA3AA556B0B62AAF484D66253DEAAA17E8F
              092F47CCEAA338C25406BCC10E383C3F905C1A2F1C7E8A0278AE2677AB2A5B2D
              B70E8CCB3514CC101F6674AE0A597832E38B0561245816EC0F237074EEE8A46F
              59152445E1D302152171508654F0CC43CCBAE1234B1B70C8F3BDF4E406778552
              61C7F18C3F83A8D31E8CFC17D90E41CD6CC786E29649014A482066B800280D3B
              AB24620AB9A9B751770FD217318A136EB6E2A0A6F1EECA3E71CD990332D69092
              00CBA836BDAC358E6C80AA5C0C128D60EF36AF52A237362D061A64FC22DD3E44
              47E5B8DAD953A52119AEC8EF59BF75B517BE9A37BD698E562BF4D5D1E207E94C
              4A7547D355651632E60496C0B2B32AC45F91B817D8877590E1BF8169CE3D49A7
              B0E3AE17D4DC68C9436A5A1C210E000919AC94104123BD26D6D882A185281510
              133E8B4E9233ADD01D8E8576D7F395A8E66C2E7BF6597D39221100EB194010B7
              C119CC450691221B297E452FD3D6A6E4660874B45D0CDCA45EE8EFF136B1EF31
              9F8AD11701C7C488610E25C6A33A5AE26890EA9B1F3ADDD9EF7B7779EBDF130A
              D062C64C68D45A7351D2BE2A5B44640485DB2E602DCEDA5FC3EB91AC3B458B49
              914E8F4B84CD39E39DC8EDB294B6A3602E5234BE89F70F68B9CCD405603B8A16
              C518CAB145C42A871A9302541F4276A089066A92A2D32119EE9E19015750B6A4
              1D0DFC4765EF985328D2E454E90CA65B498CB699627256875B79B52C768A4594
              12D9EC91AF66DCF565C7A2D222B2C331E9CC36D30CAD86D01B164B6B20AD3EA2
              46A3C8F9DE1A7E1BA153A39661526232D92A240641F9C2C79F88D3A37A6D6A20
              410AF2B95454E4372B13D0A44558723BF4B9AE216392924C620FB6FF005ECA9C
              02C15EEED4EFF52E4430BBB6B88DB8F39F924FEB6A3AD937BABF346A2FB356A6
              DC78789A871A2B296A3B54C9ADB6DA136094831C000770B6CA7C0ED457702073
              D15B52911D41C2A61C71C2432929E12D232A2C6E5573CB9DC69B58208B70F75D
              FD893D79FD3BA555EF35A8E8DD5E1796A6E02E471DE6ED21952DC7139D5D9490
              2C2C4FEC881AF3D9C5826A71A83BA6A54F7A3BA633319254DC56438A00AC8242
              50557033126C4E97F6677730A0D4302531150871E52505D290F3495E525C5720
              7BFF004795B3BD25229FBBB9ADD3D890DB48723A03503336BE197DB0A08C963F
              349E5CEFE62D4CACD731B4BB573769B48C6553FA9DEA512E19C4947C4F0972A8
              539998CA0E5594DC290AD74524D883A9D081DFECA3DE3E396704458D265C0912
              D978A812D38DA6C45B4B2882A2731D05F91D873704F21DA4D4B87879745199A5
              1538DBA953EA29398E67092AB1F0F1F7727EA80A653A73987DDA84C4C571853E
              5951852641B9E1DC82C2939790E7CEFA723B1646F499772C1262532F0AD68620
              C3D0AAA9892618948CE18928CAE245C8D479F3F307CF5A58BBC3C36ED6E5D25E
              A83516A51E5FA1F01F500A717D9B14D89B824803CC1D3C65DD8A9F5602A39971
              5C8AF164DDA595936CC6C7B64ABB42CAB1248BDBD6B29926A14CDE5BF1A8C66C
              8549AA25F7623F434864A14521C5894544D92817046971CBC6DAC697381DCA49
              808DF7AED71E0168DF2AA99501D917FF00003AE7FA6AFE0E1FE2D1FC3FFF00EB
              6B8DE404BCD06CE6EDD3AA09361AEACDBEFF00AFCEF55C073F355EF57DFB1537
              B728942F0572E2F84CD5ABECC4789E122221D5A01B1558245BDEA1F5EC318BF7
              6B4BA952F8D4C0B8739092E2140A8A484DCAAE09F2D2D6D7636C65439C8A9D2E
              AD026531B2A61B4A9129EE192328047237BF977DBC369CC86DD2F424AA27A404
              94AF23C959424820D80D6FA9E606DE8A83982910E58EA6623ABAA5E2D05BDEFD
              0CADA36765E6439DC6C8D75F2E5B38AB1FDF661BEEFED9EFFDCC75F7770945E0
              B589A035212D2B8B202D9BA8664AFBEC0FB4E9AEBB16D63FBEEC37EA93A7FBB1
              D75A70B1A7AE3B96BA621A81B7B909A918E309BDE9F1D12D9790B6612D2733D6
              7906E1612787CAD73607E6E9AD97FE8F0A651F0E252F525266B92A247529C752
              2338B948703ED767B4425C427BB5CBADB30D9B98B647071BC3729A6A1E92CC64
              9A97A3B2DADBF45CCB280B2B20825495DB26B606F6D0854D0AA7852938728150
              9A99D54628D214CB6C08E88CA43AE210EDD638965291E8C4D89398A85BBAC344
              82D1D9F556FB14C3C7587243D8F236215A61A2994F8F1DC7E738E90F46E0B8EB
              8B4A5001B85A5601F2F1B6C0B86264087BA2770D05531EA9D4DB70A10F3E036A
              16282F1506858A54D2884AAEA390F68E9B37A34D1549D8969CC3926993DD7047
              6DEE02332096014B895249BE9DA19EC472D3B930E314AA7C77D1519957723442
              6238811D964544A5F90D8742D4E1CB95C71ECC54466241B6C2C6C8C9DDCF3F55
              098321692902A9539EE1AE427E0622B531B6105C0B08616CE53CB425398DAC2D
              C5E66FA75E16A1BD52950A726641AF46A52A6896FAE42523B6B5A92B5E66C9B1
              4EBD9B1E7AE9B7756B0FC3A2CBC1DF09D4E6C9973A67A5F14311D0A51B474A50
              165C011608692424ACA802478ED06117282C61FA84C98CD6EA11987534F69697
              194AE3B450A65B41421DBAB4591DA1724FCDD999BABD5E772B54F4D8509555C1
              B35158A7B2B6E347A68432A39F8A84B895B81CCB74D94F34BB1B05E6B5F44ECC
              9DCD519D8B13113315E8309F692DD354982E99094C9692A0B7D5985B328AD374
              EA3B1637D852BD4BA761DC4F4CA4D42B5527E73D67E6BC88ED0121AEC16DBB15
              5D27FA8D233242B99BF3DAC775788E81406643D4F62B0EC6AC4B0B21C71A7FD1
              50384D05AD4959D0ADD02D62A1C882002A2A833B0E5542C6E89F7A581EAB8A05
              09C852585AE9A8714EF1AC8548592D680804209085F6872246963B10E04A5D42
              13F5C9B54891E02EA537D2511187F8A11F934A54A2AB0175292546C3BF682AB8
              FE053A5B6D2E14E790B90EB25D650929425B71B6D6E2AEA072871C09D2E743A7
              8F20DE8D24C276488154BA2CE25A0D233AD9285AF8C067B64CADACEA41D395CE
              D94672C88B2331328F1680AB7758EBB60349EF27D7D7B7ABED554DC430A7CBA8
              308E2B26138DB6B5BE9E1A56569052537D4837B5F4D796D413B79749852A4C67
              A2CE1223CC6A1292784919DC4B8A49CC5C000B34A3DA20EA9D351650A398E8AF
              3423471BB0F1F1EBDFD5F68ED7D3BFAFBFEBEFBF6BA1B56642556CB717B1E63A
              EBCA371006A39778EBDBF5F98D90F66F0ADAE5177F5D75EFA2C7E9BE02C46ABD
              BFADD275FF0074AEBAD6F95D75EDFAFBEFAD163F27E206233FE8E923FE12BAEA
              FB55200BAE89DA21E710462C50246535F6CA0587F9379FD43AB6D538E538B1AC
              62F3D4C35255244479B68463993C5F4670A01401F9E5365DCD9400B6A36B44E7
              38CA45FE67C616B2E9FE8CD7AD761BDEA46CD58C4087BD00C8914B5AE24876A6
              19723B61B2168E11362146E7372D4DCE82FD200077C92A6428B08FC3EB451055
              978ACC730D4A2509295FA471C9507B3F688C99328F02BB6A45E1F42C6AF5144F
              126B4D48898751F905A97C47A6AC3C146DFB250394EBA8BA7DBC986A84CC6A8C
              2A93D508F4F799A57A0C286C4E643AF3E43B9909701C80DDD68FCD22EB478594
              438CE9AF626C5340AC50DE8AFC380087E6996DA9A60A160B84A79950D2C46972
              2FE24E6F0A8230C2699FF11E2AD25E7EA659514FC23C46D4A72E6DC4CC0A80BF
              972B5BBB68B784CD5DDC14FB5462E37577971DB1E8CE1494667501765DAE1212
              57755B402F6E7B28E8D856B52E2D322C710F8CEFF55A63A2AC565905B8E91381
              07B414A43A40D7F5DF5EDC95EA53F1A36255BB52852E2B553095457AA8869409
              4490971C571080A0B75B3639490D7CD046CB341B9A7B55E63099183E257E0E37
              7225766D424B4D53D94257C3598EEBB9139D59B2E527366E7A9F0E63662ADB6D
              6B4296942948399048BD89045C7B1447B7BEFDA50E21666E21994CA5536B94FA
              CCF8E95B85B6657017110A4B3C3794028F132904DCF3E20D0770954D87950AAE
              FAE6D39C8EBA908EB06B60094EE595F952ACFD8238AC9C9CCF08E9DC55528979
              99856D7C2F4720027C6FD7F2FD7DF7ED4E194DF9DCFDBD75DF71DA4D6E98884E
              B0BAB4390FD35B4A2694BC9516D4058958D48248573FAFF6560BC494442A6E7A
              BD3D3E84B08939A4A070547905EBD93A77F879699E9D39D426172B44B4949163
              A0EEB75E5D7390F3EBAEBDF586BB4A4BCFB2AA9C10F30D079D417D376DB3C96A
              17D13AF3E5B74CC9F0E145F4A992D88F1AC3F2CEB8128D796A74EBDEC0C8B420
              95D43AEBAFBF0B199240E6A1CFAEBF9796354A0C996EC58D323BD25B485B8D21
              D4A96949E44806E01F1EFF003BEBD96BF5D75EBD611B8A92A3E10F1EBAB7BBD5
              6C29AB2743EA1D75F55A5EBAF7F5DF8575D75F78646F057250562236C61493DC
              29B3CFFF0068FB2AF052A4A3750B54786B92955C2B2874654F0DBBA8A92A09D3
              43623903DDB35B15A49C5B4D29074A5540E9DFDA8DB79D68B29F6E8D15B6DF75
              0D965174256403748BE9B183D1B7BC47AAF4FF00E9CA0712E780620B4F82F446
              EA121581E0027BDDFF0098AEBF45EF698D70E271361E914B5CC7627116DAC3CD
              241521485858201D39A473F1F5DEB77487FB078173DEE7FCC579F5E5CF6E8DE7
              579DC3582E7D523C9119D6726570B1C6E6B02C1174DC9E5CC5BD9A0516CC11AA
              E36D43FF0032B7EE77A95BE01C2EEE13A5B90575797526AE3865F4A53C317248
              16F1BDF5FBF6DB1960FA462D6194D5E329F723A57E8E43EEB610540730852736
              A91CFC3CF618DC762CAC62DA3CF935D934F796DBA94B688800536929BFE50024
              0274D2FF00A3B77AD8BA76128D0E4429B87A2B4E67E20AAADD0A55B2DB8686C1
              2AE66FA786CF2D70A91BD73C44223C1B46770FE16A752644B54C762B5C353EA1
              6CFAF86BA0BD873D2DED5D4FDDAD56563A72A49F81CC672A2DD405495C5F4F68
              25493C24DBB397B3979F227BC8BB070555E4D6B0953AA751432DBF21AE2AC349
              5A516B9B1017DAB1163AF8FBC7E0EF2233F5E9D4A769752E3B351305B7188CB7
              9A5FCD014A58164EAA37049B0D6FA9BC697073A2E54B42E8C7CC82E4704900C1
              9DE1A7E447B3AF5584BD051E0CFF00194EC65BC347E5E2B573C4F83E7A9C293F
              3470875FD27610F8BF1FFC423E9CECFA148111311F559EBBE21586F752CFC0F4
              92E0162D32395EF7BF3D96388E8CEC1A842A8D11494C8052A284E854AB900FAB
              C46CEBC7787A35730AC15A54E22636C36A4A41238A32F217162765B3B459AE3C
              2221A90542C94ADC4905B1E2AD341A9FD3B761A6D092E06554876639BFDA7A08
              538A65E4865275013C2BFBAF73B3B2B0DA9BC5B86DA0AE2CC5092A51BE89EC0D
              938CD2AA70F7F74EA836CADD8929DBA1D0925293C2292951EE371EEB6CDFC50B
              F83311E1F7D4894E14224979E8D15D7CA4A92902E1B4A88BDCF7776DC6C6B66A
              36274E63B4F90EF5B291B1E7908477A121C898AD4F44A399DF06D25D972A4A1E
              71B0A4D9DCAD2C20D8A7320919AF6B9B6C10E6218D4688A9E8A052EA6B8329C7
              5E9301E5BB1D45A86DA1B7119B9DB8E94ABD455CF50EB389E9594B11A3D5C214
              2CF3C68F289235D3F5BF5ED1315CC39C04468F4E9CCD31B0A494A689272AEFCC
              7EB56B1EFF001D934EA168CA5B7F2FE86F3C7456E6CDE508604A9A4631C46D88
              C434D5410AE2996B53AE38B464BAB3AAC5094D80481A5858780C63AF83E96E62
              29102235183B51532A75750798BF0E32A4B894949ECE75B8A0102C14492798B3
              5935AC36992A986993592A2344D124053A472255C2D76E45CFC34E499B2E6D2E
              7BEFCD5A1D547728D294952D09CA95905AB66B002FE43682A383E48311ED7F61
              A9532DB54BCAD630C3A86D689548AA0A761D92DB6E32D544644AC0B3280D67ED
              801A4A88D329CD7FD96DCB3EA0D516B3889488902A0E52DA6EB48F48A93AE2DB
              5A004A1B754ABA54A09716A4A5248BE5E648D99AE4CC2EA5A5C768AF3F3B32D4
              09A03F76C2C92BD7837D731BF8DCEDA2DFC16EB8E67A0A9C2E2036FACE1E7C82
              9041093F91D40CA9D0F80D8C3C1FBA79E6FC37A911BD53BD4FA5D5B12D524C84
              B721D874C4CF8321735CE1A53238F98A8851CB639ACA1C92A16F9A2EB3A5CB82
              B99858AA9B0DF49A8ACBB33D2E43AA90A2F34124DCE650514A0A7882DD849E5C
              DD306A786202A62A2D3E7B4C3EDA1A58147941B52109294A02785609173A7ED8
              F89BE91A761086E32EC6A23919D4125A52280FA14926DAA6CD77D87BBDE42AE5
              06C79E6CA44A4ED4F15B6F51F0D7A452E2CE7E2C84AB8C998E655A16961E5073
              280092B5A4A81052149075D8CEAB170DD2A6D369B12912910EAD2F86F3EF3EFB
              2A6BB5C1E1A52415645715600D1162751A1D8CFE16C29D86FE0A7FF24E71D28F
              80E4765CFCF0385A2B4E7CF4F7CEEE24C3B21D6653D1663AEB24F0DD7291214A
              6CF7D945BD0EC26A4C58C5D4841D51C40CD3A1CBAFC78510D45CA87C1CEC1953
              14B4296CACA501A4845B3E848240001B936DBEDDFC6A4E29A862A6244698CABD
              2ECB52AA0FADC7DA4ADD6D295936193B2BECDCF337E40EC5066E105345B5D1D4
              5B2BE2941A13F62AB7CEB70B9F9EDDB1B11E1F88E3CB8B16632B7559DC537479
              292B3E2A21BD4E9D775E6806019551744F70929483600580EBAF5776D7F1EBAF
              E4EEB6832EE2FA49526C2A608EFF0082E578DBFC5F5F56D94632A55BB42A5CB9
              8A5CAF2FDCFD5D588C803B3104266E440EA7BC0F675D7D636A1C79FDE2620F38
              0F8FF867AEAFB64E2FA4A46BF090B77FC1927F9BF2EBBA9B17625A6CFC29598B
              145416FBD11E6DB47C1D201528A0809176FBCFDBB1B6910E9553655B4F5AD58B
              A6070591F1900469F387C1A6E7CF50477F2DA871F3900E25C4B01DA884313223
              6A94D9A62DE5A5D5252D21287473CC0A3B02E6E4DB99BDE04C9A6620932EA312
              4370D588CBA8710C2DC2A6CC05242C848248CD64DFC74DA7AC31856ACB9EEBA2
              A4DCB98A697E94D53DF4BAD16F214142B846D62949EF17F1EFD79B2BA7B3D92C
              0B25FE198184224DA5B6F55E4A9A4AE4BF161BD1DC4290552A3A1B69C17B9C8B
              680293CED7E43520C3D4CA7628A754A0BB570254A9125A7A4330D4C15B8B710E
              29B678970A6C066CA1655FC7F3BAD9A0E0C4B2C25E76B921E6DC6DEE3BB0DF53
              8B712F97F393C2E6A528836EE361E76585D38730E29DF429D585B6E485C92DB9
              4D5DB32C1BDCA580A3F3BBC93CB523437D202DB132AF7A14A616F0CD7290A8D5
              B8E5B8D017420E394E716A71C6D4947114A49B06D2F1423B440D142E4F6B6AEA
              AD128720D4929C654152A4480EC6CC5492D365D75ED54DB80A9C0A7F4D79245C
              6BA12FC1587E4BED2E7546AE94C798FBADA63C27D21D65C7D32384E5DA3701C4
              FEC4836EFD76E44E15C24DF0AD59C4610D4EF84D09F425584AEF77F58BDCDBE6
              DF2F96D01DE667B94EE5D386ABD446AA950A9B358326634E41A234F3D0DC1649
              5E53AE998B8B43873DEC32A7C36A49B85E64BA1E2A136AB195C1A95E716A9EE1
              792129494A5B4255623214E54DACA04E6BF758B586F0AC78153890AB38862FA7
              4B6E4B8EB70D61799B595207EB3AD94A06E7B46C2E74B1208F2691220E216675
              427A1CABBF9DC5B105D252D86D0DA53DA68A4DD0D8CC32DBB4472B10BE92F2DE
              79BA9950C5257124E2333DCABC779BAE144FE0223AD0A6E24671C72EA4AAF62A
              5E549000CD659D4DC1E5769901DA94472357E371AB0E8954B0BA62D49E1BCE3C
              BFCB9BF325E5A52491F3479D88A9B44C134C9B4E9906455D99F0632A334F8624
              13628522E525BC970146DD9B79770D62D13063468024CBA94C1474A9318BF05C
              2A29B9CA9528340909B9B0F217D8A40369E790A6E55759C354DA03D51A74AACC
              05155164165B7E2296A437C3612E38E94DEE13E8F99039DC9E7976925D629359
              A050E3A71124D596A6F8699309E5460A6838C9CCD900A336757CE3A902DB5D54
              E9B8127B8D2D2A9F14262B905298CCC842386B6CB6465CB6B84A8DB4DB820E1F
              C1315EA53CDCFA8834E52F2DA1AD233294A51B59B1C3D5C3A22C0800106DAC0E
              045D48E0A7DD061BA68C472F1051AAA26C36A32202526338D2D44B2C1CC42F41
              74A104148ED67D49D2EDFBF875D5FABEABBC11230CE10A4B94E853A5B8D970BA
              B53905C45894A53C92D848D123BB53726F73722F8E545213690FDD5DC623D7B7
              8FCCE5D7AD3564B95B744437BF98EBAEB5D56A00126C3AEBAE63C71A50EEB3E9
              2F9401D92223C739F2ECF5EFBE8BC6145586D1E96E05685C57A2BC420787CDE7
              B288745873CF95D1085C78A0FF0065504F851EA2797EDE2EDE6CA57F72E1FF00
              A947D836F41542AF16A78890ED3B8D210DD227B686CB4A49054A8C4137039E55
              69E5B2120C57DA811D2587EC86D29366946C40F56D4E97B440BFF6BD6FFA52B5
              2A152A1A8E02635202F44EE90DB0353EFDE5C00789E22B4E7D7973DA7DE7CB7E
              260EA9187568F4594128CB324A3336D5D491AE86D7E40D8DAE34D34A0DDDE25A
              552709C062A124B735BE206D9534BEC5D6A398E9DF7D89978B70F3EDFA32AA29
              7192733CB532B5051BDED629DAD8D703A6FE79DC35D579FDA2F6BF1755CD320B
              8FA9417FA9F9E5B944AEC89D35539FF4B1FD55E9DE95C64E5EC04F229B0F14A7
              D5E153FAA4E547814EA2AAA14B8D29C738E9121534C776285641D80939979813
              716572E5B1B512A784A8F2EA75088F90ECE7C3DC3521C3750484A6C2D6090068
              2DA6DC98B5181714B91155A5AA54B60A96DBD67D259BDAF628CBF9A3DDB37313
              53A4831CF75CEEE02E561000112AE3764AF49C0544E2BCB5C766324ADD59512B
              E7604A92926C34D52396C9E935AAAC3DE996615623229F26B96F4743B202C1E3
              472A0A01196E400DEAAB1E22937E7B37E9D8870B53E0C7A7C2985BA6454D9292
              8796A59F324127DBB0E889800E207ABEEA15F08BD291292801FB1710490ACBCB
              E710AB5AC54013ADB68DB3DC5C35DF1E7DC37713750E96577BC70B432BB92A92
              6955152B28B909E1A74EEE5AF7EC31F0135E5FC64FDFB75EF02B10EA34D9A8A7
              4854994E5267A5F284125B0A6D36D0D87710361EF8B0CFE7B3FC64FDDB3E8B49
              1764F7EEFAF159ABEBAF364418D5DAB39269B1A9D325A566337C36D978B79484
              8249B102DCF5F23B2F712CAC6985AA2D551E95365C2CE90E82F97506E4029293
              CAFC81B73E5B36E7535F838A5A79C4931DC60C50A3C926E92093EA4DBD6769AB
              B4C3E80F0B25799050907B5ADAC0DBBCDEDB766896385D0969D5057A5D43E552
              8EDA24AD11512148F4749B0590DAB5578EBFC9B3A92148B30823D2DD1996A034
              03D7B2CD14053F8DE9F5C4B8A4BD0DE5F11ACB70E0282124781B14FBBBB66627
              3B094B6082FBC4DC957CD1AEDC6C7386703B3D78769F209F48182A9B17D53E2F
              615A9CC69953F1E9B15C90EA73E42E6504E5BD8DAFEA3B015737AE622E1A5AC3
              D224B6AA1B5596E3B2F6A4ADC4A32119750335CA87703A6CD497123CE88ED35C
              436EC05A0A2425C170B4906E0F8DF61089BB2C1CDC796945192B88EB4182875E
              716A2849BA5292A5129485004652390F0DB2358CD1C27D207FF96F994DCC79E7
              528770F6F61358AB509A7696D97AA3324C34A5997C40C169B4AF314E50AD737C
              D504916BF86D4F5EDF4A58C1F06A71622DBAA4D90FA54DA5D4294C4761767160
              A936B9B58023BCF3B6C74776D855BA62239A4FE55725525B52243A1D438A162B
              2EE6CF7B0D6E76CB3BB4C22C25A8CCD16138A4473194E3C0B896DB2A2A212144
              804924E6F9DAF3D883E9B5D9B29EEED3FC9B7ED1C154122279E7C507D6B7C916
              9789CD160D3BD363ACC4FEAE44901C7C484A54929414DB4CDDEA1B7D1B7BAED5
              1D6E0D1F0F715C4332653ACB934349E132E16EF9F21B9511CADEDD8B9ADDBE0F
              4467DA6A921B81F910BBBEE153BC1FD6EC4AAE026FDD6DBE93BB7C26F45692FD
              19232A9D2C36D4875B580E12560AD2A04A49B9209B796D4E761C8B0F68F1D09D
              DF78F10A0CC35E79F253E12C6D1313515AAA448735B0B8C2434C2D9525BB1CC0
              8CF6CAA20A4DEC74D365F40DFC3121511D91427194CB88A7CC932732595DDD08
              688CBFB2E15B378AB96CD6A561BA652388CD298430B723A23BAA4A9410869208
              4A529BD85813A8D4F7ED43F267834535E87F03A114D53288CB6CBAE153A94ACB
              891AAAE2CA24DC58EB6E5B587536939818F4E379D471D0682EA8C90210753F7D
              31A5487D95D2D11A1B30D99B25C5CDBBCB4AE307C84232768A412398BDB6C553
              7CAAA5406A5D5F0D2D94C8A726A74F61B9695A5D6D4B48FCA1C9D8559415C88F
              3BECC2A4E0DA1D1912D34EA6B2872A0CB31DD616B52D05A69BE1A028289E48D3
              CFBEFB55B7BAFC1E9892628A6E68CE3298EF2DD90EAC86D2B0B0D379944A1398
              0364DB6B0FA1A1673E36E3D9BEEAE1DC5032F7F28620A641A13CEACCC5C679E6
              E505B6128405A9483975B2492741B5BC2DF4407E9D88657C14E371E9AEB6DC34
              7A4806A05C716841BDBB20E4BF7E87C06A56F6EEB09C898F4A91454ADE96A716
              5A2FB96256D96D6A50CD61741234FB75DB446EC70604B48F8259536C29A52CB8
              B5AD0A2D24A10329514AAC14A1A83CEE6E762CD446839D4EBE3E6772AEB6F287
              E3EF69BAA53F0F7C0F4AF4AAC569721A319D901A4472C8BB892E049EEB11A6B7
              1B55E27DE16215481169145F42974DA7AAA7528EF38DBBC26C122C160D94AB05
              2BDA2FADD248F116E968152A5987486934675C97E96DAE2A957649B05A937559
              19800084D85ADA72B763BBAEC1EE4561914A288F19A31818F21C69521B52B314
              2B228664951BF6AFB0B5D4F3496F3CFCF8DE02BBC6A85A97BE262B15BF8369B4
              9716D14B2E85AA46579D0E341C010DE5E60696CC2F6E7B5A6ECF786BC673A7C2
              910514F92CB01D399F056917CA416880A4AB91BD88F3E5B5F7C9C6196AA2FCD6
              E9E63CA7128E296A4BA8642128084A4B61610AEC8B588236930CE03C3B86A7AA
              5D129E5898E33C16D4E3EE385A681BDAEB51CA2FAD85B68F34A086B79D38F3DF
              31066E28622EF5A04AC6D51A0B30D6111DB7DB8F294F0CAF3ACA029C465B5EE0
              13A9D3B276AB4EF983349873EA387A4C66A6407A6D3C09497049E15F38590014
              902E796C5CDEEC305B6DC2E0D11A498EF29D65E4AD41F79649B95399B3293A9D
              1448B6D146DD5E0E8715D65BA6296853062ACAA4BCE10857369BCCB2523C4A6D
              B503400D0F3F3EE3DC38428732ACA16F124D727AD149C3F226408B25B625C812
              5085A5C5A7310941F9C84DF537B9EE076ABA6EF8CD6296DC9A5D01E90E080ED5
              2720CA4A380CA1D5B795072F69472136B0E7CF62D1BB8C302A889EAA70448696
              D3AACAF39C24A9B16428A336552C0D2E413B44BDD56115438D11BA6AD86E3C75
              C768372DD414B0B595A92E282C1582A528E524F3D818EA31669E477F67AF6ABE
              B6F283DDDFB53B8F53B52A425944244A8EEADD003A54D21DE1016ECAF2ACEB73
              7CA76216F7A5015BC1630C886B425D09613316E8C8DBEA467E1A93CC9B11ADF9
              9B5B6B49DBAEC1F518AF467E8C9531216DB9C20EAD02EDA3868568A19404E961
              6BF7ED9F931C20722FE066D6F7A5FA6FA4675090E3E0DF3072F98201D6D7B796
              CC9A3A8079DFE7E9D815759049DF8309894A9230EC84B125B5B8971F9486DBBA
              5D5356E22804A95D92AB1290077EC558F378B0F06D4A851E4C17E4C3A8953AEC
              96D6025B4A54805679DD2338E5E1B4AADD360D545618F831618692A64A5A96F2
              43C92E170B66CBED273127B57DAF6B784A895871A5D461A1DF478EEC34655282
              5B65C484ADA4A41B124002FDDDD6DA1751B10DE7773FC6B3ADC50133BDF45410
              EA299417E6484477E74C4FA521B0961A754DD926DDA24A4909D34EFDB2D6F9A0
              49AED362B1499088F506E394CB79F6D8012E806CD85582F2F23637B8B0076BF5
              EEA308A61B315A80EC66E3B4B6125896EA149656A2A5B6A505DD798A8E86E35D
              A77776384DC9ED4A34B0D2DA0CA92C25F712CA7842CDA96D85655280E5A7AF62
              0EA5371CDF9F1ED8ABA8317E349D87312D3292CE1E54B72A24B30DC135B6C021
              39942C4764D8733CF618637DB13D1EAEEFC08A4A2921DCCD7A6A14E152161255
              96D7D491AECCDA9D029D53A9D2A74A638B2A9CB5BD0CA9453956A1652D401B5A
              DA58EC3BF25B8516CCD6951A62A34F2A53EC89CF843EB5282947267CA05C5EF6
              D858EA6000E1CCFF005BB8760566557E32DE7C5C3750A3C37A9AB7854637A6E7
              76425949E5A12A1AF31EEDAB57BE682D4DAEB532006914C53A892E098DF19CC8
              340DB5CC82484DF90BDCF23B111DD6E1A2EB0F11504BD1D2509909AA49CCDA4D
              AEDA15C4BDB41A72DAD23608A1C6855686DD3D2A66AEA53B29A79D5AC12A4D89
              512490480391E7AED64D1FC24F3C8F1ED2A866E3CF3CE8822AFBE13442EB553C
              33298AA263312A2436DF43814CBAB0804280D179881623BF6E695BF0A4B6DA0C
              4A73CFC54B914665C84B616B7DA5B9DB246994A0A4F9EC5B1F76585584E7F427
              DF24B395C9129D71D5F09414DA0152894A0100D869A0BDEDA40374F8412FC85B
              34E71890FC9135D71894EB61A7066B65CAA162388AB01A6BE5B166A13A1E639F
              9705066547377BCD45A9C08AF529685CF434E194A96D25A4A16AB00CAD4425CB
              0D4F686A4F7ED7FBCAC7907044582E3F4F7669905C5B315A504A8A1B4E671D51
              3DC34D3BEFB492776785263CC3F2A1CC7500213C2726BCAF4BC849417415F6EC
              4E99BEC1B5AD7B045031155BD3EB74F8B519C963D1C1917534CB77CDD949D02B
              53DA1AF9ED514490403EFBC6BE3DBA9B0572E087E5EF04BB587E161CA3C9ADC8
              443666C9911DD6D01B65D00A036147B46DAF76C3D377D34C8B59669EE5265370
              5BA93B05D74BA90125B5B692EAFCAEE8D3CB62A5EEAB087019418529A8AC3222
              9E1CD7526536159D2DAECAEDA41E57EEB0EE16CCCDD3E11906671A9799D9AB79
              D2D71D6002E94159B66D356D1CB95B4DAF250E1CCFF27B2FDCAB3390D5377D10
              A5E1B9D5C149966626637061C4CC333A5690A494F70EC92AD7BB660611AC44C5
              1872154A9AA57A34C683CF3ABE693FB241F306E0FAB6A356E9B09975868D352E
              A185F1541E714A641E1A5BF984D8D929481E16DAD30E60BA2E1F503494CC8B4E
              60B8511FD29C2DA8AC852ACD936B69A69A6BB2AA8A704091CDE4FA9F9056D279
              F2FEBE6886ED3A84B8E272436F46D27FC21BF3DB2A52D038CE8CCFBBA36D7E6D
              F6908054DBCFA7B674659FCDF33F56DAE571A5150B3B3DDEF3C9A16FD1B23AC2
              FCF65B8FE16EE1728AC79E7E65096F613C3DDE6218E94A952A4C4521C5363365
              CDD9D013E7CAFE1B2F3E291FFC723DE8FC3B1D6FA5B3F2635D871838EBAF3684
              3AE2119D44A9C424003BCDCF2D803E274CFF0027AFE997B74708CCED36060F87
              BF69E2B2E20C42FFD9}
            Stretch = True
            BeforePrint = rliSeloBeforePrint
          end
          object rlSelo2: TRLDBText
            Left = 516
            Top = 810
            Width = 130
            Height = 27
            Alignment = taCenter
            AutoSize = False
            DataField = 'SELO'
            DataSource = dsCadastro
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = False
            BeforePrint = rlSelo2BeforePrint
          end
          object RLImage1: TRLImage
            Left = 7
            Top = 829
            Width = 305
            Height = 46
            Picture.Data = {
              0A544A504547496D6167656E160000FFD8FFE000104A46494600010101006000
              600000FFE100AA45786966000049492A00080000000200310102000B00000026
              0000006987040001000000320000000000000050696361736120322E37000003
              0000900700040000003032313005A00400010000007E00000020A40200210000
              005C000000000000006234323131356265636162346134313130343236303432
              3861306562636132390000020001000200050000009C00000002000700040000
              003031303000000000202020200000FFED002C50686F746F73686F7020332E30
              003842494D04040000000000101C0250000B50696361736120322E3700FFDB00
              430006040506050406060506070706080A100A0A09090A140E0F0C1017141818
              171416161A1D251F1A1B231C1616202C20232627292A29191F2D302D28302528
              2928FFDB0043010707070A080A130A0A13281A161A2828282828282828282828
              2828282828282828282828282828282828282828282828282828282828282828
              28282828282828FFC00011080091028003012200021101031101FFC4001C0001
              000203010101000000000000000000000506030407020108FFC4004310000103
              0302030407050603080300000000010203040511061221315107134161142232
              718191A115425262B116232492B2D172A2C1333443445382C2E193D2F0FFC400
              160101010100000000000000000000000000000102FFC4002011010101000105
              01000300000000000000000111210212314151223281A1FFDA000C0301000211
              0311003F00FD5200000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000060AEAB828695F51572362858995738D2BFDF68
              2C54BDF57CC8DCF06469C5CF5F24288FA5BE6BEA88A49D1F6EB2317722655164
              E3E09F7971E2BEAF9164131A6F59555FB543E8E968512DD1B5CAF9B8AAB7F02A
              AF2E3C78732EE68D9ED54967A26D2D04491C4DE2BE2AE5EAABE2A6F0B9BC0000
              800000000000000000000000000000000000000000000000000000000000000F
              8F7B6362B9EE46B5A995555C2214FB96B447D57A269FA47DCAA738DCD45DA8BE
              5D53CF8279964B5357155444CAAE13AA95FB9EAFB3D035156A7D21579253A6FF
              00AF2FA914DD3B79BD49BF50D7F754CAAABE8B02FCB8F24FA960B5E9FB5DAD51
              D4947124A9C7BD726E7FCD797C0BC4556FF6B6F3719512C5655919C95D32AA63
              DFC913E678EEB5DD5BDDFBDA5A26E3299D8BF0E08E2F809A98A1A59359A46BB6
              F34CD72A7B2B239DC7DEACC98E4AFD6D6B8F13D2475AC4444491B1A48E5545F1
              D8AD5E3FE13A001AA8BD3F755BA51EF9A9DF4D52CE1242FF0005EA9D509431B2
              08D9349335889249847BBAE39190800000000000000000000000000000000001
              86B6AA1A1A496A6A9E91C11355CF72F8201A77FBCD2D8EDCFABAC572A2706B18
              9973DDD10D1D13A85752DAE6AB753A41DDCEB12223B722E1AD5CFF0098A4D724
              97DB7DC753DEB7456F8E377A05239FED2E308E5F7AE7E6A5A3B2AB6BEDBA268B
              BECA4D54AEAA7E7F3AE5BFE5DA6ACC8CCE56E0019680088BFEA2B6D898D5B84F
              B5EE4CA46C4DCF54EB8E804B83C432B26899246B963DA8E6AF545E47B000A6DE
              2E5515DAD68ECB4133D23863596B367DD45E299E5D1A9FF797240928000A007C
              72A35155CA8889C5557C00FA51F586BA8ADB27A059D8959727BBBB4DBEB36377
              4F35F2E5D48BBF6ACAED457092C7A46373F735524AAF65113C551DE0DFAAF816
              4D23A368B4FB1B33B1557054C3AA1E9CBC9A9E1EFE66B33C889D33A2A59AA3ED
              5D5922D656BF8B69DEBB98CFF17E25F2E45F911111111111138222004B7524C0
              0045000000000000000000000000000000000000000000000000000000000000
              000055FB46B75C2E7A6648AD5974EC91B2BA345C2CAD4CE5A9E7C97E057346EB
              2D376CA18E8E68A6B754A7AB33A58D5DBDE9CD55C899CF9613074B34AE369B75
              C9AADB850D354A2A617BD8D1CBF335B332A63C53DEAD9514E93C370A5742BF7F
              BD4C18E4D43668F1BEED4099E5FC433FB90F37679A626C6FB6AA227836A2544F
              A38C69D9BE964E296D5CE728BE91267FA8BF8549CFABF4FC09992ED498FCAFDD
              FA1A8ED7DA65AEC7DA6D55FCB0C8BFA34F91767FA5A2C62CF03B1FF51CE7FEAA
              A6F45A4F4FC4E456D9ADF94E4AE81AEC7CD07E043D47695A6E25C36A66957F24
              4A9FD583553B54B039AAE632B9C88995C46DFF00EC5A9B60B3B24491B69B7B5E
              9C51C94CC454F8E0DC8E8E9A26E22A68589D1B1A2137A7E0A5BFB50B1336E62A
              ECAE78776CE1EFF58C69DAAD897FE5EE38F15489AB8FF317A4A6811D94862CF5
              D887B646D67B0D6B7DC981B3E0A2B3B54D3CE72A2256A63AC489FF0091B34FDA
              569C95ED6BEA26855CB84DF0AAFF004E4B7C90432E7BC8A37E79EE6A29AB5168
              B6D4262A2DF472A7E781AEFD506C1131EB9D372395A974891C8B8547B1EDFD50
              93A0BE5AEE09FC15C2966F26CA99F9733465D1BA7A572B9D69A5473B9AB1BB73
              F2C1115BD9A582A2447C3E9948ADE490CEB84FE6C938176073E6E84BADB6473A
              C1A9AAE18F9A433A6E6E709D38782FDD35E4B8EBEB127F1B454D7681170B2409
              976319CE130BF342F6FCA3A4829B60ED12CB759929A77BE82AF92C750984CF4D
              DFDF05C89659E40004000000000000028FA89AFD557EFB0E3E16CA5DAFAC7F2D
              CECFB29FA22F5477427B585DBEC5B0D4553171363645CBDA5F1E3C382657E060
              D1F6CFB134FB56B551B5322BAA2A5EF5E395E3855F24C27BF259C729515AB228
              2E770A1D3AC637D191A8AF89BC113F0A63A235AE5F91758D8D8D8D631A8D6353
              08889844429BA1E396E570AFBDD546AD595DB62CF822F15F92231BF0717317E1
              000D3A6B9D2554CF8E9A66CAE8D70F567146FC48AD2D517DA7B0D0A4932E6795
              76411A737BBFB21CEEC1685D51A81D2D66F92263BBDAA955782AF8313C97FA4D
              5B9DC2B353EB06369137355DDD408A9946C7E2E5E9C38AA9D5AC36B86CD6D8A8
              E0CBB6FACF7AF37B979AAFFF00B960DFF18C5E6A45381A37BB8C56AB6CF5732A
              618DF55AAB8DCEF04378A0DC33AC35636863E366B6FAD50EE5DEC99E0D4F2F57
              F5331AA90ECFAD92C74D5378AF5DF5F727248AE56E15234F653CB3CFE285B827
              0402DDBAA001571CC83E3DCD6315CF7235A8995555C221CAF515E6E3AD6BD6C9
              A758E65BD17F7F519C35C99E6E5F04F1C7DE33EA7BFD56A8BC2E9CD3A88FA777
              AB5351F771E2BE4D4FAAF02F1A6AC549A7ED71D1D13738E3248BED48EF172FF6
              2CE3947CD2F60A3D3B6B651D137CE491530E91DF89497005BBCD500040000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000101A9B4A5AF50C2A959035951CDB511A223
              D17CFF001272E0A5434CDD2E3A535545A66F53AD451D4235B4932B5536B97922
              2AF345E4A9E0BEF3A5CD2C7044F9667B238D89973DEB846A75553966A0AC6EAB
              ED1ECB496A55969EDB2A4B2CECE4BB5C8AEC3BA26113CF26A73C537387563528
              EE545593CD0D255C13CB0E3BC6C6F472B33CB382275C5FA96C560AA96A266326
              7C6AC863DDEBBDCA8BC113E6720ECFAFD5F04F5F1D9E89D5374AE6B5913B196C
              4888E5DCBF34F6BA09D3B351FA001C728EDFDA1DBE5B9414CB2CAB2A65D34B33
              5E8AEC2AE58AEF7A270E85629AFDAF2CD409709AA6B5B4F54F6B7BCA98FBC572
              A6EE4D7A7AABEE2F67CAD4E5FA281A362AA96BAC96FABA8EEFBE9E9E395FDDAE
              5BB9CD455C79654DE30800466A4BB4563B354D7CDC7BB4F55BF89CBC113E6055
              EECE6DFBB40A2B7655F496F6ACD333196B9C888A99F8AB5092D5B552D655D2D8
              E81CA9354B91D3BDBC7BB8D38AE4AE5369AA6874955DDEF7354C7572B64A97C8
              D5447222FB28A8BC155578FBD7079D03A5AF142D8AF4DB8E25A86E1D4D50C577
              EEB28B845F0CE13E1837BFE33BF5D1A82921A0A48E9A9DBB638D309D57CD7CCD
              83E3551C9945CA119AA2E6B68B155D631BBA563711B7ABD7827D4C795F111376
              A8AABDDCDF68B64AB0D342A9E9B3B553385CFA89F2C7FE88CED12F34DA4B4B7A
              0DAA348AA6A9AB1C2C8F9B7C15DD73FF00B3E4770669EB5D359ADAE4ABBFD57A
              EF643EB2B5CB8DCE77B93AF4553697444170B5BBED99164BA3FD64A86B95CB0F
              E56E79B7AF52F8367F4CFD9DE948F4E5AD24972FB854B1AB3B9573B7A353FD7C
              CB695DD17497AB7D04D497D9219FBA7E29E663F739F1F47704E5E05885BB555E
              D6D7B759AD1FC2A2BEBAA5DDCD3B1A995572F35C797EAA86C693B332C9688E0D
              ADF4993F7950E6A7B522F3F82724F715375C282E7AD65B9DC2B29E9EDF6A5EEA
              3EF951AAF938E79F45CAFC1A5C6A3505A69A852B27B8533299C9B91FBF9A7927
              351788CCA9406ADB2E14974A3655DBE764F4EFCED918B945C2E14DAE4468399E
              B4D4F3DEEB534E698474F24ABB6A2767246F92FE1EAE1AC752CF7CB82E99D32E
              57CD2A6D9E762AA235B9FC49C93AF5E465A0B44BA69DF6769CA6EFABD51A9597
              095B95445E386F44373A7DD6759195561ECCECBDC4D27A45C244474DB38C923B
              AAFE16F422E9EE3AEB54D424D4112DAADAE6E58AE446AFCD7D652C163D074D15
              D1F73BD3FD3AADDC5AC97D76317C5573CD7CCBB92D8B3EA334ED3DCA96DAC8AF
              3591D6553578CB1B3622A7B89300CA8000000000000000000000000000000000
              000000000000000000000000000000000000000000000000000000000000186A
              EAE9A8E3EF2AEA21819F8A57A353E6A0660552BF5FE9FA46E5B56B52BE290377
              63E2B842164D7575BABD23D31649276AB95BDF4A8AE6FD3D56FC5C6A74DA3A29
              0D73D496CA0DCD754C72CC9FF0E3722AA7BD7927C4AB7ECF6AABE357EDABA368
              A15E70C49B97C39A3551A4BD9F41D92DCE8E49205AC9E3E4FA85DC89C30B86F2
              F9E464F7515FAA92F9AE657D2C30A515895CDEF2472677E1D9E0BF7F92704E1D
              54B0C3A3A0A0B5B69AD15951473E77493B5DEB4ABF9BA279260B5026FC314AB4
              F67F450D7B2BAF13CB74AB62EE62CDECE7AB93EFAF9A9746B5ADCED6A2679E13
              99F40B6DF2A1E268A39E2747331AF8DC98735C994543D820F10C4C8636C7131A
              C8DA986B5A98444E8887B000141D673ADFF5450E96A7639D1C68DABAC770C359
              9C271E79C67F990BF11B474091DE2B6B2489BBDE8D632555CB95B8CAA79267F4
              2C466B85BA9EBA8D29676AF708E6AEC6AED4F5551513DDC0DC54CF3008AD7A0A
              2A7A0A66D3D1C4D8A16F26B4D7BEDAE2BC5B24A29DEF631EAD76E673454545E1
              F2240011360B05158E37A52315D2BFDB99FC5EE4E99E84B00000005197B36B64
              B5D3CD555151342F72B9B0A6188CF8A71531276596274999E5AD99A9ECB56444
              C7C5110BF035DD531A163B451D8EDEDA2B6C6B1D3B555D857AB955579AE55725
              16F776AFD697196CBA737476D8976D5D6F26BBF2A754F2F13A498692960A3852
              1A486386245CA358DC21344769CD3D6FD3F49DCD04288F7719667265F22F555F
              F424DB0C6D99D2B63624AE44473F1C55139654C808B8E617CBE6AABF5C67A2D3
              D47352D144AA8B3E30B227547F2F82712129DFDA3D1D048D83D2DD13555CAF9F
              6C8EC63C15DEB60ED40D6CCCC149ECB7524D7BD3E8975AA89F728E67C6F6AE1A
              E56F36AE3DC5B56BA992BDB47DEB16A9CDDFDDA2F146F552917EECC2D7719E6A
              8A49E5A49DD97311BC58D77EB8C927D9FE93FD99A39DD552B6A6E350FDD2CC99
              5E1E088ABC7DE2E794D5B4006540000000000000000000000000000000000000
              0000000000000000000000000000000000006AD5DC68A8D7157594D02F49656B
              57EAA41556BBD3B4EE56FDA0D95C88AABDCC6E913E68982C96F8167073BA8ED4
              E85D3F756EB7D554BBC377AAABF04472FD0D375FF5F5C9FB28ACDE869E0F7C3B
              71FF00C8EC7D0BD97D8EA069565DEDD44E736AEBE9617378AB6495A8A9F0C9CE
              D3486B0BB315B78BDB2185DED46D91EFFF002A613EBE24950F65B67858BE9551
              5750F55DCAAD7246D5F820C9EEA6B6AE1DA4D8299ABDC493553B194EEE3544F9
              BB042C9DA1DD6EC8B0E9DB1CFDE39AAA8F7B77AE3F12272F9974B7E93B0D02AA
              D35AA911CBF79ECDEEF9BB2A4D8D9F0E5CCFEC9D77779116AAE2CA085538A6EC
              2FF2B3FB9BB4DD9950BE5EF6EB70ABAC97AA6234FF0055FA97F03BEFA315FB6E
              8DB05BF6AC16D85EF6F27CD9957E6EC93ED446A2235111139221F419B7540000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000F3248C898AF91ED635
              A995739708807A042566ABB151BB13DD29B3D18EDFFD3920AB7B4CB1C2E7B69D
              2A2A5C9C95AD46B5DF1554FD0B3A6DF02F00E66EED1EBABD112C9659A4778ABA
              37489F4C074FDA05C9AD58A9DB46D73B8E5CC62227C72E42DE8B3C8E9868565E
              6DB471ABEAABE9626A73DD2A2145FD85BEDC9DBEF3A8576AA71898D7489F3554
              4FA1BB4BD9859D8E6BAB2A6B6A973956F7891B57F95377D464FA246AFB40D3D4
              ED454AB7CBE2A8C89D94F7E7057E4ED5A09DC8DB5DA2AEA55CE544CAF1C75C35
              1DFA96BA2D19A7A89DBA1B540E77597327F52A93B1451C2DDB146C62746B7036
              7C1CDBF6975BDCE4D96CB0FA3317824933309EFCB9C9E67A6E99D6975E377BEB
              2918E6E15903DCBC7DCDDA874A03BBE41CF68FB2DB735735F70ADA9763186AA4
              69F2E2586874669DA26E21B4D33BCE56F78ABFCD92C205EBEABE68C34B4D052C
              491D2C31431A72646C46A7C90CC0190000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000C5515305337754CD142DEB23D1A9F503282BB5BAD2C548AE6BA
              B5247A22AE236ABBEB8C7D481A8ED1DB2C8915A2D35356F7270E3ECF2E7B51DF
              8BA9AEDA3A0039E3EF1AEAE3EAD0D963A2663FDA4B8454E1F99DFF0089E24D2D
              ABEECE44BB6A26D3C38C39B03772AFC136B467DA2F75B72A2A1544ACAB821577
              247BD1157E04156EBBB052A7FBE77ABD236E573D38E3891949D995AA36A7A5D5
              D6D4BFC555C8D45F8609BA4D19A7A95C8E8ED54CF7226332A2C9FD592702B755
              DA8D16E732DD6EABAA7F1DBC933C33C9BB97E8625D49AD6B57BAA3B1772E7F0D
              EF855BB3E2F763E67458208A9E34641132262726B1A8D4F92190BB3D41CE1B67
              D75748952BAE5150B5CAA8A8D97D6C7B98D4F3FBC7A8FB3692644FB52FD5752B
              C39336F863C554E8A04EAB3C0A7D0F675A7A99DBA5A796ADF9CE6A2555FA2613
              E84FD158ED543B5692DD49139BC9CD89BB93E3CC9104B6DF2000200000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000044DD2F0EA39FD1E96DF5
              95B51C155228F0C6E7ABD782012C789A58E08D6499EC8D89CDCE5C221599A9F5
              4DCF66EABA4B344A8AAE6C2CEFE4F0E0AAB84EBC530628B415B6593BDBBD4575
              D26CE556A265DB9E3C9131D7A9727B1B170D7162A3E0954B52EE94EDDFF5E5F5
              225FACAEF58C7FD91A76A9CA8996BE46AB9AEE1E584E7F98B8505AE82DED44A2
              A3820C78B1888BF3E66E0D839F474FAEEF2A9E953D2D9A99DED363C2C889E58C
              AE7FEE69920ECDA964F5EE774B855CCAE572B91C8CCFCD157E4A85F417BEFAE0
              BCA0E8B495868DDBE2B5D32BF96E919BD7EB926618A385BB618D91B7A35A8887
              B04B6DF200020000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000000FFFD9}
            Stretch = True
            BeforePrint = RLImage1BeforePrint
          end
          object RLLabel47: TRLLabel
            Left = 565
            Top = 4
            Width = 67
            Height = 16
            Alignment = taRightJustify
            Caption = 'FGN-01.00'
          end
        end
      end
      object edTara: TRxDBCalcEdit
        Left = 263
        Top = 104
        Width = 49
        Height = 22
        DataField = 'TARA'
        DataSource = dsCadastro
        DecimalPlaces = 15
        ButtonWidth = 0
        NumGlyphs = 2
        TabOrder = 8
      end
      object edPesoVazio: TRxDBCalcEdit
        Left = 135
        Top = 176
        Width = 49
        Height = 22
        DataField = 'MASSA'
        DataSource = dsCadastro
        DecimalPlaces = 15
        ButtonWidth = 0
        NumGlyphs = 2
        TabOrder = 12
      end
      object pnImpressao: TPanel
        Left = 8
        Top = 5
        Width = 561
        Height = 273
        TabOrder = 17
        Visible = False
        object Label29: TLabel
          Left = 8
          Top = 65
          Width = 69
          Height = 14
          Caption = 'Observa'#231#227'o 1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label30: TLabel
          Left = 8
          Top = 105
          Width = 69
          Height = 14
          Caption = 'Observa'#231#227'o 2'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object cbLimeteRosca: TCheckBox
          Left = 8
          Top = 8
          Width = 217
          Height = 17
          Caption = 'Exibir imagem Limete de Rosca'
          TabOrder = 4
        end
        object reObservacao2: TRichEdit
          Left = 8
          Top = 122
          Width = 545
          Height = 137
          Color = clBtnFace
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 0
        end
        object edObservacao1: TEdit
          Left = 8
          Top = 84
          Width = 545
          Height = 20
          Color = clBtnFace
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 1
        end
        object BitBtn2: TBitBtn
          Left = 478
          Top = 33
          Width = 75
          Height = 25
          Caption = '&Cancelar'
          TabOrder = 2
          OnClick = BitBtn2Click
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            0400000000000001000000000000000000001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
            3333333777333777FF3333993333339993333377FF3333377FF3399993333339
            993337777FF3333377F3393999333333993337F777FF333337FF993399933333
            399377F3777FF333377F993339993333399377F33777FF33377F993333999333
            399377F333777FF3377F993333399933399377F3333777FF377F993333339993
            399377FF3333777FF7733993333339993933373FF3333777F7F3399933333399
            99333773FF3333777733339993333339933333773FFFFFF77333333999999999
            3333333777333777333333333999993333333333377777333333}
          NumGlyphs = 2
        end
        object btnOk: TBitBtn
          Left = 478
          Top = 8
          Width = 75
          Height = 25
          Caption = '&Ok'
          Default = True
          TabOrder = 3
          OnClick = btnOkClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
            555555555555555555555555555555555555555555FF55555555555559055555
            55555555577FF5555555555599905555555555557777F5555555555599905555
            555555557777FF5555555559999905555555555777777F555555559999990555
            5555557777777FF5555557990599905555555777757777F55555790555599055
            55557775555777FF5555555555599905555555555557777F5555555555559905
            555555555555777FF5555555555559905555555555555777FF55555555555579
            05555555555555777FF5555555555557905555555555555777FF555555555555
            5990555555555555577755555555555555555555555555555555}
          NumGlyphs = 2
        end
        object cbCorrosao: TCheckBox
          Left = 8
          Top = 24
          Width = 217
          Height = 17
          Caption = 'Exibir imagem Reprova'#231#227'o por Corros'#227'o'
          TabOrder = 5
        end
        object cbRosca: TCheckBox
          Left = 8
          Top = 40
          Width = 217
          Height = 17
          Caption = 'Exibir imagem Reprova'#231#227'o por Rosca'
          TabOrder = 6
        end
        object rbProprietario: TRadioButton
          Left = 265
          Top = 63
          Width = 81
          Height = 17
          Caption = 'Propriet'#225'rio'
          Checked = True
          TabOrder = 7
          TabStop = True
        end
        object RadioButton2: TRadioButton
          Left = 344
          Top = 63
          Width = 113
          Height = 17
          Caption = 'Oficina'
          TabOrder = 8
        end
      end
      object dblTipoRelCilindro: TDBLookupComboBox
        Left = 8
        Top = 295
        Width = 305
        Height = 22
        DataField = 'COD_TIPO_REL_CILINDRO'
        DataSource = dsCadastro
        KeyField = 'CODIGO'
        ListField = 'DESCRICAO'
        ListSource = dsTipoRelCilindro
        TabOrder = 20
        OnExit = dblTipoRelCilindroExit
        OnKeyDown = dblTipoRelCilindroKeyDown
      end
    end
  end
  inherited dsCadastro: TDataSource
    Left = 236
    Top = 164
  end
  inherited cdsCadastro: TIBTable
    Database = DM.IBDatabase1
    Transaction = DM.IBTransaction1
    FieldDefs = <
      item
        Name = 'CODIGO_CILINDRO'
        DataType = ftInteger
      end
      item
        Name = 'NUMERO_CILINDRO'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'PROPRIETARIO'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'VEICULO'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'NORMA'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'CAPACIDADE'
        DataType = ftFloat
      end
      item
        Name = 'TARA'
        DataType = ftFloat
      end
      item
        Name = 'FABRICANTE'
        DataType = ftInteger
      end
      item
        Name = 'TIPO_GAS'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'MASSA'
        DataType = ftFloat
      end
      item
        Name = 'PERDA'
        DataType = ftFloat
      end
      item
        Name = 'PRESSAO'
        DataType = ftFloat
      end
      item
        Name = 'ET'
        DataType = ftFloat
      end
      item
        Name = 'EP'
        DataType = ftFloat
      end
      item
        Name = 'ET_EP'
        DataType = ftFloat
      end
      item
        Name = 'EE'
        DataType = ftFloat
      end
      item
        Name = 'MOTIVO_REPROVACAO'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'OBS'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'FONE'
        DataType = ftString
        Size = 13
      end
      item
        Name = 'CPF_CNPJ'
        DataType = ftString
        Size = 14
      end
      item
        Name = 'PLACA'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'PESO_VAZIO'
        DataType = ftFloat
      end
      item
        Name = 'SELO'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'NC'
        DataType = ftInteger
      end
      item
        Name = 'RESULTADO'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'DATA'
        DataType = ftDateTime
      end
      item
        Name = 'NUMERO_RELATORIO'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'INTERNA'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'ROSCA'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'DATA_FABRICACAO'
        DataType = ftString
        Size = 7
      end
      item
        Name = 'ENDERECO'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'COD_TIPO_REL_CILINDRO'
        DataType = ftInteger
      end
      item
        Name = 'CLIENTE'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY33'
        Fields = 'CODIGO_CILINDRO'
        Options = [ixPrimary, ixUnique]
      end>
    StoreDefs = True
    TableName = 'CILINDRO'
    Left = 236
    Top = 132
    object cdsCadastroCODIGO_CILINDRO: TIntegerField
      FieldName = 'CODIGO_CILINDRO'
    end
    object cdsCadastroNUMERO_CILINDRO: TIBStringField
      FieldName = 'NUMERO_CILINDRO'
      Size = 10
    end
    object cdsCadastroPROPRIETARIO: TIBStringField
      FieldName = 'PROPRIETARIO'
      Size = 100
    end
    object cdsCadastroVEICULO: TIBStringField
      FieldName = 'VEICULO'
      Size = 100
    end
    object cdsCadastroNORMA: TIBStringField
      FieldName = 'NORMA'
      Size = 8
    end
    object cdsCadastroCAPACIDADE: TFloatField
      FieldName = 'CAPACIDADE'
    end
    object cdsCadastroTARA: TFloatField
      FieldName = 'TARA'
    end
    object cdsCadastroFABRICANTE: TIntegerField
      FieldName = 'FABRICANTE'
    end
    object cdsCadastroTIPO_GAS: TIBStringField
      FieldName = 'TIPO_GAS'
      Size = 3
    end
    object cdsCadastroMASSA: TFloatField
      FieldName = 'MASSA'
    end
    object cdsCadastroPERDA: TFloatField
      FieldName = 'PERDA'
    end
    object cdsCadastroPRESSAO: TFloatField
      FieldName = 'PRESSAO'
    end
    object cdsCadastroET: TFloatField
      FieldName = 'ET'
    end
    object cdsCadastroEP: TFloatField
      FieldName = 'EP'
    end
    object cdsCadastroET_EP: TFloatField
      FieldName = 'ET_EP'
    end
    object cdsCadastroEE: TFloatField
      FieldName = 'EE'
    end
    object cdsCadastroMOTIVO_REPROVACAO: TIBStringField
      FieldName = 'MOTIVO_REPROVACAO'
      Size = 10
    end
    object cdsCadastroOBS: TIBStringField
      FieldName = 'OBS'
      Size = 255
    end
    object cdsCadastroFONE: TIBStringField
      FieldName = 'FONE'
      Size = 13
    end
    object cdsCadastroCPF_CNPJ: TIBStringField
      FieldName = 'CPF_CNPJ'
      Size = 14
    end
    object cdsCadastroPLACA: TIBStringField
      FieldName = 'PLACA'
      Size = 8
    end
    object cdsCadastroPESO_VAZIO: TFloatField
      FieldName = 'PESO_VAZIO'
    end
    object cdsCadastroSELO: TIBStringField
      FieldName = 'SELO'
      Size = 10
    end
    object cdsCadastroNC: TIntegerField
      FieldName = 'NC'
    end
    object cdsCadastroRESULTADO: TIBStringField
      FieldName = 'RESULTADO'
      Size = 1
    end
    object cdsCadastroDATA: TDateTimeField
      FieldName = 'DATA'
    end
    object cdsCadastroNUMERO_RELATORIO: TIBStringField
      FieldName = 'NUMERO_RELATORIO'
      Size = 10
    end
    object cdsCadastroINTERNA: TIBStringField
      FieldName = 'INTERNA'
      Size = 2
    end
    object cdsCadastroROSCA: TIBStringField
      FieldName = 'ROSCA'
      Size = 2
    end
    object cdsCadastroDATA_FABRICACAO: TIBStringField
      FieldName = 'DATA_FABRICACAO'
      Size = 7
    end
    object cdsCadastroENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Size = 100
    end
    object cdsCadastroCOD_TIPO_REL_CILINDRO: TIntegerField
      FieldName = 'COD_TIPO_REL_CILINDRO'
    end
    object cdsCadastroCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
    end
  end
  object dsFabricante: TDataSource
    DataSet = DMPesquisa.cdsFabricante
    Left = 444
    Top = 180
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 'FortesReport v3.23 \251 Copyright '#169' 1999-2004 Fortes Inform'#225'tica'
    ViewerOptions = []
    FontEncoding = feNoEncoding
    DisplayName = 'Documento PDF'
    Left = 328
    Top = 16
  end
  object dsTipoRelCilindro: TDataSource
    DataSet = DMPesquisa.QTipoRelCilindro
    Left = 372
    Top = 404
  end
  object RLXLSFilter1: TRLXLSFilter
    DisplayName = 'Planilha Excel'
    Left = 92
    Top = 180
  end
  object dsCliente: TDataSource
    DataSet = DMPesquisa.QClienteGNV
    Left = 212
    Top = 84
  end
end
