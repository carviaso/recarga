inherited FCadCliente: TFCadCliente
  Width = 550
  Height = 425
  Caption = 'Cadastro de Clientes'
  PixelsPerInch = 96
  TextHeight = 14
  inherited pnControle: TPanel
    Left = 435
    Height = 372
    inherited btnFechar: TBitBtn
      Top = 344
    end
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
    end
  end
  inherited BarraDeStatus: TStatusBar
    Top = 372
    Width = 542
    Panels = <
      item
        Alignment = taCenter
        Width = 100
      end
      item
        Width = 50
      end>
  end
  inherited PageControl: TPageControl
    Width = 435
    Height = 372
    ActivePage = tabCadastro
    inherited tabPesquisa: TTabSheet
      inherited dbgCadastro: TDBGrid
        Columns = <
          item
            Expanded = False
            FieldName = 'CODIGO'
            Title.Caption = 'C'#243'digo'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 49
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RAZAO_SOCIAL'
            Title.Caption = 'Raz'#227'o Social'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 204
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CNPJ'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 118
            Visible = True
          end>
      end
      inherited GroupBox1: TGroupBox
        inherited edPesquisa: TComboEdit
          OnButtonClick = edPesquisaButtonClick
        end
        object rbRazao: TRadioButton
          Left = 16
          Top = 16
          Width = 105
          Height = 17
          Caption = 'Raz'#227'o Social'
          Checked = True
          TabOrder = 1
          TabStop = True
        end
        object rbCodigo: TRadioButton
          Left = 128
          Top = 16
          Width = 65
          Height = 17
          Caption = 'C'#243'digo'
          TabOrder = 2
        end
        object rbCnpj: TRadioButton
          Left = 232
          Top = 16
          Width = 113
          Height = 17
          Caption = 'CNPJ'
          TabOrder = 3
        end
      end
    end
    inherited tabCadastro: TTabSheet
      object Label1: TLabel
        Left = 8
        Top = 40
        Width = 35
        Height = 14
        Caption = 'Raz'#227'o:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 8
        Top = 72
        Width = 47
        Height = 14
        Caption = 'Fantazia:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 8
        Top = 8
        Width = 42
        Height = 14
        Caption = 'C'#243'digo:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText1: TDBText
        Left = 62
        Top = 8
        Width = 65
        Height = 17
        DataField = 'CODIGO'
        DataSource = dsCadastro
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label9: TLabel
        Left = 0
        Top = 104
        Width = 55
        Height = 14
        Caption = 'CPF/CNPJ:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label10: TLabel
        Left = 232
        Top = 104
        Width = 52
        Height = 14
        Caption = 'Insc. Est.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label19: TLabel
        Left = 8
        Top = 136
        Width = 49
        Height = 14
        Caption = 'Telefone'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label21: TLabel
        Left = 156
        Top = 136
        Width = 18
        Height = 14
        Caption = 'Fax'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label16: TLabel
        Left = 277
        Top = 136
        Width = 46
        Height = 14
        Caption = 'Contato:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label18: TLabel
        Left = 8
        Top = 168
        Width = 32
        Height = 14
        Caption = 'Email:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object edRazao: TDBEdit
        Left = 60
        Top = 32
        Width = 360
        Height = 22
        CharCase = ecUpperCase
        DataField = 'RAZAO_SOCIAL'
        DataSource = dsCadastro
        TabOrder = 1
        OnExit = edRazaoExit
      end
      object edFantasia: TDBEdit
        Left = 60
        Top = 64
        Width = 360
        Height = 22
        CharCase = ecUpperCase
        DataField = 'FANTAZIA'
        DataSource = dsCadastro
        TabOrder = 2
      end
      object edCnpj: TDBEdit
        Left = 60
        Top = 96
        Width = 153
        Height = 22
        DataField = 'CNPJ'
        DataSource = dsCadastro
        MaxLength = 14
        TabOrder = 3
        OnKeyPress = edCnpjKeyPress
      end
      object edInsc: TDBEdit
        Left = 288
        Top = 96
        Width = 132
        Height = 22
        DataField = 'INSC_ESTADUAL'
        DataSource = dsCadastro
        TabOrder = 4
      end
      object GroupBox2: TGroupBox
        Left = 0
        Top = 187
        Width = 424
        Height = 154
        Caption = '  Endere'#231'o Principal  '
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 9
        object Label4: TLabel
          Left = 37
          Top = 32
          Width = 24
          Height = 14
          Caption = 'CEP:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label5: TLabel
          Left = 345
          Top = 128
          Width = 16
          Height = 14
          Caption = 'UF:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel
          Left = 20
          Top = 128
          Width = 41
          Height = 14
          Caption = 'Cidade:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label7: TLabel
          Left = 25
          Top = 96
          Width = 36
          Height = 14
          Caption = 'Bairro:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label8: TLabel
          Left = 6
          Top = 64
          Width = 55
          Height = 14
          Caption = 'Endere'#231'o:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object edCep: TDBEdit
          Left = 67
          Top = 24
          Width = 121
          Height = 22
          CharCase = ecUpperCase
          Ctl3D = True
          DataField = 'CEP'
          DataSource = dsCadastro
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          MaxLength = 8
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          OnKeyPress = edCepKeyPress
        end
        object edUF: TDBComboBox
          Left = 369
          Top = 120
          Width = 42
          Height = 22
          CharCase = ecUpperCase
          DataField = 'UF'
          DataSource = dsCadastro
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ItemHeight = 14
          Items.Strings = (
            'BA'
            'PB'
            'PE')
          ParentFont = False
          TabOrder = 4
        end
        object edBairro: TDBEdit
          Left = 67
          Top = 88
          Width = 344
          Height = 22
          CharCase = ecUpperCase
          Ctl3D = True
          DataField = 'BAIRRO'
          DataSource = dsCadastro
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 2
        end
        object edCidade: TDBEdit
          Left = 67
          Top = 120
          Width = 266
          Height = 22
          CharCase = ecUpperCase
          Ctl3D = True
          DataField = 'CIDADE'
          DataSource = dsCadastro
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 3
        end
        object edEndereco: TDBEdit
          Left = 67
          Top = 56
          Width = 344
          Height = 22
          CharCase = ecUpperCase
          Ctl3D = True
          DataField = 'ENDERECO'
          DataSource = dsCadastro
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 1
        end
      end
      object cbClienteGNV: TDBCheckBox
        Left = 178
        Top = 8
        Width = 241
        Height = 17
        Alignment = taLeftJustify
        Caption = 'Exibir Cliente nas Informa'#231#245'es de GNV'
        DataField = 'EXIBIR_EM_GNV'
        DataSource = dsCadastro
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object edFone: TDBEdit
        Left = 60
        Top = 128
        Width = 90
        Height = 22
        Ctl3D = True
        DataField = 'TELEFONE_1'
        DataSource = dsCadastro
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 5
        OnKeyPress = edCepKeyPress
      end
      object edFax: TDBEdit
        Left = 180
        Top = 128
        Width = 90
        Height = 22
        Ctl3D = True
        DataField = 'TELEFONE_2'
        DataSource = dsCadastro
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 6
        OnKeyPress = edCepKeyPress
      end
      object edContato: TDBEdit
        Left = 326
        Top = 128
        Width = 94
        Height = 22
        CharCase = ecUpperCase
        Ctl3D = True
        DataField = 'CONTATO'
        DataSource = dsCadastro
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 7
      end
      object edEmail: TDBEdit
        Left = 60
        Top = 160
        Width = 360
        Height = 22
        CharCase = ecLowerCase
        Ctl3D = True
        DataField = 'EMAIL'
        DataSource = dsCadastro
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 8
      end
    end
  end
  inherited dsCadastro: TDataSource
    Left = 404
    Top = 212
  end
  inherited qaux: TIBQuery
    Database = DM.IBDatabase1
    Transaction = DM.IBTransaction1
  end
  inherited cdsCadastro: TIBTable
    Database = DM.IBDatabase1
    Transaction = DM.IBTransaction1
    AfterOpen = cdsCadastroAfterOpen
    FieldDefs = <
      item
        Name = 'CODIGO'
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
        DataType = ftString
        Size = 1
      end
      item
        Name = 'DATA'
        DataType = ftDateTime
      end
      item
        Name = 'TABELA'
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
    StoreDefs = True
    TableName = 'CLIENTE'
    object cdsCadastroCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object cdsCadastroRAZAO_SOCIAL: TIBStringField
      FieldName = 'RAZAO_SOCIAL'
      Size = 80
    end
    object cdsCadastroENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Size = 100
    end
    object cdsCadastroBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Size = 80
    end
    object cdsCadastroCIDADE: TIBStringField
      FieldName = 'CIDADE'
      Size = 80
    end
    object cdsCadastroUF: TIBStringField
      FieldName = 'UF'
      Size = 2
    end
    object cdsCadastroCEP: TIBStringField
      FieldName = 'CEP'
      EditMask = '99999-999;0'
      Size = 10
    end
    object cdsCadastroTELEFONE: TIBStringField
      FieldName = 'TELEFONE'
      Size = 60
    end
    object cdsCadastroTLX: TIBStringField
      FieldName = 'TLX'
      Size = 13
    end
    object cdsCadastroCNPJ: TIBStringField
      FieldName = 'CNPJ'
    end
    object cdsCadastroINSC_ESTADUAL: TIBStringField
      FieldName = 'INSC_ESTADUAL'
      Size = 30
    end
    object cdsCadastroINSC_SUB: TIBStringField
      FieldName = 'INSC_SUB'
      Size = 30
    end
    object cdsCadastroDIRETOR: TIBStringField
      FieldName = 'DIRETOR'
      Size = 30
    end
    object cdsCadastroSTATUS: TIBStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object cdsCadastroDATA: TDateTimeField
      FieldName = 'DATA'
    end
    object cdsCadastroTABELA: TIBStringField
      FieldName = 'TABELA'
      Size = 1
    end
    object cdsCadastroVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
    end
    object cdsCadastroUDATA: TDateTimeField
      FieldName = 'UDATA'
    end
    object cdsCadastroUNF: TIBStringField
      FieldName = 'UNF'
      Size = 10
    end
    object cdsCadastroUVALOR: TFloatField
      FieldName = 'UVALOR'
    end
    object cdsCadastroTIPO: TIBStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object cdsCadastroTRASPORTADORA: TIntegerField
      FieldName = 'TRASPORTADORA'
    end
    object cdsCadastroFRETE: TFloatField
      FieldName = 'FRETE'
    end
    object cdsCadastroVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object cdsCadastroPESO: TFloatField
      FieldName = 'PESO'
    end
    object cdsCadastroOBSERVACAO: TIBStringField
      FieldName = 'OBSERVACAO'
      Size = 250
    end
    object cdsCadastroENTREGA: TIBStringField
      FieldName = 'ENTREGA'
    end
    object cdsCadastroEND_COBRANCA: TIBStringField
      FieldName = 'END_COBRANCA'
      Size = 100
    end
    object cdsCadastroCIDADE_COBRACA: TIBStringField
      FieldName = 'CIDADE_COBRACA'
      Size = 60
    end
    object cdsCadastroUF_COBRANCA: TIBStringField
      FieldName = 'UF_COBRANCA'
      Size = 2
    end
    object cdsCadastroCEP_COBRANCA: TIBStringField
      FieldName = 'CEP_COBRANCA'
      Size = 10
    end
    object cdsCadastroCOMICAO: TFloatField
      FieldName = 'COMICAO'
    end
    object cdsCadastroCREDITO: TFloatField
      FieldName = 'CREDITO'
    end
    object cdsCadastroTELEFONE_1: TIBStringField
      FieldName = 'TELEFONE_1'
      Size = 13
    end
    object cdsCadastroTELEFONE_2: TIBStringField
      FieldName = 'TELEFONE_2'
      Size = 13
    end
    object cdsCadastroCONTATO: TIBStringField
      FieldName = 'CONTATO'
    end
    object cdsCadastroEMAIL: TIBStringField
      FieldName = 'EMAIL'
      Size = 60
    end
    object cdsCadastroFANTAZIA: TIBStringField
      FieldName = 'FANTAZIA'
      Size = 80
    end
    object cdsCadastroEXIBIR_EM_GNV: TIBStringField
      FieldName = 'EXIBIR_EM_GNV'
      Size = 1
    end
    object cdsCadastroULTIMA_CONDPAGTO: TIBStringField
      FieldName = 'ULTIMA_CONDPAGTO'
      Size = 40
    end
    object cdsCadastroULTIMO_PRAZOENTREGA: TIntegerField
      FieldName = 'ULTIMO_PRAZOENTREGA'
    end
    object cdsCadastroULTIMO_VALIDADE: TIntegerField
      FieldName = 'ULTIMO_VALIDADE'
    end
    object cdsCadastroCLI_AREA: TFloatField
      FieldName = 'CLI_AREA'
    end
    object cdsCadastroREPRESENTATE: TIBStringField
      FieldName = 'REPRESENTATE'
      Size = 30
    end
    object cdsCadastroREP_TELEFONE: TIBStringField
      FieldName = 'REP_TELEFONE'
      Size = 13
    end
  end
end
