object FpesquisaRelGeraldeServico: TFpesquisaRelGeraldeServico
  Left = 242
  Top = 229
  Width = 555
  Height = 369
  BorderStyle = bsSizeToolWin
  Caption = 'Pesquisa Relat'#243'rio Geral de Servi'#231'o'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 44
    Height = 13
    Caption = 'Cliente:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 56
    Width = 31
    Height = 13
    Caption = 'RGS:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 96
    Top = 56
    Width = 95
    Height = 13
    Caption = 'N'#186' S'#233'rie Extintor'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 200
    Top = 56
    Width = 40
    Height = 13
    Caption = 'C'#243'digo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 429
    Top = 0
    Width = 118
    Height = 312
    Align = alRight
    TabOrder = 4
    object BitBtn1: TBitBtn
      Left = 16
      Top = 8
      Width = 91
      Height = 25
      Caption = 'Consulta'
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 16
      Top = 40
      Width = 91
      Height = 25
      Caption = '&Imprimir'
      TabOrder = 1
      OnClick = BitBtn2Click
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
    object BitBtn3: TBitBtn
      Left = 16
      Top = 280
      Width = 91
      Height = 25
      Caption = '&Fechar'
      TabOrder = 2
      Kind = bkClose
    end
    object rbEtiqueta: TRadioButton
      Left = 5
      Top = 104
      Width = 110
      Height = 17
      Caption = 'Etiquetas'
      TabOrder = 4
    end
    object rbListagem: TRadioButton
      Left = 5
      Top = 88
      Width = 110
      Height = 17
      Caption = 'Listagem'
      TabOrder = 3
    end
    object rbEtiquetaResum: TRadioButton
      Left = 5
      Top = 120
      Width = 110
      Height = 17
      Caption = 'Etiquetas Resum.'
      TabOrder = 5
    end
    object RadioButton1: TRadioButton
      Left = 5
      Top = 136
      Width = 110
      Height = 17
      Caption = 'Etiq. C/Cod.Barras'
      Checked = True
      TabOrder = 6
      TabStop = True
    end
    object rgExibeSelo: TRadioGroup
      Left = 8
      Top = 160
      Width = 101
      Height = 65
      Caption = ' Configura'#231#227'o '
      ItemIndex = 0
      Items.Strings = (
        'Exibir selo'
        'Ocultar selo')
      TabOrder = 7
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 312
    Width = 547
    Height = 19
    Panels = <
      item
        Width = 200
      end
      item
        Width = 50
      end>
  end
  object dblCliente: TDBLookupComboBox
    Left = 8
    Top = 24
    Width = 409
    Height = 19
    Ctl3D = False
    KeyField = 'CODIGO'
    ListField = 'DESCRICAO'
    ListSource = dsCliente
    ParentCtl3D = False
    TabOrder = 0
    OnKeyDown = dblClienteKeyDown
  end
  object edRGS: TEdit
    Left = 8
    Top = 72
    Width = 81
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 1
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 104
    Width = 409
    Height = 201
    TabStop = False
    Ctl3D = False
    DataSource = dsPesquisa
    ParentCtl3D = False
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object edExtintor: TEdit
    Left = 96
    Top = 72
    Width = 97
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 3
  end
  object edCodExtintor: TEdit
    Left = 200
    Top = 72
    Width = 81
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 2
  end
  object Qpesquisa: TIBQuery
    Database = DM.IBDatabase1
    Transaction = DM.IBTransaction1
    AfterOpen = QpesquisaAfterOpen
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT'
      '  FABRICANTE.DESCRICAO,'
      '  CLIENTE.RAZAO_SOCIAL,'
      '  RECARGA.ENTRADA,'
      '  RECARGA.PREV_SAIDA,'
      '  RECARGA.SAIDA,'
      '  RECARGA.RGS,'
      '  EXTINTOR.CODIGO,'
      '  EXTINTOR.CAPACIDADE,'
      '  EXTINTOR.ANO_FABRICACAO,'
      '  EXTINTOR.ULTIMA_VISITA,'
      '  EXTINTOR.NUMERO_SERIE,'
      '  EXTINTOR.NIVEL_MANUTENCAO,'
      '  EXTINTOR.SELO,'
      '  TIPO.TIPO,'
      '  TIPO.NBR,'
      '  EXTINTOR.PESO_VAZIO,'
      '  EXTINTOR.DATA_TESTE,'
      '  EXTINTOR.PESO_CHEIO,'
      '  EXTINTOR.TARA,'
      '  EXTINTOR.OBS,'
      '  EXTINTOR.NUMERO_PROJETO,'
      '  EXTINTOR.NUMERO_LACRE,'
      
        '  (SELECT ESTINTOR.CODIGO_BARRA FROM ESTINTOR WHERE ESTINTOR.COD' +
        'IGO = EXTINTOR.CODIGO) as CODIGO_BARRA'
      'FROM'
      '  ITENS_RECARGA EXTINTOR'
      '  INNER JOIN RECARGA ON (EXTINTOR.RGS = RECARGA.RGS)'
      
        '  INNER JOIN FABRICANTE ON (EXTINTOR.FABRICANTE=FABRICANTE.CODIG' +
        'O)'
      '  INNER JOIN CLIENTE ON (EXTINTOR.CLIENTE=CLIENTE.CODIGO)'
      '  INNER JOIN TIPO ON (EXTINTOR.TIPO=TIPO.CODIGO)'
      'WHERE'
      '  (RECARGA.CLIENTE IS NOT NULL)AND(RECARGA.CLIENTE = 7775)'
      'ORDER BY'
      '  RECARGA.RGS,'
      '  EXTINTOR.NUMERO_SERIE')
    Left = 24
    Top = 168
    object QpesquisaDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = 'FABRICANTE.DESCRICAO'
      Size = 30
    end
    object QpesquisaRAZAO_SOCIAL: TIBStringField
      FieldName = 'RAZAO_SOCIAL'
      Origin = 'CLIENTE.RAZAO_SOCIAL'
      Size = 80
    end
    object QpesquisaENTRADA: TDateTimeField
      FieldName = 'ENTRADA'
      Origin = 'RECARGA.ENTRADA'
    end
    object QpesquisaPREV_SAIDA: TDateTimeField
      FieldName = 'PREV_SAIDA'
      Origin = 'RECARGA.PREV_SAIDA'
    end
    object QpesquisaSAIDA: TDateTimeField
      FieldName = 'SAIDA'
      Origin = 'RECARGA.SAIDA'
    end
    object QpesquisaRGS: TIBStringField
      FieldName = 'RGS'
      Origin = 'RECARGA.RGS'
      Size = 10
    end
    object QpesquisaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'ESTINTOR.CODIGO'
      Required = True
    end
    object QpesquisaCAPACIDADE: TIntegerField
      FieldName = 'CAPACIDADE'
      Origin = 'ESTINTOR.CAPACIDADE'
      Required = True
    end
    object QpesquisaANO_FABRICACAO: TIBStringField
      FieldName = 'ANO_FABRICACAO'
      Origin = 'ESTINTOR.ANO_FABRICACAO'
      Required = True
      FixedChar = True
      Size = 4
    end
    object QpesquisaULTIMA_VISITA: TIBStringField
      FieldName = 'ULTIMA_VISITA'
      Origin = 'ESTINTOR.ULTIMA_VISITA'
      Required = True
      FixedChar = True
      Size = 4
    end
    object QpesquisaNUMERO_SERIE: TIBStringField
      FieldName = 'NUMERO_SERIE'
      Origin = 'ESTINTOR.NUMERO_SERIE'
      Required = True
      Size = 22
    end
    object QpesquisaNIVEL_MANUTENCAO: TIntegerField
      FieldName = 'NIVEL_MANUTENCAO'
      Origin = 'ESTINTOR.NIVEL_MANUTENCAO'
    end
    object QpesquisaSELO: TIBStringField
      FieldName = 'SELO'
      Origin = 'ESTINTOR.SELO'
      Size = 10
    end
    object QpesquisaTIPO: TIBStringField
      FieldName = 'TIPO'
      Origin = 'TIPO.TIPO'
      Size = 10
    end
    object QpesquisaNBR: TIntegerField
      FieldName = 'NBR'
      Origin = 'TIPO.NBR'
    end
    object QpesquisaPESO_VAZIO: TFloatField
      FieldName = 'PESO_VAZIO'
      Origin = 'ESTINTOR.PESO_VAZIO'
    end
    object QpesquisaDATA_TESTE: TDateTimeField
      FieldName = 'DATA_TESTE'
      Origin = 'ESTINTOR.DATA_TESTE'
    end
    object QpesquisaPESO_CHEIO: TFloatField
      FieldName = 'PESO_CHEIO'
      Origin = 'ESTINTOR.PESO_CHEIO'
    end
    object QpesquisaTARA: TFloatField
      FieldName = 'TARA'
      Origin = 'ESTINTOR.TARA'
    end
    object QpesquisaOBS: TIBStringField
      FieldName = 'OBS'
      Origin = 'ESTINTOR.OBS'
      Size = 250
    end
    object QpesquisaNUMERO_PROJETO: TIBStringField
      FieldName = 'NUMERO_PROJETO'
      Origin = 'ESTINTOR.NUMERO_PROJETO'
      Size = 6
    end
    object QpesquisaNUMERO_LACRE: TIntegerField
      FieldName = 'NUMERO_LACRE'
      Origin = 'ESTINTOR.NUMERO_LACRE'
    end
    object QpesquisaCODIGO_BARRA: TIBStringField
      FieldName = 'CODIGO_BARRA'
      FixedChar = True
    end
  end
  object dsCliente: TDataSource
    DataSet = DMPesquisa.QClientesComExtintor
    Left = 128
    Top = 72
  end
  object dsPesquisa: TDataSource
    DataSet = Qpesquisa
    Left = 208
    Top = 72
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 'FortesReport v3.23 \251 Copyright '#169' 1999-2004 Fortes Inform'#225'tica'
    ViewerOptions = []
    FontEncoding = feNoEncoding
    DisplayName = 'Documento PDF'
    Left = 360
    Top = 72
  end
end
