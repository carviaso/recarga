inherited FCadFabricante: TFCadFabricante
  Left = 312
  Top = 195
  Width = 550
  Height = 425
  Caption = 'Cadastro de Fabricantes'
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
    ActivePage = tabCadastro
    inherited tabPesquisa: TTabSheet
      inherited dbgCadastro: TDBGrid
        Top = 112
        Height = 217
      end
      inherited GroupBox1: TGroupBox
        Height = 89
        Caption = '  Pesquisa Fabricante  '
        inherited edPesquisa: TComboEdit
          Left = 13
          Top = 56
          Width = 317
          OnButtonClick = edPesquisaButtonClick
        end
        object rbCodigo: TRadioButton
          Left = 160
          Top = 24
          Width = 97
          Height = 17
          Caption = 'C'#243'digo'
          TabOrder = 1
        end
        object rbDescricao: TRadioButton
          Left = 16
          Top = 24
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
        Top = 40
        Width = 57
        Height = 14
        Caption = 'descri'#231#227'o:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object edDescricao: TDBEdit
        Left = 72
        Top = 32
        Width = 273
        Height = 22
        CharCase = ecUpperCase
        DataField = 'DESCRICAO'
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
    TableName = 'FABRICANTE'
  end
end
