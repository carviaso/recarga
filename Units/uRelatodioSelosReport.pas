unit uRelatodioSelosReport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport;

type
  TFRelatodioSelosReport = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLBand2: TRLBand;
    RLBand3: TRLBand;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLLabel5: TRLLabel;
    RLDBText6: TRLDBText;
    RLLabel6: TRLLabel;
    rlRazaoSocial: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    procedure RLDBText4BeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
    procedure RLDBText2BeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelatodioSelosReport: TFRelatodioSelosReport;

implementation

uses uRelatodioSelos;

{$R *.dfm}

procedure TFRelatodioSelosReport.RLDBText4BeforePrint(Sender: TObject;
  var Text: String; var PrintIt: Boolean);
begin
  Text := RLReport1.DataSource.DataSet.FieldByName('TIPO').AsString + ' ' +
          RLReport1.DataSource.DataSet.FieldByName('TIPO_INMETRO').AsString + '/' +
          RLReport1.DataSource.DataSet.FieldByName('CAPACIDADE').AsString;
end;

procedure TFRelatodioSelosReport.RLDBText2BeforePrint(Sender: TObject;
  var Text: String; var PrintIt: Boolean);
begin
  Text := FormatDateTime('dd/mm/yyyy', RLReport1.DataSource.DataSet.FieldByName('ENTRADA').AsDateTime);
end;

end.
