inherited FRelatorioCartaORcamento: TFRelatorioCartaORcamento
  Left = 261
  Top = 188
  Width = 694
  Height = 523
  Caption = 'Carta Or'#231'amento'
  PixelsPerInch = 96
  TextHeight = 14
  inherited Panel1: TPanel
    Width = 686
    inherited btnVisualizar: TBitBtn
      OnClick = btnVisualizarClick
    end
    inherited btnImprimir: TBitBtn
      OnClick = btnImprimirClick
    end
    inherited btnFechar: TBitBtn
      Left = 594
    end
  end
  inherited StatusBar: TStatusBar
    Top = 466
    Width = 686
  end
  object Panel2: TPanel [2]
    Left = 0
    Top = 41
    Width = 386
    Height = 425
    Align = alClient
    TabOrder = 2
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 86
      Height = 14
      Caption = 'Todos os Clientes'
    end
    object DBGrid1: TDBGrid
      Left = 8
      Top = 91
      Width = 369
      Height = 325
      Ctl3D = False
      DataSource = dsCliente
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentCtl3D = False
      PopupMenu = PopupMenu1
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Arial'
      TitleFont.Style = []
      OnDrawColumnCell = DBGrid1DrawColumnCell
      OnDblClick = DBGrid1DblClick
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'CODIGO'
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'digo'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'RAZAO_SOCIAL'
          Title.Caption = 'Cliente'
          Width = 270
          Visible = True
        end>
    end
    object GroupBox1: TGroupBox
      Left = 8
      Top = 22
      Width = 369
      Height = 62
      Caption = '  Pesquisa  '
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 1
      object Label3: TLabel
        Left = 8
        Top = 16
        Width = 33
        Height = 14
        Caption = 'C'#243'digo'
      end
      object Label4: TLabel
        Left = 64
        Top = 16
        Width = 49
        Height = 14
        Caption = 'Descri'#231#227'o'
      end
      object edCodigo: TEdit
        Left = 8
        Top = 30
        Width = 49
        Height = 20
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        OnChange = edCodigoChange
      end
      object edDescri: TEdit
        Left = 64
        Top = 30
        Width = 295
        Height = 20
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 1
        OnChange = edDescriChange
      end
    end
  end
  object Panel3: TPanel [3]
    Left = 386
    Top = 41
    Width = 300
    Height = 425
    Align = alRight
    TabOrder = 3
    object Label2: TLabel
      Left = 8
      Top = 8
      Width = 98
      Height = 14
      Caption = 'Clientes do Relat'#243'rio'
    end
    object DBGrid2: TDBGrid
      Left = 9
      Top = 27
      Width = 281
      Height = 388
      Ctl3D = False
      DataSource = dsAdcionados
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentCtl3D = False
      PopupMenu = PopupMenu2
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Arial'
      TitleFont.Style = []
      OnKeyDown = DBGrid2KeyDown
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'CLI_CODIGO'
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'digo'
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CLI_DESCRI'
          Title.Caption = 'Cliente'
          Width = 200
          Visible = True
        end>
    end
  end
  inherited QPesquisa: TIBQuery
    Database = DM.IBDatabase1
    Transaction = DM.IBTransaction1
    SQL.Strings = (
      'SELECT'
      '  CLIENTE.CODIGO,'
      '  CLIENTE.RAZAO_SOCIAL,'
      '  CLIENTE.ENDERECO,'
      '  CLIENTE.BAIRRO,'
      '  CLIENTE.CIDADE,'
      '  CLIENTE.UF,'
      '  CLIENTE.CEP,'
      '  ESTINTOR.CODIGO AS CODIGO1,'
      '  ESTINTOR.ULTIMA_VISITA,'
      '  ESTINTOR.NUMERO_SERIE,'
      '  ESTINTOR.NIVEL_MANUTENCAO,'
      '  TIPO.TIPO ||'#39'/'#39' || ESTINTOR.CAPACIDADE AS TIPO_CAP,'
      '  TIPO.DESCRICAO,'
      '  TIPOCAP_VALOR.VR_TESTE,'
      '  TIPOCAP_VALOR.VR_RECARGA,'
      '  TIPOCAP_VALOR.TIPO_DESC,'
      '  RECARGA.PREV_SAIDA'
      'FROM'
      '  CLIENTE'
      '  INNER JOIN ESTINTOR ON (CLIENTE.CODIGO = ESTINTOR.CLIENTE)'
      
        '  INNER JOIN TIPOCAP_VALOR ON (ESTINTOR.TIPO = TIPOCAP_VALOR.TIP' +
        'O)'
      
        '                          AND (ESTINTOR.CAPACIDADE = TIPOCAP_VAL' +
        'OR.CAPACIDADE)'
      '  INNER JOIN TIPO ON (ESTINTOR.TIPO = TIPO.CODIGO)'
      'WHERE'
      '  (CLIENTE.CODIGO IS NOT NULL) AND(CLIENTE.CODIGO IN (8583))'
      'ORDER BY'
      '  CLIENTE.CODIGO')
    object QPesquisaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CLIENTE.CODIGO'
      Required = True
    end
    object QPesquisaRAZAO_SOCIAL: TIBStringField
      FieldName = 'RAZAO_SOCIAL'
      Origin = 'CLIENTE.RAZAO_SOCIAL'
      Size = 80
    end
    object QPesquisaENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Origin = 'CLIENTE.ENDERECO'
      Size = 100
    end
    object QPesquisaBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Origin = 'CLIENTE.BAIRRO'
      Size = 80
    end
    object QPesquisaCIDADE: TIBStringField
      FieldName = 'CIDADE'
      Origin = 'CLIENTE.CIDADE'
      Size = 80
    end
    object QPesquisaUF: TIBStringField
      FieldName = 'UF'
      Origin = 'CLIENTE.UF'
      FixedChar = True
      Size = 2
    end
    object QPesquisaCEP: TIBStringField
      FieldName = 'CEP'
      Origin = 'CLIENTE.CEP'
      Size = 10
    end
    object QPesquisaCODIGO1: TIntegerField
      FieldName = 'CODIGO1'
      Origin = 'ESTINTOR.CODIGO'
      Required = True
    end
    object QPesquisaULTIMA_VISITA: TIBStringField
      FieldName = 'ULTIMA_VISITA'
      Origin = 'ESTINTOR.ULTIMA_VISITA'
      Required = True
      FixedChar = True
      Size = 4
    end
    object QPesquisaNUMERO_SERIE: TIBStringField
      FieldName = 'NUMERO_SERIE'
      Origin = 'ESTINTOR.NUMERO_SERIE'
      Required = True
      Size = 22
    end
    object QPesquisaNIVEL_MANUTENCAO: TIntegerField
      FieldName = 'NIVEL_MANUTENCAO'
      Origin = 'ESTINTOR.NIVEL_MANUTENCAO'
    end
    object QPesquisaTIPO_CAP: TIBStringField
      FieldName = 'TIPO_CAP'
      Size = 22
    end
    object QPesquisaDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = 'TIPO.DESCRICAO'
      Size = 30
    end
    object QPesquisaVR_TESTE: TFloatField
      FieldName = 'VR_TESTE'
      Origin = 'TIPOCAP_VALOR.VR_TESTE'
      Required = True
      DisplayFormat = '#,##0.00'
    end
    object QPesquisaVR_RECARGA: TFloatField
      FieldName = 'VR_RECARGA'
      Origin = 'TIPOCAP_VALOR.VR_RECARGA'
      Required = True
      DisplayFormat = '#,##0.00'
    end
    object QPesquisaTIPO_DESC: TIBStringField
      FieldName = 'TIPO_DESC'
      Origin = 'TIPOCAP_VALOR.TIPO_DESC'
      Size = 10
    end
  end
  object QCliente: TIBQuery
    Database = DM.IBDatabase1
    Transaction = DM.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select '
      '  CODIGO,'
      '  RAZAO_SOCIAL'
      'from CLIENTE'
      'ORDER BY'
      '  RAZAO_SOCIAL')
    Left = 144
    Top = 217
  end
  object dspCliente: TDataSetProvider
    DataSet = QCliente
    Left = 144
    Top = 249
  end
  object cdsCliente: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCliente'
    Left = 144
    Top = 281
    object cdsClienteCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsClienteRAZAO_SOCIAL: TStringField
      FieldName = 'RAZAO_SOCIAL'
      Size = 80
    end
  end
  object dsCliente: TDataSource
    DataSet = cdsCliente
    OnDataChange = dsClienteDataChange
    Left = 144
    Top = 313
  end
  object dsAdcionados: TDataSource
    OnDataChange = dsAdcionadosDataChange
    Left = 474
    Top = 177
  end
  object PopupMenu1: TPopupMenu
    Left = 96
    Top = 305
    object AdicionarCliente1: TMenuItem
      Caption = 'Adicionar Cliente'
      OnClick = DBGrid1DblClick
    end
    object AdicionarTodos1: TMenuItem
      Caption = 'Adicionar Todos'
      OnClick = AdicionarTodos1Click
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 482
    Top = 321
    object DeletarCliente1: TMenuItem
      Caption = 'Deletar Cliente'
      OnClick = DeletarCliente1Click
    end
    object DeletarTodos1: TMenuItem
      Caption = 'Deletar Todos'
      OnClick = DeletarTodos1Click
    end
  end
end
