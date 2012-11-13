inherited FCadRgs: TFCadRgs
  Left = 235
  Top = 89
  Width = 786
  Height = 534
  Caption = 'Cadastro de RGS'
  PixelsPerInch = 96
  TextHeight = 14
  object Label17: TLabel [0]
    Left = 200
    Top = 80
    Width = 32
    Height = 14
    Caption = 'Sa'#237'da:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label12: TLabel [1]
    Left = 171
    Top = 40
    Width = 59
    Height = 14
    Caption = 'N'#176' da Caixa'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  inherited pnControle: TPanel
    Left = 671
    Height = 481
    inherited btnFechar: TBitBtn
      Top = 424
      TabOrder = 15
    end
    inherited btnFirst: TBitBtn
      TabOrder = 5
    end
    inherited btnPrior: TBitBtn
      TabOrder = 6
    end
    inherited btnNext: TBitBtn
      TabOrder = 7
    end
    inherited btnLast: TBitBtn
      TabOrder = 8
    end
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
      TabOrder = 9
    end
    object btnAdd: TBitBtn
      Left = 8
      Top = 232
      Width = 91
      Height = 25
      Caption = 'Extintor'
      TabOrder = 10
      Visible = False
      OnClick = btnAddClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00559999999995
        5555557777777775F5555559999999505555555777777757FFF5555555555550
        0955555555555FF7775F55555555995501955555555577557F75555555555555
        01995555555555557F5755555555555501905555555555557F57555555555555
        0F905555555555557FF75555555555500005555555555557777555555555550F
        F05555555555557F57F5555555555008F05555555555F775F755555555570000
        05555555555775577555555555700007555555555F755F775555555570000755
        55555555775F77555555555700075555555555F75F7755555555570007555555
        5555577F77555555555500075555555555557777555555555555}
      NumGlyphs = 2
    end
    object btnImpRGS: TBitBtn
      Left = 8
      Top = 293
      Width = 91
      Height = 25
      Hint = 'Emitir RGS'
      Caption = '&RGS'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 12
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
    object StaticText1: TStaticText
      Left = 8
      Top = 320
      Width = 89
      Height = 18
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSingle
      Caption = 'Testar'
      Color = clMoneyGreen
      ParentColor = False
      TabOrder = 13
    end
    object StaticText2: TStaticText
      Left = 8
      Top = 339
      Width = 89
      Height = 18
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSingle
      Caption = 'Testado'
      Color = clAqua
      ParentColor = False
      TabOrder = 14
    end
    object btnBaixarRGS: TBitBtn
      Left = 8
      Top = 263
      Width = 91
      Height = 25
      Caption = 'Baixar RGS'
      TabOrder = 11
      OnClick = btnBaixarRGSClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        55555FFFFFFF5F55FFF5777777757559995777777775755777F7555555555550
        305555555555FF57F7F555555550055BB0555555555775F777F55555550FB000
        005555555575577777F5555550FB0BF0F05555555755755757F555550FBFBF0F
        B05555557F55557557F555550BFBF0FB005555557F55575577F555500FBFBFB0
        B05555577F555557F7F5550E0BFBFB00B055557575F55577F7F550EEE0BFB0B0
        B05557FF575F5757F7F5000EEE0BFBF0B055777FF575FFF7F7F50000EEE00000
        B0557777FF577777F7F500000E055550805577777F7555575755500000555555
        05555777775555557F5555000555555505555577755555557555}
      NumGlyphs = 2
    end
  end
  inherited BarraDeStatus: TStatusBar
    Top = 481
    Width = 778
  end
  inherited PageControl: TPageControl
    Width = 671
    Height = 481
    ActivePage = tabCadastro
    inherited tabPesquisa: TTabSheet
      inherited dbgCadastro: TDBGrid
        Top = 136
        Width = 633
        Height = 289
        DataSource = dsPesquisa
        TabOrder = 1
        OnDrawColumnCell = dbgCadastroDrawColumnCell
        Columns = <
          item
            Expanded = False
            FieldName = 'RGS'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RAZAO_SOCIAL'
            Title.Caption = 'Cliente'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 270
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ENTRADA'
            Title.Caption = 'Data Enrtada'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PREV_SAIDA'
            Title.Caption = 'Previs'#227'o de Sa'#237'da'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SAIDA'
            Title.Caption = 'Sa'#237'da'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Visible = True
          end>
      end
      inherited GroupBox1: TGroupBox
        Width = 633
        Height = 121
        TabOrder = 0
        object Label9: TLabel [0]
          Left = 8
          Top = 16
          Width = 22
          Height = 14
          Caption = 'RGS'
        end
        object Label10: TLabel [1]
          Left = 8
          Top = 56
          Width = 41
          Height = 14
          Caption = 'Entrada'
        end
        object Label11: TLabel [2]
          Left = 256
          Top = 56
          Width = 97
          Height = 14
          Caption = 'Previs'#227'o de Sa'#237'da'
        end
        object Label14: TLabel [3]
          Left = 120
          Top = 16
          Width = 39
          Height = 14
          Caption = 'Cliente'
        end
        object Label15: TLabel [4]
          Left = 118
          Top = 79
          Width = 6
          Height = 14
          Caption = 'a'
        end
        object Label16: TLabel [5]
          Left = 366
          Top = 79
          Width = 6
          Height = 14
          Caption = 'a'
        end
        object Label20: TLabel [6]
          Left = 488
          Top = 16
          Width = 88
          Height = 14
          Caption = 'n'#186' S'#233'rie Extintor'
          FocusControl = BarraDeStatus
        end
        object Label21: TLabel [7]
          Left = 488
          Top = 56
          Width = 69
          Height = 14
          Caption = 'Selo Extintor'
          FocusControl = BarraDeStatus
        end
        inherited edPesquisa: TComboEdit
          Left = 128
          Top = -8
          Width = 105
          TabStop = False
          TabOrder = 9
          Visible = False
          OnButtonClick = edPesquisaButtonClick
        end
        object rbRgs: TRadioButton
          Left = 240
          Top = -8
          Width = 113
          Height = 17
          Caption = 'RGS'
          Checked = True
          TabOrder = 10
          Visible = False
        end
        object edPesquisaRgs: TEdit
          Left = 8
          Top = 32
          Width = 105
          Height = 20
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          MaxLength = 10
          ParentFont = False
          TabOrder = 0
        end
        object edPesquisaEntradaIni: TDateEdit
          Left = 8
          Top = 72
          Width = 105
          Height = 21
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          NumGlyphs = 2
          ParentFont = False
          TabOrder = 3
        end
        object edPesquisaEntradaFim: TDateEdit
          Left = 128
          Top = 72
          Width = 105
          Height = 21
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          NumGlyphs = 2
          ParentFont = False
          TabOrder = 4
        end
        object edPesquisaSaidaIni: TDateEdit
          Left = 256
          Top = 72
          Width = 105
          Height = 21
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          NumGlyphs = 2
          ParentFont = False
          TabOrder = 5
        end
        object edPesquisaSaidaFim: TDateEdit
          Left = 376
          Top = 72
          Width = 105
          Height = 21
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          NumGlyphs = 2
          ParentFont = False
          TabOrder = 6
        end
        object dblPesquisaCliente: TDBLookupComboBox
          Left = 120
          Top = 32
          Width = 361
          Height = 20
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          KeyField = 'CODIGO'
          ListField = 'DESCRICAO'
          ListSource = dsCliente
          ParentFont = False
          TabOrder = 1
          OnKeyDown = dblPesquisaClienteKeyDown
        end
        object btnPesquisa: TBitBtn
          Left = 535
          Top = 94
          Width = 75
          Height = 25
          Caption = '&Pesquisar'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
          OnClick = btnPesquisaClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            33033333333333333F7F3333333333333000333333333333F777333333333333
            000333333333333F777333333333333000333333333333F77733333333333300
            033333333FFF3F777333333700073B703333333F7773F77733333307777700B3
            333333773337777333333078F8F87033333337F3333337F33333778F8F8F8773
            333337333333373F333307F8F8F8F70333337F333333337F3333078F8F8F8703
            33337F333333337F333307F8F8F8F703333373F3333333733333778F8F8F8773
            333337F3333337F333333078F8F870333333373FF333F7333333330777770333
            333333773FF77333333333370007333333333333777333333333}
          NumGlyphs = 2
        end
        object edNserieExtintor: TEdit
          Left = 488
          Top = 32
          Width = 121
          Height = 20
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object edseloExtintor: TEdit
          Left = 488
          Top = 72
          Width = 121
          Height = 20
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
        end
      end
    end
    inherited tabCadastro: TTabSheet
      object Label3: TLabel
        Left = 8
        Top = 0
        Width = 28
        Height = 14
        Caption = 'RGS.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label1: TLabel
        Left = 63
        Top = 0
        Width = 44
        Height = 14
        Caption = 'Entrada:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 172
        Top = 0
        Width = 63
        Height = 14
        Caption = 'Prev. Sa'#237'da:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 171
        Top = 43
        Width = 59
        Height = 14
        Caption = 'N'#176' da Caixa'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label13: TLabel
        Left = 8
        Top = 249
        Width = 106
        Height = 14
        Caption = 'Lista de Extintores:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText1: TDBText
        Left = 8
        Top = 22
        Width = 53
        Height = 16
        AutoSize = True
        DataField = 'RGS'
        DataSource = dsCadastro
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label18: TLabel
        Left = 62
        Top = 43
        Width = 32
        Height = 14
        Caption = 'Sa'#237'da:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label19: TLabel
        Left = 239
        Top = 43
        Width = 52
        Height = 14
        Caption = 'Cod. Rep.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label22: TLabel
        Left = 12
        Top = 43
        Width = 40
        Height = 14
        Caption = 'Comp,*'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label23: TLabel
        Left = 12
        Top = 83
        Width = 58
        Height = 14
        Caption = 'Nota Fiscal'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object edDataEntrada: TDBDateEdit
        Left = 63
        Top = 17
        Width = 105
        Height = 21
        DataField = 'ENTRADA'
        DataSource = dsCadastro
        Ctl3D = False
        NumGlyphs = 2
        ParentCtl3D = False
        TabOrder = 0
        OnExit = edDataEntradaExit
      end
      object dbgRGS: TDBGrid
        Left = 8
        Top = 265
        Width = 641
        Height = 184
        TabStop = False
        Ctl3D = False
        DataSource = dsExtintorRGS2
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        PopupMenu = PopupMenu
        TabOrder = 9
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Arial'
        TitleFont.Style = []
        OnColExit = dbgRGSColExit
        OnDrawColumnCell = dbgRGSDrawColumnCell
        OnDblClick = dbgRGSDblClick
        OnKeyDown = dbgRGSKeyDowvk_n
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CODIGO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            Title.Caption = 'Codigo'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIPO'
            Title.Caption = 'Tipo'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CAPACIDADE'
            Title.Caption = 'Cap.'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 30
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NUMERO_SERIE'
            Title.Caption = 'n'#176' S'#233'rie'
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
            Width = 93
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ANO_FABRICACAO'
            Title.Caption = 'Ano Fabrica'#231#227'o'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 83
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
            Width = 85
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NIVEL_MANUTENCAO'
            Title.Caption = 'Nivel'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 30
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'PINTURA'
            Title.Caption = 'Pintura'
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
            FieldName = 'BATELADA'
            Title.Caption = 'Batelada'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'AR'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CB'
            Title.Caption = 'Cubagem'
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
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 340
            Visible = True
          end>
      end
      object dbgExtintorCliente: TDBGrid
        Left = 9
        Top = 121
        Width = 641
        Height = 119
        TabStop = False
        Ctl3D = False
        DataSource = dsExtintorCliente
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 8
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Arial'
        TitleFont.Style = []
        OnDrawColumnCell = dbgExtintorClienteDrawColumnCell
        OnDblClick = dbgExtintorClienteDblClick
        OnKeyDown = dbgExtintorClienteKeyDown
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CODIGO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold]
            Title.Caption = 'C'#243'digo'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIPO'
            Title.Caption = 'Tipo'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 46
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CAPACIDADE'
            Title.Caption = 'Cap.'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 30
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NUMERO_SERIE'
            Title.Caption = 'n'#176' S'#233'rie'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRICAO'
            Title.Caption = 'Fabricante'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 92
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ANO_FABRICACAO'
            Title.Caption = 'Ano Fabrica'#231#227'o'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 87
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ULTIMA_VISITA'
            Title.Caption = 'Ultima Vistoria'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 85
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NIVEL_MANUTENCAO'
            Title.Caption = 'Nivel'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 30
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PINTURA'
            Title.Caption = 'Pintura'
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
            FieldName = 'BATELADA'
            Title.Caption = 'Batelada'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'AR'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CB'
            Title.Caption = 'Cubagem'
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
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 340
            Visible = True
          end>
      end
      object edDataSaida: TDBDateEdit
        Left = 62
        Top = 60
        Width = 103
        Height = 21
        DataField = 'SAIDA'
        DataSource = dsCadastro
        Ctl3D = False
        NumGlyphs = 2
        ParentCtl3D = False
        TabOrder = 3
      end
      object gbCliente: TGroupBox
        Left = 298
        Top = 0
        Width = 352
        Height = 106
        Caption = '  Cliente  '
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 7
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
          Width = 41
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
        object dblCliente: TDBLookupComboBox
          Left = 7
          Top = 16
          Width = 338
          Height = 20
          DataField = 'CLIENTE'
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
          OnExit = dblClienteExit
          OnKeyDown = dblClienteKeyDown
        end
      end
      object edDataPrevSaida: TDBDateEdit
        Left = 173
        Top = 16
        Width = 97
        Height = 21
        DataField = 'PREV_SAIDA'
        DataSource = dsCadastro
        Ctl3D = False
        NumGlyphs = 2
        ParentCtl3D = False
        TabOrder = 1
        OnKeyDown = edDataPrevSaidaKeyDown
      end
      object edNcaixa: TDBEdit
        Left = 171
        Top = 61
        Width = 53
        Height = 20
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'N_CAIXA'
        DataSource = dsCadastro
        ParentCtl3D = False
        TabOrder = 4
      end
      object edCodRep: TDBEdit
        Left = 239
        Top = 61
        Width = 57
        Height = 20
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'COD_REPRESENTANTE'
        DataSource = dsCadastro
        ParentCtl3D = False
        TabOrder = 5
      end
      object edCompetencia: TDBEdit
        Left = 11
        Top = 60
        Width = 46
        Height = 20
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'COMPETENCIA'
        DataSource = dsCadastro
        MaxLength = 7
        ParentCtl3D = False
        TabOrder = 2
        OnExit = edCompetenciaExit
        OnKeyPress = edCompetenciaKeyPress
      end
      object DBEdit1: TDBEdit
        Left = 12
        Top = 97
        Width = 110
        Height = 20
        Ctl3D = False
        DataField = 'NOTA_FISCAL'
        DataSource = dsCadastro
        ParentCtl3D = False
        TabOrder = 6
      end
    end
  end
  inherited dsCadastro: TDataSource
    Left = 84
  end
  object dsExtintorRGS: TDataSource [6]
    AutoEdit = False
    OnStateChange = dsCadastroStateChange
    Left = 84
    Top = 260
  end
  object dsCliente: TDataSource [7]
    DataSet = DMPesquisa.QCliente
    OnDataChange = dsClienteDataChange
    Left = 364
    Top = 12
  end
  object PopupMenu: TPopupMenu [8]
    Left = 284
    Top = 220
    object ExcluirExtintorSelecionado1: TMenuItem
      Caption = 'Excluir Extintor Selecionado'
      OnClick = ExcluirExtintorSelecionado1Click
    end
    object EditarExtintor1: TMenuItem
      Caption = 'Editar Extintor'
      OnClick = EditarExtintor1Click
    end
    object estarExtintor1: TMenuItem
      Caption = 'Testar Extintor'
      OnClick = estarExtintor1Click
    end
    object AdicionarPeas1: TMenuItem
      Caption = 'Adicionar Pe'#231'as'
      OnClick = AdicionarPeas1Click
    end
  end
  inherited qaux: TIBQuery
    Database = DM.IBDatabase1
    Transaction = DM.IBTransaction1
    Left = 196
    Top = 164
  end
  inherited cdsCadastro: TIBTable
    Database = DM.IBDatabase1
    Transaction = DM.IBTransaction1
    AfterClose = cdsCadastroAfterClose
    AfterOpen = cdsCadastroAfterOpen
    FieldDefs = <
      item
        Name = 'CODIGO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'RGS'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'ENTRADA'
        DataType = ftDateTime
      end
      item
        Name = 'PREV_SAIDA'
        DataType = ftDateTime
      end
      item
        Name = 'MATERIAL'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'SERVICO'
        DataType = ftInteger
      end
      item
        Name = 'CLIENTE'
        DataType = ftInteger
      end
      item
        Name = 'SAIDA'
        DataType = ftDateTime
      end
      item
        Name = 'SITUACAO'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'N_CAIXA'
        DataType = ftString
        Size = 12
      end
      item
        Name = 'COD_REPRESENTANTE'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'COMPETENCIA'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 7
      end
      item
        Name = 'NOTA_FISCAL'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <
      item
        Name = 'PK_RECARGA'
        Fields = 'CODIGO'
        Options = [ixUnique]
      end
      item
        Name = 'PK_RECARGA1'
        Fields = 'RGS'
        Options = [ixUnique]
      end>
    IndexFieldNames = 'RGS'
    StoreDefs = True
    TableName = 'RECARGA'
    Left = 52
    Top = 196
  end
  object QExtintor: TIBQuery
    Database = DM.IBDatabase1
    Transaction = DM.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = dsCadastro
    SQL.Strings = (
      'SELECT'
      '  ESTINTOR.CODIGO,'
      '  ESTINTOR.CAPACIDADE,'
      '  ESTINTOR.FABRICANTE AS COD_FABRICANTE,'
      '  ESTINTOR.ANO_FABRICACAO,'
      '  ESTINTOR.ULTIMA_VISITA,'
      '  ESTINTOR.NUMERO_SERIE,'
      '  ESTINTOR.NIVEL_MANUTENCAO,'
      '  ESTINTOR.PINTURA,'
      '  ESTINTOR.SELO,'
      '  ESTINTOR.BATELADA,'
      '  ESTINTOR.OBS,'
      '  ESTINTOR.FECHAMENTO,'
      '  ESTINTOR.TIPO AS TIPO_DESC,'
      '  ESTINTOR.PESO_VAZIO,'
      '  ESTINTOR.PESO_CHEIO,'
      '  ESTINTOR.PESO_VAZIO_CO2,'
      '  ESTINTOR.PESO_CHEIO_CO2,'
      '  ESTINTOR.TARA,'
      '  ESTINTOR.ET,'
      '  ESTINTOR.DATA_TESTE,'
      '  ESTINTOR.EP,'
      '  ESTINTOR.CLIENTE,'
      '  ESTINTOR.NUMERO_PROJETO,'
      '  ESTINTOR.NUMERO_LACRE,'
      '  ESTINTOR.PRESSAO_TESTE,'
      '  ESTINTOR.PRESSAO_TRABALHO,'
      '  ESTINTOR.RS,'
      '  ESTINTOR.RS_PERDA,'
      '  ESTINTOR.RS_EP_ET,'
      '  ESTINTOR.MOTIVO,'
      '  FABRICANTE.DESCRICAO AS FABRICANTE,'
      '  TIPO.TIPO,'
      '  TIPO.NBR,'
      '  TIPO.DESCRICAO AS DESC_TIPO,'
      '  TIPO.ALTA_PRESSAO'
      'FROM'
      '  RECARGA'
      
        '  INNER JOIN ITENS_RECARGA ESTINTOR ON (RECARGA.RGS = ESTINTOR.R' +
        'GS)'
      
        '  INNER JOIN FABRICANTE ON (ESTINTOR.FABRICANTE=FABRICANTE.CODIG' +
        'O)'
      '  INNER JOIN TIPO ON (ESTINTOR.TIPO=TIPO.CODIGO)'
      'WHERE'
      '  RECARGA.CODIGO = :CODIGO'
      'ORDER BY '
      '  ESTINTOR.SELO')
    Left = 52
    Top = 228
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptUnknown
        Size = 4
      end>
  end
  object qExtintorCliente: TIBQuery
    Database = DM.IBDatabase1
    Transaction = DM.IBTransaction1
    BeforeOpen = qExtintorClienteBeforeOpen
    BufferChunks = 1000
    CachedUpdates = False
    Left = 52
    Top = 164
  end
  object dsExtintorCliente: TDataSource
    DataSet = qExtintorCliente
    Left = 84
    Top = 164
  end
  object cdsRGS1: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 52
    Top = 260
  end
  object dsExtintorRGS2: TDataSource
    DataSet = QExtintor
    OnDataChange = dsExtintorRGS2DataChange
    Left = 84
    Top = 228
  end
  object QPesquisa: TIBQuery
    Database = DM.IBDatabase1
    Transaction = DM.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT '
      '  RECARGA.RGS,'
      '  RECARGA.ENTRADA,'
      '  RECARGA.PREV_SAIDA,'
      '  RECARGA.CLIENTE,'
      '  CLIENTE.RAZAO_SOCIAL,'
      '  RECARGA.SAIDA'
      'FROM'
      ' RECARGA'
      ' INNER JOIN CLIENTE ON (RECARGA.CLIENTE=CLIENTE.CODIGO)'
      'ORDER BY'
      '  RECARGA.RGS')
    Left = 52
    Top = 132
  end
  object dsPesquisa: TDataSource
    DataSet = QPesquisa
    OnDataChange = dsPesquisaDataChange
    Left = 84
    Top = 132
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = DMRgs.SQLItensRecarga
    Left = 52
    Top = 300
  end
  object cdsItensRecarga_: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    Left = 84
    Top = 300
  end
  object cdsItensRecarga: TIBTable
    Database = DM.IBDatabase1
    Transaction = DM.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'ITENS_RECARGA'
    Left = 84
    Top = 340
  end
end
