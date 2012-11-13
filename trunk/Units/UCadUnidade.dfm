inherited FCadUnidade: TFCadUnidade
  Width = 550
  Height = 425
  Caption = 'Cadastro de Unidades'
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
        Top = 120
        Height = 209
      end
      inherited GroupBox1: TGroupBox
        Height = 97
        Caption = '  Pesquisa Unidade  '
        inherited edPesquisa: TComboEdit
          Top = 64
          OnButtonClick = edPesquisaButtonClick
        end
        object rbDescricao: TRadioButton
          Left = 16
          Top = 32
          Width = 89
          Height = 17
          Caption = 'Descri'#231#227'o'
          Checked = True
          TabOrder = 1
          TabStop = True
        end
        object rbCodigo: TRadioButton
          Left = 104
          Top = 32
          Width = 89
          Height = 17
          Caption = 'C'#243'digo'
          TabOrder = 2
        end
        object rbEmb: TRadioButton
          Left = 200
          Top = 32
          Width = 113
          Height = 17
          Caption = 'Emb.'
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
        Top = 88
        Width = 30
        Height = 14
        Caption = 'Emb.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 8
        Top = 48
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
      object edEmb: TDBEdit
        Left = 72
        Top = 80
        Width = 73
        Height = 22
        CharCase = ecUpperCase
        DataField = 'EMB'
        DataSource = dsCadastro
        TabOrder = 1
      end
      object edDescricao: TDBEdit
        Left = 72
        Top = 40
        Width = 241
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
    TableName = 'UNIDADE'
  end
end
