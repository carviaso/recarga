inherited FBackup: TFBackup
  Caption = 'Backup'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 14
  object DBText1: TDBText
    Left = 8
    Top = 23
    Width = 193
    Height = 17
    DataField = 'SERVER_NAME'
    DataSource = dsEmpresa
  end
  object DBText2: TDBText
    Left = 8
    Top = 52
    Width = 500
    Height = 17
    DataField = 'LOCAL_BANCO'
    DataSource = dsEmpresa
  end
  object DBText3: TDBText
    Left = 8
    Top = 84
    Width = 500
    Height = 17
    DataField = 'LOCAL_BACKUP'
    DataSource = dsEmpresa
  end
  object Label1: TLabel
    Left = 7
    Top = 8
    Width = 71
    Height = 14
    Caption = 'Server Name'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 7
    Top = 37
    Width = 136
    Height = 14
    Caption = 'Local do Banco de Dados'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 7
    Top = 68
    Width = 152
    Height = 14
    Caption = 'Local do Arquivo de Backup'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 223
    Top = 8
    Width = 104
    Height = 14
    Caption = 'Data Ultimo Backup'
    FocusControl = BitBtn1
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBText4: TDBText
    Left = 224
    Top = 23
    Width = 127
    Height = 17
    DataField = 'DATA_BACKUP'
    DataSource = dsEmpresa
  end
  object Memo1: TMemo
    Left = 8
    Top = 144
    Width = 521
    Height = 201
    Color = clMenuBar
    Ctl3D = False
    ParentCtl3D = False
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 0
  end
  object BitBtn1: TBitBtn
    Left = 416
    Top = 112
    Width = 113
    Height = 25
    Caption = 'Fazer Backup'
    TabOrder = 1
    OnClick = BitBtn1Click
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      33333333333333333333EEEEEEEEEEEEEEE333FFFFFFFFFFFFF3E00000000000
      00E337777777777777F3E0F77777777770E337F33333333337F3E0F333333333
      70E337F3333F333337F3E0F33303333370E337F3337FF33337F3E0F333003333
      70E337F33377FF3337F3E0F33300033370E337F333777FF337F3E0F333000033
      70E337F33377773337F3E0F33300033370E337F33377733337F3E0F333003333
      70E337F33377333337F3E0F33303333370E337F33373333337F3E0F333333333
      70E337F33333333337F3E0FFFFFFFFFFF0E337FFFFFFFFFFF7F3E00000000000
      00E33777777777777733EEEEEEEEEEEEEEE33333333333333333}
    NumGlyphs = 2
  end
  object IBBackupService1: TIBBackupService
    TraceFlags = []
    BlockingFactor = 0
    Options = []
    Left = 56
    Top = 32
  end
  object dsEmpresa: TDataSource
    DataSet = DMPesquisa.cdsEmpresa
    Left = 152
    Top = 48
  end
end
