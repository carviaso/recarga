object FRelatodioSelosReport: TFRelatodioSelosReport
  Left = 246
  Top = 193
  Width = 928
  Height = 480
  Caption = 'FRelatodioSelosReport'
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
    Left = 40
    Top = 32
    Width = 794
    Height = 1123
    DataSource = FRelatodioSelos.DS_REL
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 83
      BandType = btHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLLabel6: TRLLabel
        Left = 247
        Top = 4
        Width = 264
        Height = 36
        Alignment = taCenter
        Caption = 'Relat'#243'rio de Selos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -32
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object rlRazaoSocial: TRLLabel
        Left = 314
        Top = 38
        Width = 122
        Height = 22
        Alignment = taCenter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 637
        Top = 64
        Width = 74
        Height = 16
        Alignment = taRightJustify
        Text = 'Data: '
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 121
      Width = 718
      Height = 16
      BandType = btColumnHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLLabel2: TRLLabel
        Left = 5
        Top = 0
        Width = 30
        Height = 16
        Caption = 'Selo'
      end
      object RLLabel3: TRLLabel
        Left = 168
        Top = 0
        Width = 100
        Height = 16
        Caption = 'Tipo/Capacidade'
      end
      object RLLabel4: TRLLabel
        Left = 432
        Top = 0
        Width = 44
        Height = 16
        Caption = 'Cliente'
      end
      object RLDBText1: TRLDBText
        Left = 8
        Top = 16
        Width = 70
        Height = 16
      end
      object RLLabel5: TRLLabel
        Left = 336
        Top = 0
        Width = 32
        Height = 16
        Caption = 'RGS'
      end
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 137
      Width = 718
      Height = 18
      object RLDBText3: TRLDBText
        Left = 5
        Top = 1
        Width = 39
        Height = 16
        DataField = 'SELO'
        DataSource = FRelatodioSelos.DS_REL
      end
      object RLDBText4: TRLDBText
        Left = 202
        Top = 1
        Width = 33
        Height = 16
        Alignment = taCenter
        DataField = 'TIPO'
        DataSource = FRelatodioSelos.DS_REL
        BeforePrint = RLDBText4BeforePrint
      end
      object RLDBText5: TRLDBText
        Left = 433
        Top = 1
        Width = 102
        Height = 16
        DataField = 'RAZAO_SOCIAL'
        DataSource = FRelatodioSelos.DS_REL
      end
      object RLDBText6: TRLDBText
        Left = 336
        Top = 1
        Width = 32
        Height = 16
        DataField = 'RGS'
        DataSource = FRelatodioSelos.DS_REL
      end
    end
  end
end
