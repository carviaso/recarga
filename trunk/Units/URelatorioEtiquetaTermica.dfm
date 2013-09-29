object FRelatorioEtiquetaTermica: TFRelatorioEtiquetaTermica
  Left = 420
  Top = 180
  Width = 498
  Height = 433
  Caption = 'FRelatorioEtiquetaTermica'
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
    Left = 6
    Top = 3
    Width = 472
    Height = 150
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
    Page.PaperSize = Custom
    Page.Values = (
      10.000000000000000000
      330.729166666666700000
      10.000000000000000000
      1040.000000000000000000
      10.000000000000000000
      10.000000000000000000
      10.000000000000000000)
    PrinterSettings.Copies = 1
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 1
    PrinterSettings.LastPage = 3
    PrinterSettings.OutputBin = Auto
    PrintIfEmpty = True
    SnapToGrid = True
    Units = MM
    Zoom = 120
    object QRBand1: TQRBand
      Left = 5
      Top = 5
      Width = 463
      Height = 135
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        297.656250000000000000
        1020.850694444444000000)
      BandType = rbDetail
      object QRLabel17: TQRLabel
        Left = 39
        Top = 37
        Width = 76
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          33.072916666666670000
          85.989583333333320000
          81.579861111111120000
          167.569444444444400000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Extintor No.:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRLabel18: TQRLabel
        Left = 39
        Top = 51
        Width = 72
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          33.072916666666670000
          85.989583333333320000
          112.447916666666700000
          158.750000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Fabricante :'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRLabel19: TQRLabel
        Left = 39
        Top = 65
        Width = 85
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          33.072916666666670000
          85.989583333333320000
          143.315972222222200000
          187.413194444444400000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Recarregado :'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRLabel20: TQRLabel
        Left = 39
        Top = 79
        Width = 56
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          33.072916666666670000
          85.989583333333320000
          174.184027777777800000
          123.472222222222200000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Testado :'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRLabel21: TQRLabel
        Left = 39
        Top = 93
        Width = 28
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          33.072916666666670000
          85.989583333333320000
          205.052083333333300000
          61.736111111111120000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Obs:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRLabel22: TQRLabel
        Left = 259
        Top = 37
        Width = 64
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          33.072916666666670000
          571.059027777777900000
          81.579861111111120000
          141.111111111111100000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Tipo/Cap.:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRLabel23: TQRLabel
        Left = 259
        Top = 51
        Width = 34
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          33.072916666666670000
          571.059027777777900000
          112.447916666666700000
          74.965277777777790000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Selo :'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        OnPrint = QRLabel23Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRLabel24: TQRLabel
        Left = 259
        Top = 65
        Width = 60
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          33.072916666666670000
          571.059027777777900000
          143.315972222222200000
          132.291666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Recargar:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRLabel25: TQRLabel
        Left = 259
        Top = 79
        Width = 78
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          33.072916666666670000
          571.059027777777900000
          174.184027777777800000
          171.979166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Prox. Teste :'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRDBText1: TQRDBText
        Left = 120
        Top = 37
        Width = 131
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          33.072916666666670000
          264.583333333333400000
          81.579861111111120000
          288.836805555555500000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = FpesquisaRelGeraldeServico.Qpesquisa
        DataField = 'NUMERO_SERIE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRDBText2: TQRDBText
        Left = 120
        Top = 51
        Width = 131
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          33.072916666666670000
          264.583333333333400000
          112.447916666666700000
          288.836805555555500000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = FpesquisaRelGeraldeServico.Qpesquisa
        DataField = 'DESCRICAO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRDBText3: TQRDBText
        Left = 135
        Top = 65
        Width = 116
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          33.072916666666670000
          297.656250000000000000
          143.315972222222200000
          255.763888888888900000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = FpesquisaRelGeraldeServico.Qpesquisa
        DataField = 'PREV_SAIDA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        OnPrint = QRDBText3Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRDBText4: TQRDBText
        Left = 106
        Top = 79
        Width = 145
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          33.072916666666670000
          233.715277777777800000
          174.184027777777800000
          319.704861111111200000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = FpesquisaRelGeraldeServico.Qpesquisa
        DataField = 'ULTIMA_VISITA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        OnPrint = QRDBText4Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRDBText6: TQRDBText
        Left = 327
        Top = 37
        Width = 126
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          33.072916666666670000
          720.989583333333400000
          81.579861111111120000
          277.812500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = FpesquisaRelGeraldeServico.Qpesquisa
        DataField = 'TIPO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        OnPrint = QRDBText6Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRDBText7: TQRDBText
        Left = 298
        Top = 51
        Width = 155
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          33.072916666666670000
          657.048611111111000000
          112.447916666666700000
          341.753472222222200000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = FpesquisaRelGeraldeServico.Qpesquisa
        DataField = 'SELO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        OnPrint = QRDBText7Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRDBText8: TQRDBText
        Left = 327
        Top = 65
        Width = 126
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          33.072916666666670000
          720.989583333333400000
          143.315972222222200000
          277.812500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = FpesquisaRelGeraldeServico.Qpesquisa
        DataField = 'PREV_SAIDA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        OnPrint = QRDBText8Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRDBText9: TQRDBText
        Left = 346
        Top = 79
        Width = 107
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          33.072916666666670000
          762.881944444444400000
          174.184027777777800000
          235.920138888888900000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = FpesquisaRelGeraldeServico.Qpesquisa
        DataField = 'ULTIMA_VISITA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        OnPrint = QRDBText9Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRDBText5: TQRDBText
        Left = 73
        Top = 93
        Width = 179
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          33.072916666666670000
          160.954861111111100000
          205.052083333333300000
          394.670138888888900000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = FpesquisaRelGeraldeServico.Qpesquisa
        DataField = 'OBS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRLabel26: TQRLabel
        Left = 259
        Top = 93
        Width = 70
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          33.072916666666670000
          571.059027777777900000
          205.052083333333300000
          154.340277777777800000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Fabrica'#231#227'o:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRDBText11: TQRDBText
        Left = 338
        Top = 93
        Width = 107
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          33.072916666666670000
          745.243055555555600000
          205.052083333333300000
          235.920138888888900000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = FpesquisaRelGeraldeServico.Qpesquisa
        DataField = 'ANO_FABRICACAO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRLabel14: TQRLabel
        Left = 39
        Top = 23
        Width = 46
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          33.072916666666670000
          85.989583333333320000
          50.711805555555560000
          101.423611111111100000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'C'#243'digo:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRDBText12: TQRDBText
        Left = 94
        Top = 23
        Width = 95
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          33.072916666666670000
          207.256944444444400000
          50.711805555555560000
          209.461805555555600000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = FpesquisaRelGeraldeServico.Qpesquisa
        DataField = 'CODIGO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRDBText13: TQRDBText
        Left = 382
        Top = 23
        Width = 70
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          842.256944444444400000
          50.711805555555560000
          154.340277777777800000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = FpesquisaRelGeraldeServico.Qpesquisa
        DataField = 'NIVEL_MANUTENCAO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRLabel15: TQRLabel
        Left = 259
        Top = 23
        Width = 110
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          33.072916666666670000
          571.059027777777900000
          50.711805555555560000
          242.534722222222200000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Nivel Manuten'#231#227'o:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRDBText10: TQRDBText
        Left = 10
        Top = 4
        Width = 443
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          33.072916666666670000
          22.048611111111110000
          8.819444444444444000
          976.753472222222300000)
        Alignment = taCenter
        AlignToBand = True
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = FpesquisaRelGeraldeServico.Qpesquisa
        DataField = 'RAZAO_SOCIAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRDBText14: TQRDBText
        Left = 39
        Top = 112
        Width = 386
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.097222222222230000
          85.989583333333320000
          246.944444444444400000
          851.076388888889100000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = FpesquisaRelGeraldeServico.Qpesquisa
        DataField = 'CODIGO_BARRA'
        OnPrint = QRDBText14Print
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
  end
  object RLReport1: TRLReport
    Left = 8
    Top = 160
    Width = 386
    Height = 113
    DataSource = dsRelatorio
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Margins.LeftMargin = 1.000000000000000000
    Margins.TopMargin = 1.000000000000000000
    Margins.RightMargin = 1.000000000000000000
    Margins.BottomMargin = 1.000000000000000000
    PageSetup.PaperSize = fpCustom
    PageSetup.PaperWidth = 102.100000000000000000
    PageSetup.PaperHeight = 29.800000000000000000
    object RLBand1: TRLBand
      Left = 4
      Top = 4
      Width = 378
      Height = 105
      object RLDBBarcode2: TRLDBBarcode
        Left = 16
        Top = 87
        Width = 348
        Height = 16
        Alignment = taCenter
        AutoSize = False
        DataField = 'CODIGO_BARRA'
        DataSource = dsRelatorio
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Margins.LeftMargin = 1.000000000000000000
        Margins.RightMargin = 1.000000000000000000
        ParentFont = False
      end
      object RLDBText2: TRLDBText
        Left = 144
        Top = 0
        Width = 86
        Height = 14
        Alignment = taCenter
        DataField = 'RAZAO_SOCIAL'
        DataSource = dsRelatorio
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object rlbl2: TRLLabel
        Left = 1
        Top = 14
        Width = 45
        Height = 14
        Caption = 'C'#243'digo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object rlbl3: TRLLabel
        Left = 1
        Top = 28
        Width = 63
        Height = 14
        Caption = 'Estintor n'#186':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object rlbl4: TRLLabel
        Left = 1
        Top = 41
        Width = 63
        Height = 14
        Caption = 'Fabricante:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object rlbl5: TRLLabel
        Left = 1
        Top = 54
        Width = 76
        Height = 14
        Caption = 'Recarregado:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object rlbl6: TRLLabel
        Left = 1
        Top = 68
        Width = 52
        Height = 14
        Caption = 'Testado:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText3: TRLDBText
        Left = 46
        Top = 14
        Width = 93
        Height = 14
        AutoSize = False
        DataField = 'CODIGO_BARRA'
        DataSource = dsRelatorio
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText4: TRLDBText
        Left = 64
        Top = 28
        Width = 56
        Height = 14
        AutoSize = False
        DataField = 'NUMERO_SERIE'
        DataSource = dsRelatorio
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText5: TRLDBText
        Left = 64
        Top = 41
        Width = 56
        Height = 14
        AutoSize = False
        DataField = 'DESCRICAO'
        DataSource = dsRelatorio
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText6: TRLDBText
        Left = 77
        Top = 54
        Width = 43
        Height = 14
        AutoSize = False
        DataField = 'PREV_SAIDA'
        DataSource = dsRelatorio
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText7: TRLDBText
        Left = 53
        Top = 68
        Width = 67
        Height = 14
        AutoSize = False
        DataField = 'ULTIMA_VISITA'
        DataSource = dsRelatorio
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object rlbl1: TRLLabel
        Left = 142
        Top = 14
        Width = 102
        Height = 14
        Caption = 'Nivel Manuten'#231#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object rlbl7: TRLLabel
        Left = 142
        Top = 28
        Width = 57
        Height = 14
        Caption = 'Tipo/Cap.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object rlbl8: TRLLabel
        Left = 142
        Top = 41
        Width = 55
        Height = 14
        Caption = 'Recargar:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object rlbl9: TRLLabel
        Left = 142
        Top = 54
        Width = 72
        Height = 14
        Caption = 'Prox. Teste :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object rlbl10: TRLLabel
        Left = 142
        Top = 68
        Width = 64
        Height = 14
        Caption = 'Fabrica'#231#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText1: TRLDBText
        Left = 244
        Top = 14
        Width = 26
        Height = 14
        AutoSize = False
        DataField = 'NIVEL_MANUTENCAO'
        DataSource = dsRelatorio
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText8: TRLDBText
        Left = 199
        Top = 28
        Width = 71
        Height = 14
        AutoSize = False
        DataField = 'TIPO'
        DataSource = dsRelatorio
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText9: TRLDBText
        Left = 197
        Top = 41
        Width = 73
        Height = 14
        AutoSize = False
        DataField = 'DESCRICAO'
        DataSource = dsRelatorio
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText10: TRLDBText
        Left = 215
        Top = 54
        Width = 55
        Height = 14
        AutoSize = False
        DataField = 'PREV_SAIDA'
        DataSource = dsRelatorio
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBText11: TRLDBText
        Left = 206
        Top = 68
        Width = 64
        Height = 14
        AutoSize = False
        DataField = 'ULTIMA_VISITA'
        DataSource = dsRelatorio
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object rlbl11: TRLLabel
        Left = 272
        Top = 14
        Width = 30
        Height = 14
        Caption = 'Selo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText12: TRLDBText
        Left = 303
        Top = 14
        Width = 72
        Height = 14
        AutoSize = False
        DataField = 'SELO'
        DataSource = dsRelatorio
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object rlbl12: TRLLabel
        Left = 272
        Top = 28
        Width = 28
        Height = 14
        Caption = 'OBS:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText13: TRLDBText
        Left = 298
        Top = 28
        Width = 76
        Height = 46
        AutoSize = False
        DataField = 'OBS'
        DataSource = dsRelatorio
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
  end
  object dbgrd1: TDBGrid
    Left = 168
    Top = 304
    Width = 320
    Height = 120
    DataSource = dsRelatorio
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object dsRelatorio: TDataSource
    AutoEdit = False
    DataSet = FpesquisaRelGeraldeServico.Qpesquisa
    Left = 96
    Top = 304
  end
end
