inherited FCadRevisao: TFCadRevisao
  Width = 700
  Height = 425
  Caption = 'Cadastro Revis'#227'o'
  PixelsPerInch = 96
  TextHeight = 14
  inherited pnControle: TPanel
    Left = 585
    Height = 372
    inherited btnFechar: TBitBtn
      Top = 320
    end
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
    end
    object BitBtn1: TBitBtn
      Left = 10
      Top = 224
      Width = 88
      Height = 25
      Caption = 'Carregar Extin.'
      TabOrder = 11
      OnClick = BitBtn1Click
    end
  end
  inherited BarraDeStatus: TStatusBar
    Top = 372
    Width = 692
  end
  inherited PageControl: TPageControl
    Width = 585
    Height = 372
    inherited tabPesquisa: TTabSheet
      inherited dbgCadastro: TDBGrid
        Top = 120
        Width = 569
        Height = 217
        DataSource = dsPesquisa
        TitleFont.Style = [fsBold]
      end
      inherited GroupBox1: TGroupBox
        Width = 569
        Height = 105
        object Label14: TLabel [0]
          Left = 61
          Top = 16
          Width = 39
          Height = 14
          Caption = 'Cliente'
        end
        object Label8: TLabel [1]
          Left = 5
          Top = 16
          Width = 39
          Height = 14
          Caption = 'C'#243'digo'
        end
        object Label9: TLabel [2]
          Left = 97
          Top = 56
          Width = 42
          Height = 14
          Caption = 'Revisor'
        end
        object Label10: TLabel [3]
          Left = 5
          Top = 56
          Width = 23
          Height = 14
          Caption = 'Data'
        end
        inherited edPesquisa: TComboEdit
          Top = -20
          TabOrder = 4
          Visible = False
        end
        object dblPesquisaCliente: TDBLookupComboBox
          Left = 59
          Top = 32
          Width = 270
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
        object edPesquisaCodigo: TEdit
          Left = 5
          Top = 32
          Width = 44
          Height = 20
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object edPesquisaRevisor: TEdit
          Left = 97
          Top = 72
          Width = 152
          Height = 20
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object edPesquisaData: TDateEdit
          Left = 5
          Top = 72
          Width = 84
          Height = 20
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          NumGlyphs = 2
          ParentFont = False
          TabOrder = 3
        end
        object btnPesquisa: TBitBtn
          Left = 406
          Top = 72
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
      end
    end
    inherited tabCadastro: TTabSheet
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 577
        Height = 105
        Align = alTop
        TabOrder = 0
        object Label1: TLabel
          Left = 8
          Top = 7
          Width = 33
          Height = 14
          Caption = 'C'#243'digo'
        end
        object DBText1: TDBText
          Left = 8
          Top = 23
          Width = 47
          Height = 17
          DataField = 'REV_CODIGO'
          DataSource = dsCadastro
        end
        object Label2: TLabel
          Left = 64
          Top = 7
          Width = 32
          Height = 14
          Caption = 'Cliente'
        end
        object Label3: TLabel
          Left = 64
          Top = 47
          Width = 22
          Height = 14
          Caption = 'Data'
        end
        object Label4: TLabel
          Left = 163
          Top = 47
          Width = 37
          Height = 14
          Caption = 'Revisor'
        end
        object dblCliente: TDBLookupComboBox
          Left = 64
          Top = 23
          Width = 329
          Height = 22
          DataField = 'CLI_CODIGO'
          DataSource = dsCadastro
          KeyField = 'CODIGO'
          ListField = 'DESCRICAO'
          ListSource = dsCliente
          TabOrder = 0
          OnKeyDown = dblClienteKeyDown
        end
        object edData: TDBDateEdit
          Left = 64
          Top = 63
          Width = 97
          Height = 21
          DataField = 'REV_DATA'
          DataSource = dsCadastro
          NumGlyphs = 2
          TabOrder = 1
          OnExit = edDataExit
        end
        object DBEdit1: TDBEdit
          Left = 163
          Top = 63
          Width = 217
          Height = 22
          CharCase = ecUpperCase
          DataField = 'REV_REVISOR'
          DataSource = dsCadastro
          TabOrder = 2
        end
      end
      object Panel4: TPanel
        Left = 0
        Top = 105
        Width = 577
        Height = 235
        Align = alClient
        TabOrder = 1
        object DBGrid1: TDBGrid
          Left = 1
          Top = 1
          Width = 575
          Height = 233
          Align = alClient
          Ctl3D = False
          DataSource = dsItens
          Options = [dgTitles, dgIndicator, dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          ParentCtl3D = False
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Arial'
          TitleFont.Style = []
          OnDblClick = DBGrid1DblClick
          Columns = <
            item
              Expanded = False
              FieldName = 'ORDEM'
              Title.Caption = 'N'#186
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
              FieldName = 'CODIGO'
              Title.Caption = 'C'#243'd.'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Arial'
              Title.Font.Style = [fsBold]
              Width = 40
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TIPOCAP'
              Title.Caption = 'Tipo/Cap'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Arial'
              Title.Font.Style = [fsBold]
              Width = 55
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NUMERO_SERIE'
              Title.Caption = 'N'#186' S'#233'rie'
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
              FieldName = 'LOCAL_EXTINTOR'
              Title.Caption = 'Local'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Arial'
              Title.Font.Style = [fsBold]
              Width = 190
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
              Width = 75
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PROXIMO_TESTE'
              Title.Caption = 'Teste'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Arial'
              Title.Font.Style = [fsBold]
              Width = 40
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CARREGADO'
              Title.Caption = 'Carregado'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Arial'
              Title.Font.Style = [fsBold]
              Width = 90
              Visible = True
            end>
        end
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'Itens'
      ImageIndex = 2
      OnShow = TabSheet1Show
      object Label6: TLabel
        Left = 72
        Top = 0
        Width = 26
        Height = 14
        Caption = 'Local'
      end
      object Label7: TLabel
        Left = 0
        Top = 63
        Width = 102
        Height = 14
        Caption = 'Situa'#231#245'es do Extintor'
      end
      object Label5: TLabel
        Left = 0
        Top = 0
        Width = 61
        Height = 14
        Caption = 'Cod. Extintor'
      end
      object Label11: TLabel
        Left = 408
        Top = 0
        Width = 12
        Height = 14
        Caption = 'N'#186
      end
      object Label12: TLabel
        Left = 480
        Top = 0
        Width = 51
        Height = 14
        Caption = 'Carregado'
      end
      object Panel1: TPanel
        Left = 0
        Top = 299
        Width = 577
        Height = 41
        Align = alBottom
        TabOrder = 5
        object btnItensNovo: TBitBtn
          Left = 4
          Top = 8
          Width = 60
          Height = 25
          Caption = '&Novo'
          TabOrder = 0
          OnClick = btnItensNovoClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
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
        object btnItensAlterar: TBitBtn
          Left = 68
          Top = 8
          Width = 60
          Height = 25
          Caption = '&Alterar'
          TabOrder = 1
          OnClick = btnItensAlterarClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
            000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
            00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
            F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
            0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
            FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
            FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
            0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
            00333377737FFFFF773333303300000003333337337777777333}
          NumGlyphs = 2
        end
        object btnItensGravar: TBitBtn
          Left = 132
          Top = 8
          Width = 60
          Height = 25
          Caption = '&Gravar'
          TabOrder = 2
          OnClick = btnItensGravarClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            333333FFFFFFFFFFFFF33000077777770033377777777777773F000007888888
            00037F3337F3FF37F37F00000780088800037F3337F77F37F37F000007800888
            00037F3337F77FF7F37F00000788888800037F3337777777337F000000000000
            00037F3FFFFFFFFFFF7F00000000000000037F77777777777F7F000FFFFFFFFF
            00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
            00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
            00037F7F333333337F7F000FFFFFFFFF07037F7F33333333777F000FFFFFFFFF
            0003737FFFFFFFFF7F7330099999999900333777777777777733}
          NumGlyphs = 2
        end
        object btnItensCancelar: TBitBtn
          Left = 196
          Top = 8
          Width = 64
          Height = 25
          Caption = 'Cance&lar'
          TabOrder = 3
          OnClick = btnItensCancelarClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
            3333333777333777FF3333993333339993333377FF3333377FF3399993333339
            993337777FF3333377F3393999333333993337F777FF333337FF993399933333
            399377F3777FF333377F993339993333399377F33777FF33377F993333999333
            399377F333777FF3377F993333399933399377F3333777FF377F993333339993
            399377FF3333777FF7733993333339993933373FF3333777F7F3399933333399
            99333773FF3333777733339993333339933333773FFFFFF77333333999999999
            3333333777333777333333333999993333333333377777333333}
          NumGlyphs = 2
        end
        object btnItensExcluir: TBitBtn
          Left = 264
          Top = 8
          Width = 62
          Height = 25
          Caption = '&Excluir'
          TabOrder = 4
          OnClick = btnItensExcluirClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333000000000
            3333333777777777F3333330F77777703333333733F3F3F73F33330FF0808077
            0333337F37F7F7F37F33330FF0807077033333733737F73F73F330FF77808707
            703337F37F37F37F37F330FF08807807703037F37F37F37F37F700FF08808707
            700377F37337F37F377330FF778078077033373F73F7F3733733330FF0808077
            0333337F37F7F7F37F33330FF08070770333337FF7F7F7FF7F33330000000000
            03333377777777777F33330F888777770333337FFFFFFFFF7F33330000000000
            033333777777777773333333307770333333333337FFF7F33333333330000033
            3333333337777733333333333333333333333333333333333333}
          NumGlyphs = 2
        end
        object dbnItens: TDBNavigator
          Left = 329
          Top = 8
          Width = 88
          Height = 25
          DataSource = dsItensRevisao
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          Flat = True
          TabOrder = 5
        end
      end
      object edLocalExtintor: TDBEdit
        Left = 72
        Top = 16
        Width = 331
        Height = 22
        CharCase = ecUpperCase
        DataField = 'LOCAL_EXTINTOR'
        DataSource = dsItensRevisao
        TabOrder = 1
      end
      object Panel2: TPanel
        Left = 0
        Top = 40
        Width = 576
        Height = 23
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
      end
      object clbSituacoes: TCheckListBox
        Left = 0
        Top = 78
        Width = 575
        Height = 83
        Columns = 3
        Ctl3D = False
        ItemHeight = 14
        ParentCtl3D = False
        TabOrder = 4
        OnClick = clbSituacoesClick
      end
      object edNOrdem: TDBEdit
        Left = 408
        Top = 16
        Width = 67
        Height = 22
        DataField = 'ORDEM'
        DataSource = dsItensRevisao
        TabOrder = 2
      end
      object edCarregado: TDBDateEdit
        Left = 480
        Top = 16
        Width = 97
        Height = 21
        DataField = 'CARREGADO'
        DataSource = dsItensRevisao
        NumGlyphs = 2
        TabOrder = 3
      end
      object edCodExtintor: TDBEdit
        Left = 0
        Top = 16
        Width = 67
        Height = 22
        DataField = 'EXT_CODIGO'
        DataSource = dsItensRevisao
        ReadOnly = True
        TabOrder = 0
      end
    end
  end
  inherited qaux: TIBQuery
    Database = DM.IBDatabase1
    Transaction = DM.IBTransaction1
    Left = 276
  end
  inherited cdsCadastro: TIBTable
    Database = DM.IBDatabase1
    Transaction = DM.IBTransaction1
    FieldDefs = <
      item
        Name = 'REV_CODIGO'
        DataType = ftInteger
      end
      item
        Name = 'REV_REVISOR'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'REV_DATA'
        DataType = ftDateTime
      end
      item
        Name = 'CLI_CODIGO'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY22'
        Fields = 'REV_CODIGO'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'FK_REVISAO'
        Fields = 'CLI_CODIGO'
      end>
    StoreDefs = True
    TableName = 'REVISAO'
    Left = 372
    object cdsCadastroREV_CODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'REV_CODIGO'
      Required = True
    end
    object cdsCadastroREV_REVISOR: TIBStringField
      DisplayLabel = 'Revisor'
      FieldName = 'REV_REVISOR'
    end
    object cdsCadastroREV_DATA: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'REV_DATA'
    end
    object cdsCadastroCLI_CODIGO: TIntegerField
      DisplayLabel = 'Cliente'
      FieldName = 'CLI_CODIGO'
      Required = True
    end
  end
  object dsCliente: TDataSource
    AutoEdit = False
    DataSet = DMPesquisa.QClientesComExtintor
    Left = 340
    Top = 148
  end
  object tbItensRevisao: TIBTable
    Database = DM.IBDatabase1
    Transaction = DM.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'EXT_CODIGO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'REV_CODIGO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'LOCAL_EXTINTOR'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'ORDEM'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'CARREGADO'
        DataType = ftDateTime
      end>
    IndexDefs = <
      item
        Name = 'PK_ITENS_REVISAO'
        Fields = 'EXT_CODIGO;REV_CODIGO'
        Options = [ixUnique]
      end>
    IndexFieldNames = 'REV_CODIGO'
    MasterFields = 'REV_CODIGO'
    MasterSource = dsCadastro
    StoreDefs = True
    TableName = 'ITENS_REVISAO'
    Left = 372
    Top = 116
  end
  object dsItensRevisao: TDataSource
    AutoEdit = False
    DataSet = tbItensRevisao
    OnStateChange = dsItensRevisaoStateChange
    OnDataChange = dsItensRevisaoDataChange
    Left = 340
    Top = 116
  end
  object qPesquisa: TIBQuery
    Database = DM.IBDatabase1
    Transaction = DM.IBTransaction1
    AfterPost = qauxAfterPost
    BufferChunks = 1000
    CachedUpdates = False
    Left = 276
    Top = 148
  end
  object dsPesquisa: TDataSource
    DataSet = qPesquisa
    Left = 276
    Top = 188
  end
  object qExtintorCliente: TIBQuery
    Database = DM.IBDatabase1
    Transaction = DM.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    Left = 372
    Top = 87
  end
  object dsExtintorCliente: TDataSource
    DataSet = qExtintorCliente
    Left = 340
    Top = 87
  end
  object dsItens: TDataSource
    DataSet = qItens
    Left = 340
    Top = 231
  end
  object qItens: TIBQuery
    Database = DM.IBDatabase1
    Transaction = DM.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT'
      '  ESTINTOR.CODIGO,'
      '  ITENS_REVISAO.ORDEM,'
      '  ITENS_REVISAO.LOCAL_EXTINTOR,'
      '  TIPO.TIPO  || '#39'-'#39' || ESTINTOR.CAPACIDADE AS TIPOCAP,'
      '  FABRICANTE.DESCRICAO AS FABRICANTE,'
      '  ESTINTOR.NUMERO_SERIE,'
      '  CAST(ESTINTOR.ULTIMA_VISITA AS INTEGER) + 5 AS PROXIMO_TESTE,'
      '  ESTINTOR.CARREGADO'
      'FROM'
      '  ITENS_REVISAO'
      
        '  INNER JOIN ESTINTOR   ON (ESTINTOR.CODIGO = ITENS_REVISAO.EXT_' +
        'CODIGO)'
      
        '  INNER JOIN FABRICANTE ON (ESTINTOR.FABRICANTE = FABRICANTE.COD' +
        'IGO)'
      '  INNER JOIN TIPO       ON (ESTINTOR.TIPO = TIPO.CODIGO)')
    Left = 372
    Top = 231
  end
end
