inherited FPesquisaExtintor: TFPesquisaExtintor
  Left = 225
  Width = 658
  Height = 428
  Caption = 'Pesquisa de Extintores'
  OldCreateOrder = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 14
  object pnButoes: TPanel
    Left = 563
    Top = 0
    Width = 87
    Height = 394
    Align = alRight
    TabOrder = 0
    object btnFschar: TBitBtn
      Left = 8
      Top = 360
      Width = 75
      Height = 25
      Caption = '&Fechar'
      TabOrder = 0
      Kind = bkClose
    end
    object BitBtn1: TBitBtn
      Left = 8
      Top = 16
      Width = 75
      Height = 25
      Caption = '&Adicionar'
      TabOrder = 1
      OnClick = BitBtn1Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF003FF0000000F0
        000033F77777773777773FFF0CCC0FF09990333F73F37337F33733FFF0C0FFF0
        99903333F7373337F337333FFF0FFFF0999033333F73FFF7FFF73333FFF000F0
        0000333333F77737777733333F07B70FFFFF3333337F337F33333333330BBB0F
        FFFF3FFFFF7F337F333300000307B70FFFFF77777F73FF733F330EEE033000FF
        0FFF7F337FF777337FF30EEE00033FF000FF7F33777F333777FF0EEE0E033300
        000F7FFF7F7FFF77777F00000E00000000007777737773777777330EEE0E0330
        00FF337FFF7F7F3777F33300000E033000FF337777737F3777F333330EEE0330
        00FF33337FFF7FF77733333300000000033F3333777777777333}
      NumGlyphs = 2
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 563
    Height = 394
    Align = alClient
    TabOrder = 1
    object pnPesquisa: TPanel
      Left = 1
      Top = 1
      Width = 561
      Height = 112
      Align = alTop
      TabOrder = 0
      object Label3: TLabel
        Left = 8
        Top = 8
        Width = 39
        Height = 14
        Caption = 'C'#243'digo'
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
        Width = 57
        Height = 14
        Caption = 'Fabricante'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 88
        Top = 8
        Width = 24
        Height = 14
        Caption = 'Tipo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object edCorigo: TEdit
        Left = 8
        Top = 24
        Width = 73
        Height = 22
        TabOrder = 0
      end
      object dblFabricante: TDBLookupComboBox
        Left = 8
        Top = 72
        Width = 217
        Height = 22
        KeyField = 'CODIGO'
        ListField = 'DESCRICAO'
        ListSource = dsFabricante
        TabOrder = 1
        OnKeyDown = dblTipoKeyDown
      end
      object dblTipo: TDBLookupComboBox
        Left = 88
        Top = 24
        Width = 137
        Height = 22
        KeyField = 'CODIGO'
        ListField = 'DESCRICAO'
        ListSource = dsTipo
        TabOrder = 2
        OnKeyDown = dblTipoKeyDown
      end
      object btnPesquisar: TBitBtn
        Left = 456
        Top = 72
        Width = 91
        Height = 25
        Caption = '&Pesquisar'
        TabOrder = 3
        OnClick = btnPesquisarClick
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
    end
    object DBGrid1: TDBGrid
      Left = 8
      Top = 120
      Width = 545
      Height = 265
      DataSource = dsExtintor
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
      TabOrder = 1
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Arial'
      TitleFont.Style = []
    end
  end
  object dsExtintor: TDataSource
    AutoEdit = False
    DataSet = sqlExtintor
    Left = 444
    Top = 276
  end
  object dsFabricante: TDataSource
    DataSet = DMPesquisa.cdsFabricante
    Left = 345
    Top = 41
  end
  object dsTipo: TDataSource
    DataSet = DMPesquisa.cdsTipo
    Left = 385
    Top = 41
  end
  object sqlExtintor: TIBQuery
    Database = DM.IBDatabase1
    Transaction = DM.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    Left = 440
    Top = 240
  end
end
