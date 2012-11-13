unit URelatorioCartaORcamentoRel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, RLReport, RLParser;

type
  TFRelatorioCartaORcamentoRel = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    dsRelatorio: TDataSource;
    RLGroup1: TRLGroup;
    RLBand2: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLBand3: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLBand4: TRLBand;
    RLBand5: TRLBand;
    RLLabel6: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLMemo1: TRLMemo;
    RLMemo2: TRLMemo;
    RLMemo3: TRLMemo;
    RLLabel9: TRLLabel;
    RLMemo4: TRLMemo;
    RLExpressionParser1: TRLExpressionParser;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLBand6: TRLBand;
    RLLabel13: TRLLabel;
    RLLabel12: TRLLabel;
    RLDBText4: TRLDBText;
    procedure FormCreate(Sender: TObject);
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand6BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelatorioCartaORcamentoRel: TFRelatorioCartaORcamentoRel;
  Total : Real;

implementation

uses URelatorioCartaORcamento;

{$R *.dfm}

procedure TFRelatorioCartaORcamentoRel.FormCreate(Sender: TObject);
begin

  Total := 0;

end;

procedure TFRelatorioCartaORcamentoRel.RLBand3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  ano : integer;
begin

  ano := StrToInt(FormatDateTime('yyyy', now));

  if dsRelatorio.DataSet.FieldByName('ULTIMA_VISITA').AsString <= intToStr(ano -5) then
  begin

    RLLabel10.Caption := 'Recarga e Teste Hidrostático';
    RLLabel11.Caption := FormatFloat('#,##0.00', dsRelatorio.DataSet.FieldByName('VR_TESTE').AsFloat);
    Total := Total + dsRelatorio.DataSet.FieldByName('VR_TESTE').AsFloat;
    
  end else begin

    RLLabel10.Caption := 'Recarga';
    RLLabel11.Caption := FormatFloat('#,##0.00', dsRelatorio.DataSet.FieldByName('VR_RECARGA').AsFloat);
    Total := Total + dsRelatorio.DataSet.FieldByName('VR_RECARGA').AsFloat;

  end;
end;

procedure TFRelatorioCartaORcamentoRel.RLBand6BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin

  RLLabel12.Caption := FormatFloat('#,##0.00', Total);
  Total             := 0;

end;

end.
