inherited FCadTipoCapValor: TFCadTipoCapValor
  Width = 550
  Height = 425
  Caption = 'Tipo Capacidade Velores'
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
    inherited tabPesquisa: TTabSheet
      inherited dbgCadastro: TDBGrid
        Columns = <
          item
            Expanded = False
            FieldName = 'TIPO_DESC'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CAPACIDADE'
            Title.Alignment = taCenter
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CAPACIDADE'
            Width = 0
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VR_RECARGA'
            Title.Alignment = taRightJustify
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VR_TESTE'
            Title.Alignment = taRightJustify
            Visible = True
          end>
      end
    end
    inherited tabCadastro: TTabSheet
      object Label1: TLabel
        Left = 8
        Top = 16
        Width = 20
        Height = 14
        Caption = 'Tipo'
      end
      object Label2: TLabel
        Left = 112
        Top = 16
        Width = 57
        Height = 14
        Caption = 'Capacidade'
      end
      object Label3: TLabel
        Left = 8
        Top = 64
        Width = 42
        Height = 14
        Caption = 'Vr.Teste'
      end
      object Label4: TLabel
        Left = 112
        Top = 64
        Width = 56
        Height = 14
        Caption = 'Vr.Recarga'
      end
      object dblTipo: TDBLookupComboBox
        Left = 8
        Top = 32
        Width = 92
        Height = 22
        DataField = 'TIPO'
        DataSource = dsCadastro
        KeyField = 'CODIGO'
        ListField = 'TIPO'
        ListSource = dsTipo
        TabOrder = 0
      end
      object edCapacidade: TDBEdit
        Left = 112
        Top = 32
        Width = 54
        Height = 22
        DataField = 'CAPACIDADE'
        DataSource = dsCadastro
        TabOrder = 1
      end
      object edVrTeste: TRxDBCalcEdit
        Left = 8
        Top = 80
        Width = 92
        Height = 21
        DataField = 'VR_TESTE'
        DataSource = dsCadastro
        DisplayFormat = '#,##0.00'
        NumGlyphs = 2
        TabOrder = 2
      end
      object edVrRecarga: TRxDBCalcEdit
        Left = 112
        Top = 80
        Width = 92
        Height = 21
        DataField = 'VR_RECARGA'
        DataSource = dsCadastro
        DisplayFormat = '#,##0.00'
        NumGlyphs = 2
        TabOrder = 3
      end
    end
  end
  inherited cdsCadastro: TIBTable
    Database = DM.IBDatabase1
    Transaction = DM.IBTransaction1
    Active = True
    FieldDefs = <
      item
        Name = 'TIPO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'CAPACIDADE'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'VR_TESTE'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'VR_RECARGA'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'TIPO_DESC'
        DataType = ftString
        Size = 10
      end>
    IndexDefs = <
      item
        Name = 'PK_TIPOCAP_VALOR'
        Fields = 'TIPO;CAPACIDADE'
        Options = [ixUnique]
      end>
    StoreDefs = True
    TableName = 'TIPOCAP_VALOR'
    Top = 152
    object cdsCadastroTIPO: TIntegerField
      FieldName = 'TIPO'
    end
    object cdsCadastroCAPACIDADE: TIntegerField
      DisplayLabel = 'Cap.'
      FieldName = 'CAPACIDADE'
    end
    object cdsCadastroVR_RECARGA: TFloatField
      DisplayLabel = 'Vr.Recarga'
      FieldName = 'VR_RECARGA'
      DisplayFormat = '#,##0.00'
    end
    object cdsCadastroTIPO_DESC: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO_DESC'
      Size = 10
    end
    object cdsCadastroVR_TESTE: TFloatField
      DisplayLabel = 'Vr.Teste'
      FieldName = 'VR_TESTE'
      Required = True
      DisplayFormat = '#,##0.00'
    end
  end
  object dsTipo: TDataSource
    DataSet = DMPesquisa.cdsTipo
    Left = 252
    Top = 204
  end
end
