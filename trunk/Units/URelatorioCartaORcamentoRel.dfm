object FRelatorioCartaORcamentoRel: TFRelatorioCartaORcamentoRel
  Left = 287
  Top = 207
  Width = 870
  Height = 500
  Caption = 'FRelatorioCartaORcamentoRel'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object RLReport1: TRLReport
    Left = 16
    Top = 16
    Width = 794
    Height = 1123
    DataSource = dsRelatorio
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ExpressionParser = RLExpressionParser1
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 51
      BandType = btHeader
    end
    object RLGroup1: TRLGroup
      Left = 38
      Top = 89
      Width = 718
      Height = 432
      DataFields = 'RAZAO_SOCIAL'
      PageBreaking = pbAfterPrint
      object RLBand2: TRLBand
        Left = 0
        Top = 184
        Width = 718
        Height = 19
        BandType = btColumnHeader
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = True
        object RLLabel1: TRLLabel
          Left = 63
          Top = 1
          Width = 52
          Height = 16
          Caption = 'N'#186' S'#233'rie'
        end
        object RLLabel2: TRLLabel
          Left = -1
          Top = 1
          Width = 44
          Height = 16
          Caption = 'C'#243'digo'
        end
        object RLLabel3: TRLLabel
          Left = 143
          Top = 1
          Width = 100
          Height = 16
          Caption = 'Tipo/Capacidade'
        end
        object RLLabel4: TRLLabel
          Left = 444
          Top = 1
          Width = 135
          Height = 16
          Caption = 'Servi'#231'o a ser realizado'
        end
        object RLLabel5: TRLLabel
          Left = 674
          Top = 1
          Width = 34
          Height = 16
          Caption = 'Valor'
        end
        object RLLabel9: TRLLabel
          Left = 279
          Top = 1
          Width = 106
          Height = 16
          Caption = 'Data Manuten'#231#227'o'
        end
      end
      object RLBand3: TRLBand
        Left = 0
        Top = 203
        Width = 718
        Height = 16
        BeforePrint = RLBand3BeforePrint
        object RLDBText1: TRLDBText
          Left = 0
          Top = 0
          Width = 57
          Height = 16
          AutoSize = False
          DataField = 'CODIGO1'
          DataSource = dsRelatorio
        end
        object RLDBText2: TRLDBText
          Left = 64
          Top = 0
          Width = 57
          Height = 16
          AutoSize = False
          DataField = 'NUMERO_SERIE'
          DataSource = dsRelatorio
        end
        object RLDBText3: TRLDBText
          Left = 144
          Top = 0
          Width = 97
          Height = 16
          AutoSize = False
          DataField = 'TIPO_CAP'
          DataSource = dsRelatorio
        end
        object RLLabel10: TRLLabel
          Left = 444
          Top = 0
          Width = 165
          Height = 16
          AutoSize = False
        end
        object RLLabel11: TRLLabel
          Left = 624
          Top = 0
          Width = 85
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
        end
        object RLDBText4: TRLDBText
          Left = 284
          Top = 0
          Width = 98
          Height = 16
          Alignment = taCenter
          AutoSize = False
          DataField = 'ULTIMA_VISITA'
          DataSource = dsRelatorio
        end
      end
      object RLBand4: TRLBand
        Left = 0
        Top = 240
        Width = 718
        Height = 178
        AlignToBottom = True
        BandType = btSummary
        object RLMemo2: TRLMemo
          Left = 8
          Top = 8
          Width = 257
          Height = 64
          Lines.Strings = (
            'Observa'#231#227'o'
            ''
            'N'#237'vel 2 '#8211' Recarga'
            'N'#237'vel 3 '#8211' Recarga e Teste Hidrost'#225'tico')
        end
        object RLMemo3: TRLMemo
          Left = 8
          Top = 141
          Width = 697
          Height = 32
          Lines.Strings = (
            
              'Observa'#231#227'o: Este relat'#243'rio foi emitido eletronicamente pelo cont' +
              'role de dados de nosso sistema, caso no momento da manuten'#231#227'o ha' +
              'ja alguma diverg'#234'ncia, entraremos em contato')
        end
        object RLMemo4: TRLMemo
          Left = 248
          Top = 88
          Width = 242
          Height = 32
          Alignment = taCenter
          Lines.Strings = (
            'Atenciosamente,  Sabrina Neves'
            'Diretora.Comercial')
        end
      end
      object RLBand5: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 184
        BandType = btTitle
        object RLLabel6: TRLLabel
          Left = 8
          Top = 8
          Width = 13
          Height = 16
          Caption = 'A'
        end
        object RLSystemInfo1: TRLSystemInfo
          Left = 648
          Top = 8
          Width = 60
          Height = 16
          Alignment = taRightJustify
          Info = itFullDate
        end
        object RLDBText6: TRLDBText
          Left = 8
          Top = 24
          Width = 102
          Height = 16
          DataField = 'RAZAO_SOCIAL'
          DataSource = dsRelatorio
        end
        object RLDBText7: TRLDBText
          Left = 8
          Top = 48
          Width = 77
          Height = 16
          DataField = 'ENDERECO'
          DataSource = dsRelatorio
        end
        object RLLabel7: TRLLabel
          Left = 8
          Top = 80
          Width = 114
          Height = 16
          Caption = 'ATT: Sr. Sindico(a)'
        end
        object RLLabel8: TRLLabel
          Left = 8
          Top = 96
          Width = 196
          Height = 16
          Caption = 'Assunto: Recarga dos Extintores'
        end
        object RLMemo1: TRLMemo
          Left = 8
          Top = 120
          Width = 697
          Height = 80
          Lines.Strings = (
            
              'Conforme nosso banco de dados, gostar'#237'amos de informar, que os e' +
              'xtintores abaixo descriminados est'#227'o com sua data de manuten'#231#227'o ' +
              'vencendo, desta forma, aproveitamos o ensejo para enviar tamb'#233'm ' +
              'nossa proposta de servi'#231'o para a manuten'#231#227'o dos mesmos.'
            ''
            ' ')
        end
      end
      object RLBand6: TRLBand
        Left = 0
        Top = 219
        Width = 718
        Height = 21
        BandType = btSummary
        BeforePrint = RLBand6BeforePrint
        object RLLabel13: TRLLabel
          Left = 543
          Top = 3
          Width = 40
          Height = 16
          Caption = 'Total:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel12: TRLLabel
          Left = 624
          Top = 2
          Width = 85
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = True
          Borders.DrawRight = False
          Borders.DrawBottom = False
        end
      end
    end
  end
  object dsRelatorio: TDataSource
    DataSet = FRelatorioCartaORcamento.QPesquisa
    Left = 78
    Top = 169
  end
  object RLExpressionParser1: TRLExpressionParser
    Left = 614
    Top = 175
  end
end
