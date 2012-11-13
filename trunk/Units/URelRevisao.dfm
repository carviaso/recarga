inherited FRelRevisao: TFRelRevisao
  Width = 460
  Height = 250
  Caption = 'Relat'#243'rio - Revis'#227'o'
  PixelsPerInch = 96
  TextHeight = 14
  object Label8: TLabel [0]
    Left = 5
    Top = 8
    Width = 33
    Height = 14
    Caption = 'C'#243'digo'
  end
  object Label14: TLabel [1]
    Left = 61
    Top = 8
    Width = 32
    Height = 14
    Caption = 'Cliente'
  end
  object Label9: TLabel [2]
    Left = 5
    Top = 50
    Width = 37
    Height = 14
    Caption = 'Revisor'
  end
  inherited Panel1: TPanel
    Left = 362
    Width = 90
    Height = 197
    Align = alRight
    TabOrder = 5
    inherited btnVisualizar: TBitBtn
      Left = 8
      Top = 40
      Enabled = True
      OnClick = btnVisualizarClick
    end
    inherited btnImprimir: TBitBtn
      Left = 8
      Top = 72
      Enabled = True
      OnClick = btnImprimirClick
    end
    inherited btnFechar: TBitBtn
      Left = 8
      Top = 165
      Width = 75
    end
  end
  inherited StatusBar: TStatusBar
    Top = 197
    Width = 452
  end
  object edPesquisaCodigo: TEdit [5]
    Left = 5
    Top = 24
    Width = 44
    Height = 22
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object dblPesquisaCliente: TDBLookupComboBox [6]
    Left = 59
    Top = 24
    Width = 302
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
    TabOrder = 1
    OnKeyDown = dblPesquisaClienteKeyDown
  end
  object edPesquisaRevisor: TEdit [7]
    Left = 5
    Top = 66
    Width = 156
    Height = 22
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object GroupBox1: TGroupBox [8]
    Left = 168
    Top = 48
    Width = 192
    Height = 49
    Caption = '  Data  '
    TabOrder = 3
    object Label2: TLabel
      Left = 93
      Top = 23
      Width = 6
      Height = 14
      Caption = 'a'
    end
    object edPesquisaData: TDateEdit
      Left = 7
      Top = 18
      Width = 84
      Height = 20
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 0
    end
    object DateEdit1: TDateEdit
      Left = 102
      Top = 18
      Width = 84
      Height = 20
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 1
    end
  end
  object rgdtExibicao: TRadioGroup [9]
    Left = 5
    Top = 96
    Width = 355
    Height = 57
    Caption = '  Datas a serem exibidas  '
    ItemIndex = 0
    Items.Strings = (
      'Exibir data da ultima recarga e ultimo teste'
      'Exibir data da pr'#243'xima regarga e pr'#243'ximo teste')
    TabOrder = 4
  end
  inherited QPesquisa: TIBQuery
    Database = DM.IBDatabase1
    Transaction = DM.IBTransaction1
    Top = 64
  end
  inherited dsPesquisa: TDataSource
    Top = 96
  end
  object dsCliente: TDataSource
    AutoEdit = False
    DataSet = DMPesquisa.QClientesComExtintor
    Left = 340
    Top = 148
  end
  object qaux: TIBQuery
    Database = DM.IBDatabase1
    Transaction = DM.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    Left = 284
    Top = 148
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 'FortesReport v3.23 \251 Copyright '#169' 1999-2004 Fortes Inform'#225'tica'
    ViewerOptions = []
    FontEncoding = feNoEncoding
    DisplayName = 'Documento PDF'
    Left = 150
    Top = 81
  end
end
