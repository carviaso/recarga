inherited FCadSituacao: TFCadSituacao
  Width = 550
  Height = 425
  Caption = 'Cadastro Situa'#231#227'o'
  PixelsPerInch = 96
  TextHeight = 14
  inherited pnControle: TPanel
    Left = 435
    Height = 372
    inherited btnFechar: TBitBtn
      Top = 336
    end
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
        Height = 233
        Columns = <
          item
            Expanded = False
            FieldName = 'SIT_CODIGO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SIT_DESCRICAO'
            Width = 300
            Visible = True
          end>
      end
    end
    inherited tabCadastro: TTabSheet
      object Label1: TLabel
        Left = 64
        Top = 24
        Width = 49
        Height = 14
        Caption = 'Descri'#231#227'o'
        FocusControl = edDescricao
      end
      object Label2: TLabel
        Left = 8
        Top = 24
        Width = 33
        Height = 14
        Caption = 'C'#243'digo'
      end
      object DBText1: TDBText
        Left = 8
        Top = 40
        Width = 65
        Height = 17
        DataField = 'SIT_CODIGO'
        DataSource = dsCadastro
      end
      object edDescricao: TDBEdit
        Left = 64
        Top = 40
        Width = 353
        Height = 22
        CharCase = ecUpperCase
        DataField = 'SIT_DESCRICAO'
        DataSource = dsCadastro
        TabOrder = 0
      end
    end
  end
  inherited qaux: TIBQuery
    Database = DM.IBDatabase1
    Transaction = DM.IBTransaction1
  end
  inherited cdsCadastro: TIBTable
    Database = DM.IBDatabase1
    Transaction = DM.IBTransaction1
    FieldDefs = <
      item
        Name = 'SIT_DESCRICAO'
        Attributes = [faRequired]
        DataType = ftString
        Size = 20
      end
      item
        Name = 'SIT_CODIGO'
        Attributes = [faRequired]
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY20'
        Fields = 'SIT_CODIGO'
        Options = [ixPrimary, ixUnique]
      end>
    StoreDefs = True
    TableName = 'SITUACAO'
    object cdsCadastroSIT_DESCRICAO: TIBStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'SIT_DESCRICAO'
      Required = True
    end
    object cdsCadastroSIT_CODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'SIT_CODIGO'
      Required = True
    end
  end
end
