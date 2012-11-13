unit URGeralServico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, RLXLSFilter, RLFilters, RLPDFFilter, DB, jpeg;

type
  TFRGeralServico = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLBand2: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    RLLabel15: TRLLabel;
    RLLabel16: TRLLabel;
    RLLabel17: TRLLabel;
    RLLabel18: TRLLabel;
    RLLabel19: TRLLabel;
    RLLabel20: TRLLabel;
    RLLabel21: TRLLabel;
    RLLabel22: TRLLabel;
    RLLabel23: TRLLabel;
    RLLabel24: TRLLabel;
    RLLabel25: TRLLabel;
    RLLabel26: TRLLabel;
    RLLabel27: TRLLabel;
    RLLabel28: TRLLabel;
    RLLabel29: TRLLabel;
    RLLabel30: TRLLabel;
    RLLabel31: TRLLabel;
    RLLabel32: TRLLabel;
    RLLabel33: TRLLabel;
    RLLabel34: TRLLabel;
    RLDraw1: TRLDraw;
    RLDraw2: TRLDraw;
    RLDraw3: TRLDraw;
    RLDraw4: TRLDraw;
    RLDraw5: TRLDraw;
    RLDraw6: TRLDraw;
    RLDraw7: TRLDraw;
    RLDraw8: TRLDraw;
    RLDraw9: TRLDraw;
    RLDraw10: TRLDraw;
    RLDraw11: TRLDraw;
    RLDraw12: TRLDraw;
    RLDraw13: TRLDraw;
    RLDraw14: TRLDraw;
    RLDraw15: TRLDraw;
    RLDraw16: TRLDraw;
    RLDraw17: TRLDraw;
    RLDraw18: TRLDraw;
    RLDraw19: TRLDraw;
    RLDraw22: TRLDraw;
    RLDraw25: TRLDraw;
    RLDraw26: TRLDraw;
    RLDraw27: TRLDraw;
    RLBand3: TRLBand;
    RLDraw28: TRLDraw;
    RLDraw29: TRLDraw;
    RLDraw30: TRLDraw;
    RLDraw31: TRLDraw;
    RLDraw32: TRLDraw;
    RLDraw33: TRLDraw;
    RLDraw34: TRLDraw;
    RLDraw35: TRLDraw;
    RLDraw36: TRLDraw;
    RLDraw37: TRLDraw;
    RLDraw38: TRLDraw;
    RLDraw40: TRLDraw;
    RLDraw41: TRLDraw;
    RLDraw42: TRLDraw;
    RLDraw45: TRLDraw;
    RLDraw46: TRLDraw;
    RLDraw48: TRLDraw;
    RLDraw49: TRLDraw;
    RLDraw50: TRLDraw;
    RLDraw51: TRLDraw;
    RLDraw52: TRLDraw;
    RLBand4: TRLBand;
    RLLabel38: TRLLabel;
    RLLabel39: TRLLabel;
    RLLabel40: TRLLabel;
    RLLabel41: TRLLabel;
    RLLabel42: TRLLabel;
    RLLabel43: TRLLabel;
    RLLabel44: TRLLabel;
    rlRespTecnico: TRLLabel;
    RLLabel46: TRLLabel;
    RLLabel47: TRLLabel;
    RLLabel48: TRLLabel;
    RLLabel49: TRLLabel;
    RLLabel50: TRLLabel;
    RLLabel51: TRLLabel;
    RLLabel52: TRLLabel;
    RLLabel53: TRLLabel;
    rlRespControle: TRLLabel;
    RLDraw53: TRLDraw;
    RLDraw54: TRLDraw;
    RLPDFFilter1: TRLPDFFilter;
    RLXLSFilter1: TRLXLSFilter;
    RLDBText1: TRLDBText;
    RLDraw55: TRLDraw;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    RLDBText12: TRLDBText;
    RLDBText13: TRLDBText;
    RLDBText14: TRLDBText;
    RLDBText15: TRLDBText;
    rldbPesoExtintorVazio: TRLDBText;
    RLDBText17: TRLDBText;
    RLDBText18: TRLDBText;
    RLDBText19: TRLDBText;
    rldbEp: TRLDBText;
    RLDBText21: TRLDBText;
    RLDBText22: TRLDBText;
    RLDBText23: TRLDBText;
    rldbResultado: TRLDBText;
    rldbMotivo: TRLDBText;
    RLLabel55: TRLLabel;
    RLDraw56: TRLDraw;
    rlRGS2: TRLLabel;
    RLDraw57: TRLDraw;
    RLLabel57: TRLLabel;
    RLLabel58: TRLLabel;
    RLLabel59: TRLLabel;
    RLLabel60: TRLLabel;
    RLDraw58: TRLDraw;
    RLDraw59: TRLDraw;
    RLDraw60: TRLDraw;
    RLDraw61: TRLDraw;
    RLDraw62: TRLDraw;
    rlEmpresa: TRLLabel;
    rlEndereco: TRLLabel;
    rlComplemento: TRLLabel;
    RLDBResult1: TRLDBResult;
    RLDraw63: TRLDraw;
    RLDraw64: TRLDraw;
    rlCliente: TRLLabel;
    rlEnderecoCliente: TRLLabel;
    RLDraw65: TRLDraw;
    rlCpfCnpjCliente: TRLLabel;
    rlCidadeCliente: TRLLabel;
    RLDraw66: TRLDraw;
    rlFoneCliente: TRLLabel;
    rlBairroCliente: TRLLabel;
    rlRGS: TRLLabel;
    rlDataEntrada: TRLLabel;
    rlDataPrevSaida: TRLLabel;
    rlDataSaida: TRLLabel;
    rlnCaixa: TRLLabel;
    RLLabel35: TRLLabel;
    RLDraw20: TRLDraw;
    RLDraw21: TRLDraw;
    RLDraw43: TRLDraw;
    RLLabel36: TRLLabel;
    RLDraw44: TRLDraw;
    RLLabel37: TRLLabel;
    RLDraw23: TRLDraw;
    RLLabel56: TRLLabel;
    RLDraw24: TRLDraw;
    RLDraw39: TRLDraw;
    RLDraw47: TRLDraw;
    RLLabel62: TRLLabel;
    RLLabel63: TRLLabel;
    RLDBText7: TRLDBText;
    dsExtintorRGS: TDataSource;
    RLDraw67: TRLDraw;
    RLDraw68: TRLDraw;
    RLLabel64: TRLLabel;
    RLDBText8: TRLDBText;
    RLLabel65: TRLLabel;
    RLLabel66: TRLLabel;
    RLLabel67: TRLLabel;
    RLLabel68: TRLLabel;
    rlRepresentante: TRLLabel;
    rlRsCubagem: TRLLabel;
    RLImage1: TRLImage;
    RLLabel45: TRLLabel;
    procedure RLLabel36BeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
    procedure RLDBText1BeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
    procedure rlRsCubagemBeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
    procedure rldbMotivoBeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
    procedure rldbPesoExtintorVazioBeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
    procedure RLDBText19BeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
    procedure RLImage1BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRGeralServico: TFRGeralServico;

implementation

uses UCadRgs, UFsuper, UdmPesquisa;

{$R *.dfm}

procedure TFRGeralServico.RLLabel36BeforePrint(Sender: TObject;
  var Text: String; var PrintIt: Boolean);
begin  {
  if ((RLReport1.DataSource.DataSet.FieldByName('PESO_CHEIO').asFloat -
       RLReport1.DataSource.DataSet.FieldByName('PESO_VAZIO').asFloat) * 0.68) <> RLReport1.DataSource.DataSet.FieldByName('CAPACIDADE').asFloat then
    rlRsCubagem.Caption := 'NC'
  else
    rlRsCubagem.Caption := 'C';
  }
end;

procedure TFRGeralServico.RLDBText1BeforePrint(Sender: TObject;
  var Text: String; var PrintIt: Boolean);
begin
  text := RLDBText1.DataSource.DataSet.FieldByName('TIPO').AsString +'-'+
          RLDBText1.DataSource.DataSet.FieldByName('CAPACIDADE').AsString;
end;

procedure TFRGeralServico.rlRsCubagemBeforePrint(Sender: TObject;
  var Text: String; var PrintIt: Boolean);
var
  resultado : real;
begin
  resultado := ((RLReport1.DataSource.DataSet.FieldByName('PESO_CHEIO_CO2').asFloat -
                 RLReport1.DataSource.DataSet.FieldByName('PESO_VAZIO_CO2').asFloat) * 0.68);

  text := FormatFloat('#0;; ',resultado);
end;

procedure TFRGeralServico.rldbMotivoBeforePrint(Sender: TObject;
  var Text: String; var PrintIt: Boolean);
begin
  if Pos('C',rldbResultado.Field.AsString) <> 0 then
    Text := '';
end;

procedure TFRGeralServico.rldbPesoExtintorVazioBeforePrint(Sender: TObject;
  var Text: String; var PrintIt: Boolean);
begin
  Text := FormatFloat('0.00;; ',TRLDBText(sender).Field.AsFloat);
end;

procedure TFRGeralServico.RLDBText19BeforePrint(Sender: TObject;
  var Text: String; var PrintIt: Boolean);
begin

  if dsExtintorRGS.DataSet.FieldByName('NIVEL_MANUTENCAO').AsInteger <> 3 then
    text := ''
  else if dsExtintorRGS.DataSet.FieldByName('PESO_VAZIO').AsVariant = null then
    text := '';

end;

procedure TFRGeralServico.RLImage1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin

  PrintIt := DMPesquisa.cdsEmpresa.FieldByName('ASSINAR_DIGITALMENTE').AsString = 'S';
  if PrintIt then
    RLImage1.Picture.LoadFromFile(DMPesquisa.cdsEmpresa.FieldByName('LOCAL_ASINATURA').AsString);

end;



end.
