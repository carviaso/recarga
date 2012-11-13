inherited FCadAtestado: TFCadAtestado
  Left = 395
  Top = 221
  Width = 775
  Height = 425
  Caption = 'Atestado Cliente'
  PixelsPerInch = 96
  TextHeight = 14
  inherited pnControle: TPanel
    Left = 660
    Height = 372
    inherited btnFechar: TBitBtn
      Top = 288
    end
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
      TabOrder = 11
    end
    object btnRelatorio: TBitBtn
      Left = 8
      Top = 210
      Width = 91
      Height = 25
      Caption = 'Relat'#243'rio'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
      OnClick = btnRelatorioClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        5555555FFFFFFFFFF5555550000000000555557777777777F5555550FFFFFFFF
        0555557F5FFFF557F5555550F0000FFF0555557F77775557F5555550FFFFFFFF
        0555557F5FFFFFF7F5555550F000000F0555557F77777757F5555550FFFFFFFF
        0555557F5FFFFFF7F5555550F000000F0555557F77777757F5555550FFFFFFFF
        0555557F5FFF5557F5555550F000FFFF0555557F77755FF7F5555550FFFFF000
        0555557F5FF5777755555550F00FF0F05555557F77557F7555555550FFFFF005
        5555557FFFFF7755555555500000005555555577777775555555555555555555
        5555555555555555555555555555555555555555555555555555}
      NumGlyphs = 2
    end
  end
  inherited BarraDeStatus: TStatusBar
    Top = 372
    Width = 767
  end
  inherited PageControl: TPageControl
    Width = 660
    Height = 372
    ActivePage = tabCadastro
    inherited tabPesquisa: TTabSheet
      inherited dbgCadastro: TDBGrid
        Width = 630
        Height = 277
        DataSource = dsPesquisa
        TitleFont.Style = [fsBold]
        Columns = <
          item
            Expanded = False
            FieldName = 'N_PROTOCOLO'
            Title.Caption = 'N'#186' do Protocolo'
            Width = 110
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLIENTE'
            Title.Caption = 'Cliente'
            Width = 320
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALIDADE'
            Title.Caption = 'Validade'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'AREA_CONSTRUIDA'
            Title.Caption = #193'rea Construida'
            Width = 100
            Visible = True
          end>
      end
      inherited GroupBox1: TGroupBox
        Width = 630
        object Label14: TLabel [0]
          Left = 192
          Top = 32
          Width = 39
          Height = 14
          Caption = 'Cliente'
        end
        object Label5: TLabel [1]
          Left = 128
          Top = 32
          Width = 47
          Height = 14
          Caption = 'Validade'
        end
        object Label6: TLabel [2]
          Left = 56
          Top = 32
          Width = 67
          Height = 14
          Caption = 'N'#186' Protocolo'
        end
        object Label9: TLabel [3]
          Left = 8
          Top = 32
          Width = 39
          Height = 14
          Caption = 'C'#243'digo'
        end
        inherited edPesquisa: TComboEdit
          Left = 328
          Top = -8
          TabOrder = 4
          Visible = False
        end
        object edPesquisaValidade: TEdit
          Left = 128
          Top = 47
          Width = 57
          Height = 20
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object dblPesquisaCliente: TDBLookupComboBox
          Left = 192
          Top = 47
          Width = 329
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
          TabOrder = 3
          OnKeyDown = dblPesquisaClienteKeyDown
        end
        object edPesquisaNProtocolo: TEdit
          Left = 56
          Top = 47
          Width = 66
          Height = 20
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object btnPesquisa: TBitBtn
          Left = 547
          Top = 43
          Width = 75
          Height = 25
          Caption = '&Pesquisar'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
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
        object edPesquisaCodigo: TEdit
          Left = 9
          Top = 47
          Width = 42
          Height = 20
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
      end
    end
    inherited tabCadastro: TTabSheet
      object Label1: TLabel
        Left = 48
        Top = 16
        Width = 60
        Height = 14
        Caption = 'N'#186' Protocolo'
      end
      object spbScanAtestado: TSpeedButton
        Left = 6
        Top = 250
        Width = 123
        Height = 19
        Caption = 'Scanear Atestado'
        Flat = True
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033BBBBBBBBBB
          BB33337777777777777F33BB00BBBBBBBB33337F77333333F37F33BB0BBBBBB0
          BB33337F73F33337FF7F33BBB0BBBB000B33337F37FF3377737F33BBB00BB00B
          BB33337F377F3773337F33BBBB0B00BBBB33337F337F7733337F33BBBB000BBB
          BB33337F33777F33337F33EEEE000EEEEE33337F3F777FFF337F33EE0E80000E
          EE33337F73F77773337F33EEE0800EEEEE33337F37377F33337F33EEEE000EEE
          EE33337F33777F33337F33EEEEE00EEEEE33337F33377FF3337F33EEEEEE00EE
          EE33337F333377F3337F33EEEEEE00EEEE33337F33337733337F33EEEEEEEEEE
          EE33337FFFFFFFFFFF7F33EEEEEEEEEEEE333377777777777773}
        NumGlyphs = 2
        OnClick = spbScanAtestadoClick
      end
      object spbScanMemorial1: TSpeedButton
        Left = 134
        Top = 250
        Width = 124
        Height = 19
        Caption = 'Scanear Memorial 1'
        Flat = True
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033BBBBBBBBBB
          BB33337777777777777F33BB00BBBBBBBB33337F77333333F37F33BB0BBBBBB0
          BB33337F73F33337FF7F33BBB0BBBB000B33337F37FF3377737F33BBB00BB00B
          BB33337F377F3773337F33BBBB0B00BBBB33337F337F7733337F33BBBB000BBB
          BB33337F33777F33337F33EEEE000EEEEE33337F3F777FFF337F33EE0E80000E
          EE33337F73F77773337F33EEE0800EEEEE33337F37377F33337F33EEEE000EEE
          EE33337F33777F33337F33EEEEE00EEEEE33337F33377FF3337F33EEEEEE00EE
          EE33337F333377F3337F33EEEEEE00EEEE33337F33337733337F33EEEEEEEEEE
          EE33337FFFFFFFFFFF7F33EEEEEEEEEEEE333377777777777773}
        NumGlyphs = 2
        OnClick = spbScanMemorial1Click
      end
      object spbScanMemorial2: TSpeedButton
        Left = 261
        Top = 250
        Width = 124
        Height = 19
        Caption = 'Scanear Memorial 2'
        Flat = True
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033BBBBBBBBBB
          BB33337777777777777F33BB00BBBBBBBB33337F77333333F37F33BB0BBBBBB0
          BB33337F73F33337FF7F33BBB0BBBB000B33337F37FF3377737F33BBB00BB00B
          BB33337F377F3773337F33BBBB0B00BBBB33337F337F7733337F33BBBB000BBB
          BB33337F33777F33337F33EEEE000EEEEE33337F3F777FFF337F33EE0E80000E
          EE33337F73F77773337F33EEE0800EEEEE33337F37377F33337F33EEEE000EEE
          EE33337F33777F33337F33EEEEE00EEEEE33337F33377FF3337F33EEEEEE00EE
          EE33337F333377F3337F33EEEEEE00EEEE33337F33337733337F33EEEEEEEEEE
          EE33337FFFFFFFFFFF7F33EEEEEEEEEEEE333377777777777773}
        NumGlyphs = 2
        OnClick = spbScanMemorial2Click
      end
      object spbImprimeAtestado: TSpeedButton
        Left = 97
        Top = 269
        Width = 32
        Height = 18
        Flat = True
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
        OnClick = spbImprimeAtestadoClick
      end
      object spbImprimeMemorial1: TSpeedButton
        Left = 226
        Top = 269
        Width = 32
        Height = 18
        Flat = True
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
        OnClick = spbImprimeMemorial1Click
      end
      object spbImprimeMemorial2: TSpeedButton
        Left = 353
        Top = 269
        Width = 32
        Height = 18
        Flat = True
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
        OnClick = spbImprimeMemorial2Click
      end
      object Label2: TLabel
        Left = 209
        Top = 16
        Width = 32
        Height = 14
        Caption = 'Cliente'
      end
      object Label3: TLabel
        Left = 513
        Top = 17
        Width = 42
        Height = 14
        Caption = 'Validade'
      end
      object Label4: TLabel
        Left = 570
        Top = 17
        Width = 58
        Height = 14
        Caption = #193'rea Const.'
      end
      object spbScanmemorial3: TSpeedButton
        Left = 388
        Top = 250
        Width = 124
        Height = 19
        Caption = 'Scanear Memorial 3'
        Flat = True
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033BBBBBBBBBB
          BB33337777777777777F33BB00BBBBBBBB33337F77333333F37F33BB0BBBBBB0
          BB33337F73F33337FF7F33BBB0BBBB000B33337F37FF3377737F33BBB00BB00B
          BB33337F377F3773337F33BBBB0B00BBBB33337F337F7733337F33BBBB000BBB
          BB33337F33777F33337F33EEEE000EEEEE33337F3F777FFF337F33EE0E80000E
          EE33337F73F77773337F33EEE0800EEEEE33337F37377F33337F33EEEE000EEE
          EE33337F33777F33337F33EEEEE00EEEEE33337F33377FF3337F33EEEEEE00EE
          EE33337F333377F3337F33EEEEEE00EEEE33337F33337733337F33EEEEEEEEEE
          EE33337FFFFFFFFFFF7F33EEEEEEEEEEEE333377777777777773}
        NumGlyphs = 2
        OnClick = spbScanmemorial3Click
      end
      object spbImprimeMemorial3: TSpeedButton
        Left = 480
        Top = 269
        Width = 32
        Height = 18
        Flat = True
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
        OnClick = spbImprimeMemorial3Click
      end
      object spbScanTaxa: TSpeedButton
        Left = 516
        Top = 250
        Width = 124
        Height = 19
        Caption = 'Scanear Taxa'
        Flat = True
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033BBBBBBBBBB
          BB33337777777777777F33BB00BBBBBBBB33337F77333333F37F33BB0BBBBBB0
          BB33337F73F33337FF7F33BBB0BBBB000B33337F37FF3377737F33BBB00BB00B
          BB33337F377F3773337F33BBBB0B00BBBB33337F337F7733337F33BBBB000BBB
          BB33337F33777F33337F33EEEE000EEEEE33337F3F777FFF337F33EE0E80000E
          EE33337F73F77773337F33EEE0800EEEEE33337F37377F33337F33EEEE000EEE
          EE33337F33777F33337F33EEEEE00EEEEE33337F33377FF3337F33EEEEEE00EE
          EE33337F333377F3337F33EEEEEE00EEEE33337F33337733337F33EEEEEEEEEE
          EE33337FFFFFFFFFFF7F33EEEEEEEEEEEE333377777777777773}
        NumGlyphs = 2
        OnClick = spbScanTaxaClick
      end
      object spbImprimeTaxa: TSpeedButton
        Left = 608
        Top = 269
        Width = 32
        Height = 18
        Flat = True
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
        OnClick = spbImprimeTaxaClick
      end
      object Label7: TLabel
        Left = 129
        Top = 16
        Width = 67
        Height = 14
        Caption = 'N'#186' Certificado'
      end
      object Label8: TLabel
        Left = 8
        Top = 16
        Width = 33
        Height = 14
        Caption = 'C'#243'digo'
      end
      object DBText1: TDBText
        Left = 8
        Top = 35
        Width = 35
        Height = 17
        DataField = 'ATESTADO_CODIGO'
        DataSource = dsCadastro
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object ednProtocolo: TDBEdit
        Left = 48
        Top = 32
        Width = 76
        Height = 22
        DataField = 'N_PROTOCOLO'
        DataSource = dsCadastro
        TabOrder = 0
      end
      object Panel1: TPanel
        Left = 6
        Top = 60
        Width = 124
        Height = 189
        Caption = 'Panel1'
        Color = clBtnText
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        object DBIAtestado: TDBImage
          Left = 3
          Top = 3
          Width = 118
          Height = 182
          Hint = 'Precione "S" para Escanear uma nova imagem'
          Color = clBtnFace
          DataField = 'ATESTADO'
          DataSource = dsCadastro
          ParentShowHint = False
          ShowHint = True
          Stretch = True
          TabOrder = 0
          OnKeyDown = DBIAtestadoKeyDown
          OnKeyPress = DBIAtestadoKeyPress
        end
      end
      object Panel2: TPanel
        Left = 134
        Top = 60
        Width = 124
        Height = 189
        Caption = 'Panel1'
        Color = clBtnText
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
        object DBIMemorial1: TDBImage
          Left = 3
          Top = 3
          Width = 118
          Height = 182
          Hint = 'Precione "S" para Escanear uma nova imagem'
          Color = clBtnFace
          DataField = 'MEMORIAL_1'
          DataSource = dsCadastro
          ParentShowHint = False
          ShowHint = True
          Stretch = True
          TabOrder = 0
          OnKeyPress = DBIMemorial1KeyPress
        end
      end
      object Panel3: TPanel
        Left = 262
        Top = 60
        Width = 124
        Height = 189
        Caption = 'Panel1'
        Color = clBtnText
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 7
        object DBIMemorial2: TDBImage
          Left = 3
          Top = 3
          Width = 118
          Height = 182
          Hint = 'Precione "S" para Escanear uma nova imagem'
          Color = clBtnFace
          DataField = 'MEMORIAL_2'
          DataSource = dsCadastro
          ParentShowHint = False
          ShowHint = True
          Stretch = True
          TabOrder = 0
          OnKeyPress = DBIMemorial2KeyPress
        end
      end
      object dblCliente: TDBLookupComboBox
        Left = 208
        Top = 32
        Width = 302
        Height = 22
        DataField = 'CLI_CODIGO'
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
        TabOrder = 2
        OnKeyDown = dblClienteKeyDown
      end
      object ednCertificado: TDBEdit
        Left = 129
        Top = 32
        Width = 76
        Height = 22
        DataField = 'N_CERTIFICADO'
        DataSource = dsCadastro
        TabOrder = 1
      end
      object Panel4: TPanel
        Left = 389
        Top = 60
        Width = 124
        Height = 189
        Caption = 'Panel1'
        Color = clBtnText
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        object DBiMemorial3: TDBImage
          Left = 3
          Top = 3
          Width = 118
          Height = 182
          Hint = 'Precione "S" para Escanear uma nova imagem'
          Color = clBtnFace
          DataField = 'MEMORIAL_3'
          DataSource = dsCadastro
          ParentShowHint = False
          ShowHint = True
          Stretch = True
          TabOrder = 0
          OnKeyPress = DBIMemorial2KeyPress
        end
      end
      object Panel5: TPanel
        Left = 516
        Top = 59
        Width = 124
        Height = 189
        Caption = 'Panel1'
        Color = clBtnText
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 6
        object DBiTaxa: TDBImage
          Left = 3
          Top = 3
          Width = 118
          Height = 182
          Hint = 'Precione "S" para Escanear uma nova imagem'
          Color = clBtnFace
          DataField = 'TAXA'
          DataSource = dsCadastro
          ParentShowHint = False
          ShowHint = True
          Stretch = True
          TabOrder = 0
          OnKeyPress = DBIMemorial2KeyPress
        end
      end
      object RxDBCalcEdit1: TRxDBCalcEdit
        Left = 570
        Top = 32
        Width = 63
        Height = 21
        DataField = 'AREA_CONSTRUIDA'
        DataSource = dsCadastro
        ButtonWidth = 0
        NumGlyphs = 2
        TabOrder = 8
      end
      object DBEdit1: TDBEdit
        Left = 513
        Top = 32
        Width = 51
        Height = 22
        TabOrder = 9
      end
    end
  end
  inherited qaux: TIBQuery
    Database = DM.IBDatabase1
    Transaction = DM.IBTransaction1
    Active = True
    SQL.Strings = (
      'select * from ATESTADO_CLIENTE')
    object qauxN_PROTOCOLO: TIBStringField
      FieldName = 'N_PROTOCOLO'
      Origin = 'ATESTADO_CLIENTE.N_PROTOCOLO'
      Required = True
    end
    object qauxCLI_CODIGO: TIntegerField
      FieldName = 'CLI_CODIGO'
      Origin = 'ATESTADO_CLIENTE.CLI_CODIGO'
      Required = True
    end
    object qauxATESTADO: TBlobField
      FieldName = 'ATESTADO'
      Origin = 'ATESTADO_CLIENTE.ATESTADO'
      Size = 8
    end
    object qauxMEMORIAL_1: TBlobField
      FieldName = 'MEMORIAL_1'
      Origin = 'ATESTADO_CLIENTE.MEMORIAL_1'
      Size = 8
    end
    object qauxMEMORIAL_2: TBlobField
      FieldName = 'MEMORIAL_2'
      Origin = 'ATESTADO_CLIENTE.MEMORIAL_2'
      Size = 8
    end
    object qauxDATA_REGISTRO: TDateTimeField
      FieldName = 'DATA_REGISTRO'
      Origin = 'ATESTADO_CLIENTE.DATA_REGISTRO'
    end
    object qauxVALIDADE: TIBStringField
      FieldName = 'VALIDADE'
      Origin = 'ATESTADO_CLIENTE.VALIDADE'
      FixedChar = True
      Size = 7
    end
    object qauxAREA_CONSTRUIDA: TFloatField
      FieldName = 'AREA_CONSTRUIDA'
      Origin = 'ATESTADO_CLIENTE.AREA_CONSTRUIDA'
      Required = True
      DisplayFormat = '0.00'
    end
    object qauxCLIENTE: TIBStringField
      FieldName = 'CLIENTE'
      Origin = 'ATESTADO_CLIENTE.CLIENTE'
      Size = 100
    end
    object qauxATESTADO_CODIGO: TIntegerField
      FieldName = 'ATESTADO_CODIGO'
      Origin = 'ATESTADO_CLIENTE.ATESTADO_CODIGO'
      Required = True
    end
    object qauxN_CERTIFICADO: TIBStringField
      FieldName = 'N_CERTIFICADO'
      Origin = 'ATESTADO_CLIENTE.N_CERTIFICADO'
    end
    object qauxMEMORIAL_3: TBlobField
      FieldName = 'MEMORIAL_3'
      Origin = 'ATESTADO_CLIENTE.MEMORIAL_3'
      Size = 8
    end
    object qauxTAXA: TBlobField
      FieldName = 'TAXA'
      Origin = 'ATESTADO_CLIENTE.TAXA'
      Size = 8
    end
  end
  inherited cdsCadastro: TIBTable
    Database = DM.IBDatabase1
    Transaction = DM.IBTransaction1
    FieldDefs = <
      item
        Name = 'ATESTADO_CODIGO'
        DataType = ftInteger
      end
      item
        Name = 'N_PROTOCOLO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'N_CERTIFICADO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CLI_CODIGO'
        DataType = ftInteger
      end
      item
        Name = 'VALIDADE'
        DataType = ftString
        Size = 7
      end
      item
        Name = 'AREA_CONSTRUIDA'
        DataType = ftFloat
      end
      item
        Name = 'CLIENTE'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'DATA_REGISTRO'
        DataType = ftDateTime
      end
      item
        Name = 'ATESTADO'
        DataType = ftBlob
      end
      item
        Name = 'MEMORIAL_1'
        DataType = ftBlob
      end
      item
        Name = 'MEMORIAL_2'
        DataType = ftBlob
      end
      item
        Name = 'MEMORIAL_3'
        DataType = ftBlob
      end
      item
        Name = 'TAXA'
        DataType = ftBlob
      end>
    IndexDefs = <
      item
        Name = 'PK_ATESTADO_CLIENTE'
        Fields = 'N_PROTOCOLO'
        Options = [ixUnique]
      end
      item
        Name = 'FK_CLI_CODIGO_COM_CLIENTE'
        Fields = 'CLI_CODIGO'
      end>
    StoreDefs = True
    TableName = 'ATESTADO_CLIENTE'
  end
  object aiScanearImagem: TAcquireImage
    AppVersionMajorNum = 0
    AppInfo = 'Demonstra'#231#227'o'
    AppManufacturer = 'ClubeDelphi'
    AppProductFamily = 'none'
    AppProductName = 'none'
    Language = 0
    Country = 0
    Left = 200
    Top = 168
  end
  object dsCliente: TDataSource
    DataSet = DMPesquisa.QCliente
    Left = 252
    Top = 180
  end
  object dsPesquisa: TDataSource
    DataSet = qaux
    Left = 380
    Top = 228
  end
end
