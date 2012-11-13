unit URelatorioGeralServico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, IniFiles, RLReport, RLFilters,
  RLDraftFilter;

type
  TFRelatorioGeralServico = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    ColumnHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    PageFooterBand1: TQRBand;
    QRLabel1: TQRLabel;
    qrlCliente: TQRLabel;
    qrlRgs: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRShape1: TQRShape;
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLGroup1: TRLGroup;
    RLBand2: TRLBand;
    RLBand3: TRLBand;
    RLBand4: TRLBand;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLLabel11: TRLLabel;
    RLDBText10: TRLDBText;
    RLLabel12: TRLLabel;
    RLDBText11: TRLDBText;
    RLBand5: TRLBand;
    RLSystemInfo3: TRLSystemInfo;
    rlEmpresa: TRLLabel;
    rlEndereco: TRLLabel;
    rlComplemento: TRLLabel;
    RLDraftFilter1: TRLDraftFilter;
    QRLabel2: TQRLabel;
    QRDBText12: TQRDBText;
    RLLabel13: TRLLabel;
    RLDBText12: TRLDBText;
    procedure QRDBText9Print(sender: TObject; var Value: String);
    procedure QRDBText2Print(sender: TObject; var Value: String);
    procedure QRDBText8Print(sender: TObject; var Value: String);
    procedure QRDBText7Print(sender: TObject; var Value: String);
    procedure RLDBText7BeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
    procedure RLDBText6BeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
    procedure RLDBText5BeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
    procedure RLDBText8BeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelatorioGeralServico: TFRelatorioGeralServico;
  Ini : TIniFile;
implementation

uses UDmGeral, UpesquisaRelGeraldeServico;

{$R *.dfm}

procedure TFRelatorioGeralServico.QRDBText9Print(sender: TObject;
  var Value: String);
begin
  Value := FormatDateTime('mm/yyyy',IncMonth(QRDBText9.DataSet.FieldByName('PREV_SAIDA').asDateTime,12));

end;

procedure TFRelatorioGeralServico.QRDBText2Print(sender: TObject;
  var Value: String);
begin
  value := QRDBText9.DataSet.FieldByName('TIPO').AsString +'-'+
           QRDBText9.DataSet.FieldByName('CAPACIDADE').AsString;
end;

procedure TFRelatorioGeralServico.QRDBText8Print(sender: TObject;
  var Value: String);
begin
  Value := FormatDateTime('mm/yyyy',QRDBText9.DataSet.FieldByName('PREV_SAIDA').asDateTime);

end;

procedure TFRelatorioGeralServico.QRDBText7Print(sender: TObject;
  var Value: String);
begin
  value := IntToStr(StrToInt(QRDBText7.DataSet.FieldByName('ULTIMA_VISITA').AsString) + 5);

end;

procedure TFRelatorioGeralServico.RLDBText7BeforePrint(Sender: TObject;
  var Text: String; var PrintIt: Boolean);
begin
  Text := FormatDateTime('mm/yyyy',IncMonth(QRDBText9.DataSet.FieldByName('PREV_SAIDA').asDateTime,12));
end;

procedure TFRelatorioGeralServico.RLDBText6BeforePrint(Sender: TObject;
  var Text: String; var PrintIt: Boolean);
begin
  Text := FormatDateTime('mm/yyyy',QRDBText9.DataSet.FieldByName('PREV_SAIDA').asDateTime);
end;

procedure TFRelatorioGeralServico.RLDBText5BeforePrint(Sender: TObject;
  var Text: String; var PrintIt: Boolean);
begin
  Text := IntToStr(StrToInt(QRDBText7.DataSet.FieldByName('ULTIMA_VISITA').AsString) + 5);
end;

procedure TFRelatorioGeralServico.RLDBText8BeforePrint(Sender: TObject;
  var Text: String; var PrintIt: Boolean);
begin
  Text := QRDBText9.DataSet.FieldByName('TIPO').AsString +'-'+
           QRDBText9.DataSet.FieldByName('CAPACIDADE').AsString;

end;

end.
