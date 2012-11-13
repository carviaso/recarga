object DMRgs: TDMRgs
  OldCreateOrder = False
  Left = 195
  Top = 110
  Height = 150
  Width = 215
  object SQLItensRecarga: TIBQuery
    Database = DM.IBDatabase1
    Transaction = DM.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = True
    SQL.Strings = (
      'SELECT'
      '  ITENS_RECARGA.CODIGO,'
      '  ITENS_RECARGA.CAPACIDADE,'
      '  ITENS_RECARGA.FABRICANTE,'
      '  ITENS_RECARGA.ANO_FABRICACAO,'
      '  ITENS_RECARGA.ULTIMA_VISITA,'
      '  ITENS_RECARGA.NUMERO_SERIE,'
      '  ITENS_RECARGA.NIVEL_MANUTENCAO,'
      '  ITENS_RECARGA.PINTURA,'
      '  ITENS_RECARGA.SELO,'
      '  ITENS_RECARGA.BATELADA,'
      '  ITENS_RECARGA.OBS,'
      '  ITENS_RECARGA.FECHAMENTO,'
      '  ITENS_RECARGA.TIPO,'
      '  ITENS_RECARGA.PESO_VAZIO,'
      '  ITENS_RECARGA.PESO_CHEIO,'
      '  ITENS_RECARGA.TARA,'
      '  ITENS_RECARGA.ET,'
      '  ITENS_RECARGA.EP,'
      '  ITENS_RECARGA.CLIENTE,'
      '  ITENS_RECARGA.NUMERO_PROJETO,'
      '  ITENS_RECARGA.NUMERO_LACRE,'
      '  ITENS_RECARGA.PRESSAO_TRABALHO,'
      '  ITENS_RECARGA.RS_PERDA,'
      '  ITENS_RECARGA.RS_EP_ET,'
      '  ITENS_RECARGA.RS,'
      '  ITENS_RECARGA.DATA_TESTE,'
      '  ITENS_RECARGA.PRESSAO_TESTE,'
      '  ITENS_RECARGA.MOTIVO,'
      '  ITENS_RECARGA.PESO_VAZIO_CO2,'
      '  ITENS_RECARGA.NORMA_CO2,'
      '  ITENS_RECARGA.LITROS_CO2,'
      '  ITENS_RECARGA.PESO_CHEIO_CO2,'
      '  ITENS_RECARGA.RGS,'
      '  ITENS_RECARGA.LOCAL'
      'FROM'
      '  ITENS_RECARGA')
    Left = 24
    Top = 40
  end
  object IBDataSet1: TIBDataSet
    Database = DM.IBDatabase1
    Transaction = DM.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = True
    SelectSQL.Strings = (
      'SELECT'
      '  ITENS_RECARGA.CODIGO,'
      '  ITENS_RECARGA.CAPACIDADE,'
      '  ITENS_RECARGA.FABRICANTE,'
      '  ITENS_RECARGA.ANO_FABRICACAO,'
      '  ITENS_RECARGA.ULTIMA_VISITA,'
      '  ITENS_RECARGA.NUMERO_SERIE,'
      '  ITENS_RECARGA.NIVEL_MANUTENCAO,'
      '  ITENS_RECARGA.PINTURA,'
      '  ITENS_RECARGA.SELO,'
      '  ITENS_RECARGA.BATELADA,'
      '  ITENS_RECARGA.OBS,'
      '  ITENS_RECARGA.FECHAMENTO,'
      '  ITENS_RECARGA.TIPO,'
      '  ITENS_RECARGA.PESO_VAZIO,'
      '  ITENS_RECARGA.PESO_CHEIO,'
      '  ITENS_RECARGA.TARA,'
      '  ITENS_RECARGA.ET,'
      '  ITENS_RECARGA.EP,'
      '  ITENS_RECARGA.CLIENTE,'
      '  ITENS_RECARGA.NUMERO_PROJETO,'
      '  ITENS_RECARGA.NUMERO_LACRE,'
      '  ITENS_RECARGA.PRESSAO_TRABALHO,'
      '  ITENS_RECARGA.RS_PERDA,'
      '  ITENS_RECARGA.RS_EP_ET,'
      '  ITENS_RECARGA.RS,'
      '  ITENS_RECARGA.DATA_TESTE,'
      '  ITENS_RECARGA.PRESSAO_TESTE,'
      '  ITENS_RECARGA.MOTIVO,'
      '  ITENS_RECARGA.PESO_VAZIO_CO2,'
      '  ITENS_RECARGA.NORMA_CO2,'
      '  ITENS_RECARGA.LITROS_CO2,'
      '  ITENS_RECARGA.PESO_CHEIO_CO2,'
      '  ITENS_RECARGA.LOCAL'
      'FROM'
      '  ITENS_RECARGA')
    Left = 144
    Top = 32
  end
end
