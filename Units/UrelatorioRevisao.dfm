object FUrelatorioRevisao: TFUrelatorioRevisao
  Left = 192
  Top = 107
  Width = 1046
  Height = 500
  HorzScrollBar.Position = 40
  VertScrollBar.Position = 8
  Caption = 'FUrelatorioRevisao'
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
    Left = -32
    Top = 6
    Width = 1123
    Height = 794
    DataSource = FRelRevisao.dsPesquisa
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    PageSetup.Orientation = poLandscape
    ShowProgress = False
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 1047
      Height = 69
      BandType = btHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLLabel7: TRLLabel
        Left = 408
        Top = 8
        Width = 162
        Height = 19
        Caption = 'Relat'#243'rio de Revis'#227'o'
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
      object RLSystemInfo2: TRLSystemInfo
        Left = 968
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
        Left = 948
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
      object RLDBText6: TRLDBText
        Left = 410
        Top = 31
        Width = 175
        Height = 16
        AutoSize = False
        DataField = 'REV_CODIGO'
        DataSource = FRelRevisao.dsPesquisa
        Text = 'Relat'#243'rio de Revis'#227'o N'#186': '
      end
      object RLDBText1: TRLDBText
        Left = 410
        Top = 49
        Width = 422
        Height = 16
        AutoSize = False
        DataField = 'RAZAO_SOCIAL'
        DataSource = FRelRevisao.dsPesquisa
        Text = 'Cliente: '
      end
      object RLDBText4: TRLDBText
        Left = 711
        Top = 31
        Width = 242
        Height = 16
        AutoSize = False
        DataField = 'REV_REVISOR'
        DataSource = FRelRevisao.dsPesquisa
        Text = 'Revisor: '
      end
      object RLDBText5: TRLDBText
        Left = 598
        Top = 31
        Width = 107
        Height = 16
        AutoSize = False
        DataField = 'REV_DATA'
        DataSource = FRelRevisao.dsPesquisa
        Text = 'Data: '
      end
    end
    object RLBand4: TRLBand
      Left = 38
      Top = 107
      Width = 1047
      Height = 28
      BandType = btColumnHeader
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      BeforePrint = RLBand4BeforePrint
      object RLLabel2: TRLLabel
        Left = 1
        Top = 0
        Width = 21
        Height = 14
        Caption = 'N'#186
      end
      object RLLabel3: TRLLabel
        Left = 75
        Top = 0
        Width = 42
        Height = 14
        Caption = 'Local'
      end
      object RLLabel4: TRLLabel
        Left = 299
        Top = 0
        Width = 35
        Height = 14
        Caption = 'Tipo'
      end
      object RLLabel5: TRLLabel
        Left = 355
        Top = 0
        Width = 35
        Height = 14
        Caption = 'Cap.'
      end
      object RLLabel6: TRLLabel
        Left = 473
        Top = 0
        Width = 63
        Height = 14
        Caption = 'N'#186' S'#233'rie'
      end
      object RLLabel8: TRLLabel
        Left = 539
        Top = 0
        Width = 42
        Height = 14
        Caption = 'Teste'
      end
      object RLLabel9: TRLLabel
        Left = 585
        Top = 0
        Width = 58
        Height = 14
        Alignment = taCenter
        AutoSize = False
        Caption = 'Carga'
      end
      object RLLabel10: TRLLabel
        Left = 761
        Top = -1
        Width = 63
        Height = 14
        Caption = 'Situa'#231#227'o'
      end
      object RLLabel11: TRLLabel
        Left = 392
        Top = 0
        Width = 77
        Height = 14
        Caption = 'Fabricante'
      end
      object RLLabel12: TRLLabel
        Left = 30
        Top = 0
        Width = 35
        Height = 14
        Caption = 'Cod.'
      end
      object RLLabel13: TRLLabel
        Left = 702
        Top = 0
        Width = 56
        Height = 14
        Alignment = taCenter
        AutoSize = False
        Caption = 'Peso'
      end
      object RLLabel14: TRLLabel
        Left = 644
        Top = 0
        Width = 56
        Height = 14
        Alignment = taCenter
        AutoSize = False
        Caption = 'Peso'
      end
      object RLLabel15: TRLLabel
        Left = 539
        Top = 13
        Width = 42
        Height = 14
        Caption = 'Teste'
      end
      object RLLabel16: TRLLabel
        Left = 585
        Top = 13
        Width = 58
        Height = 14
        Alignment = taCenter
        AutoSize = False
        Caption = 'Carga'
      end
      object RLLabel17: TRLLabel
        Left = 644
        Top = 13
        Width = 56
        Height = 14
        Alignment = taCenter
        AutoSize = False
        Caption = 'Vazio'
      end
      object RLLabel18: TRLLabel
        Left = 702
        Top = 13
        Width = 56
        Height = 14
        Alignment = taCenter
        AutoSize = False
        Caption = 'Cheio'
      end
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 135
      Width = 1047
      Height = 17
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      BeforePrint = RLBand3BeforePrint
      object RLDBText3: TRLDBText
        Left = 75
        Top = 0
        Width = 221
        Height = 14
        AutoSize = False
        DataField = 'LOCAL_EXTINTOR'
        DataSource = FRelRevisao.dsPesquisa
        BeforePrint = RLDBText3BeforePrint
      end
      object RLLabel1: TRLLabel
        Left = 761
        Top = 0
        Width = 65
        Height = 14
        BeforePrint = RLLabel1BeforePrint
      end
      object RLDBText2: TRLDBText
        Left = 299
        Top = 0
        Width = 53
        Height = 14
        AutoSize = False
        DataField = 'TIPO'
        DataSource = FRelRevisao.dsPesquisa
      end
      object RLDBText7: TRLDBText
        Left = 355
        Top = 0
        Width = 34
        Height = 14
        AutoSize = False
        DataField = 'CAPACIDADE'
        DataSource = FRelRevisao.dsPesquisa
      end
      object RLDBText8: TRLDBText
        Left = 473
        Top = 0
        Width = 61
        Height = 14
        AutoSize = False
        DataField = 'NUMERO_SERIE'
        DataSource = FRelRevisao.dsPesquisa
      end
      object RLDBText9: TRLDBText
        Left = 539
        Top = 0
        Width = 42
        Height = 14
        AutoSize = False
        DataField = 'ULTIMA_VISITA'
        DataSource = FRelRevisao.dsPesquisa
        BeforePrint = RLDBText9BeforePrint
      end
      object RLDBText10: TRLDBText
        Left = 585
        Top = 0
        Width = 58
        Height = 14
        Alignment = taCenter
        AutoSize = False
        DataField = 'CARREGADO'
        DataSource = FRelRevisao.dsPesquisa
        BeforePrint = RLDBText10BeforePrint
      end
      object RLDBText11: TRLDBText
        Left = 392
        Top = 0
        Width = 78
        Height = 14
        AutoSize = False
        DataField = 'DESCRICAO'
        DataSource = FRelRevisao.dsPesquisa
      end
      object RLDBText12: TRLDBText
        Left = 30
        Top = 0
        Width = 44
        Height = 14
        AutoSize = False
        DataField = 'CODIGO'
        DataSource = FRelRevisao.dsPesquisa
      end
      object RLDBText13: TRLDBText
        Left = 1
        Top = -1
        Width = 28
        Height = 14
        AutoSize = False
        DataField = 'ORDEM'
        DataSource = FRelRevisao.dsPesquisa
      end
      object RLDBText14: TRLDBText
        Left = 702
        Top = 0
        Width = 56
        Height = 14
        AutoSize = False
        DataField = 'PESO_CHEIO'
        DataSource = FRelRevisao.dsPesquisa
      end
      object RLDBText15: TRLDBText
        Left = 644
        Top = 0
        Width = 56
        Height = 14
        AutoSize = False
        DataField = 'PESO_VAZIO'
        DataSource = FRelRevisao.dsPesquisa
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 152
      Width = 1047
      Height = 34
      AlignToBottom = True
      AutoSize = True
      BandType = btSummary
      BeforePrint = RLBand2BeforePrint
      object RLMemo1: TRLMemo
        Left = 0
        Top = 18
        Width = 577
        Height = 16
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Courier New'
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
    Left = 758
    Top = 161
  end
  object Qry: TIBQuery
    Database = DM.IBDatabase1
    Transaction = DM.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    Left = 104
    Top = 262
  end
end
