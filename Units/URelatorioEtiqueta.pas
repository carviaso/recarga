unit URelatorioEtiqueta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, ExtCtrls, QRCtrls, DB, DBTables;

type
  TFRelatorioEtiqueta = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    rlEmpresa: TQRLabel;
    rlEndereco: TQRLabel;
    rlComplemento: TQRLabel;
    QRShape7: TQRShape;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape12: TQRShape;
    QRShape2: TQRShape;
    QRShape1: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape11: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRShape26: TQRShape;
    QRShape27: TQRShape;
    QRShape28: TQRShape;
    QRShape29: TQRShape;
    QRShape30: TQRShape;
    QRShape31: TQRShape;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRDBText5: TQRDBText;
    QRShape32: TQRShape;
    QRLabel26: TQRLabel;
    QRDBText11: TQRDBText;
    QRLabel14: TQRLabel;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRLabel15: TQRLabel;
    procedure QRDBText8Print(sender: TObject; var Value: String);
    procedure QRDBText3Print(sender: TObject; var Value: String);
    procedure QRDBText9Print(sender: TObject; var Value: String);
    procedure QRDBText6Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelatorioEtiqueta: TFRelatorioEtiqueta;

implementation

uses UpesquisaRelGeraldeServico;



{$R *.dfm}

procedure TFRelatorioEtiqueta.QRDBText8Print(sender: TObject;
  var Value: String);
begin
  value := FormatDateTime('mm/yyyy',IncMonth(QRDBText8.DataSet.FieldByName('PREV_SAIDA').AsDateTime,12));
end;

procedure TFRelatorioEtiqueta.QRDBText3Print(sender: TObject;
  var Value: String);
begin
  value := FormatDateTime('mm/yyyy',QRDBText3.DataSet.FieldByName('PREV_SAIDA').AsDateTime);

end;

procedure TFRelatorioEtiqueta.QRDBText9Print(sender: TObject;
  var Value: String);
begin
  value := IntToStr(StrToInt(QRDBText9.DataSet.FieldByName('ULTIMA_VISITA').AsString) + 5);
end;

procedure TFRelatorioEtiqueta.QRDBText6Print(sender: TObject;
  var Value: String);
begin
  value := value +'-'+ QRDBText6.DataSet.FieldByName('CAPACIDADE').AsString;
end;

end.
