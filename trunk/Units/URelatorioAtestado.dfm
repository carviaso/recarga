object FRelatorioAtestado: TFRelatorioAtestado
  Left = 192
  Top = 114
  Width = 819
  Height = 611
  Caption = 'FRelatorioAtestado'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object RLReport1: TRLReport
    Left = 0
    Top = -1
    Width = 794
    Height = 1123
    DataSource = dsRelatorio
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ShowProgress = False
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 69
      BandType = btHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLLabel7: TRLLabel
        Left = 408
        Top = 16
        Width = 178
        Height = 19
        Caption = 'Listagem de Atestados'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object rlEmpresa: TRLLabel
        Left = 5
        Top = 5
        Width = 290
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object rlEndereco: TRLLabel
        Left = 5
        Top = 29
        Width = 290
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object rlComplemento: TRLLabel
        Left = 5
        Top = 45
        Width = 290
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object rlCompetencia: TRLLabel
        Left = 410
        Top = 37
        Width = 71
        Height = 14
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 637
        Top = 1
        Width = 79
        Height = 14
        Alignment = taRightJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = 'Emiss'#227'o: '
      end
      object RLSystemInfo3: TRLSystemInfo
        Left = 617
        Top = 15
        Width = 99
        Height = 14
        Alignment = taRightJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Info = itPageNumber
        ParentFont = False
        Text = 'Pag.: '
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 107
      Width = 718
      Height = 17
      BandType = btColumnHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      object RLLabel1: TRLLabel
        Left = 38
        Top = 0
        Width = 65
        Height = 16
        Caption = 'Protocolo'
      end
      object RLLabel2: TRLLabel
        Left = 320
        Top = 0
        Width = 55
        Height = 16
        Caption = 'Clientes'
      end
      object RLLabel5: TRLLabel
        Left = 182
        Top = 0
        Width = 61
        Height = 16
        Caption = 'Validade'
      end
      object RLLabel6: TRLLabel
        Left = 245
        Top = 0
        Width = 73
        Height = 16
        Caption = #193'rea Cons.'
      end
      object RLLabel8: TRLLabel
        Left = 565
        Top = 1
        Width = 32
        Height = 16
        Caption = 'OBS'
      end
      object RLLabel3: TRLLabel
        Left = 106
        Top = 0
        Width = 73
        Height = 16
        Caption = 'Certificado'
      end
      object RLLabel4: TRLLabel
        Left = 0
        Top = 0
        Width = 33
        Height = 16
        Caption = 'C'#243'd.'
      end
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 124
      Width = 718
      Height = 19
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      object RLDBText1: TRLDBText
        Left = 41
        Top = 4
        Width = 60
        Height = 14
        AutoSize = False
        DataField = 'N_PROTOCOLO'
        DataSource = dsRelatorio
      end
      object RLDBText2: TRLDBText
        Left = 323
        Top = 4
        Width = 239
        Height = 14
        AutoSize = False
        DataField = 'CLIENTE'
        DataSource = dsRelatorio
      end
      object RLDBText5: TRLDBText
        Left = 186
        Top = 4
        Width = 54
        Height = 14
        Alignment = taCenter
        AutoSize = False
        DataField = 'VALIDADE'
        DataSource = dsRelatorio
      end
      object RLDBText6: TRLDBText
        Left = 253
        Top = 4
        Width = 66
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'AREA_CONSTRUIDA'
        DataSource = dsRelatorio
      end
      object RLLabel9: TRLLabel
        Left = 566
        Top = 5
        Width = 150
        Height = 14
        AutoSize = False
        Caption = '____________________________'
      end
      object RLDBText3: TRLDBText
        Left = 110
        Top = 3
        Width = 61
        Height = 14
        AutoSize = False
        DataField = 'N_PROTOCOLO'
        DataSource = dsRelatorio
      end
      object RLDBText4: TRLDBText
        Left = 3
        Top = 5
        Width = 35
        Height = 14
        AutoSize = False
        DataField = 'ATESTADO_CODIGO'
        DataSource = dsRelatorio
      end
    end
    object RLBand4: TRLBand
      Left = 38
      Top = 143
      Width = 718
      Height = 24
      BandType = btSummary
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      PageBreaking = pbBeforePrint
      ParentFont = False
      object RLSystemInfo1: TRLSystemInfo
        Left = 0
        Top = 4
        Width = 219
        Height = 14
        Info = itDetailCount
        Text = 'Quantidade de Atestados: '
      end
    end
  end
  object dsRelatorio: TDataSource
    DataSet = FCadAtestado.qaux
    Left = 184
    Top = 287
  end
end
