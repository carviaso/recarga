unit URelatorioEtiquetaCBarras;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, DB, RLBarcode, StdCtrls;

type
  TFRelatorioEtiquetaCBarras = class(TForm)
    RLReport1: TRLReport;
    RLDetailGrid1: TRLDetailGrid;
    dsRelatorio: TDataSource;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLDBText3: TRLDBText;
    RLDraw1: TRLDraw;
    RLDraw2: TRLDraw;
    RLDraw3: TRLDraw;
    RLDraw4: TRLDraw;
    RLDraw5: TRLDraw;
    RLLabel3: TRLLabel;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLLabel4: TRLLabel;
    RLDBText6: TRLDBText;
    RLDraw18: TRLDraw;
    RLDraw19: TRLDraw;
    RLLabel18: TRLLabel;
    RLLabel19: TRLLabel;
    RLLabel20: TRLLabel;
    RLLabel21: TRLLabel;
    rlNivel1: TRLLabel;
    rlNivel2: TRLLabel;
    rlNivel3: TRLLabel;
    RLDraw20: TRLDraw;
    RLDraw21: TRLDraw;
    RLDraw22: TRLDraw;
    RLDraw23: TRLDraw;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLLabel22: TRLLabel;
    RLLabel23: TRLLabel;
    RLLabel24: TRLLabel;
    RLDBText11: TRLDBText;
    RLDBText12: TRLDBText;
    RLDBText13: TRLDBText;
    RLLabel25: TRLLabel;
    RLLabel26: TRLLabel;
    RLLabel27: TRLLabel;
    rlEmpresa: TRLLabel;
    rlEndereco: TRLLabel;
    rlFone: TRLLabel;
    RLDBBarcode1: TRLDBBarcode;
    RLDraw24: TRLDraw;
    RLDraw25: TRLDraw;
    RLDraw6: TRLDraw;
    RLDraw7: TRLDraw;
    RLDraw8: TRLDraw;
    RLDraw9: TRLDraw;
    RLLabel5: TRLLabel;
    procedure RLDBText8BeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
    procedure RLDBText12BeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
    procedure RLDBText9BeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
    procedure RLDetailGrid1BeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure RLBarcode1BeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelatorioEtiquetaCBarras: TFRelatorioEtiquetaCBarras;

implementation

uses UdmPesquisa, UpesquisaRelGeraldeServico;

{$R *.dfm}

procedure TFRelatorioEtiquetaCBarras.RLDBText8BeforePrint(Sender: TObject;
  var Text: String; var PrintIt: Boolean);
begin
  Text := FormatDateTime('mm/yyyy',dsRelatorio.DataSet.FieldByName('PREV_SAIDA').AsDateTime);
end;

procedure TFRelatorioEtiquetaCBarras.RLDBText12BeforePrint(Sender: TObject;
  var Text: String; var PrintIt: Boolean);
begin
  Text := IntToStr(StrToInt(dsRelatorio.DataSet.FieldByName('ULTIMA_VISITA').AsString) + 5);

end;

procedure TFRelatorioEtiquetaCBarras.RLDBText9BeforePrint(Sender: TObject;
  var Text: String; var PrintIt: Boolean);
begin
  Text := FormatDateTime('mm/yyyy',IncMonth(dsRelatorio.DataSet.FieldByName('PREV_SAIDA').AsDateTime,12));
end;

procedure TFRelatorioEtiquetaCBarras.RLDetailGrid1BeforePrint(
  Sender: TObject; var PrintIt: Boolean);
begin
  rlEmpresa.Caption := DMPesquisa.cdsEmpresa.FieldByName('RAZAO_SOCIAL').AsString;
  rlEndereco.Caption:= DMPesquisa.cdsEmpresa.FieldByName('ENDERECO').AsString + ' - ' +
                       DMPesquisa.cdsEmpresa.FieldByName('BAIRRO').AsString   + ', ' +
                       DMPesquisa.cdsEmpresa.FieldByName('CIDADE').AsString   + '-' +
                       DMPesquisa.cdsEmpresa.FieldByName('UF').AsString;

  rlFone.Caption    := 'Fone/Fax: ' + DMPesquisa.cdsEmpresa.FieldByName('FONE').AsString + '/' +
                       DMPesquisa.cdsEmpresa.FieldByName('FAX').AsString ;

  case dsRelatorio.DataSet.FieldByName('NIVEL_MANUTENCAO').AsInteger of
    1:begin
        rlNivel1.Caption := 'X';
        rlNivel2.Caption := ' ';
        rlNivel3.Caption := ' ';
      end;
    2:begin
        rlNivel1.Caption := ' ';
        rlNivel2.Caption := 'X';
        rlNivel3.Caption := ' ';
      end;
    3:begin
        rlNivel1.Caption := ' ';
        rlNivel2.Caption := ' ';
        rlNivel3.Caption := 'X';
      end;
  end;
end;

procedure TFRelatorioEtiquetaCBarras.FormCreate(Sender: TObject);
begin
  //TCurrencyField(dsRelatorio.DataSet.FieldByName('NIVEL_MANUTENCAO')).DisplayFormat := '0000000000';
end;

procedure TFRelatorioEtiquetaCBarras.RLBarcode1BeforePrint(Sender: TObject;
  var Text: String; var PrintIt: Boolean);
begin
  Text := FormatFloat('0000000000', dsRelatorio.Dataset.FieldByName('CODIGO').AsInteger);
end;

end.
