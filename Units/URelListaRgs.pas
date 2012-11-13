unit URelListaRgs;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, RLReport, RLParser;

type
  TFRelListaRgs = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLBand2: TRLBand;
    RLBand3: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    dsRelatorio: TDataSource;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    rlEmpresa: TRLLabel;
    rlEndereco: TRLLabel;
    rlComplemento: TRLLabel;
    RLDataEntrada: TRLLabel;
    RLBand4: TRLBand;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLSystemInfo3: TRLSystemInfo;
    RLExpressionParser1: TRLExpressionParser;
    rltotalQtd: TRLLabel;
    rlMemo3: TRLMemo;
    dsTipo: TDataSource;
    RLMemo1: TRLMemo;
    RLLabel10: TRLLabel;
    RLMemo2: TRLMemo;
    RLMemo4: TRLMemo;
    procedure RLBand3AfterPrint(Sender: TObject);
    procedure RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelListaRgs: TFRelListaRgs;
  total : integer;
implementation

uses UpesquisaRGS;

{$R *.dfm}

procedure TFRelListaRgs.RLBand3AfterPrint(Sender: TObject);
begin
  total := total + dsrelatorio.DataSet.fieldbyName('QTD').AsInteger;
end;

procedure TFRelListaRgs.RLBand4BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin

  rltotalQtd.Caption := IntToStr(total);
  total := 0;

  with DsTipo.DataSet do
  begin

    First;
    rlMemo1.Lines.Clear;
    rlMemo2.Lines.Clear;
    rlMemo3.Lines.Clear;
    rlMemo4.Lines.Clear;
    rlMemo1.Lines.Add('TIPO');
    rlMemo2.Lines.Add('CAP');
    rlMemo3.Lines.Add('QTD');
    rlMemo4.Lines.Add('TOTAL');
    rlMemo1.Lines.Add('');
    rlMemo2.Lines.Add('');
    rlMemo3.Lines.Add('');
    rlMemo4.Lines.Add('');

    while not(Eof)do
    begin

      rlMemo1.Lines.Add(FieldByName('TIPO').AsString);
      rlMemo2.Lines.Add(FieldByName('CAPACIDADE').AsString);
      rlMemo3.Lines.Add(FieldByName('QUANTIDADE').AsString);
      rlMemo4.Lines.Add(FormatFloat('0',FieldByName('CAPACIDADE').AsFloat * FieldByName('QUANTIDADE').AsInteger));

      Next;
    end;


  end;

  rltotalQtd.Top := rlMemo2.Top + rlMemo2.Height;
  RLLabel10.Top  := rltotalQtd.Top;
  
end;

end.
