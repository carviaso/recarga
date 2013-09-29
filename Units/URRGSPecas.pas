unit URRGSPecas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UPai, RLReport, DB, jpeg;

type
  TFRRGSPecas = class(TFPai)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
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
    RLDraw2: TRLDraw;
    RLDraw3: TRLDraw;
    RLDraw4: TRLDraw;
    RLDraw5: TRLDraw;
    RLDraw6: TRLDraw;
    RLDraw7: TRLDraw;
    RLDraw8: TRLDraw;
    RLDraw19: TRLDraw;
    RLDraw67: TRLDraw;
    RLLabel64: TRLLabel;
    RLBand3: TRLBand;
    RLDraw28: TRLDraw;
    RLDraw29: TRLDraw;
    RLDraw30: TRLDraw;
    RLDraw31: TRLDraw;
    RLDraw32: TRLDraw;
    RLDraw33: TRLDraw;
    RLDraw52: TRLDraw;
    RLDBText1: TRLDBText;
    RLDraw55: TRLDraw;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDraw68: TRLDraw;
    RLDBText8: TRLDBText;
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
    RLLabel65: TRLLabel;
    RLLabel66: TRLLabel;
    RLLabel67: TRLLabel;
    RLLabel68: TRLLabel;
    RLLabel13: TRLLabel;
    dsRelatorio: TDataSource;
    RLSystemInfo1: TRLSystemInfo;
    RLDBText7: TRLDBText;
    rlRepresentante: TRLLabel;
    RLImage1: TRLImage;
    RLLabel14: TRLLabel;
    rlblCNPJ: TRLLabel;
    procedure RLDBText1BeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
    procedure RLImage1BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRRGSPecas: TFRRGSPecas;

implementation

uses UpesquisaRGS, UdmPesquisa;

{$R *.dfm}

procedure TFRRGSPecas.RLDBText1BeforePrint(Sender: TObject;
  var Text: String; var PrintIt: Boolean);
begin
  inherited;
  text := RLDBText1.DataSource.DataSet.FieldByName('TIPO').AsString +
          RLDBText1.DataSource.DataSet.FieldByName('CAPACIDADE').AsString;

end;

procedure TFRRGSPecas.RLImage1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  inherited;

  PrintIt := DMPesquisa.cdsEmpresa.FieldByName('ASSINAR_DIGITALMENTE').AsString = 'S';
  if PrintIt then
    RLImage1.Picture.LoadFromFile(DMPesquisa.cdsEmpresa.FieldByName('LOCAL_ASINATURA').AsString);

end;

end.
