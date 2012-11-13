inherited FPlanilhaAnexoO: TFPlanilhaAnexoO
  Left = 374
  Top = 154
  Width = 434
  Height = 406
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSizeable
  Caption = 'Gera Planilha - Anexo O'
  Font.Charset = DEFAULT_CHARSET
  Font.Name = 'MS Sans Serif'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 0
    Width = 412
    Height = 158
    Caption = '  Pesquisa  '
    Ctl3D = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
    object Label10: TLabel
      Left = 8
      Top = 19
      Width = 67
      Height = 14
      Caption = 'Data Entrada'
    end
    object Label1: TLabel
      Left = 9
      Top = 105
      Width = 103
      Height = 14
      Caption = 'Destino do arquivo'
    end
    object Label2: TLabel
      Left = 8
      Top = 64
      Width = 92
      Height = 14
      Caption = 'Intervalo de Selo'
    end
    object edPesquisaEntradaIni: TDateEdit
      Left = 8
      Top = 35
      Width = 105
      Height = 21
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 0
    end
    object edPesquisaEntradaFim: TDateEdit
      Left = 128
      Top = 35
      Width = 105
      Height = 21
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 1
    end
    object Panel1: TPanel
      Left = 322
      Top = 15
      Width = 89
      Height = 142
      Align = alRight
      TabOrder = 5
      object BitImprimir: TBitBtn
        Left = 8
        Top = 28
        Width = 75
        Height = 25
        Caption = '&Inmetro'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = BitImprimirClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          0400000000000001000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
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
      object btnPesquisa: TBitBtn
        Left = 8
        Top = 3
        Width = 75
        Height = 25
        Caption = '&Pesquisar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
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
      object BitFechar: TBitBtn
        Left = 8
        Top = 53
        Width = 75
        Height = 25
        Caption = '&Fechar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        Kind = bkClose
      end
    end
    object DirectoryEdit: TDirectoryEdit
      Left = 8
      Top = 119
      Width = 302
      Height = 21
      NumGlyphs = 1
      TabOrder = 4
    end
    object edSeloIni: TEdit
      Left = 8
      Top = 80
      Width = 105
      Height = 20
      TabOrder = 2
    end
    object edSeloFim: TEdit
      Left = 128
      Top = 80
      Width = 105
      Height = 20
      TabOrder = 3
    end
  end
  object dbgCadastro: TDBGrid
    Left = 8
    Top = 165
    Width = 412
    Height = 181
    Ctl3D = False
    DataSource = DS_Item
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Arial'
    TitleFont.Style = []
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
        FieldName = 'ENTRADA'
        Title.Caption = 'Data Entrada'
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
        FieldName = 'SELO_MIN'
        Title.Caption = 'Selo Inicial'
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
        FieldName = 'SELO_MAX'
        Title.Caption = 'Selo Final'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 100
        Visible = True
      end>
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 353
    Width = 426
    Height = 19
    Panels = <
      item
        Width = 50
      end>
  end
  object QR_Empresa: TIBQuery
    Database = DM.IBDatabase1
    Transaction = DM.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    Left = 104
    Top = 216
  end
  object DS_CabOrdemServico: TDataSource
    DataSet = QR_Empresa
    Left = 128
    Top = 224
  end
  object QR_Item: TIBQuery
    Database = DM.IBDatabase1
    Transaction = DM.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    Left = 280
    Top = 216
  end
  object DS_Item: TDataSource
    DataSet = QR_Item
    Left = 304
    Top = 224
  end
end
