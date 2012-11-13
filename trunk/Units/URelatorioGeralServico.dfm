object FRelatorioGeralServico: TFRelatorioGeralServico
  Left = 395
  Top = 184
  Width = 825
  Height = 480
  Caption = 'FRelatorioGeralServico'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  object QuickRep1: TQuickRep
    Left = 0
    Top = 0
    Width = 794
    Height = 1123
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = FpesquisaRelGeraldeServico.Qpesquisa
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE')
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poPortrait
    Page.PaperSize = A4
    Page.Values = (
      100.000000000000000000
      2970.000000000000000000
      100.000000000000000000
      2100.000000000000000000
      100.000000000000000000
      100.000000000000000000
      0.000000000000000000)
    PrinterSettings.Copies = 1
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.OutputBin = Auto
    PrintIfEmpty = True
    SnapToGrid = True
    Units = MM
    Zoom = 100
    object PageHeaderBand1: TQRBand
      Left = 38
      Top = 38
      Width = 718
      Height = 77
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = True
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        203.729166666666700000
        1899.708333333333000000)
      BandType = rbPageHeader
      object QRLabel1: TQRLabel
        Left = 259
        Top = 4
        Width = 199
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          685.270833333333400000
          10.583333333333330000
          526.520833333333400000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Relat'#243'rio Geral de Servi'#231'o'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object qrlCliente: TQRLabel
        Left = 93
        Top = 59
        Width = 43
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          246.062500000000000000
          156.104166666666700000
          113.770833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Cliente:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object qrlRgs: TQRLabel
        Left = 3
        Top = 59
        Width = 35
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          7.937500000000000000
          156.104166666666700000
          92.604166666666680000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'R.G.S.:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText10: TQRDBText
        Left = 138
        Top = 59
        Width = 83
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          365.125000000000000000
          156.104166666666700000
          219.604166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = FpesquisaRelGeraldeServico.Qpesquisa
        DataField = 'RAZAO_SOCIAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText11: TQRDBText
        Left = 42
        Top = 59
        Width = 8
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          111.125000000000000000
          156.104166666666700000
          21.166666666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = FpesquisaRelGeraldeServico.Qpesquisa
        DataField = 'C'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRSysData1: TQRSysData
        Left = 641
        Top = 16
        Width = 77
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1695.979166666667000000
          42.333333333333340000
          203.729166666666700000)
        Alignment = taRightJustify
        AlignToBand = True
        AutoSize = True
        Color = clWhite
        Data = qrsDate
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = 'Emiss'#227'o: '
        Transparent = False
        FontSize = 8
      end
      object QRSysData2: TQRSysData
        Left = 652
        Top = 2
        Width = 66
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1725.083333333334000000
          5.291666666666667000
          174.625000000000000000)
        Alignment = taRightJustify
        AlignToBand = True
        AutoSize = True
        Color = clWhite
        Data = qrsPageNumber
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = 'Pag.: '
        Transparent = False
        FontSize = 8
      end
      object QRShape1: TQRShape
        Left = 0
        Top = 53
        Width = 719
        Height = 6
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          15.875000000000000000
          0.000000000000000000
          140.229166666666700000
          1902.354166666667000000)
        Shape = qrsHorLine
      end
    end
    object ColumnHeaderBand1: TQRBand
      Left = 38
      Top = 115
      Width = 718
      Height = 20
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = True
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ForceNewColumn = False
      ForceNewPage = False
      ParentFont = False
      Size.Values = (
        52.916666666666660000
        1899.708333333333000000)
      BandType = rbColumnHeader
      object QRLabel4: TQRLabel
        Left = 59
        Top = 2
        Width = 44
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          156.104166666666700000
          5.291666666666667000
          116.416666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'N'#186' S'#233'rie'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel5: TQRLabel
        Left = 120
        Top = 2
        Width = 49
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          317.500000000000000000
          5.291666666666667000
          129.645833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Tipo/Cap'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel6: TQRLabel
        Left = 176
        Top = 2
        Width = 58
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          465.666666666666700000
          5.291666666666667000
          153.458333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Fabricante'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel7: TQRLabel
        Left = 264
        Top = 2
        Width = 45
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          698.500000000000000000
          5.291666666666667000
          119.062500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Ano Fab'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel8: TQRLabel
        Left = 328
        Top = 2
        Width = 25
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          867.833333333333500000
          5.291666666666667000
          66.145833333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Selo'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel9: TQRLabel
        Left = 408
        Top = 2
        Width = 58
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1079.500000000000000000
          5.291666666666667000
          153.458333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Vistoriado'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel10: TQRLabel
        Left = 504
        Top = 2
        Width = 49
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1333.500000000000000000
          5.291666666666667000
          129.645833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Vistoriar'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel11: TQRLabel
        Left = 568
        Top = 2
        Width = 71
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1502.833333333333000000
          5.291666666666667000
          187.854166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Recarregado'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel12: TQRLabel
        Left = 664
        Top = 2
        Width = 50
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1756.833333333333000000
          5.291666666666667000
          132.291666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Recargar'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel2: TQRLabel
        Left = 1
        Top = 2
        Width = 40
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          2.645833333333333000
          5.291666666666667000
          105.833333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'C'#243'digo'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
    end
    object DetailBand1: TQRBand
      Left = 38
      Top = 135
      Width = 718
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ForceNewColumn = False
      ForceNewPage = False
      ParentFont = False
      Size.Values = (
        42.333333333333340000
        1899.708333333333000000)
      BandType = rbDetail
      object QRDBText1: TQRDBText
        Left = 59
        Top = 0
        Width = 55
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          156.104166666666700000
          0.000000000000000000
          145.520833333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = FpesquisaRelGeraldeServico.Qpesquisa
        DataField = 'NUMERO_SERIE'
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText2: TQRDBText
        Left = 120
        Top = 0
        Width = 23
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          317.500000000000000000
          0.000000000000000000
          60.854166666666680000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = FpesquisaRelGeraldeServico.Qpesquisa
        DataField = 'TIPO'
        OnPrint = QRDBText2Print
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText3: TQRDBText
        Left = 176
        Top = 0
        Width = 60
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          465.666666666666700000
          0.000000000000000000
          158.750000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = FpesquisaRelGeraldeServico.Qpesquisa
        DataField = 'DESCRICAO'
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText4: TQRDBText
        Left = 249
        Top = 0
        Width = 73
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          658.812500000000000000
          0.000000000000000000
          193.145833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = FpesquisaRelGeraldeServico.Qpesquisa
        DataField = 'ANO_FABRICACAO'
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText5: TQRDBText
        Left = 328
        Top = 0
        Width = 28
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          867.833333333333500000
          0.000000000000000000
          74.083333333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = FpesquisaRelGeraldeServico.Qpesquisa
        DataField = 'SELO'
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText6: TQRDBText
        Left = 389
        Top = 0
        Width = 77
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1029.229166666667000000
          0.000000000000000000
          203.729166666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = FpesquisaRelGeraldeServico.Qpesquisa
        DataField = 'ULTIMA_VISITA'
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText7: TQRDBText
        Left = 476
        Top = 0
        Width = 77
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1259.416666666667000000
          0.000000000000000000
          203.729166666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = FpesquisaRelGeraldeServico.Qpesquisa
        DataField = 'ULTIMA_VISITA'
        OnPrint = QRDBText7Print
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText8: TQRDBText
        Left = 573
        Top = 0
        Width = 66
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1516.062500000000000000
          0.000000000000000000
          174.625000000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = FpesquisaRelGeraldeServico.Qpesquisa
        DataField = 'PREV_SAIDA'
        OnPrint = QRDBText8Print
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText9: TQRDBText
        Left = 647
        Top = 0
        Width = 66
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1711.854166666667000000
          0.000000000000000000
          174.625000000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = FpesquisaRelGeraldeServico.Qpesquisa
        DataField = 'PREV_SAIDA'
        OnPrint = QRDBText9Print
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText12: TQRDBText
        Left = 1
        Top = 0
        Width = 55
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          2.645833333333333000
          0.000000000000000000
          145.520833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = FpesquisaRelGeraldeServico.Qpesquisa
        DataField = 'CODIGO'
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
    end
    object PageFooterBand1: TQRBand
      Left = 38
      Top = 151
      Width = 718
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ForceNewColumn = False
      ForceNewPage = False
      ParentFont = False
      Size.Values = (
        55.562500000000000000
        1899.708333333333000000)
      BandType = rbPageFooter
    end
    object RLReport1: TRLReport
      Left = 0
      Top = 200
      Width = 794
      Height = 1123
      DataSource = FpesquisaRelGeraldeServico.dsPesquisa
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      object RLBand1: TRLBand
        Left = 38
        Top = 38
        Width = 718
        Height = 53
        BandType = btHeader
        object RLLabel1: TRLLabel
          Left = 304
          Top = 15
          Width = 124
          Height = 16
          Caption = 'Extintores por RGS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLSystemInfo1: TRLSystemInfo
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
        object RLSystemInfo2: TRLSystemInfo
          Left = 617
          Top = 16
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
        object rlEmpresa: TRLLabel
          Left = 58
          Top = 1
          Width = 68
          Height = 16
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object rlEndereco: TRLLabel
          Left = 65
          Top = 17
          Width = 52
          Height = 14
          Alignment = taCenter
          Caption = 'rlEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object rlComplemento: TRLLabel
          Left = 65
          Top = 31
          Width = 52
          Height = 14
          Alignment = taCenter
          Caption = 'rlEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
      object RLGroup1: TRLGroup
        Left = 38
        Top = 91
        Width = 718
        Height = 76
        DataFields = 'RGS'
        object RLBand2: TRLBand
          Left = 0
          Top = 16
          Width = 718
          Height = 16
          BandType = btColumnHeader
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          object RLLabel2: TRLLabel
            Left = 48
            Top = 0
            Width = 46
            Height = 14
            Caption = 'N'#186' S'#233'rie'
          end
          object RLLabel3: TRLLabel
            Left = 111
            Top = 0
            Width = 51
            Height = 14
            Caption = 'Tipo/Cap'
          end
          object RLLabel4: TRLLabel
            Left = 170
            Top = 0
            Width = 60
            Height = 14
            Caption = 'Fabricante'
          end
          object RLLabel5: TRLLabel
            Left = 264
            Top = 0
            Width = 61
            Height = 14
            Caption = 'Fabrica'#231#227'o'
          end
          object RLLabel6: TRLLabel
            Left = 338
            Top = 0
            Width = 27
            Height = 14
            Caption = 'Selo'
          end
          object RLLabel7: TRLLabel
            Left = 435
            Top = 0
            Width = 48
            Height = 14
            Caption = 'Testado'
          end
          object RLLabel8: TRLLabel
            Left = 494
            Top = 0
            Width = 66
            Height = 14
            Caption = 'Prox. Teste'
          end
          object RLLabel9: TRLLabel
            Left = 567
            Top = 0
            Width = 73
            Height = 14
            Caption = 'Recarregado'
          end
          object RLLabel10: TRLLabel
            Left = 650
            Top = 0
            Width = 64
            Height = 14
            Caption = 'Recarregar'
          end
          object RLLabel13: TRLLabel
            Left = 1
            Top = 0
            Width = 42
            Height = 14
            Caption = 'C'#243'digo'
          end
        end
        object RLBand3: TRLBand
          Left = 0
          Top = 32
          Width = 718
          Height = 16
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          object RLDBText1: TRLDBText
            Left = 48
            Top = 0
            Width = 57
            Height = 14
            AutoSize = False
            DataField = 'NUMERO_SERIE'
            DataSource = FpesquisaRelGeraldeServico.dsPesquisa
          end
          object RLDBText2: TRLDBText
            Left = 259
            Top = 0
            Width = 65
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'ANO_FABRICACAO'
            DataSource = FpesquisaRelGeraldeServico.dsPesquisa
          end
          object RLDBText3: TRLDBText
            Left = 338
            Top = 0
            Width = 57
            Height = 14
            AutoSize = False
            DataField = 'SELO'
            DataSource = FpesquisaRelGeraldeServico.dsPesquisa
          end
          object RLDBText4: TRLDBText
            Left = 419
            Top = 0
            Width = 65
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'ULTIMA_VISITA'
            DataSource = FpesquisaRelGeraldeServico.dsPesquisa
          end
          object RLDBText5: TRLDBText
            Left = 495
            Top = 0
            Width = 65
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'ULTIMA_VISITA'
            DataSource = FpesquisaRelGeraldeServico.dsPesquisa
            BeforePrint = RLDBText5BeforePrint
          end
          object RLDBText6: TRLDBText
            Left = 575
            Top = 0
            Width = 65
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'PREV_SAIDA'
            DataSource = FpesquisaRelGeraldeServico.dsPesquisa
            BeforePrint = RLDBText6BeforePrint
          end
          object RLDBText7: TRLDBText
            Left = 649
            Top = 0
            Width = 65
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'PREV_SAIDA'
            DataSource = FpesquisaRelGeraldeServico.dsCliente
            BeforePrint = RLDBText7BeforePrint
          end
          object RLDBText8: TRLDBText
            Left = 111
            Top = 0
            Width = 25
            Height = 14
            DataField = 'TIPO'
            DataSource = FpesquisaRelGeraldeServico.dsPesquisa
            BeforePrint = RLDBText8BeforePrint
          end
          object RLDBText9: TRLDBText
            Left = 170
            Top = 0
            Width = 62
            Height = 14
            DataField = 'DESCRICAO'
            DataSource = FpesquisaRelGeraldeServico.dsPesquisa
          end
          object RLDBText12: TRLDBText
            Left = 2
            Top = 0
            Width = 43
            Height = 14
            DataField = 'CODIGO'
            DataSource = FpesquisaRelGeraldeServico.dsPesquisa
          end
        end
        object RLBand4: TRLBand
          Left = 0
          Top = 0
          Width = 718
          Height = 16
          BandType = btHeader
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = True
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Borders.FixedTop = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          object RLLabel11: TRLLabel
            Left = 2
            Top = 0
            Width = 40
            Height = 14
            Caption = 'R.G.S.: '
          end
          object RLDBText10: TRLDBText
            Left = 43
            Top = 0
            Width = 25
            Height = 14
            DataField = 'RGS'
            DataSource = FpesquisaRelGeraldeServico.dsPesquisa
          end
          object RLLabel12: TRLLabel
            Left = 130
            Top = 0
            Width = 48
            Height = 14
            Caption = 'Cliente: '
          end
          object RLDBText11: TRLDBText
            Left = 181
            Top = 0
            Width = 88
            Height = 14
            DataField = 'RAZAO_SOCIAL'
            DataSource = FpesquisaRelGeraldeServico.dsPesquisa
          end
        end
        object RLBand5: TRLBand
          Left = 0
          Top = 48
          Width = 718
          Height = 23
          BandType = btSummary
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          object RLSystemInfo3: TRLSystemInfo
            Left = 1
            Top = -1
            Width = 218
            Height = 14
            Info = itDetailCount
            Text = 'Quantidade de Extintores: '
          end
        end
      end
    end
  end
  object RLDraftFilter1: TRLDraftFilter
    DisplayName = 'Impress'#227'o Matricial'
    Left = 328
    Top = 208
  end
end
