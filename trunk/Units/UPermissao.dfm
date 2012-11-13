inherited FPErmissao: TFPErmissao
  Left = 286
  Top = 195
  Width = 376
  Caption = 'Permissao'
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 96
    Height = 14
    Caption = 'Grupo de Acesso'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 56
    Width = 78
    Height = 14
    Caption = 'Lista de Menu'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object clbMenus: TCheckListBox
    Left = 8
    Top = 72
    Width = 249
    Height = 261
    ItemHeight = 14
    TabOrder = 0
    OnClick = clbMenusClick
  end
  object dblGrupo: TDBLookupComboBox
    Left = 8
    Top = 24
    Width = 249
    Height = 22
    KeyField = 'CODIGO'
    ListField = 'DESCRICAO'
    ListSource = dsGrupo
    TabOrder = 1
  end
  object Panel1: TPanel
    Left = 264
    Top = 0
    Width = 104
    Height = 336
    Align = alRight
    TabOrder = 2
    object btnGravar: TBitBtn
      Left = 8
      Top = 8
      Width = 89
      Height = 25
      Caption = '&Gravar'
      Enabled = False
      TabOrder = 0
      OnClick = btnGravarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333FFFFFFFFFFFFF33000077777770033377777777777773F000007888888
        00037F3337F3FF37F37F00000780088800037F3337F77F37F37F000007800888
        00037F3337F77FF7F37F00000788888800037F3337777777337F000000000000
        00037F3FFFFFFFFFFF7F00000000000000037F77777777777F7F000FFFFFFFFF
        00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
        00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
        00037F7F333333337F7F000FFFFFFFFF07037F7F33333333777F000FFFFFFFFF
        0003737FFFFFFFFF7F7330099999999900333777777777777733}
      NumGlyphs = 2
    end
    object BitBtn1: TBitBtn
      Left = 8
      Top = 304
      Width = 89
      Height = 25
      Caption = '&Fechar'
      TabOrder = 1
      Kind = bkClose
    end
  end
  object cbMarcarTudo: TCheckBox
    Left = 160
    Top = 48
    Width = 97
    Height = 17
    Caption = 'Marcar todas'
    TabOrder = 3
    OnClick = cbMarcarTudoClick
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 336
    Width = 368
    Height = 19
    Panels = <
      item
        Width = 100
      end
      item
        Width = 50
      end>
  end
  object dsGrupo: TDataSource
    DataSet = DMPesquisa.cdsGrupo
    OnDataChange = dsGrupoDataChange
    Left = 224
    Top = 48
  end
  object dsAcesso: TDataSource
    DataSet = DMPesquisa.cdsAcesso
    Left = 264
    Top = 24
  end
  object qaux: TIBQuery
    Database = DM.IBDatabase1
    Transaction = DM.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    Left = 288
    Top = 80
  end
end
