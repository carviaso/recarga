object FRGeralServico: TFRGeralServico
  Left = 203
  Top = 162
  Width = 1077
  Height = 455
  Caption = 'Relat'#243'rio Geral de Servi'#231'o'
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
    Top = 0
    Width = 1123
    Height = 794
    DataSource = dsExtintorRGS
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Margins.LeftMargin = 6.000000000000000000
    Margins.TopMargin = 5.000000000000000000
    Margins.RightMargin = 6.000000000000000000
    Margins.BottomMargin = 5.000000000000000000
    PageSetup.Orientation = poLandscape
    ShowProgress = False
    object RLBand1: TRLBand
      Left = 23
      Top = 19
      Width = 1077
      Height = 131
      BandType = btHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = True
      Borders.DrawTop = True
      Borders.DrawRight = True
      Borders.DrawBottom = False
      object rlDataEntrada: TRLLabel
        Left = 956
        Top = 22
        Width = 92
        Height = 16
        Alignment = taCenter
        Caption = '                      '
      end
      object rlDataPrevSaida: TRLLabel
        Left = 956
        Top = 39
        Width = 92
        Height = 16
        Alignment = taCenter
        Caption = '                      '
      end
      object rlDataSaida: TRLLabel
        Left = 956
        Top = 56
        Width = 92
        Height = 16
        Alignment = taCenter
        Caption = '                      '
      end
      object rlnCaixa: TRLLabel
        Left = 956
        Top = 73
        Width = 92
        Height = 16
        Alignment = taCenter
        Caption = '                      '
      end
      object RLLabel55: TRLLabel
        Left = 351
        Top = 25
        Width = 398
        Height = 38
        Caption = 'Relat'#243'rio Geral de Servi'#231'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -27
        Font.Name = 'Arial Black'
        Font.Style = []
        ParentFont = False
      end
      object RLDraw56: TRLDraw
        Left = 808
        Top = -2
        Width = 1
        Height = 93
      end
      object rlRGS2: TRLLabel
        Left = 812
        Top = 3
        Width = 90
        Height = 16
        Caption = 'N'#250'mero RGS:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDraw57: TRLDraw
        Left = 809
        Top = 20
        Width = 275
        Height = 2
      end
      object RLLabel57: TRLLabel
        Left = 834
        Top = 22
        Width = 80
        Height = 16
        Caption = 'Data Entrada'
      end
      object RLLabel58: TRLLabel
        Left = 813
        Top = 39
        Width = 101
        Height = 16
        Caption = 'Data Prev. Sa'#237'da'
      end
      object RLLabel59: TRLLabel
        Left = 846
        Top = 56
        Width = 68
        Height = 16
        Caption = 'Data Sa'#237'da'
      end
      object RLLabel60: TRLLabel
        Left = 857
        Top = 73
        Width = 57
        Height = 16
        Caption = 'No Caixa'
      end
      object RLDraw58: TRLDraw
        Left = 809
        Top = 38
        Width = 275
        Height = 1
      end
      object RLDraw59: TRLDraw
        Left = 809
        Top = 55
        Width = 275
        Height = 1
      end
      object RLDraw60: TRLDraw
        Left = 808
        Top = 72
        Width = 275
        Height = 1
      end
      object RLDraw61: TRLDraw
        Left = 920
        Top = 21
        Width = 1
        Height = 69
      end
      object RLDraw62: TRLDraw
        Left = 0
        Top = 0
        Width = 297
        Height = 91
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
      object RLDraw63: TRLDraw
        Left = 0
        Top = 88
        Width = 1077
        Height = 42
      end
      object RLDraw64: TRLDraw
        Left = 1
        Top = 109
        Width = 1083
        Height = 1
      end
      object rlCliente: TRLLabel
        Left = 3
        Top = 90
        Width = 48
        Height = 16
        Caption = 'Cliente:'
      end
      object rlEnderecoCliente: TRLLabel
        Left = 3
        Top = 111
        Width = 63
        Height = 16
        Caption = 'Endere'#231'o:'
      end
      object RLDraw65: TRLDraw
        Left = 472
        Top = 89
        Width = 1
        Height = 40
      end
      object rlCpfCnpjCliente: TRLLabel
        Left = 475
        Top = 90
        Width = 79
        Height = 16
        Caption = 'CPF / CNPJ:'
      end
      object rlCidadeCliente: TRLLabel
        Left = 810
        Top = 111
        Width = 48
        Height = 16
        Caption = 'Cidade:'
      end
      object RLDraw66: TRLDraw
        Left = 808
        Top = 89
        Width = 1
        Height = 40
      end
      object rlFoneCliente: TRLLabel
        Left = 811
        Top = 90
        Width = 56
        Height = 16
        Caption = 'Telefone:'
      end
      object rlBairroCliente: TRLLabel
        Left = 475
        Top = 111
        Width = 42
        Height = 16
        Caption = 'Bairro:'
      end
      object rlRGS: TRLLabel
        Left = 903
        Top = 3
        Width = 90
        Height = 16
        Alignment = taRightJustify
        Caption = 'N'#250'mero RGS:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object rlRepresentante: TRLLabel
        Left = 1040
        Top = 3
        Width = 34
        Height = 16
        Alignment = taRightJustify
        Caption = 'REP:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand2: TRLBand
      Left = 23
      Top = 150
      Width = 1077
      Height = 33
      BandType = btColumnHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = True
      Borders.DrawTop = True
      Borders.DrawRight = True
      Borders.DrawBottom = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      object RLLabel1: TRLLabel
        Left = 22
        Top = 1
        Width = 23
        Height = 14
        Caption = 'Tipo'
      end
      object RLLabel2: TRLLabel
        Left = 20
        Top = 17
        Width = 25
        Height = 14
        Caption = 'Cap.'
      end
      object RLLabel3: TRLLabel
        Left = 63
        Top = 1
        Width = 57
        Height = 14
        Caption = 'Fabricante.'
      end
      object RLLabel4: TRLLabel
        Left = 73
        Top = 17
        Width = 33
        Height = 14
        Caption = 'Marca'
      end
      object RLLabel5: TRLLabel
        Left = 133
        Top = 1
        Width = 23
        Height = 14
        Caption = 'Ano'
      end
      object RLLabel6: TRLLabel
        Left = 133
        Top = 18
        Width = 24
        Height = 14
        Caption = 'Fab.'
      end
      object RLLabel7: TRLLabel
        Left = 169
        Top = 1
        Width = 31
        Height = 14
        Caption = 'Ultima'
      end
      object RLLabel8: TRLLabel
        Left = 165
        Top = 18
        Width = 40
        Height = 14
        Caption = 'Vistoria'
      end
      object RLLabel9: TRLLabel
        Left = 211
        Top = 1
        Width = 43
        Height = 14
        Caption = 'N'#186' S'#233'rie'
      end
      object RLLabel10: TRLLabel
        Left = 212
        Top = 18
        Width = 39
        Height = 14
        Caption = 'Extintor'
      end
      object RLLabel11: TRLLabel
        Left = 268
        Top = 1
        Width = 18
        Height = 14
        Caption = 'N'#186' '
      end
      object RLLabel12: TRLLabel
        Left = 259
        Top = 18
        Width = 36
        Height = 14
        Caption = 'Projeto'
      end
      object RLLabel13: TRLLabel
        Left = 349
        Top = 1
        Width = 26
        Height = 14
        Caption = 'Nivel'
      end
      object RLLabel14: TRLLabel
        Left = 387
        Top = 1
        Width = 23
        Height = 14
        Caption = 'Pint.'
      end
      object RLLabel15: TRLLabel
        Left = 415
        Top = 1
        Width = 34
        Height = 14
        Caption = 'Press.'
      end
      object RLLabel16: TRLLabel
        Left = 418
        Top = 18
        Width = 28
        Height = 14
        Caption = 'Trab.'
      end
      object RLLabel17: TRLLabel
        Left = 497
        Top = 1
        Width = 25
        Height = 14
        Caption = 'Tara'
      end
      object RLLabel18: TRLLabel
        Left = 569
        Top = 1
        Width = 63
        Height = 14
        Caption = 'Extintor (Kg)'
      end
      object RLLabel19: TRLLabel
        Left = 566
        Top = 18
        Width = 31
        Height = 14
        Caption = 'Vazio'
      end
      object RLLabel20: TRLLabel
        Left = 606
        Top = 18
        Width = 30
        Height = 14
        Caption = 'Cheio'
      end
      object RLLabel21: TRLLabel
        Left = 1026
        Top = 1
        Width = 18
        Height = 14
        Caption = 'N'#186' '
      end
      object RLLabel22: TRLLabel
        Left = 1024
        Top = 18
        Width = 24
        Height = 14
        Caption = 'Selo'
      end
      object RLLabel23: TRLLabel
        Left = 662
        Top = 1
        Width = 48
        Height = 14
        Caption = 'Cubagem'
      end
      object RLLabel24: TRLLabel
        Left = 639
        Top = 18
        Width = 31
        Height = 14
        Caption = 'Vazio'
      end
      object RLLabel25: TRLLabel
        Left = 673
        Top = 18
        Width = 30
        Height = 14
        Caption = 'Cheio'
      end
      object RLLabel26: TRLLabel
        Left = 747
        Top = 1
        Width = 100
        Height = 14
        Caption = 'Ensaio Alta Pressao'
      end
      object RLLabel27: TRLLabel
        Left = 455
        Top = 18
        Width = 35
        Height = 14
        Caption = 'Ensaio'
      end
      object RLLabel28: TRLLabel
        Left = 740
        Top = 18
        Width = 15
        Height = 14
        Caption = 'ET'
      end
      object RLLabel29: TRLLabel
        Left = 767
        Top = 18
        Width = 15
        Height = 14
        Caption = 'EP'
      end
      object RLLabel30: TRLLabel
        Left = 788
        Top = 18
        Width = 30
        Height = 14
        Caption = 'EP/ET'
      end
      object RLLabel31: TRLLabel
        Left = 834
        Top = 18
        Width = 15
        Height = 14
        Caption = 'EE'
      end
      object RLLabel32: TRLLabel
        Left = 866
        Top = 1
        Width = 31
        Height = 14
        Caption = 'Perda'
      end
      object RLLabel33: TRLLabel
        Left = 905
        Top = 1
        Width = 25
        Height = 14
        Caption = 'Res.'
      end
      object RLLabel34: TRLLabel
        Left = 949
        Top = 1
        Width = 34
        Height = 14
        Caption = 'Motivo'
      end
      object RLDraw1: TRLDraw
        Left = 12
        Top = 16
        Width = 1072
        Height = 1
        DrawKind = dkLine
      end
      object RLDraw2: TRLDraw
        Left = 0
        Top = 0
        Width = 15
        Height = 33
        Brush.Color = clBlack
        Color = clBlack
        ParentColor = False
        Transparent = False
      end
      object RLDraw3: TRLDraw
        Left = 58
        Top = 0
        Width = 2
        Height = 34
      end
      object RLDraw4: TRLDraw
        Left = 125
        Top = -2
        Width = 2
        Height = 34
      end
      object RLDraw5: TRLDraw
        Left = 161
        Top = -2
        Width = 2
        Height = 34
      end
      object RLDraw6: TRLDraw
        Left = 206
        Top = -2
        Width = 2
        Height = 34
      end
      object RLDraw7: TRLDraw
        Left = 254
        Top = -2
        Width = 2
        Height = 34
      end
      object RLDraw8: TRLDraw
        Left = 300
        Top = -2
        Width = 2
        Height = 34
      end
      object RLDraw9: TRLDraw
        Left = 383
        Top = -2
        Width = 2
        Height = 34
      end
      object RLDraw10: TRLDraw
        Left = 412
        Top = -2
        Width = 2
        Height = 34
      end
      object RLDraw11: TRLDraw
        Left = 524
        Top = 1
        Width = 2
        Height = 34
      end
      object RLDraw12: TRLDraw
        Left = 562
        Top = -2
        Width = 2
        Height = 34
      end
      object RLDraw13: TRLDraw
        Left = 637
        Top = -2
        Width = 2
        Height = 34
      end
      object RLDraw14: TRLDraw
        Left = 998
        Top = -2
        Width = 2
        Height = 34
      end
      object RLDraw15: TRLDraw
        Left = 730
        Top = -2
        Width = 2
        Height = 34
      end
      object RLDraw16: TRLDraw
        Left = 859
        Top = -2
        Width = 2
        Height = 34
      end
      object RLDraw17: TRLDraw
        Left = 900
        Top = -2
        Width = 2
        Height = 34
      end
      object RLDraw18: TRLDraw
        Left = 933
        Top = -2
        Width = 2
        Height = 34
      end
      object RLDraw19: TRLDraw
        Left = 1083
        Top = -2
        Width = 1
        Height = 34
      end
      object RLDraw22: TRLDraw
        Left = 601
        Top = 17
        Width = 1
        Height = 15
      end
      object RLDraw25: TRLDraw
        Left = 760
        Top = 17
        Width = 1
        Height = 15
      end
      object RLDraw26: TRLDraw
        Left = 786
        Top = 17
        Width = 1
        Height = 15
      end
      object RLDraw27: TRLDraw
        Left = 823
        Top = 17
        Width = 1
        Height = 15
      end
      object RLLabel35: TRLLabel
        Left = 345
        Top = 17
        Width = 35
        Height = 14
        Caption = 'Manut.'
      end
      object RLDraw20: TRLDraw
        Left = 671
        Top = 17
        Width = 1
        Height = 15
      end
      object RLDraw21: TRLDraw
        Left = 705
        Top = 17
        Width = 1
        Height = 15
      end
      object RLLabel36: TRLLabel
        Left = 714
        Top = 17
        Width = 10
        Height = 14
        Caption = 'R'
        BeforePrint = RLLabel36BeforePrint
      end
      object RLLabel37: TRLLabel
        Left = 936
        Top = 17
        Width = 62
        Height = 14
        Caption = 'Reprova'#231#227'o'
      end
      object RLDraw23: TRLDraw
        Left = 451
        Top = -2
        Width = 2
        Height = 34
      end
      object RLLabel56: TRLLabel
        Left = 455
        Top = 1
        Width = 34
        Height = 14
        Caption = 'Press.'
      end
      object RLDraw24: TRLDraw
        Left = 492
        Top = -2
        Width = 2
        Height = 34
      end
      object RLLabel62: TRLLabel
        Left = 530
        Top = 2
        Width = 25
        Height = 14
        Caption = 'Cap.'
      end
      object RLLabel63: TRLLabel
        Left = 530
        Top = 18
        Width = 19
        Height = 14
        Caption = 'Ltr.'
      end
      object RLDraw67: TRLDraw
        Left = 342
        Top = -2
        Width = 2
        Height = 34
      end
      object RLLabel64: TRLLabel
        Left = 309
        Top = 1
        Width = 24
        Height = 14
        Alignment = taCenter
        Caption = 'NBR'
      end
    end
    object RLBand3: TRLBand
      Left = 23
      Top = 183
      Width = 1077
      Height = 19
      Borders.Sides = sdCustom
      Borders.DrawLeft = True
      Borders.DrawTop = False
      Borders.DrawRight = True
      Borders.DrawBottom = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      object RLDraw28: TRLDraw
        Left = 0
        Top = -11
        Width = 2
        Height = 34
      end
      object RLDraw29: TRLDraw
        Left = 125
        Top = -13
        Width = 2
        Height = 34
      end
      object RLDraw30: TRLDraw
        Left = 161
        Top = -13
        Width = 2
        Height = 34
      end
      object RLDraw31: TRLDraw
        Left = 206
        Top = -13
        Width = 2
        Height = 34
      end
      object RLDraw32: TRLDraw
        Left = 254
        Top = -13
        Width = 2
        Height = 34
      end
      object RLDraw33: TRLDraw
        Left = 300
        Top = -13
        Width = 2
        Height = 34
      end
      object RLDraw34: TRLDraw
        Left = 383
        Top = -13
        Width = 2
        Height = 34
      end
      object RLDraw35: TRLDraw
        Left = 412
        Top = -13
        Width = 2
        Height = 34
      end
      object RLDraw36: TRLDraw
        Left = 451
        Top = -13
        Width = 2
        Height = 34
      end
      object RLDraw37: TRLDraw
        Left = 562
        Top = -13
        Width = 2
        Height = 34
      end
      object RLDraw38: TRLDraw
        Left = 637
        Top = -19
        Width = 2
        Height = 38
      end
      object RLDraw40: TRLDraw
        Left = 730
        Top = -17
        Width = 2
        Height = 36
      end
      object RLDraw41: TRLDraw
        Left = 859
        Top = -13
        Width = 2
        Height = 34
      end
      object RLDraw42: TRLDraw
        Left = 900
        Top = -13
        Width = 2
        Height = 34
      end
      object RLDraw45: TRLDraw
        Left = 601
        Top = -2
        Width = 1
        Height = 21
      end
      object RLDraw46: TRLDraw
        Left = 671
        Top = -2
        Width = 1
        Height = 22
      end
      object RLDraw48: TRLDraw
        Left = 760
        Top = -8
        Width = 1
        Height = 32
      end
      object RLDraw49: TRLDraw
        Left = 786
        Top = -8
        Width = 1
        Height = 32
      end
      object RLDraw50: TRLDraw
        Left = 823
        Top = -1
        Width = 1
        Height = 22
      end
      object RLDraw51: TRLDraw
        Left = 933
        Top = -13
        Width = 2
        Height = 34
      end
      object RLDraw52: TRLDraw
        Left = 14
        Top = 0
        Width = 1
        Height = 23
      end
      object RLDBText1: TRLDBText
        Left = 18
        Top = 3
        Width = 41
        Height = 14
        AutoSize = False
        DataField = 'TIPO'
        DataSource = dsExtintorRGS
        BeforePrint = RLDBText1BeforePrint
      end
      object RLDraw55: TRLDraw
        Left = 58
        Top = -14
        Width = 2
        Height = 34
      end
      object RLDBText2: TRLDBText
        Left = 59
        Top = 3
        Width = 65
        Height = 14
        AutoSize = False
        DataField = 'FABRICANTE'
        DataSource = dsExtintorRGS
      end
      object RLDBText3: TRLDBText
        Left = 129
        Top = 3
        Width = 29
        Height = 14
        AutoSize = False
        DataField = 'ANO_FABRICACAO'
        DataSource = dsExtintorRGS
      end
      object RLDBText4: TRLDBText
        Left = 169
        Top = 3
        Width = 31
        Height = 14
        AutoSize = False
        DataField = 'ULTIMA_VISITA'
        DataSource = dsExtintorRGS
      end
      object RLDBText5: TRLDBText
        Left = 209
        Top = 3
        Width = 44
        Height = 14
        AutoSize = False
        DataField = 'NUMERO_SERIE'
        DataSource = dsExtintorRGS
      end
      object RLDBText6: TRLDBText
        Left = 259
        Top = 3
        Width = 37
        Height = 14
        AutoSize = False
        DataField = 'NUMERO_PROJETO'
        DataSource = dsExtintorRGS
      end
      object RLDBText9: TRLDBText
        Left = 352
        Top = 3
        Width = 24
        Height = 14
        Alignment = taCenter
        AutoSize = False
        DataField = 'NIVEL_MANUTENCAO'
        DataSource = dsExtintorRGS
      end
      object RLDBText10: TRLDBText
        Left = 387
        Top = 3
        Width = 24
        Height = 14
        Alignment = taCenter
        AutoSize = False
        DataField = 'PINTURA'
        DataSource = dsExtintorRGS
      end
      object RLDBText11: TRLDBText
        Left = 419
        Top = 3
        Width = 24
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'PRESSAO_TRABALHO'
        DataSource = dsExtintorRGS
      end
      object RLDBText12: TRLDBText
        Left = 497
        Top = 3
        Width = 25
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'TARA'
        DataSource = dsExtintorRGS
      end
      object RLDBText13: TRLDBText
        Left = 640
        Top = 3
        Width = 27
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'PESO_VAZIO_CO2'
        DataSource = dsExtintorRGS
        BeforePrint = rldbPesoExtintorVazioBeforePrint
      end
      object RLDBText14: TRLDBText
        Left = 674
        Top = 3
        Width = 29
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'PESO_CHEIO_CO2'
        DataSource = dsExtintorRGS
        BeforePrint = rldbPesoExtintorVazioBeforePrint
      end
      object RLDBText15: TRLDBText
        Left = 1006
        Top = 3
        Width = 66
        Height = 14
        AutoSize = False
        DataField = 'SELO'
        DataSource = dsExtintorRGS
      end
      object rldbPesoExtintorVazio: TRLDBText
        Left = 565
        Top = 3
        Width = 34
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'PESO_VAZIO'
        DataSource = dsExtintorRGS
        BeforePrint = rldbPesoExtintorVazioBeforePrint
      end
      object RLDBText17: TRLDBText
        Left = 604
        Top = 3
        Width = 31
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'PESO_CHEIO'
        DataSource = dsExtintorRGS
        BeforePrint = rldbPesoExtintorVazioBeforePrint
      end
      object RLDBText18: TRLDBText
        Left = 457
        Top = 3
        Width = 31
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'PRESSAO_TESTE'
        DataSource = dsExtintorRGS
      end
      object RLDBText19: TRLDBText
        Left = 734
        Top = 3
        Width = 24
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'ET'
        DataSource = dsExtintorRGS
        BeforePrint = RLDBText19BeforePrint
      end
      object rldbEp: TRLDBText
        Left = 762
        Top = 3
        Width = 24
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'EP'
        DataSource = dsExtintorRGS
        BeforePrint = rldbPesoExtintorVazioBeforePrint
      end
      object RLDBText21: TRLDBText
        Left = 788
        Top = 3
        Width = 35
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'ET_DIV_EP'
        DataSource = dsExtintorRGS
        BeforePrint = rldbPesoExtintorVazioBeforePrint
      end
      object RLDBText22: TRLDBText
        Left = 828
        Top = 3
        Width = 30
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'ET_SUB_EP'
        DataSource = dsExtintorRGS
        BeforePrint = rldbPesoExtintorVazioBeforePrint
      end
      object RLDBText23: TRLDBText
        Left = 865
        Top = 3
        Width = 32
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'RS_PERDA'
        DataSource = dsExtintorRGS
        BeforePrint = rldbPesoExtintorVazioBeforePrint
      end
      object rldbResultado: TRLDBText
        Left = 905
        Top = 3
        Width = 24
        Height = 14
        Alignment = taCenter
        AutoSize = False
        DataField = 'RS'
        DataSource = dsExtintorRGS
      end
      object rldbMotivo: TRLDBText
        Left = 937
        Top = 3
        Width = 60
        Height = 14
        AutoSize = False
        DataField = 'MOTIVO'
        DataSource = dsExtintorRGS
        BeforePrint = rldbMotivoBeforePrint
      end
      object RLDBResult1: TRLDBResult
        Left = 0
        Top = 3
        Width = 19
        Height = 14
        AutoSize = False
        DataField = 'CODIGO'
        DataSource = dsExtintorRGS
        Info = riCount
      end
      object RLDraw43: TRLDraw
        Left = 705
        Top = 0
        Width = 1
        Height = 18
      end
      object RLDraw44: TRLDraw
        Left = 998
        Top = -16
        Width = 2
        Height = 34
      end
      object RLDraw39: TRLDraw
        Left = 492
        Top = -16
        Width = 2
        Height = 34
      end
      object RLDraw47: TRLDraw
        Left = 524
        Top = -16
        Width = 2
        Height = 34
      end
      object RLDBText7: TRLDBText
        Left = 531
        Top = 3
        Width = 27
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'LITROS_CO2'
        DataSource = dsExtintorRGS
      end
      object RLDraw68: TRLDraw
        Left = 342
        Top = -16
        Width = 2
        Height = 34
      end
      object RLDBText8: TRLDBText
        Left = 303
        Top = 3
        Width = 37
        Height = 14
        AutoSize = False
        DataField = 'NBR'
        DataSource = dsExtintorRGS
      end
      object rlRsCubagem: TRLLabel
        Left = 708
        Top = 3
        Width = 20
        Height = 14
        AutoSize = False
        BeforePrint = rlRsCubagemBeforePrint
      end
    end
    object RLBand4: TRLBand
      Left = 23
      Top = 202
      Width = 1077
      Height = 135
      BandType = btSummary
      Borders.Sides = sdCustom
      Borders.DrawLeft = True
      Borders.DrawTop = False
      Borders.DrawRight = True
      Borders.DrawBottom = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      object RLLabel38: TRLLabel
        Left = 4
        Top = 7
        Width = 51
        Height = 14
        Caption = 'Legenda'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object RLLabel39: TRLLabel
        Left = 80
        Top = 7
        Width = 129
        Height = 14
        Caption = 'NIVEL DE MANUTEN'#199#195'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object RLLabel40: TRLLabel
        Left = 312
        Top = 7
        Width = 128
        Height = 14
        Caption = 'ENSAIO ALTA PRESS'#195'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object RLLabel41: TRLLabel
        Left = 560
        Top = 7
        Width = 67
        Height = 14
        Caption = 'RESULTADO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object RLLabel42: TRLLabel
        Left = 768
        Top = 7
        Width = 47
        Height = 14
        Caption = 'MOTIVO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object RLLabel43: TRLLabel
        Left = 80
        Top = 21
        Width = 61
        Height = 12
        Caption = '1- INSPE'#199#195'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel44: TRLLabel
        Left = 80
        Top = 32
        Width = 60
        Height = 12
        Caption = '2- RECARGA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object rlRespTecnico: TRLLabel
        Left = 165
        Top = 108
        Width = 126
        Height = 14
        Alignment = taCenter
        Caption = 'RESPONS'#193'VEL T'#201'CNICO'
      end
      object RLLabel46: TRLLabel
        Left = 312
        Top = 21
        Width = 100
        Height = 12
        Caption = 'ET- EXPANS'#195'O TOTAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel47: TRLLabel
        Left = 312
        Top = 32
        Width = 136
        Height = 12
        Caption = 'EP- EXPANS'#195'O PERMANENTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel48: TRLLabel
        Left = 312
        Top = 43
        Width = 117
        Height = 12
        Caption = 'EE- EXPANS'#195'O EL'#193'STICA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel49: TRLLabel
        Left = 560
        Top = 21
        Width = 70
        Height = 12
        Caption = 'C- CONFORME'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel50: TRLLabel
        Left = 560
        Top = 32
        Width = 100
        Height = 12
        Caption = 'NC- N'#195'O CONFORME'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel51: TRLLabel
        Left = 768
        Top = 21
        Width = 55
        Height = 12
        Caption = '01 - ROSCA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel52: TRLLabel
        Left = 768
        Top = 32
        Width = 68
        Height = 12
        Caption = '02 - CUBAGEM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel53: TRLLabel
        Left = 768
        Top = 43
        Width = 46
        Height = 12
        Caption = '03 - TARA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object rlRespControle: TRLLabel
        Left = 722
        Top = 110
        Width = 216
        Height = 14
        Alignment = taCenter
        Caption = 'RESPONS'#193'VEL CONTROLE DE QUALIDADE'
      end
      object RLDraw53: TRLDraw
        Left = 688
        Top = 103
        Width = 291
        Height = 2
      end
      object RLDraw54: TRLDraw
        Left = 86
        Top = 103
        Width = 291
        Height = 2
      end
      object RLLabel65: TRLLabel
        Left = 768
        Top = 54
        Width = 123
        Height = 12
        Caption = '04 - TESTE HIDR'#211'STATICO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object RLLabel66: TRLLabel
        Left = 923
        Top = 21
        Width = 62
        Height = 12
        Caption = '05 - FURADO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel67: TRLLabel
        Left = 923
        Top = 32
        Width = 141
        Height = 12
        Caption = '06 - SEM PE'#199'A DE REPOSI'#199#195'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel68: TRLLabel
        Left = 923
        Top = 43
        Width = 67
        Height = 12
        Caption = '07 - SOLDADO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLImage1: TRLImage
        Left = 72
        Top = 57
        Width = 305
        Height = 46
        Picture.Data = {
          0A544A504547496D6167656E160000FFD8FFE000104A46494600010101006000
          600000FFE100AA45786966000049492A00080000000200310102000B00000026
          0000006987040001000000320000000000000050696361736120322E37000003
          0000900700040000003032313005A00400010000007E00000020A40200210000
          005C000000000000006234323131356265636162346134313130343236303432
          3861306562636132390000020001000200050000009C00000002000700040000
          003031303000000000202020200000FFED002C50686F746F73686F7020332E30
          003842494D04040000000000101C0250000B50696361736120322E3700FFDB00
          430006040506050406060506070706080A100A0A09090A140E0F0C1017141818
          171416161A1D251F1A1B231C1616202C20232627292A29191F2D302D28302528
          2928FFDB0043010707070A080A130A0A13281A161A2828282828282828282828
          2828282828282828282828282828282828282828282828282828282828282828
          28282828282828FFC00011080091028003012200021101031101FFC4001C0001
          000203010101000000000000000000000506030407020108FFC4004310000103
          0302030407050603080300000000010203040511061221315107134161142232
          718191A115425262B116232492B2D172A2C1333443445382C2E193D2F0FFC400
          160101010100000000000000000000000000000102FFC4002011010101000105
          01000300000000000000000111210212314151223281A1FFDA000C0301000211
          0311003F00FD5200000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000060AEAB828695F51572362858995738D2BFDF68
          2C54BDF57CC8DCF06469C5CF5F24288FA5BE6BEA88A49D1F6EB2317722655164
          E3E09F7971E2BEAF9164131A6F59555FB543E8E968512DD1B5CAF9B8AAB7F02A
          AF2E3C78732EE68D9ED54967A26D2D04491C4DE2BE2AE5EAABE2A6F0B9BC0000
          800000000000000000000000000000000000000000000000000000000000000F
          8F7B6362B9EE46B5A995555C2214FB96B447D57A269FA47DCAA738DCD45DA8BE
          5D53CF8279964B5357155444CAAE13AA95FB9EAFB3D035156A7D21579253A6FF
          00AF2FA914DD3B79BD49BF50D7F754CAAABE8B02FCB8F24FA960B5E9FB5DAD51
          D4947124A9C7BD726E7FCD797C0BC4556FF6B6F3719512C5655919C95D32AA63
          DFC913E678EEB5DD5BDDFBDA5A26E3299D8BF0E08E2F809A98A1A59359A46BB6
          F34CD72A7B2B239DC7DEACC98E4AFD6D6B8F13D2475AC4444491B1A48E5545F1
          D8AD5E3FE13A001AA8BD3F755BA51EF9A9DF4D52CE1242FF0005EA9D509431B2
          08D9349335889249847BBAE39190800000000000000000000000000000000001
          86B6AA1A1A496A6A9E91C11355CF72F8201A77FBCD2D8EDCFABAC572A2706B18
          9973DDD10D1D13A85752DAE6AB753A41DDCEB12223B722E1AD5CFF0098A4D724
          97DB7DC753DEB7456F8E377A05239FED2E308E5F7AE7E6A5A3B2AB6BEDBA268B
          BECA4D54AEAA7E7F3AE5BFE5DA6ACC8CCE56E0019680088BFEA2B6D898D5B84F
          B5EE4CA46C4DCF54EB8E804B83C432B26899246B963DA8E6AF545E47B000A6DE
          2E5515DAD68ECB4133D23863596B367DD45E299E5D1A9FF797240928000A007C
          72A35155CA8889C5557C00FA51F586BA8ADB27A059D8959727BBBB4DBEB36377
          4F35F2E5D48BBF6ACAED457092C7A46373F735524AAF65113C551DE0DFAAF816
          4D23A368B4FB1B33B1557054C3AA1E9CBC9A9E1EFE66B33C889D33A2A59AA3ED
          5D5922D656BF8B69DEBB98CFF17E25F2E45F911111111111138222004B7524C0
          0045000000000000000000000000000000000000000000000000000000000000
          000055FB46B75C2E7A6648AD5974EC91B2BA345C2CAD4CE5A9E7C97E057346EB
          2D376CA18E8E68A6B754A7AB33A58D5DBDE9CD55C899CF9613074B34AE369B75
          C9AADB850D354A2A617BD8D1CBF335B332A63C53DEAD9514E93C370A5742BF7F
          BD4C18E4D43668F1BEED4099E5FC433FB90F37679A626C6FB6AA227836A2544F
          A38C69D9BE964E296D5CE728BE91267FA8BF8549CFABF4FC09992ED498FCAFDD
          FA1A8ED7DA65AEC7DA6D55FCB0C8BFA34F91767FA5A2C62CF03B1FF51CE7FEAA
          A6F45A4F4FC4E456D9ADF94E4AE81AEC7CD07E043D47695A6E25C36A66957F24
          4A9FD583553B54B039AAE632B9C88995C46DFF00EC5A9B60B3B24491B69B7B5E
          9C51C94CC454F8E0DC8E8E9A26E22A68589D1B1A2137A7E0A5BFB50B1336E62A
          ECAE78776CE1EFF58C69DAAD897FE5EE38F15489AB8FF317A4A6811D94862CF5
          D887B646D67B0D6B7DC981B3E0A2B3B54D3CE72A2256A63AC489FF0091B34FDA
          569C95ED6BEA26855CB84DF0AAFF004E4B7C90432E7BC8A37E79EE6A29AB5168
          B6D4262A2DF472A7E781AEFD506C1131EB9D372395A974891C8B8547B1EDFD50
          93A0BE5AEE09FC15C2966F26CA99F9733465D1BA7A572B9D69A5473B9AB1BB73
          F2C1115BD9A582A2447C3E9948ADE490CEB84FE6C938176073E6E84BADB6473A
          C1A9AAE18F9A433A6E6E709D38782FDD35E4B8EBEB127F1B454D7681170B2409
          976319CE130BF342F6FCA3A4829B60ED12CB759929A77BE82AF92C750984CF4D
          DFDF05C89659E40004000000000000028FA89AFD557EFB0E3E16CA5DAFAC7F2D
          CECFB29FA22F5477427B585DBEC5B0D4553171363645CBDA5F1E3C382657E060
          D1F6CFB134FB56B551B5322BAA2A5EF5E395E3855F24C27BF259C729515AB228
          2E770A1D3AC637D191A8AF89BC113F0A63A235AE5F91758D8D8D8D631A8D6353
          08889844429BA1E396E570AFBDD546AD595DB62CF822F15F92231BF0717317E1
          000D3A6B9D2554CF8E9A66CAE8D70F567146FC48AD2D517DA7B0D0A4932E6795
          76411A737BBFB21CEEC1685D51A81D2D66F92263BBDAA955782AF8313C97FA4D
          5B9DC2B353EB06369137355DDD408A9946C7E2E5E9C38AA9D5AC36B86CD6D8A8
          E0CBB6FACF7AF37B979AAFFF00B960DFF18C5E6A45381A37BB8C56AB6CF5732A
          618DF55AAB8DCEF04378A0DC33AC35636863E366B6FAD50EE5DEC99E0D4F2F57
          F5331AA90ECFAD92C74D5378AF5DF5F727248AE56E15234F653CB3CFE285B827
          0402DDBAA001571CC83E3DCD6315CF7235A8995555C221CAF515E6E3AD6BD6C9
          A758E65BD17F7F519C35C99E6E5F04F1C7DE33EA7BFD56A8BC2E9CD3A88FA777
          AB5351F771E2BE4D4FAAF02F1A6AC549A7ED71D1D13738E3248BED48EF172FF6
          2CE3947CD2F60A3D3B6B651D137CE491530E91DF89497005BBCD500040000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000101A9B4A5AF50C2A959035951CDB511A223
          D17CFF001272E0A5434CDD2E3A535545A66F53AD451D4235B4932B5536B97922
          2AF345E4A9E0BEF3A5CD2C7044F9667B238D89973DEB846A75553966A0AC6EAB
          ED1ECB496A55969EDB2A4B2CECE4BB5C8AEC3BA26113CF26A73C537387563528
          EE545593CD0D255C13CB0E3BC6C6F472B33CB382275C5FA96C560AA96A266326
          7C6AC863DDEBBDCA8BC113E6720ECFAFD5F04F5F1D9E89D5374AE6B5913B196C
          4888E5DCBF34F6BA09D3B351FA001C728EDFDA1DBE5B9414CB2CAB2A65D34B33
          5E8AEC2AE58AEF7A270E85629AFDAF2CD409709AA6B5B4F54F6B7BCA98FBC572
          A6EE4D7A7AABEE2F67CAD4E5FA281A362AA96BAC96FABA8EEFBE9E9E395FDDAE
          5BB9CD455C79654DE30800466A4BB4563B354D7CDC7BB4F55BF89CBC113E6055
          EECE6DFBB40A2B7655F496F6ACD333196B9C888A99F8AB5092D5B552D655D2D8
          E81CA9354B91D3BDBC7BB8D38AE4AE5369AA6874955DDEF7354C7572B64A97C8
          D5447222FB28A8BC155578FBD7079D03A5AF142D8AF4DB8E25A86E1D4D50C577
          EEB28B845F0CE13E1837BFE33BF5D1A82921A0A48E9A9DBB638D309D57CD7CCD
          83E3551C9945CA119AA2E6B68B155D631BBA563711B7ABD7827D4C795F111376
          A8AABDDCDF68B64AB0D342A9E9B3B553385CFA89F2C7FE88CED12F34DA4B4B7A
          0DAA348AA6A9AB1C2C8F9B7C15DD73FF00B3E4770669EB5D359ADAE4ABBFD57A
          EF643EB2B5CB8DCE77B93AF4553697444170B5BBED99164BA3FD64A86B95CB0F
          E56E79B7AF52F8367F4CFD9DE948F4E5AD24972FB854B1AB3B9573B7A353FD7C
          CB695DD17497AB7D04D497D9219FBA7E29E663F739F1F47704E5E05885BB555E
          D6D7B759AD1FC2A2BEBAA5DDCD3B1A995572F35C797EAA86C693B332C9688E0D
          ADF4993F7950E6A7B522F3F82724F715375C282E7AD65B9DC2B29E9EDF6A5EEA
          3EF951AAF938E79F45CAFC1A5C6A3505A69A852B27B8533299C9B91FBF9A7927
          351788CCA9406ADB2E14974A3655DBE764F4EFCED918B945C2E14DAE4468399E
          B4D4F3DEEB534E698474F24ABB6A2767246F92FE1EAE1AC752CF7CB82E99D32E
          57CD2A6D9E762AA235B9FC49C93AF5E465A0B44BA69DF6769CA6EFABD51A9597
          095B95445E386F44373A7DD6759195561ECCECBDC4D27A45C244474DB38C923B
          AAFE16F422E9EE3AEB54D424D4112DAADAE6E58AE446AFCD7D652C163D074D15
          D1F73BD3FD3AADDC5AC97D76317C5573CD7CCBB92D8B3EA334ED3DCA96DAC8AF
          3591D6553578CB1B3622A7B89300CA8000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000186A
          EAE9A8E3EF2AEA21819F8A57A353E6A0660552BF5FE9FA46E5B56B52BE290377
          63E2B842164D7575BABD23D31649276AB95BDF4A8AE6FD3D56FC5C6A74DA3A29
          0D73D496CA0DCD754C72CC9FF0E3722AA7BD7927C4AB7ECF6AABE357EDABA368
          A15E70C49B97C39A3551A4BD9F41D92DCE8E49205AC9E3E4FA85DC89C30B86F2
          F9E464F7515FAA92F9AE657D2C30A515895CDEF2472677E1D9E0BF7F92704E1D
          54B0C3A3A0A0B5B69AD15951473E77493B5DEB4ABF9BA279260B5026FC314AB4
          F67F450D7B2BAF13CB74AB62EE62CDECE7AB93EFAF9A9746B5ADCED6A2679E13
          99F40B6DF2A1E268A39E2747331AF8DC98735C994543D820F10C4C8636C7131A
          C8DA986B5A98444E8887B000141D673ADFF5450E96A7639D1C68DABAC770C359
          9C271E79C67F990BF11B474091DE2B6B2489BBDE8D632555CB95B8CAA79267F4
          2C466B85BA9EBA8D29676AF708E6AEC6AED4F5551513DDC0DC54CF3008AD7A0A
          2A7A0A66D3D1C4D8A16F26B4D7BEDAE2BC5B24A29DEF631EAD76E673454545E1
          F2240011360B05158E37A52315D2BFDB99FC5EE4E99E84B00000005197B36B64
          B5D3CD555151342F72B9B0A6188CF8A71531276596274999E5AD99A9ECB56444
          C7C5110BF035DD531A163B451D8EDEDA2B6C6B1D3B555D857AB955579AE55725
          16F776AFD697196CBA737476D8976D5D6F26BBF2A754F2F13A498692960A3852
          1A486386245CA358DC21344769CD3D6FD3F49DCD04288F7719667265F22F555F
          F424DB0C6D99D2B63624AE44473F1C55139654C808B8E617CBE6AABF5C67A2D3
          D47352D144AA8B3E30B227547F2F82712129DFDA3D1D048D83D2DD13555CAF9F
          6C8EC63C15DEB60ED40D6CCCC149ECB7524D7BD3E8975AA89F728E67C6F6AE1A
          E56F36AE3DC5B56BA992BDB47DEB16A9CDDFDDA2F146F552917EECC2D7719E6A
          8A49E5A49DD97311BC58D77EB8C927D9FE93FD99A39DD552B6A6E350FDD2CC99
          5E1E088ABC7DE2E794D5B4006540000000000000000000000000000000000000
          0000000000000000000000000000000000006AD5DC68A8D7157594D02F49656B
          57EAA41556BBD3B4EE56FDA0D95C88AABDCC6E913E68982C96F8167073BA8ED4
          E85D3F756EB7D554BBC377AAABF04472FD0D375FF5F5C9FB28ACDE869E0F7C3B
          71FF00C8EC7D0BD97D8EA069565DEDD44E736AEBE9617378AB6495A8A9F0C9CE
          D3486B0BB315B78BDB2185DED46D91EFFF002A613EBE24950F65B67858BE9551
          5750F55DCAAD7246D5F820C9EEA6B6AE1DA4D8299ABDC493553B194EEE3544F9
          BB042C9DA1DD6EC8B0E9DB1CFDE39AAA8F7B77AE3F12272F9974B7E93B0D02AA
          D35AA911CBF79ECDEEF9BB2A4D8D9F0E5CCFEC9D77779116AAE2CA085538A6EC
          2FF2B3FB9BB4DD9950BE5EF6EB70ABAC97AA6234FF0055FA97F03BEFA315FB6E
          8DB05BF6AC16D85EF6F27CD9957E6EC93ED446A2235111139221F419B7540000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000F3248C898AF91ED635
          A995739708807A042566ABB151BB13DD29B3D18EDFFD3920AB7B4CB1C2E7B69D
          2A2A5C9C95AD46B5DF1554FD0B3A6DF02F00E66EED1EBABD112C9659A4778ABA
          37489F4C074FDA05C9AD58A9DB46D73B8E5CC62227C72E42DE8B3C8E9868565E
          6DB471ABEAABE9626A73DD2A2145FD85BEDC9DBEF3A8576AA71898D7489F3554
          4FA1BB4BD9859D8E6BAB2A6B6A973956F7891B57F95377D464FA246AFB40D3D4
          ED454AB7CBE2A8C89D94F7E7057E4ED5A09DC8DB5DA2AEA55CE544CAF1C75C35
          1DFA96BA2D19A7A89DBA1B540E77597327F52A93B1451C2DDB146C62746B7036
          7C1CDBF6975BDCE4D96CB0FA3317824933309EFCB9C9E67A6E99D6975E377BEB
          2918E6E15903DCBC7DCDDA874A03BBE41CF68FB2DB735735F70ADA9763186AA4
          69F2E2586874669DA26E21B4D33BCE56F78ABFCD92C205EBEABE68C34B4D052C
          491D2C31431A72646C46A7C90CC0190000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000C5515305337754CD142DEB23D1A9F503282BB5BAD2C548AE6BA
          B5247A22AE236ABBEB8C7D481A8ED1DB2C8915A2D35356F7270E3ECF2E7B51DF
          8BA9AEDA3A0039E3EF1AEAE3EAD0D963A2663FDA4B8454E1F99DFF0089E24D2D
          ABEECE44BB6A26D3C38C39B03772AFC136B467DA2F75B72A2A1544ACAB821577
          247BD1157E04156EBBB052A7FBE77ABD236E573D38E3891949D995AA36A7A5D5
          D6D4BFC555C8D45F8609BA4D19A7A95C8E8ED54CF7226332A2C9FD592702B755
          DA8D16E732DD6EABAA7F1DBC933C33C9BB97E8625D49AD6B57BAA3B1772E7F0D
          EF855BB3E2F763E67458208A9E34641132262726B1A8D4F92190BB3D41CE1B67
          D75748952BAE5150B5CAA8A8D97D6C7B98D4F3FBC7A8FB3692644FB52FD5752B
          C39336F863C554E8A04EAB3C0A7D0F675A7A99DBA5A796ADF9CE6A2555FA2613
          E84FD158ED543B5692DD49139BC9CD89BB93E3CC9104B6DF2000200000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000044DD2F0EA39FD1E96DF5
          95B51C155228F0C6E7ABD782012C789A58E08D6499EC8D89CDCE5C221599A9F5
          4DCF66EABA4B344A8AAE6C2CEFE4F0E0AAB84EBC530628B415B6593BDBBD4575
          D26CE556A265DB9E3C9131D7A9727B1B170D7162A3E0954B52EE94EDDFF5E5F5
          225FACAEF58C7FD91A76A9CA8996BE46AB9AEE1E584E7F98B8505AE82DED44A2
          A3820C78B1888BF3E66E0D839F474FAEEF2A9E953D2D9A99DED363C2C889E58C
          AE7FEE69920ECDA964F5EE774B855CCAE572B91C8CCFCD157E4A85F417BEFAE0
          BCA0E8B495868DDBE2B5D32BF96E919BD7EB926618A385BB618D91B7A35A8887
          B04B6DF200020000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000FFFD9}
        Stretch = True
        BeforePrint = RLImage1BeforePrint
      end
      object RLLabel45: TRLLabel
        Left = 80
        Top = 43
        Width = 115
        Height = 12
        Caption = '3- TESTE HIDROST'#193'TICO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 'FortesReport v3.23 \251 Copyright '#169' 1999-2004 Fortes Inform'#225'tica'
    ViewerOptions = []
    FontEncoding = feNoEncoding
    DisplayName = 'Documento PDF'
    Left = 344
    Top = 328
  end
  object RLXLSFilter1: TRLXLSFilter
    DisplayName = 'Planilha Excel'
    Left = 416
    Top = 328
  end
  object dsExtintorRGS: TDataSource
    Left = 181
    Top = 312
  end
end
