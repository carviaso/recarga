inherited FpesquisaClientes: TFpesquisaClientes
  Width = 672
  Caption = 'Pesquisa Cliente'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 14
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 664
    Height = 105
    Align = alTop
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 0
    object edPesquisa: TEdit
      Left = 8
      Top = 8
      Width = 377
      Height = 20
      CharCase = ecUpperCase
      TabOrder = 0
      Text = ' '
      OnChange = edPesquisaChange
    end
    object btnSelecionar: TBitBtn
      Left = 568
      Top = 7
      Width = 90
      Height = 25
      Caption = '&Selecionar'
      TabOrder = 1
      OnClick = btnSelecionarClick
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
    object Panel2: TPanel
      Left = 8
      Top = 57
      Width = 649
      Height = 41
      BorderStyle = bsSingle
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
    object rgTipoPesquisa: TRadioGroup
      Left = 389
      Top = 2
      Width = 177
      Height = 51
      Caption = '  Tipo Pesquisa  '
      ItemIndex = 0
      Items.Strings = (
        'Inicio'
        'Qualquer parte')
      TabOrder = 3
    end
  end
  object dbgPesquisa: TDBGrid
    Left = 0
    Top = 105
    Width = 664
    Height = 250
    Align = alClient
    DataSource = dsPesquisa
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Arial'
    TitleFont.Style = [fsBold]
    OnDrawColumnCell = dbgPesquisaDrawColumnCell
    OnDblClick = dbgPesquisaDblClick
  end
  object QPesquisa: TIBQuery
    Database = DM.IBDatabase1
    Transaction = DM.IBTransaction1
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from CLIENTE ORDER BY RAZAO_SOCIAL')
    Filtered = True
    Left = 120
    Top = 152
    object QPesquisaCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 12
      FieldName = 'CODIGO'
      Origin = 'CLIENTE.CODIGO'
      Required = True
    end
    object QPesquisaRAZAO_SOCIAL: TIBStringField
      DisplayLabel = 'Raz'#227'o Social'
      DisplayWidth = 58
      FieldName = 'RAZAO_SOCIAL'
      Origin = 'CLIENTE.RAZAO_SOCIAL'
      Size = 80
    end
    object QPesquisaCNPJ: TIBStringField
      DisplayWidth = 24
      FieldName = 'CNPJ'
      Origin = 'CLIENTE.CNPJ'
    end
    object QPesquisaENDERECO: TIBStringField
      DisplayLabel = 'Endere'#231'o'
      DisplayWidth = 120
      FieldName = 'ENDERECO'
      Origin = 'CLIENTE.ENDERECO'
      Size = 100
    end
    object QPesquisaBAIRRO: TIBStringField
      DisplayLabel = 'Bairro'
      DisplayWidth = 96
      FieldName = 'BAIRRO'
      Origin = 'CLIENTE.BAIRRO'
      Size = 80
    end
    object QPesquisaCIDADE: TIBStringField
      DisplayLabel = 'Cidade'
      DisplayWidth = 96
      FieldName = 'CIDADE'
      Origin = 'CLIENTE.CIDADE'
      Size = 80
    end
    object QPesquisaUF: TIBStringField
      DisplayWidth = 3
      FieldName = 'UF'
      Origin = 'CLIENTE.UF'
      FixedChar = True
      Size = 2
    end
    object QPesquisaCEP: TIBStringField
      DisplayWidth = 12
      FieldName = 'CEP'
      Origin = 'CLIENTE.CEP'
      Size = 10
    end
    object QPesquisaTELEFONE: TIBStringField
      DisplayLabel = 'Telefone'
      DisplayWidth = 72
      FieldName = 'TELEFONE'
      Origin = 'CLIENTE.TELEFONE'
      Size = 60
    end
    object QPesquisaEMAIL: TIBStringField
      DisplayLabel = 'Email'
      DisplayWidth = 72
      FieldName = 'EMAIL'
      Origin = 'CLIENTE.EMAIL'
      Size = 60
    end
    object QPesquisaFANTAZIA: TIBStringField
      DisplayLabel = 'Nome Fantazia'
      DisplayWidth = 96
      FieldName = 'FANTAZIA'
      Origin = 'CLIENTE.FANTAZIA'
      Size = 80
    end
  end
  object dsPesquisa: TDataSource
    DataSet = QPesquisa
    Left = 120
    Top = 216
  end
end
