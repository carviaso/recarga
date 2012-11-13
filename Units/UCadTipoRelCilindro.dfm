inherited FCadTipoRelCilindro: TFCadTipoRelCilindro
  Left = 256
  Top = 188
  Width = 658
  Height = 425
  Caption = 'Tipo Relat'#243'rio Cilindro'
  PixelsPerInch = 96
  TextHeight = 14
  inherited pnControle: TPanel
    Left = 543
    Height = 372
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
    end
  end
  inherited BarraDeStatus: TStatusBar
    Top = 372
    Width = 650
  end
  inherited PageControl: TPageControl
    Width = 543
    Height = 372
    ActivePage = tabCadastro
    inherited tabPesquisa: TTabSheet
      TabVisible = False
    end
    inherited tabCadastro: TTabSheet
      object Label1: TLabel
        Left = 16
        Top = 8
        Width = 33
        Height = 14
        Caption = 'C'#243'digo'
      end
      object DBText1: TDBText
        Left = 16
        Top = 24
        Width = 42
        Height = 17
        DataField = 'CODIGO'
        DataSource = dsCadastro
      end
      object Label3: TLabel
        Left = 64
        Top = 8
        Width = 49
        Height = 14
        Caption = 'Descri'#231#227'o'
      end
      object edDescricao: TDBEdit
        Left = 64
        Top = 25
        Width = 297
        Height = 22
        CharCase = ecUpperCase
        DataField = 'DESCRICAO'
        DataSource = dsCadastro
        TabOrder = 0
      end
      object cbAtivo: TDBCheckBox
        Left = 368
        Top = 32
        Width = 97
        Height = 17
        Caption = 'Ativo'
        DataField = 'ATIVO'
        DataSource = dsCadastro
        TabOrder = 1
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object GroupBox2: TGroupBox
        Left = 8
        Top = 51
        Width = 521
        Height = 256
        TabOrder = 2
        object Label6: TLabel
          Left = 8
          Top = 66
          Width = 69
          Height = 14
          Caption = 'Observa'#231#227'o 1'
          FocusControl = edObs1
        end
        object Label7: TLabel
          Left = 8
          Top = 106
          Width = 69
          Height = 14
          Caption = 'Observa'#231#227'o 2'
        end
        object Label2: TLabel
          Left = 96
          Top = 16
          Width = 93
          Height = 14
          Caption = 'Motivo Reprova'#231#227'o'
        end
        object edObs1: TDBEdit
          Left = 8
          Top = 82
          Width = 502
          Height = 22
          DataField = 'OBS1'
          DataSource = dsCadastro
          TabOrder = 5
        end
        object cbLimiteRosca: TDBCheckBox
          Left = 288
          Top = 11
          Width = 177
          Height = 17
          Caption = 'Exibir Imagem Limite Rosca'
          DataField = 'LIMITE_ROSCA'
          DataSource = dsCadastro
          TabOrder = 2
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object cbCorrocao: TDBCheckBox
          Left = 288
          Top = 27
          Width = 225
          Height = 17
          Caption = 'Exibir imagem Reprova'#231#227'o por Corros'#227'o'
          DataField = 'CORROSAO'
          DataSource = dsCadastro
          TabOrder = 3
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object cbRosca: TDBCheckBox
          Left = 288
          Top = 43
          Width = 217
          Height = 17
          Caption = 'Exibir imagem Reprova'#231#227'o por Rosca'
          DataField = 'ROSCA'
          DataSource = dsCadastro
          TabOrder = 4
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object rtObs2: TDBRichEdit
          Left = 8
          Top = 122
          Width = 503
          Height = 124
          DataField = 'OBS2'
          DataSource = dsCadastro
          TabOrder = 6
        end
        object cbReprovado: TDBCheckBox
          Left = 8
          Top = 32
          Width = 81
          Height = 17
          Caption = 'Reprovado'
          DataField = 'REPROVADO'
          DataSource = dsCadastro
          TabOrder = 0
          ValueChecked = 'NC'
          ValueUnchecked = 'C '
        end
        object edMotivoReprovacao: TDBEdit
          Left = 96
          Top = 32
          Width = 121
          Height = 22
          DataField = 'MOTIVO_REPROVACAO'
          DataSource = dsCadastro
          TabOrder = 1
        end
      end
    end
  end
  inherited cdsCadastro: TIBTable
    Database = DM.IBDatabase1
    Transaction = DM.IBTransaction1
    Active = True
    FieldDefs = <
      item
        Name = 'CODIGO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'LIMITE_ROSCA'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'CORROSAO'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'ROSCA'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'OBS1'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'OBS2'
        DataType = ftBlob
        Size = 8
      end
      item
        Name = 'DESCRICAO'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 30
      end
      item
        Name = 'ATIVO'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'REPROVADO'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'MOTIVO_REPROVACAO'
        Attributes = [faFixed]
        DataType = ftString
        Size = 10
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY19'
        Fields = 'CODIGO'
        Options = [ixPrimary, ixUnique]
      end>
    StoreDefs = True
    TableName = 'TIPO_REL_CILINDRO'
    object cdsCadastroCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsCadastroLIMITE_ROSCA: TIBStringField
      FieldName = 'LIMITE_ROSCA'
      FixedChar = True
      Size = 1
    end
    object cdsCadastroCORROSAO: TIBStringField
      FieldName = 'CORROSAO'
      FixedChar = True
      Size = 1
    end
    object cdsCadastroROSCA: TIBStringField
      FieldName = 'ROSCA'
      FixedChar = True
      Size = 1
    end
    object cdsCadastroOBS1: TIBStringField
      FieldName = 'OBS1'
      Size = 200
    end
    object cdsCadastroOBS2: TBlobField
      FieldName = 'OBS2'
      Size = 8
    end
    object cdsCadastroDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Required = True
      FixedChar = True
      Size = 30
    end
    object cdsCadastroATIVO: TIBStringField
      FieldName = 'ATIVO'
      FixedChar = True
      Size = 1
    end
    object cdsCadastroREPROVADO: TIBStringField
      FieldName = 'REPROVADO'
      FixedChar = True
      Size = 2
    end
    object cdsCadastroMOTIVO_REPROVACAO: TIBStringField
      FieldName = 'MOTIVO_REPROVACAO'
      FixedChar = True
      Size = 10
    end
  end
end
