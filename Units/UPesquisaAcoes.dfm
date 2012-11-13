inherited FPesquisaAcoes: TFPesquisaAcoes
  Width = 594
  Height = 450
  HorzScrollBar.Visible = False
  VertScrollBar.Visible = False
  Caption = 'Pesquisa A'#231#245'es de Usu'#225'rios'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 14
  object Telas: TLabel
    Left = 8
    Top = 8
    Width = 29
    Height = 14
    Caption = 'Telas'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 8
    Top = 56
    Width = 49
    Height = 14
    Caption = 'Usu'#225'rios'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 328
    Top = 8
    Width = 50
    Height = 14
    Caption = 'Per'#237'odos'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 452
    Top = 31
    Width = 6
    Height = 14
    Caption = 'a'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object dbgPesquisa: TRxDBGrid
    Left = 2
    Top = 105
    Width = 584
    Height = 305
    DataSource = dsPesquisa
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    Options = [dgEditing, dgTitles, dgColumnResize, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Arial'
    TitleFont.Style = []
    OnDrawColumnCell = dbgPesquisaDrawColumnCell
    Columns = <
      item
        Expanded = False
        FieldName = 'TELA'
        Title.Caption = 'Tela'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USUARIO'
        Title.Caption = 'Usu'#225'rio'
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
        FieldName = 'ACAO'
        Title.Caption = 'A'#231#227'o'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA_HORA'
        Title.Caption = 'Data/Hora'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Arial'
        Title.Font.Style = [fsBold]
        Width = 100
        Visible = True
      end>
  end
  object dblTelas: TDBLookupComboBox
    Left = 8
    Top = 24
    Width = 300
    Height = 22
    KeyField = 'TELA'
    ListField = 'TELA'
    ListSource = dsTelas
    TabOrder = 1
    OnKeyDown = dblTelasKeyDown
  end
  object dblUsuario: TDBLookupComboBox
    Left = 8
    Top = 72
    Width = 300
    Height = 22
    KeyField = 'USUARIO'
    ListField = 'USUARIO'
    ListSource = dsUsuario
    TabOrder = 2
    OnKeyDown = dblTelasKeyDown
  end
  object edDataIni: TDateEdit
    Left = 328
    Top = 24
    Width = 122
    Height = 21
    NumGlyphs = 2
    TabOrder = 3
  end
  object edDataFim: TDateEdit
    Left = 464
    Top = 24
    Width = 121
    Height = 21
    NumGlyphs = 2
    TabOrder = 4
  end
  object btnpesquisa: TBitBtn
    Left = 486
    Top = 48
    Width = 96
    Height = 25
    Caption = 'Pesquisar'
    TabOrder = 5
    OnClick = btnpesquisaClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      33033333333333333F7F3333333333333000333333333333F777333333333333
      000333333333333F777333333333333000333333333333F77733333333333300
      033333333FFF3F777333333700073B703333333F7773F77733333307777700B3
      333333773337777333333078F8F87033333337F3333337F33333778F8F8F8773
      333337333333373F333307F8F8F8F70333337F33FFFFF37F3333078999998703
      33337F377777337F333307F8F8F8F703333373F3333333733333778F8F8F8773
      333337F3333337F333333078F8F870333333373FF333F7333333330777770333
      333333773FF77333333333370007333333333333777333333333}
    NumGlyphs = 2
  end
  object RLReport1: TRLReport
    Left = 8
    Top = 436
    Width = 794
    Height = 1123
    DataSource = dsPesquisa
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 43
      BandType = btHeader
      object rlEmpresa: TRLLabel
        Left = 2
        Top = 2
        Width = 63
        Height = 16
      end
      object RLLabel1: TRLLabel
        Left = 237
        Top = 12
        Width = 244
        Height = 19
        Align = faCenter
        Caption = 'Relat'#243'rio de A'#231#245'es de Usu'#225'rios'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 629
        Top = 0
        Width = 89
        Height = 14
        Align = faRightTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Info = itFullDate
        ParentFont = False
        Text = 'Emis'#227'o: '
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 81
      Width = 718
      Height = 16
      BandType = btColumnHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      object RLLabel2: TRLLabel
        Left = 0
        Top = -1
        Width = 26
        Height = 14
        Caption = 'Tela'
      end
      object RLLabel3: TRLLabel
        Left = 192
        Top = 0
        Width = 45
        Height = 14
        Caption = 'Usu'#225'rio'
      end
      object RLLabel4: TRLLabel
        Left = 312
        Top = 0
        Width = 30
        Height = 14
        Caption = 'A'#231#227'o'
      end
      object RLLabel5: TRLLabel
        Left = 576
        Top = 0
        Width = 54
        Height = 14
        Caption = 'Data/Hora'
      end
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 97
      Width = 718
      Height = 16
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      object RLDBText1: TRLDBText
        Left = 0
        Top = 0
        Width = 29
        Height = 14
        DataField = 'TELA'
        DataSource = dsPesquisa
      end
      object RLDBText2: TRLDBText
        Left = 192
        Top = 0
        Width = 49
        Height = 14
        DataField = 'USUARIO'
        DataSource = dsPesquisa
      end
      object RLDBText3: TRLDBText
        Left = 312
        Top = 0
        Width = 34
        Height = 14
        DataField = 'ACAO'
        DataSource = dsPesquisa
      end
      object RLDBText4: TRLDBText
        Left = 576
        Top = 0
        Width = 68
        Height = 14
        DataField = 'DATA_HORA'
        DataSource = dsPesquisa
      end
    end
  end
  object BitBtn1: TBitBtn
    Left = 487
    Top = 76
    Width = 96
    Height = 25
    Caption = 'Imprimir'
    TabOrder = 7
    OnClick = BitBtn1Click
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
  object QPesquisa: TIBQuery
    Database = DM.IBDatabase1
    Transaction = DM.IBTransaction1
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from ACOES')
    Left = 72
    Top = 264
  end
  object dsPesquisa: TDataSource
    DataSet = QPesquisa
    Left = 120
    Top = 256
  end
  object QTelas: TIBQuery
    Database = DM.IBDatabase1
    Transaction = DM.IBTransaction1
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT DISTINCT TELA FROM ACOES')
    Left = 40
    Top = 32
  end
  object dsTelas: TDataSource
    DataSet = QTelas
    Left = 96
    Top = 32
  end
  object QUsuarios: TIBQuery
    Database = DM.IBDatabase1
    Transaction = DM.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT DISTINCT USUARIO FROM ACOES')
    Left = 288
    Top = 72
  end
  object dsUsuario: TDataSource
    DataSet = QUsuarios
    Left = 336
    Top = 72
  end
  object SaveDialog: TSaveDialog
    Left = 328
    Top = 208
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 'FortesReport v3.23 \251 Copyright '#169' 1999-2004 Fortes Inform'#225'tica'
    ViewerOptions = []
    FontEncoding = feNoEncoding
    DisplayName = 'Documento PDF'
    Left = 400
    Top = 72
  end
end
