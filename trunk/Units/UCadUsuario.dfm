inherited FCadUsuario: TFCadUsuario
  Width = 550
  Height = 425
  Caption = 'Cadastro de Usu'#225'rios'
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
        Top = 112
        Height = 225
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
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME'
            Title.Caption = 'Nome Usu'#225'rio'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 243
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
        object rbCodigo: TRadioButton
          Left = 16
          Top = 32
          Width = 73
          Height = 17
          Caption = 'C'#243'digo'
          Checked = True
          TabOrder = 1
          TabStop = True
        end
        object rbNome: TRadioButton
          Left = 96
          Top = 32
          Width = 65
          Height = 17
          Caption = 'Nome'
          TabOrder = 2
        end
        object rbGrupoAcesso: TRadioButton
          Left = 176
          Top = 32
          Width = 105
          Height = 17
          Caption = 'Grupo Acesso'
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
        Width = 35
        Height = 14
        Caption = 'Nome:'
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
        Width = 37
        Height = 14
        Caption = 'Senha:'
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
        Width = 99
        Height = 14
        Caption = 'Grupo de Acesso:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object edNome: TDBEdit
        Left = 112
        Top = 40
        Width = 233
        Height = 22
        CharCase = ecUpperCase
        DataField = 'NOME'
        DataSource = dsCadastro
        TabOrder = 0
      end
      object edSenha: TDBEdit
        Left = 112
        Top = 80
        Width = 233
        Height = 22
        DataField = 'SENHA'
        DataSource = dsCadastro
        PasswordChar = '*'
        TabOrder = 1
      end
      object dblGrupoAcesso: TDBLookupComboBox
        Left = 112
        Top = 120
        Width = 233
        Height = 22
        DataField = 'COD_GRUPO'
        DataSource = dsCadastro
        KeyField = 'CODIGO'
        ListField = 'DESCRICAO'
        ListSource = dsGrupo
        TabOrder = 2
      end
      object DBCheckBox1: TDBCheckBox
        Left = 8
        Top = 160
        Width = 97
        Height = 17
        Hint = 'Esta op'#231#227'o garante acesso otal ao sistema!'
        Caption = 'Usu'#225'rio Master'
        DataField = 'USUARIO_MASTER'
        DataSource = dsCadastro
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
    end
  end
  object dsGrupo: TDataSource [4]
    DataSet = DMPesquisa.cdsGrupo
    Left = 108
    Top = 212
  end
  inherited qaux: TIBQuery
    Database = DM.IBDatabase1
    Transaction = DM.IBTransaction1
  end
  inherited cdsCadastro: TIBTable
    Database = DM.IBDatabase1
    Transaction = DM.IBTransaction1
    TableName = 'USUARIO'
  end
end
