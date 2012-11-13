inherited FCadOrcamento: TFCadOrcamento
  Width = 888
  Height = 553
  Caption = 'Cadastro Or'#231'amento'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnControle: TPanel
    Width = 872
    inherited btnFechar: TBitBtn
      Left = 762
    end
    object btnImpRGS: TBitBtn
      Left = 576
      Top = 8
      Width = 91
      Height = 25
      Hint = 'Emitir RGS'
      Caption = '&Emiss'#227'o'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      OnClick = btnImpRGSClick
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
    object btnAprovado: TBitBtn
      Left = 485
      Top = 8
      Width = 88
      Height = 25
      Caption = 'Aprovado'
      TabOrder = 7
      OnClick = btnAprovadoClick
      Glyph.Data = {
        36010000424D3601000000000000760000002800000013000000100000000100
        040000000000C0000000CE0E0000C40E00001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777777000007777788777777777777000007777844877777777777000007778
        4444877777777770000077844444487777777770000078444C44448777777770
        00007444C7C444877777777000007C4C777C444877777770000077C77777C444
        877777700000777777777C444877777000007777777777C44487777000007777
        7777777C444877700000777777777777C444877000007777777777777C448770
        000077777777777777C447700000777777777777777C77700000}
    end
  end
  object gbCliente: TGroupBox [1]
    Left = 5
    Top = 46
    Width = 455
    Height = 162
    Caption = '  Cliente  '
    Ctl3D = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 1
    object DBText2: TDBText
      Left = 72
      Top = 40
      Width = 250
      Height = 17
      DataField = 'ENDERECO'
      DataSource = dsCliente
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 8
      Top = 40
      Width = 58
      Height = 14
      Caption = 'Endere'#231'o: '
    end
    object Label6: TLabel
      Left = 8
      Top = 56
      Width = 36
      Height = 14
      Caption = 'Bairro:'
    end
    object Label7: TLabel
      Left = 246
      Top = 56
      Width = 41
      Height = 14
      Caption = 'Cidade:'
    end
    object DBText3: TDBText
      Left = 294
      Top = 56
      Width = 40
      Height = 14
      AutoSize = True
      DataField = 'CIDADE'
      DataSource = dsCliente
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object DBText4: TDBText
      Left = 48
      Top = 56
      Width = 187
      Height = 17
      DataField = 'BAIRRO'
      DataSource = dsCliente
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 8
      Top = 80
      Width = 29
      Height = 14
      Caption = 'Email'
    end
    object Label2: TLabel
      Left = 8
      Top = 104
      Width = 43
      Height = 14
      Caption = 'Contato'
    end
    object Label4: TLabel
      Left = 311
      Top = 73
      Width = 66
      Height = 14
      Caption = 'Tipo Cliente'
    end
    object Label8: TLabel
      Left = 8
      Top = 128
      Width = 85
      Height = 14
      Caption = 'Representante:'
    end
    object Label28: TLabel
      Left = 304
      Top = 128
      Width = 51
      Height = 14
      Caption = 'Telefone:'
    end
    object dblCliente: TDBLookupComboBox
      Left = 7
      Top = 16
      Width = 438
      Height = 20
      DataField = 'ORC_CLIENTE'
      DataSource = dsCadastro
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      KeyField = 'CODIGO'
      ListField = 'DESCRICAO'
      ListSource = dsCliente
      ParentFont = False
      TabOrder = 0
      OnKeyDown = dblClienteKeyDown
    end
    object DBEdit1: TDBEdit
      Left = 56
      Top = 80
      Width = 245
      Height = 20
      CharCase = ecLowerCase
      DataField = 'ORC_CLIEMAIL'
      DataSource = dsCadastro
      TabOrder = 1
    end
    object DBEdit2: TDBEdit
      Left = 56
      Top = 104
      Width = 245
      Height = 20
      CharCase = ecUpperCase
      DataField = 'ORC_CONTATO'
      DataSource = dsCadastro
      TabOrder = 2
    end
    object rbIndustria: TRadioButton
      Left = 322
      Top = 85
      Width = 85
      Height = 17
      Caption = 'Ind'#250'stria'
      TabOrder = 5
    end
    object rbCondominio: TRadioButton
      Left = 322
      Top = 98
      Width = 85
      Height = 17
      Caption = 'Condom'#237'nio'
      TabOrder = 6
    end
    object rbOutros: TRadioButton
      Left = 322
      Top = 111
      Width = 85
      Height = 17
      Caption = 'Outros'
      TabOrder = 7
    end
    object DBEdit5: TDBEdit
      Left = 96
      Top = 128
      Width = 205
      Height = 20
      CharCase = ecUpperCase
      DataField = 'ORC_REPRESENTATE'
      DataSource = dsCadastro
      TabOrder = 3
    end
    object DBEdit6: TDBEdit
      Left = 360
      Top = 128
      Width = 86
      Height = 20
      CharCase = ecUpperCase
      DataField = 'ORC_REP_TELEFONE'
      DataSource = dsCadastro
      TabOrder = 4
    end
  end
  object GroupBox2: TGroupBox [2]
    Left = 459
    Top = 47
    Width = 396
    Height = 161
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 2
    object Label3: TLabel
      Left = 4
      Top = 16
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
      Left = 58
      Top = 16
      Width = 65
      Height = 17
      DataField = 'ORC_CODIGO'
      DataSource = dsCadastro
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 100
      Top = 30
      Width = 136
      Height = 14
      Caption = 'Condi'#231#227'o de Pagamento:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 4
      Top = 109
      Width = 96
      Height = 14
      Caption = 'Prazo de Entrega:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label11: TLabel
      Left = 152
      Top = 109
      Width = 102
      Height = 14
      Caption = 'Validade Proposta:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label19: TLabel
      Left = 4
      Top = 30
      Width = 90
      Height = 14
      Caption = 'Data Or'#231'amento:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label25: TLabel
      Left = 4
      Top = 137
      Width = 32
      Height = 14
      Caption = 'Frete:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label27: TLabel
      Left = 100
      Top = 67
      Width = 46
      Height = 14
      Caption = 'Imposto'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxDBCalcEdit1: TRxDBCalcEdit
      Left = 260
      Top = 109
      Width = 41
      Height = 20
      DataField = 'ORC_VALIDADE'
      DataSource = dsCadastro
      DecimalPlaces = 0
      ButtonWidth = 0
      NumGlyphs = 2
      TabOrder = 4
    end
    object RxDBCalcEdit2: TRxDBCalcEdit
      Left = 100
      Top = 109
      Width = 41
      Height = 21
      DataField = 'ORC_PRAZOENTREGA'
      DataSource = dsCadastro
      DecimalPlaces = 0
      ButtonWidth = 0
      NumGlyphs = 2
      TabOrder = 3
    end
    object DBEdit3: TDBEdit
      Left = 100
      Top = 46
      Width = 285
      Height = 19
      CharCase = ecUpperCase
      DataField = 'ORC_CONDPAGTO'
      DataSource = dsCadastro
      TabOrder = 1
    end
    object DBDateEdit1: TDBDateEdit
      Left = 4
      Top = 46
      Width = 88
      Height = 19
      DataField = 'ORC_DATA'
      DataSource = dsCadastro
      NumGlyphs = 2
      TabOrder = 0
    end
    object DBEdit4: TDBEdit
      Left = 100
      Top = 80
      Width = 285
      Height = 19
      CharCase = ecUpperCase
      DataField = 'ORC_IMPOSTO'
      DataSource = dsCadastro
      TabOrder = 2
    end
    object DBEdit7: TDBEdit
      Left = 40
      Top = 137
      Width = 345
      Height = 19
      DataField = 'ORC_FRETE'
      DataSource = dsCadastro
      TabOrder = 5
    end
  end
  object GroupBox3: TGroupBox [3]
    Left = 459
    Top = 208
    Width = 396
    Height = 87
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 3
    object Label21: TLabel
      Left = 8
      Top = 17
      Width = 29
      Height = 14
      Caption = #193'rea:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label22: TLabel
      Left = 103
      Top = 17
      Width = 27
      Height = 14
      Caption = 'Taxa:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label23: TLabel
      Left = 196
      Top = 17
      Width = 57
      Height = 14
      Alignment = taRightJustify
      Caption = 'Despacho:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RxDBCalcEdit3: TRxDBCalcEdit
      Left = 41
      Top = 17
      Width = 57
      Height = 21
      DataField = 'ORC_AREA'
      DataSource = dsCadastro
      DecimalPlaces = 15
      DisplayFormat = '0'
      ButtonWidth = 0
      NumGlyphs = 2
      TabOrder = 0
    end
    object RxDBCalcEdit4: TRxDBCalcEdit
      Left = 136
      Top = 17
      Width = 57
      Height = 21
      DataField = 'ORC_VRTAXA'
      DataSource = dsCadastro
      DecimalPlaces = 15
      DisplayFormat = '#,##0.00'
      ButtonWidth = 0
      NumGlyphs = 2
      TabOrder = 1
    end
    object RxDBCalcEdit5: TRxDBCalcEdit
      Left = 257
      Top = 17
      Width = 57
      Height = 21
      DataField = 'ORC_VRDESPACHO'
      DataSource = dsCadastro
      DecimalPlaces = 15
      DisplayFormat = '#,##0.00'
      ButtonWidth = 0
      NumGlyphs = 2
      TabOrder = 2
    end
    object RadioButton1: TRadioButton
      Left = 8
      Top = 40
      Width = 73
      Height = 17
      Hint = 'N'#227'o exibe as informa'#231#245'es do Corpo de Bombeiro'
      Caption = 'N'#227'o Exibir'
      TabOrder = 3
    end
    object RadioButton2: TRadioButton
      Left = 96
      Top = 40
      Width = 82
      Height = 17
      Hint = 'Exibe a soma do valor da Taxa com o valor do Despacho'
      Caption = 'Exibir Soma'
      TabOrder = 4
    end
    object RadioButton3: TRadioButton
      Left = 192
      Top = 40
      Width = 100
      Height = 17
      Hint = 'Exibe o valor da Taxa separado do valor do Despacho'
      Caption = 'Exibir Separado'
      TabOrder = 5
    end
    object DBCheckBox1: TDBCheckBox
      Left = 8
      Top = 64
      Width = 233
      Height = 17
      Alignment = taLeftJustify
      Caption = 'Exibir texto com cobran'#231'a de pe'#231'as aparte'
      DataField = 'ORC_EXIBEOBS'
      DataSource = dsCadastro
      TabOrder = 6
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
  end
  object GroupBox1: TGroupBox [4]
    Left = 6
    Top = 208
    Width = 454
    Height = 87
    Caption = '  OBS  '
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 4
    object DBMemo1: TDBMemo
      Left = 5
      Top = 12
      Width = 442
      Height = 69
      DataField = 'ORC_OBS'
      DataSource = dsCadastro
      TabOrder = 0
      OnKeyDown = DBMemo1KeyDown
      OnKeyPress = DBMemo1KeyPress
    end
  end
  object gbServicos: TGroupBox [5]
    Left = 7
    Top = 296
    Width = 429
    Height = 216
    Caption = ' Servi'#231'os '
    TabOrder = 5
    object Label15: TLabel
      Left = 5
      Top = 46
      Width = 32
      Height = 13
      Caption = 'Quant.'
    end
    object Label16: TLabel
      Left = 108
      Top = 46
      Width = 36
      Height = 13
      Caption = 'Servi'#231'o'
    end
    object Label17: TLabel
      Left = 388
      Top = 46
      Width = 32
      Height = 13
      Caption = 'Vr.Unit'
    end
    object Label20: TLabel
      Left = 342
      Top = 200
      Width = 81
      Height = 13
      Alignment = taRightJustify
      Caption = '                    '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label24: TLabel
      Left = 46
      Top = 46
      Width = 29
      Height = 13
      Caption = 'Refer.'
    end
    object DBGrid1: TDBGrid
      Left = 5
      Top = 82
      Width = 421
      Height = 118
      Hint = 'Precione F8 para alterar entre as op'#231#245'es de frete'
      TabStop = False
      DataSource = dsServico
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentShowHint = False
      ShowHint = True
      TabOrder = 9
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'ORDEM'
          Title.Caption = ' '
          Width = 22
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ORCSERV_QTD'
          Title.Caption = 'Quant.'
          Width = 39
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ORCSERV_DESCSERVICO'
          Title.Caption = 'Servi'#231'o'
          Width = 210
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ORCSERV_VRUNITA'
          Title.Caption = 'Vr.Unit'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ORCSERV_VRTOTAL'
          Title.Caption = 'Vr.Total'
          Visible = True
        end>
    end
    object btnservicoNovo: TBitBtn
      Left = 4
      Top = 20
      Width = 75
      Height = 25
      Caption = 'Novo'
      TabOrder = 0
      OnClick = btnservicoNovoClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        0400000000000001000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
        333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
        0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
        07333337F33333337F333330FFFFFFFF07333337F33333337F333330FFFFFFFF
        07333FF7F33333337FFFBBB0FFFFFFFF0BB37777F3333333777F3BB0FFFFFFFF
        0BBB3777F3333FFF77773330FFFF000003333337F333777773333330FFFF0FF0
        33333337F3337F37F3333330FFFF0F0B33333337F3337F77FF333330FFFF003B
        B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
        3BB33773333773333773B333333B3333333B7333333733333337}
      NumGlyphs = 2
    end
    object btnservicoExcluir: TBitBtn
      Left = 324
      Top = 20
      Width = 75
      Height = 25
      Caption = 'Excluir'
      TabOrder = 4
      OnClick = btnservicoExcluirClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        0400000000000001000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333000000000
        3333333777777777F3333330F77777703333333733F3F3F73F33330FF0808077
        0333337F37F7F7F37F33330FF0807077033333733737F73F73F330FF77808707
        703337F37F37F37F37F330FF08807807703037F37F37F37F37F700FF08808707
        700377F37337F37F377330FF778078077033373F73F7F3733733330FF0808077
        0333337F37F7F7F37F33330FF08070770333337FF7F7F7FF7F33330000000000
        03333377777777777F33330F888777770333337FFFFFFFFF7F33330000000000
        033333777777777773333333307770333333333337FFF7F33333333330000033
        3333333337777733333333333333333333333333333333333333}
      NumGlyphs = 2
    end
    object btnservicoGravar: TBitBtn
      Left = 164
      Top = 20
      Width = 75
      Height = 25
      Caption = 'Gravar'
      TabOrder = 2
      OnClick = btnservicoGravarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        0400000000000001000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333FFFFFFFFFFFFF33000077777770033377777777777773F000007888888
        00037F3337F3FF37F37F00000780088800037F3337F77F37F37F000007800888
        00037F3337F77FF7F37F00000788888800037F3337777777337F000000000000
        00037F3FFFFFFFFFFF7F00000000000000037F77777777777F7F000FFFFFFFFF
        00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
        00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
        00037F7F333333337F7F000FFFFFFFFF07037F7F33333333777F000FFFFFFFFF
        0003737FFFFFFFFF7F7330099999999900333777777777777733}
      NumGlyphs = 2
    end
    object dblServico: TDBLookupComboBox
      Left = 108
      Top = 59
      Width = 261
      Height = 21
      DataField = 'ORCSERV_CODSERVICO'
      DataSource = dsServico
      KeyField = 'PROD_CODIGO'
      ListField = 'PROD_DESC'
      ListSource = dsPesquisaServico
      TabOrder = 7
      OnExit = dblServicoExit
      OnKeyDown = dblServicoKeyDown
    end
    object edServicoQTD: TRxDBCalcEdit
      Left = 5
      Top = 59
      Width = 38
      Height = 21
      DataField = 'ORCSERV_QTD'
      DataSource = dsServico
      DecimalPlaces = 0
      ButtonWidth = 0
      NumGlyphs = 2
      TabOrder = 5
    end
    object edServicoVrUnit: TRxDBCalcEdit
      Left = 371
      Top = 59
      Width = 53
      Height = 21
      DataField = 'ORCSERV_VRUNITA'
      DataSource = dsServico
      DecimalPlaces = 15
      DisplayFormat = '#,##0.00'
      ButtonWidth = 0
      NumGlyphs = 2
      TabOrder = 8
      OnExit = edServicoVrUnitExit
    end
    object btnservicoAlterar: TBitBtn
      Left = 84
      Top = 20
      Width = 75
      Height = 25
      Caption = 'Alterar'
      TabOrder = 1
      OnClick = btnservicoAlterarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        0400000000000001000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
        000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
        00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
        F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
        0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
        FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
        FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
        0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
        00333377737FFFFF773333303300000003333337337777777333}
      NumGlyphs = 2
    end
    object btnservicoCancelar: TBitBtn
      Left = 244
      Top = 20
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 3
      OnClick = btnservicoCancelarClick
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
    object Edit1: TEdit
      Left = 44
      Top = 59
      Width = 64
      Height = 21
      TabOrder = 6
      OnExit = Edit1Exit
    end
  end
  object gbPecas: TGroupBox [6]
    Left = 440
    Top = 296
    Width = 429
    Height = 216
    Caption = ' Pe'#231'as '
    TabOrder = 6
    object Label12: TLabel
      Left = 6
      Top = 46
      Width = 32
      Height = 13
      Caption = 'Quant.'
    end
    object Label13: TLabel
      Left = 108
      Top = 46
      Width = 25
      Height = 13
      Caption = 'Pe'#231'a'
    end
    object Label14: TLabel
      Left = 385
      Top = 46
      Width = 32
      Height = 13
      Caption = 'Vr.Unit'
    end
    object Label18: TLabel
      Left = 339
      Top = 201
      Width = 81
      Height = 13
      Alignment = taRightJustify
      Caption = '                    '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label26: TLabel
      Left = 46
      Top = 46
      Width = 29
      Height = 13
      Caption = 'Refer.'
    end
    object DBGrid2: TDBGrid
      Left = 6
      Top = 82
      Width = 419
      Height = 118
      Hint = 'Precione F8 para alterar entre as op'#231#245'es de frete'
      TabStop = False
      DataSource = dsPecas
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentShowHint = False
      ShowHint = True
      TabOrder = 9
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'ORDEM'
          Title.Caption = ' '
          Width = 23
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ORCPECAS_QTD'
          Title.Caption = 'Quant.'
          Width = 38
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ORCPECAS_DESCPECA'
          Title.Caption = 'Pe'#231'a'
          Width = 210
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ORCPECAS_VRUNITA'
          Title.Caption = 'Vr.Unit'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ORCPECAS_VRTOTAL'
          Title.Caption = 'Vr.Total'
          Visible = True
        end>
    end
    object dblpecas: TDBLookupComboBox
      Left = 108
      Top = 59
      Width = 253
      Height = 21
      DataField = 'ORCPECAS_CODPECA'
      DataSource = dsPecas
      KeyField = 'PROD_CODIGO'
      ListField = 'PROD_DESC'
      ListSource = dsPesquisaPecas
      TabOrder = 7
      OnExit = dblpecasExit
      OnKeyDown = dblpecasKeyDown
    end
    object edpecasQTD: TRxDBCalcEdit
      Left = 6
      Top = 59
      Width = 38
      Height = 21
      DataField = 'ORCPECAS_QTD'
      DataSource = dsPecas
      DecimalPlaces = 15
      ButtonWidth = 0
      NumGlyphs = 2
      TabOrder = 5
    end
    object edpecasVrUnit: TRxDBCalcEdit
      Left = 361
      Top = 59
      Width = 59
      Height = 21
      DataField = 'ORCPECAS_VRUNITA'
      DataSource = dsPecas
      DecimalPlaces = 15
      DisplayFormat = '#,##0.00'
      ButtonWidth = 0
      NumGlyphs = 2
      TabOrder = 8
      OnExit = edpecasVrUnitExit
    end
    object btnpecaNovo: TBitBtn
      Left = 7
      Top = 20
      Width = 75
      Height = 25
      Caption = 'Novo'
      TabOrder = 0
      OnClick = btnpecaNovoClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        0400000000000001000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
        333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
        0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
        07333337F33333337F333330FFFFFFFF07333337F33333337F333330FFFFFFFF
        07333FF7F33333337FFFBBB0FFFFFFFF0BB37777F3333333777F3BB0FFFFFFFF
        0BBB3777F3333FFF77773330FFFF000003333337F333777773333330FFFF0FF0
        33333337F3337F37F3333330FFFF0F0B33333337F3337F77FF333330FFFF003B
        B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
        3BB33773333773333773B333333B3333333B7333333733333337}
      NumGlyphs = 2
    end
    object btnpecaExcluir: TBitBtn
      Left = 327
      Top = 20
      Width = 75
      Height = 25
      Caption = 'Excluir'
      TabOrder = 4
      OnClick = btnpecaExcluirClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        0400000000000001000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333000000000
        3333333777777777F3333330F77777703333333733F3F3F73F33330FF0808077
        0333337F37F7F7F37F33330FF0807077033333733737F73F73F330FF77808707
        703337F37F37F37F37F330FF08807807703037F37F37F37F37F700FF08808707
        700377F37337F37F377330FF778078077033373F73F7F3733733330FF0808077
        0333337F37F7F7F37F33330FF08070770333337FF7F7F7FF7F33330000000000
        03333377777777777F33330F888777770333337FFFFFFFFF7F33330000000000
        033333777777777773333333307770333333333337FFF7F33333333330000033
        3333333337777733333333333333333333333333333333333333}
      NumGlyphs = 2
    end
    object btnpecaGravar: TBitBtn
      Left = 167
      Top = 20
      Width = 75
      Height = 25
      Caption = 'Gravar'
      TabOrder = 2
      OnClick = btnpecaGravarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        0400000000000001000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333FFFFFFFFFFFFF33000077777770033377777777777773F000007888888
        00037F3337F3FF37F37F00000780088800037F3337F77F37F37F000007800888
        00037F3337F77FF7F37F00000788888800037F3337777777337F000000000000
        00037F3FFFFFFFFFFF7F00000000000000037F77777777777F7F000FFFFFFFFF
        00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
        00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
        00037F7F333333337F7F000FFFFFFFFF07037F7F33333333777F000FFFFFFFFF
        0003737FFFFFFFFF7F7330099999999900333777777777777733}
      NumGlyphs = 2
    end
    object btnpecaAlterar: TBitBtn
      Left = 87
      Top = 20
      Width = 75
      Height = 25
      Caption = 'Alterar'
      TabOrder = 1
      OnClick = btnpecaAlterarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        0400000000000001000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
        000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
        00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
        F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
        0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
        FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
        FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
        0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
        00333377737FFFFF773333303300000003333337337777777333}
      NumGlyphs = 2
    end
    object btnpecaCancelar: TBitBtn
      Left = 247
      Top = 20
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 3
      OnClick = btnpecaCancelarClick
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
    object Edit2: TEdit
      Left = 44
      Top = 59
      Width = 64
      Height = 21
      TabOrder = 6
      OnExit = Edit2Exit
    end
  end
  inherited QCadastro: TIBQuery
    Active = True
    SQL.Strings = (
      'select * from ORCAMENTO')
    Left = 624
  end
  inherited UpdateCadastro: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  ORC_CODIGO,'
      '  ORC_DATA,'
      '  ORC_CLIENTE,'
      '  ORC_CLIENTEDESC,'
      '  ORC_CLITIPO,'
      '  ORC_CLIEMAIL,'
      '  ORC_VRSERVICO,'
      '  ORC_VRPECAS,'
      '  ORC_VALOR,'
      '  ORC_PRAZOENTREGA,'
      '  ORC_VALIDADE,'
      '  ORC_CONTATO,'
      '  ORC_CONDPAGTO,'
      '  ORC_AREA,'
      '  ORC_VRTAXA,'
      '  ORC_VRDESPACHO,'
      '  ORC_INFOBOMBEIRO,'
      '  ORC_OBS,'
      '  ORC_FRETE,'
      '  ORC_SITUACAO,'
      '  ORC_IMPOSTO,'
      '  ORC_REPRESENTATE,'
      '  ORC_REP_TELEFONE,'
      '  ORC_EXIBEOBS'
      'from ORCAMENTO '
      'where'
      '  ORC_CODIGO = :ORC_CODIGO')
    ModifySQL.Strings = (
      'update ORCAMENTO'
      'set'
      '  ORC_DATA = :ORC_DATA,'
      '  ORC_CLIENTE = :ORC_CLIENTE,'
      '  ORC_CLIENTEDESC = :ORC_CLIENTEDESC,'
      '  ORC_CLITIPO = :ORC_CLITIPO,'
      '  ORC_CLIEMAIL = :ORC_CLIEMAIL,'
      '  ORC_VRSERVICO = :ORC_VRSERVICO,'
      '  ORC_VRPECAS = :ORC_VRPECAS,'
      '  ORC_VALOR = :ORC_VALOR,'
      '  ORC_PRAZOENTREGA = :ORC_PRAZOENTREGA,'
      '  ORC_VALIDADE = :ORC_VALIDADE,'
      '  ORC_CONTATO = :ORC_CONTATO,'
      '  ORC_CONDPAGTO = :ORC_CONDPAGTO,'
      '  ORC_AREA = :ORC_AREA,'
      '  ORC_VRTAXA = :ORC_VRTAXA,'
      '  ORC_VRDESPACHO = :ORC_VRDESPACHO,'
      '  ORC_INFOBOMBEIRO = :ORC_INFOBOMBEIRO,'
      '  ORC_OBS = :ORC_OBS,'
      '  ORC_FRETE = :ORC_FRETE,'
      '  ORC_SITUACAO = :ORC_SITUACAO,'
      '  ORC_IMPOSTO = :ORC_IMPOSTO,'
      '  ORC_REPRESENTATE = :ORC_REPRESENTATE,'
      '  ORC_REP_TELEFONE = :ORC_REP_TELEFONE,'
      '  ORC_EXIBEOBS = :ORC_EXIBEOBS'
      'where'
      '  ORC_CODIGO = :OLD_ORC_CODIGO')
    InsertSQL.Strings = (
      'insert into ORCAMENTO'
      '  (ORC_DATA, ORC_CLIENTE, ORC_CLIENTEDESC, ORC_CLITIPO, '
      'ORC_CLIEMAIL, ORC_VRSERVICO, '
      '   ORC_VRPECAS, ORC_VALOR, ORC_PRAZOENTREGA, ORC_VALIDADE, '
      'ORC_CONTATO, '
      '   ORC_CONDPAGTO, ORC_AREA, ORC_VRTAXA, ORC_VRDESPACHO, '
      'ORC_INFOBOMBEIRO, '
      '   ORC_OBS, ORC_FRETE, ORC_SITUACAO, ORC_IMPOSTO, '
      'ORC_REPRESENTATE, ORC_REP_TELEFONE, '
      '   ORC_EXIBEOBS)'
      'values'
      '  (:ORC_DATA, :ORC_CLIENTE, :ORC_CLIENTEDESC, :ORC_CLITIPO, '
      ':ORC_CLIEMAIL, '
      '   :ORC_VRSERVICO, :ORC_VRPECAS, :ORC_VALOR, :ORC_PRAZOENTREGA, '
      ':ORC_VALIDADE, '
      '   :ORC_CONTATO, :ORC_CONDPAGTO, :ORC_AREA, :ORC_VRTAXA, '
      ':ORC_VRDESPACHO, '
      '   :ORC_INFOBOMBEIRO, :ORC_OBS, :ORC_FRETE, :ORC_SITUACAO, '
      ':ORC_IMPOSTO, '
      '   :ORC_REPRESENTATE, :ORC_REP_TELEFONE, :ORC_EXIBEOBS)')
    DeleteSQL.Strings = (
      'delete from ORCAMENTO'
      'where'
      '  ORC_CODIGO = :OLD_ORC_CODIGO')
    Left = 656
  end
  inherited dsCadastro: TDataSource
    OnDataChange = dsCadastroDataChange
    Left = 592
  end
  object dsCliente: TDataSource
    DataSet = DMPesquisa.QCliente
    OnDataChange = dsClienteDataChange
    Left = 364
    Top = 12
  end
  object dsPecas: TDataSource
    DataSet = cdsPecas
    OnStateChange = dsPecasStateChange
    OnDataChange = dsPecasDataChange
    Left = 472
    Top = 400
  end
  object dsPesquisaPecas: TDataSource
    DataSet = DMPesquisa.QMercadoria
    Left = 788
    Top = 379
  end
  object cdsPecas: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 504
    Top = 400
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 'FortesReport v3.23 \251 Copyright '#169' 1999-2004 Fortes Inform'#225'tica'
    ViewerOptions = []
    FontEncoding = feNoEncoding
    DisplayName = 'Documento PDF'
    Left = 421
    Top = 236
  end
  object dsServico: TDataSource
    DataSet = cdsServicos
    OnStateChange = dsServicoStateChange
    OnDataChange = dsServicoDataChange
    Left = 104
    Top = 400
  end
  object dsPesquisaServico: TDataSource
    DataSet = DMPesquisa.QServico
    Left = 324
    Top = 395
  end
  object cdsServicos: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 136
    Top = 400
  end
  object QItens: TIBQuery
    Database = DM.IBDatabase1
    Transaction = DM.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    Left = 384
    Top = 30
  end
  object tbTemp: TIBTable
    Database = DM.IBDatabase1
    Transaction = DM.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    Left = 344
    Top = 30
  end
end
