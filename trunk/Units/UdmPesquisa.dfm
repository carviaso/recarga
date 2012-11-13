object DMPesquisa: TDMPesquisa
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 236
  Top = 270
  Height = 289
  Width = 722
  object cdsUsuario: TIBTable
    Database = DM.IBDatabase1
    Transaction = DM.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'CODIGO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'NOME'
        Attributes = [faRequired]
        DataType = ftString
        Size = 60
      end
      item
        Name = 'COD_GRUPO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'SENHA'
        DataType = ftString
        Size = 120
      end
      item
        Name = 'USUARIO_MASTER'
        Attributes = [faRequired]
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'PK_USUARIO'
        Fields = 'CODIGO'
        Options = [ixUnique]
      end
      item
        Name = 'FK_USUARIO'
        Fields = 'COD_GRUPO'
      end>
    StoreDefs = True
    TableName = 'USUARIO'
    Left = 632
    Top = 160
  end
  object cdsAcesso: TIBTable
    Database = DM.IBDatabase1
    Transaction = DM.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'COD_GRUPO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'MENU_NOME'
        Attributes = [faRequired]
        DataType = ftString
        Size = 100
      end>
    IndexDefs = <
      item
        Name = 'PK_ACESSO'
        Fields = 'COD_GRUPO;MENU_NOME'
        Options = [ixUnique]
      end
      item
        Name = 'RDB$FOREIGN27'
        Fields = 'COD_GRUPO'
      end>
    StoreDefs = True
    TableName = 'ACESSO'
    Left = 576
    Top = 160
  end
  object cdsGrupo: TIBTable
    Database = DM.IBDatabase1
    Transaction = DM.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'CODIGO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'DESCRICAO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'OBS'
        DataType = ftString
        Size = 250
      end>
    IndexDefs = <
      item
        Name = 'PK_GRUPO_ACESSO'
        Fields = 'CODIGO'
        Options = [ixUnique]
      end>
    StoreDefs = True
    TableName = 'GRUPO_ACESSO'
    Left = 520
    Top = 160
  end
  object cdsCliente: TIBTable
    Database = DM.IBDatabase1
    Transaction = DM.IBTransaction1
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'CODIGO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'RAZAO_SOCIAL'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'ENDERECO'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'BAIRRO'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'CIDADE'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'UF'
        Attributes = [faFixed]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'CEP'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'TELEFONE'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'TLX'
        DataType = ftString
        Size = 13
      end
      item
        Name = 'CNPJ'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'INSC_ESTADUAL'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'INSC_SUB'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'DIRETOR'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'STATUS'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'DATA'
        DataType = ftDateTime
      end
      item
        Name = 'TABELA'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'VENDEDOR'
        DataType = ftInteger
      end
      item
        Name = 'UDATA'
        DataType = ftDateTime
      end
      item
        Name = 'UNF'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'UVALOR'
        DataType = ftFloat
      end
      item
        Name = 'TIPO'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'TRASPORTADORA'
        DataType = ftInteger
      end
      item
        Name = 'FRETE'
        DataType = ftFloat
      end
      item
        Name = 'VALOR'
        DataType = ftFloat
      end
      item
        Name = 'PESO'
        DataType = ftFloat
      end
      item
        Name = 'OBSERVACAO'
        DataType = ftString
        Size = 250
      end
      item
        Name = 'ENTREGA'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'END_COBRANCA'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'CIDADE_COBRACA'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'UF_COBRANCA'
        Attributes = [faFixed]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'CEP_COBRANCA'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'COMICAO'
        DataType = ftFloat
      end
      item
        Name = 'CREDITO'
        DataType = ftFloat
      end
      item
        Name = 'TELEFONE_1'
        DataType = ftString
        Size = 13
      end
      item
        Name = 'TELEFONE_2'
        DataType = ftString
        Size = 13
      end
      item
        Name = 'CONTATO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'EMAIL'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'FANTAZIA'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'EXIBIR_EM_GNV'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'ULTIMA_CONDPAGTO'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'ULTIMO_PRAZOENTREGA'
        DataType = ftInteger
      end
      item
        Name = 'ULTIMO_VALIDADE'
        DataType = ftInteger
      end
      item
        Name = 'CLI_AREA'
        DataType = ftFloat
      end
      item
        Name = 'REPRESENTATE'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'REP_TELEFONE'
        DataType = ftString
        Size = 13
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY1'
        Fields = 'CODIGO'
        Options = [ixPrimary, ixUnique]
      end>
    IndexFieldNames = 'RAZAO_SOCIAL'
    StoreDefs = True
    TableName = 'CLIENTE'
    Left = 208
    Top = 160
  end
  object cdsPressao: TIBTable
    Database = DM.IBDatabase1
    Transaction = DM.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'CODIGO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'PT'
        DataType = ftFloat
      end
      item
        Name = 'PE'
        DataType = ftFloat
      end
      item
        Name = 'AB'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY6'
        Fields = 'CODIGO'
        Options = [ixPrimary, ixUnique]
      end>
    StoreDefs = True
    TableName = 'PRESSAO'
    Left = 272
    Top = 160
  end
  object cdsUnidade: TIBTable
    Database = DM.IBDatabase1
    Transaction = DM.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'CODIGO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'EMB'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'DESCRICAO'
        DataType = ftString
        Size = 30
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY5'
        Fields = 'CODIGO'
        Options = [ixPrimary, ixUnique]
      end>
    StoreDefs = True
    TableName = 'UNIDADE'
    Left = 336
    Top = 160
  end
  object cdsEstintor: TIBTable
    Database = DM.IBDatabase1
    Transaction = DM.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'CODIGO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'CAPACIDADE'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'FABRICANTE'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'ANO_FABRICACAO'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 4
      end
      item
        Name = 'ULTIMA_VISITA'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 4
      end
      item
        Name = 'NUMERO_SERIE'
        Attributes = [faRequired]
        DataType = ftString
        Size = 22
      end
      item
        Name = 'NIVEL_MANUTENCAO'
        DataType = ftInteger
      end
      item
        Name = 'PINTURA'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'SELO'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'BATELADA'
        DataType = ftInteger
      end
      item
        Name = 'OBS'
        DataType = ftString
        Size = 250
      end
      item
        Name = 'FECHAMENTO'
        DataType = ftDateTime
      end
      item
        Name = 'TIPO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'PESO_VAZIO'
        DataType = ftFloat
      end
      item
        Name = 'PESO_CHEIO'
        DataType = ftFloat
      end
      item
        Name = 'TARA'
        DataType = ftFloat
      end
      item
        Name = 'ET'
        DataType = ftFloat
      end
      item
        Name = 'EP'
        DataType = ftFloat
      end
      item
        Name = 'CLIENTE'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'NUMERO_PROJETO'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'NUMERO_LACRE'
        DataType = ftInteger
      end
      item
        Name = 'PRESSAO_TRABALHO'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'RS_PERDA'
        DataType = ftFloat
      end
      item
        Name = 'RS_EP_ET'
        DataType = ftFloat
      end
      item
        Name = 'RS'
        Attributes = [faFixed]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'DATA_TESTE'
        DataType = ftDateTime
      end
      item
        Name = 'PRESSAO_TESTE'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'MOTIVO'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'PESO_VAZIO_CO2'
        DataType = ftFloat
      end
      item
        Name = 'NORMA_CO2'
        DataType = ftInteger
      end
      item
        Name = 'LITROS_CO2'
        DataType = ftFloat
      end
      item
        Name = 'PESO_CHEIO_CO2'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY2'
        Fields = 'CODIGO'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'FK_ESTINTOR2'
        Fields = 'CLIENTE'
      end
      item
        Name = 'RDB$FOREIGN19'
        Fields = 'FABRICANTE'
      end
      item
        Name = 'RDB$FOREIGN20'
        Fields = 'TIPO'
      end>
    IndexFieldNames = 'CODIGO'
    StoreDefs = True
    TableName = 'ESTINTOR'
    Left = 400
    Top = 160
  end
  object cdsRecarga: TIBTable
    Database = DM.IBDatabase1
    Transaction = DM.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'RGS'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'ENTRADA'
        DataType = ftDateTime
      end
      item
        Name = 'PREV_SAIDA'
        DataType = ftDateTime
      end
      item
        Name = 'MATERIAL'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'SERVICO'
        DataType = ftInteger
      end
      item
        Name = 'CLIENTE'
        DataType = ftInteger
      end
      item
        Name = 'CODIGO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'SAIDA'
        DataType = ftDateTime
      end
      item
        Name = 'SITUACAO'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'N_CAIXA'
        DataType = ftString
        Size = 12
      end
      item
        Name = 'COD_REPRESENTANTE'
        DataType = ftString
        Size = 6
      end>
    IndexDefs = <
      item
        Name = 'PK_RECARGA'
        Fields = 'CODIGO'
        Options = [ixUnique]
      end
      item
        Name = 'PK_RECARGA1'
        Fields = 'RGS'
        Options = [ixUnique]
      end>
    StoreDefs = True
    TableName = 'RECARGA'
    Left = 464
    Top = 160
  end
  object cdsTipo: TIBTable
    Database = DM.IBDatabase1
    Transaction = DM.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'CODIGO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'TIPO'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'DESCRICAO'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'ALTA_PRESSAO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'NBR'
        DataType = ftInteger
      end
      item
        Name = 'CO2'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 1
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY4'
        Fields = 'CODIGO'
        Options = [ixPrimary, ixUnique]
      end>
    IndexFieldNames = 'DESCRICAO'
    StoreDefs = True
    TableName = 'TIPO'
    Left = 80
    Top = 160
  end
  object cdsFabricante: TIBTable
    Database = DM.IBDatabase1
    Transaction = DM.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'CODIGO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'DESCRICAO'
        DataType = ftString
        Size = 30
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY3'
        Fields = 'CODIGO'
        Options = [ixPrimary, ixUnique]
      end>
    IndexFieldNames = 'DESCRICAO'
    StoreDefs = True
    TableName = 'FABRICANTE'
    Left = 144
    Top = 160
  end
  object cdsMotivo: TIBTable
    Database = DM.IBDatabase1
    Transaction = DM.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'MOTIVO'
        Attributes = [faRequired]
        DataType = ftString
        Size = 250
      end>
    IndexDefs = <
      item
        Name = 'PK_MOTIVO'
        Fields = 'MOTIVO'
        Options = [ixUnique]
      end>
    IndexFieldNames = 'MOTIVO'
    StoreDefs = True
    TableName = 'MOTIVO'
    Left = 24
    Top = 160
  end
  object cdsEmpresa: TIBTable
    Database = DM.IBDatabase1
    Transaction = DM.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
      end
      item
        Name = 'RAZAO_SOCIAL'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'FANTASIA'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'CNPJ'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'ENDERECO'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'BAIRRO'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'UF'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'CEP'
        DataType = ftString
        Size = 9
      end
      item
        Name = 'CIDADE'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'FONE'
        DataType = ftString
        Size = 13
      end
      item
        Name = 'FAX'
        DataType = ftString
        Size = 13
      end
      item
        Name = 'EMAIL'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'NRGS'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'SENHA_MASTER'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'RESP_TECNICO'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'RESP_CONTROLE_QULIDADE'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'REG_CREA'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'LOCAL_BACKUP'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'LOCAL_BANCO'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'SERVER_NAME'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'NRELATORIOGNV'
        DataType = ftInteger
      end
      item
        Name = 'ASSINAR_DIGITALMENTE'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'LOCAL_ASINATURA'
        DataType = ftString
        Size = 150
      end
      item
        Name = 'DATA_BACKUP'
        DataType = ftDateTime
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY21'
        Fields = 'CODIGO'
        Options = [ixPrimary, ixUnique]
      end>
    StoreDefs = True
    TableName = 'EMPRESA'
    Left = 24
    Top = 88
  end
  object cdsPecas: TIBTable
    Database = DM.IBDatabase1
    Transaction = DM.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'CODIGO_PECAS'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'DESCRICAO'
        Attributes = [faRequired]
        DataType = ftString
        Size = 62
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY8'
        Fields = 'CODIGO_PECAS'
        Options = [ixPrimary, ixUnique]
      end>
    StoreDefs = True
    TableName = 'PECAS'
    Left = 80
    Top = 88
  end
  object QClientesComExtintor: TIBQuery
    Database = DM.IBDatabase1
    Transaction = DM.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT DISTINCT'
      
        '  (CAST(CLIENTE.CODIGO AS VARCHAR(10)) || '#39' - '#39' ||CLIENTE.RAZAO_' +
        'SOCIAL) AS DESCRICAO,'
      '  CLIENTE.CODIGO,'
      '  CLIENTE.RAZAO_SOCIAL,'
      '  CLIENTE.ENDERECO,'
      '  CLIENTE.BAIRRO,'
      '  CLIENTE.CIDADE,'
      '  CLIENTE.UF,'
      '  CLIENTE.CEP,'
      '  CLIENTE.TELEFONE,'
      '  CLIENTE.CNPJ,'
      '  CLIENTE.INSC_ESTADUAL,'
      '  CLIENTE.INSC_SUB,'
      '  CLIENTE.DATA,'
      '  CLIENTE.TIPO,'
      '  CLIENTE.ENTREGA,'
      '  CLIENTE.TELEFONE_1,'
      '  CLIENTE.TELEFONE_2,'
      '  CLIENTE.CONTATO,'
      '  CLIENTE.EMAIL,'
      '  CLIENTE.FANTAZIA'
      'FROM'
      '  CLIENTE'
      '  INNER JOIN ESTINTOR ON (ESTINTOR.CLIENTE = CLIENTE.CODIGO)'
      'ORDER BY'
      '  CLIENTE.RAZAO_SOCIAL')
    Left = 144
    Top = 88
  end
  object QCliente: TIBQuery
    Database = DM.IBDatabase1
    Transaction = DM.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT DISTINCT'
      
        '  (CAST(CLIENTE.CODIGO AS VARCHAR(10)) || '#39' - '#39' ||CLIENTE.RAZAO_' +
        'SOCIAL) AS DESCRICAO,'
      '  CLIENTE.*'
      'FROM'
      'CLIENTE'
      'ORDER BY'
      '  CLIENTE.RAZAO_SOCIAL')
    Left = 208
    Top = 88
  end
  object QTipoRelCilindro: TIBQuery
    Database = DM.IBDatabase1
    Transaction = DM.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT '
      '*'
      'FROM'
      '  TIPO_REL_CILINDRO'
      'WHERE'
      '  ATIVO = '#39'S'#39
      'ORDER BY'
      '  TIPO_REL_CILINDRO.DESCRICAO')
    Left = 272
    Top = 88
  end
  object QClienteGNV: TIBQuery
    Database = DM.IBDatabase1
    Transaction = DM.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT DISTINCT'
      
        '  (CAST(CLIENTE.CODIGO AS VARCHAR(10)) || '#39' - '#39' ||CLIENTE.RAZAO_' +
        'SOCIAL) AS DESCRICAO,'
      '  CLIENTE.RAZAO_SOCIAL,'
      
        '  CLIENTE.ENDERECO || '#39' - '#39' || CLIENTE.BAIRRO || '#39'  '#39' || CLIENTE' +
        '.CIDADE || '#39'-'#39' || CLIENTE.UF AS ENDERECO,'
      '  CLIENTE.CODIGO,'
      '  CLIENTE.TELEFONE_1 AS FONE,'
      '  CLIENTE.CNPJ AS CPF_CNPJ'
      'FROM'
      'CLIENTE'
      '  WHERE'
      '    (EXIBIR_EM_GNV = '#39'S'#39')'
      'ORDER BY'
      '  CLIENTE.RAZAO_SOCIAL')
    Left = 344
    Top = 88
  end
  object QServico: TIBTable
    Database = DM.IBDatabase1
    Transaction = DM.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'PROD_CODIGO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'PROD_DESC'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'PROD_FABRICANTE'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'PROD_CODBARRA'
        DataType = ftString
        Size = 29
      end
      item
        Name = 'PROD_REF'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'PROD_VRCOMPRA'
        DataType = ftFloat
      end
      item
        Name = 'PROD_VRVENDA'
        DataType = ftFloat
      end
      item
        Name = 'PROD_TIPO'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end>
    Filter = 'PROD_TIPO = '#39'S'#39
    Filtered = True
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY42'
        Fields = 'PROD_CODIGO'
        Options = [ixPrimary, ixUnique]
      end>
    IndexFieldNames = 'PROD_DESC'
    StoreDefs = True
    TableName = 'PRODUTO'
    Left = 424
    Top = 88
  end
  object QMercadoria: TIBTable
    Database = DM.IBDatabase1
    Transaction = DM.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'PROD_CODIGO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'PROD_DESC'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'PROD_FABRICANTE'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'PROD_CODBARRA'
        DataType = ftString
        Size = 29
      end
      item
        Name = 'PROD_REF'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'PROD_VRCOMPRA'
        DataType = ftFloat
      end
      item
        Name = 'PROD_VRVENDA'
        DataType = ftFloat
      end
      item
        Name = 'PROD_TIPO'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end>
    Filter = 'PROD_TIPO = '#39'M'#39
    Filtered = True
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY42'
        Fields = 'PROD_CODIGO'
        Options = [ixPrimary, ixUnique]
      end>
    IndexFieldNames = 'PROD_DESC'
    StoreDefs = True
    TableName = 'PRODUTO'
    Left = 488
    Top = 88
  end
end
