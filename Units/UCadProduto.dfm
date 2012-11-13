inherited FCadProduto: TFCadProduto
  Left = 278
  Top = 270
  Width = 550
  Height = 425
  Caption = 'Cadastro Produto'
  PixelsPerInch = 96
  TextHeight = 14
  inherited pnControle: TPanel
    Left = 435
    Height = 372
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
    end
    object BitBtn1: TBitBtn
      Left = 8
      Top = 232
      Width = 88
      Height = 25
      Caption = 'Importa Produto'
      TabOrder = 11
      OnClick = BitBtn1Click
    end
  end
  inherited BarraDeStatus: TStatusBar
    Top = 372
    Width = 542
  end
  inherited PageControl: TPageControl
    Width = 435
    Height = 372
    inherited tabPesquisa: TTabSheet
      inherited dbgCadastro: TDBGrid
        Height = 241
      end
      inherited GroupBox1: TGroupBox
        inherited edPesquisa: TComboEdit
          OnButtonClick = edPesquisaButtonClick
        end
        object RadioButton1: TRadioButton
          Left = 16
          Top = 16
          Width = 113
          Height = 17
          Caption = 'C'#243'digo'
          TabOrder = 1
        end
        object RadioButton2: TRadioButton
          Left = 88
          Top = 16
          Width = 113
          Height = 17
          Caption = 'Descri'#231#227'o'
          Checked = True
          TabOrder = 2
          TabStop = True
        end
      end
    end
    inherited tabCadastro: TTabSheet
      object Label1: TLabel
        Left = 8
        Top = 8
        Width = 33
        Height = 14
        Caption = 'C'#243'digo'
      end
      object Label2: TLabel
        Left = 8
        Top = 48
        Width = 49
        Height = 14
        Caption = 'Descri'#231#227'o'
        FocusControl = DBEdit1
      end
      object Label3: TLabel
        Left = 8
        Top = 96
        Width = 51
        Height = 14
        Caption = 'Fabricante'
        FocusControl = DBEdit2
      end
      object Label4: TLabel
        Left = 304
        Top = 96
        Width = 53
        Height = 14
        Caption = 'Refer'#234'ncia'
        FocusControl = DBEdit3
      end
      object DBText1: TDBText
        Left = 8
        Top = 24
        Width = 65
        Height = 17
        DataField = 'PROD_CODIGO'
        DataSource = dsCadastro
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBEdit1: TDBEdit
        Left = 8
        Top = 64
        Width = 412
        Height = 22
        CharCase = ecUpperCase
        DataField = 'PROD_DESC'
        DataSource = dsCadastro
        TabOrder = 1
      end
      object DBEdit2: TDBEdit
        Left = 8
        Top = 112
        Width = 289
        Height = 22
        CharCase = ecUpperCase
        DataField = 'PROD_FABRICANTE'
        DataSource = dsCadastro
        TabOrder = 2
      end
      object DBEdit3: TDBEdit
        Left = 304
        Top = 112
        Width = 114
        Height = 22
        CharCase = ecUpperCase
        DataField = 'PROD_REF'
        DataSource = dsCadastro
        TabOrder = 3
      end
      object DBRadioGroup1: TDBRadioGroup
        Left = 72
        Top = 5
        Width = 169
        Height = 40
        Caption = '  Tipo  '
        Columns = 2
        Ctl3D = False
        DataField = 'PROD_TIPO'
        DataSource = dsCadastro
        Items.Strings = (
          'Mercadoria'
          'Servi'#231'o')
        ParentCtl3D = False
        TabOrder = 0
        Values.Strings = (
          'M'
          'S')
      end
    end
  end
  inherited qaux: TIBQuery
    Database = DM.IBDatabase1
    Transaction = DM.IBTransaction1
    SQL.Strings = (
      'select * from PRODUTO')
  end
  inherited cdsCadastro: TIBTable
    Database = DM.IBDatabase1
    Transaction = DM.IBTransaction1
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
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY42'
        Fields = 'PROD_CODIGO'
        Options = [ixPrimary, ixUnique]
      end>
    StoreDefs = True
    TableName = 'PRODUTO'
    object cdsCadastroPROD_CODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'PROD_CODIGO'
    end
    object cdsCadastroPROD_DESC: TIBStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'PROD_DESC'
      Size = 40
    end
    object cdsCadastroPROD_FABRICANTE: TIBStringField
      DisplayLabel = 'Fabricante'
      FieldName = 'PROD_FABRICANTE'
      Size = 40
    end
    object cdsCadastroPROD_CODBARRA: TIBStringField
      FieldName = 'PROD_CODBARRA'
      Size = 29
    end
    object cdsCadastroPROD_REF: TIBStringField
      DisplayLabel = 'Ref.'
      FieldName = 'PROD_REF'
      Size = 10
    end
    object cdsCadastroPROD_VRCOMPRA: TFloatField
      FieldName = 'PROD_VRCOMPRA'
    end
    object cdsCadastroPROD_VRVENDA: TFloatField
      FieldName = 'PROD_VRVENDA'
    end
    object cdsCadastroPROD_TIPO: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'PROD_TIPO'
      FixedChar = True
      Size = 1
    end
  end
  object QSiac: TQuery
    DatabaseName = 'PREV'
    Left = 20
    Top = 180
  end
end
