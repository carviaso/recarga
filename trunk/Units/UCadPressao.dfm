inherited FCadPressao: TFCadPressao
  Width = 550
  Height = 425
  Caption = 'Cadastro de Press'#227'o'
  PixelsPerInch = 96
  TextHeight = 14
  inherited pnControle: TPanel
    Left = 435
    Height = 372
    inherited btnFechar: TBitBtn
      Top = 216
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
        Top = 104
        Height = 233
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
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
            Width = 54
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'AB'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 48
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PE'
            Title.Caption = 'P. Teste'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 48
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PT'
            Title.Caption = 'P.Trab.'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 48
            Visible = True
          end>
      end
      inherited GroupBox1: TGroupBox
        Height = 89
        Caption = '  Pesquisa Press'#227'o  '
        inherited edPesquisa: TComboEdit
          Left = 12
          Top = 56
          Width = 381
          OnButtonClick = edPesquisaButtonClick
        end
        object rbCodigo: TRadioButton
          Left = 16
          Top = 32
          Width = 113
          Height = 17
          Caption = 'C'#243'digo'
          Checked = True
          TabOrder = 1
          TabStop = True
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
        Width = 114
        Height = 14
        Caption = 'Press'#227'o de Trabalho'
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
        Width = 98
        Height = 14
        Caption = 'Press'#227'o de Teste'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 8
        Top = 128
        Width = 15
        Height = 14
        Caption = 'AB'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object edPE: TDBEdit
        Left = 128
        Top = 80
        Width = 81
        Height = 22
        CharCase = ecUpperCase
        DataField = 'PE'
        DataSource = dsCadastro
        TabOrder = 1
        OnKeyPress = EDpTKeyPress
      end
      object EDpT: TDBEdit
        Left = 128
        Top = 40
        Width = 81
        Height = 22
        CharCase = ecUpperCase
        DataField = 'PT'
        DataSource = dsCadastro
        TabOrder = 0
        OnKeyPress = EDpTKeyPress
      end
      object edAb: TDBComboBox
        Left = 64
        Top = 120
        Width = 145
        Height = 22
        DataField = 'AB'
        DataSource = dsCadastro
        ItemHeight = 14
        Items.Strings = (
          'Alta Press'#227'o'
          'Baixa Press'#227'o')
        TabOrder = 2
      end
    end
  end
  inherited dsCadastro: TDataSource
    Left = 204
  end
  inherited qaux: TIBQuery
    Database = DM.IBDatabase1
    Transaction = DM.IBTransaction1
  end
  inherited cdsCadastro: TIBTable
    Database = DM.IBDatabase1
    Transaction = DM.IBTransaction1
    TableName = 'PRESSAO'
  end
end
