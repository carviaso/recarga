inherited FCadastroOrcamento: TFCadastroOrcamento
  Left = 213
  Top = 133
  Width = 1001
  Height = 602
  Caption = 'Or'#231'amento'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnControle: TPanel
    Left = 878
    Height = 545
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
    end
    object btnImpRGS: TBitBtn
      Left = 8
      Top = 333
      Width = 91
      Height = 25
      Hint = 'Emitir RGS'
      Caption = '&Emiss'#227'o'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 11
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
  end
  inherited PageControl: TPageControl
    Width = 878
    Height = 545
    ActivePage = tabCadastro
    inherited tabPesquisa: TTabSheet
      inherited dbgCadastro: TDBGrid
        Width = 897
        Height = 409
        DataSource = dsCadastro
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'ORC_CODIGO'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'digo'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'ORC_DATA'
            Title.Alignment = taCenter
            Title.Caption = 'Data'
            Width = 135
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ORC_CLIENTEDESC'
            Title.Caption = 'Cliente'
            Width = 320
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ORC_VALOR'
            Title.Alignment = taRightJustify
            Title.Caption = 'Valor'
            Width = 102
            Visible = True
          end>
      end
    end
    inherited tabCadastro: TTabSheet
      object Label12: TLabel
        Left = 453
        Top = 232
        Width = 32
        Height = 13
        Caption = 'Quant.'
      end
      object Label13: TLabel
        Left = 490
        Top = 232
        Width = 25
        Height = 13
        Caption = 'Pe'#231'a'
      end
      object Label14: TLabel
        Left = 712
        Top = 232
        Width = 32
        Height = 13
        Caption = 'Vr.Unit'
      end
      object Label15: TLabel
        Left = 5
        Top = 232
        Width = 32
        Height = 13
        Caption = 'Quant.'
      end
      object Label16: TLabel
        Left = 42
        Top = 232
        Width = 36
        Height = 13
        Caption = 'Srevi'#231'o'
      end
      object Label17: TLabel
        Left = 264
        Top = 232
        Width = 32
        Height = 13
        Caption = 'Vr.Unit'
      end
      object Label18: TLabel
        Left = 798
        Top = 496
        Width = 46
        Height = 13
        Alignment = taRightJustify
        Caption = 'Label18'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label20: TLabel
        Left = 366
        Top = 495
        Width = 46
        Height = 13
        Alignment = taRightJustify
        Caption = 'Label18'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object gbCliente: TGroupBox
        Left = 5
        Top = 0
        Width = 535
        Height = 161
        Caption = '  Cliente  '
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
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
          Width = 52
          Height = 14
          Caption = 'Endere'#231'o'
        end
        object Label6: TLabel
          Left = 8
          Top = 72
          Width = 33
          Height = 14
          Caption = 'Bairro'
        end
        object Label7: TLabel
          Left = 8
          Top = 56
          Width = 38
          Height = 14
          Caption = 'Cidade'
        end
        object DBText3: TDBText
          Left = 72
          Top = 56
          Width = 34
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
          Left = 72
          Top = 72
          Width = 250
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
        object Label8: TLabel
          Left = 8
          Top = 88
          Width = 313
          Height = 14
          AutoSize = False
          Caption = 'Extintores'
        end
        object Label1: TLabel
          Left = 8
          Top = 104
          Width = 29
          Height = 14
          Caption = 'Email'
        end
        object Label2: TLabel
          Left = 8
          Top = 128
          Width = 43
          Height = 14
          Caption = 'Contato'
        end
        object Label4: TLabel
          Left = 432
          Top = 16
          Width = 66
          Height = 14
          Caption = 'Tipo Cliente'
        end
        object dblCliente: TDBLookupComboBox
          Left = 7
          Top = 16
          Width = 402
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
          Left = 72
          Top = 104
          Width = 337
          Height = 20
          CharCase = ecLowerCase
          DataField = 'ORC_CLIEMAIL'
          DataSource = dsCadastro
          TabOrder = 1
        end
        object DBEdit2: TDBEdit
          Left = 72
          Top = 128
          Width = 337
          Height = 20
          CharCase = ecUpperCase
          DataField = 'ORC_CONTATO'
          DataSource = dsCadastro
          TabOrder = 2
        end
        object rbIndustria: TRadioButton
          Left = 432
          Top = 32
          Width = 97
          Height = 17
          Caption = 'Ind'#250'stria'
          TabOrder = 3
        end
        object rbCondominio: TRadioButton
          Left = 432
          Top = 48
          Width = 97
          Height = 17
          Caption = 'Condom'#237'nio'
          TabOrder = 4
        end
        object rbOutros: TRadioButton
          Left = 432
          Top = 64
          Width = 97
          Height = 17
          Caption = 'Outros'
          TabOrder = 5
        end
      end
      object DBGrid1: TDBGrid
        Left = 4
        Top = 266
        Width = 430
        Height = 231
        DataSource = DSServicos
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 12
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
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
            Width = 225
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ORCSERV_VRUNITA'
            Title.Caption = 'Vr.Unit'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ORCSERV_VRTOTAL'
            Title.Caption = 'Vr.Total'
            Visible = True
          end>
      end
      object DBGrid2: TDBGrid
        Left = 439
        Top = 266
        Width = 430
        Height = 231
        DataSource = DSPecas
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 21
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
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
            Width = 217
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ORCPECAS_VRUNITA'
            Title.Caption = 'Vr.Unit'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ORCPECAS_VRTOTAL'
            Title.Caption = 'Vr.Total'
            Visible = True
          end>
      end
      object Panel1: TPanel
        Left = 4
        Top = 172
        Width = 429
        Height = 19
        Caption = 'Servi'#231'os'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
      object Panel2: TPanel
        Left = 439
        Top = 172
        Width = 429
        Height = 19
        Caption = 'Pe'#231'as'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
      end
      object GroupBox2: TGroupBox
        Left = 544
        Top = 1
        Width = 321
        Height = 97
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 1
        object Label3: TLabel
          Left = 8
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
          Left = 62
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
          Left = 112
          Top = 32
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
          Left = 8
          Top = 72
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
          Left = 164
          Top = 72
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
          Left = 8
          Top = 32
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
        object RxDBCalcEdit1: TRxDBCalcEdit
          Left = 272
          Top = 72
          Width = 41
          Height = 20
          DataField = 'ORC_VALIDADE'
          DataSource = dsCadastro
          DecimalPlaces = 0
          ButtonWidth = 0
          NumGlyphs = 2
          TabOrder = 3
        end
        object RxDBCalcEdit2: TRxDBCalcEdit
          Left = 112
          Top = 72
          Width = 41
          Height = 21
          DataField = 'ORC_PRAZOENTREGA'
          DataSource = dsCadastro
          DecimalPlaces = 0
          ButtonWidth = 0
          NumGlyphs = 2
          TabOrder = 2
        end
        object DBEdit3: TDBEdit
          Left = 112
          Top = 48
          Width = 201
          Height = 19
          CharCase = ecUpperCase
          DataField = 'ORC_CONDPAGTO'
          DataSource = dsCadastro
          TabOrder = 1
        end
        object DBDateEdit1: TDBDateEdit
          Left = 8
          Top = 48
          Width = 88
          Height = 19
          DataField = 'ORC_DATA'
          DataSource = dsCadastro
          NumGlyphs = 2
          TabOrder = 0
        end
      end
      object dblpecas: TDBLookupComboBox
        Left = 490
        Top = 245
        Width = 221
        Height = 21
        DataField = 'ORCPECAS_CODPECA'
        DataSource = DSPecas
        KeyField = 'CODIGO_PECAS'
        ListField = 'DESCRICAO'
        ListSource = dsPesquisaPecas
        TabOrder = 19
        OnExit = dblpecasExit
        OnKeyDown = dblpecasKeyDown
      end
      object edpecasQTD: TRxDBCalcEdit
        Left = 453
        Top = 245
        Width = 38
        Height = 21
        DataField = 'ORCPECAS_QTD'
        DataSource = DSPecas
        DecimalPlaces = 15
        ButtonWidth = 0
        NumGlyphs = 2
        TabOrder = 18
      end
      object edpecasVrUnit: TRxDBCalcEdit
        Left = 712
        Top = 245
        Width = 64
        Height = 21
        DataField = 'ORCPECAS_VRUNITA'
        DataSource = DSPecas
        DecimalPlaces = 15
        DisplayFormat = '#,##0.00'
        ButtonWidth = 0
        NumGlyphs = 2
        TabOrder = 20
      end
      object btnpecaNovo: TBitBtn
        Left = 439
        Top = 194
        Width = 75
        Height = 25
        Caption = 'Novo'
        TabOrder = 13
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
        Left = 759
        Top = 194
        Width = 75
        Height = 25
        Caption = 'Excluir'
        TabOrder = 17
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
        Left = 599
        Top = 194
        Width = 75
        Height = 25
        Caption = 'Gravar'
        TabOrder = 15
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
      object btnservicoNovo: TBitBtn
        Left = 4
        Top = 194
        Width = 75
        Height = 25
        Caption = 'Novo'
        TabOrder = 4
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
        Top = 194
        Width = 75
        Height = 25
        Caption = 'Excluir'
        TabOrder = 8
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
        Top = 194
        Width = 75
        Height = 25
        Caption = 'Gravar'
        TabOrder = 6
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
        Left = 42
        Top = 245
        Width = 221
        Height = 21
        DataField = 'ORCSERV_CODSERVICO'
        DataSource = DSServicos
        KeyField = 'PROD_CODIGO'
        ListField = 'PROD_DESC'
        ListSource = dsPesquisaServico
        TabOrder = 10
        OnExit = dblServicoExit
        OnKeyDown = dblServicoKeyDown
      end
      object edServicoQTD: TRxDBCalcEdit
        Left = 5
        Top = 245
        Width = 38
        Height = 21
        DataField = 'ORCSERV_QTD'
        DataSource = DSServicos
        DecimalPlaces = 0
        ButtonWidth = 0
        NumGlyphs = 2
        TabOrder = 9
      end
      object edServicoVrUnit: TRxDBCalcEdit
        Left = 264
        Top = 245
        Width = 64
        Height = 21
        DataField = 'ORCSERV_VRUNITA'
        DataSource = DSServicos
        DecimalPlaces = 15
        DisplayFormat = '#,##0.00'
        ButtonWidth = 0
        NumGlyphs = 2
        TabOrder = 11
      end
      object btnpecaAlterar: TBitBtn
        Left = 519
        Top = 194
        Width = 75
        Height = 25
        Caption = 'Alterar'
        TabOrder = 14
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
        Left = 679
        Top = 194
        Width = 75
        Height = 25
        Caption = 'Cancelar'
        TabOrder = 16
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
      object btnservicoAlterar: TBitBtn
        Left = 84
        Top = 194
        Width = 75
        Height = 25
        Caption = 'Alterar'
        TabOrder = 5
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
        Top = 194
        Width = 75
        Height = 25
        Caption = 'Cancelar'
        TabOrder = 7
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
      object GroupBox3: TGroupBox
        Left = 544
        Top = 98
        Width = 321
        Height = 63
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 22
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
      end
    end
  end
  inherited BarraDeStatus: TStatusBar
    Top = 545
    Width = 985
  end
  inherited SQLDataSet: TSQLDataSet
    CommandText = 'SELECT * FROM ORCAMENTO'
  end
  inherited DSP: TDataSetProvider
    DataSet = SQLDataSet
    Options = [poAllowCommandText]
  end
  inherited CDS: TClientDataSet
    Active = True
    CommandText = 'SELECT * FROM ORCAMENTO'
  end
  inherited dsCadastro: TDataSource
    DataSet = QCadastro
    OnStateChange = dsCadastroStateChange
  end
  object dsCliente: TDataSource [8]
    DataSet = DMPesquisa.QCliente
    OnDataChange = dsClienteDataChange
    Left = 364
    Top = 12
  end
  object SQLServico: TSQLDataSet [9]
    Active = True
    CommandText = 'SELECT * FROM ORCSERVICOS'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ORC_CODIGO'
        ParamType = ptInput
        Value = 1
      end>
    SQLConnection = DM.SQLConnection
    Left = 356
    Top = 291
  end
  object SQLPecas: TSQLDataSet [10]
    Active = True
    CommandText = 'SELECT * FROM ORCPECAS'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ORC_CODIGO'
        ParamType = ptInput
        Value = 1
      end>
    SQLConnection = DM.SQLConnection
    Left = 820
    Top = 283
  end
  object DSPServicos: TDataSetProvider [11]
    DataSet = SQLServico
    Options = [poAllowCommandText]
    Left = 356
    Top = 323
  end
  object DSPPecas: TDataSetProvider [12]
    DataSet = SQLPecas
    Options = [poAllowCommandText]
    Left = 820
    Top = 315
  end
  object CDSServicos: TClientDataSet [13]
    Active = True
    Aggregates = <>
    IndexFieldNames = 'ORC_CODIGO'
    MasterFields = 'ORC_CODIGO'
    MasterSource = dsCadastro
    PacketRecords = 0
    Params = <>
    ProviderName = 'DSPServicos'
    BeforePost = CDSServicosBeforePost
    Left = 356
    Top = 355
    object CDSServicosORCSERV_CODIGO: TIntegerField
      FieldName = 'ORCSERV_CODIGO'
      Required = True
    end
    object CDSServicosORC_CODIGO: TIntegerField
      FieldName = 'ORC_CODIGO'
      Required = True
    end
    object CDSServicosORCSERV_CODSERVICO: TStringField
      FieldName = 'ORCSERV_CODSERVICO'
      Size = 10
    end
    object CDSServicosORCSERV_QTD: TIntegerField
      FieldName = 'ORCSERV_QTD'
    end
    object CDSServicosORCSERV_VRUNITA: TFloatField
      FieldName = 'ORCSERV_VRUNITA'
      DisplayFormat = '#,##0.00'
    end
    object CDSServicosORCSERV_VRTOTAL: TFloatField
      FieldName = 'ORCSERV_VRTOTAL'
      DisplayFormat = '#,##0.00'
    end
    object CDSServicosORCSERV_DESCSERVICO: TStringField
      FieldName = 'ORCSERV_DESCSERVICO'
      Size = 40
    end
  end
  object CDSPecas: TClientDataSet [14]
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ORCPECAS_CODIGO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'ORC_CODIGO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'ORCPECAS_CODPECA'
        DataType = ftInteger
      end
      item
        Name = 'ORCPECAS_QTD'
        DataType = ftFloat
      end
      item
        Name = 'ORCPECAS_VRUNITA'
        DataType = ftFloat
      end
      item
        Name = 'ORCPECAS_VRTOTAL'
        DataType = ftFloat
      end
      item
        Name = 'ORCPECAS_DESCPECA'
        DataType = ftString
        Size = 62
      end>
    IndexDefs = <>
    IndexFieldNames = 'ORC_CODIGO'
    MasterFields = 'ORC_CODIGO'
    MasterSource = dsCadastro
    PacketRecords = 0
    Params = <>
    ProviderName = 'DSPPecas'
    StoreDefs = True
    AfterOpen = CDSPecasAfterOpen
    BeforePost = CDSPecasBeforePost
    Left = 820
    Top = 347
    object CDSPecasORCPECAS_CODIGO: TIntegerField
      FieldName = 'ORCPECAS_CODIGO'
      Required = True
    end
    object CDSPecasORC_CODIGO: TIntegerField
      FieldName = 'ORC_CODIGO'
      Required = True
    end
    object CDSPecasORCPECAS_QTD: TFloatField
      FieldName = 'ORCPECAS_QTD'
    end
    object CDSPecasORCPECAS_VRUNITA: TFloatField
      FieldName = 'ORCPECAS_VRUNITA'
      DisplayFormat = '#,##0.00'
    end
    object CDSPecasORCPECAS_VRTOTAL: TFloatField
      FieldName = 'ORCPECAS_VRTOTAL'
      DisplayFormat = '#,##0.00'
    end
    object CDSPecasORCPECAS_CODPECA: TIntegerField
      FieldName = 'ORCPECAS_CODPECA'
    end
    object CDSPecasORCPECAS_DESCPECA: TStringField
      FieldName = 'ORCPECAS_DESCPECA'
      Size = 62
    end
  end
  object DSServicos: TDataSource [15]
    DataSet = CDSServicos
    OnStateChange = DSServicosStateChange
    Left = 356
    Top = 387
  end
  object DSPecas: TDataSource [16]
    DataSet = CDSPecas
    OnStateChange = DSPecasStateChange
    Left = 820
    Top = 379
  end
  object dsPesquisaPecas: TDataSource [17]
    DataSet = DMPesquisa.cdsPecas
    Left = 788
    Top = 379
  end
  object dsPesquisaServico: TDataSource [18]
    DataSet = DMPesquisa.QServico
    Left = 324
    Top = 387
  end
  object QCadastro: TIBQuery
    Database = DM.IBDatabase1
    Transaction = DM.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = True
    SQL.Strings = (
      'select * from ORCAMENTO')
    UpdateObject = UpdataCadastro
    Left = 241
    Top = 91
  end
  object UpdataCadastro: TIBUpdateSQL
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
      '  ORC_INFOBOMBEIRO'
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
      '  ORC_INFOBOMBEIRO = :ORC_INFOBOMBEIRO'
      'where'
      '  ORC_CODIGO = :OLD_ORC_CODIGO')
    InsertSQL.Strings = (
      'insert into ORCAMENTO'
      '  (ORC_DATA, ORC_CLIENTE, ORC_CLIENTEDESC, ORC_CLITIPO, '
      'ORC_CLIEMAIL, ORC_VRSERVICO, '
      '   ORC_VRPECAS, ORC_VALOR, ORC_PRAZOENTREGA, ORC_VALIDADE, '
      'ORC_CONTATO, '
      '   ORC_CONDPAGTO, ORC_AREA, ORC_VRTAXA, ORC_VRDESPACHO, '
      'ORC_INFOBOMBEIRO)'
      'values'
      '  (:ORC_DATA, :ORC_CLIENTE, :ORC_CLIENTEDESC, :ORC_CLITIPO, '
      ':ORC_CLIEMAIL, '
      '   :ORC_VRSERVICO, :ORC_VRPECAS, :ORC_VALOR, :ORC_PRAZOENTREGA, '
      ':ORC_VALIDADE, '
      '   :ORC_CONTATO, :ORC_CONDPAGTO, :ORC_AREA, :ORC_VRTAXA, '
      ':ORC_VRDESPACHO, '
      '   :ORC_INFOBOMBEIRO)')
    DeleteSQL.Strings = (
      'delete from ORCAMENTO'
      'where'
      '  ORC_CODIGO = :OLD_ORC_CODIGO')
    Left = 281
    Top = 91
  end
end
