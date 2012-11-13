inherited FRGSExtintorPecas: TFRGSExtintorPecas
  Width = 379
  Height = 392
  Caption = 'Pe'#231'as'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 14
  object CheckListBox: TCheckListBox
    Left = 0
    Top = 46
    Width = 363
    Height = 267
    Align = alClient
    ItemHeight = 14
    TabOrder = 0
  end
  object Panel1: TPanel
    Left = 0
    Top = 313
    Width = 363
    Height = 41
    Align = alBottom
    TabOrder = 1
    object btnCancelar: TBitBtn
      Left = 212
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 0
      OnClick = btnCancelarClick
    end
    object btnGravar: TBitBtn
      Left = 292
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Gravar'
      TabOrder = 1
      OnClick = btnGravarClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 363
    Height = 46
    Align = alTop
    TabOrder = 2
    object RadioButton1: TRadioButton
      Left = 8
      Top = 8
      Width = 65
      Height = 17
      Caption = 'Todos'
      TabOrder = 0
    end
    object RadioButton2: TRadioButton
      Left = 8
      Top = 24
      Width = 122
      Height = 17
      Caption = 'Apenas Selecionado'
      Checked = True
      TabOrder = 1
      TabStop = True
    end
    object ProgressBar1: TProgressBar
      Left = 152
      Top = 24
      Width = 209
      Height = 17
      TabOrder = 2
    end
  end
  object dsPecas: TDataSource
    DataSet = DMPesquisa.cdsPecas
    Left = 80
    Top = 144
  end
  object qaux: TIBQuery
    Database = DM.IBDatabase1
    Transaction = DM.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from RGS_EXTINTOR_PECAS')
    Left = 112
    Top = 80
  end
end
