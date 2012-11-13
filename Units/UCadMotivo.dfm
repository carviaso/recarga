inherited FCadMotivo: TFCadMotivo
  HorzScrollBar.Range = 0
  VertScrollBar.Range = 0
  BorderStyle = bsToolWindow
  Caption = 'Cadastro Motivo'
  ClientHeight = 391
  ClientWidth = 542
  PixelsPerInch = 96
  TextHeight = 14
  inherited pnControle: TPanel
    Left = 435
    Height = 372
    inherited btnFechar: TBitBtn
      Top = 208
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
        Top = 72
        Height = 125
        Columns = <
          item
            Expanded = False
            FieldName = 'MOTIVO'
            Title.Caption = 'Motivo'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 400
            Visible = True
          end>
      end
      inherited GroupBox1: TGroupBox
        Height = 57
        inherited edPesquisa: TComboEdit
          Top = 24
          OnButtonClick = edPesquisaButtonClick
        end
      end
    end
    inherited tabCadastro: TTabSheet
      object Label1: TLabel
        Left = 8
        Top = 56
        Width = 37
        Height = 14
        Caption = 'Motivo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbNumero: TLabel
        Left = 168
        Top = 97
        Width = 241
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Quantidade de Caracteres 0/250'
      end
      object edMotivo: TDBEdit
        Left = 8
        Top = 72
        Width = 401
        Height = 22
        CharCase = ecUpperCase
        DataField = 'MOTIVO'
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
    TableName = 'MOTIVO'
  end
end
