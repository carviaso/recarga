unit URelatorioEtiquetaResumida;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, ExtCtrls, QRCtrls, DB, DBTables;

type
  TFRelatorioEtiquetaResumida = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel26: TQRLabel;
    QRDBText11: TQRDBText;
    QRLabel14: TQRLabel;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRLabel15: TQRLabel;
    QRDBText10: TQRDBText;
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
  FRelatorioEtiquetaResumida: TFRelatorioEtiquetaResumida;

implementation

uses UpesquisaRelGeraldeServico;



{$R *.dfm}

procedure TFRelatorioEtiquetaResumida.QRDBText8Print(sender: TObject;
  var Value: String);
begin
  value := FormatDateTime('mm/yyyy',IncMonth(QRDBText8.DataSet.FieldByName('PREV_SAIDA').AsDateTime,12));
end;

procedure TFRelatorioEtiquetaResumida.QRDBText3Print(sender: TObject;
  var Value: String);
begin
  value := FormatDateTime('mm/yyyy',QRDBText3.DataSet.FieldByName('PREV_SAIDA').AsDateTime);

end;

procedure TFRelatorioEtiquetaResumida.QRDBText9Print(sender: TObject;
  var Value: String);
begin
  value := IntToStr(StrToInt(QRDBText9.DataSet.FieldByName('ULTIMA_VISITA').AsString) + 5);
end;

procedure TFRelatorioEtiquetaResumida.QRDBText6Print(sender: TObject;
  var Value: String);
begin
  value := value +'-'+ QRDBText6.DataSet.FieldByName('CAPACIDADE').AsString;
end;

end.
