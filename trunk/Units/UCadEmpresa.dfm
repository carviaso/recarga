inherited FCadEmpresa: TFCadEmpresa
  Left = 341
  Top = 74
  Width = 550
  Height = 425
  Caption = 'Cadastro de Empresa'
  PixelsPerInch = 96
  TextHeight = 14
  inherited pnControle: TPanel
    Left = 435
    Height = 372
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
    end
  end
  inherited BarraDeStatus: TStatusBar
    Top = 372
    Width = 542
  end
  inherited PageControl: TPageControl
    Width = 435
    Height = 372
    ActivePage = tabCadastro
    inherited tabPesquisa: TTabSheet
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
      object Label3: TLabel
        Left = 8
        Top = 0
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
        Left = 72
        Top = 0
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
      object Label1: TLabel
        Left = 8
        Top = 32
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
        Top = 64
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
      object Label9: TLabel
        Left = 8
        Top = 96
        Width = 31
        Height = 14
        Caption = 'CNPJ:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label10: TLabel
        Left = 8
        Top = 131
        Width = 30
        Height = 14
        Caption = 'Fone:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label11: TLabel
        Left = 208
        Top = 131
        Width = 21
        Height = 14
        Caption = 'Fax:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object edRazao: TDBEdit
        Left = 72
        Top = 24
        Width = 345
        Height = 22
        CharCase = ecUpperCase
        Color = clMenuBar
        DataField = 'RAZAO_SOCIAL'
        DataSource = dsCadastro
        ReadOnly = True
        TabOrder = 0
      end
      object edFantazia: TDBEdit
        Left = 72
        Top = 56
        Width = 344
        Height = 22
        CharCase = ecUpperCase
        Color = clMenuBar
        DataField = 'FANTASIA'
        DataSource = dsCadastro
        ReadOnly = True
        TabOrder = 1
      end
      object edCnpj: TDBEdit
        Left = 72
        Top = 88
        Width = 153
        Height = 22
        DataField = 'CNPJ'
        DataSource = dsCadastro
        MaxLength = 14
        TabOrder = 2
      end
      object GroupBox2: TGroupBox
        Left = 0
        Top = 156
        Width = 424
        Height = 147
        Caption = '  Endere'#231'o Principal  '
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 5
        object Label4: TLabel
          Left = 8
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
          Left = 216
          Top = 32
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
          Left = 8
          Top = 64
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
          Left = 8
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
          Left = 8
          Top = 128
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
          Left = 72
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
        end
        object DBComboBox1: TDBComboBox
          Left = 240
          Top = 24
          Width = 57
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
            'AC'
            'AL'
            'AP'
            'AM'
            'BA'
            'CE'
            'DF'
            'ES'#9
            'GO'
            'MA'
            'MT'
            'MS'
            'MG'
            'PA'
            'PB'
            'PR'
            'PE'
            'PI'
            'RJ'
            'RN'
            'RS'
            'RO'
            'RR'
            'SC'
            'SP'
            'SE'
            'TO')
          ParentFont = False
          TabOrder = 1
        end
        object edBairro: TDBEdit
          Left = 72
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
          TabOrder = 3
        end
        object edCidade: TDBEdit
          Left = 72
          Top = 56
          Width = 345
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
          TabOrder = 2
        end
        object edEndereco: TDBEdit
          Left = 72
          Top = 120
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
          TabOrder = 4
        end
      end
      object edFone: TDBEdit
        Left = 72
        Top = 120
        Width = 113
        Height = 22
        DataField = 'FONE'
        DataSource = dsCadastro
        TabOrder = 3
      end
      object edFax: TDBEdit
        Left = 248
        Top = 123
        Width = 113
        Height = 22
        DataField = 'FAX'
        DataSource = dsCadastro
        TabOrder = 4
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'Parametros da Empresa'
      ImageIndex = 2
      object GroupBox3: TGroupBox
        Left = 8
        Top = 0
        Width = 97
        Height = 57
        Caption = '  N'#186' RGS  '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object edRgs: TDBEdit
          Left = 7
          Top = 20
          Width = 82
          Height = 22
          DataField = 'NRGS'
          DataSource = dsCadastro
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
      end
      object GroupBox4: TGroupBox
        Left = 112
        Top = 0
        Width = 185
        Height = 57
        Caption = 'Senha para autera'#231#227'o da RGS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        object DBEdit1: TDBEdit
          Left = 7
          Top = 20
          Width = 138
          Height = 22
          DataField = 'SENHA_MASTER'
          DataSource = dsCadastro
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          PasswordChar = '*'
          TabOrder = 0
        end
      end
      object GroupBox5: TGroupBox
        Left = 8
        Top = 56
        Width = 409
        Height = 193
        Caption = '  Responsaveis  '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        object Label12: TLabel
          Left = 8
          Top = 16
          Width = 114
          Height = 14
          Caption = 'Responsavel Tectico'
        end
        object Label13: TLabel
          Left = 8
          Top = 136
          Width = 196
          Height = 14
          Caption = 'Responsavel Controle de Qualidade'
        end
        object Label17: TLabel
          Left = 312
          Top = 16
          Width = 53
          Height = 14
          Caption = 'Reg. Crea'
        end
        object Label14: TLabel
          Left = 8
          Top = 80
          Width = 92
          Height = 14
          Caption = 'Local Assinatura'
        end
        object edRespTecnico: TDBEdit
          Left = 8
          Top = 32
          Width = 300
          Height = 22
          DataField = 'RESP_TECNICO'
          DataSource = dsCadastro
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object edRespControleQualidade: TDBEdit
          Left = 8
          Top = 152
          Width = 300
          Height = 22
          DataField = 'RESP_CONTROLE_QULIDADE'
          DataSource = dsCadastro
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object edRegCrea: TDBEdit
          Left = 312
          Top = 32
          Width = 91
          Height = 22
          DataField = 'REG_CREA'
          DataSource = dsCadastro
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object cbAssinar: TDBCheckBox
          Left = 8
          Top = 56
          Width = 297
          Height = 17
          Caption = 'Assinar Digitalmente RGS e RG Pe'#231'as'
          DataField = 'ASSINAR_DIGITALMENTE'
          DataSource = dsCadastro
          TabOrder = 2
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object edLocalAssinatura: TDBEdit
          Left = 8
          Top = 96
          Width = 385
          Height = 22
          DataField = 'LOCAL_ASINATURA'
          DataSource = dsCadastro
          TabOrder = 3
        end
      end
      object GroupBox7: TGroupBox
        Left = 304
        Top = 0
        Width = 113
        Height = 57
        Caption = '  N'#186' Relat'#243'rio GNV  '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        object edRelgNV: TDBEdit
          Left = 7
          Top = 20
          Width = 82
          Height = 22
          DataField = 'NRELATORIOGNV'
          DataSource = dsCadastro
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Backup'
      ImageIndex = 3
      object Label15: TLabel
        Left = 8
        Top = 8
        Width = 41
        Height = 14
        Caption = 'Servidor'
      end
      object Label16: TLabel
        Left = 8
        Top = 48
        Width = 79
        Height = 14
        Caption = 'Banco de dados'
      end
      object Label18: TLabel
        Left = 8
        Top = 88
        Width = 36
        Height = 14
        Caption = 'Backup'
      end
      object DBText2: TDBText
        Left = 8
        Top = 144
        Width = 225
        Height = 17
        DataField = 'DATA_BACKUP'
        DataSource = dsCadastro
      end
      object Label19: TLabel
        Left = 8
        Top = 128
        Width = 67
        Height = 14
        Caption = 'Ultimo Backup'
      end
      object SpeedButton1: TSpeedButton
        Left = 384
        Top = 64
        Width = 23
        Height = 22
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
          5555555555555555555555555555555555555555555555555555555555555555
          55555555FFFFFFFFFF5555500000000005555557777777777F55550BFBFBFBFB
          0555557F555555557F55550FBFBFBFBF0555557F555555557F55550BFBFBFBFB
          0555557F555555557F55550FBFBFBFBF0555557F555555557F55550BFBFBFBFB
          0555557F555555557F55550FBFBFBFBF0555557FFFFFFFFF7555550000000000
          555555777777777755555550FBFB0555555555575FFF75555555555700007555
          5555555577775555555555555555555555555555555555555555555555555555
          5555555555555555555555555555555555555555555555555555}
        NumGlyphs = 2
        OnClick = SpeedButton1Click
      end
      object DBEdit3: TDBEdit
        Left = 8
        Top = 24
        Width = 121
        Height = 22
        DataField = 'SERVER_NAME'
        DataSource = dsCadastro
        TabOrder = 0
      end
      object DBEdit4: TDBEdit
        Left = 8
        Top = 64
        Width = 376
        Height = 22
        DataField = 'LOCAL_BANCO'
        DataSource = dsCadastro
        ReadOnly = True
        TabOrder = 1
      end
      object DBEdit5: TDBEdit
        Left = 8
        Top = 104
        Width = 400
        Height = 22
        DataField = 'LOCAL_BACKUP'
        DataSource = dsCadastro
        TabOrder = 2
      end
    end
  end
  inherited qaux: TIBQuery
    Database = DM.IBDatabase1
    Transaction = DM.IBTransaction1
    Left = 356
    Top = 156
  end
  inherited cdsCadastro: TIBTable
    Database = DM.IBDatabase1
    Transaction = DM.IBTransaction1
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
    Left = 388
    Top = 156
    object cdsCadastroCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object cdsCadastroRAZAO_SOCIAL: TIBStringField
      DisplayLabel = 'Raz'#227'o Social'
      FieldName = 'RAZAO_SOCIAL'
      Size = 60
    end
    object cdsCadastroFANTASIA: TIBStringField
      DisplayLabel = 'Fantasia'
      FieldName = 'FANTASIA'
      Size = 60
    end
    object cdsCadastroCNPJ: TIBStringField
      FieldName = 'CNPJ'
      EditMask = '99.999.999/9999-99;0;_'
    end
    object cdsCadastroENDERECO: TIBStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'ENDERECO'
      Size = 100
    end
    object cdsCadastroBAIRRO: TIBStringField
      DisplayLabel = 'Bairro'
      FieldName = 'BAIRRO'
      Size = 60
    end
    object cdsCadastroUF: TIBStringField
      FieldName = 'UF'
      Size = 2
    end
    object cdsCadastroCEP: TIBStringField
      FieldName = 'CEP'
      EditMask = '99999-999;0'
      Size = 9
    end
    object cdsCadastroCIDADE: TIBStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CIDADE'
      Size = 80
    end
    object cdsCadastroFONE: TIBStringField
      FieldName = 'FONE'
      EditMask = '(99)9999-9999;0'
      Size = 13
    end
    object cdsCadastroFAX: TIBStringField
      FieldName = 'FAX'
      EditMask = '(99)9999-9999;0'
      Size = 13
    end
    object cdsCadastroEMAIL: TIBStringField
      FieldName = 'EMAIL'
      Size = 80
    end
    object cdsCadastroNRGS: TIBStringField
      FieldName = 'NRGS'
      Size = 8
    end
    object cdsCadastroSENHA_MASTER: TIBStringField
      FieldName = 'SENHA_MASTER'
      Size = 100
    end
    object cdsCadastroRESP_TECNICO: TIBStringField
      FieldName = 'RESP_TECNICO'
      Size = 60
    end
    object cdsCadastroRESP_CONTROLE_QULIDADE: TIBStringField
      FieldName = 'RESP_CONTROLE_QULIDADE'
      Size = 60
    end
    object cdsCadastroREG_CREA: TIBStringField
      FieldName = 'REG_CREA'
      Size = 10
    end
    object cdsCadastroLOCAL_BACKUP: TIBStringField
      FieldName = 'LOCAL_BACKUP'
      Size = 200
    end
    object cdsCadastroLOCAL_BANCO: TIBStringField
      FieldName = 'LOCAL_BANCO'
      Size = 200
    end
    object cdsCadastroSERVER_NAME: TIBStringField
      FieldName = 'SERVER_NAME'
      Size = 40
    end
    object cdsCadastroNRELATORIOGNV: TIntegerField
      FieldName = 'NRELATORIOGNV'
    end
    object cdsCadastroASSINAR_DIGITALMENTE: TIBStringField
      FieldName = 'ASSINAR_DIGITALMENTE'
      Size = 1
    end
    object cdsCadastroLOCAL_ASINATURA: TIBStringField
      FieldName = 'LOCAL_ASINATURA'
      Size = 150
    end
    object cdsCadastroDATA_BACKUP: TDateTimeField
      FieldName = 'DATA_BACKUP'
    end
  end
  object OpenDialog1: TOpenDialog
    Filter = 'GDB|*.gdb'
    Left = 188
    Top = 156
  end
end
