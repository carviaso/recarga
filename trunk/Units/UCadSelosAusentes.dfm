inherited FCadSelosAusentes: TFCadSelosAusentes
  Caption = 'Selos Ausentes'
  PixelsPerInch = 96
  TextHeight = 14
  inherited pnControle: TPanel
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
    end
  end
  inherited PageControl: TPageControl
    ActivePage = tabCadastro
    inherited tabPesquisa: TTabSheet
      inherited GroupBox1: TGroupBox
        inherited edPesquisa: TComboEdit
          OnButtonClick = edPesquisaButtonClick
        end
        object rbSelo: TRadioButton
          Left = 16
          Top = 19
          Width = 97
          Height = 17
          Caption = 'N'#250'mero Selo'
          TabOrder = 1
        end
        object rbMotivo: TRadioButton
          Left = 128
          Top = 19
          Width = 65
          Height = 17
          Caption = 'Motivo'
          TabOrder = 2
        end
      end
    end
    inherited tabCadastro: TTabSheet
      object Label1: TLabel
        Left = 16
        Top = 16
        Width = 42
        Height = 14
        Caption = 'N'#186' Selos'
        FocusControl = edSelo
      end
      object Label2: TLabel
        Left = 16
        Top = 56
        Width = 130
        Height = 14
        Caption = 'Motivo do descarte do selo'
        FocusControl = edMotivo
      end
      object Label3: TLabel
        Left = 16
        Top = 96
        Width = 83
        Height = 14
        Caption = 'Data do descarte'
      end
      object DBText1: TDBText
        Left = 16
        Top = 112
        Width = 193
        Height = 17
        DataField = 'DATA'
        DataSource = dsCadastro
      end
      object edSelo: TDBEdit
        Left = 16
        Top = 32
        Width = 144
        Height = 22
        DataField = 'SELO'
        DataSource = dsCadastro
        TabOrder = 0
        OnExit = edSeloExit
      end
      object edMotivo: TDBEdit
        Left = 16
        Top = 72
        Width = 284
        Height = 22
        CharCase = ecUpperCase
        DataField = 'MOTIVO_AUSENCIA'
        DataSource = dsCadastro
        TabOrder = 1
      end
    end
  end
  inherited cdsCadastro: TIBTable
    Database = DM.IBDatabase1
    Transaction = DM.IBTransaction1
    TableName = 'SELOS_AUSENTES'
    object cdsCadastroSELO: TIBStringField
      DisplayLabel = 'Selo'
      FieldName = 'SELO'
      Size = 10
    end
    object cdsCadastroMOTIVO_AUSENCIA: TIBStringField
      DisplayLabel = 'Motivo descarte'
      FieldName = 'MOTIVO_AUSENCIA'
    end
    object cdsCadastroDATA: TDateTimeField
      DisplayLabel = 'Data do descarte'
      FieldName = 'DATA'
    end
  end
end
