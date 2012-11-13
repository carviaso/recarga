inherited FCadTipo: TFCadTipo
  Width = 550
  Height = 425
  Caption = 'Cadastro de Tipo'
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
    ActivePage = tabCadastro
    inherited tabPesquisa: TTabSheet
      inherited dbgCadastro: TDBGrid
        Top = 112
        Height = 217
        Columns = <
          item
            Expanded = False
            FieldName = 'TIPO'
            Title.Caption = 'Tipo'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRICAO'
            Title.Caption = 'Descri'#231#227'o'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 185
            Visible = True
          end>
      end
      inherited GroupBox1: TGroupBox
        Height = 89
        inherited edPesquisa: TComboEdit
          Top = 56
          Width = 369
          OnButtonClick = edPesquisaButtonClick
        end
        object rbTipo: TRadioButton
          Left = 16
          Top = 24
          Width = 73
          Height = 17
          Caption = 'Tipo'
          TabOrder = 1
        end
        object rbCodigo: TRadioButton
          Left = 88
          Top = 24
          Width = 65
          Height = 17
          Caption = 'C'#243'digo'
          TabOrder = 2
        end
        object rbDescricao: TRadioButton
          Left = 176
          Top = 24
          Width = 90
          Height = 17
          Caption = 'Descri'#231#227'o'
          TabOrder = 3
        end
      end
    end
    inherited tabCadastro: TTabSheet
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
        Left = 72
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
      object Label1: TLabel
        Left = 8
        Top = 48
        Width = 27
        Height = 14
        Caption = 'Tipo:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 8
        Top = 88
        Width = 57
        Height = 14
        Caption = 'Descri'#231#227'o:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 8
        Top = 128
        Width = 24
        Height = 14
        Caption = 'NBR:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object edtipo: TDBEdit
        Left = 72
        Top = 40
        Width = 73
        Height = 22
        CharCase = ecUpperCase
        DataField = 'TIPO'
        DataSource = dsCadastro
        TabOrder = 0
      end
      object edDescricao: TDBEdit
        Left = 72
        Top = 80
        Width = 193
        Height = 22
        CharCase = ecUpperCase
        DataField = 'DESCRICAO'
        DataSource = dsCadastro
        TabOrder = 1
        OnEnter = edDescricaoEnter
      end
      object cbAltaPress: TDBCheckBox
        Left = 136
        Top = 128
        Width = 97
        Height = 17
        Caption = 'Alta Press'#227'o'
        DataField = 'ALTA_PRESSAO'
        DataSource = dsCadastro
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object edNbm: TDBEdit
        Left = 72
        Top = 120
        Width = 49
        Height = 22
        CharCase = ecUpperCase
        DataField = 'NBR'
        DataSource = dsCadastro
        TabOrder = 2
      end
      object DBCheckBox1: TDBCheckBox
        Left = 232
        Top = 128
        Width = 97
        Height = 17
        Caption = #201' CO2'
        DataField = 'CO2'
        DataSource = dsCadastro
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object rgTipoInmetro: TDBRadioGroup
        Left = 8
        Top = 154
        Width = 417
        Height = 39
        Caption = ' Tipo INMETRO '
        Columns = 5
        Ctl3D = False
        DataField = 'TIPO_INMETRO'
        DataSource = dsCadastro
        Items.Strings = (
          'BC'
          'ABC'
          'CO2'
          'AP'
          'EM')
        ParentCtl3D = False
        TabOrder = 5
        Values.Strings = (
          'BC'
          'ABC'
          'CO2'
          'AP'
          'EM')
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
      end
      item
        Name = 'TIPO_INMETRO'
        DataType = ftString
        Size = 10
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY4'
        Fields = 'CODIGO'
        Options = [ixPrimary, ixUnique]
      end>
    StoreDefs = True
    TableName = 'TIPO'
  end
end
