object FRelListaRgs: TFRelListaRgs
  Left = 194
  Top = 114
  Width = 870
  Height = 500
  Caption = 'FRelListaRgs'
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
    Left = 8
    Top = 8
    Width = 794
    Height = 1123
    DataSource = dsRelatorio
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ShowProgress = False
    ExpressionParser = RLExpressionParser1
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
        Width = 179
        Height = 19
        Caption = 'Listagem de Extintores'
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
      object RLDataEntrada: TRLLabel
        Left = 410
        Top = 37
        Width = 75
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
        Left = 0
        Top = 0
        Width = 32
        Height = 16
        Caption = 'RGS'
      end
      object RLLabel2: TRLLabel
        Left = 57
        Top = 0
        Width = 55
        Height = 16
        Caption = 'Clientes'
      end
      object RLLabel3: TRLLabel
        Left = 305
        Top = 0
        Width = 53
        Height = 16
        Caption = 'Entrada'
      end
      object RLLabel4: TRLLabel
        Left = 377
        Top = 0
        Width = 78
        Height = 16
        Caption = 'Prev. Sa'#237'da'
      end
      object RLLabel5: TRLLabel
        Left = 465
        Top = 0
        Width = 41
        Height = 16
        Caption = 'Sa'#237'da'
      end
      object RLLabel6: TRLLabel
        Left = 537
        Top = 0
        Width = 31
        Height = 16
        Caption = 'QTD'
      end
      object RLLabel8: TRLLabel
        Left = 573
        Top = 1
        Width = 32
        Height = 16
        Caption = 'OBS'
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
      AfterPrint = RLBand3AfterPrint
      object RLDBText1: TRLDBText
        Left = 1
        Top = 4
        Width = 51
        Height = 14
        AutoSize = False
        DataField = 'RGS'
        DataSource = dsRelatorio
      end
      object RLDBText2: TRLDBText
        Left = 58
        Top = 4
        Width = 241
        Height = 14
        AutoSize = False
        DataField = 'RAZAO_SOCIAL'
        DataSource = dsRelatorio
      end
      object RLDBText3: TRLDBText
        Left = 307
        Top = 4
        Width = 63
        Height = 14
        AutoSize = False
        DataField = 'ENTRADA'
        DataSource = dsRelatorio
      end
      object RLDBText4: TRLDBText
        Left = 377
        Top = 4
        Width = 63
        Height = 14
        AutoSize = False
        DataField = 'PREV_SAIDA'
        DataSource = dsRelatorio
      end
      object RLDBText5: TRLDBText
        Left = 466
        Top = 4
        Width = 63
        Height = 14
        AutoSize = False
        DataField = 'SAIDA'
        DataSource = dsRelatorio
      end
      object RLDBText6: TRLDBText
        Left = 536
        Top = 4
        Width = 32
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'QTD'
        DataSource = dsRelatorio
      end
      object RLLabel9: TRLLabel
        Left = 573
        Top = 5
        Width = 146
        Height = 14
        AutoSize = False
        Caption = '________________________'
      end
    end
    object RLBand4: TRLBand
      Left = 38
      Top = 143
      Width = 718
      Height = 42
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
      BeforePrint = RLBand4BeforePrint
      object RLSystemInfo1: TRLSystemInfo
        Left = 0
        Top = 4
        Width = 184
        Height = 14
        Info = itDetailCount
        Text = 'Quantidade de RGS: '
      end
      object rltotalQtd: TRLLabel
        Left = 514
        Top = 22
        Width = 54
        Height = 16
        Alignment = taRightJustify
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = False
      end
      object rlMemo3: TRLMemo
        Left = 514
        Top = 6
        Width = 54
        Height = 14
        Alignment = taRightJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLMemo1: TRLMemo
        Left = 189
        Top = 6
        Width = 256
        Height = 14
        Alignment = taRightJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel10: TRLLabel
        Left = 412
        Top = 24
        Width = 33
        Height = 14
        Alignment = taRightJustify
        Caption = 'Total:'
      end
      object RLMemo2: TRLMemo
        Left = 466
        Top = 6
        Width = 31
        Height = 14
        Alignment = taRightJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLMemo4: TRLMemo
        Left = 578
        Top = 6
        Width = 54
        Height = 14
        Alignment = taRightJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
  end
  object dsRelatorio: TDataSource
    DataSet = FpesquisaRGS.QRelatorio
    Left = 136
    Top = 216
  end
  object RLExpressionParser1: TRLExpressionParser
    Left = 328
    Top = 384
  end
  object dsTipo: TDataSource
    DataSet = FpesquisaRGS.QTipo
    Left = 136
    Top = 256
  end
end
