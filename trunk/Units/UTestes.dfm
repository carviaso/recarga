object FTestes: TFTestes
  Left = 293
  Top = 119
  BorderStyle = bsDialog
  Caption = 'Testes'
  ClientHeight = 408
  ClientWidth = 427
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object BitBtn1: TBitBtn
    Left = 344
    Top = 376
    Width = 75
    Height = 25
    Caption = '&Fechar'
    TabOrder = 0
    Kind = bkClose
  end
  object BitBtn2: TBitBtn
    Left = 264
    Top = 376
    Width = 75
    Height = 25
    Caption = '&Atualizar'
    TabOrder = 1
    OnClick = BitBtn2Click
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 40
    Width = 409
    Height = 67
    Caption = '  Ensaio Cubagem  '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    object GroupBox3: TGroupBox
      Left = 16
      Top = 17
      Width = 81
      Height = 41
      Caption = '  PV '
      TabOrder = 0
      object edPv: TDBEdit
        Left = 6
        Top = 13
        Width = 68
        Height = 22
        DataField = 'PESO_VAZIO'
        DataSource = dsCadastro
        TabOrder = 0
        OnExit = edPvExit
      end
    end
    object GroupBox4: TGroupBox
      Left = 104
      Top = 17
      Width = 81
      Height = 41
      Caption = '  PC '
      TabOrder = 1
      object edPc: TDBEdit
        Left = 6
        Top = 13
        Width = 68
        Height = 22
        DataField = 'PESO_CHEIO'
        DataSource = dsCadastro
        TabOrder = 0
        OnExit = edPvExit
      end
    end
    object GroupBox5: TGroupBox
      Left = 192
      Top = 17
      Width = 81
      Height = 41
      Caption = '  PC - PV '
      TabOrder = 2
      object lbPvPc: TLabel
        Left = 8
        Top = 16
        Width = 66
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = '0.000'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object GroupBox6: TGroupBox
      Left = 280
      Top = 17
      Width = 121
      Height = 41
      TabOrder = 3
      object lbResultadoCubagem: TLabel
        Left = 64
        Top = 16
        Width = 50
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = '0.000'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label18: TLabel
        Left = 11
        Top = 16
        Width = 39
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = '0,68%'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label19: TLabel
        Left = 63
        Top = 16
        Width = 9
        Height = 16
        Alignment = taRightJustify
        Caption = 'V'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
  object GroupBox7: TGroupBox
    Left = 8
    Top = 116
    Width = 409
    Height = 66
    Caption = '  Ensaio Press'#227'o A  '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    object GroupBox8: TGroupBox
      Left = 304
      Top = 15
      Width = 97
      Height = 41
      Caption = '  (ep / et) * 100  '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object lbResultadoAltaPressao: TLabel
        Left = 24
        Top = 16
        Width = 66
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = '0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object GroupBox9: TGroupBox
      Left = 16
      Top = 15
      Width = 81
      Height = 41
      Caption = '  ET '
      TabOrder = 1
      object edEt: TDBEdit
        Left = 6
        Top = 13
        Width = 68
        Height = 22
        DataField = 'ET'
        DataSource = dsCadastro
        TabOrder = 0
      end
    end
    object GroupBox10: TGroupBox
      Left = 104
      Top = 15
      Width = 81
      Height = 41
      Caption = ' EP '
      TabOrder = 2
      object edEp: TDBEdit
        Left = 6
        Top = 13
        Width = 68
        Height = 22
        DataField = 'EP'
        DataSource = dsCadastro
        TabOrder = 0
        OnExit = edEpExit
      end
    end
  end
  object GroupBox14: TGroupBox
    Left = 8
    Top = 184
    Width = 409
    Height = 64
    Caption = '  Perca de Massa  '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    object GroupBox17: TGroupBox
      Left = 328
      Top = 15
      Width = 73
      Height = 41
      Caption = '  Perda  '
      TabOrder = 0
      object lbPercaMassa: TLabel
        Left = 8
        Top = 16
        Width = 50
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = '0%'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object GroupBox15: TGroupBox
      Left = 16
      Top = 16
      Width = 81
      Height = 41
      Caption = '  PV '
      TabOrder = 1
      object DBText2: TDBText
        Left = 8
        Top = 16
        Width = 65
        Height = 17
        Alignment = taRightJustify
        DataField = 'PESO_VAZIO'
        DataSource = dsCadastro
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object GroupBox18: TGroupBox
      Left = 104
      Top = 15
      Width = 81
      Height = 41
      Caption = '  Tara '
      TabOrder = 2
      object edTara: TDBEdit
        Left = 6
        Top = 13
        Width = 68
        Height = 22
        DataField = 'TARA'
        DataSource = dsCadastro
        TabOrder = 0
        OnExit = edTaraExit
      end
    end
  end
  object GroupBox16: TGroupBox
    Left = 8
    Top = 249
    Width = 409
    Height = 118
    Caption = ' Resultado  '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    object lbMotivo: TLabel
      Left = 8
      Top = 72
      Width = 37
      Height = 14
      Caption = 'Motivo'
    end
    object mmMotivo: TMemo
      Left = 8
      Top = 16
      Width = 393
      Height = 49
      Color = clWhite
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
    end
    object dblMotivo: TDBLookupComboBox
      Left = 8
      Top = 88
      Width = 393
      Height = 22
      DataField = 'MOTIVO'
      DataSource = dsCadastro
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      KeyField = 'MOTIVO'
      ListField = 'MOTIVO'
      ListSource = dsMotivo
      ParentFont = False
      TabOrder = 1
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 427
    Height = 41
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    object DBText1: TDBText
      Left = 8
      Top = 19
      Width = 65
      Height = 17
      DataField = 'NUMERO_SERIE'
      DataSource = dsCadastro
    end
    object Label1: TLabel
      Left = 8
      Top = 0
      Width = 66
      Height = 13
      Caption = 'N'#176' de S'#233'rie'
    end
  end
  object cdsCadastro: TIBTable
    Database = DM.IBDatabase1
    Transaction = DM.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY2'
        Fields = 'CODIGO'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'FK_ESTINTOR2'
        Fields = 'CLIENTE'
      end
      item
        Name = 'RDB$FOREIGN19'
        Fields = 'FABRICANTE'
      end
      item
        Name = 'RDB$FOREIGN20'
        Fields = 'TIPO'
      end>
    StoreDefs = True
    TableName = 'ITENS_RECARGA'
    Left = 380
    Top = 164
  end
  object dsCadastro: TDataSource
    DataSet = cdsCadastro
    Left = 372
    Top = 220
  end
  object dsMotivo: TDataSource
    DataSet = DMPesquisa.cdsMotivo
    Left = 172
    Top = 359
  end
end
