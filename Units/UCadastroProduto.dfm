inherited FCadastroProduto: TFCadastroProduto
  Caption = 'Cadastro Produto e Servi'#231'o'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnControle: TPanel
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
    end
  end
  inherited PageControl: TPageControl
    inherited tabCadastro: TTabSheet
      object Label1: TLabel
        Left = 8
        Top = 16
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
      end
      object Label2: TLabel
        Left = 56
        Top = 16
        Width = 48
        Height = 13
        Caption = 'Descri'#231#227'o'
        FocusControl = DBEdit2
      end
      object Label3: TLabel
        Left = 8
        Top = 64
        Width = 50
        Height = 13
        Caption = 'Fabricante'
        FocusControl = DBEdit1
      end
      object Label4: TLabel
        Left = 216
        Top = 64
        Width = 76
        Height = 13
        Caption = 'C'#243'digo de Barra'
        FocusControl = DBEdit3
      end
      object Label5: TLabel
        Left = 324
        Top = 64
        Width = 52
        Height = 13
        Caption = 'Refer'#234'ncia'
        FocusControl = DBEdit4
      end
      object Label6: TLabel
        Left = 8
        Top = 112
        Width = 49
        Height = 13
        Caption = 'Vr.Compra'
      end
      object Label7: TLabel
        Left = 8
        Top = 152
        Width = 44
        Height = 13
        Caption = 'Vr.Venda'
      end
      object DBText1: TDBText
        Left = 8
        Top = 35
        Width = 44
        Height = 17
        DataField = 'PROD_CODIGO'
        DataSource = dsCadastro
      end
      object DBEdit2: TDBEdit
        Left = 56
        Top = 32
        Width = 401
        Height = 21
        DataField = 'PROD_DESC'
        DataSource = dsCadastro
        TabOrder = 0
      end
      object DBEdit1: TDBEdit
        Left = 8
        Top = 80
        Width = 200
        Height = 21
        DataField = 'PROD_FABRICANTE'
        DataSource = dsCadastro
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 216
        Top = 80
        Width = 100
        Height = 21
        DataField = 'PROD_CODBARRA'
        DataSource = dsCadastro
        TabOrder = 2
      end
      object DBEdit4: TDBEdit
        Left = 324
        Top = 80
        Width = 134
        Height = 21
        DataField = 'PROD_REF'
        DataSource = dsCadastro
        TabOrder = 3
      end
      object RxDBCalcEdit1: TRxDBCalcEdit
        Left = 8
        Top = 128
        Width = 121
        Height = 21
        DataField = 'PROD_VRCOMPRA'
        DataSource = dsCadastro
        NumGlyphs = 2
        TabOrder = 4
      end
      object RxDBCalcEdit2: TRxDBCalcEdit
        Left = 8
        Top = 168
        Width = 121
        Height = 21
        DataField = 'PROD_VRVENDA'
        DataSource = dsCadastro
        NumGlyphs = 2
        TabOrder = 5
      end
    end
  end
  inherited SQLDataSet: TSQLDataSet
    CommandText = 'SELECT * FROM PRODUTO'
  end
  inherited DSP: TDataSetProvider
    DataSet = SQLDataSet
  end
  inherited CDS: TClientDataSet
    object CDSPROD_CODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'PROD_CODIGO'
      Required = True
    end
    object CDSPROD_DESC: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'PROD_DESC'
      Size = 40
    end
    object CDSPROD_FABRICANTE: TStringField
      DisplayLabel = 'Fabricante'
      FieldName = 'PROD_FABRICANTE'
      Size = 40
    end
    object CDSPROD_CODBARRA: TStringField
      DisplayLabel = 'C'#243'digo de Barra'
      FieldName = 'PROD_CODBARRA'
      Size = 29
    end
    object CDSPROD_REF: TStringField
      DisplayLabel = 'Refer'#234'\ncia'
      FieldName = 'PROD_REF'
      Size = 10
    end
    object CDSPROD_VRCOMPRA: TFloatField
      DisplayLabel = 'Vr.Compra'
      FieldName = 'PROD_VRCOMPRA'
    end
    object CDSPROD_VRVENDA: TFloatField
      DisplayLabel = 'Vr.Venda'
      FieldName = 'PROD_VRVENDA'
    end
  end
end
