object FpesquisaRGS: TFpesquisaRGS
  Left = 271
  Top = 159
  Width = 631
  Height = 466
  Caption = 'Pesquisa RGS'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lbNreg: TLabel
    Left = 8
    Top = 408
    Width = 118
    Height = 13
    Caption = 'Quantidade de RGS:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object dbgCadastro: TDBGrid
    Left = 8
    Top = 192
    Width = 601
    Height = 212
    Ctl3D = False
    DataSource = dsPesquisa
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Arial'
    TitleFont.Style = []
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
  object GroupBox1: TGroupBox
    Left = 8
    Top = 0
    Width = 601
    Height = 185
    Caption = '  Pesquisa  '
    Ctl3D = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 1
    object Label9: TLabel
      Left = 8
      Top = 16
      Width = 22
      Height = 14
      Caption = 'RGS'
    end
    object Label10: TLabel
      Left = 8
      Top = 56
      Width = 67
      Height = 14
      Caption = 'Data Entrada'
    end
    object Label11: TLabel
      Left = 8
      Top = 104
      Width = 123
      Height = 14
      Caption = 'Data Previs'#227'o de Sa'#237'da'
    end
    object Label14: TLabel
      Left = 128
      Top = 16
      Width = 39
      Height = 14
      Caption = 'Cliente'
    end
    object Label15: TLabel
      Left = 118
      Top = 79
      Width = 6
      Height = 14
      Caption = 'a'
    end
    object Label16: TLabel
      Left = 118
      Top = 127
      Width = 6
      Height = 14
      Caption = 'a'
    end
    object Label1: TLabel
      Left = 256
      Top = 56
      Width = 55
      Height = 14
      Caption = 'Data Sa'#237'da'
    end
    object Label2: TLabel
      Left = 366
      Top = 79
      Width = 6
      Height = 14
      Caption = 'a'
    end
    object Label3: TLabel
      Left = 8
      Top = 144
      Width = 73
      Height = 14
      Caption = 'Compet'#234'ncia'
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
      TabOrder = 2
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
      TabOrder = 3
    end
    object edPesquisaPrevSaidaIni: TDateEdit
      Left = 8
      Top = 120
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
    object edPesquisaPrevSaidaFim: TDateEdit
      Left = 128
      Top = 120
      Width = 105
      Height = 21
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 7
    end
    object dblPesquisaCliente: TDBLookupComboBox
      Left = 128
      Top = 32
      Width = 353
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
      TabOrder = 4
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
      TabOrder = 5
    end
    object rgSituacao: TRadioGroup
      Left = 256
      Top = 112
      Width = 225
      Height = 60
      Caption = '  Situa'#231#227'o da RGS  '
      Columns = 2
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ItemIndex = 0
      Items.Strings = (
        'Todas'
        'Em Aberto'
        'Baixadas')
      ParentFont = False
      TabOrder = 8
    end
    object Panel1: TPanel
      Left = 512
      Top = 15
      Width = 88
      Height = 169
      Align = alRight
      TabOrder = 10
      object btnPecas: TBitBtn
        Left = 8
        Top = 65
        Width = 75
        Height = 25
        Caption = 'P&e'#231'as'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = btnPecasClick
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
      object btnRGS: TBitBtn
        Left = 8
        Top = 37
        Width = 75
        Height = 25
        Caption = '&RGS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = btnRGSClick
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
        Top = 10
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
      object btnFechar: TBitBtn
        Left = 8
        Top = 139
        Width = 75
        Height = 25
        Caption = '&Fechar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        Kind = bkClose
      end
      object btnRelatorio: TBitBtn
        Left = 8
        Top = 93
        Width = 75
        Height = 25
        Caption = 'Rela&t'#243'rio'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
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
    object edCompetencia: TEdit
      Left = 8
      Top = 160
      Width = 59
      Height = 20
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 9
    end
  end
  object QPesquisa: TIBQuery
    Database = DM.IBDatabase1
    Transaction = DM.IBTransaction1
    AfterOpen = QPesquisaAfterOpen
    BufferChunks = 1000
    CachedUpdates = False
    Left = 104
    Top = 279
  end
  object dsPesquisa: TDataSource
    DataSet = QPesquisa
    OnDataChange = dsPesquisaDataChange
    Left = 135
    Top = 279
  end
  object dsCliente: TDataSource
    DataSet = DMPesquisa.QCliente
    Left = 252
    Top = 180
  end
  object qaux: TIBQuery
    Database = DM.IBDatabase1
    Transaction = DM.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    Left = 324
    Top = 180
  end
  object cdsRGS1: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 516
    Top = 180
  end
  object QExtintor: TIBQuery
    Database = DM.IBDatabase1
    Transaction = DM.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = dsPesquisa
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
      '  ESTINTOR.NORMA_CO2,'
      '  ESTINTOR.SELO,'
      '  ESTINTOR.BATELADA,'
      '  ESTINTOR.OBS,'
      '  ESTINTOR.FECHAMENTO,'
      '  ESTINTOR.TIPO AS TIPO_DESC,'
      '  ESTINTOR.PESO_VAZIO,'
      '  ESTINTOR.PESO_CHEIO,'
      '  ESTINTOR.PESO_VAZIO_CO2,'
      '  ESTINTOR.PESO_CHEIO_CO2,'
      '  ESTINTOR.LITROS_CO2,'
      '  ESTINTOR.TARA,'
      '  ESTINTOR.ET,'
      '  ESTINTOR.DATA_TESTE,'
      '  ESTINTOR.EP,'
      '  ESTINTOR.CLIENTE,'
      '  ESTINTOR.NUMERO_PROJETO,'
      '  ESTINTOR.NUMERO_LACRE,'
      '  ESTINTOR.PRESSAO_TESTE,'
      
        '  CAST(ESTINTOR.PRESSAO_TRABALHO AS DECIMAL(15,2)) AS   PRESSAO_' +
        'TRABALHO,'
      '  ESTINTOR.RS,'
      '  ESTINTOR.RS_PERDA,'
      '  ESTINTOR.RS_EP_ET,'
      '  ESTINTOR.MOTIVO,'
      '  FABRICANTE.DESCRICAO AS FABRICANTE,'
      '  TIPO.TIPO,'
      '  TIPO.NBR,'
      '  TIPO.CO2,'
      '  TIPO.DESCRICAO AS DESC_TIPO,'
      '  TIPO.ALTA_PRESSAO'
      'FROM'
      '  ITENS_RECARGA ESTINTOR '
      
        '  INNER JOIN FABRICANTE ON (ESTINTOR.FABRICANTE=FABRICANTE.CODIG' +
        'O)'
      '  INNER JOIN TIPO ON (ESTINTOR.TIPO=TIPO.CODIGO)'
      'WHERE'
      '  ESTINTOR.RGS = :RGS'
      'ORDER BY'
      '  ESTINTOR.SELO')
    Left = 104
    Top = 344
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'RGS'
        ParamType = ptUnknown
      end>
  end
  object dsExtintorRGS2: TDataSource
    DataSet = QExtintor
    Left = 420
    Top = 340
  end
  object cdsPecas: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'CODIGO'
    Params = <>
    Left = 104
    Top = 176
  end
  object QRGSPecas: TIBQuery
    Database = DM.IBDatabase1
    Transaction = DM.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = dsPesquisa
    SQL.Strings = (
      'SELECT'
      '  RECARGA.RGS,'
      '  RECARGA.CLIENTE,'
      '  ESTINTOR.CODIGO,'
      '  ESTINTOR.CAPACIDADE,'
      '  ESTINTOR.NORMA_CO2,'
      '  ESTINTOR.ANO_FABRICACAO,'
      '  ESTINTOR.ULTIMA_VISITA,'
      '  ESTINTOR.NUMERO_SERIE,'
      '  ESTINTOR.NIVEL_MANUTENCAO,'
      '  ESTINTOR.PINTURA,'
      '  ESTINTOR.NUMERO_PROJETO,'
      '  ESTINTOR.NUMERO_LACRE,'
      '  TIPO.TIPO,'
      '  TIPO.CO2,'
      '  TIPO.NBR,'
      '  FABRICANTE.DESCRICAO AS FABRICANTE,'
      '  PECAS.DESCRICAO AS PECA'
      'FROM'
      '  RECARGA'
      
        '  INNER JOIN ITENS_RECARGA ESTINTOR ON (RECARGA.RGS = ESTINTOR.R' +
        'GS)'
      
        '  LEFT  JOIN RGS_EXTINTOR_PECAS ON (ESTINTOR.CODIGO = RGS_EXTINT' +
        'OR_PECAS.CODIGO_EXTINTOR) AND (RECARGA.CODIGO = RGS_EXTINTOR_PEC' +
        'AS.CODIGO_RGS)'
      
        '  LEFT  JOIN PECAS ON (RGS_EXTINTOR_PECAS.CODIGO_PECA = PECAS.CO' +
        'DIGO_PECAS)'
      '  INNER JOIN TIPO ON (ESTINTOR.TIPO = TIPO.CODIGO)'
      
        '  INNER JOIN FABRICANTE ON (ESTINTOR.FABRICANTE = FABRICANTE.COD' +
        'IGO)'
      'WHERE'
      '  (RECARGA.CODIGO = :CODIGO)'
      'ORDER BY'
      '  ESTINTOR.CODIGO,'
      '  PECAS.DESCRICAO')
    Left = 104
    Top = 312
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODIGO'
        ParamType = ptUnknown
      end>
  end
  object QRelatorio: TIBQuery
    Database = DM.IBDatabase1
    Transaction = DM.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    Left = 104
    Top = 216
  end
  object QTipo: TIBQuery
    Database = DM.IBDatabase1
    Transaction = DM.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    Left = 104
    Top = 248
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 'FortesReport v3.23 \251 Copyright '#169' 1999-2004 Fortes Inform'#225'tica'
    ViewerOptions = []
    FontEncoding = feNoEncoding
    DisplayName = 'Documento PDF'
    Left = 344
    Top = 328
  end
end
