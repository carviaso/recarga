inherited FPesquisaOrcamento: TFPesquisaOrcamento
  Width = 565
  Caption = 'Pesquisa Or'#231'amento'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 14
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 557
    Height = 113
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 56
      Height = 14
      Caption = 'Or'#231'amento:'
    end
    object Label14: TLabel
      Left = 8
      Top = 48
      Width = 32
      Height = 14
      Caption = 'Cliente'
    end
    object edNOrcamento: TEdit
      Left = 8
      Top = 24
      Width = 65
      Height = 22
      TabOrder = 0
    end
    object GroupBox1: TGroupBox
      Left = 80
      Top = 8
      Width = 217
      Height = 43
      Caption = '  Per'#237'odo Or'#231'amento  '
      TabOrder = 1
      object Label2: TLabel
        Left = 105
        Top = 22
        Width = 6
        Height = 14
        Caption = 'a'
      end
      object edData1: TDateEdit
        Left = 8
        Top = 16
        Width = 89
        Height = 21
        NumGlyphs = 2
        TabOrder = 0
      end
      object edData2: TDateEdit
        Left = 120
        Top = 16
        Width = 89
        Height = 21
        NumGlyphs = 2
        TabOrder = 1
      end
    end
    object dblPesquisaCliente: TDBLookupComboBox
      Left = 8
      Top = 64
      Width = 353
      Height = 22
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
      OnKeyDown = dblPesquisaClienteKeyDown
    end
    object Panel2: TPanel
      Left = 468
      Top = 1
      Width = 88
      Height = 111
      Align = alRight
      TabOrder = 3
      object btnRelatorio: TBitBtn
        Left = 6
        Top = 4
        Width = 75
        Height = 25
        Caption = 'Selecionar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = btnRelatorioClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          333333333333333333FF33333333333330003333333333333777333333333333
          300033FFFFFF3333377739999993333333333777777F3333333F399999933333
          3300377777733333337733333333333333003333333333333377333333333333
          3333333333333333333F333333333333330033333F33333333773333C3333333
          330033337F3333333377333CC3333333333333F77FFFFFFF3FF33CCCCCCCCCC3
          993337777777777F77F33CCCCCCCCCC399333777777777737733333CC3333333
          333333377F33333333FF3333C333333330003333733333333777333333333333
          3000333333333333377733333333333333333333333333333333}
        NumGlyphs = 2
      end
      object BitBtn2: TBitBtn
        Left = 6
        Top = 29
        Width = 75
        Height = 25
        Caption = 'Novo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = BitBtn2Click
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
      object btnPesquisa: TBitBtn
        Left = 6
        Top = 54
        Width = 75
        Height = 25
        Caption = '&Pesquisar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
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
      object BitBtn1: TBitBtn
        Left = 6
        Top = 79
        Width = 75
        Height = 25
        Caption = '&Fechar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        Kind = bkClose
      end
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 113
    Width = 557
    Height = 242
    Align = alClient
    DataSource = dsPesquisa
    TabOrder = 1
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Arial'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'ORC_CODIGO'
        Width = 59
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ORC_DATA'
        Width = 61
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ORC_CLIENTEDESC'
        Width = 308
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ORC_VALOR'
        Title.Alignment = taRightJustify
        Visible = True
      end>
  end
  object dsCliente: TDataSource
    DataSet = DMPesquisa.QCliente
    Left = 252
    Top = 180
  end
  object QPesquisa: TIBQuery
    Database = DM.IBDatabase1
    Transaction = DM.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    Left = 120
    Top = 184
    object QPesquisaORC_CODIGO: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'Or'#231'amento'
      DisplayWidth = 12
      FieldName = 'ORC_CODIGO'
      Origin = 'ORCAMENTO.ORC_CODIGO'
      Required = True
    end
    object QPesquisaORC_DATA: TDateTimeField
      DisplayLabel = 'Data'
      DisplayWidth = 12
      FieldName = 'ORC_DATA'
      Origin = 'ORCAMENTO.ORC_DATA'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object QPesquisaORC_CLIENTEDESC: TIBStringField
      DisplayLabel = 'Cliente'
      DisplayWidth = 59
      FieldName = 'ORC_CLIENTEDESC'
      Origin = 'ORCAMENTO.ORC_CLIENTEDESC'
      Size = 60
    end
    object QPesquisaORC_VALOR: TFloatField
      DisplayLabel = 'Valor'
      DisplayWidth = 12
      FieldName = 'ORC_VALOR'
      Origin = 'ORCAMENTO.ORC_VALOR'
      DisplayFormat = '#,##0.00'
    end
  end
  object dsPesquisa: TDataSource
    DataSet = QPesquisa
    OnDataChange = dsPesquisaDataChange
    Left = 168
    Top = 184
  end
end
